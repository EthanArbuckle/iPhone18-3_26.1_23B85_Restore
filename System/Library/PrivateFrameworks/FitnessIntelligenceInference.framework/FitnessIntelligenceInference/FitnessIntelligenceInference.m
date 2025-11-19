uint64_t sub_20CC87F68@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a4;
  v55 = a2;
  v6 = *(*(sub_20CCDB1F4() - 8) + 64);
  (MEMORY[0x28223BE20])();
  v56 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F488, &qword_20CCDC728);
  v8 = (*(*(v54 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v10 = &v51 - v9;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F468, &unk_20CCDCD30) - 8) + 64);
  v12 = (MEMORY[0x28223BE20])();
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  v17 = sub_20CCDAF54();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v52 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v51 - v23;
  MEMORY[0x28223BE20](v22);
  v61 = &v51 - v25;
  v26 = *a1;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v53 = v14;
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v59 = v24;
  v27 = sub_20CCDB584();
  __swift_project_value_buffer(v27, qword_28110EE00);
  v28 = v26;
  v29 = sub_20CCDB564();
  v30 = sub_20CCDB8B4();

  v31 = os_log_type_enabled(v29, v30);
  v60 = v28;
  v57 = a3;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v51 = v16;
    v34 = v33;
    v62 = v33;
    *v32 = 136315138;
    v35 = sub_20CCDAA04();
    v37 = sub_20CC88C4C(v35, v36, &v62);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_20CC86000, v29, v30, "%s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    v38 = v34;
    v16 = v51;
    MEMORY[0x20F30FD70](v38, -1, -1);
    v39 = v32;
    v28 = v60;
    MEMORY[0x20F30FD70](v39, -1, -1);
  }

  sub_20CCDAA04();
  v40 = [v28 primaryLanguage];
  sub_20CCDB674();

  v41 = v61;
  sub_20CCDAF24();
  v42 = *(v18 + 16);
  v42(v59, v41, v17);
  v42(v16, v41, v17);
  (*(v18 + 56))(v16, 0, 1, v17);
  v43 = *(v54 + 48);
  sub_20CC89500(v55, v10, &qword_27C80F468, &unk_20CCDCD30);
  sub_20CC89500(v16, &v10[v43], &qword_27C80F468, &unk_20CCDCD30);
  v44 = *(v18 + 48);
  if (v44(v10, 1, v17) != 1)
  {
    v45 = v53;
    sub_20CC89500(v10, v53, &qword_27C80F468, &unk_20CCDCD30);
    if (v44(&v10[v43], 1, v17) != 1)
    {
      v46 = &v10[v43];
      v47 = v52;
      (*(v18 + 32))(v52, v46, v17);
      sub_20CC926A4(&qword_27C80F490, 255, MEMORY[0x277D0A278]);
      sub_20CCDB654();
      v48 = v45;
      v49 = *(v18 + 8);
      v49(v47, v17);
      sub_20CC89568(v16, &qword_27C80F468, &unk_20CCDCD30);
      v49(v48, v17);
      sub_20CC89568(v10, &qword_27C80F468, &unk_20CCDCD30);
      goto LABEL_14;
    }

    sub_20CC89568(v16, &qword_27C80F468, &unk_20CCDCD30);
    (*(v18 + 8))(v45, v17);
    goto LABEL_12;
  }

  sub_20CC89568(v16, &qword_27C80F468, &unk_20CCDCD30);
  if (v44(&v10[v43], 1, v17) != 1)
  {
LABEL_12:
    sub_20CC89568(v10, &qword_27C80F488, &qword_20CCDC728);
    goto LABEL_14;
  }

  sub_20CC89568(v10, &qword_27C80F468, &unk_20CCDCD30);
LABEL_14:
  sub_20CC88618(v60, v56);
  sub_20CCDB224();
  return (*(v18 + 8))(v61, v17);
}

uint64_t sub_20CC88618@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F438, &unk_20CCDC6C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v32 - v6;
  v8 = sub_20CCDAF54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 locallyAvailable])
  {
    if (![a1 downloading])
    {
      v13 = MEMORY[0x277D0A530];
      goto LABEL_8;
    }

    v32 = a2;
    v14 = v2;
    sub_20CCDAA04();
    v15 = [a1 primaryLanguage];
    sub_20CCDB674();

    sub_20CCDAF24();
    swift_beginAccess();
    v16 = *(v2 + 120);
    if (*(v16 + 16))
    {
      v17 = *(v14 + 120);

      v18 = sub_20CCB0AA4(v12);
      if (v19)
      {
        v20 = v18;
        v21 = *(v16 + 56);
        v22 = sub_20CCDB214();
        v23 = *(v22 - 8);
        (*(v23 + 16))(v7, v21 + *(v23 + 72) * v20, v22);
        (*(v9 + 8))(v12, v8);

        (*(v23 + 56))(v7, 0, 1, v22);
LABEL_13:
        v29 = v32;
        sub_20CC92634(v7, v32);
        v30 = *MEMORY[0x277D0A528];
        v31 = sub_20CCDB1F4();
        return (*(*(v31 - 8) + 104))(v29, v30, v31);
      }
    }

    (*(v9 + 8))(v12, v8);
    v28 = sub_20CCDB214();
    (*(*(v28 - 8) + 56))(v7, 1, 1, v28);
    goto LABEL_13;
  }

  v13 = MEMORY[0x277D0A520];
LABEL_8:
  v24 = *v13;
  v25 = sub_20CCDB1F4();
  v26 = *(*(v25 - 8) + 104);

  return v26(a2, v24, v25);
}

void sub_20CC889E4(void (*a1)(id *), void *a2, unint64_t a3)
{
  v4 = v3;
  v26 = a1;
  v27 = a2;
  v25 = sub_20CCDB244();
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20CCDB9F4())
  {
    v11 = a3;
    v29 = MEMORY[0x277D84F90];
    a3 = &v29;
    sub_20CC89050(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v12 = 0;
    v13 = v29;
    v14 = v11;
    v23 = v11;
    v24 = v11 & 0xC000000000000001;
    v20 = v11 & 0xFFFFFFFFFFFFFF8;
    v21 = v6 + 32;
    v22 = i;
    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v24)
      {
        v16 = MEMORY[0x20F30F560](v12, v14);
      }

      else
      {
        if (v12 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v16 = *(v14 + 8 * v12 + 32);
      }

      i = v16;
      v28 = v16;
      a3 = v27;
      v26(&v28);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v29 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        a3 = &v29;
        sub_20CC89050(v17 > 1, v18 + 1, 1);
        v13 = v29;
      }

      *(v13 + 16) = v18 + 1;
      (*(v6 + 32))(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18, v9, v25);
      ++v12;
      v14 = v23;
      if (v15 == v22)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_20CC88C4C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_20CC88D18(v11, 0, 0, 1, a1, a2);
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
    sub_20CC89458(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_20CC88D18(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_20CCA53B8(a5, a6);
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
    result = sub_20CCDB994();
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

uint64_t sub_20CC88E24()
{
  v15 = v0;
  v1 = v0[13];
  v2 = v0[11];
  sub_20CCDAA14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F458, &unk_20CCDCD10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20CCDC570;
  sub_20CC92858();
  *(v3 + 32) = sub_20CCDB864();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F470, &unk_20CCDC710);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CCDC580;
  *(inited + 64) = MEMORY[0x277D613C0];
  *(inited + 32) = xmmword_20CCDC590;
  v5 = inited + 32;
  sub_20CC8974C(inited);
  swift_setDeallocating();
  sub_20CC89568(v5, &qword_27C80F478, &qword_20CCDCD20);
  v6 = sub_20CCDA9F4();

  v7 = swift_task_alloc();
  v7[2] = v1;
  v7[3] = v2;
  sub_20CC889E4(sub_20CC88C2C, v7, v6);
  v9 = v8;

  v14 = v9;

  sub_20CC903B4(&v14);
  v10 = v0[13];

  v11 = v14;
  sub_20CC89568(v10, &qword_27C80F468, &unk_20CCDCD30);

  v12 = v0[1];

  return v12(v11);
}

size_t sub_20CC89050(size_t a1, int64_t a2, char a3)
{
  result = sub_20CC89094(a1, a2, a3, *v3, &qword_27C80F6C8, &qword_20CCDCCC8, MEMORY[0x277D0A548]);
  *v3 = result;
  return result;
}

size_t sub_20CC89094(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_20CC892AC()
{
  v1[11] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F468, &unk_20CCDCD30);
  v1[12] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CC8934C, 0, 0);
}

uint64_t sub_20CC8934C()
{
  v1 = [objc_allocWithZone(sub_20CCDA904()) init];
  v0[14] = v1;
  v2 = swift_task_alloc();
  v0[15] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_20CC895C8;
  v6 = v0[12];
  v5 = v0[13];

  return MEMORY[0x2822007B8](v5, 0, 0, 0xD000000000000014, 0x800000020CCDDF50, sub_20CC92850, v2, v6);
}

uint64_t sub_20CC89458(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
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

uint64_t sub_20CC89500(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_20CC89568(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_20CC895C8()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20CC896E0, 0, 0);
}

uint64_t sub_20CC896E0()
{
  v1 = *(v0 + 88);

  return MEMORY[0x2822009F8](sub_20CC88E24, v1, 0);
}

unint64_t sub_20CC8974C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F898, &unk_20CCDD248);
    v3 = sub_20CCDBA24();
    for (i = a1 + 32; ; i += 40)
    {
      sub_20CC89500(i, &v11, &qword_27C80F478, &qword_20CCDCD20);
      v5 = v11;
      result = sub_20CC89868(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_20CC898D4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_20CC89868(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_20CCDBB44();
  MEMORY[0x20F30F730](a1);
  v4 = sub_20CCDBB64();

  return sub_20CC898E4(a1, v4);
}

_OWORD *sub_20CC898D4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_20CC898E4(uint64_t a1, uint64_t a2)
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

uint64_t sub_20CC89950()
{
  v1 = sub_20CCDAF54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20CC899EC()
{
  v1 = sub_20CCDAF54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_20CC89A98()
{
  v1 = sub_20CCDAF54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20CC89B64()
{
  v1 = sub_20CCDAF54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20CC89C48()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CC89C84()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CC89D40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C80F510, &unk_20CCDC890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  sub_20CC9720C(*(v0 + 16), *(v0 + 24));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20CC89E94()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CC89EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AudioSynthesisHandle(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20CC89F88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AudioSynthesisHandle(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20CC8A02C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20CCDADC4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20CC8A098(uint64_t a1, uint64_t a2)
{
  v4 = sub_20CCDADC4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20CC8A108()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6F0, &qword_20CCDCD28);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20CC8A19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_20CCDAF54();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_20CCDB114();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_20CC8A2C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v8 = sub_20CCDAF54();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_20CCDB114();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_20CC8A3E4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CC8A42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F820, &qword_20CCDCF50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_20CC8A500(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F820, &qword_20CCDCF50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_20CC8A5D4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20CC8A61C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CC8A664()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CC8A6AC()
{
  v1 = sub_20CCDAE94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v0 + 24);

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20CC8A79C()
{
  v20 = sub_20CCDA744();
  v1 = *(v20 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v19 = sub_20CCDAE94();
  v5 = *(v19 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_20CCDAE04();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v13 = v2 | v6 | v11;
  v14 = (*(v10 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v3, v20);
  (*(v5 + 8))(v0 + v7, v19);
  (*(v10 + 8))(v0 + v12, v9);

  v16 = *(v0 + v14 + 8);

  v17 = *(v0 + v14 + 24);

  return MEMORY[0x2821FE8E8](v0, v14 + 32, v13 | 7);
}

uint64_t sub_20CC8A9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20CCDAF54();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_20CCDB114();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20CC8AA90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_20CCDAF54();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_20CCDB114();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_20CC8AB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20CCDB104();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_20CC8AC58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20CCDB104();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_20CC8AD14()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20CC8AD4C()
{
  v1 = sub_20CCDA784();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20CC8AE20()
{
  v1 = sub_20CCDA784();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 6);

  v8 = *(v0 + 8);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20CC8AEF4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20CC8AF34()
{
  v1 = (type metadata accessor for AudioStreamSender() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + v3 + 8);

  v7 = v0 + v3 + v1[7];
  v8 = *(v7 + 48);

  v9 = type metadata accessor for AudioSynthesisHandle(0);
  v10 = v9[6];
  v11 = sub_20CCDAF54();
  (*(*(v11 - 8) + 8))(v7 + v10, v11);
  v12 = v9[7];
  v13 = sub_20CCDB114();
  (*(*(v13 - 8) + 8))(v7 + v12, v13);
  v14 = *(v7 + v9[8]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20CC8B0A4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20CC8B0F0()
{
  v1[2] = v0;
  v2 = sub_20CCDAEC4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CC8B1B0, v0, 0);
}

uint64_t sub_20CC8B1B0()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Refreshing cached voice assets", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_20CC8B2FC;
  v6 = *(v0 + 16);

  return sub_20CC892AC();
}

uint64_t sub_20CC8B2FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = v4[5];

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    v10 = v4[2];
    v4[8] = a1;

    return MEMORY[0x2822009F8](sub_20CC8B454, v10, 0);
  }
}

uint64_t sub_20CC8B454()
{
  v2 = v0[7];
  v1 = v0[8];
  sub_20CCDAE14();

  v3 = v0[5];
  if (v2)
  {
    v4 = v0[5];
  }

  else
  {
    v6 = v0[3];
    v7 = v0[4];
    (*(v7 + 104))(v0[5], *MEMORY[0x277D0A168], v6);
    sub_20CCDAEB4();
    (*(v7 + 8))(v3, v6);
    v8 = sub_20CCDB694();

    notify_post((v8 + 32));
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_20CC8B574()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F488, &qword_20CCDC728);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F468, &unk_20CCDCD30);
  v1[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v6 = sub_20CCDAF54();
  v1[10] = v6;
  v7 = *(v6 - 8);
  v1[11] = v7;
  v8 = *(v7 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CC8B6DC, v0, 0);
}

uint64_t sub_20CC8B6DC()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  v0[14] = __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Refreshing selected voice", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[9];

  sub_20CCDAF04();
  v8 = *(v6 + 48);
  v0[15] = v8;
  v0[16] = (v6 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v8(v7, 1, v5) == 1)
  {
    sub_20CC89568(v0[9], &qword_27C80F468, &unk_20CCDCD30);
    v9 = sub_20CCDB564();
    v10 = sub_20CCDB8B4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20CC86000, v9, v10, "No user selected voice, not refreshing selection", v11, 2u);
      MEMORY[0x20F30FD70](v11, -1, -1);
    }

    v13 = v0[12];
    v12 = v0[13];
    v15 = v0[8];
    v14 = v0[9];
    v17 = v0[6];
    v16 = v0[7];
    v18 = v0[4];

    v19 = v0[1];

    return v19();
  }

  else
  {
    v21 = v0[13];
    v22 = v0[10];
    v23 = v0[11];
    v24 = v0[9];
    v25 = *(v23 + 32);
    v0[17] = v25;
    v0[18] = (v23 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v25(v21, v24, v22);

    return MEMORY[0x2822009F8](sub_20CC8B970, 0, 0);
  }
}

uint64_t sub_20CC8B970()
{
  v1 = [objc_allocWithZone(sub_20CCDA904()) init];
  v0[19] = v1;
  v2 = swift_task_alloc();
  v0[20] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_20CC8BA80;
  v5 = v0[8];
  v6 = v0[5];

  return MEMORY[0x2822007B8](v5, 0, 0, 0xD000000000000014, 0x800000020CCDDF50, sub_20CC92A14, v2, v6);
}

uint64_t sub_20CC8BA80()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20CC8BB98, 0, 0);
}

uint64_t sub_20CC8BB98()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_20CC8BC04, v1, 0);
}

uint64_t sub_20CC8BC04()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  (*(v4 + 16))(v6, *(v0 + 104), v3);
  (*(v4 + 56))(v6, 0, 1, v3);
  v9 = *(v8 + 48);
  sub_20CC89500(v5, v7, &qword_27C80F468, &unk_20CCDCD30);
  sub_20CC89500(v6, v7 + v9, &qword_27C80F468, &unk_20CCDCD30);
  v10 = v2(v7, 1, v3);
  v12 = *(v0 + 120);
  v11 = *(v0 + 128);
  v13 = *(v0 + 80);
  if (v10 == 1)
  {
    sub_20CC89568(*(v0 + 56), &qword_27C80F468, &unk_20CCDCD30);
    if (v12(v7 + v9, 1, v13) == 1)
    {
      sub_20CC89568(*(v0 + 32), &qword_27C80F468, &unk_20CCDCD30);
LABEL_13:
      v34 = *(v0 + 104);
      v35 = *(v0 + 80);
      v36 = *(v0 + 88);
      sub_20CC89568(*(v0 + 64), &qword_27C80F468, &unk_20CCDCD30);
      (*(v36 + 8))(v34, v35);
      v38 = *(v0 + 96);
      v37 = *(v0 + 104);
      v40 = *(v0 + 64);
      v39 = *(v0 + 72);
      v42 = *(v0 + 48);
      v41 = *(v0 + 56);
      v43 = *(v0 + 32);

      v44 = *(v0 + 8);

      return v44();
    }

    goto LABEL_6;
  }

  sub_20CC89500(*(v0 + 32), *(v0 + 48), &qword_27C80F468, &unk_20CCDCD30);
  if (v12(v7 + v9, 1, v13) == 1)
  {
    v14 = *(v0 + 80);
    v15 = *(v0 + 88);
    v16 = *(v0 + 48);
    sub_20CC89568(*(v0 + 56), &qword_27C80F468, &unk_20CCDCD30);
    (*(v15 + 8))(v16, v14);
LABEL_6:
    sub_20CC89568(*(v0 + 32), &qword_27C80F488, &qword_20CCDC728);
    goto LABEL_7;
  }

  v25 = *(v0 + 144);
  v27 = *(v0 + 88);
  v26 = *(v0 + 96);
  v28 = *(v0 + 80);
  v30 = *(v0 + 48);
  v29 = *(v0 + 56);
  v31 = *(v0 + 32);
  (*(v0 + 136))(v26, v7 + v9, v28);
  sub_20CC926A4(&qword_27C80F490, 255, MEMORY[0x277D0A278]);
  v32 = sub_20CCDB654();
  v33 = *(v27 + 8);
  v33(v26, v28);
  sub_20CC89568(v29, &qword_27C80F468, &unk_20CCDCD30);
  v33(v30, v28);
  sub_20CC89568(v31, &qword_27C80F468, &unk_20CCDCD30);
  if (v32)
  {
    goto LABEL_13;
  }

LABEL_7:
  v17 = *(v0 + 112);
  v18 = sub_20CCDB564();
  v19 = sub_20CCDB8B4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_20CC86000, v18, v19, "User selected voice does not match siri selection, making selection", v20, 2u);
    MEMORY[0x20F30FD70](v20, -1, -1);
  }

  v21 = swift_task_alloc();
  *(v0 + 176) = v21;
  *v21 = v0;
  v21[1] = sub_20CC8C03C;
  v22 = *(v0 + 104);
  v23 = *(v0 + 16);

  return sub_20CC8C4D4(v22);
}

uint64_t sub_20CC8C03C()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_20CC8C250;
  }

  else
  {
    v6 = sub_20CC8C168;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_20CC8C168()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  sub_20CC89568(v0[8], &qword_27C80F468, &unk_20CCDCD30);
  (*(v3 + 8))(v1, v2);
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[8];
  v6 = v0[9];
  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[4];

  v11 = v0[1];

  return v11();
}

uint64_t sub_20CC8C250()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[4];
  sub_20CC89568(v0[8], &qword_27C80F468, &unk_20CCDCD30);
  (*(v4 + 8))(v2, v3);

  v9 = v0[1];
  v10 = v0[23];

  return v9();
}

uint64_t sub_20CC8C348()
{
  v0 = sub_20CCDAF54();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  sub_20CCDB234();
  v8 = sub_20CCDAF34();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v7, v0);
  sub_20CCDB234();
  v12 = sub_20CCDAF34();
  v14 = v13;
  v11(v5, v0);
  if (v8 == v12 && v10 == v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_20CCDBA64();
  }

  return v16 & 1;
}

uint64_t sub_20CC8C4D4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_20CCDAF54();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CC8C594, v1, 0);
}

uint64_t sub_20CC8C594()
{
  v31 = v0;
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[5];
  v5 = sub_20CCDB584();
  __swift_project_value_buffer(v5, qword_28110EE00);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_20CCDB564();
  v7 = sub_20CCDB8B4();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[7];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136315138;
    v14 = sub_20CCDAF14();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_20CC88C4C(v14, v16, &v30);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_20CC86000, v6, v7, "Attempting to select voice: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x20F30FD70](v13, -1, -1);
    MEMORY[0x20F30FD70](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = v0[5];
  v18 = v0[6];
  v20 = [objc_allocWithZone(sub_20CCDA904()) init];
  v0[10] = v20;
  sub_20CCDAF44();
  sub_20CCDAF34();
  v21 = objc_allocWithZone(sub_20CCDA964());
  v22 = sub_20CCDA944();
  v0[11] = v22;
  v24 = sub_20CC926A4(&qword_27C80F450, v23, type metadata accessor for VoiceAssetSystem);
  v25 = swift_task_alloc();
  v0[12] = v25;
  *(v25 + 16) = v20;
  *(v25 + 24) = v22;
  v26 = *(MEMORY[0x277D85A40] + 4);
  v27 = swift_task_alloc();
  v0[13] = v27;
  *v27 = v0;
  v27[1] = sub_20CC8C8C0;
  v28 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v27, v18, v24, 0xD000000000000014, 0x800000020CCDDF30, sub_20CC9270C, v25, v28);
}

uint64_t sub_20CC8C8C0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = sub_20CC8D048;
  }

  else
  {
    v6 = *(v2 + 96);
    v7 = *(v2 + 48);

    v5 = sub_20CC8C9E8;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_20CC8C9E8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 48);
  sub_20CC8E070(*(v0 + 40), 1);
  if (v1)
  {
    v3 = *(v0 + 80);

    v4 = *(v0 + 72);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 48);
    swift_beginAccess();
    v8 = *(v7 + 128);
    *(v0 + 120) = v8;
    v9 = v8[2];
    *(v0 + 128) = v9;
    if (v9)
    {
      *(v0 + 152) = 0;
      v10 = v8[4];
      *(v0 + 160) = v8[5];

      v15 = (v10 + *v10);
      v11 = v10[1];
      v12 = swift_task_alloc();
      *(v0 + 168) = v12;
      *v12 = v0;
      v12[1] = sub_20CC8CD18;

      return v15();
    }

    else
    {
      v13 = swift_task_alloc();
      *(v0 + 136) = v13;
      *v13 = v0;
      v13[1] = sub_20CC8CBEC;
      v14 = *(v0 + 48);

      return sub_20CC8B0F0();
    }
  }
}

uint64_t sub_20CC8CBEC()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_20CC8D0C4;
  }

  else
  {
    v6 = sub_20CC8CFD4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_20CC8CD18()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_20CC8CE44, v3, 0);
}

uint64_t sub_20CC8CE44()
{
  v1 = v0[19] + 1;
  if (v1 == v0[16])
  {
    v2 = v0[15];

    v3 = swift_task_alloc();
    v0[17] = v3;
    *v3 = v0;
    v3[1] = sub_20CC8CBEC;
    v4 = v0[6];

    return sub_20CC8B0F0();
  }

  else
  {
    v0[19] = v1;
    v6 = v0[15] + 16 * v1;
    v7 = *(v6 + 32);
    v0[20] = *(v6 + 40);

    v10 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[21] = v9;
    *v9 = v0;
    v9[1] = sub_20CC8CD18;

    return v10();
  }
}

uint64_t sub_20CC8CFD4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 72);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20CC8D048()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  v3 = *(v0 + 112);
  v4 = *(v0 + 72);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_20CC8D0C4()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 144);
  v3 = *(v0 + 72);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20CC8D134(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F458, &unk_20CCDCD10);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_20CCDC570;
  *(v10 + 32) = a3;
  (*(v6 + 16))(v9, a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v9, v5);
  v13 = a3;
  sub_20CCDA8F4();
}

uint64_t sub_20CC8D2CC(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v3 = sub_20CCDB584();
    __swift_project_value_buffer(v3, qword_28110EE00);
    v4 = a1;
    v5 = sub_20CCDB564();
    v6 = sub_20CCDB894();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = a1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_20CC86000, v5, v6, "Failed to subscribe to voice: %@", v7, 0xCu);
      sub_20CC89568(v8, &qword_27C80F460, &unk_20CCDC700);
      MEMORY[0x20F30FD70](v8, -1, -1);
      MEMORY[0x20F30FD70](v7, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
    return sub_20CCDB744();
  }

  else
  {
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v12 = sub_20CCDB584();
    __swift_project_value_buffer(v12, qword_28110EE00);
    v13 = sub_20CCDB564();
    v14 = sub_20CCDB8B4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_20CC86000, v13, v14, "Successfully subscribed to voice", v15, 2u);
      MEMORY[0x20F30FD70](v15, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
    return sub_20CCDB754();
  }
}

uint64_t sub_20CC8D52C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_20CCDAF54();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CC8D5EC, v1, 0);
}

uint64_t sub_20CC8D5EC()
{
  v34 = v0;
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_20CCDB584();
  __swift_project_value_buffer(v5, qword_28110EE00);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_20CCDB564();
  v7 = sub_20CCDB8B4();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 136315138;
    v14 = sub_20CCDAF14();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_20CC88C4C(v14, v16, &v33);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_20CC86000, v6, v7, "Attempting to preview voice: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x20F30FD70](v13, -1, -1);
    MEMORY[0x20F30FD70](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = v0[2];
  v18 = v0[3];
  v20 = [objc_allocWithZone(sub_20CCDA904()) init];
  v0[7] = v20;
  sub_20CCDAF44();
  sub_20CCDAF34();
  v21 = objc_allocWithZone(sub_20CCDA964());
  v22 = sub_20CCDA944();
  v0[8] = v22;
  v23 = objc_allocWithZone(sub_20CCDA924());
  v24 = v22;
  v25 = sub_20CCDA914();
  v0[9] = v25;
  v27 = sub_20CC926A4(&qword_27C80F450, v26, type metadata accessor for VoiceAssetSystem);
  v28 = swift_task_alloc();
  v0[10] = v28;
  *(v28 + 16) = v20;
  *(v28 + 24) = v25;
  v29 = *(MEMORY[0x277D85A40] + 4);
  v30 = swift_task_alloc();
  v0[11] = v30;
  *v30 = v0;
  v30[1] = sub_20CC8D940;
  v31 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v30, v18, v27, 0xD000000000000015, 0x800000020CCDDF10, sub_20CC926EC, v28, v31);
}

uint64_t sub_20CC8D940()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_20CC8DAE8;
  }

  else
  {
    v6 = *(v2 + 80);
    v7 = *(v2 + 24);

    v5 = sub_20CC8DA68;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_20CC8DA68()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20CC8DAE8()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 48);

  v5 = *(v0 + 8);
  v6 = *(v0 + 96);

  return v5();
}

uint64_t sub_20CC8DB74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_20CCDA8D4();
}

uint64_t sub_20CC8DCC4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
    return sub_20CCDB744();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
    return sub_20CCDB754();
  }
}

uint64_t sub_20CC8DD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_20CC8DD5C, a4, 0);
}

uint64_t sub_20CC8DD5C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  swift_beginAccess();
  v5 = *(v3 + 128);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 128) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_20CCA7A6C(0, v5[2] + 1, 1, v5);
    *(v3 + 128) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_20CCA7A6C((v7 > 1), v8 + 1, 1, v5);
  }

  v5[2] = v8 + 1;
  v9 = &v5[2 * v8];
  v9[4] = &unk_20CCDC740;
  v9[5] = v4;
  *(v3 + 128) = v5;
  swift_endAccess();
  v10 = v0[1];

  return v10();
}

uint64_t sub_20CC8DE94(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20CC8DF7C;

  return v6();
}

uint64_t sub_20CC8DF7C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_20CC8E070(uint64_t a1, int a2)
{
  v6 = sub_20CCDAF54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v9 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v9);
  v11 = v42 - v10;
  v12 = sub_20CCA7DA4();
  if (!v3)
  {
    v13 = v12;
    v50 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v51 = a2;
    v52 = 0;
    if ([v12 locallyAvailable])
    {
      if (qword_28110E630 != -1)
      {
        swift_once();
      }

      v14 = sub_20CCDB584();
      __swift_project_value_buffer(v14, qword_28110EE00);
      v15 = sub_20CCDB564();
      v16 = sub_20CCDB8B4();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_20CC86000, v15, v16, "Asset already locally available, not starting download", v17, 2u);
        MEMORY[0x20F30FD70](v17, -1, -1);
      }
    }

    else
    {
      v46 = v13;
      v47 = v2;
      if (qword_28110E630 != -1)
      {
        swift_once();
      }

      v18 = sub_20CCDB584();
      __swift_project_value_buffer(v18, qword_28110EE00);
      v19 = *(v7 + 2);
      v48 = a1;
      v49 = v7 + 16;
      v20 = v6;
      v45 = v19;
      v19(v11, a1, v6);
      v21 = sub_20CCDB564();
      v22 = sub_20CCDB8B4();
      v23 = os_log_type_enabled(v21, v22);
      v44 = v7;
      if (v23)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        aBlock = v25;
        *v24 = 136315138;
        v43 = sub_20CCDAF14();
        v27 = v26;
        (*(v7 + 1))(v11, v20);
        v28 = sub_20CC88C4C(v43, v27, &aBlock);

        *(v24 + 4) = v28;
        _os_log_impl(&dword_20CC86000, v21, v22, "Starting voice download: %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x20F30FD70](v25, -1, -1);
        MEMORY[0x20F30FD70](v24, -1, -1);
      }

      else
      {

        (*(v7 + 1))(v11, v20);
      }

      v29 = v50;
      v50 = sub_20CCDB664();
      v30 = v45;
      v45(v29, v48, v20);
      v31 = v44;
      v32 = (v44[80] + 16) & ~v44[80];
      v33 = (v8 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
      v34 = swift_allocObject();
      v43 = *(v31 + 4);
      v43(v34 + v32, v29, v20);
      v35 = v47;
      *(v34 + v33) = v47;
      v57 = sub_20CC9227C;
      v58 = v34;
      aBlock = MEMORY[0x277D85DD0];
      v54 = 1107296256;
      v42[1] = &v55;
      v55 = sub_20CC8ED48;
      v56 = &block_descriptor;
      v44 = _Block_copy(&aBlock);

      v30(v29, v48, v20);
      v36 = swift_allocObject();
      v43(v36 + v32, v29, v20);
      *(v36 + v33) = v35;
      v37 = v46;
      *(v36 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = v46;
      v57 = sub_20CC92350;
      v58 = v36;
      aBlock = MEMORY[0x277D85DD0];
      v54 = 1107296256;
      v55 = sub_20CC8F890;
      v56 = &block_descriptor_22;
      v38 = _Block_copy(&aBlock);

      v39 = v37;

      v40 = v50;
      v41 = v44;
      [v39 downloadWithReservation:v50 useBattery:v51 & 1 progress:v44 then:v38];
      _Block_release(v38);
      _Block_release(v41);
    }
  }
}

uint64_t sub_20CC8E600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v42 = a2;
  v40 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v34 - v7;
  v8 = sub_20CCDAF54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v37 = v12;
  v38 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - v13;
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v15 = sub_20CCDB584();
  __swift_project_value_buffer(v15, qword_28110EE00);
  v36 = *(v9 + 16);
  v36(v14, a3, v8);
  v16 = sub_20CCDB564();
  v17 = sub_20CCDB8B4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v35 = a3;
    v19 = v18;
    v20 = swift_slowAlloc();
    v43 = v20;
    *v19 = 136315650;
    v21 = sub_20CCDAF34();
    v23 = v22;
    (*(v9 + 8))(v14, v8);
    v24 = sub_20CC88C4C(v21, v23, &v43);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2048;
    v25 = v40;
    *(v19 + 14) = v40;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v42;
    _os_log_impl(&dword_20CC86000, v16, v17, "Voice [%s] download progress: %ld of %ld", v19, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x20F30FD70](v20, -1, -1);
    v26 = v19;
    a3 = v35;
    MEMORY[0x20F30FD70](v26, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v14, v8);
    v25 = v40;
  }

  v27 = sub_20CCDB794();
  v28 = v39;
  (*(*(v27 - 8) + 56))(v39, 1, 1, v27);
  v29 = v38;
  v36(v38, a3, v8);
  v30 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v31 = (v37 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  *(v32 + 4) = v41;
  (*(v9 + 32))(&v32[v30], v29, v8);
  *&v32[v31] = v25;
  *&v32[(v31 + 15) & 0xFFFFFFFFFFFFFFF8] = v42;

  sub_20CCCD44C(0, 0, v28, &unk_20CCDC6E8, v32);
}

uint64_t sub_20CC8E9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F438, &unk_20CCDC6C0) - 8) + 64) + 15;
  v7[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CC8EA88, 0, 0);
}

uint64_t sub_20CC8EA88()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_20CCDB204();
  v4 = sub_20CCDB214();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_20CC8EB70;
  v6 = v0[6];
  v8 = v0[2];
  v7 = v0[3];

  return sub_20CC8F8FC(v7, v6);
}

uint64_t sub_20CC8EB70()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *v1;
  v4[8] = v0;

  sub_20CC89568(v3, &qword_27C80F438, &unk_20CCDC6C0);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20CC8ECE4, 0, 0);
  }

  else
  {
    v5 = v4[6];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_20CC8ECE4()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_20CC8ED48(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v8(a2, a3, a4);
}

uint64_t sub_20CC8EDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v34 - v7;
  v9 = sub_20CCDAF54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v39 = v13;
  v40 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - v14;
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v16 = sub_20CCDB584();
  __swift_project_value_buffer(v16, qword_28110EE00);
  v38 = *(v10 + 16);
  v38(v15, a2, v9);
  v17 = sub_20CCDB564();
  v18 = sub_20CCDB8B4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35 = a2;
    v20 = v19;
    v21 = swift_slowAlloc();
    v36 = v8;
    v22 = v21;
    v41 = v21;
    *v20 = 136315138;
    v23 = sub_20CCDAF34();
    v37 = a3;
    v25 = v24;
    (*(v10 + 8))(v15, v9);
    v26 = sub_20CC88C4C(v23, v25, &v41);
    a3 = v37;

    *(v20 + 4) = v26;
    _os_log_impl(&dword_20CC86000, v17, v18, "Voice [%s] download complete", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v27 = v22;
    v8 = v36;
    MEMORY[0x20F30FD70](v27, -1, -1);
    v28 = v20;
    a2 = v35;
    MEMORY[0x20F30FD70](v28, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v15, v9);
  }

  v29 = sub_20CCDB794();
  (*(*(v29 - 8) + 56))(v8, 1, 1, v29);
  v30 = v40;
  v38(v40, a2, v9);
  v31 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v32 = swift_allocObject();
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  *(v32 + 4) = a3;
  (*(v10 + 32))(&v32[v31], v30, v9);

  sub_20CCCD44C(0, 0, v8, &unk_20CCDC6D8, v32);
}

uint64_t sub_20CC8F160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F438, &unk_20CCDC6C0) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CC8F1FC, 0, 0);
}

uint64_t sub_20CC8F1FC()
{
  v1 = v0[7];
  v2 = sub_20CCDB214();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_20CC8F2D8;
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];

  return sub_20CC8F8FC(v5, v4);
}

uint64_t sub_20CC8F2D8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 72) = v0;

  sub_20CC89568(v4, &qword_27C80F438, &unk_20CCDC6C0);
  if (v0)
  {
    v5 = sub_20CC8F82C;
    v6 = 0;
  }

  else
  {
    v6 = *(v2 + 40);
    v5 = sub_20CC8F428;
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t sub_20CC8F428()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 128);
  v0[10] = v2;
  v3 = v2[2];
  v0[11] = v3;
  if (v3)
  {
    v0[12] = 0;
    v4 = v2[4];
    v0[13] = v2[5];

    v10 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_20CC8F5A0;

    return v10();
  }

  else
  {
    v8 = v0[7];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_20CC8F5A0()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_20CC8F6CC, v3, 0);
}

uint64_t sub_20CC8F6CC()
{
  v1 = v0[12] + 1;
  if (v1 == v0[11])
  {
    v2 = v0[10];

    v3 = v0[7];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[12] = v1;
    v6 = v0[10] + 16 * v1;
    v7 = *(v6 + 32);
    v0[13] = *(v6 + 40);

    v10 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_20CC8F5A0;

    return v10();
  }
}

uint64_t sub_20CC8F82C()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

void sub_20CC8F890(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_20CC8F8FC(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_20CCDAF54();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = sub_20CCDB214();
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v9 = *(v8 + 64) + 15;
  v3[16] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F430, &qword_20CCDC6B8);
  v3[17] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F438, &unk_20CCDC6C0) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CC8FAA8, v2, 0);
}

uint64_t sub_20CC8FAA8()
{
  v1 = v0[10];
  swift_beginAccess();
  v2 = *(v1 + 120);
  if (*(v2 + 16))
  {
    v3 = v0[8];
    v4 = *(v1 + 120);

    v5 = sub_20CCB0AA4(v3);
    if (v6)
    {
      (*(v0[15] + 16))(v0[21], *(v2 + 56) + *(v0[15] + 72) * v5, v0[14]);
      v7 = 0;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  v8 = v0[21];
  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[14];
  v12 = v0[15];
  v13 = v0[9];
  (*(v12 + 56))(v8, v7, 1, v11);
  v14 = *(v10 + 48);
  sub_20CC89500(v13, v9, &qword_27C80F438, &unk_20CCDC6C0);
  sub_20CC89500(v8, v9 + v14, &qword_27C80F438, &unk_20CCDC6C0);
  v15 = *(v12 + 48);
  if (v15(v9, 1, v11) == 1)
  {
    v16 = v0[14];
    sub_20CC89568(v0[21], &qword_27C80F438, &unk_20CCDC6C0);
    if (v15(v9 + v14, 1, v16) == 1)
    {
      sub_20CC89568(v0[18], &qword_27C80F438, &unk_20CCDC6C0);
LABEL_17:
      if (qword_28110E630 != -1)
      {
        swift_once();
      }

      v34 = sub_20CCDB584();
      __swift_project_value_buffer(v34, qword_28110EE00);
      v35 = sub_20CCDB564();
      v36 = sub_20CCDB8B4();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_20CC86000, v35, v36, "Download progress has not changed, skipping broadcast", v37, 2u);
        MEMORY[0x20F30FD70](v37, -1, -1);
      }

      v39 = v0[20];
      v38 = v0[21];
      v41 = v0[18];
      v40 = v0[19];
      v42 = v0[16];
      v43 = v0[13];

      v44 = v0[1];

      return v44();
    }

    goto LABEL_12;
  }

  v17 = v0[14];
  sub_20CC89500(v0[18], v0[20], &qword_27C80F438, &unk_20CCDC6C0);
  v18 = v15(v9 + v14, 1, v17);
  v19 = v0[20];
  v20 = v0[21];
  if (v18 == 1)
  {
    v21 = v0[14];
    v22 = v0[15];
    sub_20CC89568(v0[21], &qword_27C80F438, &unk_20CCDC6C0);
    (*(v22 + 8))(v19, v21);
LABEL_12:
    sub_20CC89568(v0[18], &qword_27C80F430, &qword_20CCDC6B8);
    goto LABEL_13;
  }

  v45 = v0[18];
  v30 = v0[15];
  v29 = v0[16];
  v31 = v0[14];
  (*(v30 + 32))(v29, v9 + v14, v31);
  sub_20CC926A4(&qword_27C80F440, 255, MEMORY[0x277D0A538]);
  v32 = sub_20CCDB654();
  v33 = *(v30 + 8);
  v33(v29, v31);
  sub_20CC89568(v20, &qword_27C80F438, &unk_20CCDC6C0);
  v33(v19, v31);
  sub_20CC89568(v45, &qword_27C80F438, &unk_20CCDC6C0);
  if (v32)
  {
    goto LABEL_17;
  }

LABEL_13:
  v23 = v0[19];
  v24 = v0[13];
  v25 = v0[9];
  (*(v0[12] + 16))(v24, v0[8], v0[11]);
  sub_20CC89500(v25, v23, &qword_27C80F438, &unk_20CCDC6C0);
  swift_beginAccess();
  sub_20CCCD6E8(v23, v24);
  swift_endAccess();
  v26 = swift_task_alloc();
  v0[22] = v26;
  *v26 = v0;
  v26[1] = sub_20CC8FFD8;
  v27 = v0[10];

  return sub_20CC8B0F0();
}

uint64_t sub_20CC8FFD8()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v11 = *v0;

  v3 = v1[21];
  v4 = v1[20];
  v5 = v1[19];
  v6 = v1[18];
  v7 = v1[16];
  v8 = v1[13];

  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_20CC9018C()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
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

uint64_t sub_20CC90210(uint64_t a1, int a2)
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

uint64_t sub_20CC90230(uint64_t result, int a2, int a3)
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

uint64_t sub_20CC90284()
{
  v1 = *v0;
  sub_20CCDBB44();
  MEMORY[0x20F30F730](v1);
  return sub_20CCDBB64();
}

uint64_t sub_20CC902F8()
{
  v1 = *v0;
  sub_20CCDBB44();
  MEMORY[0x20F30F730](v1);
  return sub_20CCDBB64();
}

void *sub_20CC90350@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
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

uint64_t sub_20CC903B4(void **a1)
{
  v2 = *(sub_20CCDB244() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20CC92268(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_20CC9045C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_20CC9045C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20CCDBA34();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20CCDB244();
        v6 = sub_20CCDB714();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20CCDB244() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20CC909D0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_20CC90588(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20CC90588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v69 = sub_20CCDAF54();
  v8 = *(v69 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v69);
  v68 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v67 = &v50 - v12;
  v13 = sub_20CCDB244();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v60 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = &v50 - v18;
  result = MEMORY[0x28223BE20](v17);
  v22 = &v50 - v20;
  v52 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v25 = *(v21 + 16);
    v24 = v21 + 16;
    v26 = *(v24 + 56);
    v62 = (v8 + 8);
    v63 = v25;
    v61 = (v24 - 8);
    v65 = v24;
    v27 = v23 + v26 * (a3 - 1);
    v57 = -v26;
    v58 = (v24 + 16);
    v28 = a1 - a3;
    v59 = v23;
    v51 = v26;
    v29 = v23 + v26 * a3;
    v66 = v13;
    v64 = &v50 - v20;
LABEL_6:
    v55 = v27;
    v56 = a3;
    v53 = v29;
    v54 = v28;
    v31 = v28;
    while (1)
    {
      v70 = v31;
      v32 = v63;
      v63(v22, v29, v13);
      v32(v73, v27, v13);
      v33 = v67;
      sub_20CCDB234();
      v34 = sub_20CCDAF34();
      v71 = v35;
      v72 = v34;
      v36 = *v62;
      v37 = v69;
      (*v62)(v33, v69);
      v38 = v68;
      sub_20CCDB234();
      v39 = sub_20CCDAF34();
      v41 = v40;
      v42 = v38;
      v43 = v71;
      v36(v42, v37);
      if (v72 == v39 && v43 == v41)
      {

        v30 = *v61;
        v13 = v66;
        (*v61)(v73, v66);
        v22 = v64;
        result = (v30)(v64, v13);
LABEL_5:
        a3 = v56 + 1;
        v27 = v55 + v51;
        v28 = v54 - 1;
        v29 = v53 + v51;
        if (v56 + 1 == v52)
        {
          return result;
        }

        goto LABEL_6;
      }

      v44 = sub_20CCDBA64();

      v45 = *v61;
      v13 = v66;
      (*v61)(v73, v66);
      v22 = v64;
      result = (v45)(v64, v13);
      v46 = v70;
      if ((v44 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v59)
      {
        break;
      }

      v47 = *v58;
      v48 = v60;
      (*v58)(v60, v29, v13);
      swift_arrayInitWithTakeFrontToBack();
      result = (v47)(v27, v48, v13);
      v27 += v57;
      v29 += v57;
      v49 = __CFADD__(v46, 1);
      v31 = v46 + 1;
      if (v49)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20CC909D0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v155 = a1;
  v180 = sub_20CCDAF54();
  v8 = *(v180 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v180);
  v177 = &v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v176 = &v151 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v166 = &v151 - v15;
  MEMORY[0x28223BE20](v14);
  v165 = &v151 - v16;
  v183 = sub_20CCDB244();
  v167 = *(v183 - 8);
  v17 = v167[8];
  v18 = MEMORY[0x28223BE20](v183);
  v160 = &v151 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v174 = &v151 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v187 = &v151 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v186 = &v151 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v170 = &v151 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v169 = &v151 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v153 = &v151 - v31;
  result = MEMORY[0x28223BE20](v30);
  v152 = &v151 - v33;
  v34 = *(a3 + 8);
  v161 = a3;
  if (v34 < 1)
  {
    v36 = MEMORY[0x277D84F90];
LABEL_103:
    a4 = *v155;
    if (!*v155)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_105;
  }

  v35 = 0;
  v181 = v167 + 2;
  v182 = (v167 + 1);
  v178 = (v167 + 4);
  v179 = (v8 + 8);
  v36 = MEMORY[0x277D84F90];
  v154 = a4;
LABEL_4:
  v168 = v36;
  v159 = v35;
  if (v35 + 1 >= v34)
  {
    v49 = v35 + 1;
  }

  else
  {
    v171 = v34;
    v37 = *a3;
    v38 = v167[9];
    v39 = *a3 + v38 * (v35 + 1);
    v40 = v167[2];
    v41 = v152;
    v185 = v39;
    v42 = v183;
    v40(v152);
    v184 = v37;
    v43 = v37 + v38 * v35;
    v44 = v153;
    v172 = v40;
    (v40)(v153, v43, v42);
    LODWORD(v173) = sub_20CC8C348();
    if (v5)
    {
      v149 = v42;
      v150 = *v182;
      (*v182)(v44, v149);
      v150(v41, v149);
    }

    v156 = 0;
    v45 = *v182;
    (*v182)(v44, v42);
    v164 = v45;
    result = (v45)(v41, v42);
    v46 = v35 + 2;
    v47 = v185;
    v48 = v184 + v38 * (v35 + 2);
    v49 = v171;
    v50 = v38;
    v175 = v38;
    while (v49 != v46)
    {
      v53 = v172;
      (v172)(v169, v48, v42);
      v185 = v47;
      v53(v170, v47, v42);
      v54 = v165;
      sub_20CCDB234();
      v184 = sub_20CCDAF34();
      v56 = v55;
      v57 = *v179;
      v58 = v54;
      v59 = v180;
      (*v179)(v58, v180);
      v60 = v166;
      sub_20CCDB234();
      v61 = sub_20CCDAF34();
      v63 = v62;
      v57(v60, v59);
      if (v184 == v61 && v56 == v63)
      {
        v51 = 0;
      }

      else
      {
        v51 = sub_20CCDBA64();
      }

      v42 = v183;
      v52 = v164;
      (v164)(v170, v183);
      result = v52(v169, v42);
      ++v46;
      v50 = v175;
      v48 += v175;
      v47 = &v175[v185];
      v36 = v168;
      v49 = v171;
      if ((v173 ^ v51))
      {
        v49 = v46 - 1;
        break;
      }
    }

    v5 = v156;
    a3 = v161;
    a4 = v154;
    if (v173)
    {
      if (v49 < v159)
      {
        goto LABEL_136;
      }

      if (v159 < v49)
      {
        v64 = v50 * (v49 - 1);
        v65 = v49 * v50;
        v171 = v49;
        v66 = v49;
        v67 = v159;
        v68 = v159 * v50;
        do
        {
          if (v67 != --v66)
          {
            v70 = *v161;
            if (!*v161)
            {
              goto LABEL_140;
            }

            v71 = *v178;
            (*v178)(v160, v70 + v68, v183);
            if (v68 < v64 || v70 + v68 >= (v70 + v65))
            {
              v69 = v183;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              v69 = v183;
              if (v68 != v64)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = (v71)(v70 + v64, v160, v69);
            v5 = v156;
            v36 = v168;
            v50 = v175;
          }

          ++v67;
          v64 -= v50;
          v65 -= v50;
          v68 += v50;
        }

        while (v67 < v66);
        a3 = v161;
        a4 = v154;
        v49 = v171;
      }
    }
  }

  v72 = *(a3 + 8);
  if (v49 >= v72)
  {
    goto LABEL_38;
  }

  if (__OFSUB__(v49, v159))
  {
    goto LABEL_133;
  }

  if (v49 - v159 >= a4)
  {
LABEL_38:
    v35 = v49;
    goto LABEL_39;
  }

  if (__OFADD__(v159, a4))
  {
    goto LABEL_134;
  }

  if ((v159 + a4) >= v72)
  {
    v73 = *(a3 + 8);
  }

  else
  {
    v73 = v159 + a4;
  }

  a4 = v183;
  if (v73 < v159)
  {
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    result = sub_20CC9206C(v36);
    v36 = result;
LABEL_105:
    v188 = v36;
    v145 = *(v36 + 2);
    if (v145 >= 2)
    {
      while (1)
      {
        v146 = *a3;
        if (!*a3)
        {
          goto LABEL_141;
        }

        a3 = *&v36[16 * v145];
        v147 = *&v36[16 * v145 + 24];
        sub_20CC9178C(v146 + v167[9] * a3, v146 + v167[9] * *&v36[16 * v145 + 16], (v146 + v167[9] * v147), a4);
        if (v5)
        {
        }

        if (v147 < a3)
        {
          goto LABEL_130;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_20CC9206C(v36);
        }

        if (v145 - 2 >= *(v36 + 2))
        {
          goto LABEL_131;
        }

        v148 = &v36[16 * v145];
        *v148 = a3;
        *(v148 + 1) = v147;
        v188 = v36;
        result = sub_20CC91FE0(v145 - 1);
        v36 = v188;
        v145 = *(v188 + 2);
        a3 = v161;
        if (v145 <= 1)
        {
        }
      }
    }
  }

  if (v49 == v73)
  {
    goto LABEL_38;
  }

  v156 = v5;
  v119 = *a3;
  v120 = v167[9];
  v175 = v167[2];
  v121 = (v119 + v120 * (v49 - 1));
  v172 = -v120;
  v122 = v159 - v49;
  v173 = v119;
  v157 = v120;
  v123 = v119 + v49 * v120;
  v158 = v73;
LABEL_93:
  v171 = v49;
  v162 = v123;
  v163 = v122;
  v125 = v122;
  v164 = v121;
  while (1)
  {
    v184 = v125;
    v126 = v175;
    (v175)(v186, v123, a4);
    v126(v187, v121, a4);
    v127 = v176;
    sub_20CCDB234();
    v128 = sub_20CCDAF34();
    v185 = v129;
    v130 = *v179;
    v131 = v127;
    v132 = v180;
    (*v179)(v131, v180);
    v133 = v177;
    sub_20CCDB234();
    v134 = sub_20CCDAF34();
    v136 = v135;
    v137 = v132;
    v138 = v185;
    v130(v133, v137);
    if (v128 == v134 && v138 == v136)
    {

      a4 = v183;
      v124 = *v182;
      (*v182)(v187, v183);
      v124(v186, a4);
LABEL_92:
      v49 = v171 + 1;
      v121 = &v164[v157];
      v122 = v163 - 1;
      v123 = v162 + v157;
      v35 = v158;
      if (v171 + 1 != v158)
      {
        goto LABEL_93;
      }

      v5 = v156;
      a3 = v161;
      v36 = v168;
LABEL_39:
      if (v35 < v159)
      {
        goto LABEL_132;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20CC92164(0, *(v36 + 2) + 1, 1, v36);
        v36 = result;
      }

      a4 = *(v36 + 2);
      v74 = *(v36 + 3);
      v75 = a4 + 1;
      if (a4 >= v74 >> 1)
      {
        result = sub_20CC92164((v74 > 1), a4 + 1, 1, v36);
        v36 = result;
      }

      *(v36 + 2) = v75;
      v76 = &v36[16 * a4];
      *(v76 + 4) = v159;
      *(v76 + 5) = v35;
      if (!*v155)
      {
        goto LABEL_142;
      }

      if (a4)
      {
        v77 = *v155;
        while (1)
        {
          v78 = v75 - 1;
          if (v75 >= 4)
          {
            break;
          }

          if (v75 == 3)
          {
            v79 = *(v36 + 4);
            v80 = *(v36 + 5);
            v89 = __OFSUB__(v80, v79);
            v81 = v80 - v79;
            v82 = v89;
LABEL_60:
            if (v82)
            {
              goto LABEL_121;
            }

            v95 = &v36[16 * v75];
            v97 = *v95;
            v96 = *(v95 + 1);
            v98 = __OFSUB__(v96, v97);
            v99 = v96 - v97;
            v100 = v98;
            if (v98)
            {
              goto LABEL_124;
            }

            v101 = &v36[16 * v78 + 32];
            v103 = *v101;
            v102 = *(v101 + 1);
            v89 = __OFSUB__(v102, v103);
            v104 = v102 - v103;
            if (v89)
            {
              goto LABEL_127;
            }

            if (__OFADD__(v99, v104))
            {
              goto LABEL_128;
            }

            if (v99 + v104 >= v81)
            {
              if (v81 < v104)
              {
                v78 = v75 - 2;
              }

              goto LABEL_81;
            }

            goto LABEL_74;
          }

          v105 = &v36[16 * v75];
          v107 = *v105;
          v106 = *(v105 + 1);
          v89 = __OFSUB__(v106, v107);
          v99 = v106 - v107;
          v100 = v89;
LABEL_74:
          if (v100)
          {
            goto LABEL_123;
          }

          v108 = &v36[16 * v78];
          v110 = *(v108 + 4);
          v109 = *(v108 + 5);
          v89 = __OFSUB__(v109, v110);
          v111 = v109 - v110;
          if (v89)
          {
            goto LABEL_126;
          }

          if (v111 < v99)
          {
            goto LABEL_3;
          }

LABEL_81:
          a4 = v78 - 1;
          if (v78 - 1 >= v75)
          {
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
            goto LABEL_135;
          }

          if (!*a3)
          {
            goto LABEL_139;
          }

          v116 = *&v36[16 * a4 + 32];
          v117 = *&v36[16 * v78 + 40];
          sub_20CC9178C(*a3 + v167[9] * v116, *a3 + v167[9] * *&v36[16 * v78 + 32], (*a3 + v167[9] * v117), v77);
          if (v5)
          {
          }

          if (v117 < v116)
          {
            goto LABEL_117;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_20CC9206C(v36);
          }

          if (a4 >= *(v36 + 2))
          {
            goto LABEL_118;
          }

          v118 = &v36[16 * a4];
          *(v118 + 4) = v116;
          *(v118 + 5) = v117;
          v188 = v36;
          result = sub_20CC91FE0(v78);
          v36 = v188;
          v75 = *(v188 + 2);
          if (v75 <= 1)
          {
            goto LABEL_3;
          }
        }

        v83 = &v36[16 * v75 + 32];
        v84 = *(v83 - 64);
        v85 = *(v83 - 56);
        v89 = __OFSUB__(v85, v84);
        v86 = v85 - v84;
        if (v89)
        {
          goto LABEL_119;
        }

        v88 = *(v83 - 48);
        v87 = *(v83 - 40);
        v89 = __OFSUB__(v87, v88);
        v81 = v87 - v88;
        v82 = v89;
        if (v89)
        {
          goto LABEL_120;
        }

        v90 = &v36[16 * v75];
        v92 = *v90;
        v91 = *(v90 + 1);
        v89 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v89)
        {
          goto LABEL_122;
        }

        v89 = __OFADD__(v81, v93);
        v94 = v81 + v93;
        if (v89)
        {
          goto LABEL_125;
        }

        if (v94 >= v86)
        {
          v112 = &v36[16 * v78 + 32];
          v114 = *v112;
          v113 = *(v112 + 1);
          v89 = __OFSUB__(v113, v114);
          v115 = v113 - v114;
          if (v89)
          {
            goto LABEL_129;
          }

          if (v81 < v115)
          {
            v78 = v75 - 2;
          }

          goto LABEL_81;
        }

        goto LABEL_60;
      }

LABEL_3:
      v34 = *(a3 + 8);
      a4 = v154;
      if (v35 >= v34)
      {
        goto LABEL_103;
      }

      goto LABEL_4;
    }

    v139 = sub_20CCDBA64();

    a4 = v183;
    v140 = *v182;
    (*v182)(v187, v183);
    result = (v140)(v186, a4);
    if ((v139 & 1) == 0)
    {
      goto LABEL_92;
    }

    v141 = v184;
    if (!v173)
    {
      break;
    }

    v142 = *v178;
    v143 = v174;
    (*v178)(v174, v123, a4);
    swift_arrayInitWithTakeFrontToBack();
    v142(v121, v143, a4);
    v121 += v172;
    v123 += v172;
    v144 = __CFADD__(v141, 1);
    v125 = v141 + 1;
    if (v144)
    {
      goto LABEL_92;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_20CC9178C(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v84 = sub_20CCDAF54();
  v8 = *(v84 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v84);
  v76 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v75 = &v72 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v80 = &v72 - v15;
  MEMORY[0x28223BE20](v14);
  v79 = &v72 - v16;
  v17 = sub_20CCDB244();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v82 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v81 = &v72 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v86 = &v72 - v25;
  result = MEMORY[0x28223BE20](v24);
  v85 = &v72 - v27;
  v29 = *(v28 + 72);
  if (!v29)
  {
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v29 == -1)
  {
    goto LABEL_68;
  }

  v30 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v29 == -1)
  {
    goto LABEL_69;
  }

  v31 = (a2 - a1) / v29;
  v92 = a1;
  v91 = a4;
  v83 = v17;
  if (v31 >= v30 / v29)
  {
    v33 = v30 / v29 * v29;
    if (a4 < a2 || a2 + v33 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v33 < 1)
    {
      v54 = a4 + v33;
    }

    else
    {
      v52 = -v29;
      v77 = (v18 + 16);
      v73 = (v18 + 8);
      v74 = (v8 + 8);
      v53 = (a4 + v33);
      v54 = a4 + v33;
      v87 = a1;
      v88 = a4;
      v86 = v52;
      do
      {
        v72 = v54;
        v55 = a2;
        a2 += v52;
        v89 = a2;
        v79 = v55;
        while (1)
        {
          if (v55 <= a1)
          {
            v92 = v55;
            v90 = v72;
            goto LABEL_66;
          }

          v56 = a3;
          v78 = v54;
          v85 = v53;
          v57 = *v77;
          v80 = &v53[v52];
          v57(v81);
          (v57)(v82, a2, v17);
          v58 = v75;
          sub_20CCDB234();
          v59 = sub_20CCDAF34();
          v61 = v60;
          v62 = *v74;
          v63 = v84;
          (*v74)(v58, v84);
          v64 = v76;
          sub_20CCDB234();
          v65 = sub_20CCDAF34();
          v67 = v66;
          v62(v64, v63);
          if (v59 != v65)
          {
            goto LABEL_49;
          }

          if (v61 == v67)
          {
            v68 = 0;
          }

          else
          {
LABEL_49:
            v68 = sub_20CCDBA64();
          }

          a3 = &v86[v56];
          v69 = *v73;
          v17 = v83;
          (*v73)(v82, v83);
          v69(v81, v17);
          v70 = v88;
          a2 = v89;
          a1 = v87;
          if (v68)
          {
            break;
          }

          v71 = v80;
          v54 = v80;
          if (v56 < v85 || a3 >= v85)
          {
            swift_arrayInitWithTakeFrontToBack();
            v52 = v86;
          }

          else
          {
            v52 = v86;
            if (v56 != v85)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v53 = v54;
          v55 = v79;
          if (v71 <= v70)
          {
            a2 = v79;
            goto LABEL_65;
          }
        }

        if (v56 < v79 || a3 >= v79)
        {
          swift_arrayInitWithTakeFrontToBack();
          v54 = v78;
          v52 = v86;
        }

        else
        {
          v54 = v78;
          v52 = v86;
          if (v56 != v79)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v53 = v85;
      }

      while (v85 > v70);
    }

LABEL_65:
    v92 = a2;
    v90 = v54;
  }

  else
  {
    v32 = v31 * v29;
    if (a4 < a1 || a1 + v32 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v82 = (a4 + v32);
    v90 = a4 + v32;
    if (v32 >= 1 && a2 < a3)
    {
      v35 = *(v18 + 16);
      v75 = (v8 + 8);
      v76 = v35;
      v81 = (v18 + 16);
      v74 = (v18 + 8);
      v77 = v29;
      v78 = a3;
      do
      {
        v87 = a1;
        v89 = a2;
        v36 = v76;
        (v76)(v85, a2, v17);
        v88 = a4;
        v36(v86, a4, v17);
        v37 = v79;
        sub_20CCDB234();
        v38 = sub_20CCDAF34();
        v40 = v39;
        v41 = *v75;
        v42 = v84;
        (*v75)(v37, v84);
        v43 = v80;
        sub_20CCDB234();
        v44 = sub_20CCDAF34();
        v46 = v45;
        v41(v43, v42);
        if (v38 == v44 && v40 == v46)
        {

          v47 = *v74;
          v17 = v83;
          (*v74)(v86, v83);
          v47(v85, v17);
          v48 = v87;
        }

        else
        {
          v49 = sub_20CCDBA64();

          v50 = *v74;
          v17 = v83;
          (*v74)(v86, v83);
          v50(v85, v17);
          v48 = v87;
          if (v49)
          {
            a4 = v88;
            v51 = v77;
            a2 = v77 + v89;
            if (v87 < v89 || v87 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v87 != v89)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            goto LABEL_35;
          }
        }

        v51 = v77;
        a4 = v77 + v88;
        if (v48 < v88 || v48 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v89;
        }

        else
        {
          a2 = v89;
          if (v48 != v88)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v91 = a4;
LABEL_35:
        a1 = v51 + v48;
        v92 = a1;
      }

      while (a4 < v82 && a2 < v78);
    }
  }

LABEL_66:
  sub_20CC92080(&v92, &v91, &v90);
  return 1;
}

uint64_t sub_20CC91FE0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_20CC9206C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_20CC92080(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_20CCDB244();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_20CC92164(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F480, &qword_20CCDC720);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_20CC9227C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_20CCDAF54() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_20CC8E600(a1, a2, v2 + v6, v7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20CC92350(uint64_t a1)
{
  v3 = *(sub_20CCDAF54() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_20CC8EDB8(a1, v1 + v4, v6);
}

uint64_t sub_20CC923F8(uint64_t a1)
{
  v4 = *(sub_20CCDAF54() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20CC8DF7C;

  return sub_20CC8F160(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_20CC924F0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20CCDAF54() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_20CC92A0C;

  return sub_20CC8E9E8(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_20CC92634(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F438, &unk_20CCDC6C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CC926A4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_20CC926EC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_20CC8DB74(a1);
}

uint64_t objectdestroy_39Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20CC927C0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_20CC92858()
{
  result = qword_28110EDB8;
  if (!qword_28110EDB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28110EDB8);
  }

  return result;
}

uint64_t sub_20CC928A4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20CC8DF7C;

  return sub_20CC8DE94(a1, v5);
}

void sub_20CC92970(uint64_t a1, unint64_t *a2)
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

uint64_t sub_20CC92A20()
{
  sub_20CCDBB44();
  MEMORY[0x20F30F730](0);
  return sub_20CCDBB64();
}

uint64_t sub_20CC92A8C()
{
  sub_20CCDBB44();
  MEMORY[0x20F30F730](0);
  return sub_20CCDBB64();
}

uint64_t sub_20CC92ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v36 = a2;
  v38 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F538, &unk_20CCDC8B0);
  v4 = *(v37 - 8);
  v39 = *(v4 + 64);
  v5 = MEMORY[0x28223BE20](v37);
  v35 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v29 = &v26 - v7;
  v9 = sub_20CCDA784();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v34 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v32 = *(v10 + 16);
  v32(&v26 - v13, a3, v9);
  v31 = *(v4 + 16);
  v31(v8, v38, v37);
  v15 = *(v10 + 80);
  v16 = (v15 + 16) & ~v15;
  v17 = *(v4 + 80);
  v18 = (v11 + v17 + v16) & ~v17;
  v30 = v15 | v17;
  v19 = swift_allocObject();
  v28 = *(v10 + 32);
  v28(v19 + v16, v14, v9);
  v20 = *(v4 + 32);
  v26 = v4 + 32;
  v27 = v20;
  v21 = v37;
  v20((v19 + v18), v29, v37);
  v22 = v34;
  v32(v34, v33, v9);
  v23 = v35;
  v31(v35, v38, v21);
  v24 = swift_allocObject();
  v28(&v24[v16], v22, v9);
  v27(&v24[v18], v23, v21);
  sub_20CC9636C(sub_20CC96DF8, v19, sub_20CC96E34, v24);
}

void sub_20CC92E20(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v22 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F538, &unk_20CCDC8B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = sub_20CCDA784();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20CCDA764();
  (*(v10 + 16))(v12, a2, v9);
  v13 = v4;
  (*(v5 + 16))(v8, v20, v4);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + *(v5 + 80) + v14) & ~*(v5 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v14, v12, v9);
  (*(v5 + 32))(v16 + v15, v8, v13);
  aBlock[4] = sub_20CC97114;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CC93998;
  aBlock[3] = &block_descriptor_47;
  v17 = _Block_copy(aBlock);

  v18 = v21;
  [v22 retrieveWith:v21 completion:v17];
  _Block_release(v17);
}

uint64_t sub_20CC930BC(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v62 = a5;
  v59 = a4;
  v61 = sub_20CCDB584();
  v8 = *(v61 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v61);
  v10 = sub_20CCDA784();
  v60 = *(v10 - 8);
  v11 = *(v60 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v55 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v55 - v16;
  v18 = sub_20CCDADE4();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v20);
  if (a3)
  {
    v24 = a3;
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v61, qword_28110EE00);
    v25 = v60;
    v26 = v10;
    (*(v60 + 16))(v17, v59, v10);
    v27 = a3;
    v28 = sub_20CCDB564();
    v29 = sub_20CCDB894();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v63[0] = v32;
      *v30 = 136315394;
      sub_20CC96F70(&qword_27C80F540, MEMORY[0x277CC95F0]);
      v33 = sub_20CCDBA44();
      v34 = v26;
      v36 = v35;
      (*(v25 + 8))(v17, v34);
      v37 = sub_20CC88C4C(v33, v36, v63);

      *(v30 + 4) = v37;
      *(v30 + 12) = 2112;
      v38 = a3;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 14) = v39;
      *v31 = v39;
      _os_log_impl(&dword_20CC86000, v28, v29, "Failed to retrieve record for uuid %s. Error: %@", v30, 0x16u);
      sub_20CC96BBC(v31);
      MEMORY[0x20F30FD70](v31, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x20F30FD70](v32, -1, -1);
      MEMORY[0x20F30FD70](v30, -1, -1);
    }

    else
    {

      (*(v25 + 8))(v17, v10);
    }

    v63[0] = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F538, &unk_20CCDC8B0);
    return sub_20CCDB744();
  }

  else
  {
    v56 = v23;
    v57 = v22;
    v58 = v8;
    v40 = &v55 - v21;
    sub_20CC96DA4(a1, a2);
    sub_20CC96F70(&qword_27C80F530, MEMORY[0x277D0A010]);
    sub_20CCDAFC4();
    v41 = v40;
    v42 = v10;
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v61, qword_28110EE00);
    v43 = v60;
    (*(v60 + 16))(v15, v59, v10);
    v44 = sub_20CCDB564();
    v45 = sub_20CCDB874();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v63[0] = v47;
      *v46 = 136315138;
      sub_20CC96F70(&qword_27C80F540, MEMORY[0x277CC95F0]);
      v48 = sub_20CCDBA44();
      v49 = v42;
      v51 = v50;
      (*(v43 + 8))(v15, v49);
      v52 = sub_20CC88C4C(v48, v51, v63);

      *(v46 + 4) = v52;
      _os_log_impl(&dword_20CC86000, v44, v45, "Found record for uuid %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x20F30FD70](v47, -1, -1);
      MEMORY[0x20F30FD70](v46, -1, -1);
    }

    else
    {

      (*(v43 + 8))(v15, v10);
    }

    v54 = v57;
    (*(v57 + 16))(v56, v41, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F538, &unk_20CCDC8B0);
    sub_20CCDB754();
    return (*(v54 + 8))(v41, v18);
  }
}

uint64_t sub_20CC93998(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v8 = sub_20CCDA6E4();
  v10 = v9;

  v11 = a3;
  v6(v8, v10, a3);

  sub_20CC9720C(v8, v10);
}

uint64_t sub_20CC93A40(void *a1, uint64_t a2)
{
  v4 = sub_20CCDA784();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v9 = sub_20CCDB584();
  __swift_project_value_buffer(v9, qword_28110EE00);
  (*(v5 + 16))(v8, a2, v4);
  v10 = a1;
  v11 = sub_20CCDB564();
  v12 = sub_20CCDB894();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v13 = 136315394;
    sub_20CC96F70(&qword_27C80F540, MEMORY[0x277CC95F0]);
    v14 = sub_20CCDBA44();
    v16 = v15;
    (*(v5 + 8))(v8, v4);
    v17 = sub_20CC88C4C(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2112;
    v18 = a1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v19;
    v20 = v25;
    *v25 = v19;
    _os_log_impl(&dword_20CC86000, v11, v12, "Failed to retrieve record for uuid %s. proxy error: %@", v13, 0x16u);
    sub_20CC96BBC(v20);
    MEMORY[0x20F30FD70](v20, -1, -1);
    v21 = v26;
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x20F30FD70](v21, -1, -1);
    MEMORY[0x20F30FD70](v13, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v27 = a1;
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F538, &unk_20CCDC8B0);
  return sub_20CCDB744();
}

uint64_t sub_20CC93D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v36 = a2;
  v38 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F520, &qword_20CCDC8A0);
  v4 = *(v37 - 8);
  v39 = *(v4 + 64);
  v5 = MEMORY[0x28223BE20](v37);
  v35 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v29 = &v26 - v7;
  v9 = sub_20CCDB084();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v34 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v32 = *(v10 + 16);
  v32(&v26 - v13, a3, v9);
  v31 = *(v4 + 16);
  v31(v8, v38, v37);
  v15 = *(v10 + 80);
  v16 = (v15 + 16) & ~v15;
  v17 = *(v4 + 80);
  v18 = (v11 + v17 + v16) & ~v17;
  v30 = v15 | v17;
  v19 = swift_allocObject();
  v28 = *(v10 + 32);
  v28(v19 + v16, v14, v9);
  v20 = *(v4 + 32);
  v26 = v4 + 32;
  v27 = v20;
  v21 = v37;
  v20((v19 + v18), v29, v37);
  v22 = v34;
  v32(v34, v33, v9);
  v23 = v35;
  v31(v35, v38, v21);
  v24 = swift_allocObject();
  v28(&v24[v16], v22, v9);
  v27(&v24[v18], v23, v21);
  sub_20CC9636C(sub_20CC96C3C, v19, sub_20CC96C78, v24);
}

void sub_20CC94088(void *a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v38 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F520, &qword_20CCDC8A0);
  v4 = *(v37 - 8);
  v34 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v31 - v5;
  v33 = sub_20CCDB084();
  v6 = *(v33 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = v8;
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F528, &qword_20CCDC8A8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v31 - v12;
  v14 = sub_20CCDB3B4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CCDB064();
  sub_20CCDB3A4();
  (*(v15 + 8))(v18, v14);
  v31 = sub_20CCDB664();

  sub_20CCDB074();
  v19 = sub_20CCDA624();
  v20 = *(v19 - 8);
  v21 = 0;
  if ((*(v20 + 48))(v13, 1, v19) != 1)
  {
    v21 = sub_20CCDA614();
    (*(v20 + 8))(v13, v19);
  }

  v22 = a2;
  v23 = v33;
  (*(v6 + 16))(v9, v22, v33);
  v24 = v36;
  v25 = v37;
  (*(v4 + 16))(v36, v35, v37);
  v26 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v27 = (v32 + *(v4 + 80) + v26) & ~*(v4 + 80);
  v28 = swift_allocObject();
  (*(v6 + 32))(v28 + v26, v9, v23);
  (*(v4 + 32))(v28 + v27, v24, v25);
  aBlock[4] = sub_20CC96CB4;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CC94E74;
  aBlock[3] = &block_descriptor_35;
  v29 = _Block_copy(aBlock);

  v30 = v31;
  [v38 listRecordsWithAdapter:v31 interval:v21 completion:v29];
  _Block_release(v29);
}

uint64_t sub_20CC944DC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v66 = a3;
  v7 = sub_20CCDB3B4();
  v64 = *(v7 - 8);
  v65 = v7;
  v8 = *(v64 + 64);
  MEMORY[0x28223BE20](v7);
  v63 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20CCDADE4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20CCDB084();
  v67 = *(v15 - 8);
  v16 = *(v67 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v20);
  if (a2)
  {
    v23 = a2;
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v24 = sub_20CCDB584();
    __swift_project_value_buffer(v24, qword_28110EE00);
    v25 = v67;
    (*(v67 + 16))(v19, v66, v15);
    v26 = a2;
    v27 = sub_20CCDB564();
    v28 = sub_20CCDB894();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v62 = v15;
      v68 = v30;
      v69 = v30;
      *v29 = 136315394;
      v31 = v63;
      sub_20CCDB064();
      v32 = sub_20CCDB3A4();
      v34 = v33;
      (*(v64 + 8))(v31, v65);
      (*(v25 + 8))(v19, v62);
      v35 = sub_20CC88C4C(v32, v34, &v69);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2112;
      v36 = a2;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v37;
      v38 = v66;
      *v66 = v37;
      _os_log_impl(&dword_20CC86000, v27, v28, "Failed to list records for adapter %s. Error: %@", v29, 0x16u);
      sub_20CC96BBC(v38);
      MEMORY[0x20F30FD70](v38, -1, -1);
      v39 = v68;
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x20F30FD70](v39, -1, -1);
      MEMORY[0x20F30FD70](v29, -1, -1);
    }

    else
    {

      (*(v25 + 8))(v19, v15);
    }

    v69 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F520, &qword_20CCDC8A0);
    return sub_20CCDB744();
  }

  else
  {
    v61 = v60 - v21;
    v62 = v15;
    v40 = *(a1 + 16);
    v41 = MEMORY[0x277D84F90];
    if (v40)
    {
      v60[0] = v22;
      v60[1] = a4;
      v69 = MEMORY[0x277D84F90];
      sub_20CCA5788(0, v40, 0);
      v41 = v69;
      v68 = (v11 + 32);
      v42 = (a1 + 40);
      do
      {
        sub_20CC96DA4(*(v42 - 1), *v42);
        sub_20CC96F70(&qword_27C80F530, MEMORY[0x277D0A010]);
        sub_20CCDAFC4();
        v69 = v41;
        v44 = *(v41 + 16);
        v43 = *(v41 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_20CCA5788(v43 > 1, v44 + 1, 1);
          v41 = v69;
        }

        v42 += 2;
        *(v41 + 16) = v44 + 1;
        (*(v11 + 32))(v41 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v44, v14, v10);
        --v40;
      }

      while (v40);
    }

    v46 = v62;
    v47 = v67;
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v48 = sub_20CCDB584();
    __swift_project_value_buffer(v48, qword_28110EE00);
    v49 = v61;
    (*(v47 + 16))(v61, v66, v46);

    v50 = sub_20CCDB564();
    v51 = sub_20CCDB874();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v69 = v68;
      *v52 = 134218242;
      *(v52 + 4) = *(v41 + 16);

      *(v52 + 12) = 2080;
      v53 = v63;
      sub_20CCDB064();
      v66 = sub_20CCDB3A4();
      v54 = v47;
      v55 = v46;
      v57 = v56;
      (*(v64 + 8))(v53, v65);
      (*(v54 + 8))(v49, v55);
      v58 = sub_20CC88C4C(v66, v57, &v69);

      *(v52 + 14) = v58;
      _os_log_impl(&dword_20CC86000, v50, v51, "Listed %ld records for adapter %s", v52, 0x16u);
      v59 = v68;
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x20F30FD70](v59, -1, -1);
      MEMORY[0x20F30FD70](v52, -1, -1);
    }

    else
    {

      (*(v47 + 8))(v49, v46);
    }

    v69 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F520, &qword_20CCDC8A0);
    return sub_20CCDB754();
  }
}

void sub_20CC94E74(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_20CCDB6F4();

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_20CC94F04(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20CCDB3B4();
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20CCDB084();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v15 = sub_20CCDB584();
  __swift_project_value_buffer(v15, qword_28110EE00);
  (*(v11 + 16))(v14, a2, v10);
  v16 = a1;
  v17 = sub_20CCDB564();
  v18 = sub_20CCDB894();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = a3;
    v20 = v19;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36 = v32;
    *v20 = 136315394;
    sub_20CCDB064();
    v21 = sub_20CCDB3A4();
    v23 = v22;
    (*(v34 + 8))(v9, v35);
    (*(v11 + 8))(v14, v10);
    v24 = sub_20CC88C4C(v21, v23, &v36);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2112;
    v25 = a1;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v26;
    v27 = v31;
    *v31 = v26;
    _os_log_impl(&dword_20CC86000, v17, v18, "Failed to list records for adapter %s. proxy error: %@", v20, 0x16u);
    sub_20CC96BBC(v27);
    MEMORY[0x20F30FD70](v27, -1, -1);
    v28 = v32;
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x20F30FD70](v28, -1, -1);
    MEMORY[0x20F30FD70](v20, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v36 = a1;
  v29 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F520, &qword_20CCDC8A0);
  return sub_20CCDB744();
}

uint64_t sub_20CC9526C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v20 = a1;
  v21 = a4;
  v23 = a2;
  v24 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C80F510, &unk_20CCDC890);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v22 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  v12 = *(v7 + 16);
  v12(&v19 - v10, a1, v6);
  v13 = *(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v24;
  *(v14 + 24) = a4;
  v15 = *(v7 + 32);
  v15(v14 + ((v13 + 32) & ~v13), v11, v6);
  v16 = v22;
  v12(v22, v20, v6);
  v17 = swift_allocObject();
  v15(v17 + ((v13 + 16) & ~v13), v16, v6);
  sub_20CC96DA4(v24, v21);
  sub_20CC9636C(sub_20CC97260, v14, sub_20CC972E0, v17);
}

void sub_20CC95478(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C80F510, &unk_20CCDC890);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = sub_20CCDA6D4();
  (*(v7 + 16))(v10, a4, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_20CC97400;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CC95900;
  aBlock[3] = &block_descriptor_59;
  v14 = _Block_copy(aBlock);

  [a1 saveInference:v11 completion:v14];
  _Block_release(v14);
}

uint64_t sub_20CC95648(char a1, void *a2)
{
  v4 = sub_20CCDB584();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = a2;
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, qword_28110EE00);
    v10 = a2;
    v11 = sub_20CCDB564();
    v12 = sub_20CCDB894();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = a2;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_20CC86000, v11, v12, "Failed to save record. error: %@", v13, 0xCu);
      sub_20CC96BBC(v14);
      MEMORY[0x20F30FD70](v14, -1, -1);
      MEMORY[0x20F30FD70](v13, -1, -1);
    }

    v21 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C80F510, &unk_20CCDC890);
    return sub_20CCDB744();
  }

  else
  {
    sub_20CCDB384();
    v18 = sub_20CCDB564();
    v19 = sub_20CCDB874();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_20CC86000, v18, v19, "Successfully saved record", v20, 2u);
      MEMORY[0x20F30FD70](v20, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v22 = a1 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C80F510, &unk_20CCDC890);
    return sub_20CCDB754();
  }
}

void sub_20CC95900(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_20CC95978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v29 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C80F510, &unk_20CCDC890);
  v26 = v5;
  v6 = *(v5 - 8);
  v30 = *(v6 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v31 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v27 = &v25 - v9;
  v11 = sub_20CCDB334();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a3, v11);
  v28 = *(v6 + 16);
  v28(v10, a1, v5);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = *(v6 + 80);
  v17 = (v13 + v16 + v15) & ~v16;
  v25 = v16 | 7;
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v15, v14, v11);
  v19 = *(v6 + 32);
  v20 = v18 + v17;
  v21 = v26;
  v19(v20, v27, v26);
  v22 = v31;
  v28(v31, v29, v21);
  v23 = swift_allocObject();
  v19(v23 + ((v16 + 16) & ~v16), v22, v21);
  sub_20CC9636C(sub_20CC96B74, v18, sub_20CC96BB0, v23);
}

void sub_20CC95C50(void *a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v19 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C80F510, &unk_20CCDC890);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v8 = sub_20CCDA784();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CCDB314();
  v13 = sub_20CCDB664();

  sub_20CCDB324();
  v14 = sub_20CCDA764();
  (*(v9 + 8))(v12, v8);
  (*(v4 + 16))(v7, v18, v3);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  (*(v4 + 32))(v16 + v15, v7, v3);
  aBlock[4] = sub_20CC96C24;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CC95900;
  aBlock[3] = &block_descriptor_23;
  v17 = _Block_copy(aBlock);

  [v19 setFeedbackId:v13 for:v14 completion:v17];
  _Block_release(v17);
}

uint64_t sub_20CC95ED4(char a1, void *a2)
{
  v4 = sub_20CCDB584();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  if (a2)
  {
    v12 = a2;
    sub_20CCDB384();
    v13 = a2;
    v14 = sub_20CCDB564();
    v15 = sub_20CCDB894();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = a2;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_20CC86000, v14, v15, "Failed to set feedback id. error: %@", v16, 0xCu);
      sub_20CC96BBC(v17);
      MEMORY[0x20F30FD70](v17, -1, -1);
      MEMORY[0x20F30FD70](v16, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    v24 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C80F510, &unk_20CCDC890);
    return sub_20CCDB744();
  }

  else
  {
    sub_20CCDB384();
    v21 = sub_20CCDB564();
    v22 = sub_20CCDB874();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_20CC86000, v21, v22, "Successfully set feedback id", v23, 2u);
      MEMORY[0x20F30FD70](v23, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
    v25 = a1 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C80F510, &unk_20CCDC890);
    return sub_20CCDB754();
  }
}

uint64_t sub_20CC96194(void *a1, uint64_t a2, const char *a3)
{
  v5 = sub_20CCDB584();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CCDB384();
  v10 = a1;
  v11 = sub_20CCDB564();
  v12 = sub_20CCDB894();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = a1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_20CC86000, v11, v12, a3, v13, 0xCu);
    sub_20CC96BBC(v14);
    MEMORY[0x20F30FD70](v14, -1, -1);
    MEMORY[0x20F30FD70](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v19[1] = a1;
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C80F510, &unk_20CCDC890);
  return sub_20CCDB744();
}

void sub_20CC9636C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t a1), void *a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC28FitnessIntelligenceInference23InferenceDatabaseClient_proxyProvider;
  v11 = *&v4[OBJC_IVAR____TtC28FitnessIntelligenceInference23InferenceDatabaseClient_proxyProvider];
  if (v11)
  {
    v12 = *&v4[OBJC_IVAR____TtC28FitnessIntelligenceInference23InferenceDatabaseClient_proxyProvider];
    v13 = v12;
  }

  else
  {
    v23 = *&v4[OBJC_IVAR____TtC28FitnessIntelligenceInference23InferenceDatabaseClient_healthStore];
    sub_20CCDAFE4();
    v24 = a1;
    v14 = objc_allocWithZone(MEMORY[0x277CCDAA0]);
    v15 = v4;
    v16 = sub_20CCDB664();

    v17 = sub_20CCDA764();
    v13 = [v14 initWithHealthStore:v23 taskIdentifier:v16 exportedObject:v15 taskUUID:v17];

    a1 = v24;
    v12 = 0;
    v11 = *&v5[v10];
  }

  *&v5[v10] = v13;
  v18 = v12;
  v19 = v13;

  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a1;
  v20[5] = a2;
  v29 = sub_20CC96AFC;
  v30 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_20CC9669C;
  v28 = &block_descriptor_0;
  v21 = _Block_copy(&aBlock);

  v29 = a3;
  v30 = a4;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_20CC9670C;
  v28 = &block_descriptor_11;
  v22 = _Block_copy(&aBlock);

  [v19 fetchProxyWithHandler:v21 errorHandler:v22];
  _Block_release(v22);
  _Block_release(v21);
}

void sub_20CC965D0(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)())
{
  sub_20CC89458(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F500, &qword_20CCDC888);
  if (swift_dynamicCast())
  {
    a4();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_20CC96B20();
    v6 = swift_allocError();
    a2();
  }
}

uint64_t sub_20CC9669C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[3] = swift_getObjectType();
  v6[0] = a2;

  swift_unknownObjectRetain();
  v4(v6);

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

void sub_20CC9670C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_20CC967A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InferenceDatabaseClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for InferenceDatabaseClient()
{
  result = qword_28110ED10;
  if (!qword_28110ED10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CC968BC()
{
  result = sub_20CCDA784();
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

uint64_t sub_20CC969C8()
{
  v0 = sub_20CCDB584();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CCDB384();
  v5 = sub_20CCDB564();
  v6 = sub_20CCDB8B4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20CC86000, v5, v6, "InferenceDatabaseClient connection invalidated", v7, 2u);
    MEMORY[0x20F30FD70](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_20CC96B20()
{
  result = qword_27C80F508;
  if (!qword_27C80F508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C80F508);
  }

  return result;
}

uint64_t sub_20CC96BBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F460, &unk_20CCDC700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CC96CB4(uint64_t a1, void *a2)
{
  v5 = *(sub_20CCDB084() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F520, &qword_20CCDC8A0) - 8);
  v9 = v2 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_20CC944DC(a1, a2, (v2 + v6), v9);
}

uint64_t sub_20CC96DA4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_20CC96E70(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, unint64_t, uint64_t))
{
  v9 = *(a2(0) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v13 = v5 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return a5(a1, v5 + v10, v13);
}

uint64_t sub_20CC96F70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_13Tm(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = a1(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  v14 = (v9 + v10 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v8 | v13;
  (*(v7 + 8))(v3 + v9, v6);
  (*(v12 + 8))(v3 + v14, v11);

  return MEMORY[0x2821FE8E8](v3, v14 + v15, v16 | 7);
}

uint64_t sub_20CC97114(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = *(sub_20CCDA784() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F538, &unk_20CCDC8B0) - 8);
  v11 = v3 + ((v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_20CC930BC(a1, a2, a3, v3 + v8, v11);
}

uint64_t sub_20CC9720C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_20CC97260(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C80F510, &unk_20CCDC890) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_20CC95478(a1, v4, v5, v6);
}

uint64_t objectdestroy_16Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C80F510, &unk_20CCDC890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20CC97418(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C80F510, &unk_20CCDC890) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t getEnumTagSinglePayload for InferenceDatabaseClient.InferenceDatabaseClientError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for InferenceDatabaseClient.InferenceDatabaseClientError(_WORD *result, int a2, int a3)
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

unint64_t sub_20CC975A8()
{
  result = qword_27C80F548;
  if (!qword_27C80F548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C80F548);
  }

  return result;
}

uint64_t sub_20CC97638()
{
  v1 = *v0;
  sub_20CCDBB44();
  MEMORY[0x20F30F730](v1);
  return sub_20CCDBB64();
}

uint64_t sub_20CC976AC()
{
  v1 = *v0;
  sub_20CCDBB44();
  MEMORY[0x20F30F730](v1);
  return sub_20CCDBB64();
}

uint64_t sub_20CC976F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_20CCDB114();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CC977D0, v5, 0);
}

uint64_t sub_20CC977D0()
{
  v51 = v0;
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[2];
  v9 = objc_allocWithZone(sub_20CCDA964());

  v10 = sub_20CCDA944();
  v11 = objc_allocWithZone(sub_20CCDA984());
  v12 = v10;
  v13 = sub_20CCDA974();
  v0[13] = v13;
  sub_20CCDA9A4();
  sub_20CCDA9C4();
  sub_20CCDA9B4();
  v49 = *(v3 + 16);
  v49(v1, v5, v2);
  v14 = (*(v3 + 88))(v1, v2);
  if (v14 != *MEMORY[0x277D0A4D8] && v14 != *MEMORY[0x277D0A4D0] && v14 != *MEMORY[0x277D0A4C8])
  {
    (*(v0[9] + 8))(v0[12], v0[8]);
  }

  sub_20CCDA9E4();
  sub_20CCDA9D4();

  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v15 = v0[11];
  v16 = v0[8];
  v18 = v0[5];
  v17 = v0[6];
  v19 = v0[3];
  v20 = sub_20CCDB584();
  __swift_project_value_buffer(v20, qword_28110EE00);
  v49(v15, v17, v16);

  v21 = sub_20CCDB564();
  v22 = sub_20CCDB8B4();

  v23 = os_log_type_enabled(v21, v22);
  v24 = v0[11];
  if (v23)
  {
    v25 = v0[9];
    v26 = v0[8];
    v45 = v0[5];
    v46 = v0[10];
    v44 = v0[4];
    v27 = v0[2];
    v28 = v0[3];
    v47 = v22;
    v29 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v50 = v48;
    *v29 = 136315650;
    *(v29 + 4) = sub_20CC88C4C(v27, v28, &v50);
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_20CC88C4C(v44, v45, &v50);
    *(v29 + 22) = 2080;
    v49(v46, v24, v26);
    v30 = sub_20CCDB684();
    v32 = v31;
    (*(v25 + 8))(v24, v26);
    v33 = sub_20CC88C4C(v30, v32, &v50);

    *(v29 + 24) = v33;
    _os_log_impl(&dword_20CC86000, v21, v47, "Prewarming for %s (%s) (%s)", v29, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F30FD70](v48, -1, -1);
    MEMORY[0x20F30FD70](v29, -1, -1);
  }

  else
  {
    v34 = v0[8];
    v35 = v0[9];

    (*(v35 + 8))(v24, v34);
  }

  v36 = v0[7];
  Current = CFAbsoluteTimeGetCurrent();
  v38 = sub_20CC9D638(&qword_27C80F5F0, type metadata accessor for AudioSynthesizer);
  v39 = swift_task_alloc();
  v0[14] = v39;
  *(v39 + 2) = v36;
  *(v39 + 3) = v13;
  v39[4] = Current;
  v40 = *(MEMORY[0x277D859E0] + 4);
  v41 = swift_task_alloc();
  v0[15] = v41;
  *v41 = v0;
  v41[1] = sub_20CC97CD4;
  v42 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v41, v36, v38, 0xD00000000000002BLL, 0x800000020CCDE3C0, sub_20CC9D740, v39, v42);
}

uint64_t sub_20CC97CD4()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_20CC97E00, v3, 0);
}

uint64_t sub_20CC97E00()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20CC97E84(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F618, &qword_20CCDCAC8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = *(a2 + 112);
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  (*(v7 + 32))(v13 + v12, v10, v6);
  sub_20CCDA8E4();
}

uint64_t sub_20CC98018(void *a1, double a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v5 = sub_20CCDB584();
  __swift_project_value_buffer(v5, qword_28110EE00);
  v6 = a1;
  v7 = sub_20CCDB564();
  v8 = sub_20CCDB8B4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 134218242;
    *(v9 + 4) = Current - a2;
    *(v9 + 12) = 2112;
    if (a1)
    {
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      v13 = v12;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(v9 + 14) = v12;
    *v10 = v13;
    _os_log_impl(&dword_20CC86000, v7, v8, "Prewarming completed in %fs with error: %@", v9, 0x16u);
    sub_20CC89568(v10, &qword_27C80F460, &unk_20CCDC700);
    MEMORY[0x20F30FD70](v10, -1, -1);
    MEMORY[0x20F30FD70](v9, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F618, &qword_20CCDCAC8);
  return sub_20CCDB754();
}

uint64_t sub_20CC981C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v7 + 56) = a4;
  *(v7 + 64) = v6;
  *(v7 + 241) = a6;
  *(v7 + 240) = a5;
  *(v7 + 40) = a2;
  *(v7 + 48) = a3;
  *(v7 + 32) = a1;
  v8 = sub_20CCDB104();
  *(v7 + 72) = v8;
  v9 = *(v8 - 8);
  *(v7 + 80) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 88) = swift_task_alloc();
  v11 = *(*(type metadata accessor for SynthesizedAudio(0) - 8) + 64) + 15;
  *(v7 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CC982BC, v6, 0);
}

uint64_t sub_20CC982BC()
{
  if ((*(v0 + 240) & 1) != 0 || (v1 = [objc_opt_self() standardUserDefaults], v2 = sub_20CCDB664(), v3 = objc_msgSend(v1, sel_BOOLForKey_, v2), v2, v1, v3))
  {
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v4 = sub_20CCDB584();
    *(v0 + 104) = __swift_project_value_buffer(v4, qword_28110EE00);
    v5 = sub_20CCDB564();
    v6 = sub_20CCDB8B4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20CC86000, v5, v6, "Playing audio directly", v7, 2u);
      MEMORY[0x20F30FD70](v7, -1, -1);
    }

    v8 = swift_task_alloc();
    *(v0 + 112) = v8;
    *v8 = v0;
    v8[1] = sub_20CC985FC;
    v9 = *(v0 + 96);
    v10 = *(v0 + 56);

    return sub_20CCA86B8(v9);
  }

  else
  {
    v12 = MEMORY[0x277D0A4C0];
    if (!*(v0 + 241))
    {
      v12 = MEMORY[0x277D0A4B0];
    }

    (*(*(v0 + 80) + 104))(*(v0 + 88), *v12, *(v0 + 72));
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v13 = sub_20CCDB584();
    *(v0 + 184) = __swift_project_value_buffer(v13, qword_28110EE00);
    v14 = sub_20CCDB564();
    v15 = sub_20CCDB8B4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 241);
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      *(v17 + 4) = v16;
      _os_log_impl(&dword_20CC86000, v14, v15, "Playing audio via Siri Announce (streamed: %{BOOL}d)", v17, 8u);
      MEMORY[0x20F30FD70](v17, -1, -1);
    }

    v18 = swift_task_alloc();
    *(v0 + 192) = v18;
    *v18 = v0;
    v18[1] = sub_20CC98B78;
    v19 = *(v0 + 241);
    v20 = *(v0 + 48);
    v21 = *(v0 + 56);
    v22 = *(v0 + 40);

    return sub_20CCA97AC(v22, v20, v19);
  }
}

uint64_t sub_20CC985FC()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {
    v4 = v3[8];

    return MEMORY[0x2822009F8](sub_20CC99020, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[16] = v5;
    *v5 = v3;
    v5[1] = sub_20CC98768;
    v6 = v3[12];

    return sub_20CCA9290();
  }
}

uint64_t sub_20CC98768(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *(*v2 + 96);
  v7 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 144) = v1;

  sub_20CC9D2D0(v6);
  v8 = *(v3 + 64);
  if (v1)
  {
    v9 = sub_20CC991B8;
  }

  else
  {
    v9 = sub_20CC988B8;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_20CC988B8()
{
  v1 = v0[17];
  v2 = v0[8];
  v3 = swift_task_alloc();
  v0[19] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D0A040] + 4);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_20CC98990;

  return MEMORY[0x282160B38]();
}

uint64_t sub_20CC98990(double a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v11 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v6 = *(v4 + 64);
    v7 = sub_20CC99350;
  }

  else
  {
    v8 = *(v4 + 152);
    v9 = *(v4 + 64);
    *(v4 + 176) = a1;

    v7 = sub_20CC98AC8;
    v6 = v9;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_20CC98AC8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 32);

  (*(v2 + 104))(v3, *MEMORY[0x277D0A4B8], v1);
  v4 = *(v0 + 176);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);

  v7 = *(v0 + 8);
  v8.n128_u64[0] = v4;

  return v7(1, v8);
}

uint64_t sub_20CC98B78(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  v4[25] = v1;

  v7 = v4[8];
  if (v1)
  {
    v8 = sub_20CC994FC;
  }

  else
  {
    v4[26] = a1;
    v8 = sub_20CC98CB4;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_20CC98CB4()
{
  v1 = v0[26];
  v2 = [objc_allocWithZone(MEMORY[0x277CEF3C8]) initWithWorkoutVoiceFeedback_];
  v0[27] = v2;

  if (v2)
  {
    v11 = v0[8];
    Current = CFAbsoluteTimeGetCurrent();
    v13 = sub_20CC9D638(&qword_27C80F5F0, type metadata accessor for AudioSynthesizer);
    v14 = swift_task_alloc();
    v0[28] = v14;
    *(v14 + 16) = v2;
    *(v14 + 24) = Current;
    v15 = *(MEMORY[0x277D859E0] + 4);
    v16 = swift_task_alloc();
    v0[29] = v16;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F600, &qword_20CCDCA98);
    *v16 = v0;
    v16[1] = sub_20CC98E3C;
    v8 = sub_20CC9D2C4;
    v3 = v0 + 2;
    v7 = 0x800000020CCDE2F0;
    v4 = v11;
    v5 = v13;
    v6 = 0xD000000000000048;
    v9 = v14;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822007B8](v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_20CC98E3C()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 64);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_20CC98F68, v3, 0);
}

uint64_t sub_20CC98F68()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 32);

  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  (*(v2 + 32))(v4, v1, v3);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);

  v9 = *(v0 + 8);
  v10.n128_u64[0] = v6;

  return v9(v5, v10);
}

uint64_t sub_20CC99020()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v1;
  v4 = sub_20CCDB564();
  v5 = sub_20CCDB8B4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20CC86000, v4, v5, "Error playing audio directly: %@", v6, 0xCu);
    sub_20CC89568(v7, &qword_27C80F460, &unk_20CCDC700);
    MEMORY[0x20F30FD70](v7, -1, -1);
    MEMORY[0x20F30FD70](v6, -1, -1);
  }

  else
  {
  }

  (*(v0[10] + 104))(v0[4], *MEMORY[0x277D0A4B8], v0[9]);
  v11 = v0[11];
  v10 = v0[12];

  v12 = v0[1];
  v13.n128_u64[0] = 0;

  return v12(0, v13);
}

uint64_t sub_20CC991B8()
{
  v1 = v0[18];
  v2 = v0[13];
  v3 = v1;
  v4 = sub_20CCDB564();
  v5 = sub_20CCDB8B4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20CC86000, v4, v5, "Error playing audio directly: %@", v6, 0xCu);
    sub_20CC89568(v7, &qword_27C80F460, &unk_20CCDC700);
    MEMORY[0x20F30FD70](v7, -1, -1);
    MEMORY[0x20F30FD70](v6, -1, -1);
  }

  else
  {
  }

  (*(v0[10] + 104))(v0[4], *MEMORY[0x277D0A4B8], v0[9]);
  v11 = v0[11];
  v10 = v0[12];

  v12 = v0[1];
  v13.n128_u64[0] = 0;

  return v12(0, v13);
}

uint64_t sub_20CC99350()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 168);
  v3 = *(v0 + 104);
  v4 = v2;
  v5 = sub_20CCDB564();
  v6 = sub_20CCDB8B4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20CC86000, v5, v6, "Error playing audio directly: %@", v7, 0xCu);
    sub_20CC89568(v8, &qword_27C80F460, &unk_20CCDC700);
    MEMORY[0x20F30FD70](v8, -1, -1);
    MEMORY[0x20F30FD70](v7, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 80) + 104))(*(v0 + 32), *MEMORY[0x277D0A4B8], *(v0 + 72));
  v12 = *(v0 + 88);
  v11 = *(v0 + 96);

  v13 = *(v0 + 8);
  v14.n128_u64[0] = 0;

  return v13(0, v14);
}

uint64_t sub_20CC994FC()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v1;
  v4 = sub_20CCDB564();
  v5 = sub_20CCDB8B4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[25];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20CC86000, v4, v5, "Error getting audio data: %@", v8, 0xCu);
    sub_20CC89568(v9, &qword_27C80F460, &unk_20CCDC700);
    MEMORY[0x20F30FD70](v9, -1, -1);
    MEMORY[0x20F30FD70](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[10] + 32))(v0[4], v0[11], v0[9]);
  v13 = v0[11];
  v12 = v0[12];

  v14 = v0[1];
  v15.n128_u64[0] = 0;

  return v14(0, v15);
}

uint64_t sub_20CC99690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_20CC8DF7C;

  return sub_20CC9972C(a3);
}

uint64_t sub_20CC9972C(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_20CCDA6A4();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20CC99850, v1, 0);
}

uint64_t sub_20CC99850()
{
  v45 = v0;
  v44[1] = *MEMORY[0x277D85DE8];
  v1 = v0[7];
  v2 = objc_allocWithZone(sub_20CCDA894());
  v3 = v1;
  v0[16] = sub_20CCDA884();
  sub_20CC9D3D8();
  type metadata accessor for AudioSynthesizer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_20CCDB664();
  v7 = sub_20CCDB664();
  v8 = [v5 URLForResource:v6 withExtension:v7];

  if (v8)
  {
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[9];
    v12 = v0[10];
    sub_20CCDA694();

    (*(v12 + 32))(v9, v10, v11);
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v13 = v0[15];
    v14 = v0[13];
    v15 = v0[9];
    v16 = v0[10];
    v17 = sub_20CCDB584();
    v0[17] = __swift_project_value_buffer(v17, qword_28110EE00);
    v18 = *(v16 + 16);
    v0[18] = v18;
    v0[19] = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v18(v14, v13, v15);
    v19 = sub_20CCDB564();
    v20 = sub_20CCDB8B4();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[13];
    v23 = v0[9];
    v24 = v0[10];
    if (v21)
    {
      v25 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44[0] = v43;
      *v25 = 136315138;
      sub_20CC9D638(&qword_27C80F608, MEMORY[0x277CC9260]);
      v26 = sub_20CCDBA44();
      v28 = v27;
      v29 = *(v24 + 8);
      v29(v22, v23);
      v30 = sub_20CC88C4C(v26, v28, v44);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_20CC86000, v19, v20, "Playing sound at %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x20F30FD70](v43, -1, -1);
      MEMORY[0x20F30FD70](v25, -1, -1);
    }

    else
    {

      v29 = *(v24 + 8);
      v29(v22, v23);
    }

    v0[20] = v29;
    v0[21] = [objc_allocWithZone(type metadata accessor for TonePlayer()) init];
    v41 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_20CC99E60, 0, 0);
  }

  else
  {
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v31 = sub_20CCDB584();
    __swift_project_value_buffer(v31, qword_28110EE00);
    v32 = sub_20CCDB564();
    v33 = sub_20CCDB894();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_20CC86000, v32, v33, "Couldn't find announcement tone in bundle; not playing", v34, 2u);
      MEMORY[0x20F30FD70](v34, -1, -1);
    }

    v35 = v0[16];
    v36 = v0[8];
    sub_20CC9D638(&qword_27C80F5F0, type metadata accessor for AudioSynthesizer);
    v37 = swift_task_alloc();
    v0[25] = v37;
    *(v37 + 16) = v36;
    *(v37 + 24) = v35;
    v38 = *(MEMORY[0x277D85A40] + 4);
    v39 = swift_task_alloc();
    v0[26] = v39;
    *v39 = v0;
    v39[1] = sub_20CC9A8CC;
    v40 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822008A0]();
  }
}

uint64_t sub_20CC99E60()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[21];
  v2 = v0[15];
  v3 = swift_task_alloc();
  v0[22] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_20CC99F84;
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822008A0]();
}

uint64_t sub_20CC99F84()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 184);
  v9 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_20CC9A484;
  }

  else
  {
    v5 = *(v2 + 176);

    v4 = sub_20CC9A0D4;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CC9A0D4()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20CC9A160, v1, 0);
}

uint64_t sub_20CC9A160()
{
  v28 = v0;
  v27[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  (*(v0 + 144))(*(v0 + 96), *(v0 + 120), *(v0 + 72));
  v3 = sub_20CCDB564();
  v4 = sub_20CCDB8B4();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 160);
  v7 = *(v0 + 120);
  v8 = *(v0 + 96);
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  if (v5)
  {
    v25 = *(v0 + 168);
    v26 = *(v0 + 160);
    v11 = swift_slowAlloc();
    v24 = v7;
    v12 = swift_slowAlloc();
    v27[0] = v12;
    *v11 = 136315138;
    sub_20CC9D638(&qword_27C80F608, MEMORY[0x277CC9260]);
    v13 = sub_20CCDBA44();
    v15 = v14;
    v26(v8, v10);
    v16 = sub_20CC88C4C(v13, v15, v27);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_20CC86000, v3, v4, "Played sound at %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x20F30FD70](v12, -1, -1);
    MEMORY[0x20F30FD70](v11, -1, -1);

    v26(v24, v10);
  }

  else
  {

    v6(v8, v10);
    v6(v7, v10);
  }

  v17 = *(v0 + 128);
  v18 = *(v0 + 64);
  sub_20CC9D638(&qword_27C80F5F0, type metadata accessor for AudioSynthesizer);
  v19 = swift_task_alloc();
  *(v0 + 200) = v19;
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  v20 = *(MEMORY[0x277D85A40] + 4);
  v21 = swift_task_alloc();
  *(v0 + 208) = v21;
  *v21 = v0;
  v21[1] = sub_20CC9A8CC;
  v22 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822008A0]();
}

uint64_t sub_20CC9A484()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 176);
  v2 = *(v0 + 64);

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20CC9A51C, v2, 0);
}

uint64_t sub_20CC9A51C()
{
  v42 = v0;
  v41[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 192);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  v5 = *(v0 + 120);
  v6 = *(v0 + 88);
  v7 = *(v0 + 72);

  v3(v6, v5, v7);
  v8 = v1;
  v9 = sub_20CCDB564();
  v10 = sub_20CCDB894();

  if (os_log_type_enabled(v9, v10))
  {
    v38 = *(v0 + 160);
    v39 = *(v0 + 192);
    v40 = *(v0 + 120);
    v11 = *(v0 + 80);
    v12 = *(v0 + 88);
    v13 = *(v0 + 72);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v41[0] = v15;
    *v14 = 136315394;
    swift_getErrorValue();
    v17 = *(v0 + 16);
    v16 = *(v0 + 24);
    v18 = *(v0 + 32);
    v19 = sub_20CCDBAE4();
    v21 = sub_20CC88C4C(v19, v20, v41);

    *(v14 + 4) = v21;
    *(v14 + 12) = 2080;
    sub_20CC9D638(&qword_27C80F608, MEMORY[0x277CC9260]);
    v22 = sub_20CCDBA44();
    v24 = v23;
    v38(v12, v13);
    v25 = sub_20CC88C4C(v22, v24, v41);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_20CC86000, v9, v10, "Could not create audio player: %s from URL %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F30FD70](v15, -1, -1);
    MEMORY[0x20F30FD70](v14, -1, -1);

    v38(v40, v13);
  }

  else
  {
    v26 = *(v0 + 160);
    v27 = *(v0 + 120);
    v29 = *(v0 + 80);
    v28 = *(v0 + 88);
    v30 = *(v0 + 72);

    v26(v28, v30);
    v26(v27, v30);
  }

  v31 = *(v0 + 128);
  v32 = *(v0 + 64);
  sub_20CC9D638(&qword_27C80F5F0, type metadata accessor for AudioSynthesizer);
  v33 = swift_task_alloc();
  *(v0 + 200) = v33;
  *(v33 + 16) = v32;
  *(v33 + 24) = v31;
  v34 = *(MEMORY[0x277D85A40] + 4);
  v35 = swift_task_alloc();
  *(v0 + 208) = v35;
  *v35 = v0;
  v35[1] = sub_20CC9A8CC;
  v36 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822008A0]();
}

uint64_t sub_20CC9A8CC()
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 208);
  v12 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);
    v5 = *MEMORY[0x277D85DE8];
    v6 = sub_20CC9ABF8;
  }

  else
  {
    v7 = *(v2 + 200);
    v8 = *(v2 + 64);

    v9 = *MEMORY[0x277D85DE8];
    v6 = sub_20CC9AA40;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v6, v4, 0);
}

uint64_t sub_20CC9AA40()
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_self() sharedInstance];
  v0[5] = 0;
  v2 = [v1 setActive:0 withOptions:0 error:v0 + 5];
  v3 = v0[5];
  v4 = v0[16];
  if (v2)
  {
    v6 = v0[14];
    v5 = v0[15];
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[11];
    v10 = v3;
  }

  else
  {
    v13 = v3;
    sub_20CCDA664();

    swift_willThrow();
    v15 = v0[14];
    v14 = v0[15];
    v17 = v0[12];
    v16 = v0[13];
    v18 = v0[11];
  }

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_20CC9ABF8()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 200);

  v2 = *(v0 + 216);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v7 = *(v0 + 88);

  v8 = *(v0 + 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

void sub_20CC9ACD4(uint64_t a1, void *a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F610, &qword_20CCDCAC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_20CC9D6A8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CC9AFEC;
  aBlock[3] = &block_descriptor_1;
  v13 = _Block_copy(aBlock);

  [a2 performRequestWithCompletion_];
  _Block_release(v13);
}

uint64_t sub_20CC9AE94(char a1, double a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (qword_28110E630 != -1)
  {
    v11 = Current;
    swift_once();
    Current = v11;
  }

  v5 = Current - a2;
  v6 = sub_20CCDB584();
  __swift_project_value_buffer(v6, qword_28110EE00);
  v7 = sub_20CCDB564();
  v8 = sub_20CCDB8B4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109376;
    *(v9 + 4) = a1 & 1;
    *(v9 + 8) = 2048;
    *(v9 + 10) = v5;
    _os_log_impl(&dword_20CC86000, v7, v8, "AFSiriAnnounceVoiceFeedbackRequest result=%{BOOL}d duration %f", v9, 0x12u);
    MEMORY[0x20F30FD70](v9, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F610, &qword_20CCDCAC0);
  return sub_20CCDB754();
}

uint64_t sub_20CC9AFEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_20CC9B040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_20CC8DF7C;

  return sub_20CC9B78C(a5, a6);
}

uint64_t sub_20CC9B0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v46 = a8;
  v47 = a6;
  v48 = a4;
  v49 = a5;
  v50 = a10;
  v53 = sub_20CCDB114();
  v57 = *(v53 - 8);
  v13 = *(v57 + 64);
  MEMORY[0x28223BE20](v53);
  v56 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F628, &qword_20CCDD4E0);
  v15 = *(v59 - 8);
  v58 = *(v15 + 64);
  MEMORY[0x28223BE20](v59);
  v17 = &v44 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F5D8, &qword_20CCDCA78);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v44 - v20;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F5D0, &qword_20CCDCA30);
  v23 = *(v22 - 8);
  (*(v23 + 16))(v21, a1, v22);
  (*(v23 + 56))(v21, 0, 1, v22);
  v24 = OBJC_IVAR____TtC28FitnessIntelligenceInference16AudioSynthesizer_asbdContinuation;
  swift_beginAccess();
  v54 = a2;
  sub_20CC9D254(v21, a2 + v24);
  swift_endAccess();
  v25 = *(v15 + 16);
  v55 = a3;
  v26 = v59;
  v45 = v25;
  v25(v17, a3, v59);
  v27 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v28 = swift_allocObject();
  v29 = *(v15 + 32);
  v51 = v15 + 32;
  v52 = v17;
  v44 = v29;
  v29(v28 + v27, v17, v26);
  v30 = objc_allocWithZone(sub_20CCDA964());

  v31 = sub_20CCDA944();
  v32 = objc_allocWithZone(sub_20CCDA984());

  v33 = v31;
  v34 = sub_20CCDA974();

  sub_20CCDA9A4();
  sub_20CCDA9C4();
  sub_20CCDA9B4();
  v36 = v56;
  v35 = v57;
  v37 = v53;
  (*(v57 + 16))(v56, v50, v53);
  v38 = (*(v35 + 88))(v36, v37);
  if (v38 != *MEMORY[0x277D0A4D8] && v38 != *MEMORY[0x277D0A4D0] && v38 != *MEMORY[0x277D0A4C8])
  {
    (*(v57 + 8))(v56, v37);
  }

  sub_20CCDA9E4();
  sub_20CCDA9D4();

  v39 = *(v54 + 112);
  v40 = v52;
  v41 = v59;
  v45(v52, v55, v59);
  v42 = swift_allocObject();
  v44(v42 + v27, v40, v41);
  sub_20CCDA8A4();
}

uint64_t sub_20CC9B63C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F630, &qword_20CCDCAE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v9 - v5;
  v9[1] = a1;
  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F628, &qword_20CCDD4E0);
  sub_20CCDB814();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_20CC9B73C(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F628, &qword_20CCDD4E0);
  return sub_20CCDB824();
}

uint64_t sub_20CC9B78C(uint64_t a1, uint64_t a2)
{
  v3[47] = a2;
  v3[48] = v2;
  v3[46] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F5D0, &qword_20CCDCA30);
  v3[49] = v4;
  v5 = *(v4 - 8);
  v3[50] = v5;
  v6 = *(v5 + 64) + 15;
  v3[51] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F5D8, &qword_20CCDCA78) - 8) + 64) + 15;
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F5E0, &qword_20CCDCA80);
  v3[54] = v8;
  v9 = *(v8 - 8);
  v3[55] = v9;
  v10 = *(v9 + 64) + 15;
  v3[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CC9B908, v2, 0);
}

uint64_t sub_20CC9B908()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  v0[57] = __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Starting processing of synthesized audio…", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = v0[56];
  v6 = v0[48];
  v7 = v0[46];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F5E8, &unk_20CCDCA88);
  sub_20CCDB7B4();
  v8 = sub_20CC9D638(&qword_27C80F5F0, type metadata accessor for AudioSynthesizer);
  v9 = OBJC_IVAR____TtC28FitnessIntelligenceInference16AudioSynthesizer_asbdContinuation;
  v0[58] = v8;
  v0[59] = v9;
  v0[60] = OBJC_IVAR____TtC28FitnessIntelligenceInference16AudioSynthesizer_encoder;
  swift_beginAccess();
  v10 = v0[58];
  v11 = v0[48];
  v12 = *(MEMORY[0x277D858B8] + 4);
  v13 = swift_task_alloc();
  v0[61] = v13;
  *v13 = v0;
  v13[1] = sub_20CC9BB04;
  v14 = v0[56];
  v15 = v0[54];

  return MEMORY[0x2822005A8](v0 + 41, v11, v10, v15, v0 + 42);
}

uint64_t sub_20CC9BB04()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v7 = *v1;
  *(*v1 + 496) = v0;

  v4 = *(v2 + 384);
  if (v0)
  {
    v5 = sub_20CC9C6B0;
  }

  else
  {
    v5 = sub_20CC9BC1C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_20CC9BC1C()
{
  v72 = v0;
  v1 = *(v0 + 328);
  *(v0 + 504) = v1;
  if (v1)
  {
    sub_20CCDAA64();
    if (*(v0 + 184) == 1869641075)
    {
      v2 = v1;
LABEL_23:
      *(v0 + 512) = v2;
      v20 = *(v0 + 384);
      if (*(v20 + 160))
      {
        v21 = *(v0 + 472);
        v22 = *(v0 + 424);
        v23 = *(v0 + 392);
        v24 = *(v0 + 400);
        sub_20CCDAA64();
        v25 = *(v0 + 128);
        v26 = *(v0 + 112);
        *(v20 + 120) = *(v0 + 96);
        *(v20 + 136) = v26;
        *(v20 + 152) = v25;
        *(v20 + 160) = 0;
        sub_20CC9D1E4(v20 + v21, v22);
        v27 = (*(v24 + 48))(v22, 1, v23);
        v28 = *(v0 + 424);
        if (v27)
        {
          sub_20CC89568(*(v0 + 424), &qword_27C80F5D8, &qword_20CCDCA78);
        }

        else
        {
          v30 = *(v0 + 400);
          v29 = *(v0 + 408);
          v31 = *(v0 + 392);
          (*(v30 + 16))(v29, *(v0 + 424), v31);
          sub_20CC89568(v28, &qword_27C80F5D8, &qword_20CCDCA78);
          sub_20CCDAA64();
          *(v0 + 216) = *(v0 + 56);
          *(v0 + 232) = *(v0 + 72);
          *(v0 + 248) = *(v0 + 88);
          sub_20CCDB754();
          (*(v30 + 8))(v29, v31);
        }

        v32 = *(v0 + 472);
        v33 = *(v0 + 416);
        v34 = *(v0 + 384);
        (*(*(v0 + 400) + 56))(v33, 1, 1, *(v0 + 392));
        swift_beginAccess();
        sub_20CC9D254(v33, v34 + v32);
        swift_endAccess();
      }

      *(v0 + 360) = v2;
      v35 = *(MEMORY[0x277CEF708] + 4);
      v36 = swift_task_alloc();
      *(v0 + 520) = v36;
      *v36 = v0;
      v36[1] = sub_20CC9C2B4;
      v37 = *(v0 + 376);
      v38 = v0 + 360;
      goto LABEL_29;
    }

    v6 = sub_20CCDAA24();
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 != 2)
      {
        sub_20CC9720C(v6, v7);
        goto LABEL_22;
      }

      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      sub_20CC9720C(v6, v7);
    }

    else
    {
      if (!v8)
      {
        v9 = v7;
        sub_20CC9720C(v6, v7);
        if ((v9 & 0xFF000000000000) == 0)
        {
          goto LABEL_22;
        }

LABEL_17:
        v16 = *(v0 + 480);
        v17 = *(v0 + 384);
        if (*(v17 + v16))
        {
          v18 = *(v0 + 496);
          v19 = *(v17 + v16);
        }

        else
        {
          v18 = *(v0 + 496);
          sub_20CCDAA64();
          v44 = sub_20CCDA874();
          v45 = *(v44 + 48);
          v46 = *(v44 + 52);
          swift_allocObject();
          v47 = sub_20CCDA844();
          if (v18)
          {
            v4 = v18;
LABEL_37:
            (*(*(v0 + 440) + 8))(*(v0 + 448), *(v0 + 432));

            goto LABEL_38;
          }

          v19 = v47;
          v16 = *(v0 + 480);
          v17 = *(v0 + 384);
          v69 = *(v17 + v16);
        }

        *(v17 + v16) = v19;

        v2 = sub_20CCDA864();
        v4 = v18;

        if (!v18)
        {
          goto LABEL_23;
        }

        goto LABEL_37;
      }

      v15 = v6;
      sub_20CC9720C(v6, v7);
      v14 = v15;
      v13 = v15 >> 32;
    }

    if (v14 != v13)
    {
      goto LABEL_17;
    }

LABEL_22:
    v2 = [objc_allocWithZone(sub_20CCDAA94()) init];
    *(v0 + 16) = 0x40E7700000000000;
    *(v0 + 24) = xmmword_20CCDC9A0;
    *(v0 + 40) = xmmword_20CCDC9B0;
    sub_20CCDAA74();
    sub_20CCDAA44();
    goto LABEL_23;
  }

  v3 = *(v0 + 384);
  (*(*(v0 + 440) + 8))(*(v0 + 448), *(v0 + 432));
  if (*(v3 + 160))
  {
    sub_20CC9D190();
    v4 = swift_allocError();
    *v5 = 2;
    swift_willThrow();
  }

  else
  {
    v10 = *(*(v0 + 384) + *(v0 + 480));
    *(v0 + 528) = v10;
    if (!v10)
    {
      v39 = *(v0 + 456);
      v40 = sub_20CCDB564();
      v41 = sub_20CCDB8B4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_20CC86000, v40, v41, "Audio synthesis and processing succeeded.", v42, 2u);
        MEMORY[0x20F30FD70](v42, -1, -1);
      }

      v43 = *(v0 + 376);

      sub_20CCDB444();
      goto LABEL_41;
    }

    v11 = *(v0 + 496);

    v12 = sub_20CCDA854();
    *(v0 + 536) = v12;
    if (!v11)
    {
      *(v0 + 352) = v12;
      v66 = *(MEMORY[0x277CEF708] + 4);
      v67 = swift_task_alloc();
      *(v0 + 544) = v67;
      *v67 = v0;
      v67[1] = sub_20CC9C48C;
      v68 = *(v0 + 376);
      v38 = v0 + 352;
LABEL_29:

      return MEMORY[0x282141C28](v38);
    }

    v4 = v11;
  }

LABEL_38:
  v48 = *(v0 + 456);
  v49 = v4;
  v50 = sub_20CCDB564();
  v51 = sub_20CCDB894();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v71 = v53;
    *v52 = 136315138;
    swift_getErrorValue();
    v55 = *(v0 + 280);
    v54 = *(v0 + 288);
    v56 = *(v0 + 296);
    v57 = sub_20CCDBAE4();
    v59 = sub_20CC88C4C(v57, v58, &v71);

    *(v52 + 4) = v59;
    _os_log_impl(&dword_20CC86000, v50, v51, "Audio synthesis or processing error: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x20F30FD70](v53, -1, -1);
    MEMORY[0x20F30FD70](v52, -1, -1);
  }

  v60 = *(v0 + 376);
  sub_20CCDB424();

LABEL_41:
  v61 = *(v0 + 448);
  v62 = *(v0 + 416);
  v63 = *(v0 + 424);
  v64 = *(v0 + 408);

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_20CC9C2B4()
{
  v1 = *(*v0 + 520);
  v2 = *(*v0 + 384);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20CC9C3C4, v2, 0);
}

uint64_t sub_20CC9C3C4()
{
  v1 = *(v0 + 504);

  v2 = *(v0 + 464);
  v3 = *(v0 + 384);
  v4 = *(MEMORY[0x277D858B8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 488) = v5;
  *v5 = v0;
  v5[1] = sub_20CC9BB04;
  v6 = *(v0 + 448);
  v7 = *(v0 + 432);

  return MEMORY[0x2822005A8](v0 + 328, v3, v2, v7, v0 + 336);
}

uint64_t sub_20CC9C48C()
{
  v1 = *(*v0 + 544);
  v2 = *(*v0 + 384);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20CC9C59C, v2, 0);
}

uint64_t sub_20CC9C59C()
{
  v1 = *(v0 + 528);

  v2 = *(v0 + 456);
  v3 = sub_20CCDB564();
  v4 = sub_20CCDB8B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20CC86000, v3, v4, "Audio synthesis and processing succeeded.", v5, 2u);
    MEMORY[0x20F30FD70](v5, -1, -1);
  }

  v6 = *(v0 + 376);

  sub_20CCDB444();
  v7 = *(v0 + 448);
  v8 = *(v0 + 416);
  v9 = *(v0 + 424);
  v10 = *(v0 + 408);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_20CC9C6B0()
{
  v22 = v0;
  (*(v0[55] + 8))(v0[56], v0[54]);
  v1 = v0[42];
  v2 = v0[57];
  v3 = v1;
  v4 = sub_20CCDB564();
  v5 = sub_20CCDB894();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[35];
    v8 = v0[36];
    v10 = v0[37];
    v11 = sub_20CCDBAE4();
    v13 = sub_20CC88C4C(v11, v12, &v21);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_20CC86000, v4, v5, "Audio synthesis or processing error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x20F30FD70](v7, -1, -1);
    MEMORY[0x20F30FD70](v6, -1, -1);
  }

  v14 = v0[47];
  sub_20CCDB424();

  v15 = v0[56];
  v16 = v0[52];
  v17 = v0[53];
  v18 = v0[51];

  v19 = v0[1];

  return v19();
}

void sub_20CC9C864(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F620, &unk_20CCDCAD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - v5;
  v7 = objc_opt_self();
  v8 = sub_20CCDB664();
  (*(v3 + 16))(v6, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v6, v2);
  aBlock[4] = sub_20CC9D850;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CC9AFEC;
  aBlock[3] = &block_descriptor_39;
  v11 = _Block_copy(aBlock);

  [v7 deactivateRequestForFeedbackIdentifier:v8 completion:v11];
  _Block_release(v11);
}

uint64_t sub_20CC9CA40(char a1)
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v2 = sub_20CCDB584();
  __swift_project_value_buffer(v2, qword_28110EE00);
  v3 = sub_20CCDB564();
  v4 = sub_20CCDB8B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&dword_20CC86000, v3, v4, "Deactivate voice feedback result=%{BOOL}d", v5, 8u);
    MEMORY[0x20F30FD70](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F620, &unk_20CCDCAD0);
  return sub_20CCDB754();
}

uint64_t sub_20CC9CB6C()
{
  sub_20CC89568(v0 + OBJC_IVAR____TtC28FitnessIntelligenceInference16AudioSynthesizer_asbdContinuation, &qword_27C80F5D8, &qword_20CCDCA78);
  v1 = *(v0 + OBJC_IVAR____TtC28FitnessIntelligenceInference16AudioSynthesizer_encoder);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for AudioSynthesizer()
{
  result = qword_27C80F5B8;
  if (!qword_27C80F5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CC9CC28()
{
  sub_20CC9CCE4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_20CC9CCE4()
{
  if (!qword_27C80F5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C80F5D0, &qword_20CCDCA30);
    v0 = sub_20CCDB904();
    if (!v1)
    {
      atomic_store(v0, &qword_27C80F5C8);
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

uint64_t sub_20CC9CD90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = *(a2 + 112);
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  sub_20CCDA8C4();
}

uint64_t sub_20CC9CF14(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v3 = sub_20CCDB584();
    __swift_project_value_buffer(v3, qword_28110EE00);
    v4 = a1;
    v5 = sub_20CCDB564();
    v6 = sub_20CCDB8B4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = sub_20CCDBAE4();
      v11 = sub_20CC88C4C(v9, v10, &v17);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_20CC86000, v5, v6, "Audio playback error: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x20F30FD70](v8, -1, -1);
      MEMORY[0x20F30FD70](v7, -1, -1);
    }

    v17 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
    return sub_20CCDB744();
  }

  else
  {
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v13 = sub_20CCDB584();
    __swift_project_value_buffer(v13, qword_28110EE00);
    v14 = sub_20CCDB564();
    v15 = sub_20CCDB8B4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20CC86000, v14, v15, "Audio playback succeeded", v16, 2u);
      MEMORY[0x20F30FD70](v16, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
    return sub_20CCDB754();
  }
}

unint64_t sub_20CC9D190()
{
  result = qword_27C80F5F8;
  if (!qword_27C80F5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C80F5F8);
  }

  return result;
}

uint64_t sub_20CC9D1E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F5D8, &qword_20CCDCA78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CC9D254(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F5D8, &qword_20CCDCA78);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CC9D2D0(uint64_t a1)
{
  v2 = type metadata accessor for SynthesizedAudio(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CC9D32C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20CC8DF7C;

  return sub_20CC99690(a1, v5, v4);
}

void sub_20CC9D3D8()
{
  v18[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() sharedInstance];
  v1 = *MEMORY[0x277CB8030];
  v18[0] = 0;
  v2 = [v0 setCategory:v1 withOptions:2 error:v18];
  v3 = v18[0];
  if (v2 && (v18[0] = 0, v4 = v3, v5 = [v0 setActive:1 withOptions:0 error:v18], v3 = v18[0], v5))
  {
    v6 = v18[0];
  }

  else
  {
    v7 = v3;
    v8 = sub_20CCDA664();

    swift_willThrow();
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v9 = sub_20CCDB584();
    __swift_project_value_buffer(v9, qword_28110EE00);
    v10 = v8;
    v11 = sub_20CCDB564();
    v12 = sub_20CCDB894();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v8;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_20CC86000, v11, v12, "Failed to set audio session category: %@", v13, 0xCu);
      sub_20CC89568(v14, &qword_27C80F460, &unk_20CCDC700);
      MEMORY[0x20F30FD70](v14, -1, -1);
      MEMORY[0x20F30FD70](v13, -1, -1);
    }

    else
    {
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t sub_20CC9D638(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20CC9D6A8(char a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F610, &qword_20CCDCAC0) - 8) + 80);
  v4 = *(v1 + 16);

  return sub_20CC9AE94(a1, v4);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_28Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_20CC9D7D0(void *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F618, &qword_20CCDCAC8) - 8) + 80);
  v4 = *(v1 + 16);

  return sub_20CC98018(a1, v4);
}

uint64_t sub_20CC9D850(char a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F620, &unk_20CCDCAD0) - 8) + 80);

  return sub_20CC9CA40(a1);
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_20CC9D9A0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t getEnumTagSinglePayload for AudioSynthesizer.AudioSynthesisError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioSynthesizer.AudioSynthesisError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20CC9DB98()
{
  result = qword_27C80F638;
  if (!qword_27C80F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C80F638);
  }

  return result;
}

uint64_t sub_20CC9DBF4()
{
  v1[10] = v0;
  v2 = sub_20CCDB0C4();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();
  v5 = sub_20CCDAEA4();
  v1[14] = v5;
  v6 = *(v5 - 8);
  v1[15] = v6;
  v7 = *(v6 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v8 = sub_20CCDAEF4();
  v1[20] = v8;
  v9 = *(v8 - 8);
  v1[21] = v9;
  v10 = *(v9 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v11 = sub_20CCDAFB4();
  v1[25] = v11;
  v12 = *(v11 - 8);
  v1[26] = v12;
  v13 = *(v12 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v14 = type metadata accessor for AudioStreamSender();
  v1[29] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60) - 8) + 64) + 15;
  v1[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CC9DEA8, 0, 0);
}

uint64_t sub_20CC9DEA8()
{
  v1 = v0[10] + *(v0[29] + 20);
  v2 = *(v1 + *(type metadata accessor for AudioSynthesisHandle(0) + 32));
  v0[36] = v2;

  return MEMORY[0x2822009F8](sub_20CC9DF28, v2, 0);
}

uint64_t sub_20CC9DF28()
{
  v1 = v0[35];
  v2 = v0[36];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F640, &unk_20CCDCBE0);
  swift_allocObject();
  v3 = sub_20CCDB464();
  v0[37] = v3;
  v4 = sub_20CCDB794();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = sub_20CCA0384();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v5;
  v6[4] = v2;
  v6[5] = v3;
  swift_retain_n();

  sub_20CCAA31C(0, 0, v1, &unk_20CCDCBF8, v6);

  return MEMORY[0x2822009F8](sub_20CC9E074, 0, 0);
}

uint64_t sub_20CC9E074()
{
  v22 = v0;
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 272);
  v2 = *(v0 + 80);
  v3 = sub_20CCDB584();
  *(v0 + 304) = __swift_project_value_buffer(v3, qword_28110EE00);
  sub_20CCA10D0(v2, v1);
  v4 = sub_20CCDB564();
  v5 = sub_20CCDB8B4();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 272);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    v10 = *v7;
    v11 = v7[1];

    sub_20CCA1134(v7);
    v12 = sub_20CC88C4C(v10, v11, &v21);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20CC86000, v4, v5, "Starting audio send for stream %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F30FD70](v9, -1, -1);
    MEMORY[0x20F30FD70](v8, -1, -1);
  }

  else
  {

    sub_20CCA1134(v7);
  }

  v13 = *(v0 + 296);
  v14 = MEMORY[0x277D84F90];
  *(v0 + 56) = MEMORY[0x277D84F90];
  v15 = sub_20CCDB414();
  *(v0 + 312) = v15;
  *(v0 + 320) = v16;
  *(v0 + 40) = v15;
  *(v0 + 48) = v16;
  *(v0 + 448) = *MEMORY[0x277D0A100];
  *(v0 + 328) = 0;
  *(v0 + 336) = v14;
  *(v0 + 460) = 1;
  *(v0 + 452) = 0;
  v17 = *(MEMORY[0x277CEF710] + 4);
  v18 = swift_task_alloc();
  *(v0 + 344) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F658, &unk_20CCDCC00);
  *v18 = v0;
  v18[1] = sub_20CC9E2CC;

  return MEMORY[0x282141C38](v0 + 64, v19);
}

uint64_t sub_20CC9E2CC()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v6 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = sub_20CC9EAAC;
  }

  else
  {
    *(v2 + 360) = *(v2 + 64);
    v4 = sub_20CC9E3E8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CC9E3E8()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 336);
  if (v1)
  {
    v3 = *(v0 + 452);
    v5 = *(v0 + 216);
    v4 = *(v0 + 224);
    v6 = *(v0 + 200);
    v7 = *(v0 + 208);
    v8 = *(v0 + 80);
    v9 = *v8;
    v10 = v8[1];

    v11 = v1;
    sub_20CCDAF94();
    (*(v7 + 16))(v5, v4, v6);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v0 + 336);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_20CCA7BA0(0, v13[2] + 1, 1, *(v0 + 336));
    }

    v15 = v13[2];
    v14 = v13[3];
    if (v15 >= v14 >> 1)
    {
      v13 = sub_20CCA7BA0(v14 > 1, v15 + 1, 1, v13);
    }

    *(v0 + 368) = v13;
    v17 = *(v0 + 208);
    v16 = *(v0 + 216);
    v18 = *(v0 + 200);
    v13[2] = v15 + 1;
    (*(v17 + 32))(v13 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v15, v16, v18);
    *(v0 + 56) = v13;
    swift_endAccess();
    v19 = sub_20CCDAA24();
    v21 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      if (v21 != 2)
      {
        v19 = sub_20CC9720C(v19, v20);
        v23 = 0;
        goto LABEL_18;
      }

      v42 = *(v19 + 16);
      v41 = *(v19 + 24);
      v19 = sub_20CC9720C(v19, v20);
      v23 = v41 - v42;
      if (!__OFSUB__(v41, v42))
      {
        goto LABEL_18;
      }

      __break(1u);
    }

    else if (!v21)
    {
      v22 = BYTE6(v20);
      v19 = sub_20CC9720C(v19, v20);
      v23 = v22;
      goto LABEL_18;
    }

    v43 = HIDWORD(v19);
    v44 = v19;
    v19 = sub_20CC9720C(v19, v20);
    LODWORD(v23) = v43 - v44;
    if (__OFSUB__(v43, v44))
    {
      goto LABEL_34;
    }

    v23 = v23;
LABEL_18:
    v45 = *(v0 + 328);
    v46 = v45 + v23;
    *(v0 + 376) = v45 + v23;
    if (__OFADD__(v45, v23))
    {
      __break(1u);
    }

    else
    {
      v47 = *(v0 + 452);
      *(v0 + 456) = v47 + 1;
      if (v47 != -1)
      {
        v48 = *(v0 + 460);
        if (v48 == 1)
        {
          if (v46 >= 0x2000)
          {
            v49 = *(v0 + 448);
            v50 = *(v0 + 232);
            v51 = *(v0 + 192);
            v52 = *(v0 + 152);
            v53 = *(v0 + 112);
            v54 = *(v0 + 120);
            v55 = *(v0 + 80);

            sub_20CCDAED4();
            v56 = *(v55 + *(v50 + 24));
            (*(v54 + 104))(v52, v49, v53);
            v57 = *(MEMORY[0x277D09E88] + 4);
            v85 = (*MEMORY[0x277D09E88] + MEMORY[0x277D09E88]);
            v58 = swift_task_alloc();
            *(v0 + 384) = v58;
            v37 = sub_20CCA1360(&qword_28110ED98, MEMORY[0x277D0A260]);
            *v58 = v0;
            v58[1] = sub_20CC9EC98;
            v38 = *(v0 + 192);
            v40 = *(v0 + 152);
            v39 = *(v0 + 160);
            goto LABEL_29;
          }
        }

        else if (v46 >= 4096)
        {
          v62 = *(v0 + 448);
          v63 = *(v0 + 232);
          v64 = *(v0 + 184);
          v65 = *(v0 + 144);
          v66 = *(v0 + 112);
          v67 = *(v0 + 120);
          v68 = *(v0 + 80);

          sub_20CCDAED4();
          v69 = *(v68 + *(v63 + 24));
          (*(v67 + 104))(v65, v62, v66);
          v70 = *(MEMORY[0x277D09E88] + 4);
          v85 = (*MEMORY[0x277D09E88] + MEMORY[0x277D09E88]);
          v71 = swift_task_alloc();
          *(v0 + 400) = v71;
          v37 = sub_20CCA1360(&qword_28110ED98, MEMORY[0x277D0A260]);
          *v71 = v0;
          v71[1] = sub_20CC9F0B4;
          v38 = *(v0 + 184);
          v39 = *(v0 + 160);
          v40 = *(v0 + 144);
          goto LABEL_29;
        }

        (*(*(v0 + 208) + 8))(*(v0 + 224), *(v0 + 200));

        v59 = *(v0 + 456);
        *(v0 + 328) = v46;
        *(v0 + 336) = v13;
        *(v0 + 460) = v48;
        *(v0 + 452) = v59;
        v60 = *(MEMORY[0x277CEF710] + 4);
        v61 = swift_task_alloc();
        *(v0 + 344) = v61;
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F658, &unk_20CCDCC00);
        *v61 = v0;
        v61[1] = sub_20CC9E2CC;
        v19 = v0 + 64;

        return MEMORY[0x282141C38](v19, v20);
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
    return MEMORY[0x282141C38](v19, v20);
  }

  v24 = *(v0 + 312);
  v25 = *(v0 + 320);

  if (*(v2 + 16))
  {
    v26 = *(v0 + 336);
    v27 = *(v0 + 448);
    v28 = *(v0 + 232);
    v29 = *(v0 + 176);
    v30 = *(v0 + 136);
    v31 = *(v0 + 112);
    v32 = *(v0 + 120);
    v33 = *(v0 + 80);

    sub_20CCDAED4();
    v34 = *(v33 + *(v28 + 24));
    (*(v32 + 104))(v30, v27, v31);
    v35 = *(MEMORY[0x277D09E88] + 4);
    v85 = (*MEMORY[0x277D09E88] + MEMORY[0x277D09E88]);
    v36 = swift_task_alloc();
    *(v0 + 416) = v36;
    v37 = sub_20CCA1360(&qword_28110ED98, MEMORY[0x277D0A260]);
    *v36 = v0;
    v36[1] = sub_20CC9F4D0;
    v38 = *(v0 + 176);
    v39 = *(v0 + 160);
    v40 = *(v0 + 136);
  }

  else
  {
    v72 = *(v0 + 452);
    v73 = *(v0 + 232);
    v75 = *(v0 + 120);
    v74 = *(v0 + 128);
    v77 = *(v0 + 104);
    v76 = *(v0 + 112);
    v78 = *(v0 + 80);
    v79 = *v78;
    v80 = v78[1];

    sub_20CCDB0A4();
    v81 = *(v78 + *(v73 + 24));
    (*(v75 + 104))(v74, *MEMORY[0x277D0A0E0], v76);
    v82 = *(MEMORY[0x277D09E88] + 4);
    v85 = (*MEMORY[0x277D09E88] + MEMORY[0x277D09E88]);
    v83 = swift_task_alloc();
    *(v0 + 432) = v83;
    v37 = sub_20CCA1360(&qword_28110ED70, MEMORY[0x277D0A448]);
    *v83 = v0;
    v83[1] = sub_20CC9F924;
    v40 = *(v0 + 128);
    v38 = *(v0 + 104);
    v39 = *(v0 + 88);
  }

LABEL_29:

  return v85(v40, v38, v39, v37);
}

uint64_t sub_20CC9EAAC()
{
  *(v0 + 72) = *(v0 + 352);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F660, &qword_20CCDD400);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_20CC9EB40, 0, 0);
}

uint64_t sub_20CC9EB40()
{
  v1 = v0[42];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[37];

  v23 = v0[44];
  v6 = v0[34];
  v5 = v0[35];
  v8 = v0[32];
  v7 = v0[33];
  v10 = v0[30];
  v9 = v0[31];
  v11 = v0[27];
  v12 = v0[28];
  v14 = v0[23];
  v13 = v0[24];
  v17 = v0[22];
  v18 = v0[19];
  v19 = v0[18];
  v20 = v0[17];
  v21 = v0[16];
  v22 = v0[13];

  v15 = v0[1];

  return v15();
}

uint64_t sub_20CC9EC98()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *v1;
  *(*v1 + 392) = v0;

  (*(v2[15] + 8))(v2[19], v2[14]);
  if (v0)
  {
    v5 = sub_20CC9FD30;
  }

  else
  {
    v5 = sub_20CC9EE00;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20CC9EE00()
{
  v35 = v0;
  v1 = *(v0 + 304);
  sub_20CCA10D0(*(v0 + 80), *(v0 + 264));
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 368);
    v5 = *(v0 + 264);
    v33 = *(v0 + 224);
    v6 = *(v0 + 208);
    v31 = *(v0 + 360);
    v32 = *(v0 + 200);
    v30 = *(v0 + 192);
    v7 = *(v0 + 168);
    v28 = *(v0 + 376);
    v29 = *(v0 + 160);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v8 = 134218498;
    *(v8 + 4) = *(v4 + 16);
    *(v8 + 12) = 2080;
    v10 = *v5;
    v11 = v5[1];

    sub_20CCA1134(v5);
    v12 = sub_20CC88C4C(v10, v11, &v34);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2048;
    *(v8 + 24) = v28;
    _os_log_impl(&dword_20CC86000, v2, v3, "Sent first batch of %ld chunks for stream %s. Total message size: %ld.", v8, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F30FD70](v9, -1, -1);
    MEMORY[0x20F30FD70](v8, -1, -1);

    (*(v7 + 8))(v30, v29);
    (*(v6 + 8))(v33, v32);
  }

  else
  {
    v13 = *(v0 + 360);
    v14 = *(v0 + 264);
    v15 = *(v0 + 224);
    v16 = *(v0 + 200);
    v17 = *(v0 + 208);
    v18 = *(v0 + 192);
    v19 = *(v0 + 160);
    v20 = *(v0 + 168);

    sub_20CCA1134(v14);
    (*(v20 + 8))(v18, v19);
    (*(v17 + 8))(v15, v16);
  }

  v21 = *(v0 + 368);
  v22 = MEMORY[0x277D84F90];
  *(v0 + 56) = MEMORY[0x277D84F90];

  v23 = *(v0 + 456);
  *(v0 + 328) = 0;
  *(v0 + 336) = v22;
  *(v0 + 460) = 0;
  *(v0 + 452) = v23;
  v24 = *(MEMORY[0x277CEF710] + 4);
  v25 = swift_task_alloc();
  *(v0 + 344) = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F658, &unk_20CCDCC00);
  *v25 = v0;
  v25[1] = sub_20CC9E2CC;

  return MEMORY[0x282141C38](v0 + 64, v26);
}

uint64_t sub_20CC9F0B4()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *v1;
  *(*v1 + 408) = v0;

  (*(v2[15] + 8))(v2[18], v2[14]);
  if (v0)
  {
    v5 = sub_20CC9FED0;
  }

  else
  {
    v5 = sub_20CC9F21C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20CC9F21C()
{
  v35 = v0;
  v1 = *(v0 + 304);
  sub_20CCA10D0(*(v0 + 80), *(v0 + 256));
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 368);
    v5 = *(v0 + 256);
    v33 = *(v0 + 224);
    v6 = *(v0 + 208);
    v31 = *(v0 + 360);
    v32 = *(v0 + 200);
    v30 = *(v0 + 184);
    v7 = *(v0 + 168);
    v28 = *(v0 + 376);
    v29 = *(v0 + 160);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v8 = 134218498;
    *(v8 + 4) = *(v4 + 16);
    *(v8 + 12) = 2080;
    v10 = *v5;
    v11 = v5[1];

    sub_20CCA1134(v5);
    v12 = sub_20CC88C4C(v10, v11, &v34);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2048;
    *(v8 + 24) = v28;
    _os_log_impl(&dword_20CC86000, v2, v3, "Sent %ld chunks for stream %s. Total message size: %ld.", v8, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F30FD70](v9, -1, -1);
    MEMORY[0x20F30FD70](v8, -1, -1);

    (*(v7 + 8))(v30, v29);
    (*(v6 + 8))(v33, v32);
  }

  else
  {
    v13 = *(v0 + 360);
    v14 = *(v0 + 256);
    v15 = *(v0 + 224);
    v16 = *(v0 + 200);
    v17 = *(v0 + 208);
    v18 = *(v0 + 184);
    v19 = *(v0 + 160);
    v20 = *(v0 + 168);

    sub_20CCA1134(v14);
    (*(v20 + 8))(v18, v19);
    (*(v17 + 8))(v15, v16);
  }

  v21 = *(v0 + 368);
  v22 = MEMORY[0x277D84F90];
  *(v0 + 56) = MEMORY[0x277D84F90];

  v23 = *(v0 + 456);
  *(v0 + 328) = 0;
  *(v0 + 336) = v22;
  *(v0 + 460) = 0;
  *(v0 + 452) = v23;
  v24 = *(MEMORY[0x277CEF710] + 4);
  v25 = swift_task_alloc();
  *(v0 + 344) = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F658, &unk_20CCDCC00);
  *v25 = v0;
  v25[1] = sub_20CC9E2CC;

  return MEMORY[0x282141C38](v0 + 64, v26);
}

uint64_t sub_20CC9F4D0()
{
  v2 = *(*v1 + 416);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 424) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_20CCA0070;
  }

  else
  {
    v6 = sub_20CC9F640;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20CC9F640()
{
  v40 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 304);
  sub_20CCA10D0(*(v0 + 80), *(v0 + 248));

  v3 = sub_20CCDB564();
  v4 = sub_20CCDB8B4();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 336);
  if (v5)
  {
    v7 = *(v0 + 328);
    v8 = *(v0 + 248);
    v9 = *(v0 + 168);
    v36 = *(v0 + 160);
    v37 = *(v0 + 176);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v39 = v11;
    *v10 = 134218498;
    *(v10 + 4) = *(v6 + 16);

    *(v10 + 12) = 2080;
    v12 = *v8;
    v13 = v8[1];

    sub_20CCA1134(v8);
    v14 = sub_20CC88C4C(v12, v13, &v39);

    *(v10 + 14) = v14;
    *(v10 + 22) = 2048;
    *(v10 + 24) = v7;
    _os_log_impl(&dword_20CC86000, v3, v4, "Sent remaining %ld chunks for stream %s. Total message size: %ld.", v10, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x20F30FD70](v11, -1, -1);
    MEMORY[0x20F30FD70](v10, -1, -1);

    (*(v9 + 8))(v37, v36);
  }

  else
  {
    v15 = *(v0 + 248);
    v17 = *(v0 + 168);
    v16 = *(v0 + 176);
    v18 = *(v0 + 160);

    sub_20CCA1134(v15);
    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v0 + 452);
  v20 = *(v0 + 232);
  v22 = *(v0 + 120);
  v21 = *(v0 + 128);
  v24 = *(v0 + 104);
  v23 = *(v0 + 112);
  v25 = *(v0 + 80);
  v26 = *v25;
  v27 = v25[1];

  sub_20CCDB0A4();
  v28 = *(v25 + *(v20 + 24));
  (*(v22 + 104))(v21, *MEMORY[0x277D0A0E0], v23);
  v29 = *(MEMORY[0x277D09E88] + 4);
  v38 = (*MEMORY[0x277D09E88] + MEMORY[0x277D09E88]);
  v30 = swift_task_alloc();
  *(v0 + 432) = v30;
  v31 = sub_20CCA1360(&qword_28110ED70, MEMORY[0x277D0A448]);
  *v30 = v0;
  v30[1] = sub_20CC9F924;
  v32 = *(v0 + 128);
  v33 = *(v0 + 104);
  v34 = *(v0 + 88);

  return v38(v32, v33, v34, v31);
}

uint64_t sub_20CC9F924()
{
  v2 = *(*v1 + 432);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 440) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_20CCA01D4;
  }

  else
  {
    v6 = sub_20CC9FA94;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20CC9FA94()
{
  v41 = v0;
  v1 = *(v0 + 304);
  sub_20CCA10D0(*(v0 + 80), *(v0 + 240));
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 336);
  if (v4)
  {
    v6 = *(v0 + 452);
    v7 = *(v0 + 240);
    v8 = *(v0 + 96);
    v38 = *(v0 + 104);
    v34 = *(v0 + 296);
    v36 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v40 = v10;
    *v9 = 67109378;
    *(v9 + 4) = v6;
    *(v9 + 8) = 2080;
    v11 = *v7;
    v12 = v7[1];

    sub_20CCA1134(v7);
    v13 = sub_20CC88C4C(v11, v12, &v40);

    *(v9 + 10) = v13;
    _os_log_impl(&dword_20CC86000, v2, v3, "Finished sending %u streaming audio chunks for stream %s", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x20F30FD70](v10, -1, -1);
    MEMORY[0x20F30FD70](v9, -1, -1);

    (*(v8 + 8))(v38, v36);
  }

  else
  {
    v14 = *(v0 + 296);
    v15 = *(v0 + 240);
    v17 = *(v0 + 96);
    v16 = *(v0 + 104);
    v18 = *(v0 + 88);

    sub_20CCA1134(v15);
    (*(v17 + 8))(v16, v18);
  }

  v20 = *(v0 + 272);
  v19 = *(v0 + 280);
  v22 = *(v0 + 256);
  v21 = *(v0 + 264);
  v24 = *(v0 + 240);
  v23 = *(v0 + 248);
  v26 = *(v0 + 216);
  v25 = *(v0 + 224);
  v27 = *(v0 + 184);
  v28 = *(v0 + 192);
  v31 = *(v0 + 176);
  v32 = *(v0 + 152);
  v33 = *(v0 + 144);
  v35 = *(v0 + 136);
  v37 = *(v0 + 128);
  v39 = *(v0 + 104);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_20CC9FD30()
{
  v1 = v0[45];
  v29 = v0[46];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[37];
  v5 = v0[28];
  v6 = v0[25];
  v7 = v0[26];
  v8 = v0[24];
  v10 = v0[20];
  v9 = v0[21];

  (*(v9 + 8))(v8, v10);
  (*(v7 + 8))(v5, v6);

  v30 = v0[49];
  v12 = v0[34];
  v11 = v0[35];
  v14 = v0[32];
  v13 = v0[33];
  v16 = v0[30];
  v15 = v0[31];
  v17 = v0[27];
  v18 = v0[28];
  v20 = v0[23];
  v19 = v0[24];
  v23 = v0[22];
  v24 = v0[19];
  v25 = v0[18];
  v26 = v0[17];
  v27 = v0[16];
  v28 = v0[13];

  v21 = v0[1];

  return v21();
}

uint64_t sub_20CC9FED0()
{
  v1 = v0[45];
  v29 = v0[46];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[37];
  v5 = v0[28];
  v6 = v0[25];
  v7 = v0[26];
  v8 = v0[23];
  v10 = v0[20];
  v9 = v0[21];

  (*(v9 + 8))(v8, v10);
  (*(v7 + 8))(v5, v6);

  v30 = v0[51];
  v12 = v0[34];
  v11 = v0[35];
  v14 = v0[32];
  v13 = v0[33];
  v16 = v0[30];
  v15 = v0[31];
  v17 = v0[27];
  v18 = v0[28];
  v20 = v0[23];
  v19 = v0[24];
  v23 = v0[22];
  v24 = v0[19];
  v25 = v0[18];
  v26 = v0[17];
  v27 = v0[16];
  v28 = v0[13];

  v21 = v0[1];

  return v21();
}

uint64_t sub_20CCA0070()
{
  v1 = v0[42];
  v2 = v0[37];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];

  (*(v4 + 8))(v3, v5);

  v24 = v0[53];
  v7 = v0[34];
  v6 = v0[35];
  v9 = v0[32];
  v8 = v0[33];
  v11 = v0[30];
  v10 = v0[31];
  v12 = v0[27];
  v13 = v0[28];
  v15 = v0[23];
  v14 = v0[24];
  v18 = v0[22];
  v19 = v0[19];
  v20 = v0[18];
  v21 = v0[17];
  v22 = v0[16];
  v23 = v0[13];

  v16 = v0[1];

  return v16();
}

uint64_t sub_20CCA01D4()
{
  v1 = v0[42];
  v2 = v0[37];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];

  (*(v4 + 8))(v3, v5);

  v24 = v0[55];
  v7 = v0[34];
  v6 = v0[35];
  v9 = v0[32];
  v8 = v0[33];
  v11 = v0[30];
  v10 = v0[31];
  v12 = v0[27];
  v13 = v0[28];
  v15 = v0[23];
  v14 = v0[24];
  v18 = v0[22];
  v19 = v0[19];
  v20 = v0[18];
  v21 = v0[17];
  v22 = v0[16];
  v23 = v0[13];

  v16 = v0[1];

  return v16();
}

uint64_t type metadata accessor for AudioStreamSender()
{
  result = qword_27C80F668;
  if (!qword_27C80F668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20CCA0384()
{
  result = qword_27C80F648;
  if (!qword_27C80F648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C80F650, &unk_20CCDCF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C80F648);
  }

  return result;
}

uint64_t sub_20CCA03E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_20CC8DF7C;

  return sub_20CCA0544(a5);
}

uint64_t sub_20CCA0484(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20CC8DF7C;

  return sub_20CCA03E8(a1, v4, v5, v7, v6);
}

uint64_t sub_20CCA0544(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_20CCDA784();
  v2[15] = v3;
  v4 = *(v3 - 8);
  v2[16] = v4;
  v5 = *(v4 + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCA0604, v1, 0);
}

uint64_t sub_20CCA0604()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  v0[18] = __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Adding new subscriber", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = v0[14];

  v6 = MEMORY[0x277D84F90];
  v0[11] = MEMORY[0x277D84F90];
  swift_beginAccess();
  if (v6 >> 62)
  {
    v7 = sub_20CCDB9F4();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = *(v0[14] + 120);
  if (v8 >> 62)
  {
    if (v8 < 0)
    {
      v19 = *(v0[14] + 120);
    }

    if (v7 < sub_20CCDB9F4())
    {
LABEL_9:
      if (v6 >> 62)
      {
        v9 = sub_20CCDB9F4();
      }

      else
      {
        v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v0[14];
      v11 = swift_beginAccess();
      v12 = *(v10 + 120);
      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x20F30F560](v9);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_42:
          sub_20CCDB704();
LABEL_17:
          sub_20CCDB724();
          v0[20] = v0[11];
          v16 = *(MEMORY[0x277CEF708] + 4);
          v17 = swift_task_alloc();
          v0[21] = v17;
          *v17 = v0;
          v17[1] = sub_20CCA0B58;
          v18 = v0[13];
          v11 = (v0 + 12);

          return MEMORY[0x282141C28](v11);
        }

        if (v9 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x282141C28](v11);
        }

        v13 = *(v12 + 8 * v9 + 32);
      }

      v14 = v13;
      v0[19] = v13;
      v0[12] = v13;
      swift_endAccess();
      v15 = v14;
      MEMORY[0x20F30F2C0]();
      if (*((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_17;
      }

      goto LABEL_42;
    }
  }

  else if (v7 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

  v20 = v0[18];
  v21 = MEMORY[0x277D84F90];

  v22 = sub_20CCDB564();
  v23 = sub_20CCDB8B4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    if (v21 >> 62)
    {
      v25 = sub_20CCDB9F4();
    }

    else
    {
      v25 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v24 + 4) = v25;

    _os_log_impl(&dword_20CC86000, v22, v23, "Sent %ld already-received elements to new subscriber", v24, 0xCu);
    MEMORY[0x20F30FD70](v24, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v26 = v0[14];
  v27 = *(v26 + 144);
  if (v27 == 255)
  {
    v35 = v0[16];
    v34 = v0[17];
    v36 = v0[15];
    v37 = v0[13];
    sub_20CCDA774();
    swift_beginAccess();

    v38 = *(v26 + 128);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = *(v26 + 128);
    *(v26 + 128) = 0x8000000000000000;
    sub_20CCD6EF4(v37, v34, isUniquelyReferenced_nonNull_native);
    *(v26 + 128) = v43;
    swift_endAccess();
    (*(v35 + 8))(v34, v36);
  }

  else
  {
    v28 = *(v26 + 136);
    v29 = v0[18];
    sub_20CCA1190(v28, v27 & 1);
    v30 = sub_20CCDB564();
    v31 = sub_20CCDB8B4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_20CC86000, v30, v31, "Upstream has already terminated", v32, 2u);
      MEMORY[0x20F30FD70](v32, -1, -1);
    }

    v33 = v0[13];
    if (v27)
    {
      sub_20CCA119C(v28, v27);
      sub_20CCDB424();
      sub_20CCA11B4(v28, v27);
      sub_20CCA11B4(v28, v27);
    }

    else
    {
      sub_20CCDB444();
    }
  }

  v40 = v0[17];

  v41 = v0[1];

  return v41();
}

uint64_t sub_20CCA0B58()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20CCA0C68, v2, 0);
}

uint64_t sub_20CCA0C68()
{
  v1 = *(v0 + 160);
  v2 = v1 >> 62;
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v15 = *(v0 + 160);
    }

    v3 = sub_20CCDB9F4();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *(*(v0 + 112) + 120);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v16 = *(*(v0 + 112) + 120);
    }

    if (v3 < sub_20CCDB9F4())
    {
LABEL_5:
      if (v2)
      {
        v5 = sub_20CCDB9F4();
      }

      else
      {
        v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v6 = *(v0 + 112);
      v7 = swift_beginAccess();
      v8 = *(v6 + 120);
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x20F30F560](v5);
      }

      else
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_40:
          sub_20CCDB704();
LABEL_13:
          sub_20CCDB724();
          *(v0 + 160) = *(v0 + 88);
          v12 = *(MEMORY[0x277CEF708] + 4);
          v13 = swift_task_alloc();
          *(v0 + 168) = v13;
          *v13 = v0;
          v13[1] = sub_20CCA0B58;
          v14 = *(v0 + 104);
          v7 = v0 + 96;

          return MEMORY[0x282141C28](v7);
        }

        if (v5 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x282141C28](v7);
        }

        v9 = *(v8 + 8 * v5 + 32);
      }

      v10 = v9;
      *(v0 + 152) = v9;
      *(v0 + 96) = v9;
      swift_endAccess();
      v11 = v10;
      MEMORY[0x20F30F2C0]();
      if (*((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_13;
      }

      goto LABEL_40;
    }
  }

  else if (v3 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

  v17 = *(v0 + 144);

  v18 = sub_20CCDB564();
  v19 = sub_20CCDB8B4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    if (v2)
    {
      v21 = sub_20CCDB9F4();
    }

    else
    {
      v21 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v20 + 4) = v21;

    _os_log_impl(&dword_20CC86000, v18, v19, "Sent %ld already-received elements to new subscriber", v20, 0xCu);
    MEMORY[0x20F30FD70](v20, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v22 = *(v0 + 112);
  v23 = *(v22 + 144);
  if (v23 == 255)
  {
    v31 = *(v0 + 128);
    v30 = *(v0 + 136);
    v32 = *(v0 + 120);
    v33 = *(v0 + 104);
    sub_20CCDA774();
    swift_beginAccess();

    v34 = *(v22 + 128);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v22 + 128);
    *(v22 + 128) = 0x8000000000000000;
    sub_20CCD6EF4(v33, v30, isUniquelyReferenced_nonNull_native);
    *(v22 + 128) = v39;
    swift_endAccess();
    (*(v31 + 8))(v30, v32);
  }

  else
  {
    v24 = *(v22 + 136);
    v25 = *(v0 + 144);
    sub_20CCA1190(v24, v23 & 1);
    v26 = sub_20CCDB564();
    v27 = sub_20CCDB8B4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_20CC86000, v26, v27, "Upstream has already terminated", v28, 2u);
      MEMORY[0x20F30FD70](v28, -1, -1);
    }

    v29 = *(v0 + 104);
    if (v23)
    {
      sub_20CCA119C(v24, v23);
      sub_20CCDB424();
      sub_20CCA11B4(v24, v23);
      sub_20CCA11B4(v24, v23);
    }

    else
    {
      sub_20CCDB444();
    }
  }

  v36 = *(v0 + 136);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_20CCA10D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioStreamSender();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CCA1134(uint64_t a1)
{
  v2 = type metadata accessor for AudioStreamSender();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_20CCA1190(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

id sub_20CCA119C(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_20CCA1190(result, a2 & 1);
  }

  return result;
}

void sub_20CCA11B4(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_20CCA11CC(a1, a2 & 1);
  }
}

void sub_20CCA11CC(id a1, char a2)
{
  if (a2)
  {
  }
}

void sub_20CCA1200()
{
  type metadata accessor for AudioSynthesisHandle(319);
  if (v0 <= 0x3F)
  {
    sub_20CCA1294();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20CCA1294()
{
  if (!qword_27C80F678)
  {
    sub_20CCDAEA4();
    v0 = MEMORY[0x277D0A150];
    sub_20CCA1360(&qword_27C80F680, MEMORY[0x277D0A150]);
    sub_20CCA1360(&qword_27C80F688, v0);
    v1 = sub_20CCDAB54();
    if (!v2)
    {
      atomic_store(v1, &qword_27C80F678);
    }
  }
}

uint64_t sub_20CCA1360(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PhoneAvailabilitySystem()
{
  result = qword_28110E7C8;
  if (!qword_28110E7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CCA141C()
{
  result = sub_20CCDADC4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20CCA1488(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20CCDAD14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_20CCDB2B4();
  v9 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v45 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (!v13)
  {
    return v14;
  }

  v39 = v8;
  v46 = MEMORY[0x277D84F90];
  v41 = v11;
  v42 = v10;
  sub_20CCA57CC(0, v13, 0);
  v14 = v46;
  v15 = -1 << *(v42 + 32);
  v44 = v42 + 56;
  v16 = sub_20CCDB914();
  v17 = 0;
  v37 = v5 + 16;
  v38 = (v5 + 8);
  v18 = v42;
  v35 = v4;
  v36 = v41 + 32;
  v32 = v42 + 64;
  v33 = v13;
  v34 = v5;
  while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(v18 + 32))
  {
    v19 = v16 >> 6;
    if ((*(v44 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
    {
      goto LABEL_22;
    }

    v43 = v17;
    v20 = v14;
    v21 = *(v18 + 36);
    v14 = v39;
    (*(v5 + 16))(v39, *(v18 + 48) + *(v5 + 72) * v16, v4);
    sub_20CCA4E40(v14, v45);
    if (v2)
    {
      goto LABEL_26;
    }

    v2 = 0;
    (*v38)(v14, v4);
    v14 = v20;
    v46 = v20;
    v22 = *(v20 + 16);
    v23 = *(v14 + 24);
    if (v22 >= v23 >> 1)
    {
      sub_20CCA57CC(v23 > 1, v22 + 1, 1);
      v14 = v46;
    }

    *(v14 + 16) = v22 + 1;
    (*(v41 + 32))(v14 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v22, v45, v40);
    v18 = v42;
    v4 = 1 << *(v42 + 32);
    if (v16 >= v4)
    {
      goto LABEL_23;
    }

    v24 = *(v44 + 8 * v19);
    if ((v24 & (1 << v16)) == 0)
    {
      goto LABEL_24;
    }

    if (v21 != *(v42 + 36))
    {
      goto LABEL_25;
    }

    v25 = v24 & (-2 << (v16 & 0x3F));
    if (v25)
    {
      v4 = __clz(__rbit64(v25)) | v16 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = v19 << 6;
      v27 = v19 + 1;
      v28 = (v32 + 8 * v19);
      while (v27 < (v4 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          sub_20CCA70CC(v16, v21, 0);
          v18 = v42;
          v4 = __clz(__rbit64(v29)) + v26;
          goto LABEL_4;
        }
      }

      sub_20CCA70CC(v16, v21, 0);
      v18 = v42;
    }

LABEL_4:
    v17 = v43 + 1;
    v16 = v4;
    v5 = v34;
    v4 = v35;
    if (v43 + 1 == v33)
    {
      return v14;
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
  (*v38)(v14, v4);

  __break(1u);
  return result;
}