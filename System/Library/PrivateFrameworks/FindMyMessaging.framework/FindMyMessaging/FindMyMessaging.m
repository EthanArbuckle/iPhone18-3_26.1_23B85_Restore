void sub_24AED0730(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v48 - v10;
  v12 = &v4[OBJC_IVAR____TtC15FindMyMessaging27MessagingDelegateTrampoline_delegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (a2 && (v15 = *(v12 + 1), (v16 = sub_24AED0D44(a2)) != 0))
    {
      if (a1)
      {
        v17 = v16;
        v18 = [a1 serviceIdentifier];
        if (v18)
        {
          v19 = v18;
          v20 = sub_24AF353AC();
          v22 = v21;

          v23 = sub_24AF31BD8(v17);

          v24 = sub_24AF3557C();
          (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
          v25 = swift_allocObject();
          v25[2] = 0;
          v25[3] = 0;
          v25[4] = v14;
          v25[5] = v15;
          v25[6] = v20;
          v25[7] = v22;
          v25[8] = v23;
          sub_24AF08F10(0, 0, v11, a4, v25);

          return;
        }

        if (qword_27EFC0720 != -1)
        {
          swift_once();
        }

        v42 = sub_24AF3529C();
        __swift_project_value_buffer(v42, qword_27EFC4BE8);
        v43 = v4;
        v27 = sub_24AF3527C();
        v44 = sub_24AF3570C();

        if (os_log_type_enabled(v27, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          *v45 = 138412290;
          *(v45 + 4) = v43;
          *v46 = v43;
          v47 = v43;
          _os_log_impl(&dword_24AECF000, v27, v44, "MessagingDelegateTrampoline: serviceIdentifier for %@", v45, 0xCu);
          sub_24AEE2E10(v46, &qword_27EFC0D70, &qword_24AF37D20);
          MEMORY[0x24C236490](v46, -1, -1);
          MEMORY[0x24C236490](v45, -1, -1);
        }

        goto LABEL_20;
      }

      __break(1u);
    }

    else
    {
      if (qword_27EFC0720 != -1)
      {
        swift_once();
      }

      v26 = sub_24AF3529C();
      __swift_project_value_buffer(v26, qword_27EFC4BE8);

      v27 = sub_24AF3527C();
      v28 = sub_24AF3570C();
      if (!os_log_type_enabled(v27, v28))
      {

LABEL_20:

        swift_unknownObjectRelease();
        return;
      }

      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v49 = v30;
      *v29 = 136315138;
      if (a2)
      {
        v31 = v30;

        v32 = MEMORY[0x24C235500](a2, MEMORY[0x277D84F70] + 8);
        v34 = sub_24AEF599C(v32, v33, &v49);

        *(v29 + 4) = v34;
        _os_log_impl(&dword_24AECF000, v27, v28, "MessagingDelegateTrampoline: Unable to convert devices to [IDSDevice] %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x24C236490](v31, -1, -1);
        MEMORY[0x24C236490](v29, -1, -1);

        swift_unknownObjectRelease();
        return;
      }
    }

    __break(1u);
    return;
  }

  if (qword_27EFC0720 != -1)
  {
    swift_once();
  }

  v35 = sub_24AF3529C();
  __swift_project_value_buffer(v35, qword_27EFC4BE8);
  v36 = v4;
  v48 = sub_24AF3527C();
  v37 = sub_24AF3570C();

  if (os_log_type_enabled(v48, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    *(v38 + 4) = v36;
    *v39 = v36;
    v40 = v36;
    _os_log_impl(&dword_24AECF000, v48, v37, "MessagingDelegateTrampoline: No delegate for %@", v38, 0xCu);
    sub_24AEE2E10(v39, &qword_27EFC0D70, &qword_24AF37D20);
    MEMORY[0x24C236490](v39, -1, -1);
    MEMORY[0x24C236490](v38, -1, -1);
  }

  v41 = v48;
}

uint64_t sub_24AED0CA0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v10 = sub_24AF3549C();
  }

  else
  {
    v10 = 0;
  }

  v11 = a3;
  v12 = a1;
  sub_24AED0730(a3, v10, a5, a6);
}

uint64_t sub_24AED0D44(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_24AF359AC();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_24AED0E50(i, v6);
    sub_24AED0EAC(0, &qword_281392DB8, 0x277D186E0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_24AF3598C();
    v4 = *(v7 + 16);
    sub_24AF359BC();
    sub_24AF359CC();
    sub_24AF3599C();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_24AED0E50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24AED0EAC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

_OWORD *sub_24AED0F00(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24AED0F10()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AED0F48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0820, &qword_24AF37C28);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AED1020()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0820, &qword_24AF37C28);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

id sub_24AED10C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 connectionState];
  *a2 = result;
  return result;
}

uint64_t sub_24AED1110()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AED1164(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24AED1174()
{
  v1 = type metadata accessor for MessageContext();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 96) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 5);

  v7 = *(v0 + 7);

  v8 = *(v0 + 10);

  v9 = *(v0 + 11);

  v10 = &v0[v3];
  v11 = sub_24AF3521C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(&v0[v3], 1, v11);
  v14 = *(v12 + 8);
  if (!v13)
  {
    v14(&v0[v3], v11);
  }

  v14(&v10[v1[5]], v11);
  v15 = *&v10[v1[6] + 16];

  v16 = *&v10[v1[7] + 16];

  v17 = *&v10[v1[8] + 8];

  v18 = v1[11];
  v19 = sub_24AF351BC();
  (*(*(v19 - 8) + 8))(&v10[v18], v19);
  v20 = *&v10[v1[12] + 8];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AED1358()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = (type metadata accessor for Message() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 104) & ~v4;
  v6 = (*(*v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for MessageContext();
  v8 = *(*(v7 - 1) + 80);
  v9 = (v6 + v8 + 8) & ~v8;
  v10 = *(*(v7 - 1) + 64);
  v11 = *(v0 + 2);
  swift_unknownObjectRelease();
  v12 = *(v0 + 7);

  v13 = *(v0 + 9);

  v14 = *(v0 + 12);

  v15 = &v0[v5];
  (*(*(v2 - 8) + 8))(v15, v2);
  sub_24AED6198(*&v15[v3[12]], *&v15[v3[12] + 8]);
  v16 = *&v0[v6];

  v17 = &v0[v9];
  v18 = sub_24AF3521C();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 48))(&v0[v9], 1, v18);
  v21 = *(v19 + 8);
  if (!v20)
  {
    v21(&v0[v9], v18);
  }

  v21(&v17[v7[5]], v18);
  v22 = *&v17[v7[6] + 16];

  v23 = *&v17[v7[7] + 16];

  v24 = *&v17[v7[8] + 8];

  v25 = v7[11];
  v26 = sub_24AF351BC();
  (*(*(v26 - 8) + 8))(&v17[v25], v26);
  v27 = *&v17[v7[12] + 8];

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v4 | v8 | 7);
}

uint64_t sub_24AED15F4()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = (type metadata accessor for Message() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 104) & ~v4;
  v6 = *(*v3 + 64);
  v7 = type metadata accessor for MessageContext();
  v8 = *(*(v7 - 1) + 80);
  v9 = (v5 + v6 + v8) & ~v8;
  v10 = *(*(v7 - 1) + 64);
  v11 = *(v0 + 2);
  swift_unknownObjectRelease();
  v12 = *(v0 + 7);

  v13 = *(v0 + 9);

  v14 = *(v0 + 12);

  v15 = &v0[v5];
  (*(*(v2 - 8) + 8))(v15, v2);
  sub_24AED6198(*&v15[v3[12]], *&v15[v3[12] + 8]);
  v16 = &v0[v9];
  v17 = sub_24AF3521C();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(&v0[v9], 1, v17);
  v20 = *(v18 + 8);
  if (!v19)
  {
    v20(&v0[v9], v17);
  }

  v20(&v16[v7[5]], v17);
  v21 = *&v16[v7[6] + 16];

  v22 = *&v16[v7[7] + 16];

  v23 = *&v16[v7[8] + 8];

  v24 = v7[11];
  v25 = sub_24AF351BC();
  (*(*(v25 - 8) + 8))(&v16[v24], v25);
  v26 = *&v16[v7[12] + 8];

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v4 | v8 | 7);
}

uint64_t sub_24AED187C()
{
  v1 = type metadata accessor for MessagingOptions();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 72) & ~v2;
  v20 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 2);
  swift_unknownObjectRelease();
  v5 = *(v0 + 6);

  v6 = *(v0 + 7);

  v7 = *(v0 + 8);

  v8 = &v0[v3];
  v9 = sub_24AF3521C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(&v0[v3], v9);
  v12 = *&v0[v3 + v1[5]];

  v13 = v1[7];
  if (!(*(v10 + 48))(&v0[v3 + v13], 1, v9))
  {
    v11(&v8[v13], v9);
  }

  v14 = (v20 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *&v8[v1[10]];

  v16 = *&v8[v1[11]];

  v17 = *&v8[v1[12] + 8];

  v18 = *&v0[v14];

  return MEMORY[0x2821FE8E8](v0, v14 + 8, v2 | 7);
}

uint64_t sub_24AED1A34()
{
  v1 = type metadata accessor for MessagingOptions();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 56) & ~v2;
  v17 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 4);

  v5 = *(v0 + 5);

  v6 = *(v0 + 6);

  v7 = &v0[v3];
  v8 = sub_24AF3521C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(&v0[v3], v8);
  v11 = *&v0[v3 + v1[5]];

  v12 = v1[7];
  if (!(*(v9 + 48))(&v0[v3 + v12], 1, v8))
  {
    v10(&v7[v12], v8);
  }

  v13 = *&v7[v1[10]];

  v14 = *&v7[v1[11]];

  v15 = *&v7[v1[12] + 8];

  return MEMORY[0x2821FE8E8](v0, ((v17 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_24AED1BDC()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = (type metadata accessor for Message() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(*v3 + 64);
  v7 = type metadata accessor for MessagingOptions();
  v8 = *(*(v7 - 1) + 80);
  v9 = (v5 + v6 + v8) & ~v8;
  v25 = *(*(v7 - 1) + 64);
  v10 = *(v0 + 2);
  swift_unknownObjectRelease();
  v11 = *(v0 + 6);

  v12 = &v0[v5];
  (*(*(v2 - 8) + 8))(v12, v2);
  sub_24AED6198(*&v12[v3[12]], *&v12[v3[12] + 8]);
  v13 = &v0[v9];
  v14 = sub_24AF3521C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v16(&v0[v9], v14);
  v17 = *&v0[v9 + v7[5]];

  v18 = v7[7];
  if (!(*(v15 + 48))(&v0[v9 + v18], 1, v14))
  {
    v16(&v13[v18], v14);
  }

  v19 = (v25 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = *&v13[v7[10]];

  v21 = *&v13[v7[11]];

  v22 = *&v13[v7[12] + 8];

  v23 = *&v0[v19];

  return MEMORY[0x2821FE8E8](v0, v19 + 8, v4 | v8 | 7);
}

uint64_t sub_24AED1E34()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = (type metadata accessor for Message() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(*v3 + 64);
  v7 = type metadata accessor for MessagingOptions();
  v8 = *(*(v7 - 1) + 80);
  v9 = (v5 + v6 + v8) & ~v8;
  v22 = *(*(v7 - 1) + 64);
  v10 = *(v0 + 4);

  v11 = &v0[v5];
  (*(*(v2 - 8) + 8))(v11, v2);
  sub_24AED6198(*&v11[v3[12]], *&v11[v3[12] + 8]);
  v12 = &v0[v9];
  v13 = sub_24AF3521C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(&v0[v9], v13);
  v16 = *&v0[v9 + v7[5]];

  v17 = v7[7];
  if (!(*(v14 + 48))(&v0[v9 + v17], 1, v13))
  {
    v15(&v12[v17], v13);
  }

  v18 = *&v12[v7[10]];

  v19 = *&v12[v7[11]];

  v20 = *&v12[v7[12] + 8];

  return MEMORY[0x2821FE8E8](v0, ((v22 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | v8 | 7);
}

uint64_t sub_24AED207C()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = (type metadata accessor for Message() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = (*(*v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for MessagingOptions();
  v8 = *(*(v7 - 1) + 80);
  v27 = *(*(v7 - 1) + 64);
  v9 = *(v0 + 2);
  swift_unknownObjectRelease();
  v10 = *(v0 + 6);

  v11 = &v0[v5];
  (*(*(v2 - 8) + 8))(v11, v2);
  sub_24AED6198(*&v11[v3[12]], *&v11[v3[12] + 8]);
  v12 = *&v0[v6];

  v28 = (v6 + v8 + 8) & ~v8;
  v13 = &v0[v28];
  v14 = sub_24AF3521C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v16(&v0[v28], v14);
  v17 = *&v0[v28 + v7[5]];

  v18 = v7[7];
  if (!(*(v15 + 48))(&v0[v28 + v18], 1, v14))
  {
    v16(&v13[v18], v14);
  }

  v19 = (v27 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = *&v13[v7[10]];

  v22 = *&v13[v7[11]];

  v23 = *&v13[v7[12] + 8];

  v24 = *&v0[v19];

  v25 = *&v0[v20];

  return MEMORY[0x2821FE8E8](v0, v20 + 8, v4 | v8 | 7);
}

uint64_t sub_24AED22F8()
{
  v1 = *(v0 + 2);
  v28 = *(v0 + 3);
  v2 = sub_24AF3513C();
  v3 = *(v2 - 8);
  v30 = *(v3 + 80);
  v4 = (v30 + 40) & ~v30;
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for MessagingOptions();
  v8 = *(*(v7 - 1) + 80);
  v26 = *(*(v7 - 1) + 64);
  v31 = v1;
  v29 = type metadata accessor for Message();
  v9 = *(*(v29 - 8) + 80);
  v25 = *(*(v29 - 8) + 64);
  v10 = *(v0 + 4);

  (*(v3 + 8))(&v0[v4], v2);
  v11 = *&v0[v5];

  v12 = *&v0[v6];

  v27 = (v6 + v8 + 8) & ~v8;
  v13 = &v0[v27];
  v14 = sub_24AF3521C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v16(&v0[v27], v14);
  v17 = *&v0[v27 + v7[5]];

  v18 = v7[7];
  if (!(*(v15 + 48))(&v0[v27 + v18], 1, v14))
  {
    v16(&v13[v18], v14);
  }

  v19 = (v27 + v26 + v9) & ~v9;
  v20 = *&v13[v7[10]];

  v21 = *&v13[v7[11]];

  v22 = *&v13[v7[12] + 8];

  (*(*(v31 - 8) + 8))(&v0[v19]);
  v23 = &v0[v19 + *(v29 + 40)];
  sub_24AED6198(*v23, *(v23 + 1));

  return MEMORY[0x2821FE8E8](v0, ((v25 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v30 | v8 | v9 | 7);
}

uint64_t sub_24AED2600()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = (type metadata accessor for Message() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(*v3 + 64);
  v7 = type metadata accessor for MessagingOptions();
  v8 = *(*(v7 - 1) + 80);
  v9 = (v5 + v6 + v8) & ~v8;
  v28 = *(*(v7 - 1) + 64);
  v10 = *(v0 + 2);
  swift_unknownObjectRelease();
  v11 = *(v0 + 6);

  v12 = &v0[v5];
  (*(*(v2 - 8) + 8))(v12, v2);
  sub_24AED6198(*&v12[v3[12]], *&v12[v3[12] + 8]);
  v13 = &v0[v9];
  v14 = sub_24AF3521C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v16(&v0[v9], v14);
  v17 = *&v0[v9 + v7[5]];

  v18 = v7[7];
  if (!(*(v15 + 48))(&v0[v9 + v18], 1, v14))
  {
    v16(&v13[v18], v14);
  }

  v19 = (v28 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = *&v13[v7[10]];

  v23 = *&v13[v7[11]];

  v24 = *&v13[v7[12] + 8];

  sub_24AED6198(*&v0[v19], *&v0[v19 + 8]);
  v25 = *&v0[v20];

  v26 = *&v0[v21];

  return MEMORY[0x2821FE8E8](v0, v21 + 8, v4 | v8 | 7);
}

uint64_t sub_24AED287C()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = type metadata accessor for MessagingOptions();
  v4 = *(*(v3 - 1) + 80);
  v21 = *(*(v3 - 1) + 64);
  v23 = v1;
  v22 = type metadata accessor for Message();
  v5 = *(*(v22 - 8) + 80);
  v20 = *(*(v22 - 8) + 64);
  v6 = *(v0 + 4);

  sub_24AED6198(*(v0 + 5), *(v0 + 6));
  v7 = *(v0 + 7);

  v8 = &v0[(v4 + 64) & ~v4];
  v9 = sub_24AF3521C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v8, v9);
  v12 = *&v8[v3[5]];

  v13 = v3[7];
  if (!(*(v10 + 48))(&v8[v13], 1, v9))
  {
    v11(&v8[v13], v9);
  }

  v14 = (((v4 + 64) & ~v4) + v21 + v5) & ~v5;
  v15 = *&v8[v3[10]];

  v16 = *&v8[v3[11]];

  v17 = *&v8[v3[12] + 8];

  (*(*(v23 - 8) + 8))(&v0[v14]);
  v18 = &v0[v14 + *(v22 + 40)];
  sub_24AED6198(*v18, *(v18 + 1));

  return MEMORY[0x2821FE8E8](v0, ((v20 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | v5 | 7);
}

uint64_t sub_24AED2B04@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_24AED2B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AF3521C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24AED2C80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24AF3521C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_24AED2DB0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AED2DE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC0D28, &qword_24AF394C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24AED2ECC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AED2F04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D08, &qword_24AF394A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24AED2FF0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  v2 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24AED3038()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AED3074()
{
  v1 = type metadata accessor for MessageContext();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 96) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 5);

  v7 = *(v0 + 7);

  v8 = *(v0 + 10);

  v9 = *(v0 + 11);

  v10 = &v0[v3];
  v11 = sub_24AF3521C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(&v0[v3], 1, v11);
  v14 = *(v12 + 8);
  if (!v13)
  {
    v14(&v0[v3], v11);
  }

  v14(&v10[v1[5]], v11);
  v15 = *&v10[v1[6] + 16];

  v16 = *&v10[v1[7] + 16];

  v17 = *&v10[v1[8] + 8];

  v18 = v1[11];
  v19 = sub_24AF351BC();
  (*(*(v19 - 8) + 8))(&v10[v18], v19);
  v20 = *&v10[v1[12] + 8];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AED3258()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = (type metadata accessor for Message() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 104) & ~v4;
  v6 = (*(*v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for MessageContext();
  v8 = *(*(v7 - 1) + 80);
  v9 = (v6 + v8 + 8) & ~v8;
  v10 = *(*(v7 - 1) + 64);
  v11 = *(v0 + 2);
  swift_unknownObjectRelease();
  v12 = *(v0 + 7);

  v13 = *(v0 + 9);

  v14 = *(v0 + 12);

  v15 = &v0[v5];
  (*(*(v2 - 8) + 8))(v15, v2);
  sub_24AED6198(*&v15[v3[12]], *&v15[v3[12] + 8]);
  v16 = *&v0[v6];

  v17 = &v0[v9];
  v18 = sub_24AF3521C();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 48))(&v0[v9], 1, v18);
  v21 = *(v19 + 8);
  if (!v20)
  {
    v21(&v0[v9], v18);
  }

  v21(&v17[v7[5]], v18);
  v22 = *&v17[v7[6] + 16];

  v23 = *&v17[v7[7] + 16];

  v24 = *&v17[v7[8] + 8];

  v25 = v7[11];
  v26 = sub_24AF351BC();
  (*(*(v26 - 8) + 8))(&v17[v25], v26);
  v27 = *&v17[v7[12] + 8];

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v4 | v8 | 7);
}

uint64_t sub_24AED34F4()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = (type metadata accessor for Message() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 104) & ~v4;
  v6 = *(*v3 + 64);
  v7 = type metadata accessor for MessageContext();
  v8 = *(*(v7 - 1) + 80);
  v9 = (v5 + v6 + v8) & ~v8;
  v10 = *(*(v7 - 1) + 64);
  v11 = *(v0 + 2);
  swift_unknownObjectRelease();
  v12 = *(v0 + 7);

  v13 = *(v0 + 9);

  v14 = *(v0 + 12);

  v15 = &v0[v5];
  (*(*(v2 - 8) + 8))(v15, v2);
  sub_24AED6198(*&v15[v3[12]], *&v15[v3[12] + 8]);
  v16 = &v0[v9];
  v17 = sub_24AF3521C();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(&v0[v9], 1, v17);
  v20 = *(v18 + 8);
  if (!v19)
  {
    v20(&v0[v9], v17);
  }

  v20(&v16[v7[5]], v17);
  v21 = *&v16[v7[6] + 16];

  v22 = *&v16[v7[7] + 16];

  v23 = *&v16[v7[8] + 8];

  v24 = v7[11];
  v25 = sub_24AF351BC();
  (*(*(v25 - 8) + 8))(&v16[v24], v25);
  v26 = *&v16[v7[12] + 8];

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v4 | v8 | 7);
}

uint64_t sub_24AED377C()
{
  v1 = type metadata accessor for MessagingOptions();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 72) & ~v2;
  v20 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 2);
  swift_unknownObjectRelease();
  v5 = *(v0 + 6);

  v6 = *(v0 + 7);

  v7 = *(v0 + 8);

  v8 = &v0[v3];
  v9 = sub_24AF3521C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(&v0[v3], v9);
  v12 = *&v0[v3 + v1[5]];

  v13 = v1[7];
  if (!(*(v10 + 48))(&v0[v3 + v13], 1, v9))
  {
    v11(&v8[v13], v9);
  }

  v14 = (v20 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *&v8[v1[10]];

  v16 = *&v8[v1[11]];

  v17 = *&v8[v1[12] + 8];

  v18 = *&v0[v14];

  return MEMORY[0x2821FE8E8](v0, v14 + 8, v2 | 7);
}

uint64_t sub_24AED3934()
{
  v1 = type metadata accessor for MessagingOptions();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 56) & ~v2;
  v17 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 4);

  v5 = *(v0 + 5);

  v6 = *(v0 + 6);

  v7 = &v0[v3];
  v8 = sub_24AF3521C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(&v0[v3], v8);
  v11 = *&v0[v3 + v1[5]];

  v12 = v1[7];
  if (!(*(v9 + 48))(&v0[v3 + v12], 1, v8))
  {
    v10(&v7[v12], v8);
  }

  v13 = *&v7[v1[10]];

  v14 = *&v7[v1[11]];

  v15 = *&v7[v1[12] + 8];

  return MEMORY[0x2821FE8E8](v0, ((v17 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_24AED3ADC()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = (type metadata accessor for Message() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(*v3 + 64);
  v7 = type metadata accessor for MessagingOptions();
  v8 = *(*(v7 - 1) + 80);
  v9 = (v5 + v6 + v8) & ~v8;
  v25 = *(*(v7 - 1) + 64);
  v10 = *(v0 + 2);
  swift_unknownObjectRelease();
  v11 = *(v0 + 6);

  v12 = &v0[v5];
  (*(*(v2 - 8) + 8))(v12, v2);
  sub_24AED6198(*&v12[v3[12]], *&v12[v3[12] + 8]);
  v13 = &v0[v9];
  v14 = sub_24AF3521C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v16(&v0[v9], v14);
  v17 = *&v0[v9 + v7[5]];

  v18 = v7[7];
  if (!(*(v15 + 48))(&v0[v9 + v18], 1, v14))
  {
    v16(&v13[v18], v14);
  }

  v19 = (v25 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = *&v13[v7[10]];

  v21 = *&v13[v7[11]];

  v22 = *&v13[v7[12] + 8];

  v23 = *&v0[v19];

  return MEMORY[0x2821FE8E8](v0, v19 + 8, v4 | v8 | 7);
}

uint64_t sub_24AED3D34()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = (type metadata accessor for Message() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(*v3 + 64);
  v7 = type metadata accessor for MessagingOptions();
  v8 = *(*(v7 - 1) + 80);
  v9 = (v5 + v6 + v8) & ~v8;
  v22 = *(*(v7 - 1) + 64);
  v10 = *(v0 + 4);

  v11 = &v0[v5];
  (*(*(v2 - 8) + 8))(v11, v2);
  sub_24AED6198(*&v11[v3[12]], *&v11[v3[12] + 8]);
  v12 = &v0[v9];
  v13 = sub_24AF3521C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(&v0[v9], v13);
  v16 = *&v0[v9 + v7[5]];

  v17 = v7[7];
  if (!(*(v14 + 48))(&v0[v9 + v17], 1, v13))
  {
    v15(&v12[v17], v13);
  }

  v18 = *&v12[v7[10]];

  v19 = *&v12[v7[11]];

  v20 = *&v12[v7[12] + 8];

  return MEMORY[0x2821FE8E8](v0, ((v22 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | v8 | 7);
}

uint64_t sub_24AED3F7C()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = (type metadata accessor for Message() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = (*(*v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for MessagingOptions();
  v8 = *(*(v7 - 1) + 80);
  v27 = *(*(v7 - 1) + 64);
  v9 = *(v0 + 2);
  swift_unknownObjectRelease();
  v10 = *(v0 + 6);

  v11 = &v0[v5];
  (*(*(v2 - 8) + 8))(v11, v2);
  sub_24AED6198(*&v11[v3[12]], *&v11[v3[12] + 8]);
  v12 = *&v0[v6];

  v28 = (v6 + v8 + 8) & ~v8;
  v13 = &v0[v28];
  v14 = sub_24AF3521C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v16(&v0[v28], v14);
  v17 = *&v0[v28 + v7[5]];

  v18 = v7[7];
  if (!(*(v15 + 48))(&v0[v28 + v18], 1, v14))
  {
    v16(&v13[v18], v14);
  }

  v19 = (v27 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = *&v13[v7[10]];

  v22 = *&v13[v7[11]];

  v23 = *&v13[v7[12] + 8];

  v24 = *&v0[v19];

  v25 = *&v0[v20];

  return MEMORY[0x2821FE8E8](v0, v20 + 8, v4 | v8 | 7);
}

uint64_t sub_24AED41F8()
{
  v1 = *(v0 + 2);
  v28 = *(v0 + 3);
  v2 = sub_24AF3513C();
  v3 = *(v2 - 8);
  v30 = *(v3 + 80);
  v4 = (v30 + 40) & ~v30;
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for MessagingOptions();
  v8 = *(*(v7 - 1) + 80);
  v26 = *(*(v7 - 1) + 64);
  v31 = v1;
  v29 = type metadata accessor for Message();
  v9 = *(*(v29 - 8) + 80);
  v25 = *(*(v29 - 8) + 64);
  v10 = *(v0 + 4);

  (*(v3 + 8))(&v0[v4], v2);
  v11 = *&v0[v5];

  v12 = *&v0[v6];

  v27 = (v6 + v8 + 8) & ~v8;
  v13 = &v0[v27];
  v14 = sub_24AF3521C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v16(&v0[v27], v14);
  v17 = *&v0[v27 + v7[5]];

  v18 = v7[7];
  if (!(*(v15 + 48))(&v0[v27 + v18], 1, v14))
  {
    v16(&v13[v18], v14);
  }

  v19 = (v27 + v26 + v9) & ~v9;
  v20 = *&v13[v7[10]];

  v21 = *&v13[v7[11]];

  v22 = *&v13[v7[12] + 8];

  (*(*(v31 - 8) + 8))(&v0[v19]);
  v23 = &v0[v19 + *(v29 + 40)];
  sub_24AED6198(*v23, *(v23 + 1));

  return MEMORY[0x2821FE8E8](v0, ((v25 + v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v30 | v8 | v9 | 7);
}

uint64_t sub_24AED4500()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = (type metadata accessor for Message() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(*v3 + 64);
  v7 = type metadata accessor for MessagingOptions();
  v8 = *(*(v7 - 1) + 80);
  v9 = (v5 + v6 + v8) & ~v8;
  v28 = *(*(v7 - 1) + 64);
  v10 = *(v0 + 2);
  swift_unknownObjectRelease();
  v11 = *(v0 + 6);

  v12 = &v0[v5];
  (*(*(v2 - 8) + 8))(v12, v2);
  sub_24AED6198(*&v12[v3[12]], *&v12[v3[12] + 8]);
  v13 = &v0[v9];
  v14 = sub_24AF3521C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v16(&v0[v9], v14);
  v17 = *&v0[v9 + v7[5]];

  v18 = v7[7];
  if (!(*(v15 + 48))(&v0[v9 + v18], 1, v14))
  {
    v16(&v13[v18], v14);
  }

  v19 = (v28 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = *&v13[v7[10]];

  v23 = *&v13[v7[11]];

  v24 = *&v13[v7[12] + 8];

  sub_24AED6198(*&v0[v19], *&v0[v19 + 8]);
  v25 = *&v0[v20];

  v26 = *&v0[v21];

  return MEMORY[0x2821FE8E8](v0, v21 + 8, v4 | v8 | 7);
}

uint64_t sub_24AED477C()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = type metadata accessor for MessagingOptions();
  v4 = *(*(v3 - 1) + 80);
  v21 = *(*(v3 - 1) + 64);
  v23 = v1;
  v22 = type metadata accessor for Message();
  v5 = *(*(v22 - 8) + 80);
  v20 = *(*(v22 - 8) + 64);
  v6 = *(v0 + 4);

  sub_24AED6198(*(v0 + 5), *(v0 + 6));
  v7 = *(v0 + 7);

  v8 = &v0[(v4 + 64) & ~v4];
  v9 = sub_24AF3521C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v8, v9);
  v12 = *&v8[v3[5]];

  v13 = v3[7];
  if (!(*(v10 + 48))(&v8[v13], 1, v9))
  {
    v11(&v8[v13], v9);
  }

  v14 = (((v4 + 64) & ~v4) + v21 + v5) & ~v5;
  v15 = *&v8[v3[10]];

  v16 = *&v8[v3[11]];

  v17 = *&v8[v3[12] + 8];

  (*(*(v23 - 8) + 8))(&v0[v14]);
  v18 = &v0[v14 + *(v22 + 40)];
  sub_24AED6198(*v18, *(v18 + 1));

  return MEMORY[0x2821FE8E8](v0, ((v20 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | v5 | 7);
}

uint64_t sub_24AED49E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC1078, &qword_24AF3A548);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24AED4AB8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_24AF3521C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 16);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_24AF351BC();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24AED4C3C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC11C0, &qword_24AF38DC0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_24AF3521C();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 16) = (a2 - 1);
  }

  else
  {
    v15 = sub_24AF351BC();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[11];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_24AED4DC0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AED4E00()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  v5 = *(v0 + 104);

  sub_24AED6198(*(v0 + 112), *(v0 + 120));
  v6 = *(v0 + 128);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_24AED4E74()
{
  v1 = sub_24AF3521C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);
  swift_unknownObjectRelease();
  v8 = *(v0 + 56);

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24AED4F68()
{
  v1 = sub_24AF3521C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);
  swift_unknownObjectRelease();
  v8 = *(v0 + 56);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24AED5058()
{
  v1 = type metadata accessor for MessageContext();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 96) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);
  swift_unknownObjectRelease();
  v7 = *(v0 + 56);

  v8 = *(v0 + 72);

  v9 = *(v0 + 88);

  v10 = v0 + v3;
  v11 = sub_24AF3521C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v0 + v3, 1, v11);
  v14 = *(v12 + 8);
  if (!v13)
  {
    v14(v0 + v3, v11);
  }

  v14(v10 + v1[5], v11);
  v15 = *(v10 + v1[6] + 16);

  v16 = *(v10 + v1[7] + 16);

  v17 = *(v10 + v1[8] + 8);

  v18 = v1[11];
  v19 = sub_24AF351BC();
  (*(*(v19 - 8) + 8))(v10 + v18, v19);
  v20 = *(v10 + v1[12] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AED5244()
{
  v1 = sub_24AF3513C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for MessageContext();
  v8 = *(*(v7 - 1) + 80);
  v9 = (v6 + v8 + 16) & ~v8;
  v27 = *(*(v7 - 1) + 64);
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  v11 = *(v0 + 32);
  swift_unknownObjectRelease();
  v12 = *(v0 + 56);

  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5);

  v14 = *(v0 + v6 + 8);

  v15 = v0 + v9;
  v16 = sub_24AF3521C();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v0 + v9, 1, v16);
  v19 = *(v17 + 8);
  if (!v18)
  {
    v19(v0 + v9, v16);
  }

  v19(v15 + v7[5], v16);
  v20 = *(v15 + v7[6] + 16);

  v21 = *(v15 + v7[7] + 16);

  v22 = *(v15 + v7[8] + 8);

  v23 = v7[11];
  v24 = sub_24AF351BC();
  (*(*(v24 - 8) + 8))(v15 + v23, v24);
  v25 = *(v15 + v7[12] + 8);

  return MEMORY[0x2821FE8E8](v0, v9 + v27, v3 | v8 | 7);
}

uint64_t sub_24AED54D4()
{
  v1 = type metadata accessor for MessageContext();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 112) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);
  swift_unknownObjectRelease();
  v7 = *(v0 + 56);

  sub_24AED6198(*(v0 + 72), *(v0 + 80));
  v8 = *(v0 + 104);

  v9 = v0 + v3;
  v10 = sub_24AF3521C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v0 + v3, 1, v10);
  v13 = *(v11 + 8);
  if (!v12)
  {
    v13(v0 + v3, v10);
  }

  v13(v9 + v1[5], v10);
  v14 = *(v9 + v1[6] + 16);

  v15 = *(v9 + v1[7] + 16);

  v16 = *(v9 + v1[8] + 8);

  v17 = v1[11];
  v18 = sub_24AF351BC();
  (*(*(v18 - 8) + 8))(v9 + v17, v18);
  v19 = *(v9 + v1[12] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AED56FC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t SessionMessagingInvite.account.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t SessionMessagingInvite.fromID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

uint64_t SessionMessagingInvite.accountScopedFromID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  return sub_24AF11EE0(a1);
}

uint64_t sub_24AED57BC()
{
  v1 = *(v0 + 16);
  sub_24AF05840();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t SessionMessagingInvite.context<A>()(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 48);
  v5 = *(v2 + 56);
  v6 = sub_24AF3508C();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_24AF3507C();
  v9 = *(a2 + 8);
  sub_24AF3505C();
}

uint64_t SessionMessagingInvite.accept<A>(context:heartbeatConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  *(v5 + 40) = *a2;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 16) = a1;
  *(v5 + 56) = v6;
  v7 = *(v4 + 64);
  *(v5 + 72) = *(a2 + 32);
  *(v5 + 80) = v7;
  return MEMORY[0x2822009F8](sub_24AED58F0, 0, 0);
}

uint64_t sub_24AED58F0()
{
  v1 = v0[2];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = sub_24AF350CC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_24AF350BC();
  v6 = *(v2 + 16);
  v0[11] = sub_24AF3509C();
  v0[12] = v7;

  v8 = v0[10];

  return MEMORY[0x2822009F8](sub_24AED59F4, v8, 0);
}

uint64_t sub_24AED59F4()
{
  v1 = *(v0 + 96);
  v6 = *(v0 + 80);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_24AED5ACC;
  v4 = *(v0 + 80);

  return sub_24AF069F8(sub_24AED618C, v2);
}

uint64_t sub_24AED5ACC()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {
    v4 = v3[10];

    return MEMORY[0x2822009F8](sub_24AED5D68, v4, 0);
  }

  else
  {
    v5 = v3[13];

    v6 = swift_task_alloc();
    v3[16] = v6;
    *v6 = v3;
    v6[1] = sub_24AED5C40;
    v7 = v3[10];

    return sub_24AF07168();
  }
}

uint64_t sub_24AED5C40(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;

  if (v1)
  {
    *(v4 + 144) = v1;
    v7 = sub_24AED5EA8;
  }

  else
  {
    *(v4 + 136) = a1;
    v7 = sub_24AED5DD8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24AED5D68()
{
  v1 = v0[13];

  v0[18] = v0[15];

  return MEMORY[0x2822009F8](sub_24AED5EA8, 0, 0);
}

uint64_t sub_24AED5DD8()
{
  v15 = v0;
  v1 = *(v0 + 136);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  type metadata accessor for SessionMessaging();
  v8 = *(v0 + 40);
  v13[1] = *(v0 + 56);
  v13[0] = v8;
  v14 = v5;

  v10 = sub_24AF09200(v9, v1, v13);
  sub_24AED6198(v3, v2);
  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_24AED5EA8()
{
  sub_24AED6198(v0[11], v0[12]);
  v1 = v0[18];
  v2 = v0[1];

  return v2();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t SessionMessagingInvite.decline(context:)(uint64_t a1)
{
  v3 = *(v1 + 64);
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_24AED5F74, 0, 0);
}

uint64_t sub_24AED5F74()
{
  v1 = v0[2];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = sub_24AF350CC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_24AF350BC();
  v6 = *(v2 + 16);
  v7 = sub_24AF3509C();
  v9 = v8;

  v10 = v0[3];
  v0[4] = v9;
  v0[5] = v7;

  return MEMORY[0x2822009F8](sub_24AED6084, v10, 0);
}

uint64_t sub_24AED6084()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *(v3 + 120);
  v5 = sub_24AF3516C();
  [v4 declineInvitationWithData_];

  [*(v3 + 120) endSession];

  return MEMORY[0x2822009F8](sub_24AED6128, 0, 0);
}

uint64_t sub_24AED6128()
{
  sub_24AED6198(v0[5], v0[4]);
  v1 = v0[1];

  return v1();
}

void sub_24AED618C()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_24AF06934(v0[2]);
}

uint64_t sub_24AED6198(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
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

uint64_t sub_24AED622C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_24AED6274(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_24AED62E8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void sub_24AED630C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t QueryController.serviceName.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1;
}

void *QueryController.__allocating_init(serviceName:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v4[14] = result;
    v4[15] = a1;
    v4[16] = a2;
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *QueryController.init(serviceName:)(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2[14] = result;
    v2[15] = a1;
    v2[16] = a2;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24AED6470(uint64_t a1)
{
  *(v2 + 57) = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  *(v2 + 32) = v4;
  return MEMORY[0x2822009F8](sub_24AED64A0, v1, 0);
}

uint64_t sub_24AED64A0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 24);
  v3 = *(v2 + 32);
  v5 = *(v2 + 57);
  v6 = *(v2 + 16);
  v7 = sub_24AEE2DC8(&qword_27EFC0740, a2, type metadata accessor for QueryController);
  v8 = swift_task_alloc();
  *(v2 + 40) = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  *(v8 + 32) = v4;
  *(v8 + 40) = v3;
  v9 = *(MEMORY[0x277D859E0] + 4);
  v10 = swift_task_alloc();
  *(v2 + 48) = v10;
  *v10 = v2;
  v10[1] = sub_24AED65F0;
  v11 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v2 + 56, v6, v7, 0xD00000000000001ALL, 0x800000024AF36940, sub_24AED6A94, v8, v11);
}

uint64_t sub_24AED65F0()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 16);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_24AED671C, v3, 0);
}

void sub_24AED6758(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v29 = a4;
  v34 = a3;
  v30 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0820, &qword_24AF37C28);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = sub_24AF352AC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a2[14];
  v32 = sub_24AF3539C();
  v16 = a2[15];
  v17 = a2[16];
  v31 = sub_24AF3539C();
  v18 = sub_24AF3539C();
  sub_24AEE2D5C();
  (*(v12 + 104))(v15, *MEMORY[0x277D851C8], v11);
  v19 = sub_24AF3576C();
  (*(v12 + 8))(v15, v11);
  v20 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v10, v30, v6);
  v21 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = v34;
  v23 = v28;
  *(v22 + 32) = v29;
  *(v22 + 40) = v23;
  (*(v7 + 32))(v22 + v21, v10, v6);
  aBlock[4] = sub_24AEE2E70;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AED6F7C;
  aBlock[3] = &block_descriptor_33;
  v24 = _Block_copy(aBlock);

  v25 = v32;
  v26 = v31;
  [v33 currentIDStatusForDestination:v32 service:v31 listenerID:v18 queue:v19 completionBlock:v24];
  _Block_release(v24);
}

void sub_24AED6AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a5;
  v44 = a6;
  v42 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0820, &qword_24AF37C28);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - v10;
  v12 = sub_24AF352AC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    if (a1)
    {
      if (qword_27EFC06F0 != -1)
      {
        swift_once();
      }

      v19 = sub_24AF3529C();
      __swift_project_value_buffer(v19, qword_27EFC4BB0);
      v20 = sub_24AF3527C();
      v21 = sub_24AF3572C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_24AECF000, v20, v21, "FindMyMessaging: lookup status is valid, no need to refresh", v22, 2u);
        MEMORY[0x24C236490](v22, -1, -1);
      }

      LOBYTE(aBlock[0]) = a1 == 1;
      sub_24AF3553C();
    }

    else
    {
      if (qword_27EFC06F0 != -1)
      {
        swift_once();
      }

      v41 = v7;
      v23 = sub_24AF3529C();
      __swift_project_value_buffer(v23, qword_27EFC4BB0);
      v24 = sub_24AF3527C();
      v25 = sub_24AF3572C();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_24AECF000, v24, v25, "FindMyMessaging: lookup status is unknown, refreshing", v26, 2u);
        MEMORY[0x24C236490](v26, -1, -1);
      }

      v40 = *(v18 + 112);
      v43 = sub_24AF3539C();
      v27 = *(v18 + 120);
      v28 = *(v18 + 128);

      v42 = sub_24AF3539C();

      v29 = *(v18 + 120);
      v30 = *(v18 + 128);

      v31 = sub_24AF3539C();

      sub_24AEE2D5C();
      (*(v13 + 104))(v16, *MEMORY[0x277D851C8], v12);
      v32 = sub_24AF3576C();
      (*(v13 + 8))(v16, v12);
      v33 = v41;
      (*(v8 + 16))(v11, v44, v41);
      v34 = (*(v8 + 80) + 16) & ~*(v8 + 80);
      v35 = swift_allocObject();
      (*(v8 + 32))(v35 + v34, v11, v33);
      aBlock[4] = sub_24AEE2EF8;
      aBlock[5] = v35;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24AED6F7C;
      aBlock[3] = &block_descriptor_39;
      v36 = _Block_copy(aBlock);

      v37 = v40;
      v39 = v42;
      v38 = v43;
      [v40 refreshIDStatusForDestination:v43 service:v42 listenerID:v31 queue:v32 completionBlock:v36];

      _Block_release(v36);
    }
  }
}

uint64_t sub_24AED6F7C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_24AED6FD0(uint64_t a1, _BYTE *a2)
{
  *(v3 + 136) = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *(v3 + 80) = v2;
  *(v3 + 88) = v4;
  *(v3 + 96) = v5;
  *(v3 + 137) = *a2;
  return MEMORY[0x2822009F8](sub_24AED7008, v2, 0);
}

uint64_t sub_24AED7008()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 136);
  v4 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0748, &qword_24AF38100);
  inited = swift_initStackObject();
  *(v0 + 104) = inited;
  *(inited + 16) = xmmword_24AF37AB0;
  *(inited + 32) = v3;
  *(inited + 40) = v2;
  *(inited + 48) = v1;

  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *(v6 + 16) = inited;
  *(v6 + 24) = v4;
  v7 = *(MEMORY[0x277D089C0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0750, qword_24AF37AD0);
  *v8 = v0;
  v8[1] = sub_24AED7158;

  return MEMORY[0x28215EC68](v0 + 72, 0xD00000000000001CLL, 0x800000024AF36960, sub_24AED9678, v6, v9);
}

uint64_t sub_24AED7158()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v11 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = v2[10];
    v5 = sub_24AED743C;
  }

  else
  {
    v7 = v2[13];
    v6 = v2[14];
    v8 = v2[10];
    swift_setDeallocating();
    v9 = *(v7 + 16);
    swift_arrayDestroy();

    v5 = sub_24AED72A8;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AED72A8()
{
  v22 = v0;
  v1 = *(v0 + 72);
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;
  v6 = *(v0 + 72);

  v8 = 0;
  if (v4)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = __clz(__rbit64(v4)) | (v9 << 6);
      v11 = *(v1 + 48) + 24 * v10;
      v12 = *(*(v1 + 56) + 8 * v10);
      v14 = *(v11 + 8);
      v13 = *(v11 + 16);
      v15 = *(v0 + 137);
      v18[0] = *v11;
      v19 = v14;
      v20 = v13;
      v21 = v12;

      LOBYTE(v12) = sub_24AED8318(v18, v12, v15);

      if (v12)
      {
        break;
      }

      v4 &= v4 - 1;
      v8 = v9;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    v16 = 1;
LABEL_12:
    v17 = *(v0 + 8);

    return v17(v16);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v5)
      {

        v16 = 0;
        goto LABEL_12;
      }

      v4 = *(v1 + 64 + 8 * v9);
      ++v8;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24AED743C()
{
  v1 = v0[13];
  v2 = v0[14];
  swift_setDeallocating();
  v3 = *(v1 + 16);
  swift_arrayDestroy();

  v4 = v0[1];
  v5 = v0[16];

  return v4(0);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24AED750C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 80) = a2;
  *(v4 + 88) = a3;
  *(v4 + 152) = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *(v4 + 96) = v3;
  *(v4 + 104) = v5;
  *(v4 + 112) = v6;
  return MEMORY[0x2822009F8](sub_24AED7540, v3, 0);
}

uint64_t sub_24AED7540()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 152);
  v4 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0748, &qword_24AF38100);
  inited = swift_initStackObject();
  *(v0 + 120) = inited;
  *(inited + 16) = xmmword_24AF37AB0;
  *(inited + 32) = v3;
  *(inited + 40) = v2;
  *(inited + 48) = v1;

  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *(v6 + 16) = inited;
  *(v6 + 24) = v4;
  v7 = *(MEMORY[0x277D089C0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0750, qword_24AF37AD0);
  *v8 = v0;
  v8[1] = sub_24AED7690;

  return MEMORY[0x28215EC68](v0 + 72, 0xD00000000000001CLL, 0x800000024AF36960, sub_24AEE2FC0, v6, v9);
}

uint64_t sub_24AED7690()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v11 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = v2[12];
    v5 = sub_24AED7978;
  }

  else
  {
    v7 = v2[15];
    v6 = v2[16];
    v8 = v2[12];
    swift_setDeallocating();
    v9 = *(v7 + 16);
    swift_arrayDestroy();

    v5 = sub_24AED77E0;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AED77E0()
{
  v23 = v0;
  v1 = v0[9];
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;
  v6 = v0[9];

  v8 = 0;
  if (v4)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v11 = v0[10];
      v10 = v0[11];
      v12 = __clz(__rbit64(v4)) | (v9 << 6);
      v13 = *(v1 + 48) + 24 * v12;
      v15 = *(v13 + 8);
      v14 = *(v13 + 16);
      v16 = *(*(v1 + 56) + 8 * v12);
      v19[0] = *v13;
      v20 = v15;
      v21 = v14;
      v22 = v16;

      LOBYTE(v10) = sub_24AED7A00(v19, v16);

      if (v10)
      {
        break;
      }

      v4 &= v4 - 1;
      v8 = v9;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    v17 = 1;
LABEL_12:
    v18 = v0[1];

    return v18(v17);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v5)
      {

        v17 = 0;
        goto LABEL_12;
      }

      v4 = *(v1 + 64 + 8 * v9);
      ++v8;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24AED7978()
{
  v1 = v0[15];
  v2 = v0[16];
  swift_setDeallocating();
  v3 = *(v1 + 16);
  swift_arrayDestroy();

  v4 = v0[1];
  v5 = v0[18];

  return v4(0);
}

BOOL sub_24AED7A00(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_15:
    v4 = sub_24AF3585C();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C2359A0](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_14;
      }

      v7 = *(a2 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v9 = [v7 capabilities];
    v10 = sub_24AF3539C();
    v11 = [v9 valueForCapability_];

    v5 = v6 + 1;
  }

  while (v11 != 1);
  return v4 != v6;
}

uint64_t sub_24AED7B30(uint64_t a1, _BYTE *a2)
{
  *(v3 + 153) = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *(v3 + 80) = v2;
  *(v3 + 88) = v4;
  *(v3 + 96) = v5;
  *(v3 + 154) = *a2;
  return MEMORY[0x2822009F8](sub_24AED7B68, v2, 0);
}

uint64_t sub_24AED7B68(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 88);
  v3 = *(v2 + 96);
  v5 = *(v2 + 153);
  v6 = *(v2 + 80);
  v7 = sub_24AEE2DC8(&qword_27EFC0740, a2, type metadata accessor for QueryController);
  v8 = swift_task_alloc();
  *(v2 + 104) = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  *(v8 + 32) = v4;
  *(v8 + 40) = v3;
  v9 = *(MEMORY[0x277D859E0] + 4);
  v10 = swift_task_alloc();
  *(v2 + 112) = v10;
  *v10 = v2;
  v10[1] = sub_24AED7CB8;
  v11 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v2 + 152, v6, v7, 0xD00000000000001ALL, 0x800000024AF36940, sub_24AEE2FAC, v8, v11);
}

uint64_t sub_24AED7CB8()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 80);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_24AED7DE4, v3, 0);
}

uint64_t sub_24AED7DE4()
{
  if (*(v0 + 152) == 1)
  {
    v2 = *(v0 + 88);
    v1 = *(v0 + 96);
    v3 = *(v0 + 153);
    v4 = *(v0 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0748, &qword_24AF38100);
    inited = swift_initStackObject();
    *(v0 + 120) = inited;
    *(inited + 16) = xmmword_24AF37AB0;
    *(inited + 32) = v3;
    *(inited + 40) = v2;
    *(inited + 48) = v1;

    v6 = swift_task_alloc();
    *(v0 + 128) = v6;
    *(v6 + 16) = inited;
    *(v6 + 24) = v4;
    v7 = *(MEMORY[0x277D089C0] + 4);
    v8 = swift_task_alloc();
    *(v0 + 136) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0750, qword_24AF37AD0);
    *v8 = v0;
    v8[1] = sub_24AED7FAC;

    return MEMORY[0x28215EC68](v0 + 72, 0xD00000000000001CLL, 0x800000024AF36960, sub_24AEE2FC0, v6, v9);
  }

  else
  {
    sub_24AED9680();
    swift_allocError();
    *v10 = 3;
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11(0);
  }
}

uint64_t sub_24AED7FAC()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v11 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = v2[10];
    v5 = sub_24AED8290;
  }

  else
  {
    v7 = v2[15];
    v6 = v2[16];
    v8 = v2[10];
    swift_setDeallocating();
    v9 = *(v7 + 16);
    swift_arrayDestroy();

    v5 = sub_24AED80FC;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AED80FC()
{
  v22 = v0;
  v1 = *(v0 + 72);
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;
  v6 = *(v0 + 72);

  v8 = 0;
  if (v4)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = __clz(__rbit64(v4)) | (v9 << 6);
      v11 = *(v1 + 48) + 24 * v10;
      v12 = *(*(v1 + 56) + 8 * v10);
      v14 = *(v11 + 8);
      v13 = *(v11 + 16);
      v15 = *(v0 + 154);
      v18[0] = *v11;
      v19 = v14;
      v20 = v13;
      v21 = v12;

      LOBYTE(v12) = sub_24AED8318(v18, v12, v15);

      if (v12)
      {
        break;
      }

      v4 &= v4 - 1;
      v8 = v9;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    v16 = 1;
LABEL_12:
    v17 = *(v0 + 8);

    return v17(v16);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v5)
      {

        v16 = 0;
        goto LABEL_12;
      }

      v4 = *(v1 + 64 + 8 * v9);
      ++v8;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24AED8290()
{
  v1 = v0[15];
  v2 = v0[16];
  swift_setDeallocating();
  v3 = *(v1 + 16);
  swift_arrayDestroy();

  v4 = v0[18];
  v5 = v0[1];

  return v5(0);
}

BOOL sub_24AED8318(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_15:
    v14 = a3;
    v15 = sub_24AF3585C();
    a3 = v14;
    v5 = v15;
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v17 = *MEMORY[0x277D188D8];
  v19 = *MEMORY[0x277D18878];
  v21 = *MEMORY[0x277D18870];
  v16 = *MEMORY[0x277D18900];
  v18 = *MEMORY[0x277D18880];
  v20 = *MEMORY[0x277D188B0];
  do
  {
    v9 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x24C2359A0](v6, a2);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_14;
      }

      v10 = *(a2 + 8 * v6 + 32);
    }

    v11 = v10;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v12 = [v10 capabilities];
    sub_24AF353AC();
    v7 = sub_24AF3539C();

    v8 = [v12 valueForCapability_];

    v6 = v9 + 1;
  }

  while (v8 != 1);
  return v5 != v9;
}

uint64_t sub_24AED84F8(uint64_t a1)
{
  *(v2 + 136) = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *(v2 + 80) = v1;
  *(v2 + 88) = v3;
  *(v2 + 96) = v4;
  return MEMORY[0x2822009F8](sub_24AED8528, v1, 0);
}

uint64_t sub_24AED8528()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 136);
  v4 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0748, &qword_24AF38100);
  inited = swift_initStackObject();
  *(v0 + 104) = inited;
  *(inited + 16) = xmmword_24AF37AB0;
  *(inited + 32) = v3;
  *(inited + 40) = v2;
  *(inited + 48) = v1;

  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *(v6 + 16) = inited;
  *(v6 + 24) = v4;
  v7 = *(MEMORY[0x277D089C0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0750, qword_24AF37AD0);
  *v8 = v0;
  v8[1] = sub_24AED8678;

  return MEMORY[0x28215EC68](v0 + 72, 0xD00000000000001CLL, 0x800000024AF36960, sub_24AEE2FC0, v6, v9);
}

uint64_t sub_24AED8678()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v11 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = v2[10];
    v5 = sub_24AED88F8;
  }

  else
  {
    v7 = v2[13];
    v6 = v2[14];
    v8 = v2[10];
    swift_setDeallocating();
    v9 = *(v7 + 16);
    swift_arrayDestroy();

    v5 = sub_24AED87C8;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AED87C8()
{
  v1 = sub_24AED897C(*(v0 + 72));

  if (!v1)
  {
    goto LABEL_11;
  }

  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  result = sub_24AF3585C();
  if (!result)
  {
LABEL_10:

LABEL_11:
    v10 = 0;
    v9 = 0;
    goto LABEL_12;
  }

LABEL_4:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x24C2359A0](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

  v5 = [v4 senderCorrelationIdentifier];

  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = sub_24AF353AC();
  v8 = v7;

  v9 = v8;
  v10 = v6;
LABEL_12:
  v11 = *(v0 + 8);

  return v11(v10, v9);
}

uint64_t sub_24AED88F8()
{
  v1 = v0[13];
  v2 = v0[14];
  swift_setDeallocating();
  v3 = *(v1 + 16);
  swift_arrayDestroy();

  v4 = v0[1];
  v5 = v0[16];

  return v4();
}

uint64_t sub_24AED897C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_24AF357DC();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_24AEE1AE8(v3, *(a1 + 36), 0, a1);
}

uint64_t sub_24AED89E4(uint64_t a1)
{
  *(v2 + 136) = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *(v2 + 80) = v1;
  *(v2 + 88) = v3;
  *(v2 + 96) = v4;
  return MEMORY[0x2822009F8](sub_24AED8A14, v1, 0);
}

uint64_t sub_24AED8A14()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 136);
  v4 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0748, &qword_24AF38100);
  inited = swift_initStackObject();
  *(v0 + 104) = inited;
  *(inited + 16) = xmmword_24AF37AB0;
  *(inited + 32) = v3;
  *(inited + 40) = v2;
  *(inited + 48) = v1;

  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *(v6 + 16) = inited;
  *(v6 + 24) = v4;
  v7 = *(MEMORY[0x277D089C0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0750, qword_24AF37AD0);
  *v8 = v0;
  v8[1] = sub_24AED8B64;

  return MEMORY[0x28215EC68](v0 + 72, 0xD00000000000001CLL, 0x800000024AF36960, sub_24AEE2FC0, v6, v9);
}

uint64_t sub_24AED8B64()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v11 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = v2[10];
    v5 = sub_24AED88F8;
  }

  else
  {
    v7 = v2[13];
    v6 = v2[14];
    v8 = v2[10];
    swift_setDeallocating();
    v9 = *(v7 + 16);
    swift_arrayDestroy();

    v5 = sub_24AED8CB4;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AED8CB4()
{
  v51 = v0;
  v1 = *(v0 + 9);
  if (!*(v1 + 16) || (v2 = sub_24AEDA148(v0[136], *(v0 + 11), *(v0 + 12)), (v3 & 1) == 0))
  {

    v33 = sub_24AEE1B38(MEMORY[0x277D84F90]);
    goto LABEL_32;
  }

  isUniquelyReferenced_nonNull_native = *(*(v1 + 56) + 8 * v2);

  v45 = sub_24AEE1B38(MEMORY[0x277D84F90]);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_43:
    v5 = sub_24AF3585C();
  }

  else
  {
    v5 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = v0;
  v39 = isUniquelyReferenced_nonNull_native;
  v6 = 0;
  if (!v5)
  {
LABEL_30:

    sub_24AED56FC(v6);
    v0 = v36;
    v33 = v45;
LABEL_32:
    v34 = *(v0 + 1);

    return v34(v33);
  }

  v7 = 0;
  v41 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v38 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v37 = isUniquelyReferenced_nonNull_native + 32;
  v48 = *MEMORY[0x277D188D8];
  v47 = *MEMORY[0x277D18878];
  v8 = *MEMORY[0x277D18870];
  v46 = *MEMORY[0x277D18900];
  v9 = *MEMORY[0x277D18880];
  v10 = *MEMORY[0x277D188B0];
  v0 = byte_285E3D600;
  v40 = v5;
  while (1)
  {
    if (v41)
    {
      v11 = MEMORY[0x24C2359A0](v7, v39);
      v12 = __OFADD__(v7, 1);
      v13 = v7 + 1;
      if (v12)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v7 >= *(v38 + 16))
      {
        goto LABEL_42;
      }

      v11 = *(v37 + 8 * v7);
      v12 = __OFADD__(v7, 1);
      v13 = v7 + 1;
      if (v12)
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }
    }

    v43 = v13;
    v44 = v6;
    v42 = v11;
    v14 = [v11 capabilities];
    v15 = 0;
    v49 = MEMORY[0x277D84FA0];
    do
    {
      v16 = byte_285E3D600[v15 + 32];
      sub_24AF353AC();
      v17 = sub_24AF3539C();

      v18 = [v14 valueForCapability_];

      if (v18 == 1)
      {
        sub_24AEDD7DC(&v50, v16);
      }

      ++v15;
    }

    while (v15 != 6);

    sub_24AED56FC(v44);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v45;
    v19 = sub_24AEDA0DC(v49);
    v21 = *(v45 + 16);
    v22 = (v20 & 1) == 0;
    v12 = __OFADD__(v21, v22);
    v23 = v21 + v22;
    if (v12)
    {
      goto LABEL_39;
    }

    v24 = v45;
    v25 = v20;
    if (*(v45 + 24) < v23)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v20)
      {
        goto LABEL_24;
      }
    }

    else
    {
      isUniquelyReferenced_nonNull_native = v19;
      sub_24AEDC97C();
      v19 = isUniquelyReferenced_nonNull_native;
      v24 = v50;
      if (v25)
      {
LABEL_24:
        v27 = v19;
        isUniquelyReferenced_nonNull_native = v24;

        v24 = isUniquelyReferenced_nonNull_native;
        v19 = v27;
        goto LABEL_28;
      }
    }

LABEL_26:
    v24[(v19 >> 6) + 8] |= 1 << v19;
    *(v24[6] + 8 * v19) = v49;
    *(v24[7] + 8 * v19) = 0;
    v28 = v24[2];
    v12 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v12)
    {
      goto LABEL_41;
    }

    v24[2] = v29;
LABEL_28:
    v30 = v24[7];
    v31 = *(v30 + 8 * v19);
    v12 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v12)
    {
      goto LABEL_40;
    }

    v45 = v24;
    *(v30 + 8 * v19) = v32;

    v6 = sub_24AED9128;
    v7 = v43;
    if (v43 == v40)
    {
      goto LABEL_30;
    }
  }

  sub_24AEDA560(v23, isUniquelyReferenced_nonNull_native);
  isUniquelyReferenced_nonNull_native = v50;
  v19 = sub_24AEDA0DC(v49);
  if ((v25 & 1) == (v26 & 1))
  {
    v24 = isUniquelyReferenced_nonNull_native;
    if (v25)
    {
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0760, &qword_24AF38DF0);

  return sub_24AF35C8C();
}

uint64_t QueryController.deinit()
{
  v1 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t QueryController.__deallocating_deinit()
{
  v1 = *(v0 + 128);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_24AED91B8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_24AF352AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v37 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
LABEL_17:
    v24 = a3[14];
    sub_24AEE5770(v11);

    v25 = sub_24AF3548C();

    v26 = a3[15];
    v27 = a3[16];
    v28 = sub_24AF3539C();
    v29 = sub_24AF3539C();
    sub_24AEE2D5C();
    v30 = v37;
    (*(v7 + 104))(v37, *MEMORY[0x277D851C8], v6);
    v31 = sub_24AF3576C();
    (*(v7 + 8))(v30, v6);
    v42 = sub_24AEE2DA8;
    v43 = a1;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_24AED9E24;
    v41 = &block_descriptor;
    v32 = _Block_copy(&aBlock);

    [v24 currentRemoteDevicesForDestinations:v25 service:v28 listenerID:v29 queue:v31 completionBlock:v32];
    _Block_release(v32);

    return;
  }

  v33 = a3;
  v34 = v7;
  v35 = v6;
  v36 = a1;
  v44 = MEMORY[0x277D84F90];
  sub_24AEF6148(0, v10, 0);
  v11 = v44;
  v12 = (a2 + 48);
  while (1)
  {
    v13 = *(v12 - 1);
    v14 = *v12;
    v15 = *(v12 - 2) & 0xFE;

    if (v15 != 2)
    {
      v18 = v13;
      v20 = v14;
      goto LABEL_13;
    }

    v16 = sub_24AF3539C();
    v17 = [v16 _stripPotentialTokenURIWithToken_];

    if (!v17)
    {
      break;
    }

    v18 = sub_24AF353AC();
    v20 = v19;

    if ((sub_24AF3540C() & 1) == 0 && (sub_24AF3540C() & 1) == 0 && (sub_24AF3540C() & 1) == 0 && (sub_24AF3540C() & 1) == 0 && (sub_24AF3540C() & 1) == 0 && (sub_24AF3540C() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_13:
    v44 = v11;
    v22 = *(v11 + 16);
    v21 = *(v11 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_24AEF6148((v21 > 1), v22 + 1, 1);
      v11 = v44;
    }

    *(v11 + 16) = v22 + 1;
    v23 = v11 + 16 * v22;
    *(v23 + 32) = v18;
    *(v23 + 40) = v20;
    v12 += 3;
    if (!--v10)
    {
      v6 = v35;
      a1 = v36;
      a3 = v33;
      v7 = v34;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:

  aBlock = 0;
  v39 = 0xE000000000000000;
  sub_24AF3592C();

  aBlock = 0xD000000000000012;
  v39 = 0x800000024AF36A70;
  MEMORY[0x24C235440](v13, v14);
  MEMORY[0x24C235440](0xD000000000000013, 0x800000024AF36A90);
  sub_24AF35A3C();
  __break(1u);
}

unint64_t sub_24AED9680()
{
  result = qword_27EFC0758;
  if (!qword_27EFC0758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC0758);
  }

  return result;
}

void sub_24AED96D4(uint64_t a1, uint64_t a2)
{
  if (!a1 || (v3 = sub_24AED9B44(a1)) == 0)
  {
    v34 = sub_24AF34FEC();
    sub_24AEE2DC8(&qword_27EFC07F8, 255, MEMORY[0x277D08938]);
    v35 = swift_allocError();
    *v36 = 0xD000000000000029;
    v36[1] = 0x800000024AF36AB0;
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D08930], v34);
    sub_24AF34FFC();

    return;
  }

  v4 = v3;
  v5 = 0;
  v6 = v3 + 64;
  v7 = 1 << *(v3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v3 + 64);
  v10 = (v7 + 63) >> 6;
  v40 = MEMORY[0x277D84F98];
  while (v9)
  {
    v11 = v5;
LABEL_11:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = v12 | (v11 << 6);
    v14 = (*(v4 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(v4 + 56) + 8 * v13);

    if (sub_24AF3540C())
    {
      v37 = v4;
      v38 = a2;
      v18 = 0;
      goto LABEL_24;
    }

    if (sub_24AF3540C())
    {
      v37 = v4;
      v38 = a2;
      v18 = 1;
      goto LABEL_24;
    }

    if (sub_24AF3540C())
    {
      v37 = v4;
      v38 = a2;
      v18 = 2;
      goto LABEL_24;
    }

    if (sub_24AF3540C())
    {
      v37 = v4;
      v38 = a2;
      v18 = 3;
      goto LABEL_24;
    }

    if (sub_24AF3540C())
    {
      v37 = v4;
      v38 = a2;
      v18 = 4;
      goto LABEL_24;
    }

    if (sub_24AF3540C())
    {
      v37 = v4;
      v38 = a2;
      v18 = 5;
LABEL_24:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v40;
      v39 = v18;
      v21 = sub_24AEDA148(v18, v15, v16);
      v22 = v40[2];
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        goto LABEL_40;
      }

      if (v40[3] >= v24)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v20)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v29 = v20;
          sub_24AEDCAD8();
          if (v29)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        v41 = v20;
        sub_24AEDA7F0(v24, isUniquelyReferenced_nonNull_native);
        v25 = sub_24AEDA148(v39, v15, v16);
        if ((v41 & 1) != (v26 & 1))
        {
          goto LABEL_42;
        }

        v21 = v25;
        if (v41)
        {
LABEL_31:

          v40 = v42;
          v27 = v42[7];
          v28 = *(v27 + 8 * v21);
          *(v27 + 8 * v21) = v17;

          goto LABEL_35;
        }
      }

      v42[(v21 >> 6) + 8] |= 1 << v21;
      v30 = v42[6] + 24 * v21;
      *v30 = v39;
      *(v30 + 8) = v15;
      *(v30 + 16) = v16;
      *(v42[7] + 8 * v21) = v17;
      v31 = v42[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_41;
      }

      v40 = v42;
      v42[2] = v33;
LABEL_35:
      v4 = v37;
      a2 = v38;
      v5 = v11;
    }

    else
    {

      v5 = v11;
    }
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      sub_24AF3500C();

      return;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  sub_24AF35C8C();
  __break(1u);
}

unint64_t sub_24AED9B44(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0808, &qword_24AF37C10);
    v2 = sub_24AF35A7C();
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
        sub_24AEE2A84(*(a1 + 48) + 40 * v14, v27);
        sub_24AED0E50(*(a1 + 56) + 32 * v14, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_24AEE2A84(v24, v23);
        if (!swift_dynamicCast())
        {
          sub_24AEE2E10(v24, &qword_27EFC0810, &qword_24AF37C18);

          goto LABEL_23;
        }

        sub_24AED0E50(v25 + 8, v23);
        sub_24AEE2E10(v24, &qword_27EFC0810, &qword_24AF37C18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0818, &qword_24AF37C20);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_24AEDA1DC(v21, v22);
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

uint64_t sub_24AED9E24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_24AF352FC();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

uint64_t sub_24AED9EB4()
{
  v0 = sub_24AF3529C();
  __swift_allocate_value_buffer(v0, qword_27EFC4BB0);
  __swift_project_value_buffer(v0, qword_27EFC4BB0);
  return sub_24AF3528C();
}

uint64_t sub_24AED9F34(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AED9FCC;

  return sub_24AED84F8(a1);
}

uint64_t sub_24AED9FCC(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

unint64_t sub_24AEDA0DC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_24AF35D0C();
  sub_24AEE184C(v6, a1);
  v4 = sub_24AF35D4C();

  return sub_24AEDBFB0(a1, v4);
}

unint64_t sub_24AEDA148(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 40);
  sub_24AF35D0C();
  MEMORY[0x24C235D70](a1);
  sub_24AF353DC();
  v8 = sub_24AF35D4C();

  return sub_24AEDC04C(a1, a2, a3, v8);
}

unint64_t sub_24AEDA1DC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24AF35D0C();
  sub_24AF353DC();
  v6 = sub_24AF35D4C();

  return sub_24AEDC124(a1, a2, v6);
}

unint64_t sub_24AEDA254(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_24AF3521C();
  sub_24AEE2DC8(&qword_281393400, 255, MEMORY[0x277CC95F0]);
  v5 = sub_24AF3535C();

  return sub_24AEDC1DC(a1, v5);
}

unint64_t sub_24AEDA2F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24AF3521C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CorrelationIdentifier();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v2 + 40);
  sub_24AF35D0C();
  sub_24AEE2B34(a1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v8, v12, v4);
    MEMORY[0x24C235D70](1);
    sub_24AEE2DC8(&qword_281393400, 255, MEMORY[0x277CC95F0]);
    sub_24AF3536C();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v14 = *v12;
    v15 = v12[1];
    MEMORY[0x24C235D70](0);
    sub_24AF353DC();
  }

  v16 = sub_24AF35D4C();
  return sub_24AEDC3A0(a1, v16);
}

unint64_t sub_24AEDA4FC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_24AF35A2C();
  v5 = sub_24AF3535C();

  return sub_24AEDC7E4(a1, v5);
}

uint64_t sub_24AEDA560(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07F0, &qword_24AF37C00);
  v33 = a2;
  result = sub_24AF35A6C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_24AF35D0C();
      sub_24AEE184C(v34, v21);
      result = sub_24AF35D4C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_24AEDA7F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0800, &qword_24AF37C08);
  v38 = a2;
  result = sub_24AF35A6C();
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
      v22 = (*(v5 + 48) + 24 * v21);
      v39 = *v22;
      v23 = *(v22 + 1);
      v24 = *(v22 + 2);
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = *(v22 + 2);
      }

      v27 = *(v8 + 40);
      sub_24AF35D0C();
      MEMORY[0x24C235D70](v39);
      sub_24AF353DC();
      result = sub_24AF35D4C();
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
      v17 = *(v8 + 48) + 24 * v16;
      *v17 = v39;
      *(v17 + 8) = v23;
      *(v17 + 16) = v24;
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

uint64_t sub_24AEDAAE4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_24AF3521C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0788, &qword_24AF37BA0);
  v43 = a2;
  result = sub_24AF35A6C();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_24AEE2DC8(&qword_281393400, 255, MEMORY[0x277CC95F0]);
      result = sub_24AF3535C();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_24AEDAEC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v60 = sub_24AF3521C();
  v6 = *(v60 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v60);
  v59 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CorrelationIdentifier();
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = *(v62 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v61 = (&v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v64 = &v56 - v13;
  v14 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v15 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07B8, &qword_24AF37BD0);
  result = sub_24AF35A6C();
  v17 = result;
  if (*(v14 + 16))
  {
    v56 = v3;
    v18 = 0;
    v19 = (v14 + 64);
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 64);
    v23 = (v20 + 63) >> 6;
    v58 = (v6 + 32);
    v57 = (v6 + 8);
    v24 = result + 64;
    v25 = v64;
    while (v22)
    {
      v29 = __clz(__rbit64(v22));
      v30 = (v22 - 1) & v22;
LABEL_17:
      v33 = v29 | (v18 << 6);
      v34 = *(v14 + 48);
      v68 = *(v62 + 72);
      v69 = v30;
      v35 = v34 + v68 * v33;
      if (a2)
      {
        sub_24AEE2BF4(v35, v25);
        v36 = (*(v14 + 56) + 24 * v33);
        v67 = *v36;
        v37 = *(v36 + 1);
        v65 = *(v36 + 2);
        v66 = v37;
      }

      else
      {
        sub_24AEE2B34(v35, v25);
        v38 = (*(v14 + 56) + 24 * v33);
        v67 = *v38;
        v39 = *(v38 + 1);
        v65 = *(v38 + 2);
        v66 = v39;
      }

      v40 = v14;
      v41 = *(v17 + 40);
      sub_24AF35D0C();
      v42 = v61;
      sub_24AEE2B34(v25, v61);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v43 = v59;
        v44 = v60;
        (*v58)(v59, v42, v60);
        MEMORY[0x24C235D70](1);
        sub_24AEE2DC8(&qword_281393400, 255, MEMORY[0x277CC95F0]);
        sub_24AF3536C();
        (*v57)(v43, v44);
      }

      else
      {
        v45 = a2;
        v46 = *v42;
        v47 = v42[1];
        MEMORY[0x24C235D70](0);
        a2 = v45;
        sub_24AF353DC();
      }

      result = sub_24AF35D4C();
      v48 = -1 << *(v17 + 32);
      v49 = result & ~v48;
      v50 = v49 >> 6;
      v14 = v40;
      v25 = v64;
      if (((-1 << v49) & ~*(v24 + 8 * (v49 >> 6))) == 0)
      {
        v51 = 0;
        v52 = (63 - v48) >> 6;
        while (++v50 != v52 || (v51 & 1) == 0)
        {
          v53 = v50 == v52;
          if (v50 == v52)
          {
            v50 = 0;
          }

          v51 |= v53;
          v54 = *(v24 + 8 * v50);
          if (v54 != -1)
          {
            v26 = __clz(__rbit64(~v54)) + (v50 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v49) & ~*(v24 + 8 * (v49 >> 6)))) | v49 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = sub_24AEE2BF4(v25, *(v17 + 48) + v68 * v26);
      v27 = *(v17 + 56) + 24 * v26;
      *v27 = v67;
      v28 = v65;
      *(v27 + 8) = v66;
      *(v27 + 16) = v28;
      ++*(v17 + 16);
      v22 = v69;
    }

    v31 = v18;
    while (1)
    {
      v18 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v18 >= v23)
      {
        break;
      }

      v32 = v19[v18];
      ++v31;
      if (v32)
      {
        v29 = __clz(__rbit64(v32));
        v30 = (v32 - 1) & v32;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v56;
      goto LABEL_39;
    }

    v55 = 1 << *(v14 + 32);
    v3 = v56;
    if (v55 >= 64)
    {
      bzero(v19, ((v55 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v55;
    }

    *(v14 + 16) = 0;
  }

LABEL_39:
  *v3 = v17;
  return result;
}

uint64_t sub_24AEDB3EC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for CorrelationIdentifier();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07C0, &qword_24AF37BD8);
  v45 = a2;
  result = sub_24AF35A6C();
  v12 = result;
  if (*(v9 + 16))
  {
    v42 = v2;
    v43 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 24 * v25);
      v28 = *v27;
      v30 = *(v27 + 1);
      v29 = *(v27 + 2);
      v31 = v26 + *(v44 + 72) * v25;
      v46 = *(v44 + 72);
      if (v45)
      {
        sub_24AEE2BF4(v31, v47);
      }

      else
      {
        sub_24AEE2B34(v31, v47);
      }

      v32 = *(v12 + 40);
      sub_24AF35D0C();
      MEMORY[0x24C235D70](v28);
      sub_24AF353DC();
      result = sub_24AF35D4C();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = *(v12 + 48) + 24 * v20;
      *v21 = v28;
      *(v21 + 8) = v30;
      *(v21 + 16) = v29;
      result = sub_24AEE2BF4(v47, *(v12 + 56) + v46 * v20);
      ++*(v12 + 16);
      v9 = v43;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_24AEDB76C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v39 = a2;
  result = sub_24AF35A6C();
  v11 = result;
  if (*(v8 + 16))
  {
    v38 = v6;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v24 = v21 | (v12 << 6);
      v25 = (*(v8 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v8 + 56) + 32 * v24;
      if (v39)
      {
        a5(v28, v41);
      }

      else
      {
        sub_24AED0E50(v28, v41);
      }

      v29 = *(v11 + 40);
      sub_24AF35D0C();
      sub_24AF353DC();
      result = sub_24AF35D4C();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v26;
      v20[1] = v27;
      result = (a5)(v41, *(v11 + 56) + 32 * v19);
      ++*(v11 + 16);
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v6 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v8 + 32);
    v6 = v38;
    if (v37 >= 64)
    {
      bzero((v8 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_36:
  *v6 = v11;
  return result;
}

uint64_t sub_24AEDBA30(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_24AF35A2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0798, &qword_24AF37BB0);
  v43 = a2;
  result = sub_24AF35A6C();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v42 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v45 = *(v7 + 72);
      v28 = v27 + v45 * v26;
      if (v43)
      {
        (*v44)(v46, v28, v47);
        sub_24AED0F00((*(v11 + 56) + 32 * v26), v48);
      }

      else
      {
        (*v40)(v46, v28, v47);
        sub_24AED0E50(*(v11 + 56) + 32 * v26, v48);
      }

      v29 = *(v14 + 40);
      result = sub_24AF3535C();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v41;
        v11 = v42;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v41;
      v11 = v42;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v44)((*(v14 + 48) + v45 * v22), v46, v47);
      result = sub_24AED0F00(v48, (*(v14 + 56) + 32 * v22));
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

_OWORD *sub_24AEDBDD0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_24AED0F00(a4, (a5[7] + 32 * a1));
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

uint64_t sub_24AEDBE3C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24AF3521C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_24AEDBEF4(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = type metadata accessor for CorrelationIdentifier();
  result = sub_24AEE2BF4(a2, v12 + *(*(v13 - 8) + 72) * a1);
  v15 = a6[7] + 24 * a1;
  *v15 = a3;
  *(v15 + 8) = a4;
  *(v15 + 16) = a5;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

unint64_t sub_24AEDBFB0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      if (sub_24AEE1978(*(*(v2 + 48) + 8 * v4), a1))
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_24AEDC04C(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = a1;
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      if (*v13 == v10)
      {
        v14 = *(v13 + 1) == a2 && *(v13 + 2) == a3;
        if (v14 || (sub_24AF35C4C() & 1) != 0)
        {
          break;
        }
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_24AEDC124(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24AF35C4C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24AEDC1DC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_24AF3521C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_24AEE2DC8(&qword_27EFC0790, 255, MEMORY[0x277CC95F0]);
      v16 = sub_24AF3537C();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_24AEDC3A0(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v43 = sub_24AF3521C();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v43);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07A8, &qword_24AF37BC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v11 = type metadata accessor for CorrelationIdentifier();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v44 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v38 - v16);
  MEMORY[0x28223BE20](v15);
  v20 = &v38 - v19;
  v49 = v2;
  v21 = -1 << *(v2 + 32);
  v22 = a2 & ~v21;
  v47 = v2 + 64;
  if (((*(v2 + 64 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
  {
    return v22;
  }

  v23 = *(v18 + 72);
  v45 = ~v21;
  v46 = v23;
  v42 = (v4 + 8);
  v39 = (v4 + 32);
  v24 = v44;
  while (1)
  {
    sub_24AEE2B34(*(v49 + 48) + v46 * v22, v20);
    v25 = &v10[*(v7 + 48)];
    sub_24AEE2B34(v20, v10);
    sub_24AEE2B34(v48, v25);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_24AEE2B34(v10, v24);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v7;
      v27 = v40;
      v28 = v43;
      (*v39)(v40, v25, v43);
      v41 = sub_24AF351FC();
      v29 = *v42;
      v30 = v27;
      v7 = v26;
      v24 = v44;
      (*v42)(v30, v28);
      sub_24AEE2B98(v20);
      v29(v24, v28);
      if (v41)
      {
        goto LABEL_20;
      }

LABEL_16:
      sub_24AEE2B98(v10);
      goto LABEL_5;
    }

    sub_24AEE2B98(v20);
    (*v42)(v24, v43);
LABEL_4:
    sub_24AEE2E10(v10, &qword_27EFC07A8, &qword_24AF37BC0);
LABEL_5:
    v22 = (v22 + 1) & v45;
    if (((*(v47 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      return v22;
    }
  }

  sub_24AEE2B34(v10, v17);
  v32 = *v17;
  v31 = v17[1];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24AEE2B98(v20);

    goto LABEL_4;
  }

  v33 = *v25;
  v34 = *(v25 + 1);
  if (v32 != v33 || v31 != v34)
  {
    v36 = sub_24AF35C4C();

    sub_24AEE2B98(v20);
    if (v36)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  sub_24AEE2B98(v20);
LABEL_20:
  sub_24AEE2B98(v10);
  return v22;
}

unint64_t sub_24AEDC7E4(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_24AF35A2C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = sub_24AF3537C();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void *sub_24AEDC97C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07F0, &qword_24AF37C00);
  v2 = *v0;
  v3 = sub_24AF35A5C();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_24AEDCAD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0800, &qword_24AF37C08);
  v2 = *v0;
  v3 = sub_24AF35A5C();
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
        v18 = *(v2 + 48) + 24 * v17;
        v20 = *(v18 + 8);
        v19 = *(v18 + 16);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 24 * v17;
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v19;
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

char *sub_24AEDCC7C()
{
  v1 = v0;
  v34 = sub_24AF3521C();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0788, &qword_24AF37BA0);
  v4 = *v0;
  v5 = sub_24AF35A5C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_24AEDCEFC()
{
  v1 = v0;
  v2 = type metadata accessor for CorrelationIdentifier();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07B8, &qword_24AF37BD0);
  v5 = *v0;
  v6 = sub_24AF35A5C();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v34 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v35 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v32;
        v22 = *(v33 + 72) * v20;
        sub_24AEE2B34(*(v5 + 48) + v22, v32);
        v23 = 24 * v20;
        v24 = *(v5 + 56) + 24 * v20;
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = *(v24 + 16);
        v28 = v34;
        sub_24AEE2BF4(v21, *(v34 + 48) + v22);
        v29 = *(v28 + 56) + v23;
        *v29 = v25;
        *(v29 + 8) = v26;
        *(v29 + 16) = v27;

        v15 = v35;
      }

      while (v35);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v34;
        goto LABEL_18;
      }

      v19 = *(v31 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v35 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_24AEDD148()
{
  v1 = v0;
  v2 = type metadata accessor for CorrelationIdentifier();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07C0, &qword_24AF37BD8);
  v5 = *v0;
  v6 = sub_24AF35A5C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v34 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v35 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 24 * v20;
        v22 = *(v5 + 48) + 24 * v20;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = v32;
        v27 = *(v33 + 72) * v20;
        sub_24AEE2B34(*(v5 + 56) + v27, v32);
        v28 = v34;
        v29 = *(v34 + 48) + v21;
        *v29 = v23;
        *(v29 + 8) = v24;
        *(v29 + 16) = v25;
        sub_24AEE2BF4(v26, *(v28 + 56) + v27);

        v15 = v35;
      }

      while (v35);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v31;
        v7 = v34;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v35 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_24AEDD3B8(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v3;
  v6 = sub_24AF35A5C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 32 * v20;
        sub_24AED0E50(*(v5 + 56) + 32 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

void *sub_24AEDD558()
{
  v1 = v0;
  v27 = sub_24AF35A2C();
  v29 = *(v27 - 8);
  v2 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  v26 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0798, &qword_24AF37BB0);
  v4 = *v0;
  v5 = sub_24AF35A5C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v25[1] = v29 + 32;
    v25[2] = v29 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v30 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v29;
        v21 = *(v29 + 72) * v19;
        v22 = v26;
        v23 = v27;
        (*(v29 + 16))(v26, *(v4 + 48) + v21, v27);
        v19 *= 32;
        sub_24AED0E50(*(v4 + 56) + v19, v31);
        v24 = v28;
        (*(v20 + 32))(*(v28 + 48) + v21, v22, v23);
        result = sub_24AED0F00(v31, (*(v24 + 56) + v19));
        v14 = v30;
      }

      while (v30);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v25[0];
        v6 = v28;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v30 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_24AEDD7DC(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_24AF35D0C();
  MEMORY[0x24C235D70](a2);
  v7 = sub_24AF35D4C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
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
    sub_24AEDF52C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_24AEDD8D4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_24AF35D0C();
  sub_24AF353DC();
  v9 = sub_24AF35D4C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_24AF35C4C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_24AEDF678(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24AEDDA24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  v8 = sub_24AF358BC();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      sub_24AEE2A84(*(v6 + 48) + 40 * v10, v18);
      v12 = MEMORY[0x24C235920](v18, a2);
      sub_24AEE2AE0(v18);
      if (v12)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_24AEE2AE0(a2);
    sub_24AEE2A84(*(v6 + 48) + 40 * v10, a1);
    return 0;
  }

  else
  {
LABEL_5:
    v13 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24AEE2A84(a2, v18);
    v17 = *v3;
    sub_24AEDF7F8(v18, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v17;
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_24AEDDB70(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07A8, &qword_24AF37BC0);
  v4 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v6 = &v57 - v5;
  v7 = sub_24AF3521C();
  v69 = *(v7 - 8);
  v8 = *(v69 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v61 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v57 - v11;
  v13 = type metadata accessor for CorrelationIdentifier();
  v68 = *(v13 - 8);
  v14 = *(v68 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v65 = (&v57 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v57 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v57 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = (&v57 - v26);
  v58 = v2;
  v72 = *v2;
  v28 = *(v72 + 40);
  sub_24AF35D0C();
  v71 = a2;
  sub_24AEE2B34(a2, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v57 = v25;
  if (EnumCaseMultiPayload == 1)
  {
    v30 = v69;
    (*(v69 + 32))(v12, v27, v7);
    MEMORY[0x24C235D70](1);
    sub_24AEE2DC8(&qword_281393400, 255, MEMORY[0x277CC95F0]);
    sub_24AF3536C();
    (*(v30 + 8))(v12, v7);
  }

  else
  {
    v31 = *v27;
    v32 = v27[1];
    MEMORY[0x24C235D70](0);
    sub_24AF353DC();

    v30 = v69;
  }

  v33 = sub_24AF35D4C();
  v34 = -1 << *(v72 + 32);
  v35 = v33 & ~v34;
  v69 = v72 + 56;
  if (((*(v72 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
  {
LABEL_21:
    v51 = v58;
    v52 = *v58;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v71;
    v55 = v57;
    sub_24AEE2B34(v71, v57);
    v73 = *v51;
    sub_24AEDF970(v55, v35, isUniquelyReferenced_nonNull_native);
    *v51 = v73;
    sub_24AEE2BF4(v54, v59);
    return 1;
  }

  v67 = ~v34;
  v68 = *(v68 + 72);
  v63 = (v30 + 8);
  v64 = v7;
  v60 = (v30 + 32);
  while (1)
  {
    v36 = v68 * v35;
    sub_24AEE2B34(*(v72 + 48) + v68 * v35, v22);
    v37 = &v6[*(v70 + 48)];
    sub_24AEE2B34(v22, v6);
    sub_24AEE2B34(v71, v37);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_24AEE2B34(v6, v17);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v66 = v36;
      v38 = v13;
      v39 = v17;
      v40 = v61;
      v41 = v64;
      (*v60)(v61, v37, v64);
      v62 = sub_24AF351FC();
      v42 = *v63;
      v43 = v40;
      v17 = v39;
      v13 = v38;
      (*v63)(v43, v41);
      sub_24AEE2B98(v22);
      v42(v17, v41);
      if (v62)
      {
        goto LABEL_23;
      }

LABEL_19:
      sub_24AEE2B98(v6);
      goto LABEL_8;
    }

    sub_24AEE2B98(v22);
    (*v63)(v17, v64);
LABEL_7:
    sub_24AEE2E10(v6, &qword_27EFC07A8, &qword_24AF37BC0);
LABEL_8:
    v35 = (v35 + 1) & v67;
    if (((*(v69 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v66 = v36;
  v44 = v65;
  sub_24AEE2B34(v6, v65);
  v46 = *v44;
  v45 = v44[1];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24AEE2B98(v22);

    goto LABEL_7;
  }

  v47 = *v37;
  v48 = *(v37 + 1);
  if (v46 != v47 || v45 != v48)
  {
    v50 = sub_24AF35C4C();

    sub_24AEE2B98(v22);
    if (v50)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  sub_24AEE2B98(v22);
LABEL_23:
  sub_24AEE2B98(v6);
  sub_24AEE2B98(v71);
  sub_24AEE2B34(*(v72 + 48) + v66, v59);
  return 0;
}

uint64_t sub_24AEDE1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  sub_24AF35D0C();
  MEMORY[0x24C235D70](a2);
  sub_24AF353DC();
  v10 = sub_24AF35D4C();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v8 + 48);
    while (1)
    {
      v15 = (v14 + 24 * v12);
      if (*v15 == a2)
      {
        v16 = *(v15 + 1) == a3 && *(v15 + 2) == a4;
        if (v16 || (sub_24AF35C4C() & 1) != 0)
        {
          break;
        }
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v17 = *(v8 + 48) + 24 * v12;
    v19 = *(v17 + 8);
    v18 = *(v17 + 16);
    *a1 = *v17;
    *(a1 + 8) = v19;
    *(a1 + 16) = v18;

    return 0;
  }

  else
  {
LABEL_11:
    v21 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;

    sub_24AEDFF88(a2, a3, a4, v12, isUniquelyReferenced_nonNull_native);
    *v4 = v24;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    return 1;
  }
}

uint64_t sub_24AEDE374(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_24AF35D0C();
  sub_24AF353DC();
  v9 = sub_24AF35D4C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_24AF35C4C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_24AEE013C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24AEDE4C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07E0, &qword_24AF37BF0);
  result = sub_24AF358FC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_24AF35D0C();
      sub_24AF353DC();
      result = sub_24AF35D4C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24AEDE724(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07C8, &qword_24AF37BE0);
  result = sub_24AF358FC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v30 = *v19;
      v31 = *(v19 + 16);
      v32 = *(v19 + 32);
      v20 = *(v6 + 40);
      result = sub_24AF358BC();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v30;
      *(v15 + 16) = v31;
      *(v15 + 32) = v32;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24AEDE988(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0780, &qword_24AF37B98);
  result = sub_24AF358FC();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_24AF35D0C();
      MEMORY[0x24C235D70](v18);
      result = sub_24AF35D4C();
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
      *(*(v6 + 48) + v14) = v18;
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

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24AEDEBD8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CorrelationIdentifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07B0, &qword_24AF37BC8);
  result = sub_24AF358FC();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 56);
    v15 = 1 << *(v9 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v9 + 56);
    for (i = (v15 + 63) >> 6; v17; result = sub_24AEDF2AC(v8, v12))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_13:
      sub_24AEE2BF4(*(v9 + 48) + *(v5 + 72) * (v19 | (v13 << 6)), v8);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        return result;
      }

      if (v13 >= i)
      {
        break;
      }

      v21 = v14[v13];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_13;
      }
    }

    v22 = 1 << *(v9 + 32);
    if (v22 >= 64)
    {
      bzero((v9 + 56), ((v22 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v22;
    }

    *(v9 + 16) = 0;
  }

  *v2 = v12;
  return result;
}

uint64_t sub_24AEDEDCC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07A0, &qword_24AF37BB8);
  result = sub_24AF358FC();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 24 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = *(v19 + 1);
      v22 = *(v19 + 2);
      v23 = *(v6 + 40);
      sub_24AF35D0C();
      MEMORY[0x24C235D70](v20);
      sub_24AF353DC();
      result = sub_24AF35D4C();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24AEDF04C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0768, &qword_24AF37B88);
  result = sub_24AF358FC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_24AF35D0C();
      sub_24AF353DC();
      result = sub_24AF35D4C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24AEDF2AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AF3521C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CorrelationIdentifier();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a2 + 40);
  sub_24AF35D0C();
  sub_24AEE2B34(a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v8, v13, v4);
    MEMORY[0x24C235D70](1);
    sub_24AEE2DC8(&qword_281393400, 255, MEMORY[0x277CC95F0]);
    sub_24AF3536C();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v15 = *v13;
    v16 = v13[1];
    MEMORY[0x24C235D70](0);
    sub_24AF353DC();
  }

  sub_24AF35D4C();
  v17 = -1 << *(a2 + 32);
  v18 = sub_24AF357FC();
  *(a2 + 56 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
  result = sub_24AEE2BF4(a1, *(a2 + 48) + *(v10 + 72) * v18);
  ++*(a2 + 16);
  return result;
}

uint64_t sub_24AEDF52C(uint64_t result, unint64_t a2, char a3)
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
    sub_24AEDE988(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_24AEE0594();
      a2 = v7;
      goto LABEL_12;
    }

    sub_24AEE0FE4(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_24AF35D0C();
  MEMORY[0x24C235D70](v4);
  result = sub_24AF35D4C();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
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
  *(*(v12 + 48) + a2) = v4;
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
  result = sub_24AF35C7C();
  __break(1u);
  return result;
}

uint64_t sub_24AEDF678(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_24AEDE4C4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_24AEE02BC();
      goto LABEL_16;
    }

    sub_24AEE0B7C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_24AF35D0C();
  sub_24AF353DC();
  result = sub_24AF35D4C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_24AF35C4C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_24AF35C7C();
  __break(1u);
  return result;
}

uint64_t sub_24AEDF7F8(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24AEDE724(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_24AEE0418();
      goto LABEL_12;
    }

    sub_24AEE0DB4(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  result = sub_24AF358BC();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      sub_24AEE2A84(*(v9 + 48) + 40 * a2, v20);
      v13 = MEMORY[0x24C235920](v20, v6);
      result = sub_24AEE2AE0(v20);
      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = *(v14 + 48) + 40 * a2;
  v16 = *(v6 + 16);
  *v15 = *v6;
  *(v15 + 16) = v16;
  *(v15 + 32) = *(v6 + 32);
  v17 = *(v14 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v14 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24AF35C7C();
  __break(1u);
  return result;
}

uint64_t sub_24AEDF970(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v71 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07A8, &qword_24AF37BC0);
  v7 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v9 = &v60 - v8;
  v66 = sub_24AF3521C();
  v10 = *(v66 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v66);
  v64 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v69 = &v60 - v14;
  v15 = type metadata accessor for CorrelationIdentifier();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v65 = (&v60 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v60 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = (&v60 - v26);
  v28 = *(*v4 + 16);
  v29 = *(*v4 + 24);
  v60 = v16;
  v61 = v4;
  if (v29 <= v28 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_24AEDEBD8(v28 + 1);
    }

    else
    {
      if (v29 > v28)
      {
        sub_24AEE06D4();
        goto LABEL_28;
      }

      sub_24AEE1204(v28 + 1);
    }

    v63 = *v4;
    v30 = *(v63 + 40);
    sub_24AF35D0C();
    sub_24AEE2B34(v71, v27);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = v69;
      v32 = v27;
      v33 = v66;
      (*(v10 + 32))(v69, v32, v66);
      MEMORY[0x24C235D70](1);
      sub_24AEE2DC8(&qword_281393400, 255, MEMORY[0x277CC95F0]);
      sub_24AF3536C();
      (*(v10 + 8))(v31, v33);
    }

    else
    {
      v34 = v10;
      v36 = *v27;
      v35 = v27[1];
      MEMORY[0x24C235D70](0);
      v10 = v34;
      sub_24AF353DC();
    }

    v37 = sub_24AF35D4C();
    v38 = v63;
    v39 = -1 << *(v63 + 32);
    a2 = v37 & ~v39;
    v69 = (v63 + 56);
    if ((*(v63 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v68 = ~v39;
      v67 = *(v16 + 72);
      v40 = (v10 + 8);
      v62 = (v10 + 32);
      do
      {
        sub_24AEE2B34(*(v38 + 48) + v67 * a2, v25);
        v41 = &v9[*(v70 + 48)];
        sub_24AEE2B34(v25, v9);
        sub_24AEE2B34(v71, v41);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_24AEE2B34(v9, v20);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v42 = v20;
            v43 = v64;
            v44 = v66;
            (*v62)(v64, v41, v66);
            v45 = sub_24AF351FC();
            v46 = *v40;
            v47 = v43;
            v20 = v42;
            v38 = v63;
            (*v40)(v47, v44);
            sub_24AEE2B98(v25);
            v46(v20, v44);
            if (v45)
            {
              goto LABEL_32;
            }

LABEL_26:
            sub_24AEE2B98(v9);
            goto LABEL_15;
          }

          sub_24AEE2B98(v25);
          (*v40)(v20, v66);
        }

        else
        {
          v48 = v65;
          sub_24AEE2B34(v9, v65);
          v50 = *v48;
          v49 = v48[1];
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v51 = *v41;
            v52 = *(v41 + 1);
            if (v50 == v51 && v49 == v52)
            {
              goto LABEL_31;
            }

            v54 = sub_24AF35C4C();

            sub_24AEE2B98(v25);
            if (v54)
            {
              goto LABEL_32;
            }

            goto LABEL_26;
          }

          sub_24AEE2B98(v25);
        }

        sub_24AEE2E10(v9, &qword_27EFC07A8, &qword_24AF37BC0);
LABEL_15:
        a2 = (a2 + 1) & v68;
      }

      while (((*&v69[(a2 >> 3) & 0xFFFFFFFFFFFFFF8] >> a2) & 1) != 0);
    }
  }

LABEL_28:
  v55 = *v61;
  *(*v61 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24AEE2BF4(v71, *(v55 + 48) + *(v60 + 72) * a2);
  v57 = *(v55 + 16);
  v58 = __OFADD__(v57, 1);
  v59 = v57 + 1;
  if (v58)
  {
    __break(1u);
LABEL_31:

    sub_24AEE2B98(v25);
LABEL_32:
    sub_24AEE2B98(v9);
    result = sub_24AF35C7C();
    __break(1u);
  }

  else
  {
    *(v55 + 16) = v59;
  }

  return result;
}

uint64_t sub_24AEDFF88(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a5)
  {
    sub_24AEDEDCC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_24AEE08B8();
      goto LABEL_18;
    }

    sub_24AEE13BC(v11 + 1);
  }

  v13 = *v5;
  v14 = *(*v5 + 40);
  sub_24AF35D0C();
  MEMORY[0x24C235D70](v10);
  sub_24AF353DC();
  result = sub_24AF35D4C();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  a4 = result & ~v16;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v17 = ~v16;
    v18 = *(v13 + 48);
    while (1)
    {
      v19 = (v18 + 24 * a4);
      if (*v19 == v10)
      {
        if (*(v19 + 1) == a2 && *(v19 + 2) == a3)
        {
          break;
        }

        result = sub_24AF35C4C();
        if (result)
        {
          break;
        }
      }

      a4 = (a4 + 1) & v17;
      if (((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    result = sub_24AF35C7C();
    __break(1u);
  }

LABEL_18:
  v21 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v22 = *(v21 + 48) + 24 * a4;
  *v22 = v10;
  *(v22 + 8) = a2;
  *(v22 + 16) = a3;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }

  return result;
}

uint64_t sub_24AEE013C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_24AEDF04C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_24AEE0A20();
      goto LABEL_16;
    }

    sub_24AEE1614(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_24AF35D0C();
  sub_24AF353DC();
  result = sub_24AF35D4C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_24AF35C4C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_24AF35C7C();
  __break(1u);
  return result;
}

void *sub_24AEE02BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07E0, &qword_24AF37BF0);
  v2 = *v0;
  v3 = sub_24AF358EC();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

void *sub_24AEE0418()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07C8, &qword_24AF37BE0);
  v2 = *v0;
  v3 = sub_24AF358EC();
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
        result = sub_24AEE2A84(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
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

void *sub_24AEE0594()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0780, &qword_24AF37B98);
  v2 = *v0;
  v3 = sub_24AF358EC();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

void *sub_24AEE06D4()
{
  v1 = v0;
  v2 = type metadata accessor for CorrelationIdentifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07B0, &qword_24AF37BC8);
  v7 = *v0;
  v8 = sub_24AF358EC();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_24AEE2B34(*(v7 + 48) + v22, v6);
        result = sub_24AEE2BF4(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_24AEE08B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07A0, &qword_24AF37BB8);
  v2 = *v0;
  v3 = sub_24AF358EC();
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *(v18 + 8);
        v19 = *(v18 + 16);
        v21 = *(v4 + 48) + v17;
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v19;
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

void *sub_24AEE0A20()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0768, &qword_24AF37B88);
  v2 = *v0;
  v3 = sub_24AF358EC();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_24AEE0B7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07E0, &qword_24AF37BF0);
  result = sub_24AF358FC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_24AF35D0C();

      sub_24AF353DC();
      result = sub_24AF35D4C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_24AEE0DB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07C8, &qword_24AF37BE0);
  result = sub_24AF358FC();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      sub_24AEE2A84(*(v3 + 48) + 40 * (v17 | (v7 << 6)), v29);
      v20 = *(v6 + 40);
      result = sub_24AF358BC();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 40 * v13;
      v15 = v29[0];
      v16 = v29[1];
      *(v14 + 32) = v30;
      *v14 = v15;
      *(v14 + 16) = v16;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v28;
        goto LABEL_28;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
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

uint64_t sub_24AEE0FE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0780, &qword_24AF37B98);
  result = sub_24AF358FC();
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
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_24AF35D0C();
      MEMORY[0x24C235D70](v17);
      result = sub_24AF35D4C();
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
      *(*(v6 + 48) + v13) = v17;
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

uint64_t sub_24AEE1204(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CorrelationIdentifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07B0, &qword_24AF37BC8);
  result = sub_24AF358FC();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = 1 << *(v9 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v9 + 56);
    for (i = (v14 + 63) >> 6; v16; result = sub_24AEDF2AC(v8, v12))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_13:
      sub_24AEE2B34(*(v9 + 48) + *(v5 + 72) * (v18 | (v13 << 6)), v8);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= i)
      {
        goto LABEL_15;
      }

      v20 = *(v9 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v2 = v12;
  }

  return result;
}

uint64_t sub_24AEE13BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07A0, &qword_24AF37BB8);
  result = sub_24AF358FC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 24 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = *(v19 + 1);
      v22 = *(v19 + 2);
      v23 = *(v6 + 40);
      sub_24AF35D0C();
      MEMORY[0x24C235D70](v20);

      sub_24AF353DC();
      result = sub_24AF35D4C();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v32;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v31;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
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

uint64_t sub_24AEE1614(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0768, &qword_24AF37B88);
  result = sub_24AF358FC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_24AF35D0C();

      sub_24AF353DC();
      result = sub_24AF35D4C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_24AEE184C(__int128 *a1, uint64_t a2)
{
  v15 = a1[2];
  v16 = a1[3];
  v17 = *(a1 + 8);
  v13 = *a1;
  v14 = a1[1];
  result = sub_24AF35D4C();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    sub_24AF35D0C();
    MEMORY[0x24C235D70](v12);
    result = sub_24AF35D4C();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x24C235D70](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24AEE1978(uint64_t result, uint64_t a2)
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
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    sub_24AF35D0C();
    MEMORY[0x24C235D70](v13);
    result = sub_24AF35D4C();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24AEE1AE8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_24AEE1B38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07F0, &qword_24AF37C00);
    v3 = sub_24AF35A7C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;

      result = sub_24AEDA0DC(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t dispatch thunk of QueryController.isRegistered(destination:)(uint64_t a1)
{
  v4 = *(*v1 + 112);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AEE1D70;

  return v8(a1);
}

uint64_t sub_24AEE1D70(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of QueryController.destinationHasCapability(destination:capability:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 120);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AEE1F94;

  return v10(a1, a2);
}

uint64_t sub_24AEE1F94(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of QueryController.destinationHasCapability(destination:capability:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 128);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_24AEE2FB0;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of QueryController.destinationHasCapabilityWithDataReloadIfRequired(destination:capability:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 136);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AEE2FB0;

  return v10(a1, a2);
}

uint64_t dispatch thunk of QueryController.correlationIdentifier(destination:)(uint64_t a1)
{
  v4 = *(*v1 + 144);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AEE2410;

  return v8(a1);
}

uint64_t sub_24AEE2410(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of QueryController.partitionByCapability(destination:)(uint64_t a1)
{
  v4 = *(*v1 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AEE1F94;

  return v8(a1);
}

unint64_t sub_24AEE263C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07E8, &qword_24AF37BF8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0788, &qword_24AF37BA0);
    v8 = sub_24AF35A7C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_24AEE2CF4(v10, v6, &qword_27EFC07E8, &qword_24AF37BF8);
      result = sub_24AEDA254(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_24AF3521C();
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24AEE2824(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC07D0, &qword_24AF37BE8);
    v3 = sub_24AF35A7C();
    v4 = a1 + 32;

    while (1)
    {
      sub_24AEE2CF4(v4, &v13, &qword_27EFC07D8, &qword_24AF38DD0);
      v5 = v13;
      v6 = v14;
      result = sub_24AEDA1DC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24AED0F00(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_24AEE2954(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0770, &qword_24AF37B90);
    v3 = sub_24AF35A7C();
    v4 = a1 + 32;

    while (1)
    {
      sub_24AEE2CF4(v4, &v13, &qword_27EFC0778, &qword_24AF38080);
      v5 = v13;
      v6 = v14;
      result = sub_24AEDA1DC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24AED0F00(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_24AEE2B34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CorrelationIdentifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AEE2B98(uint64_t a1)
{
  v2 = type metadata accessor for CorrelationIdentifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AEE2BF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CorrelationIdentifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24AEE2CF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_24AEE2D5C()
{
  result = qword_281392DC0;
  if (!qword_281392DC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281392DC0);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24AEE2DC8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24AEE2E10(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_24AEE2E70(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0820, &qword_24AF37C28) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 24);
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  sub_24AED6AA4(a1, v4, v7, v5, v6, v8);
}

uint64_t sub_24AEE2EF8()
{
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0820, &qword_24AF37C28) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0820, &qword_24AF37C28);
  return sub_24AF3553C();
}

uint64_t sub_24AEE2FC4(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08A8, &qword_24AF37D30) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08B0, &qword_24AF37D38);
  v3[15] = v5;
  v6 = *(v5 - 8);
  v3[16] = v6;
  v7 = *(v6 + 64) + 15;
  v3[17] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08B8, &qword_24AF37D40);
  v3[18] = v8;
  v9 = *(v8 - 8);
  v3[19] = v9;
  v10 = *(v9 + 64) + 15;
  v3[20] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC08C0, qword_24AF37D48);
  v3[21] = v11;
  v12 = *(v11 - 8);
  v3[22] = v12;
  v3[23] = *(v12 + 64);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0890, &qword_24AF37CF8);
  v3[26] = v13;
  v14 = *(v13 - 8);
  v3[27] = v14;
  v15 = *(v14 + 64) + 15;
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AEE3218, 0, 0);
}

uint64_t sub_24AEE3218()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  swift_defaultActor_initialize();
  *(v2 + OBJC_IVAR____TtC15FindMyMessaging34SessionMessagingDatagramConnection_receiveTask) = 0;
  v4 = OBJC_IVAR____TtC15FindMyMessaging34SessionMessagingDatagramConnection_packetContinuation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D00, &qword_24AF37D08);
  v0[29] = v5;
  v6 = *(v5 - 8);
  v0[30] = v6;
  (*(v6 + 16))(v2 + v4, v1, v5);
  *(v2 + 112) = v3;
  v7 = v3;

  return MEMORY[0x2822009F8](sub_24AEE3310, v2, 0);
}

uint64_t sub_24AEE3310()
{
  receiver = v0[14].receiver;
  super_class = v0[12].super_class;
  v31 = v0[13].receiver;
  v32 = v0[13].super_class;
  v26 = v0[11].receiver;
  v27 = v0[10].super_class;
  v28 = v0[12].receiver;
  v3 = v0[9].super_class;
  v4 = v0[10].receiver;
  v5 = v0[9].receiver;
  v29 = v0[11].super_class;
  v30 = v0[8].super_class;
  v6 = *(v0[6].super_class + 14);
  v7 = type metadata accessor for KVOHelperNWDatagramConnection(0);
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC15FindMyMessagingP33_A1E88CBCB4148078D702E93ABD6DB41329KVOHelperNWDatagramConnection_observation] = 0;
  type metadata accessor for NWConnectionState(0);
  (*(v3 + 13))(v4, *MEMORY[0x277D85778], v5);
  v9 = v6;
  sub_24AF3558C();
  (*(v3 + 1))(v4, v5);
  *&v8[OBJC_IVAR____TtC15FindMyMessagingP33_A1E88CBCB4148078D702E93ABD6DB41329KVOHelperNWDatagramConnection_observee] = v9;
  (*(v32 + 2))(&v8[OBJC_IVAR____TtC15FindMyMessagingP33_A1E88CBCB4148078D702E93ABD6DB41329KVOHelperNWDatagramConnection_stream], receiver, v31);
  v0[1].receiver = v8;
  v0[1].super_class = v7;
  v25 = v9;
  v10 = objc_msgSendSuper2(v0 + 1, sel_init);
  v0[15].super_class = v10;
  v11 = *(v10 + OBJC_IVAR____TtC15FindMyMessagingP33_A1E88CBCB4148078D702E93ABD6DB41329KVOHelperNWDatagramConnection_observee);
  v0[4].receiver = v11;
  swift_getKeyPath();
  v26[2](v28, super_class, v27);
  v12 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v13 = swift_allocObject();
  v26[4]((v13 + v12), v28, v27);
  v14 = v10;
  v15 = v11;
  v16 = sub_24AF350EC();

  (v26[1])(super_class, v27);
  (*(v32 + 1))(receiver, v31);
  v17 = *(v14 + OBJC_IVAR____TtC15FindMyMessagingP33_A1E88CBCB4148078D702E93ABD6DB41329KVOHelperNWDatagramConnection_observation);
  *(v14 + OBJC_IVAR____TtC15FindMyMessagingP33_A1E88CBCB4148078D702E93ABD6DB41329KVOHelperNWDatagramConnection_observation) = v16;

  sub_24AF355FC();
  v18 = sub_24AEE5404();
  v0[16].receiver = v18;
  v19 = v0[6].super_class;
  v20 = *(MEMORY[0x277D85798] + 4);

  v21 = swift_task_alloc();
  v0[16].super_class = v21;
  *v21 = v0;
  *(v21 + 1) = sub_24AEE366C;
  v22 = v0[8].super_class;
  v23 = v0[7].super_class;

  return MEMORY[0x2822003E8](&v0[3], v19, v18, v23);
}

uint64_t sub_24AEE366C()
{
  v1 = *v0;
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 104);
  v10 = *v0;

  if (v3)
  {
    v4 = *(v1 + 256);
    v5 = *(v1 + 104);
    swift_getObjectType();
    v6 = sub_24AF3551C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x2822009F8](sub_24AEE37B0, v6, v8);
}