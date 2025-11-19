uint64_t sub_20CCEBA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20CD626F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20CCEBB10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20CD626F4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20CCEBBCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C20, &qword_20CD640C0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20CCEBC44(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C20, &qword_20CD640C0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_20CCEBCD0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_20CD62764();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_20CD629D4();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_20CD62964();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[7] + 24);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CC8, &qword_20CD64160);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[8];
      goto LABEL_7;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CD0, &qword_20CD64168);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[9];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_20CCEBEF0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_20CD62764();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_20CD629D4();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = sub_20CD62964();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 24) = (a2 - 1);
    return result;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CC8, &qword_20CD64160);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CD0, &qword_20CD64168);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[9];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_20CCEC110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF8, &unk_20CD64540);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CC8, &qword_20CD64160);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20CCEC218(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF8, &unk_20CD64540);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CC8, &qword_20CD64160);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_20CCEC32C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_20CCEC400()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CCEC48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20CD626F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20CCEC54C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20CD626F4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20CCEC60C()
{
  v1 = (type metadata accessor for SnapshotProcessor() - 8);
  v2 = *(*v1 + 80);
  v26 = (v2 + 32) & ~v2;
  v3 = *(*v1 + 64);
  v4 = sub_20CD62514();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 80);
  v6 = (v26 + v3 + v5) & ~v5;
  v30 = v6;
  v7 = *(v33 + 64);
  v32 = sub_20CD62C54();
  v29 = *(v32 - 8);
  v8 = *(v29 + 80);
  v9 = (v6 + v7 + v8) & ~v8;
  v27 = v9;
  v10 = *(v29 + 64);
  v31 = sub_20CD62654();
  v11 = *(v31 - 8);
  v12 = *(v11 + 80);
  v13 = (v9 + v10 + v12) & ~v12;
  v14 = *(v11 + 64);
  v28 = sub_20CD62AB4();
  v15 = *(v28 - 8);
  v16 = *(v15 + 80);
  v17 = (v13 + v14 + v16) & ~v16;
  v18 = v2 | v5 | v8 | v12 | v16;
  v19 = (*(v15 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v0 + 16);
  swift_unknownObjectRelease();
  v22 = sub_20CD626F4();
  (*(*(v22 - 8) + 8))(v0 + v26, v22);
  __swift_destroy_boxed_opaque_existential_0((v0 + v26 + v1[7]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v26 + v1[8]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v26 + v1[9]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v26 + v1[10]));

  __swift_destroy_boxed_opaque_existential_0((v0 + v26 + v1[12]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v26 + v1[13]));
  __swift_destroy_boxed_opaque_existential_0((v0 + v26 + v1[14]));
  (*(v33 + 8))(v0 + v30, v34);
  (*(v29 + 8))(v0 + v27, v32);
  (*(v11 + 8))(v0 + v13, v31);
  (*(v15 + 8))(v0 + v17, v28);
  v23 = *(v0 + v19);

  v24 = *(v0 + v20);

  return MEMORY[0x2821FE8E8](v0, v20 + 10, v18 | 7);
}

uint64_t sub_20CCEC9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20CD626F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_20CCECA70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20CD626F4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20CCECBC4()
{
  v1 = sub_20CD62E94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  sub_20CD1CD98(*(v0 + 16), *(v0 + 24));
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_20CCECD20()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8110F8, &unk_20CD64C10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  sub_20CD1CD98(*(v0 + 16), *(v0 + 24));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20CCECE90()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CCECED8()
{
  v19 = sub_20CD62E94();
  v1 = *(v19 - 8);
  v2 = *(v1 + 80);
  v17 = (v2 + 32) & ~v2;
  v3 = *(v1 + 64);
  v18 = sub_20CD62654();
  v4 = *(v18 - 8);
  v5 = *(v4 + 80);
  v6 = (v17 + v3 + v5) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_20CD62514();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + 8) & ~v10;
  v16 = *(v9 + 64);
  v12 = v2 | v5 | v10;
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v17, v19);
  (*(v4 + 8))(v0 + v6, v18);
  v14 = *(v0 + v7);

  (*(v9 + 8))(v0 + v11, v8);

  return MEMORY[0x2821FE8E8](v0, v11 + v16, v12 | 7);
}

uint64_t sub_20CCED0D0()
{
  v1 = sub_20CD62E94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_20CD62514();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v13 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_20CCED234(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8112C8, &qword_20CD651D8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20CCED2AC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8112C8, &qword_20CD651D8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_20CCED338()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CCED380()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CCED3B8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CCED44C()
{
  result = sub_20CD626F4();
  if (v1 <= 0x3F)
  {
    result = sub_20CCED538(319, &qword_28110F640);
    if (v2 <= 0x3F)
    {
      result = sub_20CCED538(319, qword_28110F2B0);
      if (v3 <= 0x3F)
      {
        result = sub_20CCED538(319, &qword_28110F2A8);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_20CCED538(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_20CCED5C0()
{
  v9 = v0;
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v1 = sub_20CD631B4();
  __swift_project_value_buffer(v1, qword_28110F878);
  v2 = sub_20CD63194();
  v3 = sub_20CD633D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_20CD6153C(0xD000000000000010, 0x800000020CD64060, &v8);
    _os_log_impl(&dword_20CCEA000, v2, v3, "[%s] Prewarmed.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F3115B0](v5, -1, -1);
    MEMORY[0x20F3115B0](v4, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_20CCED738(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D857C8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C10, &unk_20CD650C0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C18, &qword_20CD640B0);
  *v6 = v2;
  v6[1] = sub_20CCEE040;
  v9 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](a1, a2, v7, v8, v9);
}

uint64_t sub_20CCED820(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D857C8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C10, &unk_20CD650C0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C18, &qword_20CD640B0);
  *v6 = v2;
  v6[1] = sub_20CCED908;
  v9 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](a1, a2, v7, v8, v9);
}

uint64_t sub_20CCED908()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
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

uint64_t sub_20CCEDB14(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CCEDB4C()
{
  sub_20CCEDBA4();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_20CCEDBA4()
{
  if (!qword_27C810C38[0])
  {
    sub_20CD62AB4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_27C810C38);
    }
  }
}

void sub_20CCEDC14(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_20CD63464();
  if (v2 <= 0x3F)
  {
    sub_20CCEDFC0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20CCEDC9C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (v6 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v6 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_28;
  }

  if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 2)
    {
      v17 = (*(v4 + 48))(a1, v5);
      if (v17 >= 2)
      {
        return v17 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

LABEL_21:
  v14 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v15 = *a1;
  }

  else
  {
    v14 = 0;
    v15 = *a1;
  }

  return v6 + (v15 | v14) + 1;
}

void sub_20CCEDDF0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = v8 - 1;
  if (!v8)
  {
    v10 = 0;
    ++v9;
  }

  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 < a3)
  {
    v12 = (a3 - v10 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v6 = v14;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v10 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v11] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        if (v8 >= 2)
        {
          v17 = *(v7 + 56);

          v17();
        }

        return;
      }

      *&a1[v11] = 0;
    }

    else if (v6)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  v15 = ~v10 + a2;
  bzero(a1, v11);
  if (v11 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v15;
    if (v6 > 1)
    {
LABEL_21:
      if (v6 == 2)
      {
        *&a1[v11] = v16;
      }

      else
      {
        *&a1[v11] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v6 > 1)
    {
      goto LABEL_21;
    }
  }

  if (v6)
  {
    a1[v11] = v16;
  }
}

void sub_20CCEDFC0()
{
  if (!qword_27C810CC0)
  {
    v0 = sub_20CD63464();
    if (!v1)
    {
      atomic_store(v0, &qword_27C810CC0);
    }
  }
}

uint64_t FitnessPlusSessionRepresentable.session.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20CD62764();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FitnessPlusSessionRepresentable.trainerIdentifiers.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FitnessPlusSessionRepresentable() + 20);
  v4 = sub_20CD629D4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for FitnessPlusSessionRepresentable()
{
  result = qword_28110F630;
  if (!qword_28110F630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FitnessPlusSessionRepresentable.modalityKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FitnessPlusSessionRepresentable() + 24);
  v4 = sub_20CD62964();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FitnessPlusSessionRepresentable.hkWorkout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FitnessPlusSessionRepresentable() + 28);

  return sub_20CCEE234(v3, a1);
}

uint64_t sub_20CCEE234(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t FitnessPlusSessionRepresentable.end.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FitnessPlusSessionRepresentable() + 32);

  return sub_20CCEE2DC(v3, a1);
}

uint64_t sub_20CCEE2DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CC8, &qword_20CD64160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FitnessPlusSessionRepresentable.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FitnessPlusSessionRepresentable() + 36);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CD0, &qword_20CD64168);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FitnessPlusSessionRepresentable.init(session:workout:modality:hkWorkout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a4;
  v28 = a3;
  v29 = a2;
  v7 = sub_20CD62654();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_20CD62764();
  v12 = *(v30 - 8);
  (*(v12 + 16))(a5, a1, v30);
  sub_20CD62794();
  v13 = type metadata accessor for FitnessPlusSessionRepresentable();
  v14 = a5 + v13[5];
  sub_20CD629C4();
  v15 = sub_20CD627C4();
  v17 = v16;
  v19 = v18;
  sub_20CCEE6AC(a5 + v13[6]);
  sub_20CCEE750(v15, v17, v19 & 1);
  v20 = v27;
  sub_20CCEE234(v27, a5 + v13[7]);
  v21 = v13[8];
  _s31FitnessIntelligenceSnapshotting0A24PlusSessionRepresentableV5start10Foundation4DateVvg_0();
  sub_20CD62744();
  sub_20CD62554();
  (*(v8 + 8))(v11, v7);
  (*(v8 + 56))(a5 + v21, 0, 1, v7);
  sub_20CD62744();
  v22 = [objc_opt_self() seconds];
  v23 = v13[9];
  sub_20CCEE760();
  sub_20CD624B4();
  __swift_destroy_boxed_opaque_existential_0(v20);
  v24 = sub_20CD627D4();
  (*(*(v24 - 8) + 8))(v28, v24);
  v25 = sub_20CD627A4();
  (*(*(v25 - 8) + 8))(v29, v25);
  return (*(v12 + 8))(a1, v30);
}

uint64_t sub_20CCEE6AC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CE8, &unk_20CD64260);
  sub_20CD62714();
  v2 = **(&unk_277DABF08 + v5);
  v3 = sub_20CD62964();
  return (*(*(v3 - 8) + 104))(a1, v2, v3);
}

uint64_t sub_20CCEE750(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_20CCEE760()
{
  result = qword_28110F150;
  if (!qword_28110F150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28110F150);
  }

  return result;
}

uint64_t FitnessPlusSessionRepresentable.hkIdendentifier.getter()
{
  v1 = sub_20CD626A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for FitnessPlusSessionRepresentable() + 28));
  v7 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_20CD62D64();
  v8 = sub_20CD62664();
  (*(v2 + 8))(v5, v1);
  return v8;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_20CCEE930(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = (v1 + *(type metadata accessor for FitnessPlusSessionRepresentable() + 28));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  return a1(v4, v5);
}

uint64_t sub_20CCEE9D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_20CD629D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20CCEEA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_20CD62964();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20CCEEAB8(uint64_t a1)
{
  v3 = sub_20CD626A4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + *(a1 + 28));
  v9 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_20CD62D64();
  v10 = sub_20CD62664();
  (*(v4 + 8))(v7, v3);
  return v10;
}

uint64_t sub_20CCEEBD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CD0, &qword_20CD64168);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20CCEEC80(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = (v3 + *(a1 + 28));
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  return a3(v6, v7);
}

uint64_t sub_20CCEECE0(uint64_t a1)
{
  v2 = sub_20CCEEF7C(&qword_27C810CE0);

  return MEMORY[0x282160950](a1, v2);
}

void sub_20CCEED70()
{
  sub_20CD62764();
  if (v0 <= 0x3F)
  {
    sub_20CD629D4();
    if (v1 <= 0x3F)
    {
      sub_20CD62964();
      if (v2 <= 0x3F)
      {
        sub_20CCEEEB4();
        if (v3 <= 0x3F)
        {
          sub_20CCEEF18(319, &qword_28110F7E0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_20CCEEF18(319, &unk_28110F800, sub_20CCEE760, MEMORY[0x277CC87D0]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_20CCEEEB4()
{
  result = qword_28110F6C0;
  if (!qword_28110F6C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28110F6C0);
  }

  return result;
}

void sub_20CCEEF18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_20CCEEF7C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FitnessPlusSessionRepresentable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20CCEEFC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v731 = a2;
  v721 = sub_20CD626F4();
  v714 = *(v721 - 1);
  v3 = *(v714 + 64);
  v4 = MEMORY[0x28223BE20](v721);
  v649 = &v619 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v670 = &v619 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v656 = &v619 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v679 = &v619 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v676 = &v619 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v687 = &v619 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v673 = &v619 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v693 = &v619 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v682 = &v619 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v701 = &v619 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v699 = &v619 - v25;
  MEMORY[0x28223BE20](v24);
  v708 = &v619 - v26;
  v717 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF0, &unk_20CD64270);
  v27 = *(*(v717 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v717);
  v718 = &v619 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v716 = &v619 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF8, &unk_20CD64540);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v622 = &v619 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v620 = &v619 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v624 = &v619 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v623 = &v619 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v632 = &v619 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v648 = &v619 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v637 = &v619 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v653 = &v619 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v671 = &v619 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v667 = &v619 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v677 = &v619 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v694 = &v619 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v695 = &v619 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v702 = &v619 - v60;
  MEMORY[0x28223BE20](v59);
  v722 = &v619 - v61;
  v726 = sub_20CD62AB4();
  v729 = *(v726 - 8);
  v62 = *(v729 + 8);
  v63 = MEMORY[0x28223BE20](v726);
  v631 = &v619 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x28223BE20](v63);
  v628 = &v619 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v633 = &v619 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v627 = &v619 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v625 = &v619 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v640 = &v619 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v636 = &v619 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v635 = &v619 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v634 = &v619 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v639 = &v619 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v644 = &v619 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v642 = &v619 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v645 = &v619 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v652 = &v619 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v646 = &v619 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v654 = &v619 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v657 = &v619 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v651 = &v619 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v662 = &v619 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v663 = &v619 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v658 = &v619 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v665 = &v619 - v106;
  v107 = MEMORY[0x28223BE20](v105);
  v685 = &v619 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v681 = &v619 - v110;
  v111 = MEMORY[0x28223BE20](v109);
  v688 = &v619 - v112;
  v113 = MEMORY[0x28223BE20](v111);
  v690 = &v619 - v114;
  v115 = MEMORY[0x28223BE20](v113);
  v706 = &v619 - v116;
  v117 = MEMORY[0x28223BE20](v115);
  v704 = &v619 - v118;
  v119 = MEMORY[0x28223BE20](v117);
  v705 = &v619 - v120;
  v121 = MEMORY[0x28223BE20](v119);
  v713 = &v619 - v122;
  v123 = MEMORY[0x28223BE20](v121);
  v710 = &v619 - v124;
  v125 = MEMORY[0x28223BE20](v123);
  v711 = &v619 - v126;
  v127 = MEMORY[0x28223BE20](v125);
  v712 = (&v619 - v128);
  v129 = MEMORY[0x28223BE20](v127);
  v724 = &v619 - v130;
  v131 = MEMORY[0x28223BE20](v129);
  v725 = &v619 - v132;
  MEMORY[0x28223BE20](v131);
  v730 = &v619 - v133;
  v134 = sub_20CD62654();
  v135 = *(v134 - 8);
  v732 = v134;
  v733 = v135;
  v136 = *(v135 + 64);
  v137 = MEMORY[0x28223BE20](v134);
  v630 = &v619 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = MEMORY[0x28223BE20](v137);
  v621 = &v619 - v140;
  v141 = MEMORY[0x28223BE20](v139);
  v629 = &v619 - v142;
  v143 = MEMORY[0x28223BE20](v141);
  v641 = &v619 - v144;
  v145 = MEMORY[0x28223BE20](v143);
  v626 = &v619 - v146;
  v147 = MEMORY[0x28223BE20](v145);
  v638 = &v619 - v148;
  v149 = MEMORY[0x28223BE20](v147);
  v643 = &v619 - v150;
  v151 = MEMORY[0x28223BE20](v149);
  v650 = &v619 - v152;
  v153 = MEMORY[0x28223BE20](v151);
  v659 = &v619 - v154;
  v155 = MEMORY[0x28223BE20](v153);
  v661 = &v619 - v156;
  v157 = MEMORY[0x28223BE20](v155);
  v647 = &v619 - v158;
  v159 = MEMORY[0x28223BE20](v157);
  v668 = &v619 - v160;
  v161 = MEMORY[0x28223BE20](v159);
  v660 = &v619 - v162;
  v163 = MEMORY[0x28223BE20](v161);
  v669 = &v619 - v164;
  v165 = MEMORY[0x28223BE20](v163);
  v655 = &v619 - v166;
  v167 = MEMORY[0x28223BE20](v165);
  v678 = &v619 - v168;
  v169 = MEMORY[0x28223BE20](v167);
  v666 = &v619 - v170;
  v171 = MEMORY[0x28223BE20](v169);
  v683 = &v619 - v172;
  v173 = MEMORY[0x28223BE20](v171);
  v675 = &v619 - v174;
  v175 = MEMORY[0x28223BE20](v173);
  v686 = &v619 - v176;
  v177 = MEMORY[0x28223BE20](v175);
  v674 = &v619 - v178;
  v179 = MEMORY[0x28223BE20](v177);
  v691 = &v619 - v180;
  v181 = MEMORY[0x28223BE20](v179);
  v672 = &v619 - v182;
  v183 = MEMORY[0x28223BE20](v181);
  v692 = &v619 - v184;
  v185 = MEMORY[0x28223BE20](v183);
  v684 = &v619 - v186;
  v187 = MEMORY[0x28223BE20](v185);
  v696 = &v619 - v188;
  v189 = MEMORY[0x28223BE20](v187);
  v680 = &v619 - v190;
  v191 = MEMORY[0x28223BE20](v189);
  v700 = &v619 - v192;
  v193 = MEMORY[0x28223BE20](v191);
  v689 = &v619 - v194;
  v195 = MEMORY[0x28223BE20](v193);
  v703 = &v619 - v196;
  v197 = MEMORY[0x28223BE20](v195);
  v698 = &v619 - v198;
  v199 = MEMORY[0x28223BE20](v197);
  v707 = &v619 - v200;
  v201 = MEMORY[0x28223BE20](v199);
  v697 = &v619 - v202;
  v203 = MEMORY[0x28223BE20](v201);
  v709 = &v619 - v204;
  v205 = MEMORY[0x28223BE20](v203);
  v715 = &v619 - v206;
  v207 = MEMORY[0x28223BE20](v205);
  v720 = &v619 - v208;
  v209 = MEMORY[0x28223BE20](v207);
  v211 = &v619 - v210;
  v212 = MEMORY[0x28223BE20](v209);
  v723 = (&v619 - v213);
  v214 = MEMORY[0x28223BE20](v212);
  v727 = &v619 - v215;
  MEMORY[0x28223BE20](v214);
  v217 = &v619 - v216;
  v218 = sub_20CD62CE4();
  v219 = *(v218 - 8);
  v220 = *(v219 + 64);
  v221 = MEMORY[0x28223BE20](v218);
  v223 = &v619 - ((v222 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v221);
  v225 = &v619 - v224;
  v226 = *(v219 + 16);
  v226(&v619 - v224, a1, v218);
  v227 = (*(v219 + 88))(v225, v218);
  if (v227 == *MEMORY[0x277D0A290])
  {
    (*(v219 + 8))(a1, v218);
    (*(v219 + 96))(v225, v218);
    v228 = v732;
    v229 = v733;
    v230 = *(v733 + 32);
    v230(v217, v225, v732);
    v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
    v232 = v731;
    (*(*(v231 - 8) + 56))(v731, 1, 1, v231);
    v233 = *(type metadata accessor for SnapshotQueryRange() + 20);
    v230((v232 + v233), v217, v228);
    return (*(v229 + 56))(v232 + v233, 0, 1, v228);
  }

  v728 = v218;
  v719 = v219;
  v664 = a1;
  if (v227 == *MEMORY[0x277D0A2B0])
  {
    v235 = v719;
    (*(v719 + 96))(v225, v728);
    v237 = v732;
    v236 = v733;
    v238 = (v733 + 32);
    v239 = v727;
    v721 = *(v733 + 32);
    v721(v727, v225, v732);
    sub_20CD625B4();
    sub_20CD62564();
    v723 = *(v236 + 8);
    v723(v217, v237);
    v240 = v724;
    sub_20CD62564();
    v241 = v725;
    v242 = v734;
    sub_20CD62A34();
    v734 = v242;
    if (v242)
    {
      (*(v235 + 8))(v664, v728);
      v243 = *(v729 + 1);
      v244 = v240;
      v245 = v726;
      v243(v244, v726);
      v243(v730, v245);
      return (v723)(v239, v237);
    }

    v263 = v728;
    v723 = v238;
    v264 = *(v729 + 1);
    v265 = v726;
    (v264)(v240, v726);
    sub_20CCF3C58();
    v266 = v730;
    if ((sub_20CD63214() & 1) == 0)
    {
      (*(v235 + 8))(v664, v263);
      (v264)(v241, v265);
      (v264)(v266, v265);
      v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
      v275 = v722;
      (*(*(v298 - 8) + 56))(v722, 1, 1, v298);
      v281 = v727;
      v280 = v733;
      goto LABEL_21;
    }

    v724 = v264;
    v267 = sub_20CD63224();
    (*(v235 + 8))(v664, v263);
    if (v267)
    {
      v268 = v265;
      v269 = v241;
      v270 = *(v729 + 4);
      v271 = v716;
      v270(v716, v266, v268);
      v272 = v717;
      v270((v271 + *(v717 + 48)), v269, v268);
      v273 = v718;
      sub_20CCF3CB0(v271, v718);
      v274 = *(v272 + 48);
      v275 = v722;
      v270(v722, v273, v268);
      v276 = v273 + v274;
      v277 = v724;
      (v724)(v276, v268);
      sub_20CCF3D20(v271, v273, &qword_27C810CF0, &unk_20CD64270);
      v278 = *(v272 + 48);
      v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
      v270(&v275[*(v279 + 36)], (v273 + v278), v268);
      v277(v273, v268);
      (*(*(v279 - 8) + 56))(v275, 0, 1, v279);
      v280 = v733;
      v281 = v727;
LABEL_21:
      v299 = v275;
      v300 = v731;
      sub_20CCF3D20(v299, v731, &qword_27C810CF8, &unk_20CD64540);
      v301 = *(type metadata accessor for SnapshotQueryRange() + 20);
      v302 = v281;
      v303 = v732;
      v721((v300 + v301), v302, v732);
      return (*(v280 + 56))(v300 + v301, 0, 1, v303);
    }

    __break(1u);
LABEL_106:
    v730 = *(v729 + 1);
    (v730)(v263, v726);
    v575 = v626;
    sub_20CD625B4();
    sub_20CD62564();
    (v241)(v575, v264);
    sub_20CD62A34();
    v734 = v267;
    if (v267)
    {
      (*(v719 + 8))(v664, v728);
      v576 = v726;
      v577 = v730;
      (v730)(v635, v726);
      v577(v644, v576);
      return (v241)(v643, v732);
    }

    (v730)(v635, v726);
    sub_20CCF3C58();
    v588 = sub_20CD63224();
    (*(v719 + 8))(v664, v728);
    result = (v241)(v643, v732);
    if (v588)
    {
      v589 = *(v729 + 4);
      v590 = v716;
      v591 = v726;
      v589(v716, v644, v726);
      v592 = v717;
      v589((v590 + *(v717 + 48)), v634, v591);
      v593 = v718;
      sub_20CCF3CB0(v590, v718);
      v594 = *(v592 + 48);
      v589(v624, v593, v591);
      v291 = v730;
      (v730)(v593 + v594, v591);
      sub_20CCF3D20(v590, v593, &qword_27C810CF0, &unk_20CD64270);
      v595 = *(v592 + 48);
      v596 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
      v597 = *(v596 + 36);
      v598 = &v656;
LABEL_120:
      v618 = *(v598 - 32);
      v589((v618 + v597), (v593 + v595), v591);
      v291(v593, v591);
      (*(*(v596 - 8) + 56))(v618, 0, 1, v596);
      v471 = v618;
      goto LABEL_67;
    }

    goto LABEL_131;
  }

  if (v227 == *MEMORY[0x277D0A2D0])
  {
    v246 = v719;
    v247 = v728;
    (*(v719 + 96))(v225, v728);
    v248 = v732;
    v249 = v733;
    v251 = (v733 + 32);
    v250 = *(v733 + 32);
    v252 = v723;
    v250(v723, v225, v732);
    v253 = v734;
    sub_20CD625F4();
    v734 = v253;
    if (v253)
    {
      (*(v246 + 8))(v664, v247);
      return (*(v249 + 8))(v252, v248);
    }

    v725 = v251;
    v727 = v250;
    v291 = v712;
    sub_20CD62564();
    v730 = *(v249 + 8);
    (v730)(v211, v248);
    v292 = v252;
    v293 = v710;
    sub_20CD62564();
    v294 = v711;
    v295 = v734;
    sub_20CD62A34();
    v734 = v295;
    if (v295)
    {
      (*(v719 + 8))(v664, v728);
      v296 = *(v729 + 1);
      v297 = v726;
      v296(v293, v726);
      v296(v291, v297);
      return (v730)(v292, v248);
    }

    v323 = v249;
    v324 = *(v729 + 1);
    v325 = v726;
    v324(v293, v726);
    sub_20CCF3C58();
    v326 = sub_20CD63214();
    v327 = v719;
    v328 = v294;
    v329 = v728;
    if ((v326 & 1) == 0)
    {
      v368 = v328;
      (*(v719 + 8))(v664, v728);
      v324(v368, v325);
      v324(v291, v325);
      v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
      v344 = v702;
      (*(*(v369 - 8) + 56))(v702, 1, 1, v369);
      v347 = v723;
      goto LABEL_38;
    }

    v730 = v324;
    v330 = v328;
    v331 = sub_20CD63224();
    v332 = *(v327 + 8);
    v241 = (v327 + 8);
    v332(v664, v329);
    if (v331)
    {
      v333 = v325;
      v334 = *(v729 + 4);
      v335 = v716;
      v334(v716, v291, v333);
      v336 = v717;
      v334((v335 + *(v717 + 48)), v330, v333);
      v337 = v334;
      v338 = v718;
      sub_20CCF3CB0(v335, v718);
      v339 = *(v336 + 48);
      v340 = v702;
      v337(v702, v338, v333);
      v341 = v338 + v339;
      v342 = v730;
      (v730)(v341, v333);
      v343 = v335;
      v344 = v340;
      sub_20CCF3D20(v343, v338, &qword_27C810CF0, &unk_20CD64270);
      v345 = *(v336 + 48);
      v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
      v337(&v344[*(v346 + 36)], v338 + v345, v333);
      v342(v338, v333);
      (*(*(v346 - 8) + 56))(v344, 0, 1, v346);
      v323 = v733;
      v347 = v723;
LABEL_38:
      v370 = v344;
      v371 = v731;
      sub_20CCF3D20(v370, v731, &qword_27C810CF8, &unk_20CD64540);
      v372 = *(type metadata accessor for SnapshotQueryRange() + 20);
      v373 = v347;
      v374 = v732;
      (v727)(v371 + v372, v373, v732);
      return (*(v323 + 56))(v371 + v372, 0, 1, v374);
    }

    __break(1u);
LABEL_118:
    v291(v627, v726);
    sub_20CCF3C58();
    v614 = sub_20CD63224();
    (*(v719 + 8))(v664, v728);
    result = (v241)(v641, v732);
    if (v614)
    {
      v589 = *(v729 + 4);
      v615 = v716;
      v591 = v726;
      v589(v716, v636, v726);
      v616 = v717;
      v589((v615 + *(v717 + 48)), v625, v591);
      v593 = v718;
      sub_20CCF3CB0(v615, v718);
      v617 = *(v616 + 48);
      v589(v620, v593, v591);
      v291(v593 + v617, v591);
      sub_20CCF3D20(v615, v593, &qword_27C810CF0, &unk_20CD64270);
      v595 = *(v616 + 48);
      v596 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
      v597 = *(v596 + 36);
      v598 = &v652;
      goto LABEL_120;
    }

    goto LABEL_133;
  }

  if (v227 == *MEMORY[0x277D0A2B8])
  {
    v254 = v719;
    v255 = v728;
    (*(v719 + 96))(v225, v728);
    v256 = v732;
    v257 = v733;
    v258 = (v733 + 32);
    v259 = *(v733 + 32);
    v260 = v720;
    v259(v720, v225, v732);
    v261 = v715;
    v262 = v734;
    sub_20CD625C4();
    v734 = v262;
    if (v262)
    {
      (*(v254 + 8))(v664, v255);
      return (*(v257 + 8))(v260, v256);
    }

    v727 = v258;
    v730 = v259;
    sub_20CD62564();
    v314 = v257;
    v315 = v260;
    v316 = *(v314 + 8);
    v316(v261, v256);
    v317 = v704;
    sub_20CD62564();
    v318 = v705;
    v319 = v734;
    sub_20CD62A34();
    v734 = v319;
    if (v319)
    {
      (*(v254 + 8))(v664, v728);
      v320 = *(v729 + 1);
      v321 = v317;
      v322 = v726;
      v320(v321, v726);
      v320(v713, v322);
      return (v316)(v315, v256);
    }

    v354 = *(v729 + 1);
    v355 = v726;
    v354(v317, v726);
    sub_20CCF3C58();
    v356 = v713;
    if ((sub_20CD63214() & 1) == 0)
    {
      (*(v254 + 8))(v664, v728);
      v354(v318, v355);
      v354(v356, v355);
      v398 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
      v365 = v695;
      (*(*(v398 - 8) + 56))(v695, 1, 1, v398);
      goto LABEL_45;
    }

    v357 = sub_20CD63224();
    result = (*(v254 + 8))(v664, v728);
    if (v357)
    {
      v358 = *(v729 + 4);
      v359 = v716;
      v358(v716, v356, v355);
      v360 = v717;
      v358((v359 + *(v717 + 48)), v318, v355);
      v361 = v358;
      v362 = v718;
      sub_20CCF3CB0(v359, v718);
      v729 = *(v360 + 48);
      v363 = v695;
      v361(v695, v362, v355);
      v354(&v729[v362], v355);
      v364 = v359;
      v365 = v363;
      sub_20CCF3D20(v364, v362, &qword_27C810CF0, &unk_20CD64270);
      v366 = *(v360 + 48);
      v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
      v361(&v365[*(v367 + 36)], v362 + v366, v355);
      v354(v362, v355);
      (*(*(v367 - 8) + 56))(v365, 0, 1, v367);
LABEL_45:
      v399 = v365;
      v400 = v731;
      sub_20CCF3D20(v399, v731, &qword_27C810CF8, &unk_20CD64540);
      v401 = *(type metadata accessor for SnapshotQueryRange() + 20);
      v402 = v732;
      (v730)(v400 + v401, v720, v732);
      return (*(v733 + 56))(v400 + v401, 0, 1, v402);
    }

    __break(1u);
    goto LABEL_122;
  }

  v282 = v719;
  if (v227 == *MEMORY[0x277D0A2F8])
  {
    v283 = v728;
    (*(v719 + 96))(v225, v728);
    v284 = v733;
    v285 = v709;
    v286 = v282;
    v287 = v732;
    (*(v733 + 32))(v709, v225, v732);
    v288 = v708;
    sub_20CD626C4();
    v289 = v707;
    v290 = v734;
    sub_20CD62574();
    if (v290)
    {
      (*(v286 + 8))(v664, v283);
      (*(v714 + 8))(v288, v721);
      return (*(v284 + 8))(v285, v287);
    }

    v727 = *(v714 + 8);
    (v727)(v288, v721);
    v350 = v697;
    sub_20CD625B4();
    v351 = *(v284 + 8);
    v351(v289, v287);
    sub_20CD62564();
    v730 = v351;
    v351(v350, v287);
    v352 = v699;
    sub_20CD626C4();
    v353 = v698;
    sub_20CD62574();
    v734 = 0;
    (v727)(v352, v721);
    v382 = v690;
    sub_20CD62564();
    v383 = v730;
    (v730)(v353, v287);
    sub_20CCF3C58();
    v384 = v706;
    v385 = v726;
    v386 = sub_20CD63224();
    (*(v719 + 8))(v664, v728);
    result = v383(v709, v287);
    if (v386)
    {
      v387 = v729;
      v388 = *(v729 + 4);
      v389 = v716;
      v388(v716, v384, v385);
      v390 = v717;
      v388((v389 + *(v717 + 48)), v382, v385);
      v391 = v718;
      sub_20CCF3CB0(v389, v718);
      v392 = *(v390 + 48);
      v388(v694, v391, v385);
      v730 = *(v387 + 1);
      (v730)(v391 + v392, v385);
      sub_20CCF3D20(v389, v391, &qword_27C810CF0, &unk_20CD64270);
      v393 = *(v390 + 48);
      v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
      v395 = v694;
      v388(&v694[*(v394 + 36)], (v391 + v393), v385);
      (v730)(v391, v385);
      (*(*(v394 - 8) + 56))(v395, 0, 1, v394);
      v396 = v731;
      sub_20CCF3D20(v395, v731, &qword_27C810CF8, &unk_20CD64540);
      Range = type metadata accessor for SnapshotQueryRange();
      return (*(v733 + 56))(v396 + *(Range + 20), 1, 1, v287);
    }

LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  if (v227 == *MEMORY[0x277D0A308])
  {
    v304 = v728;
    (*(v719 + 96))(v225, v728);
    v306 = v732;
    v305 = v733;
    v307 = v703;
    (*(v733 + 32))(v703, v225, v732);
    v308 = v701;
    sub_20CD626C4();
    v309 = v700;
    v310 = v734;
    sub_20CD625A4();
    if (!v310)
    {
      v311 = *(v714 + 8);
      v312 = v721;
      v311(v308, v721);
      v313 = v689;
      sub_20CD625F4();
      v734 = 0;
      v412 = *(v733 + 8);
      v412(v309, v306);
      sub_20CD62564();
      v730 = v412;
      v412(v313, v306);
      v413 = v682;
      sub_20CD626C4();
      v414 = v680;
      v415 = v703;
      v416 = v734;
      sub_20CD625A4();
      v734 = v416;
      if (v416)
      {
        (*(v719 + 8))(v664, v728);
        v311(v413, v312);
        (*(v729 + 1))(v688, v726);
        return (v730)(v415, v306);
      }

      v311(v413, v312);
      v438 = v690;
      sub_20CD62564();
      v439 = v730;
      (v730)(v414, v306);
      sub_20CCF3C58();
      v440 = v415;
      v441 = v688;
      v442 = v726;
      v443 = sub_20CD63224();
      (*(v719 + 8))(v664, v728);
      result = v439(v440, v306);
      if ((v443 & 1) == 0)
      {
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

      v444 = v729;
      v445 = *(v729 + 4);
      v446 = v716;
      v445(v716, v441, v442);
      v447 = v717;
      v445((v446 + *(v717 + 48)), v438, v442);
      v448 = v718;
      sub_20CCF3CB0(v446, v718);
      v449 = *(v447 + 48);
      v445(v677, v448, v442);
      v730 = *(v444 + 1);
      (v730)(v448 + v449, v442);
      sub_20CCF3D20(v446, v448, &qword_27C810CF0, &unk_20CD64270);
      v450 = *(v447 + 48);
      v451 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
      v452 = *(v451 + 36);
      v453 = &v709;
LABEL_73:
      v491 = *(v453 - 32);
      v445((v491 + v452), (v448 + v450), v442);
      (v730)(v448, v442);
      (*(*(v451 - 8) + 56))(v491, 0, 1, v451);
      v492 = v491;
      goto LABEL_74;
    }

    goto LABEL_32;
  }

  if (v227 == *MEMORY[0x277D0A300])
  {
    v304 = v728;
    (*(v719 + 96))(v225, v728);
    v306 = v732;
    v305 = v733;
    v307 = v696;
    (*(v733 + 32))(v696, v225, v732);
    v308 = v693;
    sub_20CD626C4();
    v348 = v692;
    v349 = v734;
    sub_20CD62584();
    if (!v349)
    {
      v409 = *(v714 + 8);
      v410 = v721;
      v409(v308, v721);
      v411 = v684;
      sub_20CD625C4();
      v734 = 0;
      v427 = *(v733 + 8);
      v427(v348, v306);
      sub_20CD62564();
      v730 = v427;
      v427(v411, v306);
      v428 = v673;
      sub_20CD626C4();
      v429 = v672;
      v415 = v696;
      v430 = v734;
      sub_20CD62584();
      v734 = v430;
      if (v430)
      {
        (*(v719 + 8))(v664, v728);
        v409(v428, v410);
        (*(v729 + 1))(v681, v726);
        return (v730)(v415, v306);
      }

      v409(v428, v410);
      v482 = v690;
      sub_20CD62564();
      v483 = v730;
      (v730)(v429, v306);
      sub_20CCF3C58();
      v484 = v415;
      v485 = v681;
      v442 = v726;
      v486 = sub_20CD63224();
      (*(v719 + 8))(v664, v728);
      result = v483(v484, v306);
      if ((v486 & 1) == 0)
      {
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
        goto LABEL_130;
      }

      v487 = v729;
      v445 = *(v729 + 4);
      v488 = v716;
      v445(v716, v485, v442);
      v489 = v717;
      v445((v488 + *(v717 + 48)), v482, v442);
      v448 = v718;
      sub_20CCF3CB0(v488, v718);
      v490 = *(v489 + 48);
      v445(v667, v448, v442);
      v730 = *(v487 + 1);
      (v730)(v448 + v490, v442);
      sub_20CCF3D20(v488, v448, &qword_27C810CF0, &unk_20CD64270);
      v450 = *(v489 + 48);
      v451 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
      v452 = *(v451 + 36);
      v453 = &v699;
      goto LABEL_73;
    }

LABEL_32:
    (*(v282 + 8))(v664, v304);
    (*(v714 + 8))(v308, v721);
    return (*(v305 + 8))(v307, v306);
  }

  if (v227 == *MEMORY[0x277D0A2D8])
  {
    v375 = v728;
    (*(v719 + 96))(v225, v728);
    v377 = v732;
    v376 = v733;
    v378 = v691;
    (*(v733 + 32))(v691, v225, v732);
    v379 = v687;
    sub_20CD626C4();
    v380 = v686;
    v381 = v734;
    sub_20CD62574();
    if (v381)
    {
      (*(v282 + 8))(v664, v375);
      (*(v714 + 8))(v379, v721);
      return (*(v376 + 8))(v378, v377);
    }

    v419 = v380;
    v420 = v721;
    v730 = *(v714 + 8);
    (v730)(v379, v721);
    v421 = v674;
    sub_20CD625B4();
    v422 = *(v376 + 8);
    v422(v419, v377);
    sub_20CD62564();
    v423 = v377;
    v424 = v422;
    v422(v421, v423);
    v425 = v676;
    sub_20CD626C4();
    v426 = v675;
    sub_20CD625D4();
    v734 = 0;
    (v730)(v425, v420);
    v454 = v690;
    sub_20CD62564();
    v455 = v426;
    v456 = v424;
    v457 = v732;
    v456(v455, v732);
    sub_20CCF3C58();
    v458 = v282;
    v459 = v726;
    v460 = sub_20CD63224();
    (*(v458 + 8))(v664, v728);
    result = (v456)(v691, v457);
    if ((v460 & 1) == 0)
    {
      goto LABEL_124;
    }

    v461 = v729;
    v462 = *(v729 + 4);
    v463 = v716;
    v462(v716, v685, v459);
    v464 = v717;
    v462((v463 + *(v717 + 48)), v454, v459);
    v465 = v718;
    sub_20CCF3CB0(v463, v718);
    v466 = *(v464 + 48);
    v462(v671, v465, v459);
    v467 = *(v461 + 1);
    v467(v465 + v466, v459);
    sub_20CCF3D20(v463, v465, &qword_27C810CF0, &unk_20CD64270);
    v468 = *(v464 + 48);
    v469 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
    v470 = v671;
    v462(&v671[*(v469 + 36)], (v465 + v468), v459);
    v467(v465, v459);
    goto LABEL_66;
  }

  if (v227 == *MEMORY[0x277D0A2E8])
  {
    v304 = v728;
    (*(v719 + 96))(v225, v728);
    v306 = v732;
    v305 = v733;
    v307 = v683;
    (*(v733 + 32))(v683, v225, v732);
    v308 = v679;
    sub_20CD626C4();
    v403 = v678;
    v404 = v734;
    sub_20CD625A4();
    if (!v404)
    {
      v405 = *(v714 + 8);
      v406 = v308;
      v407 = v721;
      v405(v406, v721);
      v408 = v666;
      sub_20CD625F4();
      v734 = 0;
      v727 = v405;
      v498 = (v733 + 8);
      v497 = *(v733 + 8);
      v497(v403, v306);
      sub_20CD62564();
      v730 = v498;
      v497(v408, v306);
      v499 = v497;
      v500 = v656;
      sub_20CD626C4();
      v501 = v655;
      v502 = v683;
      v503 = v734;
      sub_20CD62604();
      v734 = v503;
      if (v503)
      {
        (*(v282 + 8))(v664, v728);
        (v727)(v500, v407);
        (*(v729 + 1))(v665, v726);
        return v499(v502, v306);
      }

      (v727)(v500, v407);
      v524 = v690;
      sub_20CD62564();
      v499(v501, v306);
      sub_20CCF3C58();
      v525 = v282;
      v526 = v726;
      v527 = v502;
      v528 = sub_20CD63224();
      (*(v525 + 8))(v664, v728);
      result = v499(v527, v306);
      if ((v528 & 1) == 0)
      {
        goto LABEL_126;
      }

      v529 = v729;
      v530 = *(v729 + 4);
      v531 = v716;
      v530(v716, v665, v526);
      v532 = v717;
      v530((v531 + *(v717 + 48)), v524, v526);
      v533 = v718;
      sub_20CCF3CB0(v531, v718);
      v534 = *(v532 + 48);
      v530(v653, v533, v526);
      v730 = *(v529 + 1);
      (v730)(v533 + v534, v526);
      sub_20CCF3D20(v531, v533, &qword_27C810CF0, &unk_20CD64270);
      v535 = *(v532 + 48);
      v536 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
      v537 = v653;
      v530(&v653[*(v536 + 36)], (v533 + v535), v526);
      (v730)(v533, v526);
      (*(*(v536 - 8) + 56))(v537, 0, 1, v536);
      v492 = v537;
LABEL_74:
      v493 = v731;
      sub_20CCF3D20(v492, v731, &qword_27C810CF8, &unk_20CD64540);
      v494 = type metadata accessor for SnapshotQueryRange();
      return (*(v733 + 56))(v493 + *(v494 + 20), 1, 1, v306);
    }

    goto LABEL_32;
  }

  if (v227 == *MEMORY[0x277D0A2E0])
  {
    v304 = v728;
    (*(v719 + 96))(v225, v728);
    v306 = v732;
    v305 = v733;
    v307 = v669;
    (*(v733 + 32))(v669, v225, v732);
    v308 = v670;
    sub_20CD626C4();
    v417 = v668;
    v418 = v734;
    sub_20CD62584();
    if (v418)
    {
      goto LABEL_32;
    }

    v495 = *(v714 + 8);
    v495(v308, v721);
    v496 = v660;
    sub_20CD625C4();
    v734 = 0;
    v730 = v495;
    v512 = *(v733 + 8);
    v512(v417, v306);
    sub_20CD62564();
    v513 = v512;
    v512(v496, v306);
    v514 = v307;
    v515 = v649;
    sub_20CD626C4();
    v516 = v647;
    v517 = v734;
    sub_20CD625E4();
    if (v517)
    {
      (*(v282 + 8))(v664, v728);
      (v730)(v515, v721);
      (*(v729 + 1))(v658, v726);
      return (v512)(v514, v306);
    }

    v734 = 0;
    (v730)(v515, v721);
    sub_20CD62564();
    v512(v516, v306);
    sub_20CCF3C58();
    v555 = sub_20CD63224();
    (*(v282 + 8))(v664, v728);
    result = v513(v514, v306);
    if ((v555 & 1) == 0)
    {
      goto LABEL_128;
    }

    v556 = v729;
    v557 = *(v729 + 4);
    v558 = v716;
    v559 = v726;
    v557(v716, v658, v726);
    v560 = v717;
    v557((v558 + *(v717 + 48)), v690, v559);
    v561 = v718;
    sub_20CCF3CB0(v558, v718);
    v562 = *(v560 + 48);
    v470 = v637;
    v557(v637, v561, v559);
    v730 = *(v556 + 1);
    (v730)(v561 + v562, v559);
    sub_20CCF3D20(v558, v561, &qword_27C810CF0, &unk_20CD64270);
    v563 = *(v560 + 48);
    v469 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
    v557(&v470[*(v469 + 36)], (v561 + v563), v559);
    (v730)(v561, v559);
LABEL_66:
    (*(*(v469 - 8) + 56))(v470, 0, 1, v469);
    v471 = v470;
LABEL_67:
    v472 = v731;
    sub_20CCF3D20(v471, v731, &qword_27C810CF8, &unk_20CD64540);
    v473 = type metadata accessor for SnapshotQueryRange();
    return (*(v733 + 56))(v472 + *(v473 + 20), 1, 1, v732);
  }

  if (v227 == *MEMORY[0x277D0A2C8])
  {
    v431 = v728;
    (*(v719 + 96))(v225, v728);
    v433 = v732;
    v432 = v733;
    v434 = v661;
    (*(v733 + 32))(v661, v225, v732);
    v435 = v662;
    sub_20CD62564();
    v436 = v663;
    v437 = v734;
    sub_20CD62A34();
    if (v437)
    {
      (*(v282 + 8))(v664, v431);
      (*(v729 + 1))(v435, v726);
      return (*(v432 + 8))(v434, v433);
    }

    v509 = *(v729 + 1);
    v510 = v726;
    v509(v435, v726);
    v511 = v651;
    sub_20CD62A74();
    v734 = 0;
    v730 = v509;
    sub_20CCF3C58();
    v542 = sub_20CD63224();
    (*(v719 + 8))(v664, v728);
    result = (*(v432 + 8))(v434, v732);
    if ((v542 & 1) == 0)
    {
      goto LABEL_127;
    }

    v543 = v511;
    v544 = *(v729 + 4);
    v545 = v716;
    v544(v716, v543, v510);
    v546 = v717;
    v544((v545 + *(v717 + 48)), v436, v510);
    v547 = v718;
    sub_20CCF3CB0(v545, v718);
    v548 = *(v546 + 48);
    v544(v648, v547, v510);
    v549 = v730;
    (v730)(v547 + v548, v510);
    sub_20CCF3D20(v545, v547, &qword_27C810CF0, &unk_20CD64270);
    v550 = *(v546 + 48);
    v469 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
    v470 = v648;
    v544(&v648[*(v469 + 36)], (v547 + v550), v510);
    v549(v547, v510);
    goto LABEL_66;
  }

  v474 = v664;
  if (v227 == *MEMORY[0x277D0A2A8])
  {
    v475 = v728;
    (*(v719 + 96))(v225, v728);
    v476 = v732;
    v477 = v733;
    v478 = v659;
    (*(v733 + 32))(v659, v225, v732);
    v479 = v654;
    sub_20CD62564();
    v480 = v657;
    v481 = v734;
    sub_20CD62A34();
    v734 = v481;
    if (v481)
    {
      (*(v282 + 8))(v474, v475);
      (*(v729 + 1))(v479, v726);
      return (*(v477 + 8))(v478, v476);
    }

    v538 = *(v729 + 1);
    v539 = v726;
    v538(v479, v726);
    v540 = v734;
    sub_20CD62A74();
    v541 = (v477 + 8);
    if (v540)
    {
      (*(v719 + 8))(v664, v728);
      v538(v480, v539);
      return (*v541)(v659, v732);
    }

    v730 = v538;
    v734 = 0;
    sub_20CCF3C58();
    v564 = sub_20CD63224();
    (*(v719 + 8))(v664, v728);
    result = (*v541)(v659, v732);
    if ((v564 & 1) == 0)
    {
      goto LABEL_129;
    }

    v565 = *(v729 + 4);
    v566 = v716;
    v567 = v726;
    v565(v716, v646, v726);
    v568 = v717;
    v565((v566 + *(v717 + 48)), v657, v567);
    v569 = v718;
    sub_20CCF3CB0(v566, v718);
    v570 = *(v568 + 48);
    v571 = &v664;
    goto LABEL_110;
  }

  if (v227 != *MEMORY[0x277D0A2C0])
  {
    if (v227 == *MEMORY[0x277D0A298])
    {
      (*(v719 + 96))(v225, v728);
      v264 = v732;
      v518 = v733;
      v519 = v643;
      (*(v733 + 32))(v643, v225, v732);
      v520 = v638;
      sub_20CD625B4();
      v263 = v639;
      sub_20CD62564();
      v241 = *(v518 + 8);
      (v241)(v520, v264);
      v521 = v734;
      sub_20CD62A74();
      v267 = v521;
      if (!v521)
      {
        goto LABEL_106;
      }

      (*(v719 + 8))(v664, v728);
      (*(v729 + 1))(v263, v726);
      v522 = v519;
      v523 = v264;
    }

    else
    {
      if (v227 != *MEMORY[0x277D0A2A0])
      {
        if (v227 != *MEMORY[0x277D0A2F0])
        {
          v580 = v664;
          v581 = v728;
          v226(v223, v664, v728);
          v582 = sub_20CD63264();
          v584 = v583;
          sub_20CCF3C04();
          swift_allocError();
          *v585 = v582;
          v585[1] = v584;
          swift_willThrow();
          v586 = *(v719 + 8);
          v586(v580, v581);
          return (v586)(v225, v581);
        }

        (*(v719 + 96))(v225, v728);
        v730 = *(v733 + 32);
        (v730)(v630, v225, v732);
        sub_20CD62A54();
        sub_20CD62564();
        v572 = v734;
        sub_20CD62A34();
        v734 = v572;
        if (v572)
        {
          (*(v719 + 8))(v664, v728);
          v573 = *(v729 + 1);
          v574 = v726;
          v573(v631, v726);
          v573(v633, v574);
          return (*(v733 + 8))(v630, v732);
        }

        v599 = *(v729 + 1);
        v727 = v729 + 8;
        v725 = v599;
        (v599)(v631, v726);
        sub_20CCF3C58();
        v600 = sub_20CD63224();
        result = (*(v719 + 8))(v664, v728);
        if (v600)
        {
          v601 = *(v729 + 4);
          v602 = v716;
          v603 = v726;
          v601(v716, v633, v726);
          v604 = v717;
          v601((v602 + *(v717 + 48)), v628, v603);
          v605 = v718;
          sub_20CCF3CB0(v602, v718);
          v606 = *(v604 + 48);
          v601(v622, v605, v603);
          v607 = v725;
          (v725)(v605 + v606, v603);
          sub_20CCF3D20(v602, v605, &qword_27C810CF0, &unk_20CD64270);
          v608 = *(v604 + 48);
          v609 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
          v610 = v622;
          v601(&v622[*(v609 + 36)], (v605 + v608), v603);
          v607(v605, v603);
          (*(*(v609 - 8) + 56))(v610, 0, 1, v609);
          v611 = v731;
          sub_20CCF3D20(v610, v731, &qword_27C810CF8, &unk_20CD64540);
          v612 = *(type metadata accessor for SnapshotQueryRange() + 20);
          v613 = v732;
          (v730)(v611 + v612, v630, v732);
          return (*(v733 + 56))(v611 + v612, 0, 1, v613);
        }

        goto LABEL_132;
      }

      (*(v719 + 96))(v225, v728);
      v551 = v732;
      v552 = v733;
      (*(v733 + 32))(v641, v225, v732);
      v553 = v629;
      sub_20CD625B4();
      sub_20CD62564();
      v241 = *(v552 + 8);
      (v241)(v553, v551);
      v554 = v734;
      sub_20CD62A74();
      if (!v554)
      {
        v291 = *(v729 + 1);
        v291(v640, v726);
        v587 = v621;
        sub_20CD625B4();
        sub_20CD62564();
        (v241)(v587, v732);
        sub_20CD62A34();
        v734 = 0;
        goto LABEL_118;
      }

      (*(v719 + 8))(v664, v728);
      (*(v729 + 1))(v640, v726);
      v522 = v641;
      v523 = v732;
    }

    return (v241)(v522, v523);
  }

  (*(v719 + 96))(v225, v728);
  v504 = v732;
  v505 = v733;
  v506 = v650;
  (*(v733 + 32))(v650, v225, v732);
  v507 = v645;
  sub_20CD62564();
  v508 = v734;
  sub_20CD62A34();
  if (v508)
  {
    (*(v282 + 8))(v664, v728);
    (*(v729 + 1))(v507, v726);
    return (*(v505 + 8))(v506, v504);
  }

  v730 = *(v729 + 1);
  (v730)(v507, v726);
  sub_20CD62A74();
  v734 = 0;
  sub_20CCF3C58();
  v578 = sub_20CD63224();
  (*(v719 + 8))(v664, v728);
  result = (*(v505 + 8))(v650, v732);
  if (v578)
  {
    v565 = *(v729 + 4);
    v566 = v716;
    v567 = v726;
    v565(v716, v642, v726);
    v568 = v717;
    v565((v566 + *(v717 + 48)), v652, v567);
    v569 = v718;
    sub_20CCF3CB0(v566, v718);
    v570 = *(v568 + 48);
    v571 = &v655;
LABEL_110:
    v470 = *(v571 - 32);
    v565(v470, v569, v567);
    (v730)(v569 + v570, v567);
    sub_20CCF3D20(v566, v569, &qword_27C810CF0, &unk_20CD64270);
    v579 = *(v568 + 48);
    v469 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
    v565(&v470[*(v469 + 36)], (v569 + v579), v567);
    (v730)(v569, v567);
    goto LABEL_66;
  }

LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}

unint64_t sub_20CCF3C04()
{
  result = qword_27C810D00;
  if (!qword_27C810D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C810D00);
  }

  return result;
}

unint64_t sub_20CCF3C58()
{
  result = qword_28110F778;
  if (!qword_28110F778)
  {
    sub_20CD62AB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110F778);
  }

  return result;
}

uint64_t sub_20CCF3CB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF0, &unk_20CD64270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CCF3D20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for SnapshotQueryRange()
{
  result = qword_27C810D10;
  if (!qword_27C810D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_20CCF3DE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_20CCF3E28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_20CCF3EA4()
{
  sub_20CCF3F28();
  if (v0 <= 0x3F)
  {
    sub_20CCF3FD4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20CCF3F28()
{
  if (!qword_27C810D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C810D08, &qword_20CD64280);
    v0 = sub_20CD63464();
    if (!v1)
    {
      atomic_store(v0, &qword_27C810D20);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_20CCF3FD4()
{
  if (!qword_28110F7E0)
  {
    sub_20CD62654();
    v0 = sub_20CD63464();
    if (!v1)
    {
      atomic_store(v0, &qword_28110F7E0);
    }
  }
}

uint64_t sub_20CCF402C()
{
  v1 = OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting18ThrottledTaskQueue_priority;
  v2 = sub_20CD63374();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting18ThrottledTaskQueue_queue);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for ThrottledTaskQueue()
{
  result = qword_27C810D40;
  if (!qword_27C810D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CCF4108()
{
  result = sub_20CD63374();
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

uint64_t sub_20CCF41CC(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D68, &qword_20CD643E0);
  v3[16] = v4;
  v5 = *(v4 - 8);
  v3[17] = v5;
  v6 = *(v5 + 64) + 15;
  v3[18] = swift_task_alloc();
  v7 = sub_20CD63144();
  v3[19] = v7;
  v8 = *(v7 - 8);
  v3[20] = v8;
  v9 = *(v8 + 64) + 15;
  v3[21] = swift_task_alloc();
  v10 = sub_20CD62E94();
  v3[22] = v10;
  v11 = *(v10 - 8);
  v3[23] = v11;
  v12 = *(v11 + 64) + 15;
  v3[24] = swift_task_alloc();
  v13 = *(*(sub_20CD62CE4() - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  Range = type metadata accessor for SnapshotQueryRange();
  v3[26] = Range;
  v15 = *(*(Range - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CC8, &qword_20CD64160) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v17 = sub_20CD62EA4();
  v3[29] = v17;
  v18 = *(v17 - 8);
  v3[30] = v18;
  v19 = *(v18 + 64) + 15;
  v3[31] = swift_task_alloc();
  v20 = sub_20CD626F4();
  v3[32] = v20;
  v21 = *(v20 - 8);
  v3[33] = v21;
  v22 = *(v21 + 64) + 15;
  v3[34] = swift_task_alloc();
  v23 = sub_20CD62654();
  v3[35] = v23;
  v24 = *(v23 - 8);
  v3[36] = v24;
  v25 = *(v24 + 64) + 15;
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v26 = sub_20CD63114();
  v3[43] = v26;
  v27 = *(v26 - 8);
  v3[44] = v27;
  v28 = *(v27 + 64) + 15;
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v29 = sub_20CD63134();
  v3[48] = v29;
  v30 = *(v29 - 8);
  v3[49] = v30;
  v31 = *(v30 + 64) + 15;
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCF4620, 0, 0);
}

uint64_t sub_20CCF4620()
{
  v2 = *(v0 + 51);
  v1 = *(v0 + 52);
  v3 = *(v0 + 48);
  v4 = *(v0 + 49);
  v5 = *(v0 + 47);
  sub_20CD63014();
  sub_20CD63014();
  sub_20CD63124();
  sub_20CD630F4();
  v6 = *(v4 + 8);
  *(v0 + 53) = v6;
  *(v0 + 54) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  v7 = sub_20CD63124();
  v8 = sub_20CD63414();
  if (sub_20CD63444())
  {
    v9 = *(v0 + 47);
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_20CD63104();
    _os_signpost_emit_with_name_impl(&dword_20CCEA000, v7, v8, v11, "retrieveSnapshots", "", v10, 2u);
    MEMORY[0x20F3115B0](v10, -1, -1);
  }

  v12 = *(v0 + 47);
  v88 = *(v0 + 48);
  v90 = *(v0 + 52);
  v13 = *(v0 + 46);
  v14 = *(v0 + 43);
  v15 = *(v0 + 44);
  v86 = *(v0 + 42);
  v93 = *(v0 + 34);
  v95 = v0;
  v16 = *(v0 + 33);
  v91 = *(v0 + 32);
  v17 = *(v0 + 15);

  (*(v15 + 16))(v13, v12, v14);
  v18 = sub_20CD63174();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *(v0 + 55) = sub_20CD63164();
  v21 = *(v15 + 8);
  *(v0 + 56) = v21;
  *(v0 + 57) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v12, v14);
  v6(v90, v88);
  sub_20CD62644();
  (*(v16 + 16))(v93, v17, v91);
  v22 = type metadata accessor for SnapshotRetriver(0);
  sub_20CCEE234(v17 + *(v22 + 20), (v0 + 16));
  sub_20CCEE234(v17 + *(v22 + 24), (v0 + 56));
  v23 = type metadata accessor for SnapshotRetriverRepresentableProvider();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  *(v0 + 58) = v26;
  swift_defaultActor_initialize();
  *(v26 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_cache) = MEMORY[0x277D84F98];
  (*(v16 + 32))(v26 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_calendar, v93, v91);
  sub_20CCEE234((v0 + 16), v26 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_healthStore);
  sub_20CCEE234((v0 + 56), v26 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_seymourStore);
  sub_20CCEE234((v0 + 16), v26 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_ringsContainerQuery);
  sub_20CCEC32C((v0 + 56), v26 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_fitnessPlusContainerQuery);
  sub_20CCEC32C(v0 + 1, v26 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_workoutContainerQuery);
  if (qword_28110F1A0 != -1)
  {
LABEL_36:
    swift_once();
  }

  v27 = sub_20CD631B4();
  *(v0 + 59) = __swift_project_value_buffer(v27, qword_28110F878);
  v28 = sub_20CD63194();
  v29 = sub_20CD633D4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_20CCEA000, v28, v29, "[SnapshotRetriever] Spawning queries to fetch representables for today", v30, 2u);
    MEMORY[0x20F3115B0](v30, -1, -1);
  }

  v31 = *(v0 + 36);
  v32 = *(v95 + 30);
  v87 = *(v95 + 26);
  v33 = *(v95 + 16);
  v34 = *(v95 + 14);

  v35 = sub_20CD62CD4();
  v36 = v35 + 56;
  v37 = -1;
  v38 = -1 << *(v35 + 32);
  if (-v38 < 64)
  {
    v37 = ~(-1 << -v38);
  }

  v39 = v37 & *(v35 + 56);
  v40 = (63 - v38) >> 6;
  v89 = v32;
  v41 = (v32 + 8);
  v42 = v95;
  v92 = v41;
  v94 = v35;
  v85 = (v31 + 48);
  v81 = v31;
  v82 = (v31 + 32);

  v43 = 0;
  v83 = MEMORY[0x277D84F90];
  v84 = v36;
LABEL_9:
  v44 = v43;
  if (!v39)
  {
    goto LABEL_11;
  }

  do
  {
    v43 = v44;
LABEL_14:
    v45 = *(v42 + 31);
    v46 = *(v42 + 29);
    v47 = *(v42 + 27);
    v0 = v42;
    v48 = *(v42 + 25);
    (*(v89 + 16))(v45, *(v94 + 48) + *(v89 + 72) * (__clz(__rbit64(v39)) | (v43 << 6)), v46);
    sub_20CD1DF2C(&qword_28110F688, MEMORY[0x277D0A458]);
    sub_20CD62B14();
    sub_20CCEEFC0(v48, v47);
    v39 &= v39 - 1;
    v49 = *(v0 + 35);
    v50 = *(v0 + 28);
    v51 = *(v0 + 27);
    (*v92)(*(v0 + 31), *(v0 + 29));
    sub_20CD1D9A8(v51 + *(v87 + 20), v50, &qword_27C810CC8, &qword_20CD64160);
    sub_20CD1C87C(v51, type metadata accessor for SnapshotQueryRange);
    if ((*v85)(v50, 1, v49) != 1)
    {
      v52 = *(v0 + 41);
      v80 = *(v0 + 40);
      v53 = *(v0 + 35);
      v54 = *(v0 + 28);
      v0 = *v82;
      (*v82)(v52, v54, v53);
      (v0)(v80, v52, v53);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = sub_20CD527F0(0, v83[2] + 1, 1, v83);
      }

      v56 = v83[2];
      v55 = v83[3];
      v42 = v95;
      if (v56 >= v55 >> 1)
      {
        v83 = sub_20CD527F0(v55 > 1, v56 + 1, 1, v83);
      }

      v57 = *(v95 + 40);
      v58 = *(v95 + 35);
      v83[2] = v56 + 1;
      (v0)(v83 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v56, v57, v58);
      v36 = v84;
      goto LABEL_9;
    }

    sub_20CD1DA10(*(v0 + 28), &qword_27C810CC8, &qword_20CD64160);
    v44 = v43;
    v42 = v0;
    v36 = v84;
  }

  while (v39);
  while (1)
  {
LABEL_11:
    v43 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v43 >= v40)
    {
      break;
    }

    v39 = *(v36 + 8 * v43);
    ++v44;
    if (v39)
    {
      goto LABEL_14;
    }
  }

  v59 = sub_20CD485B8(v83);
  *(v42 + 60) = v59;

  v60 = *(v59 + 32);
  v42[552] = v60;
  v61 = -1;
  v62 = -1 << v60;
  if (-(-1 << v60) < 64)
  {
    v61 = ~(-1 << -(-1 << v60));
  }

  v63 = v61 & *(v59 + 56);
  if (v63)
  {
    v64 = 0;
    v65 = *(v42 + 60);
LABEL_29:
    *(v42 + 63) = v63;
    *(v42 + 64) = v64;
    v68 = *(v42 + 24);
    (*(*(v42 + 36) + 16))(*(v42 + 39), *(v65 + 48) + *(*(v42 + 36) + 72) * (__clz(__rbit64(v63)) | (v64 << 6)), *(v42 + 35));
    sub_20CD62BC4();
    sub_20CD1DF2C(&qword_28110F720, MEMORY[0x277D0A1E8]);
    sub_20CD62C94();
    v69 = swift_task_alloc();
    *(v42 + 65) = v69;
    *v69 = v42;
    v69[1] = sub_20CCF5790;
    v70 = *(v42 + 58);
    v71 = *(v42 + 24);
    v72 = *(v42 + 39);

    return sub_20CD57A94(v72, v71);
  }

  else
  {
    v66 = 0;
    v67 = ((63 - v62) >> 6) - 1;
    v65 = *(v42 + 60);
    while (v67 != v66)
    {
      v64 = v66 + 1;
      v63 = *(v65 + 8 * v66++ + 64);
      if (v63)
      {
        goto LABEL_29;
      }
    }

    v74 = *(v42 + 58);
    v96 = *(v42 + 7);

    v75 = swift_task_alloc();
    *(v42 + 61) = v75;
    *(v75 + 16) = v96;
    *(v75 + 32) = v74;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E58, &qword_20CD64680);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E60, &qword_20CD64688);
    v78 = *(MEMORY[0x277D858E8] + 4);
    v79 = swift_task_alloc();
    *(v42 + 62) = v79;
    *v79 = v42;
    v79[1] = sub_20CCF515C;

    return MEMORY[0x282200600](v42 + 96, v76, v77, 0, 0, &unk_20CD64678, v75, v76);
  }
}

uint64_t sub_20CCF515C()
{
  v1 = *(*v0 + 496);
  v2 = *(*v0 + 488);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20CCF5274, 0, 0);
}

uint64_t sub_20CCF5274()
{
  v1 = v0[55];
  v2 = v0[50];
  v3 = v0[45];
  v78 = v0[12];
  sub_20CD63014();
  v4 = sub_20CD63124();
  sub_20CD63154();
  v5 = sub_20CD63404();
  if (sub_20CD63444())
  {
    v6 = v0[55];
    v7 = v0[20];
    v8 = v0[21];
    v9 = v0[19];

    sub_20CD63184();

    if ((*(v7 + 88))(v8, v9) == *MEMORY[0x277D85B00])
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[20] + 8))(v0[21], v0[19]);
      v10 = "";
    }

    v11 = v0[45];
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_20CD63104();
    _os_signpost_emit_with_name_impl(&dword_20CCEA000, v4, v5, v13, "retrieveSnapshots", v10, v12, 2u);
    MEMORY[0x20F3115B0](v12, -1, -1);
  }

  v75 = v0[59];
  v60 = v0[56];
  v62 = v0[57];
  v64 = v0[53];
  v66 = v0[54];
  v14 = v0[50];
  v15 = v0[48];
  v16 = v0[45];
  v17 = v4;
  v18 = v0[43];
  v70 = v0[38];
  v72 = v0[42];
  v19 = v0[36];
  v68 = v0[35];
  v21 = v0[17];
  v20 = v0[18];
  v22 = v0[16];
  v23 = v0[14];

  v60(v16, v18);
  v64(v14, v15);
  (*(v21 + 16))(v20, v23, v22);
  (*(v19 + 16))(v70, v72, v68);
  v24 = sub_20CD63194();
  v25 = sub_20CD633D4();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v0[38];
  if (v26)
  {
    v29 = v0[36];
    v28 = v0[37];
    v73 = v0[35];
    v76 = v25;
    v31 = v0[17];
    v30 = v0[18];
    v32 = v0[16];
    v33 = swift_slowAlloc();
    *v33 = 134218240;
    v34 = v27;
    v35 = *(sub_20CD62CD4() + 16);

    (*(v31 + 8))(v30, v32);
    *(v33 + 4) = v35;
    *(v33 + 12) = 2048;
    sub_20CD62644();
    sub_20CD62544();
    v37 = v36;
    v38 = *(v29 + 8);
    v38(v28, v73);
    v38(v34, v73);
    *(v33 + 14) = v37;
    _os_log_impl(&dword_20CCEA000, v24, v76, "[SnapshotRetriever] All %ld queries executed. Total duration: %fs", v33, 0x16u);
    MEMORY[0x20F3115B0](v33, -1, -1);
  }

  else
  {
    v39 = v0[35];
    v40 = v0[36];
    (*(v0[17] + 8))(v0[18], v0[16]);

    v38 = *(v40 + 8);
    v38(v27, v39);
  }

  v41 = v0[58];
  v42 = v0[55];
  v43 = v0[52];
  v50 = v0[51];
  v51 = v0[50];
  v52 = v0[47];
  v53 = v0[46];
  v44 = v0[42];
  v54 = v0[45];
  v55 = v0[41];
  v56 = v0[40];
  v57 = v0[39];
  v58 = v0[38];
  v59 = v0[37];
  v45 = v0[35];
  v61 = v0[34];
  v63 = v0[31];
  v65 = v0[28];
  v67 = v0[27];
  v69 = v0[25];
  v71 = v0[24];
  v74 = v0[21];
  v77 = v0[18];
  v46 = v0[36] + 8;
  v47 = v0[13];
  sub_20CD62BC4();
  sub_20CD1DF2C(&qword_28110F720, MEMORY[0x277D0A1E8]);
  sub_20CD62D34();

  v38(v44, v45);

  v48 = v0[1];

  return v48();
}

uint64_t sub_20CCF5790()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v4 = *v1;
  v2[66] = v0;

  v5 = v2[39];
  v6 = v2[36];
  v7 = v2[35];
  v8 = v2[24];
  v9 = v2[23];
  v10 = v2[22];
  if (v0)
  {
    (*(v9 + 8))(v2[24], v2[22]);
    v11 = *(v6 + 8);
    v2[67] = v11;
    v2[68] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v5, v7);
    v12 = sub_20CD1DFA0;
  }

  else
  {

    (*(v9 + 8))(v8, v10);
    (*(v6 + 8))(v5, v7);
    v12 = sub_20CCF59B8;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_20CCF59B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 512);
  v10 = (*(v8 + 504) - 1) & *(v8 + 504);
  if (v10)
  {
    v11 = *(v8 + 480);
LABEL_7:
    *(v8 + 504) = v10;
    *(v8 + 512) = v9;
    v13 = *(v8 + 192);
    (*(*(v8 + 288) + 16))(*(v8 + 312), *(v11 + 48) + *(*(v8 + 288) + 72) * (__clz(__rbit64(v10)) | (v9 << 6)), *(v8 + 280));
    sub_20CD62BC4();
    sub_20CD1DF2C(&qword_28110F720, MEMORY[0x277D0A1E8]);
    sub_20CD62C94();
    v14 = swift_task_alloc();
    *(v8 + 520) = v14;
    *v14 = v8;
    v14[1] = sub_20CCF5790;
    v15 = *(v8 + 464);
    v16 = *(v8 + 312);
    v17 = *(v8 + 192);

    return sub_20CD57A94(v16, v17);
  }

  else
  {
    while (1)
    {
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        return MEMORY[0x282200600](a1, a2, a3, a4, a5, a6, a7, a8);
      }

      if (v12 >= (((1 << *(v8 + 552)) + 63) >> 6))
      {
        break;
      }

      v11 = *(v8 + 480);
      v10 = *(v11 + 8 * v12 + 56);
      ++v9;
      if (v10)
      {
        v9 = v12;
        goto LABEL_7;
      }
    }

    v19 = *(v8 + 480);
    v20 = *(v8 + 464);
    v26 = *(v8 + 112);

    v21 = swift_task_alloc();
    *(v8 + 488) = v21;
    *(v21 + 16) = v26;
    *(v21 + 32) = v20;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E58, &qword_20CD64680);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E60, &qword_20CD64688);
    v24 = *(MEMORY[0x277D858E8] + 4);
    v25 = swift_task_alloc();
    *(v8 + 496) = v25;
    *v25 = v8;
    v25[1] = sub_20CCF515C;
    a6 = &unk_20CD64678;
    a1 = v8 + 96;
    a2 = v22;
    a3 = v23;
    a4 = 0;
    a5 = 0;
    a7 = v21;
    a8 = v22;

    return MEMORY[0x282200600](a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_20CCF5C44(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D78, &qword_20CD64400);
  v3[16] = v4;
  v5 = *(v4 - 8);
  v3[17] = v5;
  v6 = *(v5 + 64) + 15;
  v3[18] = swift_task_alloc();
  v7 = sub_20CD63144();
  v3[19] = v7;
  v8 = *(v7 - 8);
  v3[20] = v8;
  v9 = *(v8 + 64) + 15;
  v3[21] = swift_task_alloc();
  v10 = sub_20CD62E94();
  v3[22] = v10;
  v11 = *(v10 - 8);
  v3[23] = v11;
  v12 = *(v11 + 64) + 15;
  v3[24] = swift_task_alloc();
  v13 = *(*(sub_20CD62CE4() - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  Range = type metadata accessor for SnapshotQueryRange();
  v3[26] = Range;
  v15 = *(*(Range - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CC8, &qword_20CD64160) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v17 = sub_20CD62D24();
  v3[29] = v17;
  v18 = *(v17 - 8);
  v3[30] = v18;
  v19 = *(v18 + 64) + 15;
  v3[31] = swift_task_alloc();
  v20 = sub_20CD626F4();
  v3[32] = v20;
  v21 = *(v20 - 8);
  v3[33] = v21;
  v22 = *(v21 + 64) + 15;
  v3[34] = swift_task_alloc();
  v23 = sub_20CD62654();
  v3[35] = v23;
  v24 = *(v23 - 8);
  v3[36] = v24;
  v25 = *(v24 + 64) + 15;
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v26 = sub_20CD63114();
  v3[43] = v26;
  v27 = *(v26 - 8);
  v3[44] = v27;
  v28 = *(v27 + 64) + 15;
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v29 = sub_20CD63134();
  v3[48] = v29;
  v30 = *(v29 - 8);
  v3[49] = v30;
  v31 = *(v30 + 64) + 15;
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCF6098, 0, 0);
}

uint64_t sub_20CCF6098()
{
  v2 = *(v0 + 51);
  v1 = *(v0 + 52);
  v3 = *(v0 + 48);
  v4 = *(v0 + 49);
  v5 = *(v0 + 47);
  sub_20CD63014();
  sub_20CD63014();
  sub_20CD63124();
  sub_20CD630F4();
  v6 = *(v4 + 8);
  *(v0 + 53) = v6;
  *(v0 + 54) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  v7 = sub_20CD63124();
  v8 = sub_20CD63414();
  if (sub_20CD63444())
  {
    v9 = *(v0 + 47);
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_20CD63104();
    _os_signpost_emit_with_name_impl(&dword_20CCEA000, v7, v8, v11, "retrieveSnapshots", "", v10, 2u);
    MEMORY[0x20F3115B0](v10, -1, -1);
  }

  v12 = *(v0 + 47);
  v88 = *(v0 + 48);
  v90 = *(v0 + 52);
  v13 = *(v0 + 46);
  v14 = *(v0 + 43);
  v15 = *(v0 + 44);
  v86 = *(v0 + 42);
  v93 = *(v0 + 34);
  v95 = v0;
  v16 = *(v0 + 33);
  v91 = *(v0 + 32);
  v17 = *(v0 + 15);

  (*(v15 + 16))(v13, v12, v14);
  v18 = sub_20CD63174();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *(v0 + 55) = sub_20CD63164();
  v21 = *(v15 + 8);
  *(v0 + 56) = v21;
  *(v0 + 57) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v12, v14);
  v6(v90, v88);
  sub_20CD62644();
  (*(v16 + 16))(v93, v17, v91);
  v22 = type metadata accessor for SnapshotRetriver(0);
  sub_20CCEE234(v17 + *(v22 + 20), (v0 + 16));
  sub_20CCEE234(v17 + *(v22 + 24), (v0 + 56));
  v23 = type metadata accessor for SnapshotRetriverRepresentableProvider();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  *(v0 + 58) = v26;
  swift_defaultActor_initialize();
  *(v26 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_cache) = MEMORY[0x277D84F98];
  (*(v16 + 32))(v26 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_calendar, v93, v91);
  sub_20CCEE234((v0 + 16), v26 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_healthStore);
  sub_20CCEE234((v0 + 56), v26 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_seymourStore);
  sub_20CCEE234((v0 + 16), v26 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_ringsContainerQuery);
  sub_20CCEC32C((v0 + 56), v26 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_fitnessPlusContainerQuery);
  sub_20CCEC32C(v0 + 1, v26 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_workoutContainerQuery);
  if (qword_28110F1A0 != -1)
  {
LABEL_36:
    swift_once();
  }

  v27 = sub_20CD631B4();
  *(v0 + 59) = __swift_project_value_buffer(v27, qword_28110F878);
  v28 = sub_20CD63194();
  v29 = sub_20CD633D4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_20CCEA000, v28, v29, "[SnapshotRetriever] Spawning queries to fetch representables for today", v30, 2u);
    MEMORY[0x20F3115B0](v30, -1, -1);
  }

  v31 = *(v0 + 36);
  v32 = *(v95 + 30);
  v87 = *(v95 + 26);
  v33 = *(v95 + 16);
  v34 = *(v95 + 14);

  v35 = sub_20CD62CD4();
  v36 = v35 + 56;
  v37 = -1;
  v38 = -1 << *(v35 + 32);
  if (-v38 < 64)
  {
    v37 = ~(-1 << -v38);
  }

  v39 = v37 & *(v35 + 56);
  v40 = (63 - v38) >> 6;
  v89 = v32;
  v41 = (v32 + 8);
  v42 = v95;
  v92 = v41;
  v94 = v35;
  v85 = (v31 + 48);
  v81 = v31;
  v82 = (v31 + 32);

  v43 = 0;
  v83 = MEMORY[0x277D84F90];
  v84 = v36;
LABEL_9:
  v44 = v43;
  if (!v39)
  {
    goto LABEL_11;
  }

  do
  {
    v43 = v44;
LABEL_14:
    v45 = *(v42 + 31);
    v46 = *(v42 + 29);
    v47 = *(v42 + 27);
    v0 = v42;
    v48 = *(v42 + 25);
    (*(v89 + 16))(v45, *(v94 + 48) + *(v89 + 72) * (__clz(__rbit64(v39)) | (v43 << 6)), v46);
    sub_20CD1DF2C(&qword_28110F6E0, MEMORY[0x277D0A388]);
    sub_20CD62B14();
    sub_20CCEEFC0(v48, v47);
    v39 &= v39 - 1;
    v49 = *(v0 + 35);
    v50 = *(v0 + 28);
    v51 = *(v0 + 27);
    (*v92)(*(v0 + 31), *(v0 + 29));
    sub_20CD1D9A8(v51 + *(v87 + 20), v50, &qword_27C810CC8, &qword_20CD64160);
    sub_20CD1C87C(v51, type metadata accessor for SnapshotQueryRange);
    if ((*v85)(v50, 1, v49) != 1)
    {
      v52 = *(v0 + 41);
      v80 = *(v0 + 40);
      v53 = *(v0 + 35);
      v54 = *(v0 + 28);
      v0 = *v82;
      (*v82)(v52, v54, v53);
      (v0)(v80, v52, v53);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = sub_20CD527F0(0, v83[2] + 1, 1, v83);
      }

      v56 = v83[2];
      v55 = v83[3];
      v42 = v95;
      if (v56 >= v55 >> 1)
      {
        v83 = sub_20CD527F0(v55 > 1, v56 + 1, 1, v83);
      }

      v57 = *(v95 + 40);
      v58 = *(v95 + 35);
      v83[2] = v56 + 1;
      (v0)(v83 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v56, v57, v58);
      v36 = v84;
      goto LABEL_9;
    }

    sub_20CD1DA10(*(v0 + 28), &qword_27C810CC8, &qword_20CD64160);
    v44 = v43;
    v42 = v0;
    v36 = v84;
  }

  while (v39);
  while (1)
  {
LABEL_11:
    v43 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v43 >= v40)
    {
      break;
    }

    v39 = *(v36 + 8 * v43);
    ++v44;
    if (v39)
    {
      goto LABEL_14;
    }
  }

  v59 = sub_20CD485B8(v83);
  *(v42 + 60) = v59;

  v60 = *(v59 + 32);
  v42[552] = v60;
  v61 = -1;
  v62 = -1 << v60;
  if (-(-1 << v60) < 64)
  {
    v61 = ~(-1 << -(-1 << v60));
  }

  v63 = v61 & *(v59 + 56);
  if (v63)
  {
    v64 = 0;
    v65 = *(v42 + 60);
LABEL_29:
    *(v42 + 63) = v63;
    *(v42 + 64) = v64;
    v68 = *(v42 + 24);
    (*(*(v42 + 36) + 16))(*(v42 + 39), *(v65 + 48) + *(*(v42 + 36) + 72) * (__clz(__rbit64(v63)) | (v64 << 6)), *(v42 + 35));
    sub_20CD62B44();
    sub_20CD1DF2C(&qword_28110F758, MEMORY[0x277D0A038]);
    sub_20CD62C94();
    v69 = swift_task_alloc();
    *(v42 + 65) = v69;
    *v69 = v42;
    v69[1] = sub_20CCF7208;
    v70 = *(v42 + 58);
    v71 = *(v42 + 24);
    v72 = *(v42 + 39);

    return sub_20CD57A94(v72, v71);
  }

  else
  {
    v66 = 0;
    v67 = ((63 - v62) >> 6) - 1;
    v65 = *(v42 + 60);
    while (v67 != v66)
    {
      v64 = v66 + 1;
      v63 = *(v65 + 8 * v66++ + 64);
      if (v63)
      {
        goto LABEL_29;
      }
    }

    v74 = *(v42 + 58);
    v96 = *(v42 + 7);

    v75 = swift_task_alloc();
    *(v42 + 61) = v75;
    *(v75 + 16) = v96;
    *(v75 + 32) = v74;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E08, &qword_20CD645C0);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E10, &qword_20CD645C8);
    v78 = *(MEMORY[0x277D858E8] + 4);
    v79 = swift_task_alloc();
    *(v42 + 62) = v79;
    *v79 = v42;
    v79[1] = sub_20CCF6BD4;

    return MEMORY[0x282200600](v42 + 96, v76, v77, 0, 0, &unk_20CD645B8, v75, v76);
  }
}

uint64_t sub_20CCF6BD4()
{
  v1 = *(*v0 + 496);
  v2 = *(*v0 + 488);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20CCF6CEC, 0, 0);
}

uint64_t sub_20CCF6CEC()
{
  v1 = v0[55];
  v2 = v0[50];
  v3 = v0[45];
  v78 = v0[12];
  sub_20CD63014();
  v4 = sub_20CD63124();
  sub_20CD63154();
  v5 = sub_20CD63404();
  if (sub_20CD63444())
  {
    v6 = v0[55];
    v7 = v0[20];
    v8 = v0[21];
    v9 = v0[19];

    sub_20CD63184();

    if ((*(v7 + 88))(v8, v9) == *MEMORY[0x277D85B00])
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[20] + 8))(v0[21], v0[19]);
      v10 = "";
    }

    v11 = v0[45];
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_20CD63104();
    _os_signpost_emit_with_name_impl(&dword_20CCEA000, v4, v5, v13, "retrieveSnapshots", v10, v12, 2u);
    MEMORY[0x20F3115B0](v12, -1, -1);
  }

  v75 = v0[59];
  v60 = v0[56];
  v62 = v0[57];
  v64 = v0[53];
  v66 = v0[54];
  v14 = v0[50];
  v15 = v0[48];
  v16 = v0[45];
  v17 = v4;
  v18 = v0[43];
  v70 = v0[38];
  v72 = v0[42];
  v19 = v0[36];
  v68 = v0[35];
  v21 = v0[17];
  v20 = v0[18];
  v22 = v0[16];
  v23 = v0[14];

  v60(v16, v18);
  v64(v14, v15);
  (*(v21 + 16))(v20, v23, v22);
  (*(v19 + 16))(v70, v72, v68);
  v24 = sub_20CD63194();
  v25 = sub_20CD633D4();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v0[38];
  if (v26)
  {
    v29 = v0[36];
    v28 = v0[37];
    v73 = v0[35];
    v76 = v25;
    v31 = v0[17];
    v30 = v0[18];
    v32 = v0[16];
    v33 = swift_slowAlloc();
    *v33 = 134218240;
    v34 = v27;
    v35 = *(sub_20CD62CD4() + 16);

    (*(v31 + 8))(v30, v32);
    *(v33 + 4) = v35;
    *(v33 + 12) = 2048;
    sub_20CD62644();
    sub_20CD62544();
    v37 = v36;
    v38 = *(v29 + 8);
    v38(v28, v73);
    v38(v34, v73);
    *(v33 + 14) = v37;
    _os_log_impl(&dword_20CCEA000, v24, v76, "[SnapshotRetriever] All %ld queries executed. Total duration: %fs", v33, 0x16u);
    MEMORY[0x20F3115B0](v33, -1, -1);
  }

  else
  {
    v39 = v0[35];
    v40 = v0[36];
    (*(v0[17] + 8))(v0[18], v0[16]);

    v38 = *(v40 + 8);
    v38(v27, v39);
  }

  v41 = v0[58];
  v42 = v0[55];
  v43 = v0[52];
  v50 = v0[51];
  v51 = v0[50];
  v52 = v0[47];
  v53 = v0[46];
  v44 = v0[42];
  v54 = v0[45];
  v55 = v0[41];
  v56 = v0[40];
  v57 = v0[39];
  v58 = v0[38];
  v59 = v0[37];
  v45 = v0[35];
  v61 = v0[34];
  v63 = v0[31];
  v65 = v0[28];
  v67 = v0[27];
  v69 = v0[25];
  v71 = v0[24];
  v74 = v0[21];
  v77 = v0[18];
  v46 = v0[36] + 8;
  v47 = v0[13];
  sub_20CD62B44();
  sub_20CD1DF2C(&qword_28110F758, MEMORY[0x277D0A038]);
  sub_20CD62D34();

  v38(v44, v45);

  v48 = v0[1];

  return v48();
}

uint64_t sub_20CCF7208()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v4 = *v1;
  v2[66] = v0;

  v5 = v2[39];
  v6 = v2[36];
  v7 = v2[35];
  v8 = v2[24];
  v9 = v2[23];
  v10 = v2[22];
  if (v0)
  {
    (*(v9 + 8))(v2[24], v2[22]);
    v11 = *(v6 + 8);
    v2[67] = v11;
    v2[68] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v5, v7);
    v12 = sub_20CCF76BC;
  }

  else
  {

    (*(v9 + 8))(v8, v10);
    (*(v6 + 8))(v5, v7);
    v12 = sub_20CCF7430;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_20CCF7430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 512);
  v10 = (*(v8 + 504) - 1) & *(v8 + 504);
  if (v10)
  {
    v11 = *(v8 + 480);
LABEL_7:
    *(v8 + 504) = v10;
    *(v8 + 512) = v9;
    v13 = *(v8 + 192);
    (*(*(v8 + 288) + 16))(*(v8 + 312), *(v11 + 48) + *(*(v8 + 288) + 72) * (__clz(__rbit64(v10)) | (v9 << 6)), *(v8 + 280));
    sub_20CD62B44();
    sub_20CD1DF2C(&qword_28110F758, MEMORY[0x277D0A038]);
    sub_20CD62C94();
    v14 = swift_task_alloc();
    *(v8 + 520) = v14;
    *v14 = v8;
    v14[1] = sub_20CCF7208;
    v15 = *(v8 + 464);
    v16 = *(v8 + 312);
    v17 = *(v8 + 192);

    return sub_20CD57A94(v16, v17);
  }

  else
  {
    while (1)
    {
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        return MEMORY[0x282200600](a1, a2, a3, a4, a5, a6, a7, a8);
      }

      if (v12 >= (((1 << *(v8 + 552)) + 63) >> 6))
      {
        break;
      }

      v11 = *(v8 + 480);
      v10 = *(v11 + 8 * v12 + 56);
      ++v9;
      if (v10)
      {
        v9 = v12;
        goto LABEL_7;
      }
    }

    v19 = *(v8 + 480);
    v20 = *(v8 + 464);
    v26 = *(v8 + 112);

    v21 = swift_task_alloc();
    *(v8 + 488) = v21;
    *(v21 + 16) = v26;
    *(v21 + 32) = v20;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E08, &qword_20CD645C0);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E10, &qword_20CD645C8);
    v24 = *(MEMORY[0x277D858E8] + 4);
    v25 = swift_task_alloc();
    *(v8 + 496) = v25;
    *v25 = v8;
    v25[1] = sub_20CCF6BD4;
    a6 = &unk_20CD645B8;
    a1 = v8 + 96;
    a2 = v22;
    a3 = v23;
    a4 = 0;
    a5 = 0;
    a7 = v21;
    a8 = v22;

    return MEMORY[0x282200600](a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_20CCF76BC()
{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[60];
  v4 = v0[58];
  v5 = v0[55];
  v6 = v0[42];
  v7 = v0[35];

  v2(v6, v7);
  v30 = v0[66];
  v9 = v0[51];
  v8 = v0[52];
  v10 = v0[50];
  v12 = v0[46];
  v11 = v0[47];
  v13 = v0[45];
  v15 = v0[41];
  v14 = v0[42];
  v17 = v0[39];
  v16 = v0[40];
  v20 = v0[38];
  v21 = v0[37];
  v22 = v0[34];
  v23 = v0[31];
  v24 = v0[28];
  v25 = v0[27];
  v26 = v0[25];
  v27 = v0[24];
  v28 = v0[21];
  v29 = v0[18];

  v18 = v0[1];

  return v18();
}

uint64_t sub_20CCF7860(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D88, &qword_20CD64420);
  v3[16] = v4;
  v5 = *(v4 - 8);
  v3[17] = v5;
  v6 = *(v5 + 64) + 15;
  v3[18] = swift_task_alloc();
  v7 = sub_20CD63144();
  v3[19] = v7;
  v8 = *(v7 - 8);
  v3[20] = v8;
  v9 = *(v8 + 64) + 15;
  v3[21] = swift_task_alloc();
  v10 = sub_20CD62E94();
  v3[22] = v10;
  v11 = *(v10 - 8);
  v3[23] = v11;
  v12 = *(v11 + 64) + 15;
  v3[24] = swift_task_alloc();
  v13 = *(*(sub_20CD62CE4() - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  Range = type metadata accessor for SnapshotQueryRange();
  v3[26] = Range;
  v15 = *(*(Range - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CC8, &qword_20CD64160) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v17 = sub_20CD62994();
  v3[29] = v17;
  v18 = *(v17 - 8);
  v3[30] = v18;
  v19 = *(v18 + 64) + 15;
  v3[31] = swift_task_alloc();
  v20 = sub_20CD626F4();
  v3[32] = v20;
  v21 = *(v20 - 8);
  v3[33] = v21;
  v22 = *(v21 + 64) + 15;
  v3[34] = swift_task_alloc();
  v23 = sub_20CD62654();
  v3[35] = v23;
  v24 = *(v23 - 8);
  v3[36] = v24;
  v25 = *(v24 + 64) + 15;
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v26 = sub_20CD63114();
  v3[43] = v26;
  v27 = *(v26 - 8);
  v3[44] = v27;
  v28 = *(v27 + 64) + 15;
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v29 = sub_20CD63134();
  v3[48] = v29;
  v30 = *(v29 - 8);
  v3[49] = v30;
  v31 = *(v30 + 64) + 15;
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCF7CB4, 0, 0);
}

uint64_t sub_20CCF7CB4()
{
  v2 = *(v0 + 51);
  v1 = *(v0 + 52);
  v3 = *(v0 + 48);
  v4 = *(v0 + 49);
  v5 = *(v0 + 47);
  sub_20CD63014();
  sub_20CD63014();
  sub_20CD63124();
  sub_20CD630F4();
  v6 = *(v4 + 8);
  *(v0 + 53) = v6;
  *(v0 + 54) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  v7 = sub_20CD63124();
  v8 = sub_20CD63414();
  if (sub_20CD63444())
  {
    v9 = *(v0 + 47);
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_20CD63104();
    _os_signpost_emit_with_name_impl(&dword_20CCEA000, v7, v8, v11, "retrieveSnapshots", "", v10, 2u);
    MEMORY[0x20F3115B0](v10, -1, -1);
  }

  v12 = *(v0 + 47);
  v88 = *(v0 + 48);
  v90 = *(v0 + 52);
  v13 = *(v0 + 46);
  v14 = *(v0 + 43);
  v15 = *(v0 + 44);
  v86 = *(v0 + 42);
  v93 = *(v0 + 34);
  v95 = v0;
  v16 = *(v0 + 33);
  v91 = *(v0 + 32);
  v17 = *(v0 + 15);

  (*(v15 + 16))(v13, v12, v14);
  v18 = sub_20CD63174();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *(v0 + 55) = sub_20CD63164();
  v21 = *(v15 + 8);
  *(v0 + 56) = v21;
  *(v0 + 57) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v12, v14);
  v6(v90, v88);
  sub_20CD62644();
  (*(v16 + 16))(v93, v17, v91);
  v22 = type metadata accessor for SnapshotRetriver(0);
  sub_20CCEE234(v17 + *(v22 + 20), (v0 + 16));
  sub_20CCEE234(v17 + *(v22 + 24), (v0 + 56));
  v23 = type metadata accessor for SnapshotRetriverRepresentableProvider();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  *(v0 + 58) = v26;
  swift_defaultActor_initialize();
  *(v26 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_cache) = MEMORY[0x277D84F98];
  (*(v16 + 32))(v26 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_calendar, v93, v91);
  sub_20CCEE234((v0 + 16), v26 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_healthStore);
  sub_20CCEE234((v0 + 56), v26 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_seymourStore);
  sub_20CCEE234((v0 + 16), v26 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_ringsContainerQuery);
  sub_20CCEC32C((v0 + 56), v26 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_fitnessPlusContainerQuery);
  sub_20CCEC32C(v0 + 1, v26 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_workoutContainerQuery);
  if (qword_28110F1A0 != -1)
  {
LABEL_36:
    swift_once();
  }

  v27 = sub_20CD631B4();
  *(v0 + 59) = __swift_project_value_buffer(v27, qword_28110F878);
  v28 = sub_20CD63194();
  v29 = sub_20CD633D4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_20CCEA000, v28, v29, "[SnapshotRetriever] Spawning queries to fetch representables for today", v30, 2u);
    MEMORY[0x20F3115B0](v30, -1, -1);
  }

  v31 = *(v0 + 36);
  v32 = *(v95 + 30);
  v87 = *(v95 + 26);
  v33 = *(v95 + 16);
  v34 = *(v95 + 14);

  v35 = sub_20CD62CD4();
  v36 = v35 + 56;
  v37 = -1;
  v38 = -1 << *(v35 + 32);
  if (-v38 < 64)
  {
    v37 = ~(-1 << -v38);
  }

  v39 = v37 & *(v35 + 56);
  v40 = (63 - v38) >> 6;
  v89 = v32;
  v41 = (v32 + 8);
  v42 = v95;
  v92 = v41;
  v94 = v35;
  v85 = (v31 + 48);
  v81 = v31;
  v82 = (v31 + 32);

  v43 = 0;
  v83 = MEMORY[0x277D84F90];
  v84 = v36;
LABEL_9:
  v44 = v43;
  if (!v39)
  {
    goto LABEL_11;
  }

  do
  {
    v43 = v44;
LABEL_14:
    v45 = *(v42 + 31);
    v46 = *(v42 + 29);
    v47 = *(v42 + 27);
    v0 = v42;
    v48 = *(v42 + 25);
    (*(v89 + 16))(v45, *(v94 + 48) + *(v89 + 72) * (__clz(__rbit64(v39)) | (v43 << 6)), v46);
    sub_20CD1DF2C(&qword_28110F7A8, MEMORY[0x277D09F18]);
    sub_20CD62B14();
    sub_20CCEEFC0(v48, v47);
    v39 &= v39 - 1;
    v49 = *(v0 + 35);
    v50 = *(v0 + 28);
    v51 = *(v0 + 27);
    (*v92)(*(v0 + 31), *(v0 + 29));
    sub_20CD1D9A8(v51 + *(v87 + 20), v50, &qword_27C810CC8, &qword_20CD64160);
    sub_20CD1C87C(v51, type metadata accessor for SnapshotQueryRange);
    if ((*v85)(v50, 1, v49) != 1)
    {
      v52 = *(v0 + 41);
      v80 = *(v0 + 40);
      v53 = *(v0 + 35);
      v54 = *(v0 + 28);
      v0 = *v82;
      (*v82)(v52, v54, v53);
      (v0)(v80, v52, v53);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = sub_20CD527F0(0, v83[2] + 1, 1, v83);
      }

      v56 = v83[2];
      v55 = v83[3];
      v42 = v95;
      if (v56 >= v55 >> 1)
      {
        v83 = sub_20CD527F0(v55 > 1, v56 + 1, 1, v83);
      }

      v57 = *(v95 + 40);
      v58 = *(v95 + 35);
      v83[2] = v56 + 1;
      (v0)(v83 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v56, v57, v58);
      v36 = v84;
      goto LABEL_9;
    }

    sub_20CD1DA10(*(v0 + 28), &qword_27C810CC8, &qword_20CD64160);
    v44 = v43;
    v42 = v0;
    v36 = v84;
  }

  while (v39);
  while (1)
  {
LABEL_11:
    v43 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v43 >= v40)
    {
      break;
    }

    v39 = *(v36 + 8 * v43);
    ++v44;
    if (v39)
    {
      goto LABEL_14;
    }
  }

  v59 = sub_20CD485B8(v83);
  *(v42 + 60) = v59;

  v60 = *(v59 + 32);
  v42[552] = v60;
  v61 = -1;
  v62 = -1 << v60;
  if (-(-1 << v60) < 64)
  {
    v61 = ~(-1 << -(-1 << v60));
  }

  v63 = v61 & *(v59 + 56);
  if (v63)
  {
    v64 = 0;
    v65 = *(v42 + 60);
LABEL_29:
    *(v42 + 63) = v63;
    *(v42 + 64) = v64;
    v68 = *(v42 + 24);
    (*(*(v42 + 36) + 16))(*(v42 + 39), *(v65 + 48) + *(*(v42 + 36) + 72) * (__clz(__rbit64(v63)) | (v64 << 6)), *(v42 + 35));
    sub_20CD62954();
    sub_20CD1DF2C(&qword_28110F7C8, MEMORY[0x277D09EE0]);
    sub_20CD62C94();
    v69 = swift_task_alloc();
    *(v42 + 65) = v69;
    *v69 = v42;
    v69[1] = sub_20CCF8E24;
    v70 = *(v42 + 58);
    v71 = *(v42 + 24);
    v72 = *(v42 + 39);

    return sub_20CD57A94(v72, v71);
  }

  else
  {
    v66 = 0;
    v67 = ((63 - v62) >> 6) - 1;
    v65 = *(v42 + 60);
    while (v67 != v66)
    {
      v64 = v66 + 1;
      v63 = *(v65 + 8 * v66++ + 64);
      if (v63)
      {
        goto LABEL_29;
      }
    }

    v74 = *(v42 + 58);
    v96 = *(v42 + 7);

    v75 = swift_task_alloc();
    *(v42 + 61) = v75;
    *(v75 + 16) = v96;
    *(v75 + 32) = v74;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DA0, &unk_20CD64E70);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DA8, &qword_20CD644D0);
    v78 = *(MEMORY[0x277D858E8] + 4);
    v79 = swift_task_alloc();
    *(v42 + 62) = v79;
    *v79 = v42;
    v79[1] = sub_20CCF87F0;

    return MEMORY[0x282200600](v42 + 96, v76, v77, 0, 0, &unk_20CD644C0, v75, v76);
  }
}

uint64_t sub_20CCF87F0()
{
  v1 = *(*v0 + 496);
  v2 = *(*v0 + 488);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20CCF8908, 0, 0);
}

uint64_t sub_20CCF8908()
{
  v1 = v0[55];
  v2 = v0[50];
  v3 = v0[45];
  v78 = v0[12];
  sub_20CD63014();
  v4 = sub_20CD63124();
  sub_20CD63154();
  v5 = sub_20CD63404();
  if (sub_20CD63444())
  {
    v6 = v0[55];
    v7 = v0[20];
    v8 = v0[21];
    v9 = v0[19];

    sub_20CD63184();

    if ((*(v7 + 88))(v8, v9) == *MEMORY[0x277D85B00])
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[20] + 8))(v0[21], v0[19]);
      v10 = "";
    }

    v11 = v0[45];
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_20CD63104();
    _os_signpost_emit_with_name_impl(&dword_20CCEA000, v4, v5, v13, "retrieveSnapshots", v10, v12, 2u);
    MEMORY[0x20F3115B0](v12, -1, -1);
  }

  v75 = v0[59];
  v60 = v0[56];
  v62 = v0[57];
  v64 = v0[53];
  v66 = v0[54];
  v14 = v0[50];
  v15 = v0[48];
  v16 = v0[45];
  v17 = v4;
  v18 = v0[43];
  v70 = v0[38];
  v72 = v0[42];
  v19 = v0[36];
  v68 = v0[35];
  v21 = v0[17];
  v20 = v0[18];
  v22 = v0[16];
  v23 = v0[14];

  v60(v16, v18);
  v64(v14, v15);
  (*(v21 + 16))(v20, v23, v22);
  (*(v19 + 16))(v70, v72, v68);
  v24 = sub_20CD63194();
  v25 = sub_20CD633D4();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v0[38];
  if (v26)
  {
    v29 = v0[36];
    v28 = v0[37];
    v73 = v0[35];
    v76 = v25;
    v31 = v0[17];
    v30 = v0[18];
    v32 = v0[16];
    v33 = swift_slowAlloc();
    *v33 = 134218240;
    v34 = v27;
    v35 = *(sub_20CD62CD4() + 16);

    (*(v31 + 8))(v30, v32);
    *(v33 + 4) = v35;
    *(v33 + 12) = 2048;
    sub_20CD62644();
    sub_20CD62544();
    v37 = v36;
    v38 = *(v29 + 8);
    v38(v28, v73);
    v38(v34, v73);
    *(v33 + 14) = v37;
    _os_log_impl(&dword_20CCEA000, v24, v76, "[SnapshotRetriever] All %ld queries executed. Total duration: %fs", v33, 0x16u);
    MEMORY[0x20F3115B0](v33, -1, -1);
  }

  else
  {
    v39 = v0[35];
    v40 = v0[36];
    (*(v0[17] + 8))(v0[18], v0[16]);

    v38 = *(v40 + 8);
    v38(v27, v39);
  }

  v41 = v0[58];
  v42 = v0[55];
  v43 = v0[52];
  v50 = v0[51];
  v51 = v0[50];
  v52 = v0[47];
  v53 = v0[46];
  v44 = v0[42];
  v54 = v0[45];
  v55 = v0[41];
  v56 = v0[40];
  v57 = v0[39];
  v58 = v0[38];
  v59 = v0[37];
  v45 = v0[35];
  v61 = v0[34];
  v63 = v0[31];
  v65 = v0[28];
  v67 = v0[27];
  v69 = v0[25];
  v71 = v0[24];
  v74 = v0[21];
  v77 = v0[18];
  v46 = v0[36] + 8;
  v47 = v0[13];
  sub_20CD62954();
  sub_20CD1DF2C(&qword_28110F7C8, MEMORY[0x277D09EE0]);
  sub_20CD62D34();

  v38(v44, v45);

  v48 = v0[1];

  return v48();
}

uint64_t sub_20CCF8E24()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v4 = *v1;
  v2[66] = v0;

  v5 = v2[39];
  v6 = v2[36];
  v7 = v2[35];
  v8 = v2[24];
  v9 = v2[23];
  v10 = v2[22];
  if (v0)
  {
    (*(v9 + 8))(v2[24], v2[22]);
    v11 = *(v6 + 8);
    v2[67] = v11;
    v2[68] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v5, v7);
    v12 = sub_20CD1DFA0;
  }

  else
  {

    (*(v9 + 8))(v8, v10);
    (*(v6 + 8))(v5, v7);
    v12 = sub_20CCF904C;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_20CCF904C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 512);
  v10 = (*(v8 + 504) - 1) & *(v8 + 504);
  if (v10)
  {
    v11 = *(v8 + 480);
LABEL_7:
    *(v8 + 504) = v10;
    *(v8 + 512) = v9;
    v13 = *(v8 + 192);
    (*(*(v8 + 288) + 16))(*(v8 + 312), *(v11 + 48) + *(*(v8 + 288) + 72) * (__clz(__rbit64(v10)) | (v9 << 6)), *(v8 + 280));
    sub_20CD62954();
    sub_20CD1DF2C(&qword_28110F7C8, MEMORY[0x277D09EE0]);
    sub_20CD62C94();
    v14 = swift_task_alloc();
    *(v8 + 520) = v14;
    *v14 = v8;
    v14[1] = sub_20CCF8E24;
    v15 = *(v8 + 464);
    v16 = *(v8 + 312);
    v17 = *(v8 + 192);

    return sub_20CD57A94(v16, v17);
  }

  else
  {
    while (1)
    {
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        return MEMORY[0x282200600](a1, a2, a3, a4, a5, a6, a7, a8);
      }

      if (v12 >= (((1 << *(v8 + 552)) + 63) >> 6))
      {
        break;
      }

      v11 = *(v8 + 480);
      v10 = *(v11 + 8 * v12 + 56);
      ++v9;
      if (v10)
      {
        v9 = v12;
        goto LABEL_7;
      }
    }

    v19 = *(v8 + 480);
    v20 = *(v8 + 464);
    v26 = *(v8 + 112);

    v21 = swift_task_alloc();
    *(v8 + 488) = v21;
    *(v21 + 16) = v26;
    *(v21 + 32) = v20;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DA0, &unk_20CD64E70);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DA8, &qword_20CD644D0);
    v24 = *(MEMORY[0x277D858E8] + 4);
    v25 = swift_task_alloc();
    *(v8 + 496) = v25;
    *v25 = v8;
    v25[1] = sub_20CCF87F0;
    a6 = &unk_20CD644C0;
    a1 = v8 + 96;
    a2 = v22;
    a3 = v23;
    a4 = 0;
    a5 = 0;
    a7 = v21;
    a8 = v22;

    return MEMORY[0x282200600](a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_20CCF92D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E68, &qword_20CD64698) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E58, &qword_20CD64680);
  v4[14] = v6;
  v7 = *(v6 - 8);
  v4[15] = v7;
  v8 = *(v7 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v9 = *(type metadata accessor for SnapshotRetriver(0) - 8);
  v4[18] = v9;
  v4[19] = *(v9 + 64);
  v4[20] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811360, &qword_20CD653E0) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v11 = sub_20CD62EA4();
  v4[23] = v11;
  v12 = *(v11 - 8);
  v4[24] = v12;
  v4[25] = *(v12 + 64);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCF9500, 0, 0);
}

uint64_t sub_20CCF9500()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v44 = *(v0 + 144);
  v3 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D68, &qword_20CD643E0);
  v4 = sub_20CD62CD4();
  v8 = 0;
  v9 = v4 + 56;
  v45 = v4;
  v10 = -1;
  v11 = -1 << *(v4 + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(v4 + 56);
  v13 = (63 - v11) >> 6;
  v41 = v1 + 7;
  v42 = v13;
  v43 = v4 + 56;
  while (v12)
  {
LABEL_10:
    v17 = *(v0 + 208);
    v46 = *(v0 + 216);
    v18 = *(v0 + 176);
    v19 = *(v0 + 184);
    v50 = v18;
    v20 = *(v0 + 160);
    v54 = *(v0 + 168);
    v48 = v20;
    v21 = *(v0 + 88);
    v51 = *(v0 + 152);
    v53 = *(v0 + 96);
    v22 = *(v45 + 48) + *(v2 + 72) * (__clz(__rbit64(v12)) | (v8 << 6));
    v47 = v19;
    (*(v2 + 16))();
    v23 = sub_20CD63374();
    v49 = *(v23 - 8);
    (*(v49 + 56))(v18, 1, 1, v23);
    sub_20CD1C9AC(v21, v20, type metadata accessor for SnapshotRetriver);
    v24 = *(v2 + 32);
    v24(v17, v46, v19);
    v25 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v26 = (v51 + *(v2 + 80) + v25) & ~*(v2 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    v52 = (v27 + 16);
    *(v27 + 24) = 0;
    sub_20CD1C0A0(v48, v27 + v25, type metadata accessor for SnapshotRetriver);
    v24(v27 + v26, v17, v47);
    *(v27 + ((v41 + v26) & 0xFFFFFFFFFFFFFFF8)) = v53;
    sub_20CD1D9A8(v50, v54, &qword_27C811360, &qword_20CD653E0);
    LODWORD(v24) = (*(v49 + 48))(v54, 1, v23);

    v28 = *(v0 + 168);
    if (v24 == 1)
    {
      sub_20CD1DA10(*(v0 + 168), &qword_27C811360, &qword_20CD653E0);
    }

    else
    {
      sub_20CD63364();
      (*(v49 + 8))(v28, v23);
    }

    if (*v52)
    {
      v29 = *(v27 + 24);
      v30 = *v52;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v31 = sub_20CD63314();
      v33 = v32;
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    v34 = **(v0 + 72);
    v35 = swift_allocObject();
    *(v35 + 16) = &unk_20CD646A8;
    *(v35 + 24) = v27;
    v36 = v33 | v31;
    if (v33 | v31)
    {
      v36 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v31;
      *(v0 + 40) = v33;
    }

    v12 &= v12 - 1;
    v14 = *(v0 + 176);
    v15 = *(v0 + 112);
    *(v0 + 48) = 1;
    *(v0 + 56) = v36;
    *(v0 + 64) = v34;
    swift_task_create();

    v4 = sub_20CD1DA10(v14, &qword_27C811360, &qword_20CD653E0);
    v13 = v42;
    v9 = v43;
  }

  while (1)
  {
    v16 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return MEMORY[0x2822002D0](v4, v5, v6, v7);
    }

    if (v16 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v16);
    ++v8;
    if (v12)
    {
      v8 = v16;
      goto LABEL_10;
    }
  }

  *(v0 + 224) = MEMORY[0x277D84F90];
  v37 = *(MEMORY[0x277D856A0] + 4);
  v38 = swift_task_alloc();
  *(v0 + 232) = v38;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E70, &qword_20CD646C0);
  *v38 = v0;
  v38[1] = sub_20CCF99E4;
  v4 = *(v0 + 104);
  v39 = *(v0 + 72);
  v5 = 0;
  v6 = 0;

  return MEMORY[0x2822002D0](v4, v5, v6, v7);
}

uint64_t sub_20CCF99E4()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20CCF9AE0, 0, 0);
}

uint64_t sub_20CCF9AE0()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[26];
    v4 = v0[27];
    v7 = v0[21];
    v6 = v0[22];
    v8 = v0[20];
    v10 = v0[16];
    v9 = v0[17];
    sub_20CD1DA10(v3, &qword_27C810E68, &qword_20CD64698);

    v11 = v0[1];
    v12 = v0[28];

    return v11(v12);
  }

  else
  {
    v14 = v0[28];
    v16 = v0[16];
    v15 = v0[17];
    v17 = *(v2 + 32);
    v17(v15, v3, v1);
    (*(v2 + 16))(v16, v15, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v0[28];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_20CD527CC(0, v19[2] + 1, 1, v0[28]);
    }

    v21 = v19[2];
    v20 = v19[3];
    if (v21 >= v20 >> 1)
    {
      v19 = sub_20CD527CC(v20 > 1, v21 + 1, 1, v19);
    }

    v22 = v0[16];
    v23 = v0[14];
    v24 = v0[15];
    (*(v24 + 8))(v0[17], v23);
    v19[2] = v21 + 1;
    v17(v19 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21, v22, v23);
    v0[28] = v19;
    v25 = *(MEMORY[0x277D856A0] + 4);
    v26 = swift_task_alloc();
    v0[29] = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E70, &qword_20CD646C0);
    *v26 = v0;
    v26[1] = sub_20CCF99E4;
    v28 = v0[13];
    v29 = v0[9];

    return MEMORY[0x2822002D0](v28, 0, 0, v27);
  }
}

uint64_t sub_20CCF9D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E18, &qword_20CD645D8) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E08, &qword_20CD645C0);
  v4[14] = v6;
  v7 = *(v6 - 8);
  v4[15] = v7;
  v8 = *(v7 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v9 = *(type metadata accessor for SnapshotRetriver(0) - 8);
  v4[18] = v9;
  v4[19] = *(v9 + 64);
  v4[20] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811360, &qword_20CD653E0) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v11 = sub_20CD62D24();
  v4[23] = v11;
  v12 = *(v11 - 8);
  v4[24] = v12;
  v4[25] = *(v12 + 64);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCF9FA8, 0, 0);
}

uint64_t sub_20CCF9FA8()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v44 = *(v0 + 144);
  v3 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D78, &qword_20CD64400);
  v4 = sub_20CD62CD4();
  v8 = 0;
  v9 = v4 + 56;
  v45 = v4;
  v10 = -1;
  v11 = -1 << *(v4 + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(v4 + 56);
  v13 = (63 - v11) >> 6;
  v41 = v1 + 7;
  v42 = v13;
  v43 = v4 + 56;
  while (v12)
  {
LABEL_10:
    v17 = *(v0 + 208);
    v46 = *(v0 + 216);
    v18 = *(v0 + 176);
    v19 = *(v0 + 184);
    v50 = v18;
    v20 = *(v0 + 160);
    v54 = *(v0 + 168);
    v48 = v20;
    v21 = *(v0 + 88);
    v51 = *(v0 + 152);
    v53 = *(v0 + 96);
    v22 = *(v45 + 48) + *(v2 + 72) * (__clz(__rbit64(v12)) | (v8 << 6));
    v47 = v19;
    (*(v2 + 16))();
    v23 = sub_20CD63374();
    v49 = *(v23 - 8);
    (*(v49 + 56))(v18, 1, 1, v23);
    sub_20CD1C9AC(v21, v20, type metadata accessor for SnapshotRetriver);
    v24 = *(v2 + 32);
    v24(v17, v46, v19);
    v25 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v26 = (v51 + *(v2 + 80) + v25) & ~*(v2 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    v52 = (v27 + 16);
    *(v27 + 24) = 0;
    sub_20CD1C0A0(v48, v27 + v25, type metadata accessor for SnapshotRetriver);
    v24(v27 + v26, v17, v47);
    *(v27 + ((v41 + v26) & 0xFFFFFFFFFFFFFFF8)) = v53;
    sub_20CD1D9A8(v50, v54, &qword_27C811360, &qword_20CD653E0);
    LODWORD(v24) = (*(v49 + 48))(v54, 1, v23);

    v28 = *(v0 + 168);
    if (v24 == 1)
    {
      sub_20CD1DA10(*(v0 + 168), &qword_27C811360, &qword_20CD653E0);
    }

    else
    {
      sub_20CD63364();
      (*(v49 + 8))(v28, v23);
    }

    if (*v52)
    {
      v29 = *(v27 + 24);
      v30 = *v52;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v31 = sub_20CD63314();
      v33 = v32;
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    v34 = **(v0 + 72);
    v35 = swift_allocObject();
    *(v35 + 16) = &unk_20CD645E8;
    *(v35 + 24) = v27;
    v36 = v33 | v31;
    if (v33 | v31)
    {
      v36 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v31;
      *(v0 + 40) = v33;
    }

    v12 &= v12 - 1;
    v14 = *(v0 + 176);
    v15 = *(v0 + 112);
    *(v0 + 48) = 1;
    *(v0 + 56) = v36;
    *(v0 + 64) = v34;
    swift_task_create();

    v4 = sub_20CD1DA10(v14, &qword_27C811360, &qword_20CD653E0);
    v13 = v42;
    v9 = v43;
  }

  while (1)
  {
    v16 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return MEMORY[0x2822002D0](v4, v5, v6, v7);
    }

    if (v16 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v16);
    ++v8;
    if (v12)
    {
      v8 = v16;
      goto LABEL_10;
    }
  }

  *(v0 + 224) = MEMORY[0x277D84F90];
  v37 = *(MEMORY[0x277D856A0] + 4);
  v38 = swift_task_alloc();
  *(v0 + 232) = v38;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E20, &unk_20CD64600);
  *v38 = v0;
  v38[1] = sub_20CCFA48C;
  v4 = *(v0 + 104);
  v39 = *(v0 + 72);
  v5 = 0;
  v6 = 0;

  return MEMORY[0x2822002D0](v4, v5, v6, v7);
}

uint64_t sub_20CCFA48C()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20CCFA588, 0, 0);
}

uint64_t sub_20CCFA588()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[26];
    v4 = v0[27];
    v7 = v0[21];
    v6 = v0[22];
    v8 = v0[20];
    v10 = v0[16];
    v9 = v0[17];
    sub_20CD1DA10(v3, &qword_27C810E18, &qword_20CD645D8);

    v11 = v0[1];
    v12 = v0[28];

    return v11(v12);
  }

  else
  {
    v14 = v0[28];
    v16 = v0[16];
    v15 = v0[17];
    v17 = *(v2 + 32);
    v17(v15, v3, v1);
    (*(v2 + 16))(v16, v15, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v0[28];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_20CD52818(0, v19[2] + 1, 1, v0[28]);
    }

    v21 = v19[2];
    v20 = v19[3];
    if (v21 >= v20 >> 1)
    {
      v19 = sub_20CD52818(v20 > 1, v21 + 1, 1, v19);
    }

    v22 = v0[16];
    v23 = v0[14];
    v24 = v0[15];
    (*(v24 + 8))(v0[17], v23);
    v19[2] = v21 + 1;
    v17(v19 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21, v22, v23);
    v0[28] = v19;
    v25 = *(MEMORY[0x277D856A0] + 4);
    v26 = swift_task_alloc();
    v0[29] = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E20, &unk_20CD64600);
    *v26 = v0;
    v26[1] = sub_20CCFA48C;
    v28 = v0[13];
    v29 = v0[9];

    return MEMORY[0x2822002D0](v28, 0, 0, v27);
  }
}

uint64_t sub_20CCFA828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DB0, &unk_20CD644E0) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DA0, &unk_20CD64E70);
  v4[14] = v6;
  v7 = *(v6 - 8);
  v4[15] = v7;
  v8 = *(v7 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v9 = *(type metadata accessor for SnapshotRetriver(0) - 8);
  v4[18] = v9;
  v4[19] = *(v9 + 64);
  v4[20] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811360, &qword_20CD653E0) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v11 = sub_20CD62994();
  v4[23] = v11;
  v12 = *(v11 - 8);
  v4[24] = v12;
  v4[25] = *(v12 + 64);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCFAA50, 0, 0);
}

uint64_t sub_20CCFAA50()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v44 = *(v0 + 144);
  v3 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D88, &qword_20CD64420);
  v4 = sub_20CD62CD4();
  v8 = 0;
  v9 = v4 + 56;
  v45 = v4;
  v10 = -1;
  v11 = -1 << *(v4 + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(v4 + 56);
  v13 = (63 - v11) >> 6;
  v41 = v1 + 7;
  v42 = v13;
  v43 = v4 + 56;
  while (v12)
  {
LABEL_10:
    v17 = *(v0 + 208);
    v46 = *(v0 + 216);
    v18 = *(v0 + 176);
    v19 = *(v0 + 184);
    v50 = v18;
    v20 = *(v0 + 160);
    v54 = *(v0 + 168);
    v48 = v20;
    v21 = *(v0 + 88);
    v51 = *(v0 + 152);
    v53 = *(v0 + 96);
    v22 = *(v45 + 48) + *(v2 + 72) * (__clz(__rbit64(v12)) | (v8 << 6));
    v47 = v19;
    (*(v2 + 16))();
    v23 = sub_20CD63374();
    v49 = *(v23 - 8);
    (*(v49 + 56))(v18, 1, 1, v23);
    sub_20CD1C9AC(v21, v20, type metadata accessor for SnapshotRetriver);
    v24 = *(v2 + 32);
    v24(v17, v46, v19);
    v25 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v26 = (v51 + *(v2 + 80) + v25) & ~*(v2 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    v52 = (v27 + 16);
    *(v27 + 24) = 0;
    sub_20CD1C0A0(v48, v27 + v25, type metadata accessor for SnapshotRetriver);
    v24(v27 + v26, v17, v47);
    *(v27 + ((v41 + v26) & 0xFFFFFFFFFFFFFFF8)) = v53;
    sub_20CD1D9A8(v50, v54, &qword_27C811360, &qword_20CD653E0);
    LODWORD(v24) = (*(v49 + 48))(v54, 1, v23);

    v28 = *(v0 + 168);
    if (v24 == 1)
    {
      sub_20CD1DA10(*(v0 + 168), &qword_27C811360, &qword_20CD653E0);
    }

    else
    {
      sub_20CD63364();
      (*(v49 + 8))(v28, v23);
    }

    if (*v52)
    {
      v29 = *(v27 + 24);
      v30 = *v52;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v31 = sub_20CD63314();
      v33 = v32;
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    v34 = **(v0 + 72);
    v35 = swift_allocObject();
    *(v35 + 16) = &unk_20CD644F8;
    *(v35 + 24) = v27;
    v36 = v33 | v31;
    if (v33 | v31)
    {
      v36 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v31;
      *(v0 + 40) = v33;
    }

    v12 &= v12 - 1;
    v14 = *(v0 + 176);
    v15 = *(v0 + 112);
    *(v0 + 48) = 1;
    *(v0 + 56) = v36;
    *(v0 + 64) = v34;
    swift_task_create();

    v4 = sub_20CD1DA10(v14, &qword_27C811360, &qword_20CD653E0);
    v13 = v42;
    v9 = v43;
  }

  while (1)
  {
    v16 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return MEMORY[0x2822002D0](v4, v5, v6, v7);
    }

    if (v16 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v16);
    ++v8;
    if (v12)
    {
      v8 = v16;
      goto LABEL_10;
    }
  }

  *(v0 + 224) = MEMORY[0x277D84F90];
  v37 = *(MEMORY[0x277D856A0] + 4);
  v38 = swift_task_alloc();
  *(v0 + 232) = v38;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DB8, &qword_20CD64510);
  *v38 = v0;
  v38[1] = sub_20CCFAF34;
  v4 = *(v0 + 104);
  v39 = *(v0 + 72);
  v5 = 0;
  v6 = 0;

  return MEMORY[0x2822002D0](v4, v5, v6, v7);
}

uint64_t sub_20CCFAF34()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20CCFB030, 0, 0);
}

uint64_t sub_20CCFB030()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[26];
    v4 = v0[27];
    v7 = v0[21];
    v6 = v0[22];
    v8 = v0[20];
    v10 = v0[16];
    v9 = v0[17];
    sub_20CD1DA10(v3, &qword_27C810DB0, &unk_20CD644E0);

    v11 = v0[1];
    v12 = v0[28];

    return v11(v12);
  }

  else
  {
    v14 = v0[28];
    v16 = v0[16];
    v15 = v0[17];
    v17 = *(v2 + 32);
    v17(v15, v3, v1);
    (*(v2 + 16))(v16, v15, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v0[28];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_20CD5283C(0, v19[2] + 1, 1, v0[28]);
    }

    v21 = v19[2];
    v20 = v19[3];
    if (v21 >= v20 >> 1)
    {
      v19 = sub_20CD5283C(v20 > 1, v21 + 1, 1, v19);
    }

    v22 = v0[16];
    v23 = v0[14];
    v24 = v0[15];
    (*(v24 + 8))(v0[17], v23);
    v19[2] = v21 + 1;
    v17(v19 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21, v22, v23);
    v0[28] = v19;
    v25 = *(MEMORY[0x277D856A0] + 4);
    v26 = swift_task_alloc();
    v0[29] = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DB8, &qword_20CD64510);
    *v26 = v0;
    v26[1] = sub_20CCFAF34;
    v28 = v0[13];
    v29 = v0[9];

    return MEMORY[0x2822002D0](v28, 0, 0, v27);
  }
}

uint64_t sub_20CCFB2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = *(*(sub_20CD62AE4() - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E78, &qword_20CD646C8) - 8) + 64) + 15;
  v6[7] = swift_task_alloc();
  v9 = sub_20CD62EA4();
  v6[8] = v9;
  v10 = *(v9 - 8);
  v6[9] = v10;
  v11 = *(v10 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E80, &qword_20CD646D0) - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v13 = sub_20CD62654();
  v6[18] = v13;
  v14 = *(v13 - 8);
  v6[19] = v14;
  v15 = *(v14 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCFB4E0, 0, 0);
}

uint64_t sub_20CCFB4E0()
{
  v1 = v0[21];
  sub_20CD62644();
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_20CCFB584;
  v3 = v0[16];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];

  return sub_20CCFE684(v3, v4, v5);
}

uint64_t sub_20CCFB584()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_20CCFBC1C;
  }

  else
  {
    v3 = sub_20CCFB698;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CCFB698()
{
  v62 = v0;
  sub_20CCF3D20(v0[16], v0[17], &qword_27C810E80, &qword_20CD646D0);
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  sub_20CD62644();
  sub_20CD62544();
  v6 = v5;
  v60 = *(v4 + 8);
  v60(v1, v3);
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v7 = v0[12];
  v8 = v0[8];
  v9 = v0[9];
  v10 = v0[4];
  v11 = sub_20CD631B4();
  __swift_project_value_buffer(v11, qword_28110F878);
  v12 = *(v9 + 16);
  v12(v7, v10, v8);
  v13 = sub_20CD63194();
  v14 = sub_20CD633D4();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[12];
  if (v15)
  {
    v58 = v12;
    v17 = v0[11];
    v18 = v0[8];
    v19 = v0[9];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v61 = v21;
    *v20 = 136315394;
    v58(v17, v16, v18);
    v22 = sub_20CD63264();
    v24 = v23;
    (*(v19 + 8))(v16, v18);
    v25 = v22;
    v12 = v58;
    v26 = sub_20CD6153C(v25, v24, &v61);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2048;
    *(v20 + 14) = v6;
    _os_log_impl(&dword_20CCEA000, v13, v14, "[SnapshotRetriever] Completed query for %s in %fs", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x20F3115B0](v21, -1, -1);
    MEMORY[0x20F3115B0](v20, -1, -1);
  }

  else
  {
    v27 = v0[8];
    v28 = v0[9];

    (*(v28 + 8))(v16, v27);
  }

  v29 = v0[15];
  sub_20CD1D9A8(v0[17], v29, &qword_27C810E80, &qword_20CD646D0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E88, &qword_20CD646E0);
  v31 = *(*(v30 - 8) + 48);
  v32 = v31(v29, 1, v30);
  v33 = v0[15];
  if (v32 == 1)
  {
    sub_20CD1DA10(v33, &qword_27C810E80, &qword_20CD646D0);
  }

  else
  {
    v34 = v33 + *(v30 + 36);
    v35 = *v34;
    v36 = *(v34 + 8);
    sub_20CD1DA10(v33, &qword_27C810E88, &qword_20CD646E0);
  }

  v37 = v0[17];
  v38 = v0[14];
  v12(v0[10], v0[4], v0[8]);
  sub_20CD1D9A8(v37, v38, &qword_27C810E80, &qword_20CD646D0);
  v39 = v31(v38, 1, v30);
  v40 = v0[14];
  v41 = v0[7];
  if (v39 == 1)
  {
    sub_20CD1DA10(v0[14], &qword_27C810E80, &qword_20CD646D0);
    v42 = sub_20CD62BC4();
    (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
  }

  else
  {
    sub_20CD1D9A8(v0[14], v0[7], &qword_27C810E78, &qword_20CD646C8);
    sub_20CD1DA10(v40, &qword_27C810E88, &qword_20CD646E0);
  }

  v43 = v0[20];
  v44 = v0[21];
  v45 = v0[17];
  v46 = v0[18];
  v53 = v0[16];
  v54 = v0[15];
  v55 = v0[14];
  v56 = v0[13];
  v57 = v0[12];
  v59 = v0[11];
  v47 = v0[10];
  v49 = v0[6];
  v48 = v0[7];
  v50 = v0[2];
  sub_20CD62AD4();
  sub_20CD62BC4();
  sub_20CD1DF2C(&qword_28110F720, MEMORY[0x277D0A1E8]);
  sub_20CD62D04();
  sub_20CD1DA10(v45, &qword_27C810E80, &qword_20CD646D0);
  v60(v44, v46);

  v51 = v0[1];

  return v51();
}

uint64_t sub_20CCFBC1C()
{
  v90 = v0;
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = *(v0 + 104);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 32);
  v83 = sub_20CD631B4();
  __swift_project_value_buffer(v83, qword_28110F878);
  v6 = *(v4 + 16);
  v6(v2, v5, v3);
  v7 = v1;
  v8 = sub_20CD63194();
  v9 = sub_20CD633B4();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 104);
  if (v10)
  {
    v12 = *(v0 + 88);
    v13 = *(v0 + 64);
    v14 = *(v0 + 72);
    v86 = *(v0 + 184);
    v15 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v89 = v88;
    *v15 = 136315394;
    v6(v12, v11, v13);
    v16 = sub_20CD63264();
    v18 = v17;
    (*(v14 + 8))(v11, v13);
    v19 = sub_20CD6153C(v16, v18, &v89);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2112;
    v20 = v86;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v21;
    *v81 = v21;
    _os_log_impl(&dword_20CCEA000, v8, v9, "[SnapshotRetriever] Failed to execute query for %s: %@", v15, 0x16u);
    sub_20CD1DA10(v81, &qword_27C810DD8, &qword_20CD64930);
    MEMORY[0x20F3115B0](v81, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v88);
    MEMORY[0x20F3115B0](v88, -1, -1);
    MEMORY[0x20F3115B0](v15, -1, -1);
  }

  else
  {
    v23 = *(v0 + 64);
    v22 = *(v0 + 72);

    (*(v22 + 8))(v11, v23);
  }

  v24 = *(v0 + 136);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E88, &qword_20CD646E0);
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  v26 = *(v0 + 160);
  v27 = *(v0 + 168);
  v28 = *(v0 + 144);
  v29 = *(v0 + 152);
  sub_20CD62644();
  sub_20CD62544();
  v31 = v30;
  v87 = *(v29 + 8);
  v87(v26, v28);
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v32 = *(v0 + 96);
  v33 = *(v0 + 64);
  v34 = *(v0 + 72);
  v35 = *(v0 + 32);
  __swift_project_value_buffer(v83, qword_28110F878);
  v36 = *(v34 + 16);
  v36(v32, v35, v33);
  v37 = sub_20CD63194();
  v38 = sub_20CD633D4();
  v39 = os_log_type_enabled(v37, v38);
  v40 = *(v0 + 96);
  if (v39)
  {
    v84 = v36;
    v41 = *(v0 + 88);
    v42 = *(v0 + 64);
    v43 = *(v0 + 72);
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v89 = v45;
    *v44 = 136315394;
    v84(v41, v40, v42);
    v46 = sub_20CD63264();
    v48 = v47;
    (*(v43 + 8))(v40, v42);
    v49 = v46;
    v36 = v84;
    v50 = sub_20CD6153C(v49, v48, &v89);

    *(v44 + 4) = v50;
    *(v44 + 12) = 2048;
    *(v44 + 14) = v31;
    _os_log_impl(&dword_20CCEA000, v37, v38, "[SnapshotRetriever] Completed query for %s in %fs", v44, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x20F3115B0](v45, -1, -1);
    MEMORY[0x20F3115B0](v44, -1, -1);
  }

  else
  {
    v51 = *(v0 + 64);
    v52 = *(v0 + 72);

    (*(v52 + 8))(v40, v51);
  }

  v53 = *(v0 + 120);
  sub_20CD1D9A8(*(v0 + 136), v53, &qword_27C810E80, &qword_20CD646D0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E88, &qword_20CD646E0);
  v55 = *(*(v54 - 8) + 48);
  v56 = v55(v53, 1, v54);
  v57 = *(v0 + 120);
  if (v56 == 1)
  {
    sub_20CD1DA10(v57, &qword_27C810E80, &qword_20CD646D0);
  }

  else
  {
    v58 = v57 + *(v54 + 36);
    v59 = *v58;
    v60 = *(v58 + 8);
    sub_20CD1DA10(v57, &qword_27C810E88, &qword_20CD646E0);
  }

  v61 = *(v0 + 136);
  v62 = *(v0 + 112);
  v36(*(v0 + 80), *(v0 + 32), *(v0 + 64));
  sub_20CD1D9A8(v61, v62, &qword_27C810E80, &qword_20CD646D0);
  v63 = v55(v62, 1, v54);
  v64 = *(v0 + 112);
  v65 = *(v0 + 56);
  if (v63 == 1)
  {
    sub_20CD1DA10(*(v0 + 112), &qword_27C810E80, &qword_20CD646D0);
    v66 = sub_20CD62BC4();
    (*(*(v66 - 8) + 56))(v65, 1, 1, v66);
  }

  else
  {
    sub_20CD1D9A8(*(v0 + 112), *(v0 + 56), &qword_27C810E78, &qword_20CD646C8);
    sub_20CD1DA10(v64, &qword_27C810E88, &qword_20CD646E0);
  }

  v67 = *(v0 + 160);
  v68 = *(v0 + 168);
  v69 = *(v0 + 136);
  v70 = *(v0 + 144);
  v77 = *(v0 + 128);
  v78 = *(v0 + 120);
  v79 = *(v0 + 112);
  v80 = *(v0 + 104);
  v82 = *(v0 + 96);
  v85 = *(v0 + 88);
  v71 = *(v0 + 80);
  v73 = *(v0 + 48);
  v72 = *(v0 + 56);
  v74 = *(v0 + 16);
  sub_20CD62AD4();
  sub_20CD62BC4();
  sub_20CD1DF2C(&qword_28110F720, MEMORY[0x277D0A1E8]);
  sub_20CD62D04();
  sub_20CD1DA10(v69, &qword_27C810E80, &qword_20CD646D0);
  v87(v68, v70);

  v75 = *(v0 + 8);

  return v75();
}

uint64_t sub_20CCFC40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = *(*(sub_20CD62AE4() - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E28, &unk_20CD64A10) - 8) + 64) + 15;
  v6[7] = swift_task_alloc();
  v9 = sub_20CD62D24();
  v6[8] = v9;
  v10 = *(v9 - 8);
  v6[9] = v10;
  v11 = *(v10 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E30, &qword_20CD64610) - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v13 = sub_20CD62654();
  v6[18] = v13;
  v14 = *(v13 - 8);
  v6[19] = v14;
  v15 = *(v14 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCFC61C, 0, 0);
}

uint64_t sub_20CCFC61C()
{
  v1 = v0[21];
  sub_20CD62644();
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_20CCFC6C0;
  v3 = v0[16];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];

  return sub_20CD047A0(v3, v4, v5);
}

uint64_t sub_20CCFC6C0()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_20CCFCD58;
  }

  else
  {
    v3 = sub_20CCFC7D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CCFC7D4()
{
  v62 = v0;
  sub_20CCF3D20(v0[16], v0[17], &qword_27C810E30, &qword_20CD64610);
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  sub_20CD62644();
  sub_20CD62544();
  v6 = v5;
  v60 = *(v4 + 8);
  v60(v1, v3);
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v7 = v0[12];
  v8 = v0[8];
  v9 = v0[9];
  v10 = v0[4];
  v11 = sub_20CD631B4();
  __swift_project_value_buffer(v11, qword_28110F878);
  v12 = *(v9 + 16);
  v12(v7, v10, v8);
  v13 = sub_20CD63194();
  v14 = sub_20CD633D4();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[12];
  if (v15)
  {
    v58 = v12;
    v17 = v0[11];
    v18 = v0[8];
    v19 = v0[9];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v61 = v21;
    *v20 = 136315394;
    v58(v17, v16, v18);
    v22 = sub_20CD63264();
    v24 = v23;
    (*(v19 + 8))(v16, v18);
    v25 = v22;
    v12 = v58;
    v26 = sub_20CD6153C(v25, v24, &v61);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2048;
    *(v20 + 14) = v6;
    _os_log_impl(&dword_20CCEA000, v13, v14, "[SnapshotRetriever] Completed query for %s in %fs", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x20F3115B0](v21, -1, -1);
    MEMORY[0x20F3115B0](v20, -1, -1);
  }

  else
  {
    v27 = v0[8];
    v28 = v0[9];

    (*(v28 + 8))(v16, v27);
  }

  v29 = v0[15];
  sub_20CD1D9A8(v0[17], v29, &qword_27C810E30, &qword_20CD64610);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E38, &qword_20CD64620);
  v31 = *(*(v30 - 8) + 48);
  v32 = v31(v29, 1, v30);
  v33 = v0[15];
  if (v32 == 1)
  {
    sub_20CD1DA10(v33, &qword_27C810E30, &qword_20CD64610);
  }

  else
  {
    v34 = v33 + *(v30 + 36);
    v35 = *v34;
    v36 = *(v34 + 8);
    sub_20CD1DA10(v33, &qword_27C810E38, &qword_20CD64620);
  }

  v37 = v0[17];
  v38 = v0[14];
  v12(v0[10], v0[4], v0[8]);
  sub_20CD1D9A8(v37, v38, &qword_27C810E30, &qword_20CD64610);
  v39 = v31(v38, 1, v30);
  v40 = v0[14];
  v41 = v0[7];
  if (v39 == 1)
  {
    sub_20CD1DA10(v0[14], &qword_27C810E30, &qword_20CD64610);
    v42 = sub_20CD62B44();
    (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
  }

  else
  {
    sub_20CD1D9A8(v0[14], v0[7], &qword_27C810E28, &unk_20CD64A10);
    sub_20CD1DA10(v40, &qword_27C810E38, &qword_20CD64620);
  }

  v43 = v0[20];
  v44 = v0[21];
  v45 = v0[17];
  v46 = v0[18];
  v53 = v0[16];
  v54 = v0[15];
  v55 = v0[14];
  v56 = v0[13];
  v57 = v0[12];
  v59 = v0[11];
  v47 = v0[10];
  v49 = v0[6];
  v48 = v0[7];
  v50 = v0[2];
  sub_20CD62AD4();
  sub_20CD62B44();
  sub_20CD1DF2C(&qword_28110F758, MEMORY[0x277D0A038]);
  sub_20CD62D04();
  sub_20CD1DA10(v45, &qword_27C810E30, &qword_20CD64610);
  v60(v44, v46);

  v51 = v0[1];

  return v51();
}

uint64_t sub_20CCFCD58()
{
  v90 = v0;
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = *(v0 + 104);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 32);
  v83 = sub_20CD631B4();
  __swift_project_value_buffer(v83, qword_28110F878);
  v6 = *(v4 + 16);
  v6(v2, v5, v3);
  v7 = v1;
  v8 = sub_20CD63194();
  v9 = sub_20CD633B4();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 104);
  if (v10)
  {
    v12 = *(v0 + 88);
    v13 = *(v0 + 64);
    v14 = *(v0 + 72);
    v86 = *(v0 + 184);
    v15 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v89 = v88;
    *v15 = 136315394;
    v6(v12, v11, v13);
    v16 = sub_20CD63264();
    v18 = v17;
    (*(v14 + 8))(v11, v13);
    v19 = sub_20CD6153C(v16, v18, &v89);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2112;
    v20 = v86;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v21;
    *v81 = v21;
    _os_log_impl(&dword_20CCEA000, v8, v9, "[SnapshotRetriever] Failed to execute query for %s: %@", v15, 0x16u);
    sub_20CD1DA10(v81, &qword_27C810DD8, &qword_20CD64930);
    MEMORY[0x20F3115B0](v81, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v88);
    MEMORY[0x20F3115B0](v88, -1, -1);
    MEMORY[0x20F3115B0](v15, -1, -1);
  }

  else
  {
    v23 = *(v0 + 64);
    v22 = *(v0 + 72);

    (*(v22 + 8))(v11, v23);
  }

  v24 = *(v0 + 136);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E38, &qword_20CD64620);
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  v26 = *(v0 + 160);
  v27 = *(v0 + 168);
  v28 = *(v0 + 144);
  v29 = *(v0 + 152);
  sub_20CD62644();
  sub_20CD62544();
  v31 = v30;
  v87 = *(v29 + 8);
  v87(v26, v28);
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v32 = *(v0 + 96);
  v33 = *(v0 + 64);
  v34 = *(v0 + 72);
  v35 = *(v0 + 32);
  __swift_project_value_buffer(v83, qword_28110F878);
  v36 = *(v34 + 16);
  v36(v32, v35, v33);
  v37 = sub_20CD63194();
  v38 = sub_20CD633D4();
  v39 = os_log_type_enabled(v37, v38);
  v40 = *(v0 + 96);
  if (v39)
  {
    v84 = v36;
    v41 = *(v0 + 88);
    v42 = *(v0 + 64);
    v43 = *(v0 + 72);
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v89 = v45;
    *v44 = 136315394;
    v84(v41, v40, v42);
    v46 = sub_20CD63264();
    v48 = v47;
    (*(v43 + 8))(v40, v42);
    v49 = v46;
    v36 = v84;
    v50 = sub_20CD6153C(v49, v48, &v89);

    *(v44 + 4) = v50;
    *(v44 + 12) = 2048;
    *(v44 + 14) = v31;
    _os_log_impl(&dword_20CCEA000, v37, v38, "[SnapshotRetriever] Completed query for %s in %fs", v44, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x20F3115B0](v45, -1, -1);
    MEMORY[0x20F3115B0](v44, -1, -1);
  }

  else
  {
    v51 = *(v0 + 64);
    v52 = *(v0 + 72);

    (*(v52 + 8))(v40, v51);
  }

  v53 = *(v0 + 120);
  sub_20CD1D9A8(*(v0 + 136), v53, &qword_27C810E30, &qword_20CD64610);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E38, &qword_20CD64620);
  v55 = *(*(v54 - 8) + 48);
  v56 = v55(v53, 1, v54);
  v57 = *(v0 + 120);
  if (v56 == 1)
  {
    sub_20CD1DA10(v57, &qword_27C810E30, &qword_20CD64610);
  }

  else
  {
    v58 = v57 + *(v54 + 36);
    v59 = *v58;
    v60 = *(v58 + 8);
    sub_20CD1DA10(v57, &qword_27C810E38, &qword_20CD64620);
  }

  v61 = *(v0 + 136);
  v62 = *(v0 + 112);
  v36(*(v0 + 80), *(v0 + 32), *(v0 + 64));
  sub_20CD1D9A8(v61, v62, &qword_27C810E30, &qword_20CD64610);
  v63 = v55(v62, 1, v54);
  v64 = *(v0 + 112);
  v65 = *(v0 + 56);
  if (v63 == 1)
  {
    sub_20CD1DA10(*(v0 + 112), &qword_27C810E30, &qword_20CD64610);
    v66 = sub_20CD62B44();
    (*(*(v66 - 8) + 56))(v65, 1, 1, v66);
  }

  else
  {
    sub_20CD1D9A8(*(v0 + 112), *(v0 + 56), &qword_27C810E28, &unk_20CD64A10);
    sub_20CD1DA10(v64, &qword_27C810E38, &qword_20CD64620);
  }

  v67 = *(v0 + 160);
  v68 = *(v0 + 168);
  v69 = *(v0 + 136);
  v70 = *(v0 + 144);
  v77 = *(v0 + 128);
  v78 = *(v0 + 120);
  v79 = *(v0 + 112);
  v80 = *(v0 + 104);
  v82 = *(v0 + 96);
  v85 = *(v0 + 88);
  v71 = *(v0 + 80);
  v73 = *(v0 + 48);
  v72 = *(v0 + 56);
  v74 = *(v0 + 16);
  sub_20CD62AD4();
  sub_20CD62B44();
  sub_20CD1DF2C(&qword_28110F758, MEMORY[0x277D0A038]);
  sub_20CD62D04();
  sub_20CD1DA10(v69, &qword_27C810E30, &qword_20CD64610);
  v87(v68, v70);

  v75 = *(v0 + 8);

  return v75();
}

uint64_t sub_20CCFD548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = *(*(sub_20CD62AE4() - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DC0, &qword_20CD64518) - 8) + 64) + 15;
  v6[7] = swift_task_alloc();
  v9 = sub_20CD62994();
  v6[8] = v9;
  v10 = *(v9 - 8);
  v6[9] = v10;
  v11 = *(v10 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DC8, &qword_20CD64520) - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v13 = sub_20CD62654();
  v6[18] = v13;
  v14 = *(v13 - 8);
  v6[19] = v14;
  v15 = *(v14 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCFD758, 0, 0);
}

uint64_t sub_20CCFD758()
{
  v1 = v0[21];
  sub_20CD62644();
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_20CCFD7FC;
  v3 = v0[16];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];

  return sub_20CD0AC18(v3, v4, v5);
}

uint64_t sub_20CCFD7FC()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_20CCFDE94;
  }

  else
  {
    v3 = sub_20CCFD910;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CCFD910()
{
  v62 = v0;
  sub_20CCF3D20(v0[16], v0[17], &qword_27C810DC8, &qword_20CD64520);
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  sub_20CD62644();
  sub_20CD62544();
  v6 = v5;
  v60 = *(v4 + 8);
  v60(v1, v3);
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v7 = v0[12];
  v8 = v0[8];
  v9 = v0[9];
  v10 = v0[4];
  v11 = sub_20CD631B4();
  __swift_project_value_buffer(v11, qword_28110F878);
  v12 = *(v9 + 16);
  v12(v7, v10, v8);
  v13 = sub_20CD63194();
  v14 = sub_20CD633D4();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[12];
  if (v15)
  {
    v58 = v12;
    v17 = v0[11];
    v18 = v0[8];
    v19 = v0[9];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v61 = v21;
    *v20 = 136315394;
    v58(v17, v16, v18);
    v22 = sub_20CD63264();
    v24 = v23;
    (*(v19 + 8))(v16, v18);
    v25 = v22;
    v12 = v58;
    v26 = sub_20CD6153C(v25, v24, &v61);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2048;
    *(v20 + 14) = v6;
    _os_log_impl(&dword_20CCEA000, v13, v14, "[SnapshotRetriever] Completed query for %s in %fs", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x20F3115B0](v21, -1, -1);
    MEMORY[0x20F3115B0](v20, -1, -1);
  }

  else
  {
    v27 = v0[8];
    v28 = v0[9];

    (*(v28 + 8))(v16, v27);
  }

  v29 = v0[15];
  sub_20CD1D9A8(v0[17], v29, &qword_27C810DC8, &qword_20CD64520);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DD0, &unk_20CD64530);
  v31 = *(*(v30 - 8) + 48);
  v32 = v31(v29, 1, v30);
  v33 = v0[15];
  if (v32 == 1)
  {
    sub_20CD1DA10(v33, &qword_27C810DC8, &qword_20CD64520);
  }

  else
  {
    v34 = v33 + *(v30 + 36);
    v35 = *v34;
    v36 = *(v34 + 8);
    sub_20CD1DA10(v33, &qword_27C810DD0, &unk_20CD64530);
  }

  v37 = v0[17];
  v38 = v0[14];
  v12(v0[10], v0[4], v0[8]);
  sub_20CD1D9A8(v37, v38, &qword_27C810DC8, &qword_20CD64520);
  v39 = v31(v38, 1, v30);
  v40 = v0[14];
  v41 = v0[7];
  if (v39 == 1)
  {
    sub_20CD1DA10(v0[14], &qword_27C810DC8, &qword_20CD64520);
    v42 = sub_20CD62954();
    (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
  }

  else
  {
    sub_20CD1D9A8(v0[14], v0[7], &qword_27C810DC0, &qword_20CD64518);
    sub_20CD1DA10(v40, &qword_27C810DD0, &unk_20CD64530);
  }

  v43 = v0[20];
  v44 = v0[21];
  v45 = v0[17];
  v46 = v0[18];
  v53 = v0[16];
  v54 = v0[15];
  v55 = v0[14];
  v56 = v0[13];
  v57 = v0[12];
  v59 = v0[11];
  v47 = v0[10];
  v49 = v0[6];
  v48 = v0[7];
  v50 = v0[2];
  sub_20CD62AD4();
  sub_20CD62954();
  sub_20CD1DF2C(&qword_28110F7C8, MEMORY[0x277D09EE0]);
  sub_20CD62D04();
  sub_20CD1DA10(v45, &qword_27C810DC8, &qword_20CD64520);
  v60(v44, v46);

  v51 = v0[1];

  return v51();
}

uint64_t sub_20CCFDE94()
{
  v90 = v0;
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = *(v0 + 104);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 32);
  v83 = sub_20CD631B4();
  __swift_project_value_buffer(v83, qword_28110F878);
  v6 = *(v4 + 16);
  v6(v2, v5, v3);
  v7 = v1;
  v8 = sub_20CD63194();
  v9 = sub_20CD633B4();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 104);
  if (v10)
  {
    v12 = *(v0 + 88);
    v13 = *(v0 + 64);
    v14 = *(v0 + 72);
    v86 = *(v0 + 184);
    v15 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v89 = v88;
    *v15 = 136315394;
    v6(v12, v11, v13);
    v16 = sub_20CD63264();
    v18 = v17;
    (*(v14 + 8))(v11, v13);
    v19 = sub_20CD6153C(v16, v18, &v89);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2112;
    v20 = v86;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v21;
    *v81 = v21;
    _os_log_impl(&dword_20CCEA000, v8, v9, "[SnapshotRetriever] Failed to execute query for %s: %@", v15, 0x16u);
    sub_20CD1DA10(v81, &qword_27C810DD8, &qword_20CD64930);
    MEMORY[0x20F3115B0](v81, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v88);
    MEMORY[0x20F3115B0](v88, -1, -1);
    MEMORY[0x20F3115B0](v15, -1, -1);
  }

  else
  {
    v23 = *(v0 + 64);
    v22 = *(v0 + 72);

    (*(v22 + 8))(v11, v23);
  }

  v24 = *(v0 + 136);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DD0, &unk_20CD64530);
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  v26 = *(v0 + 160);
  v27 = *(v0 + 168);
  v28 = *(v0 + 144);
  v29 = *(v0 + 152);
  sub_20CD62644();
  sub_20CD62544();
  v31 = v30;
  v87 = *(v29 + 8);
  v87(v26, v28);
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v32 = *(v0 + 96);
  v33 = *(v0 + 64);
  v34 = *(v0 + 72);
  v35 = *(v0 + 32);
  __swift_project_value_buffer(v83, qword_28110F878);
  v36 = *(v34 + 16);
  v36(v32, v35, v33);
  v37 = sub_20CD63194();
  v38 = sub_20CD633D4();
  v39 = os_log_type_enabled(v37, v38);
  v40 = *(v0 + 96);
  if (v39)
  {
    v84 = v36;
    v41 = *(v0 + 88);
    v42 = *(v0 + 64);
    v43 = *(v0 + 72);
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v89 = v45;
    *v44 = 136315394;
    v84(v41, v40, v42);
    v46 = sub_20CD63264();
    v48 = v47;
    (*(v43 + 8))(v40, v42);
    v49 = v46;
    v36 = v84;
    v50 = sub_20CD6153C(v49, v48, &v89);

    *(v44 + 4) = v50;
    *(v44 + 12) = 2048;
    *(v44 + 14) = v31;
    _os_log_impl(&dword_20CCEA000, v37, v38, "[SnapshotRetriever] Completed query for %s in %fs", v44, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x20F3115B0](v45, -1, -1);
    MEMORY[0x20F3115B0](v44, -1, -1);
  }

  else
  {
    v51 = *(v0 + 64);
    v52 = *(v0 + 72);

    (*(v52 + 8))(v40, v51);
  }

  v53 = *(v0 + 120);
  sub_20CD1D9A8(*(v0 + 136), v53, &qword_27C810DC8, &qword_20CD64520);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DD0, &unk_20CD64530);
  v55 = *(*(v54 - 8) + 48);
  v56 = v55(v53, 1, v54);
  v57 = *(v0 + 120);
  if (v56 == 1)
  {
    sub_20CD1DA10(v57, &qword_27C810DC8, &qword_20CD64520);
  }

  else
  {
    v58 = v57 + *(v54 + 36);
    v59 = *v58;
    v60 = *(v58 + 8);
    sub_20CD1DA10(v57, &qword_27C810DD0, &unk_20CD64530);
  }

  v61 = *(v0 + 136);
  v62 = *(v0 + 112);
  v36(*(v0 + 80), *(v0 + 32), *(v0 + 64));
  sub_20CD1D9A8(v61, v62, &qword_27C810DC8, &qword_20CD64520);
  v63 = v55(v62, 1, v54);
  v64 = *(v0 + 112);
  v65 = *(v0 + 56);
  if (v63 == 1)
  {
    sub_20CD1DA10(*(v0 + 112), &qword_27C810DC8, &qword_20CD64520);
    v66 = sub_20CD62954();
    (*(*(v66 - 8) + 56))(v65, 1, 1, v66);
  }

  else
  {
    sub_20CD1D9A8(*(v0 + 112), *(v0 + 56), &qword_27C810DC0, &qword_20CD64518);
    sub_20CD1DA10(v64, &qword_27C810DD0, &unk_20CD64530);
  }

  v67 = *(v0 + 160);
  v68 = *(v0 + 168);
  v69 = *(v0 + 136);
  v70 = *(v0 + 144);
  v77 = *(v0 + 128);
  v78 = *(v0 + 120);
  v79 = *(v0 + 112);
  v80 = *(v0 + 104);
  v82 = *(v0 + 96);
  v85 = *(v0 + 88);
  v71 = *(v0 + 80);
  v73 = *(v0 + 48);
  v72 = *(v0 + 56);
  v74 = *(v0 + 16);
  sub_20CD62AD4();
  sub_20CD62954();
  sub_20CD1DF2C(&qword_28110F7C8, MEMORY[0x277D09EE0]);
  sub_20CD62D04();
  sub_20CD1DA10(v69, &qword_27C810DC8, &qword_20CD64520);
  v87(v68, v70);

  v75 = *(v0 + 8);

  return v75();
}

uint64_t sub_20CCFE684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E88, &qword_20CD646E0);
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CC8, &qword_20CD64160) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v9 = sub_20CD63004();
  v4[12] = v9;
  v10 = *(v9 - 8);
  v4[13] = v10;
  v11 = *(v10 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v12 = sub_20CD62E94();
  v4[16] = v12;
  v13 = *(v12 - 8);
  v4[17] = v13;
  v14 = *(v13 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v15 = sub_20CD626F4();
  v4[20] = v15;
  v16 = *(v15 - 8);
  v4[21] = v16;
  v17 = *(v16 + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v18 = sub_20CD62654();
  v4[24] = v18;
  v19 = *(v18 - 8);
  v4[25] = v19;
  v20 = *(v19 + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v21 = sub_20CD62514();
  v4[32] = v21;
  v22 = *(v21 - 8);
  v4[33] = v22;
  v23 = *(v22 + 64) + 15;
  v4[34] = swift_task_alloc();
  v24 = sub_20CD62BC4();
  v4[35] = v24;
  v25 = *(v24 - 8);
  v4[36] = v25;
  v26 = *(v25 + 64) + 15;
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF0, &unk_20CD64270);
  v4[39] = v27;
  v28 = *(*(v27 - 8) + 64) + 15;
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DE0, &unk_20CD64800) - 8) + 64) + 15;
  v4[42] = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E78, &qword_20CD646C8) - 8) + 64) + 15;
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v31 = sub_20CD62AB4();
  v4[50] = v31;
  v32 = *(v31 - 8);
  v4[51] = v32;
  v33 = *(v32 + 64) + 15;
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v34 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF8, &unk_20CD64540) - 8) + 64) + 15;
  v4[65] = swift_task_alloc();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v4[66] = v35;
  v36 = *(v35 - 8);
  v4[67] = v36;
  v37 = *(v36 + 64) + 15;
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v38 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E80, &qword_20CD646D0) - 8) + 64) + 15;
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  v39 = *(*(sub_20CD62CE4() - 8) + 64) + 15;
  v4[74] = swift_task_alloc();
  Range = type metadata accessor for SnapshotQueryRange();
  v4[75] = Range;
  v41 = *(*(Range - 8) + 64) + 15;
  v4[76] = swift_task_alloc();
  v42 = sub_20CD62EA4();
  v4[77] = v42;
  v43 = *(v42 - 8);
  v4[78] = v43;
  v44 = *(v43 + 64) + 15;
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCFEDD8, 0, 0);
}

uint64_t sub_20CCFEDD8()
{
  v169 = v0;
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v1 = v0[80];
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[5];
  v5 = sub_20CD631B4();
  v0[81] = __swift_project_value_buffer(v5, qword_28110F878);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  v7 = sub_20CD63194();
  v8 = sub_20CD633D4();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[80];
  if (v9)
  {
    v11 = v0[79];
    v12 = v0[78];
    v13 = v0[77];
    v14 = swift_slowAlloc();
    v164 = swift_slowAlloc();
    v168[0] = v164;
    *v14 = 136315138;
    v6(v11, v10, v13);
    v15 = sub_20CD63264();
    v17 = v16;
    (*(v12 + 8))(v10, v13);
    v18 = sub_20CD6153C(v15, v17, v168);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_20CCEA000, v7, v8, "[SnapshotRetriever] execute query %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v164);
    MEMORY[0x20F3115B0](v164, -1, -1);
    MEMORY[0x20F3115B0](v14, -1, -1);
  }

  else
  {
    v19 = v0[78];
    v20 = v0[77];

    (*(v19 + 8))(v10, v20);
  }

  v21 = v0[77];
  v22 = v0[76];
  v23 = v0[74];
  v24 = v0[5];
  v0[82] = sub_20CD1DF2C(&qword_28110F688, MEMORY[0x277D0A458]);
  sub_20CD62B14();
  sub_20CCEEFC0(v23, v22);
  v26 = v0[67];
  v27 = v0[66];
  v28 = v0[65];
  sub_20CD1D9A8(v0[76], v28, &qword_27C810CF8, &unk_20CD64540);
  v29 = (*(v26 + 48))(v28, 1, v27);
  if (v29 == 1)
  {
    v30 = v0[73];
    v31 = v0[8];
    v32 = v0[9];
    sub_20CD1DA10(v0[65], &qword_27C810CF8, &unk_20CD64540);
    v33 = *(v32 + 56);
    v33(v30, 1, 1, v31);
    v0[96] = v33;
    v34 = v0[24];
    v35 = v0[25];
    v36 = v0[11];
    sub_20CD1D9A8(v0[76] + *(v0[75] + 20), v36, &qword_27C810CC8, &qword_20CD64160);
    if ((*(v35 + 48))(v36, 1, v34) == 1)
    {
      v37 = v0[73];
      v38 = v0[11];
      v39 = v0[4];
      sub_20CD1C87C(v0[76], type metadata accessor for SnapshotQueryRange);
      sub_20CD1DA10(v38, &qword_27C810CC8, &qword_20CD64160);
      sub_20CCF3D20(v37, v39, &qword_27C810E80, &qword_20CD646D0);
      v40 = v0[80];
      v41 = v0[79];
      v42 = v0[76];
      v43 = v0[74];
      v44 = v0[73];
      v45 = v0[72];
      v46 = v0[71];
      v47 = v0[70];
      v48 = v0[69];
      v49 = v0[68];
      v122 = v0[65];
      v123 = v0[64];
      v124 = v0[63];
      v125 = v0[62];
      v126 = v0[61];
      v127 = v0[60];
      v128 = v0[59];
      v129 = v0[58];
      v130 = v0[57];
      v131 = v0[56];
      v132 = v0[55];
      v133 = v0[54];
      v134 = v0[53];
      v135 = v0[52];
      v136 = v0[49];
      v137 = v0[48];
      v138 = v0[47];
      v139 = v0[46];
      v140 = v0[45];
      v141 = v0[44];
      v142 = v0[43];
      v143 = v0[42];
      v144 = v0[41];
      v145 = v0[40];
      v146 = v0[38];
      v147 = v0[37];
      v148 = v0[34];
      v149 = v0[31];
      v150 = v0[30];
      v151 = v0[29];
      v152 = v0[28];
      v153 = v0[27];
      v154 = v0[26];
      v155 = v0[23];
      v156 = v0[22];
      v157 = v0[19];
      v158 = v0[18];
      v159 = v0[15];
      v160 = v0[14];
      v162 = v0[11];
      v165 = v0[10];

      v50 = v0[1];

      return v50();
    }

    v77 = v0[81];
    v79 = v0[26];
    v78 = v0[27];
    v80 = v0[24];
    v81 = v0[25];
    (*(v81 + 32))(v78, v0[11], v80);
    (*(v81 + 16))(v79, v78, v80);
    v82 = sub_20CD63194();
    v83 = sub_20CD633D4();
    v84 = os_log_type_enabled(v82, v83);
    v86 = v0[25];
    v85 = v0[26];
    v87 = v0[24];
    if (v84)
    {
      v88 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      v168[0] = v167;
      *v88 = 136315138;
      sub_20CD1DF2C(&qword_28110F7E8, MEMORY[0x277CC9578]);
      v89 = sub_20CD63574();
      v91 = v90;
      v92 = *(v86 + 8);
      v92(v85, v87);
      v93 = sub_20CD6153C(v89, v91, v168);

      *(v88 + 4) = v93;
      _os_log_impl(&dword_20CCEA000, v82, v83, "[SnapshotRetriever] Apply today's changes: %s)", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v167);
      MEMORY[0x20F3115B0](v167, -1, -1);
      MEMORY[0x20F3115B0](v88, -1, -1);
    }

    else
    {

      v92 = *(v86 + 8);
      v92(v85, v87);
    }

    v0[97] = v92;
    v99 = v0[71];
    v100 = v0[8];
    v101 = v0[9];
    sub_20CD1D9A8(v0[73], v99, &qword_27C810E80, &qword_20CD646D0);
    v102 = *(v101 + 48);
    v0[98] = v102;
    v0[99] = (v101 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v103 = v102(v99, 1, v100);
    v104 = v0[71];
    v105 = v0[45];
    v106 = v0[35];
    v107 = v0[36];
    if (v103 == 1)
    {
      sub_20CD1DA10(v0[71], &qword_27C810E80, &qword_20CD646D0);
      (*(v107 + 56))(v105, 1, 1, v106);
    }

    else
    {
      sub_20CD1D9A8(v0[71], v0[45], &qword_27C810E78, &qword_20CD646C8);
      sub_20CD1DA10(v104, &qword_27C810E88, &qword_20CD646E0);
      if ((*(v107 + 48))(v105, 1, v106) != 1)
      {
        (*(v0[36] + 32))(v0[37], v0[45], v0[35]);
LABEL_28:
        v116 = v0[35];
        v117 = v0[18];
        v0[100] = sub_20CD1DF2C(&qword_28110F720, MEMORY[0x277D0A1E8]);
        sub_20CD62C94();
        v118 = swift_task_alloc();
        v0[101] = v118;
        *v118 = v0;
        v118[1] = sub_20CD0343C;
        v119 = v0[27];
        v120 = v0[18];
        v121 = v0[6];

        return sub_20CD57A94(v119, v120);
      }
    }

    v108 = v0[54];
    v109 = v0[50];
    v110 = v0[51];
    v111 = v0[45];
    v113 = v0[36];
    v112 = v0[37];
    v114 = v0[35];
    v115 = v0[27];
    sub_20CD62564();
    sub_20CD1DF2C(&qword_28110F720, MEMORY[0x277D0A1E8]);
    sub_20CD62CB4();
    (*(v110 + 8))(v108, v109);
    if ((*(v113 + 48))(v111, 1, v114) != 1)
    {
      sub_20CD1DA10(v0[45], &qword_27C810E78, &qword_20CD646C8);
    }

    goto LABEL_28;
  }

  v51 = v0[69];
  v52 = v0[66];
  v54 = v0[63];
  v53 = v0[64];
  v56 = v0[61];
  v55 = v0[62];
  v57 = v0[50];
  v58 = v0[51];
  sub_20CCF3D20(v0[65], v51, &qword_27C810D08, &qword_20CD64280);
  v59 = *(v58 + 16);
  v0[83] = v59;
  v0[84] = (v58 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v59(v53, v51, v57);
  v59(v54, v51 + *(v52 + 36), v57);
  v59(v55, v53, v57);
  v59(v56, v54, v57);
  v60 = sub_20CD63194();
  v61 = sub_20CD633D4();
  v62 = os_log_type_enabled(v60, v61);
  v64 = v0[61];
  v63 = v0[62];
  v66 = v0[50];
  v65 = v0[51];
  if (v62)
  {
    v163 = v61;
    v67 = swift_slowAlloc();
    v166 = swift_slowAlloc();
    v168[0] = v166;
    *v67 = 136315394;
    sub_20CD1DF2C(&qword_28110F760, MEMORY[0x277D09F70]);
    v68 = sub_20CD63574();
    v70 = v69;
    v161 = v60;
    v71 = *(v65 + 8);
    v71(v63, v66);
    v72 = sub_20CD6153C(v68, v70, v168);

    *(v67 + 4) = v72;
    *(v67 + 12) = 2080;
    v73 = sub_20CD63574();
    v75 = v74;
    v71(v64, v66);
    v76 = sub_20CD6153C(v73, v75, v168);

    *(v67 + 14) = v76;
    _os_log_impl(&dword_20CCEA000, v161, v163, "[SnapshotRetriever] Fetching closest properties (%s -> %s)", v67, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v166, -1, -1);
    MEMORY[0x20F3115B0](v67, -1, -1);
  }

  else
  {

    v71 = *(v65 + 8);
    v71(v64, v66);
    v71(v63, v66);
  }

  v0[85] = v71;
  v94 = swift_task_alloc();
  v0[86] = v94;
  *v94 = v0;
  v94[1] = sub_20CCFFDEC;
  v95 = v0[69];
  v96 = v0[49];
  v97 = v0[7];
  v98 = v0[5];

  return sub_20CD10D34(v96, v95, v98);
}

uint64_t sub_20CCFFDEC()
{
  v2 = *(*v1 + 688);
  v5 = *v1;
  *(*v1 + 696) = v0;

  if (v0)
  {
    v3 = sub_20CD1DFB4;
  }

  else
  {
    v3 = sub_20CCFFF00;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CCFFF00()
{
  v334 = v0;
  v1 = v0[48];
  v2 = v0[35];
  v3 = v0[36];
  sub_20CD1D9A8(v0[49], v1, &qword_27C810E78, &qword_20CD646C8);
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
    v5 = v0[87];
    v6 = v0[64];
    v7 = v0[60];
    v8 = v0[50];
    v9 = v0[51];
    v10 = v0[42];
    sub_20CD1DA10(v0[48], &qword_27C810E78, &qword_20CD646C8);
    (*(v9 + 56))(v10, 1, 1, v8);
    sub_20CD62A34();
    if (v5)
    {
      v11 = v0[85];
      v12 = v0[76];
      v13 = v0[69];
      v15 = v0[63];
      v14 = v0[64];
      v16 = v0[50];
      v17 = v0[51];
      v18 = v0[42];
      sub_20CD1DA10(v0[49], &qword_27C810E78, &qword_20CD646C8);
      v11(v15, v16);
      v11(v14, v16);
      sub_20CD1DA10(v13, &qword_27C810D08, &qword_20CD64280);
      sub_20CD1C87C(v12, type metadata accessor for SnapshotQueryRange);
      if ((*(v17 + 48))(v18, 1, v16) != 1)
      {
        sub_20CD1DA10(v0[42], &qword_27C810DE0, &unk_20CD64800);
      }

      goto LABEL_9;
    }

    v83 = v0[42];
    if ((*(v0[51] + 48))(v83, 1, v0[50]) != 1)
    {
      sub_20CD1DA10(v83, &qword_27C810DE0, &unk_20CD64800);
    }

    v26 = 0;
  }

  else
  {
    v19 = v0[60];
    v20 = v0[50];
    v21 = v0[51];
    v22 = v0[48];
    v23 = v0[42];
    v24 = v0[35];
    v25 = v0[36];
    sub_20CD1DF2C(&qword_28110F720, MEMORY[0x277D0A1E8]);
    sub_20CD62C64();
    (*(v25 + 8))(v22, v24);
    (*(v21 + 56))(v23, 0, 1, v20);
    (*(v21 + 32))(v19, v23, v20);
    v26 = v0[87];
  }

  v27 = v0[63];
  v28 = v0[60];
  v29 = sub_20CD62A94();
  v30 = v0[64];
  if (v26)
  {
    v31 = v0[85];
    v32 = v0[76];
    v33 = v0[69];
    v34 = v0[63];
    v35 = v0[50];
    v36 = v0[49];
    v31(v0[60], v35);
    sub_20CD1DA10(v36, &qword_27C810E78, &qword_20CD646C8);
    v31(v34, v35);
    v31(v30, v35);
    sub_20CD1DA10(v33, &qword_27C810D08, &qword_20CD64280);
    v37 = v32;
LABEL_8:
    sub_20CD1C87C(v37, type metadata accessor for SnapshotQueryRange);
LABEL_9:
    v38 = v0[80];
    v39 = v0[79];
    v40 = v0[76];
    v41 = v0[74];
    v42 = v0[73];
    v43 = v0[72];
    v44 = v0[71];
    v45 = v0[70];
    v46 = v0[69];
    v47 = v0[68];
    v226 = v0[65];
    v227 = v0[64];
    v229 = v0[63];
    v231 = v0[62];
    v233 = v0[61];
    v235 = v0[60];
    v237 = v0[59];
    v239 = v0[58];
    v241 = v0[57];
    v243 = v0[56];
    v245 = v0[55];
    v247 = v0[54];
    v249 = v0[53];
    v251 = v0[52];
    v253 = v0[49];
    v255 = v0[48];
    v257 = v0[47];
    v259 = v0[46];
    v261 = v0[45];
    v263 = v0[44];
    v265 = v0[43];
    v267 = v0[42];
    v269 = v0[41];
    v271 = v0[40];
    v273 = v0[38];
    v275 = v0[37];
    v277 = v0[34];
    v279 = v0[31];
    v281 = v0[30];
    v283 = v0[29];
    v285 = v0[28];
    v287 = v0[27];
    v289 = v0[26];
    v291 = v0[23];
    v293 = v0[22];
    v296 = v0[19];
    v300 = v0[18];
    v306 = v0[15];
    v313 = v0[14];
    v319 = v0[11];
    v323 = v0[10];

    v48 = v0[1];
LABEL_10:

    return v48();
  }

  v327 = v29;
  v50 = v0[84];
  v51 = v0[83];
  v52 = v0[81];
  v53 = v0[60];
  v54 = v0[58];
  v55 = v0[50];
  v51(v0[59], v30, v55);
  v51(v54, v53, v55);
  v56 = sub_20CD63194();
  v57 = sub_20CD633D4();
  v58 = os_log_type_enabled(v56, v57);
  v59 = v0[85];
  v61 = v0[58];
  v60 = v0[59];
  v63 = v0[50];
  v62 = v0[51];
  v320 = v4;
  if (v58)
  {
    v307 = v57;
    v64 = swift_slowAlloc();
    v314 = swift_slowAlloc();
    v333[0] = v314;
    *v64 = 136315650;
    sub_20CD1DF2C(&qword_28110F760, MEMORY[0x277D09F70]);
    v301 = v56;
    v65 = sub_20CD63574();
    v67 = v66;
    v59(v60, v63);
    v68 = sub_20CD6153C(v65, v67, v333);

    *(v64 + 4) = v68;
    *(v64 + 12) = 2080;
    v69 = sub_20CD63574();
    v71 = v70;
    v59(v61, v63);
    v72 = sub_20CD6153C(v69, v71, v333);

    *(v64 + 14) = v72;
    *(v64 + 22) = 2048;
    v73 = v327;
    *(v64 + 24) = v327;
    _os_log_impl(&dword_20CCEA000, v301, v307, "[SnapshotRetriever] Resolved from (%s -> %s), %ld days missing", v64, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v314, -1, -1);
    MEMORY[0x20F3115B0](v64, -1, -1);

    if (v327 > 32)
    {
LABEL_15:
      v74 = v0[85];
      v75 = v0[84];
      v76 = v0[83];
      v321 = v0[69];
      v324 = v0[76];
      v77 = v0[60];
      v78 = v0[50];
      v297 = v0[63];
      v302 = v0[51];
      v308 = v0[49];
      v315 = v0[64];
      type metadata accessor for SnapshotRetriver.QueryFailure(0);
      sub_20CD1DF2C(&qword_27C810DE8, type metadata accessor for SnapshotRetriver.QueryFailure);
      swift_allocError();
      v80 = v79;
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C20, &qword_20CD640C0);
      v82 = *(v81 + 48);
      v76(v80, v77, v78);
      v76(v80 + v82, v297, v78);
      (*(*(v81 - 8) + 56))(v80, 0, 1, v81);
      swift_willThrow();
      v74(v77, v78);
      sub_20CD1DA10(v308, &qword_27C810E78, &qword_20CD646C8);
      v74(v297, v78);
      v74(v315, v78);
      sub_20CD1DA10(v321, &qword_27C810D08, &qword_20CD64280);
      v37 = v324;
      goto LABEL_8;
    }
  }

  else
  {

    v59(v61, v63);
    v59(v60, v63);
    v73 = v327;
    if (v327 > 32)
    {
      goto LABEL_15;
    }
  }

  v84 = v0[60];
  v85 = v0[57];
  sub_20CD62A24();
  v86 = v0[63];
  v87 = v0[57];
  v88 = v0[50];
  sub_20CD1DF2C(&qword_28110F778, MEMORY[0x277D09F70]);
  if (sub_20CD63224())
  {
    v89 = v0[84];
    v90 = v0[83];
    v91 = v0[81];
    v92 = v0[63];
    v93 = v0[55];
    v94 = v0[50];
    v90(v0[56], v0[57], v94);
    v90(v93, v92, v94);
    v95 = sub_20CD63194();
    v96 = sub_20CD633D4();
    v97 = os_log_type_enabled(v95, v96);
    v98 = v0[85];
    v100 = v0[55];
    v99 = v0[56];
    v102 = v0[50];
    v101 = v0[51];
    if (v97)
    {
      v103 = swift_slowAlloc();
      v316 = swift_slowAlloc();
      v333[0] = v316;
      *v103 = 134218498;
      *(v103 + 4) = v73;
      *(v103 + 12) = 2080;
      sub_20CD1DF2C(&qword_28110F760, MEMORY[0x277D09F70]);
      v309 = v95;
      v104 = sub_20CD63574();
      v303 = v96;
      v106 = v105;
      v98(v99, v102);
      v107 = sub_20CD6153C(v104, v106, v333);

      *(v103 + 14) = v107;
      *(v103 + 22) = 2080;
      v108 = sub_20CD63574();
      v110 = v109;
      v98(v100, v102);
      v111 = sub_20CD6153C(v108, v110, v333);

      *(v103 + 24) = v111;
      _os_log_impl(&dword_20CCEA000, v309, v303, "[SnapshotRetriever] Compute remaining gap [%ld] (%s -> %s", v103, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F3115B0](v316, -1, -1);
      MEMORY[0x20F3115B0](v103, -1, -1);
    }

    else
    {

      v98(v100, v102);
      v98(v99, v102);
    }

    v138 = v0[63];
    v139 = v0[57];
    v140 = v0[50];
    result = sub_20CD63224();
    if (result)
    {
      v141 = v0[84];
      v142 = v0[83];
      v143 = v0[68];
      v330 = v0[66];
      v144 = v0[63];
      v146 = v0[50];
      v145 = v0[51];
      v295 = v0[85];
      v299 = v0[47];
      v147 = v0[40];
      v148 = v0[41];
      v149 = v0[39];
      v305 = v0[49];
      v311 = v0[35];
      v142(v148, v0[57], v146);
      v142(v148 + *(v149 + 48), v144, v146);
      sub_20CD1D9A8(v148, v147, &qword_27C810CF0, &unk_20CD64270);
      v150 = *(v149 + 48);
      v151 = *(v145 + 32);
      v151(v143, v147, v146);
      v0[88] = (v145 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v295(v147 + v150, v146);
      sub_20CCF3D20(v148, v147, &qword_27C810CF0, &unk_20CD64270);
      v152 = *(v330 + 36);
      v331 = v143;
      v318 = v152;
      v151(v143 + v152, v147 + *(v149 + 48), v146);
      v295(v147, v146);
      sub_20CD1D9A8(v305, v299, &qword_27C810E78, &qword_20CD646C8);
      if (v320(v299, 1, v311) == 1)
      {
        v153 = v0[84];
        v154 = v0[83];
        v155 = v0[64];
        v156 = v0[53];
        v157 = v0[50];
        v158 = v0[38];
        v312 = v0[47];
        v159 = v0[35];
        v154(v0[54], v155, v157);
        v154(v156, v155, v157);
        sub_20CD1DF2C(&qword_28110F720, MEMORY[0x277D0A1E8]);
        sub_20CD62C74();
        if (v320(v312, 1, v159) != 1)
        {
          sub_20CD1DA10(v0[47], &qword_27C810E78, &qword_20CD646C8);
        }
      }

      else
      {
        (*(v0[36] + 32))(v0[38], v0[47], v0[35]);
      }

      v177 = v0[84];
      v178 = v0[68];
      v179 = v0[30];
      v180 = v0[23];
      (v0[83])(v0[52], v331 + v318, v0[50]);
      sub_20CD626C4();
      sub_20CD62A84();
      v181 = v0[52];
      v183 = v0[30];
      v182 = v0[31];
      v184 = v0[29];
      v185 = v0[24];
      v186 = v0[25];
      v187 = v0[22];
      v188 = *(v0[21] + 8);
      v188(v0[23], v0[20]);
      sub_20CD62594();
      v189 = v185;
      v190 = *(v186 + 8);
      v190(v183, v189);
      sub_20CD626C4();
      sub_20CD62A84();
      v208 = v190;
      v210 = v0[28];
      v209 = v0[29];
      v188(v0[22], v0[20]);
      sub_20CD62614();
      v217 = v0[34];
      v218 = v0[35];
      v219 = v0[31];
      v220 = v0[28];
      v221 = v0[19];
      v208(v0[29], v0[24]);
      sub_20CD624D4();
      v0[89] = sub_20CD1DF2C(&qword_28110F720, MEMORY[0x277D0A1E8]);
      sub_20CD62C94();
      v222 = swift_task_alloc();
      v0[90] = v222;
      *v222 = v0;
      v222[1] = sub_20CD01A98;
      v223 = v0[34];
      v224 = v0[19];
      v225 = v0[6];

      return sub_20CD55850(v223, v224);
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  v112 = v0[85];
  v113 = v0[73];
  v115 = v0[63];
  v114 = v0[64];
  v116 = v0[60];
  v117 = v0[50];
  v325 = v0[69];
  v328 = v0[49];
  v118 = v0[8];
  v119 = v0[9];
  v112(v0[57], v117);
  v112(v116, v117);
  v112(v115, v117);
  v112(v114, v117);
  sub_20CD1DA10(v325, &qword_27C810D08, &qword_20CD64280);
  sub_20CCF3D20(v328, v113, &qword_27C810E78, &qword_20CD646C8);
  v120 = v113 + *(v118 + 36);
  *v120 = 0;
  *(v120 + 8) = 1;
  v121 = *(v119 + 56);
  v121(v113, 0, 1, v118);
  v0[96] = v121;
  v122 = v0[24];
  v123 = v0[25];
  v124 = v0[11];
  sub_20CD1D9A8(v0[76] + *(v0[75] + 20), v124, &qword_27C810CC8, &qword_20CD64160);
  if ((*(v123 + 48))(v124, 1, v122) == 1)
  {
    v125 = v0[73];
    v126 = v0[11];
    v127 = v0[4];
    sub_20CD1C87C(v0[76], type metadata accessor for SnapshotQueryRange);
    sub_20CD1DA10(v126, &qword_27C810CC8, &qword_20CD64160);
    sub_20CCF3D20(v125, v127, &qword_27C810E80, &qword_20CD646D0);
    v128 = v0[80];
    v129 = v0[79];
    v130 = v0[76];
    v131 = v0[74];
    v132 = v0[73];
    v133 = v0[72];
    v134 = v0[71];
    v135 = v0[70];
    v136 = v0[69];
    v137 = v0[68];
    v228 = v0[65];
    v230 = v0[64];
    v232 = v0[63];
    v234 = v0[62];
    v236 = v0[61];
    v238 = v0[60];
    v240 = v0[59];
    v242 = v0[58];
    v244 = v0[57];
    v246 = v0[56];
    v248 = v0[55];
    v250 = v0[54];
    v252 = v0[53];
    v254 = v0[52];
    v256 = v0[49];
    v258 = v0[48];
    v260 = v0[47];
    v262 = v0[46];
    v264 = v0[45];
    v266 = v0[44];
    v268 = v0[43];
    v270 = v0[42];
    v272 = v0[41];
    v274 = v0[40];
    v276 = v0[38];
    v278 = v0[37];
    v280 = v0[34];
    v282 = v0[31];
    v284 = v0[30];
    v286 = v0[29];
    v288 = v0[28];
    v290 = v0[27];
    v292 = v0[26];
    v294 = v0[23];
    v298 = v0[22];
    v304 = v0[19];
    v310 = v0[18];
    v317 = v0[15];
    v322 = v0[14];
    v326 = v0[11];
    v329 = v0[10];

    v48 = v0[1];
    goto LABEL_10;
  }

  v160 = v0[81];
  v162 = v0[26];
  v161 = v0[27];
  v163 = v0[24];
  v164 = v0[25];
  (*(v164 + 32))(v161, v0[11], v163);
  (*(v164 + 16))(v162, v161, v163);
  v165 = sub_20CD63194();
  v166 = sub_20CD633D4();
  v167 = os_log_type_enabled(v165, v166);
  v169 = v0[25];
  v168 = v0[26];
  v170 = v0[24];
  if (v167)
  {
    v171 = swift_slowAlloc();
    v332 = swift_slowAlloc();
    v333[0] = v332;
    *v171 = 136315138;
    sub_20CD1DF2C(&qword_28110F7E8, MEMORY[0x277CC9578]);
    v172 = sub_20CD63574();
    v174 = v173;
    v175 = *(v169 + 8);
    v175(v168, v170);
    v176 = sub_20CD6153C(v172, v174, v333);

    *(v171 + 4) = v176;
    _os_log_impl(&dword_20CCEA000, v165, v166, "[SnapshotRetriever] Apply today's changes: %s)", v171, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v332);
    MEMORY[0x20F3115B0](v332, -1, -1);
    MEMORY[0x20F3115B0](v171, -1, -1);
  }

  else
  {

    v175 = *(v169 + 8);
    v175(v168, v170);
  }

  v0[97] = v175;
  v191 = v0[71];
  v192 = v0[8];
  v193 = v0[9];
  sub_20CD1D9A8(v0[73], v191, &qword_27C810E80, &qword_20CD646D0);
  v194 = *(v193 + 48);
  v0[98] = v194;
  v0[99] = (v193 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v195 = v194(v191, 1, v192);
  v196 = v0[71];
  v197 = v0[45];
  v198 = v0[35];
  v199 = v0[36];
  if (v195 == 1)
  {
    sub_20CD1DA10(v0[71], &qword_27C810E80, &qword_20CD646D0);
    (*(v199 + 56))(v197, 1, 1, v198);
    goto LABEL_38;
  }

  sub_20CD1D9A8(v0[71], v0[45], &qword_27C810E78, &qword_20CD646C8);
  sub_20CD1DA10(v196, &qword_27C810E88, &qword_20CD646E0);
  if ((*(v199 + 48))(v197, 1, v198) == 1)
  {
LABEL_38:
    v200 = v0[54];
    v201 = v0[50];
    v202 = v0[51];
    v203 = v0[45];
    v205 = v0[36];
    v204 = v0[37];
    v206 = v0[35];
    v207 = v0[27];
    sub_20CD62564();
    sub_20CD1DF2C(&qword_28110F720, MEMORY[0x277D0A1E8]);
    sub_20CD62CB4();
    (*(v202 + 8))(v200, v201);
    if ((*(v205 + 48))(v203, 1, v206) != 1)
    {
      sub_20CD1DA10(v0[45], &qword_27C810E78, &qword_20CD646C8);
    }

    goto LABEL_41;
  }

  (*(v0[36] + 32))(v0[37], v0[45], v0[35]);
LABEL_41:
  v211 = v0[35];
  v212 = v0[18];
  v0[100] = sub_20CD1DF2C(&qword_28110F720, MEMORY[0x277D0A1E8]);
  sub_20CD62C94();
  v213 = swift_task_alloc();
  v0[101] = v213;
  *v213 = v0;
  v213[1] = sub_20CD0343C;
  v214 = v0[27];
  v215 = v0[18];
  v216 = v0[6];

  return sub_20CD57A94(v214, v215);
}

uint64_t sub_20CD01A98(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 720);
  v6 = *v2;
  v4[91] = a1;
  v4[92] = v1;

  (*(v3[17] + 8))(v3[19], v3[16]);
  if (v1)
  {
    v7 = sub_20CD01DEC;
  }

  else
  {
    v7 = sub_20CD01C0C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20CD01C0C()
{
  v1 = *(MEMORY[0x277D0A040] + 4);
  v2 = swift_task_alloc();
  *(v0 + 744) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C10, &unk_20CD650C0);
  *v2 = v0;
  v2[1] = sub_20CD01CD4;
  v4 = *(v0 + 728);

  return MEMORY[0x282160B38](v0 + 24, &unk_20CD646F8, v4, v3);
}

uint64_t sub_20CD01CD4(double a1)
{
  v3 = *v2;
  v4 = *(*v2 + 744);
  v7 = *v2;
  *(v3 + 752) = a1;
  *(v3 + 760) = v1;

  if (v1)
  {
    v5 = sub_20CD03030;
  }

  else
  {
    v5 = sub_20CD021E0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20CD01DEC()
{
  v1 = v0[88];
  v2 = v0[85];
  v3 = v0[68];
  v4 = v0[52];
  v5 = v0[50];
  v6 = v0[38];
  v7 = v0[35];
  v8 = v0[36];
  (*(v0[33] + 8))(v0[34], v0[32]);
  v2(v4, v5);
  (*(v8 + 8))(v6, v7);
  sub_20CD1DA10(v3, &qword_27C810D08, &qword_20CD64280);
  v71 = v0[92];
  v9 = v0[88];
  v10 = v0[85];
  v11 = v0[76];
  v12 = v0[69];
  v14 = v0[63];
  v13 = v0[64];
  v15 = v0[60];
  v17 = v0[49];
  v16 = v0[50];
  v10(v0[57], v16);
  v10(v15, v16);
  sub_20CD1DA10(v17, &qword_27C810E78, &qword_20CD646C8);
  v10(v14, v16);
  v10(v13, v16);
  sub_20CD1DA10(v12, &qword_27C810D08, &qword_20CD64280);
  sub_20CD1C87C(v11, type metadata accessor for SnapshotQueryRange);
  v18 = v0[80];
  v19 = v0[79];
  v20 = v0[76];
  v21 = v0[74];
  v22 = v0[73];
  v23 = v0[72];
  v24 = v0[71];
  v25 = v0[70];
  v26 = v0[69];
  v27 = v0[68];
  v30 = v0[65];
  v31 = v0[64];
  v32 = v0[63];
  v33 = v0[62];
  v34 = v0[61];
  v35 = v0[60];
  v36 = v0[59];
  v37 = v0[58];
  v38 = v0[57];
  v39 = v0[56];
  v40 = v0[55];
  v41 = v0[54];
  v42 = v0[53];
  v43 = v0[52];
  v44 = v0[49];
  v45 = v0[48];
  v46 = v0[47];
  v47 = v0[46];
  v48 = v0[45];
  v49 = v0[44];
  v50 = v0[43];
  v51 = v0[42];
  v52 = v0[41];
  v53 = v0[40];
  v54 = v0[38];
  v55 = v0[37];
  v56 = v0[34];
  v57 = v0[31];
  v58 = v0[30];
  v59 = v0[29];
  v60 = v0[28];
  v61 = v0[27];
  v62 = v0[26];
  v63 = v0[23];
  v64 = v0[22];
  v65 = v0[19];
  v66 = v0[18];
  v67 = v0[15];
  v68 = v0[14];
  v69 = v0[11];
  v70 = v0[10];

  v28 = v0[1];

  return v28();
}

uint64_t sub_20CD021E0()
{
  v216 = v0;
  v202 = v0[89];
  v207 = v0[95];
  v1 = v0[82];
  v2 = v0[77];
  v3 = v0[46];
  v4 = v0[38];
  v5 = v0[35];
  v6 = v0[15];
  v7 = v0[5];
  v8 = v0[3];
  sub_20CD62B24();
  sub_20CD62B34();
  sub_20CD62AF4();
  sub_20CD62CC4();
  if (v207)
  {
    v9 = v0[91];
    v198 = v0[88];
    v203 = v0[68];
    v10 = v0[50];
    v190 = v0[85];
    v194 = v0[38];
    v11 = v0[36];
    v182 = v0[52];
    v186 = v0[35];
    v12 = v0[33];
    v13 = v0[34];
    v14 = v0[32];
    v15 = v0[15];
    v17 = v0[12];
    v16 = v0[13];

    (*(v16 + 8))(v15, v17);
    (*(v12 + 8))(v13, v14);
    v190(v182, v10);
    (*(v11 + 8))(v194, v186);
    sub_20CD1DA10(v203, &qword_27C810D08, &qword_20CD64280);
    v18 = v0[88];
    v19 = v0[85];
    v20 = v0[76];
    v21 = v0[69];
    v23 = v0[63];
    v22 = v0[64];
    v24 = v0[60];
    v26 = v0[49];
    v25 = v0[50];
    v19(v0[57], v25);
    v19(v24, v25);
    sub_20CD1DA10(v26, &qword_27C810E78, &qword_20CD646C8);
    v19(v23, v25);
    v19(v22, v25);
    sub_20CD1DA10(v21, &qword_27C810D08, &qword_20CD64280);
    sub_20CD1C87C(v20, type metadata accessor for SnapshotQueryRange);
    v27 = v0[80];
    v28 = v0[79];
    v29 = v0[76];
    v30 = v0[74];
    v31 = v0[73];
    v32 = v0[72];
    v33 = v0[71];
    v34 = v0[70];
    v35 = v0[69];
    v36 = v0[68];
    v107 = v0[65];
    v108 = v0[64];
    v110 = v0[63];
    v112 = v0[62];
    v114 = v0[61];
    v116 = v0[60];
    v118 = v0[59];
    v120 = v0[58];
    v122 = v0[57];
    v124 = v0[56];
    v126 = v0[55];
    v128 = v0[54];
    v130 = v0[53];
    v132 = v0[52];
    v134 = v0[49];
    v136 = v0[48];
    v138 = v0[47];
    v140 = v0[46];
    v142 = v0[45];
    v144 = v0[44];
    v146 = v0[43];
    v148 = v0[42];
    v150 = v0[41];
    v152 = v0[40];
    v155 = v0[38];
    v158 = v0[37];
    v161 = v0[34];
    v164 = v0[31];
    v167 = v0[30];
    v170 = v0[29];
    v173 = v0[28];
    v176 = v0[27];
    v179 = v0[26];
    v183 = v0[23];
    v187 = v0[22];
    v191 = v0[19];
    v195 = v0[18];
    v199 = v0[15];
    v204 = v0[14];
    v210 = v0[11];
    v212 = v0[10];

    v37 = v0[1];
LABEL_5:

    return v37();
  }

  v38 = v0[94];
  v39 = v0[91];
  v40 = v0[88];
  v41 = v0[85];
  v205 = v0[69];
  v208 = v0[73];
  v168 = v0[68];
  v196 = v0[63];
  v200 = v0[64];
  v184 = v0[60];
  v177 = v0[72];
  v180 = v0[57];
  v159 = v0[52];
  v42 = v0[50];
  v188 = v0[49];
  v171 = v0[46];
  v43 = v0[36];
  v162 = v0[35];
  v165 = v0[38];
  v44 = v0[33];
  v153 = v0[32];
  v156 = v0[34];
  v45 = v0[15];
  v47 = v0[12];
  v46 = v0[13];
  v192 = v0[9];
  v174 = v0[8];

  (*(v46 + 8))(v45, v47);
  (*(v44 + 8))(v156, v153);
  v41(v159, v42);
  (*(v43 + 8))(v165, v162);
  sub_20CD1DA10(v168, &qword_27C810D08, &qword_20CD64280);
  (*(v43 + 56))(v171, 0, 1, v162);
  sub_20CCF3D20(v171, v177, &qword_27C810E78, &qword_20CD646C8);
  v48 = v177 + *(v174 + 36);
  *v48 = v38;
  *(v48 + 8) = 0;
  v41(v180, v42);
  v41(v184, v42);
  sub_20CD1DA10(v188, &qword_27C810E78, &qword_20CD646C8);
  v41(v196, v42);
  v41(v200, v42);
  sub_20CD1DA10(v205, &qword_27C810D08, &qword_20CD64280);
  v49 = *(v192 + 56);
  v49(v177, 0, 1, v174);
  sub_20CCF3D20(v177, v208, &qword_27C810E80, &qword_20CD646D0);
  v0[96] = v49;
  v50 = v0[24];
  v51 = v0[25];
  v52 = v0[11];
  sub_20CD1D9A8(v0[76] + *(v0[75] + 20), v52, &qword_27C810CC8, &qword_20CD64160);
  if ((*(v51 + 48))(v52, 1, v50) == 1)
  {
    v53 = v0[73];
    v54 = v0[11];
    v55 = v0[4];
    sub_20CD1C87C(v0[76], type metadata accessor for SnapshotQueryRange);
    sub_20CD1DA10(v54, &qword_27C810CC8, &qword_20CD64160);
    sub_20CCF3D20(v53, v55, &qword_27C810E80, &qword_20CD646D0);
    v56 = v0[80];
    v57 = v0[79];
    v58 = v0[76];
    v59 = v0[74];
    v60 = v0[73];
    v61 = v0[72];
    v62 = v0[71];
    v63 = v0[70];
    v64 = v0[69];
    v65 = v0[68];
    v109 = v0[65];
    v111 = v0[64];
    v113 = v0[63];
    v115 = v0[62];
    v117 = v0[61];
    v119 = v0[60];
    v121 = v0[59];
    v123 = v0[58];
    v125 = v0[57];
    v127 = v0[56];
    v129 = v0[55];
    v131 = v0[54];
    v133 = v0[53];
    v135 = v0[52];
    v137 = v0[49];
    v139 = v0[48];
    v141 = v0[47];
    v143 = v0[46];
    v145 = v0[45];
    v147 = v0[44];
    v149 = v0[43];
    v151 = v0[42];
    v154 = v0[41];
    v157 = v0[40];
    v160 = v0[38];
    v163 = v0[37];
    v166 = v0[34];
    v169 = v0[31];
    v172 = v0[30];
    v175 = v0[29];
    v178 = v0[28];
    v181 = v0[27];
    v185 = v0[26];
    v189 = v0[23];
    v193 = v0[22];
    v197 = v0[19];
    v201 = v0[18];
    v206 = v0[15];
    v209 = v0[14];
    v211 = v0[11];
    v213 = v0[10];

    v37 = v0[1];
    goto LABEL_5;
  }

  v67 = v0[81];
  v69 = v0[26];
  v68 = v0[27];
  v70 = v0[24];
  v71 = v0[25];
  (*(v71 + 32))(v68, v0[11], v70);
  (*(v71 + 16))(v69, v68, v70);
  v72 = sub_20CD63194();
  v73 = sub_20CD633D4();
  v74 = os_log_type_enabled(v72, v73);
  v76 = v0[25];
  v75 = v0[26];
  v77 = v0[24];
  if (v74)
  {
    v78 = swift_slowAlloc();
    v214 = swift_slowAlloc();
    v215 = v214;
    *v78 = 136315138;
    sub_20CD1DF2C(&qword_28110F7E8, MEMORY[0x277CC9578]);
    v79 = sub_20CD63574();
    v81 = v80;
    v82 = *(v76 + 8);
    v82(v75, v77);
    v83 = sub_20CD6153C(v79, v81, &v215);

    *(v78 + 4) = v83;
    _os_log_impl(&dword_20CCEA000, v72, v73, "[SnapshotRetriever] Apply today's changes: %s)", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v214);
    MEMORY[0x20F3115B0](v214, -1, -1);
    MEMORY[0x20F3115B0](v78, -1, -1);
  }

  else
  {

    v82 = *(v76 + 8);
    v82(v75, v77);
  }

  v0[97] = v82;
  v84 = v0[71];
  v85 = v0[8];
  v86 = v0[9];
  sub_20CD1D9A8(v0[73], v84, &qword_27C810E80, &qword_20CD646D0);
  v87 = *(v86 + 48);
  v0[98] = v87;
  v0[99] = (v86 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v88 = v87(v84, 1, v85);
  v89 = v0[71];
  v90 = v0[45];
  v91 = v0[35];
  v92 = v0[36];
  if (v88 == 1)
  {
    sub_20CD1DA10(v0[71], &qword_27C810E80, &qword_20CD646D0);
    (*(v92 + 56))(v90, 1, 1, v91);
    goto LABEL_14;
  }

  sub_20CD1D9A8(v0[71], v0[45], &qword_27C810E78, &qword_20CD646C8);
  sub_20CD1DA10(v89, &qword_27C810E88, &qword_20CD646E0);
  if ((*(v92 + 48))(v90, 1, v91) == 1)
  {
LABEL_14:
    v93 = v0[54];
    v94 = v0[50];
    v95 = v0[51];
    v96 = v0[45];
    v98 = v0[36];
    v97 = v0[37];
    v99 = v0[35];
    v100 = v0[27];
    sub_20CD62564();
    sub_20CD1DF2C(&qword_28110F720, MEMORY[0x277D0A1E8]);
    sub_20CD62CB4();
    (*(v95 + 8))(v93, v94);
    if ((*(v98 + 48))(v96, 1, v99) != 1)
    {
      sub_20CD1DA10(v0[45], &qword_27C810E78, &qword_20CD646C8);
    }

    goto LABEL_17;
  }

  (*(v0[36] + 32))(v0[37], v0[45], v0[35]);
LABEL_17:
  v101 = v0[35];
  v102 = v0[18];
  v0[100] = sub_20CD1DF2C(&qword_28110F720, MEMORY[0x277D0A1E8]);
  sub_20CD62C94();
  v103 = swift_task_alloc();
  v0[101] = v103;
  *v103 = v0;
  v103[1] = sub_20CD0343C;
  v104 = v0[27];
  v105 = v0[18];
  v106 = v0[6];

  return sub_20CD57A94(v104, v105);
}

uint64_t sub_20CD03030()
{
  v1 = v0[91];
  v2 = v0[85];
  v72 = v0[88];
  v74 = v0[68];
  v3 = v0[52];
  v4 = v0[50];
  v5 = v0[38];
  v7 = v0[35];
  v6 = v0[36];
  v9 = v0[33];
  v8 = v0[34];
  v10 = v0[32];

  (*(v9 + 8))(v8, v10);
  v2(v3, v4);
  (*(v6 + 8))(v5, v7);
  sub_20CD1DA10(v74, &qword_27C810D08, &qword_20CD64280);
  v75 = v0[95];
  v11 = v0[88];
  v12 = v0[85];
  v13 = v0[76];
  v14 = v0[69];
  v16 = v0[63];
  v15 = v0[64];
  v17 = v0[60];
  v19 = v0[49];
  v18 = v0[50];
  v12(v0[57], v18);
  v12(v17, v18);
  sub_20CD1DA10(v19, &qword_27C810E78, &qword_20CD646C8);
  v12(v16, v18);
  v12(v15, v18);
  sub_20CD1DA10(v14, &qword_27C810D08, &qword_20CD64280);
  sub_20CD1C87C(v13, type metadata accessor for SnapshotQueryRange);
  v20 = v0[80];
  v21 = v0[79];
  v22 = v0[76];
  v23 = v0[74];
  v24 = v0[73];
  v25 = v0[72];
  v26 = v0[71];
  v27 = v0[70];
  v28 = v0[69];
  v29 = v0[68];
  v32 = v0[65];
  v33 = v0[64];
  v34 = v0[63];
  v35 = v0[62];
  v36 = v0[61];
  v37 = v0[60];
  v38 = v0[59];
  v39 = v0[58];
  v40 = v0[57];
  v41 = v0[56];
  v42 = v0[55];
  v43 = v0[54];
  v44 = v0[53];
  v45 = v0[52];
  v46 = v0[49];
  v47 = v0[48];
  v48 = v0[47];
  v49 = v0[46];
  v50 = v0[45];
  v51 = v0[44];
  v52 = v0[43];
  v53 = v0[42];
  v54 = v0[41];
  v55 = v0[40];
  v56 = v0[38];
  v57 = v0[37];
  v58 = v0[34];
  v59 = v0[31];
  v60 = v0[30];
  v61 = v0[29];
  v62 = v0[28];
  v63 = v0[27];
  v64 = v0[26];
  v65 = v0[23];
  v66 = v0[22];
  v67 = v0[19];
  v68 = v0[18];
  v69 = v0[15];
  v70 = v0[14];
  v71 = v0[11];
  v73 = v0[10];

  v30 = v0[1];

  return v30();
}

uint64_t sub_20CD0343C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 808);
  v6 = *v2;
  v4[102] = a1;
  v4[103] = v1;

  (*(v3[17] + 8))(v3[18], v3[16]);
  if (v1)
  {
    v7 = sub_20CD03790;
  }

  else
  {
    v7 = sub_20CD035B0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20CD035B0()
{
  v1 = *(MEMORY[0x277D0A040] + 4);
  v2 = swift_task_alloc();
  *(v0 + 832) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C10, &unk_20CD650C0);
  *v2 = v0;
  v2[1] = sub_20CD03678;
  v4 = *(v0 + 816);

  return MEMORY[0x282160B38](v0 + 16, &unk_20CD646E8, v4, v3);
}

uint64_t sub_20CD03678(double a1)
{
  v3 = *v2;
  v4 = *(*v2 + 832);
  v7 = *v2;
  *(v3 + 840) = a1;
  *(v3 + 848) = v1;

  if (v1)
  {
    v5 = sub_20CD04434;
  }

  else
  {
    v5 = sub_20CD03AEC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20CD03790()
{
  (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
  v57 = *(v0 + 824);
  v1 = *(v0 + 608);
  v2 = *(v0 + 584);
  v3 = *(v0 + 200) + 8;
  (*(v0 + 776))(*(v0 + 216), *(v0 + 192));
  sub_20CD1DA10(v2, &qword_27C810E80, &qword_20CD646D0);
  sub_20CD1C87C(v1, type metadata accessor for SnapshotQueryRange);
  v4 = *(v0 + 640);
  v5 = *(v0 + 632);
  v6 = *(v0 + 608);
  v7 = *(v0 + 592);
  v8 = *(v0 + 584);
  v9 = *(v0 + 576);
  v10 = *(v0 + 568);
  v11 = *(v0 + 560);
  v12 = *(v0 + 552);
  v13 = *(v0 + 544);
  v16 = *(v0 + 520);
  v17 = *(v0 + 512);
  v18 = *(v0 + 504);
  v19 = *(v0 + 496);
  v20 = *(v0 + 488);
  v21 = *(v0 + 480);
  v22 = *(v0 + 472);
  v23 = *(v0 + 464);
  v24 = *(v0 + 456);
  v25 = *(v0 + 448);
  v26 = *(v0 + 440);
  v27 = *(v0 + 432);
  v28 = *(v0 + 424);
  v29 = *(v0 + 416);
  v30 = *(v0 + 392);
  v31 = *(v0 + 384);
  v32 = *(v0 + 376);
  v33 = *(v0 + 368);
  v34 = *(v0 + 360);
  v35 = *(v0 + 352);
  v36 = *(v0 + 344);
  v37 = *(v0 + 336);
  v38 = *(v0 + 328);
  v39 = *(v0 + 320);
  v40 = *(v0 + 304);
  v41 = *(v0 + 296);
  v42 = *(v0 + 272);
  v43 = *(v0 + 248);
  v44 = *(v0 + 240);
  v45 = *(v0 + 232);
  v46 = *(v0 + 224);
  v47 = *(v0 + 216);
  v48 = *(v0 + 208);
  v49 = *(v0 + 184);
  v50 = *(v0 + 176);
  v51 = *(v0 + 152);
  v52 = *(v0 + 144);
  v53 = *(v0 + 120);
  v54 = *(v0 + 112);
  v55 = *(v0 + 88);
  v56 = *(v0 + 80);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_20CD03AEC()
{
  if (*(*(v0 + 16) + 16))
  {
    v154 = *(v0 + 800);
    v157 = *(v0 + 848);
    v1 = *(v0 + 656);
    v2 = *(v0 + 616);
    v3 = *(v0 + 352);
    v4 = *(v0 + 296);
    v5 = *(v0 + 280);
    v6 = *(v0 + 112);
    v7 = *(v0 + 40);
    sub_20CD62B24();
    sub_20CD62B34();
    sub_20CD62AF4();
    sub_20CD62CC4();
    v8 = *(v0 + 816);
    if (v157)
    {
      v10 = *(v0 + 288);
      v9 = *(v0 + 296);
      v11 = *(v0 + 280);
      v13 = *(v0 + 104);
      v12 = *(v0 + 112);
      v14 = *(v0 + 96);

      (*(v13 + 8))(v12, v14);
      (*(v10 + 8))(v9, v11);
      v15 = *(v0 + 608);
      v16 = *(v0 + 584);
      v17 = *(v0 + 200) + 8;
      (*(v0 + 776))(*(v0 + 216), *(v0 + 192));
      sub_20CD1DA10(v16, &qword_27C810E80, &qword_20CD646D0);
      sub_20CD1C87C(v15, type metadata accessor for SnapshotQueryRange);
      v18 = *(v0 + 640);
      v19 = *(v0 + 632);
      v20 = *(v0 + 608);
      v21 = *(v0 + 592);
      v22 = *(v0 + 584);
      v23 = *(v0 + 576);
      v24 = *(v0 + 568);
      v25 = *(v0 + 560);
      v26 = *(v0 + 552);
      v27 = *(v0 + 544);
      v77 = *(v0 + 520);
      v78 = *(v0 + 512);
      v80 = *(v0 + 504);
      v82 = *(v0 + 496);
      v84 = *(v0 + 488);
      v86 = *(v0 + 480);
      v88 = *(v0 + 472);
      v90 = *(v0 + 464);
      v92 = *(v0 + 456);
      v94 = *(v0 + 448);
      v96 = *(v0 + 440);
      v98 = *(v0 + 432);
      v100 = *(v0 + 424);
      v102 = *(v0 + 416);
      v104 = *(v0 + 392);
      v106 = *(v0 + 384);
      v108 = *(v0 + 376);
      v110 = *(v0 + 368);
      v112 = *(v0 + 360);
      v114 = *(v0 + 352);
      v116 = *(v0 + 344);
      v118 = *(v0 + 336);
      v120 = *(v0 + 328);
      v122 = *(v0 + 320);
      v124 = *(v0 + 304);
      v126 = *(v0 + 296);
      v128 = *(v0 + 272);
      v130 = *(v0 + 248);
      v132 = *(v0 + 240);
      v134 = *(v0 + 232);
      v136 = *(v0 + 224);
      v138 = *(v0 + 216);
      v140 = *(v0 + 208);
      v142 = *(v0 + 184);
      v144 = *(v0 + 176);
      v146 = *(v0 + 152);
      v148 = *(v0 + 144);
      v150 = *(v0 + 120);
      v152 = *(v0 + 112);
      v155 = *(v0 + 88);
      v160 = *(v0 + 80);

      v28 = *(v0 + 8);
      goto LABEL_11;
    }

    v34 = *(v0 + 352);
    v36 = *(v0 + 288);
    v35 = *(v0 + 296);
    v37 = *(v0 + 280);
    v39 = *(v0 + 104);
    v38 = *(v0 + 112);
    v40 = *(v0 + 96);
    v158 = *(v0 + 80);

    (*(v39 + 8))(v38, v40);
    (*(v36 + 8))(v35, v37);
    (*(v36 + 56))(v34, 0, 1, v37);
    sub_20CCF3D20(v34, v158, &qword_27C810E78, &qword_20CD646C8);
  }

  else
  {
    v29 = *(v0 + 816);
    v31 = *(v0 + 288);
    v30 = *(v0 + 296);
    v32 = *(v0 + 280);
    v33 = *(v0 + 80);

    (*(v31 + 32))(v33, v30, v32);
    (*(v31 + 56))(v33, 0, 1, v32);
  }

  v41 = *(v0 + 792);
  v42 = *(v0 + 784);
  v43 = *(v0 + 776);
  v44 = *(v0 + 608);
  v45 = *(v0 + 584);
  v46 = *(v0 + 560);
  v47 = *(v0 + 344);
  v48 = *(v0 + 216);
  v49 = *(v0 + 192);
  v50 = *(v0 + 200);
  v51 = *(v0 + 80);
  v52 = *(v0 + 64);
  v53 = v51 + *(v52 + 36);
  *v53 = *(v0 + 840);
  *(v53 + 8) = 0;
  v43(v48, v49);
  sub_20CD1C87C(v44, type metadata accessor for SnapshotQueryRange);
  sub_20CD1D9A8(v51, v47, &qword_27C810E78, &qword_20CD646C8);
  sub_20CCF3D20(v45, v46, &qword_27C810E80, &qword_20CD646D0);
  v54 = v42(v46, 1, v52);
  v55 = *(v0 + 560);
  if (v54 == 1)
  {
    sub_20CD1DA10(v55, &qword_27C810E80, &qword_20CD646D0);
    v56 = 0.0;
  }

  else
  {
    v57 = v55 + *(*(v0 + 64) + 36);
    v56 = *v57;
    v58 = *(v57 + 8);
    sub_20CD1DA10(v55, &qword_27C810E88, &qword_20CD646E0);
    if (v58)
    {
      v56 = 0.0;
    }
  }

  v59 = *(v0 + 840);
  v60 = *(v0 + 768);
  v61 = *(v0 + 344);
  v62 = *(v0 + 72);
  v63 = *(v0 + 64);
  v64 = *(v0 + 32);
  sub_20CD1DA10(*(v0 + 80), &qword_27C810E88, &qword_20CD646E0);
  sub_20CCF3D20(v61, v64, &qword_27C810E78, &qword_20CD646C8);
  v65 = v64 + *(v63 + 36);
  *v65 = v56 + v59;
  *(v65 + 8) = 0;
  v60(v64, 0, 1, v63);
  v66 = *(v0 + 640);
  v67 = *(v0 + 632);
  v68 = *(v0 + 608);
  v69 = *(v0 + 592);
  v70 = *(v0 + 584);
  v71 = *(v0 + 576);
  v72 = *(v0 + 568);
  v73 = *(v0 + 560);
  v74 = *(v0 + 552);
  v75 = *(v0 + 544);
  v79 = *(v0 + 520);
  v81 = *(v0 + 512);
  v83 = *(v0 + 504);
  v85 = *(v0 + 496);
  v87 = *(v0 + 488);
  v89 = *(v0 + 480);
  v91 = *(v0 + 472);
  v93 = *(v0 + 464);
  v95 = *(v0 + 456);
  v97 = *(v0 + 448);
  v99 = *(v0 + 440);
  v101 = *(v0 + 432);
  v103 = *(v0 + 424);
  v105 = *(v0 + 416);
  v107 = *(v0 + 392);
  v109 = *(v0 + 384);
  v111 = *(v0 + 376);
  v113 = *(v0 + 368);
  v115 = *(v0 + 360);
  v117 = *(v0 + 352);
  v119 = *(v0 + 344);
  v121 = *(v0 + 336);
  v123 = *(v0 + 328);
  v125 = *(v0 + 320);
  v127 = *(v0 + 304);
  v129 = *(v0 + 296);
  v131 = *(v0 + 272);
  v133 = *(v0 + 248);
  v135 = *(v0 + 240);
  v137 = *(v0 + 232);
  v139 = *(v0 + 224);
  v141 = *(v0 + 216);
  v143 = *(v0 + 208);
  v145 = *(v0 + 184);
  v147 = *(v0 + 176);
  v149 = *(v0 + 152);
  v151 = *(v0 + 144);
  v153 = *(v0 + 120);
  v156 = *(v0 + 112);
  v159 = *(v0 + 88);
  v161 = *(v0 + 80);

  v28 = *(v0 + 8);
LABEL_11:

  return v28();
}

uint64_t sub_20CD04434()
{
  v1 = *(v0 + 816);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 280);

  (*(v3 + 8))(v2, v4);
  v61 = *(v0 + 848);
  v5 = *(v0 + 608);
  v6 = *(v0 + 584);
  v7 = *(v0 + 200) + 8;
  (*(v0 + 776))(*(v0 + 216), *(v0 + 192));
  sub_20CD1DA10(v6, &qword_27C810E80, &qword_20CD646D0);
  sub_20CD1C87C(v5, type metadata accessor for SnapshotQueryRange);
  v8 = *(v0 + 640);
  v9 = *(v0 + 632);
  v10 = *(v0 + 608);
  v11 = *(v0 + 592);
  v12 = *(v0 + 584);
  v13 = *(v0 + 576);
  v14 = *(v0 + 568);
  v15 = *(v0 + 560);
  v16 = *(v0 + 552);
  v17 = *(v0 + 544);
  v20 = *(v0 + 520);
  v21 = *(v0 + 512);
  v22 = *(v0 + 504);
  v23 = *(v0 + 496);
  v24 = *(v0 + 488);
  v25 = *(v0 + 480);
  v26 = *(v0 + 472);
  v27 = *(v0 + 464);
  v28 = *(v0 + 456);
  v29 = *(v0 + 448);
  v30 = *(v0 + 440);
  v31 = *(v0 + 432);
  v32 = *(v0 + 424);
  v33 = *(v0 + 416);
  v34 = *(v0 + 392);
  v35 = *(v0 + 384);
  v36 = *(v0 + 376);
  v37 = *(v0 + 368);
  v38 = *(v0 + 360);
  v39 = *(v0 + 352);
  v40 = *(v0 + 344);
  v41 = *(v0 + 336);
  v42 = *(v0 + 328);
  v43 = *(v0 + 320);
  v44 = *(v0 + 304);
  v45 = *(v0 + 296);
  v46 = *(v0 + 272);
  v47 = *(v0 + 248);
  v48 = *(v0 + 240);
  v49 = *(v0 + 232);
  v50 = *(v0 + 224);
  v51 = *(v0 + 216);
  v52 = *(v0 + 208);
  v53 = *(v0 + 184);
  v54 = *(v0 + 176);
  v55 = *(v0 + 152);
  v56 = *(v0 + 144);
  v57 = *(v0 + 120);
  v58 = *(v0 + 112);
  v59 = *(v0 + 88);
  v60 = *(v0 + 80);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_20CD047A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E38, &qword_20CD64620);
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CC8, &qword_20CD64160) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v9 = sub_20CD62FE4();
  v4[12] = v9;
  v10 = *(v9 - 8);
  v4[13] = v10;
  v11 = *(v10 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v12 = sub_20CD62E94();
  v4[16] = v12;
  v13 = *(v12 - 8);
  v4[17] = v13;
  v14 = *(v13 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v15 = sub_20CD626F4();
  v4[20] = v15;
  v16 = *(v15 - 8);
  v4[21] = v16;
  v17 = *(v16 + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v18 = sub_20CD62654();
  v4[24] = v18;
  v19 = *(v18 - 8);
  v4[25] = v19;
  v20 = *(v19 + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v21 = sub_20CD62514();
  v4[32] = v21;
  v22 = *(v21 - 8);
  v4[33] = v22;
  v23 = *(v22 + 64) + 15;
  v4[34] = swift_task_alloc();
  v24 = sub_20CD62B44();
  v4[35] = v24;
  v25 = *(v24 - 8);
  v4[36] = v25;
  v26 = *(v25 + 64) + 15;
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF0, &unk_20CD64270);
  v4[39] = v27;
  v28 = *(*(v27 - 8) + 64) + 15;
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810DE0, &unk_20CD64800) - 8) + 64) + 15;
  v4[42] = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E28, &unk_20CD64A10) - 8) + 64) + 15;
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v31 = sub_20CD62AB4();
  v4[50] = v31;
  v32 = *(v31 - 8);
  v4[51] = v32;
  v33 = *(v32 + 64) + 15;
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v34 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810CF8, &unk_20CD64540) - 8) + 64) + 15;
  v4[65] = swift_task_alloc();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v4[66] = v35;
  v36 = *(v35 - 8);
  v4[67] = v36;
  v37 = *(v36 + 64) + 15;
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v38 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810E30, &qword_20CD64610) - 8) + 64) + 15;
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  v39 = *(*(sub_20CD62CE4() - 8) + 64) + 15;
  v4[74] = swift_task_alloc();
  Range = type metadata accessor for SnapshotQueryRange();
  v4[75] = Range;
  v41 = *(*(Range - 8) + 64) + 15;
  v4[76] = swift_task_alloc();
  v42 = sub_20CD62D24();
  v4[77] = v42;
  v43 = *(v42 - 8);
  v4[78] = v43;
  v44 = *(v43 + 64) + 15;
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD04EF4, 0, 0);
}

uint64_t sub_20CD04EF4()
{
  v169 = v0;
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v1 = v0[80];
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[5];
  v5 = sub_20CD631B4();
  v0[81] = __swift_project_value_buffer(v5, qword_28110F878);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  v7 = sub_20CD63194();
  v8 = sub_20CD633D4();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[80];
  if (v9)
  {
    v11 = v0[79];
    v12 = v0[78];
    v13 = v0[77];
    v14 = swift_slowAlloc();
    v164 = swift_slowAlloc();
    v168[0] = v164;
    *v14 = 136315138;
    v6(v11, v10, v13);
    v15 = sub_20CD63264();
    v17 = v16;
    (*(v12 + 8))(v10, v13);
    v18 = sub_20CD6153C(v15, v17, v168);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_20CCEA000, v7, v8, "[SnapshotRetriever] execute query %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v164);
    MEMORY[0x20F3115B0](v164, -1, -1);
    MEMORY[0x20F3115B0](v14, -1, -1);
  }

  else
  {
    v19 = v0[78];
    v20 = v0[77];

    (*(v19 + 8))(v10, v20);
  }

  v21 = v0[77];
  v22 = v0[76];
  v23 = v0[74];
  v24 = v0[5];
  v0[82] = sub_20CD1DF2C(&qword_28110F6E0, MEMORY[0x277D0A388]);
  sub_20CD62B14();
  sub_20CCEEFC0(v23, v22);
  v26 = v0[67];
  v27 = v0[66];
  v28 = v0[65];
  sub_20CD1D9A8(v0[76], v28, &qword_27C810CF8, &unk_20CD64540);
  v29 = (*(v26 + 48))(v28, 1, v27);
  if (v29 == 1)
  {
    v30 = v0[73];
    v31 = v0[8];
    v32 = v0[9];
    sub_20CD1DA10(v0[65], &qword_27C810CF8, &unk_20CD64540);
    v33 = *(v32 + 56);
    v33(v30, 1, 1, v31);
    v0[96] = v33;
    v34 = v0[24];
    v35 = v0[25];
    v36 = v0[11];
    sub_20CD1D9A8(v0[76] + *(v0[75] + 20), v36, &qword_27C810CC8, &qword_20CD64160);
    if ((*(v35 + 48))(v36, 1, v34) == 1)
    {
      v37 = v0[73];
      v38 = v0[11];
      v39 = v0[4];
      sub_20CD1C87C(v0[76], type metadata accessor for SnapshotQueryRange);
      sub_20CD1DA10(v38, &qword_27C810CC8, &qword_20CD64160);
      sub_20CCF3D20(v37, v39, &qword_27C810E30, &qword_20CD64610);
      v40 = v0[80];
      v41 = v0[79];
      v42 = v0[76];
      v43 = v0[74];
      v44 = v0[73];
      v45 = v0[72];
      v46 = v0[71];
      v47 = v0[70];
      v48 = v0[69];
      v49 = v0[68];
      v122 = v0[65];
      v123 = v0[64];
      v124 = v0[63];
      v125 = v0[62];
      v126 = v0[61];
      v127 = v0[60];
      v128 = v0[59];
      v129 = v0[58];
      v130 = v0[57];
      v131 = v0[56];
      v132 = v0[55];
      v133 = v0[54];
      v134 = v0[53];
      v135 = v0[52];
      v136 = v0[49];
      v137 = v0[48];
      v138 = v0[47];
      v139 = v0[46];
      v140 = v0[45];
      v141 = v0[44];
      v142 = v0[43];
      v143 = v0[42];
      v144 = v0[41];
      v145 = v0[40];
      v146 = v0[38];
      v147 = v0[37];
      v148 = v0[34];
      v149 = v0[31];
      v150 = v0[30];
      v151 = v0[29];
      v152 = v0[28];
      v153 = v0[27];
      v154 = v0[26];
      v155 = v0[23];
      v156 = v0[22];
      v157 = v0[19];
      v158 = v0[18];
      v159 = v0[15];
      v160 = v0[14];
      v162 = v0[11];
      v165 = v0[10];

      v50 = v0[1];

      return v50();
    }

    v77 = v0[81];
    v79 = v0[26];
    v78 = v0[27];
    v80 = v0[24];
    v81 = v0[25];
    (*(v81 + 32))(v78, v0[11], v80);
    (*(v81 + 16))(v79, v78, v80);
    v82 = sub_20CD63194();
    v83 = sub_20CD633D4();
    v84 = os_log_type_enabled(v82, v83);
    v86 = v0[25];
    v85 = v0[26];
    v87 = v0[24];
    if (v84)
    {
      v88 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      v168[0] = v167;
      *v88 = 136315138;
      sub_20CD1DF2C(&qword_28110F7E8, MEMORY[0x277CC9578]);
      v89 = sub_20CD63574();
      v91 = v90;
      v92 = *(v86 + 8);
      v92(v85, v87);
      v93 = sub_20CD6153C(v89, v91, v168);

      *(v88 + 4) = v93;
      _os_log_impl(&dword_20CCEA000, v82, v83, "[SnapshotRetriever] Apply today's changes: %s)", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v167);
      MEMORY[0x20F3115B0](v167, -1, -1);
      MEMORY[0x20F3115B0](v88, -1, -1);
    }

    else
    {

      v92 = *(v86 + 8);
      v92(v85, v87);
    }

    v0[97] = v92;
    v99 = v0[71];
    v100 = v0[8];
    v101 = v0[9];
    sub_20CD1D9A8(v0[73], v99, &qword_27C810E30, &qword_20CD64610);
    v102 = *(v101 + 48);
    v0[98] = v102;
    v0[99] = (v101 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v103 = v102(v99, 1, v100);
    v104 = v0[71];
    v105 = v0[45];
    v106 = v0[35];
    v107 = v0[36];
    if (v103 == 1)
    {
      sub_20CD1DA10(v0[71], &qword_27C810E30, &qword_20CD64610);
      (*(v107 + 56))(v105, 1, 1, v106);
    }

    else
    {
      sub_20CD1D9A8(v0[71], v0[45], &qword_27C810E28, &unk_20CD64A10);
      sub_20CD1DA10(v104, &qword_27C810E38, &qword_20CD64620);
      if ((*(v107 + 48))(v105, 1, v106) != 1)
      {
        (*(v0[36] + 32))(v0[37], v0[45], v0[35]);
LABEL_28:
        v116 = v0[35];
        v117 = v0[18];
        v0[100] = sub_20CD1DF2C(&qword_28110F758, MEMORY[0x277D0A038]);
        sub_20CD62C94();
        v118 = swift_task_alloc();
        v0[101] = v118;
        *v118 = v0;
        v118[1] = sub_20CD098B4;
        v119 = v0[27];
        v120 = v0[18];
        v121 = v0[6];

        return sub_20CD57A94(v119, v120);
      }
    }

    v108 = v0[54];
    v109 = v0[50];
    v110 = v0[51];
    v111 = v0[45];
    v113 = v0[36];
    v112 = v0[37];
    v114 = v0[35];
    v115 = v0[27];
    sub_20CD62564();
    sub_20CD1DF2C(&qword_28110F758, MEMORY[0x277D0A038]);
    sub_20CD62CB4();
    (*(v110 + 8))(v108, v109);
    if ((*(v113 + 48))(v111, 1, v114) != 1)
    {
      sub_20CD1DA10(v0[45], &qword_27C810E28, &unk_20CD64A10);
    }

    goto LABEL_28;
  }

  v51 = v0[69];
  v52 = v0[66];
  v54 = v0[63];
  v53 = v0[64];
  v56 = v0[61];
  v55 = v0[62];
  v57 = v0[50];
  v58 = v0[51];
  sub_20CCF3D20(v0[65], v51, &qword_27C810D08, &qword_20CD64280);
  v59 = *(v58 + 16);
  v0[83] = v59;
  v0[84] = (v58 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v59(v53, v51, v57);
  v59(v54, v51 + *(v52 + 36), v57);
  v59(v55, v53, v57);
  v59(v56, v54, v57);
  v60 = sub_20CD63194();
  v61 = sub_20CD633D4();
  v62 = os_log_type_enabled(v60, v61);
  v64 = v0[61];
  v63 = v0[62];
  v66 = v0[50];
  v65 = v0[51];
  if (v62)
  {
    v163 = v61;
    v67 = swift_slowAlloc();
    v166 = swift_slowAlloc();
    v168[0] = v166;
    *v67 = 136315394;
    sub_20CD1DF2C(&qword_28110F760, MEMORY[0x277D09F70]);
    v68 = sub_20CD63574();
    v70 = v69;
    v161 = v60;
    v71 = *(v65 + 8);
    v71(v63, v66);
    v72 = sub_20CD6153C(v68, v70, v168);

    *(v67 + 4) = v72;
    *(v67 + 12) = 2080;
    v73 = sub_20CD63574();
    v75 = v74;
    v71(v64, v66);
    v76 = sub_20CD6153C(v73, v75, v168);

    *(v67 + 14) = v76;
    _os_log_impl(&dword_20CCEA000, v161, v163, "[SnapshotRetriever] Fetching closest properties (%s -> %s)", v67, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v166, -1, -1);
    MEMORY[0x20F3115B0](v67, -1, -1);
  }

  else
  {

    v71 = *(v65 + 8);
    v71(v64, v66);
    v71(v63, v66);
  }

  v0[85] = v71;
  v94 = swift_task_alloc();
  v0[86] = v94;
  *v94 = v0;
  v94[1] = sub_20CD05F08;
  v95 = v0[69];
  v96 = v0[49];
  v97 = v0[7];
  v98 = v0[5];

  return sub_20CD11F94(v96, v95, v98);
}

uint64_t sub_20CD05F08()
{
  v2 = *(*v1 + 688);
  v5 = *v1;
  *(*v1 + 696) = v0;

  if (v0)
  {
    v3 = sub_20CD07BB4;
  }

  else
  {
    v3 = sub_20CD0601C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CD0601C()
{
  v334 = v0;
  v1 = v0[48];
  v2 = v0[35];
  v3 = v0[36];
  sub_20CD1D9A8(v0[49], v1, &qword_27C810E28, &unk_20CD64A10);
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
    v5 = v0[87];
    v6 = v0[64];
    v7 = v0[60];
    v8 = v0[50];
    v9 = v0[51];
    v10 = v0[42];
    sub_20CD1DA10(v0[48], &qword_27C810E28, &unk_20CD64A10);
    (*(v9 + 56))(v10, 1, 1, v8);
    sub_20CD62A34();
    if (v5)
    {
      v11 = v0[85];
      v12 = v0[76];
      v13 = v0[69];
      v15 = v0[63];
      v14 = v0[64];
      v16 = v0[50];
      v17 = v0[51];
      v18 = v0[42];
      sub_20CD1DA10(v0[49], &qword_27C810E28, &unk_20CD64A10);
      v11(v15, v16);
      v11(v14, v16);
      sub_20CD1DA10(v13, &qword_27C810D08, &qword_20CD64280);
      sub_20CD1C87C(v12, type metadata accessor for SnapshotQueryRange);
      if ((*(v17 + 48))(v18, 1, v16) != 1)
      {
        sub_20CD1DA10(v0[42], &qword_27C810DE0, &unk_20CD64800);
      }

      goto LABEL_9;
    }

    v83 = v0[42];
    if ((*(v0[51] + 48))(v83, 1, v0[50]) != 1)
    {
      sub_20CD1DA10(v83, &qword_27C810DE0, &unk_20CD64800);
    }

    v26 = 0;
  }

  else
  {
    v19 = v0[60];
    v20 = v0[50];
    v21 = v0[51];
    v22 = v0[48];
    v23 = v0[42];
    v24 = v0[35];
    v25 = v0[36];
    sub_20CD1DF2C(&qword_28110F758, MEMORY[0x277D0A038]);
    sub_20CD62C64();
    (*(v25 + 8))(v22, v24);
    (*(v21 + 56))(v23, 0, 1, v20);
    (*(v21 + 32))(v19, v23, v20);
    v26 = v0[87];
  }

  v27 = v0[63];
  v28 = v0[60];
  v29 = sub_20CD62A94();
  v30 = v0[64];
  if (v26)
  {
    v31 = v0[85];
    v32 = v0[76];
    v33 = v0[69];
    v34 = v0[63];
    v35 = v0[50];
    v36 = v0[49];
    v31(v0[60], v35);
    sub_20CD1DA10(v36, &qword_27C810E28, &unk_20CD64A10);
    v31(v34, v35);
    v31(v30, v35);
    sub_20CD1DA10(v33, &qword_27C810D08, &qword_20CD64280);
    v37 = v32;
LABEL_8:
    sub_20CD1C87C(v37, type metadata accessor for SnapshotQueryRange);
LABEL_9:
    v38 = v0[80];
    v39 = v0[79];
    v40 = v0[76];
    v41 = v0[74];
    v42 = v0[73];
    v43 = v0[72];
    v44 = v0[71];
    v45 = v0[70];
    v46 = v0[69];
    v47 = v0[68];
    v226 = v0[65];
    v227 = v0[64];
    v229 = v0[63];
    v231 = v0[62];
    v233 = v0[61];
    v235 = v0[60];
    v237 = v0[59];
    v239 = v0[58];
    v241 = v0[57];
    v243 = v0[56];
    v245 = v0[55];
    v247 = v0[54];
    v249 = v0[53];
    v251 = v0[52];
    v253 = v0[49];
    v255 = v0[48];
    v257 = v0[47];
    v259 = v0[46];
    v261 = v0[45];
    v263 = v0[44];
    v265 = v0[43];
    v267 = v0[42];
    v269 = v0[41];
    v271 = v0[40];
    v273 = v0[38];
    v275 = v0[37];
    v277 = v0[34];
    v279 = v0[31];
    v281 = v0[30];
    v283 = v0[29];
    v285 = v0[28];
    v287 = v0[27];
    v289 = v0[26];
    v291 = v0[23];
    v293 = v0[22];
    v296 = v0[19];
    v300 = v0[18];
    v306 = v0[15];
    v313 = v0[14];
    v319 = v0[11];
    v323 = v0[10];

    v48 = v0[1];
LABEL_10:

    return v48();
  }

  v327 = v29;
  v50 = v0[84];
  v51 = v0[83];
  v52 = v0[81];
  v53 = v0[60];
  v54 = v0[58];
  v55 = v0[50];
  v51(v0[59], v30, v55);
  v51(v54, v53, v55);
  v56 = sub_20CD63194();
  v57 = sub_20CD633D4();
  v58 = os_log_type_enabled(v56, v57);
  v59 = v0[85];
  v61 = v0[58];
  v60 = v0[59];
  v63 = v0[50];
  v62 = v0[51];
  v320 = v4;
  if (v58)
  {
    v307 = v57;
    v64 = swift_slowAlloc();
    v314 = swift_slowAlloc();
    v333[0] = v314;
    *v64 = 136315650;
    sub_20CD1DF2C(&qword_28110F760, MEMORY[0x277D09F70]);
    v301 = v56;
    v65 = sub_20CD63574();
    v67 = v66;
    v59(v60, v63);
    v68 = sub_20CD6153C(v65, v67, v333);

    *(v64 + 4) = v68;
    *(v64 + 12) = 2080;
    v69 = sub_20CD63574();
    v71 = v70;
    v59(v61, v63);
    v72 = sub_20CD6153C(v69, v71, v333);

    *(v64 + 14) = v72;
    *(v64 + 22) = 2048;
    v73 = v327;
    *(v64 + 24) = v327;
    _os_log_impl(&dword_20CCEA000, v301, v307, "[SnapshotRetriever] Resolved from (%s -> %s), %ld days missing", v64, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v314, -1, -1);
    MEMORY[0x20F3115B0](v64, -1, -1);

    if (v327 > 32)
    {
LABEL_15:
      v74 = v0[85];
      v75 = v0[84];
      v76 = v0[83];
      v321 = v0[69];
      v324 = v0[76];
      v77 = v0[60];
      v78 = v0[50];
      v297 = v0[63];
      v302 = v0[51];
      v308 = v0[49];
      v315 = v0[64];
      type metadata accessor for SnapshotRetriver.QueryFailure(0);
      sub_20CD1DF2C(&qword_27C810DE8, type metadata accessor for SnapshotRetriver.QueryFailure);
      swift_allocError();
      v80 = v79;
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C20, &qword_20CD640C0);
      v82 = *(v81 + 48);
      v76(v80, v77, v78);
      v76(v80 + v82, v297, v78);
      (*(*(v81 - 8) + 56))(v80, 0, 1, v81);
      swift_willThrow();
      v74(v77, v78);
      sub_20CD1DA10(v308, &qword_27C810E28, &unk_20CD64A10);
      v74(v297, v78);
      v74(v315, v78);
      sub_20CD1DA10(v321, &qword_27C810D08, &qword_20CD64280);
      v37 = v324;
      goto LABEL_8;
    }
  }

  else
  {

    v59(v61, v63);
    v59(v60, v63);
    v73 = v327;
    if (v327 > 32)
    {
      goto LABEL_15;
    }
  }

  v84 = v0[60];
  v85 = v0[57];
  sub_20CD62A24();
  v86 = v0[63];
  v87 = v0[57];
  v88 = v0[50];
  sub_20CD1DF2C(&qword_28110F778, MEMORY[0x277D09F70]);
  if (sub_20CD63224())
  {
    v89 = v0[84];
    v90 = v0[83];
    v91 = v0[81];
    v92 = v0[63];
    v93 = v0[55];
    v94 = v0[50];
    v90(v0[56], v0[57], v94);
    v90(v93, v92, v94);
    v95 = sub_20CD63194();
    v96 = sub_20CD633D4();
    v97 = os_log_type_enabled(v95, v96);
    v98 = v0[85];
    v100 = v0[55];
    v99 = v0[56];
    v102 = v0[50];
    v101 = v0[51];
    if (v97)
    {
      v103 = swift_slowAlloc();
      v316 = swift_slowAlloc();
      v333[0] = v316;
      *v103 = 134218498;
      *(v103 + 4) = v73;
      *(v103 + 12) = 2080;
      sub_20CD1DF2C(&qword_28110F760, MEMORY[0x277D09F70]);
      v309 = v95;
      v104 = sub_20CD63574();
      v303 = v96;
      v106 = v105;
      v98(v99, v102);
      v107 = sub_20CD6153C(v104, v106, v333);

      *(v103 + 14) = v107;
      *(v103 + 22) = 2080;
      v108 = sub_20CD63574();
      v110 = v109;
      v98(v100, v102);
      v111 = sub_20CD6153C(v108, v110, v333);

      *(v103 + 24) = v111;
      _os_log_impl(&dword_20CCEA000, v309, v303, "[SnapshotRetriever] Compute remaining gap [%ld] (%s -> %s", v103, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F3115B0](v316, -1, -1);
      MEMORY[0x20F3115B0](v103, -1, -1);
    }

    else
    {

      v98(v100, v102);
      v98(v99, v102);
    }

    v138 = v0[63];
    v139 = v0[57];
    v140 = v0[50];
    result = sub_20CD63224();
    if (result)
    {
      v141 = v0[84];
      v142 = v0[83];
      v143 = v0[68];
      v330 = v0[66];
      v144 = v0[63];
      v146 = v0[50];
      v145 = v0[51];
      v295 = v0[85];
      v299 = v0[47];
      v147 = v0[40];
      v148 = v0[41];
      v149 = v0[39];
      v305 = v0[49];
      v311 = v0[35];
      v142(v148, v0[57], v146);
      v142(v148 + *(v149 + 48), v144, v146);
      sub_20CD1D9A8(v148, v147, &qword_27C810CF0, &unk_20CD64270);
      v150 = *(v149 + 48);
      v151 = *(v145 + 32);
      v151(v143, v147, v146);
      v0[88] = (v145 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v295(v147 + v150, v146);
      sub_20CCF3D20(v148, v147, &qword_27C810CF0, &unk_20CD64270);
      v152 = *(v330 + 36);
      v331 = v143;
      v318 = v152;
      v151(v143 + v152, v147 + *(v149 + 48), v146);
      v295(v147, v146);
      sub_20CD1D9A8(v305, v299, &qword_27C810E28, &unk_20CD64A10);
      if (v320(v299, 1, v311) == 1)
      {
        v153 = v0[84];
        v154 = v0[83];
        v155 = v0[64];
        v156 = v0[53];
        v157 = v0[50];
        v158 = v0[38];
        v312 = v0[47];
        v159 = v0[35];
        v154(v0[54], v155, v157);
        v154(v156, v155, v157);
        sub_20CD1DF2C(&qword_28110F758, MEMORY[0x277D0A038]);
        sub_20CD62C74();
        if (v320(v312, 1, v159) != 1)
        {
          sub_20CD1DA10(v0[47], &qword_27C810E28, &unk_20CD64A10);
        }
      }

      else
      {
        (*(v0[36] + 32))(v0[38], v0[47], v0[35]);
      }

      v177 = v0[84];
      v178 = v0[68];
      v179 = v0[30];
      v180 = v0[23];
      (v0[83])(v0[52], v331 + v318, v0[50]);
      sub_20CD626C4();
      sub_20CD62A84();
      v181 = v0[52];
      v183 = v0[30];
      v182 = v0[31];
      v184 = v0[29];
      v185 = v0[24];
      v186 = v0[25];
      v187 = v0[22];
      v188 = *(v0[21] + 8);
      v188(v0[23], v0[20]);
      sub_20CD62594();
      v189 = v185;
      v190 = *(v186 + 8);
      v190(v183, v189);
      sub_20CD626C4();
      sub_20CD62A84();
      v208 = v190;
      v210 = v0[28];
      v209 = v0[29];
      v188(v0[22], v0[20]);
      sub_20CD62614();
      v217 = v0[34];
      v218 = v0[35];
      v219 = v0[31];
      v220 = v0[28];
      v221 = v0[19];
      v208(v0[29], v0[24]);
      sub_20CD624D4();
      v0[89] = sub_20CD1DF2C(&qword_28110F758, MEMORY[0x277D0A038]);
      sub_20CD62C94();
      v222 = swift_task_alloc();
      v0[90] = v222;
      *v222 = v0;
      v222[1] = sub_20CD07F10;
      v223 = v0[34];
      v224 = v0[19];
      v225 = v0[6];

      return sub_20CD55850(v223, v224);
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  v112 = v0[85];
  v113 = v0[73];
  v115 = v0[63];
  v114 = v0[64];
  v116 = v0[60];
  v117 = v0[50];
  v325 = v0[69];
  v328 = v0[49];
  v118 = v0[8];
  v119 = v0[9];
  v112(v0[57], v117);
  v112(v116, v117);
  v112(v115, v117);
  v112(v114, v117);
  sub_20CD1DA10(v325, &qword_27C810D08, &qword_20CD64280);
  sub_20CCF3D20(v328, v113, &qword_27C810E28, &unk_20CD64A10);
  v120 = v113 + *(v118 + 36);
  *v120 = 0;
  *(v120 + 8) = 1;
  v121 = *(v119 + 56);
  v121(v113, 0, 1, v118);
  v0[96] = v121;
  v122 = v0[24];
  v123 = v0[25];
  v124 = v0[11];
  sub_20CD1D9A8(v0[76] + *(v0[75] + 20), v124, &qword_27C810CC8, &qword_20CD64160);
  if ((*(v123 + 48))(v124, 1, v122) == 1)
  {
    v125 = v0[73];
    v126 = v0[11];
    v127 = v0[4];
    sub_20CD1C87C(v0[76], type metadata accessor for SnapshotQueryRange);
    sub_20CD1DA10(v126, &qword_27C810CC8, &qword_20CD64160);
    sub_20CCF3D20(v125, v127, &qword_27C810E30, &qword_20CD64610);
    v128 = v0[80];
    v129 = v0[79];
    v130 = v0[76];
    v131 = v0[74];
    v132 = v0[73];
    v133 = v0[72];
    v134 = v0[71];
    v135 = v0[70];
    v136 = v0[69];
    v137 = v0[68];
    v228 = v0[65];
    v230 = v0[64];
    v232 = v0[63];
    v234 = v0[62];
    v236 = v0[61];
    v238 = v0[60];
    v240 = v0[59];
    v242 = v0[58];
    v244 = v0[57];
    v246 = v0[56];
    v248 = v0[55];
    v250 = v0[54];
    v252 = v0[53];
    v254 = v0[52];
    v256 = v0[49];
    v258 = v0[48];
    v260 = v0[47];
    v262 = v0[46];
    v264 = v0[45];
    v266 = v0[44];
    v268 = v0[43];
    v270 = v0[42];
    v272 = v0[41];
    v274 = v0[40];
    v276 = v0[38];
    v278 = v0[37];
    v280 = v0[34];
    v282 = v0[31];
    v284 = v0[30];
    v286 = v0[29];
    v288 = v0[28];
    v290 = v0[27];
    v292 = v0[26];
    v294 = v0[23];
    v298 = v0[22];
    v304 = v0[19];
    v310 = v0[18];
    v317 = v0[15];
    v322 = v0[14];
    v326 = v0[11];
    v329 = v0[10];

    v48 = v0[1];
    goto LABEL_10;
  }

  v160 = v0[81];
  v162 = v0[26];
  v161 = v0[27];
  v163 = v0[24];
  v164 = v0[25];
  (*(v164 + 32))(v161, v0[11], v163);
  (*(v164 + 16))(v162, v161, v163);
  v165 = sub_20CD63194();
  v166 = sub_20CD633D4();
  v167 = os_log_type_enabled(v165, v166);
  v169 = v0[25];
  v168 = v0[26];
  v170 = v0[24];
  if (v167)
  {
    v171 = swift_slowAlloc();
    v332 = swift_slowAlloc();
    v333[0] = v332;
    *v171 = 136315138;
    sub_20CD1DF2C(&qword_28110F7E8, MEMORY[0x277CC9578]);
    v172 = sub_20CD63574();
    v174 = v173;
    v175 = *(v169 + 8);
    v175(v168, v170);
    v176 = sub_20CD6153C(v172, v174, v333);

    *(v171 + 4) = v176;
    _os_log_impl(&dword_20CCEA000, v165, v166, "[SnapshotRetriever] Apply today's changes: %s)", v171, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v332);
    MEMORY[0x20F3115B0](v332, -1, -1);
    MEMORY[0x20F3115B0](v171, -1, -1);
  }

  else
  {

    v175 = *(v169 + 8);
    v175(v168, v170);
  }

  v0[97] = v175;
  v191 = v0[71];
  v192 = v0[8];
  v193 = v0[9];
  sub_20CD1D9A8(v0[73], v191, &qword_27C810E30, &qword_20CD64610);
  v194 = *(v193 + 48);
  v0[98] = v194;
  v0[99] = (v193 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v195 = v194(v191, 1, v192);
  v196 = v0[71];
  v197 = v0[45];
  v198 = v0[35];
  v199 = v0[36];
  if (v195 == 1)
  {
    sub_20CD1DA10(v0[71], &qword_27C810E30, &qword_20CD64610);
    (*(v199 + 56))(v197, 1, 1, v198);
    goto LABEL_38;
  }

  sub_20CD1D9A8(v0[71], v0[45], &qword_27C810E28, &unk_20CD64A10);
  sub_20CD1DA10(v196, &qword_27C810E38, &qword_20CD64620);
  if ((*(v199 + 48))(v197, 1, v198) == 1)
  {
LABEL_38:
    v200 = v0[54];
    v201 = v0[50];
    v202 = v0[51];
    v203 = v0[45];
    v205 = v0[36];
    v204 = v0[37];
    v206 = v0[35];
    v207 = v0[27];
    sub_20CD62564();
    sub_20CD1DF2C(&qword_28110F758, MEMORY[0x277D0A038]);
    sub_20CD62CB4();
    (*(v202 + 8))(v200, v201);
    if ((*(v205 + 48))(v203, 1, v206) != 1)
    {
      sub_20CD1DA10(v0[45], &qword_27C810E28, &unk_20CD64A10);
    }

    goto LABEL_41;
  }

  (*(v0[36] + 32))(v0[37], v0[45], v0[35]);
LABEL_41:
  v211 = v0[35];
  v212 = v0[18];
  v0[100] = sub_20CD1DF2C(&qword_28110F758, MEMORY[0x277D0A038]);
  sub_20CD62C94();
  v213 = swift_task_alloc();
  v0[101] = v213;
  *v213 = v0;
  v213[1] = sub_20CD098B4;
  v214 = v0[27];
  v215 = v0[18];
  v216 = v0[6];

  return sub_20CD57A94(v214, v215);
}