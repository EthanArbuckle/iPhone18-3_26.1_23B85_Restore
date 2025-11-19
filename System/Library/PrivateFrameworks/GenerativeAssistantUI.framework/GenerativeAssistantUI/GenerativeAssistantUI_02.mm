uint64_t sub_24FE855A8(uint64_t a1)
{
  v2 = sub_24FEDD164();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_24FEDD3A4();
}

void sub_24FE85670(uint64_t a1, uint64_t a2)
{
  v21[11] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 48);
  if (v3)
  {
    v4 = *(a2 + 56);

    v3(a1);
    sub_24FEDD144();
    v5 = *MEMORY[0x277D85DE8];

    sub_24FE86C84(v3);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F18, &qword_24FEE4560);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24FEE0830;
    v7 = *MEMORY[0x277D0AC70];
    *(inited + 32) = sub_24FEDE1F4();
    *(inited + 40) = v8;
    *(inited + 48) = 1;
    v9 = *MEMORY[0x277D0AC58];
    *(inited + 56) = sub_24FEDE1F4();
    *(inited + 64) = v10;
    *(inited + 72) = 1;
    v11 = sub_24FE9E4F8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F20, &qword_24FEE4568);
    swift_arrayDestroy();
    v12 = [objc_opt_self() defaultWorkspace];
    if (v12)
    {
      v13 = v12;
      v14 = sub_24FEDC974();
      sub_24FE858F0(v11);

      v15 = sub_24FEDE144();

      v21[0] = 0;
      v16 = [v13 openURL:v14 withOptions:v15 error:v21];

      if (v16)
      {
        v17 = v21[0];
        sub_24FEDD144();
      }

      else
      {
        v18 = v21[0];
        v19 = sub_24FEDC914();

        swift_willThrow();
        sub_24FEDD134();
      }
    }

    else
    {

      sub_24FEDD134();
    }

    v20 = *MEMORY[0x277D85DE8];
  }
}

unint64_t sub_24FE858F0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F28, &qword_24FEE4570);
    v2 = sub_24FEDE6D4();
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
        v24 = *(*(a1 + 56) + v15);

        swift_dynamicCast();
        sub_24FE725D8(&v25, v27);
        sub_24FE725D8(v27, v28);
        sub_24FE725D8(v28, &v26);
        result = sub_24FE71544(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_24FE725D8(&v26, v12);
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
          result = sub_24FE725D8(&v26, (v2[7] + 32 * result));
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

uint64_t sub_24FE85B44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  *a2 = v5;
  return result;
}

uint64_t sub_24FE85BC4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24FEDCFF4();
}

uint64_t type metadata accessor for DocumentView()
{
  result = qword_27F3A5E98;
  if (!qword_27F3A5E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24FE85C8C()
{
  result = qword_27F3A5E00;
  if (!qword_27F3A5E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5E00);
  }

  return result;
}

uint64_t sub_24FE85CE8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t sub_24FE85D44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DocumentView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24FE82EA8(a1, v6, a2);
}

uint64_t sub_24FE85DF4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24FE85E78()
{
  result = qword_27F3A5E50;
  if (!qword_27F3A5E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5E58, &qword_24FEE4438);
    sub_24FE58928(&qword_27F3A5E60, &qword_27F3A5E68, &qword_24FEE4440);
    sub_24FE58928(&qword_27F3A5E70, &qword_27F3A5E78, &qword_24FEE4448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5E50);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for DocumentView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 32);

  if (*(v0 + v3 + 48))
  {
    v9 = *(v5 + 56);
  }

  v10 = *(v1 + 36);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_24FE8609C(uint64_t a1)
{
  v3 = *(type metadata accessor for DocumentView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_24FE85670(a1, v4);
}

uint64_t _s16MarkdownDocument0B4ViewV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v37 = sub_24FEDC774();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v38 = &v34 - v8;
  v9 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  v10 = *(*&v53[0] + 16);

  v11 = *(a2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v40 = v11;
  sub_24FEDCFE4();

  v12 = *(*&v53[0] + 16);

  if (v10 != v12)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  v14 = 0;
  v36 = *&v53[0] + 32;
  v35 = (v4 + 8);
  v41 = *&v53[0];
  v15 = *(*&v53[0] + 16);
  v16 = &qword_27F3A5F00;
  v17 = &qword_24FEE4550;
  while (1)
  {
    v18 = v15;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    if (v14 != v15)
    {
      break;
    }

LABEL_6:
    v53[0] = v19;
    v53[1] = v20;
    v53[2] = v21;
    if (!v21)
    {

      return 1;
    }

    v42 = v19;
    sub_24FE71ADC((v53 + 8), v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5DE0, &unk_24FEE7BE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
    if (swift_dynamicCast())
    {
      sub_24FE71ADC(v45, &v50);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24FEDCFE4();

      if ((v42 & 0x8000000000000000) != 0)
      {
        goto LABEL_21;
      }

      if (v42 >= *(*&v45[0] + 16))
      {
        goto LABEL_22;
      }

      sub_24FE72D1C(*&v45[0] + 40 * v42 + 32, v45);

      if (!swift_dynamicCast())
      {
        v44 = 0;
        memset(v43, 0, sizeof(v43));

        sub_24FE58B7C(v43, &qword_27F3A5F08, &qword_24FEE4558);
LABEL_17:
        __swift_destroy_boxed_opaque_existential_1(&v50);
        return 0;
      }

      v22 = v17;
      v23 = v15;
      v24 = v16;
      sub_24FE71ADC(v43, v47);
      v25 = *(&v51 + 1);
      v26 = v52;
      __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
      v27 = v38;
      (*(v26 + 24))(v25, v26);
      v28 = v48;
      v29 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      v30 = v39;
      (*(v29 + 24))(v28, v29);
      sub_24FE86F30(&qword_27F3A5F10, MEMORY[0x277CC8C40]);
      v31 = v37;
      v32 = sub_24FEDE194();
      v33 = *v35;
      (*v35)(v30, v31);
      v33(v27, v31);
      if ((v32 & 1) == 0)
      {

        __swift_destroy_boxed_opaque_existential_1(v47);
        goto LABEL_17;
      }

      __swift_destroy_boxed_opaque_existential_1(v47);
      result = __swift_destroy_boxed_opaque_existential_1(&v50);
      v14 = v18;
      v16 = v24;
      v15 = v23;
      v17 = v22;
    }

    else
    {
      v46 = 0;
      memset(v45, 0, sizeof(v45));
      result = sub_24FE58B7C(v45, &qword_27F3A5F08, &qword_24FEE4558);
      v14 = v18;
    }
  }

  if (v14 < *(v41 + 16))
  {
    v18 = v14 + 1;
    *&v50 = v14;
    sub_24FE72D1C(v36 + 40 * v14, &v50 + 8);
    v19 = v50;
    v20 = v51;
    v21 = v52;
    goto LABEL_6;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_24FE86708(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24FE867D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24FE86888()
{
  sub_24FE869B4();
  if (v0 <= 0x3F)
  {
    sub_24FE86A48();
    if (v1 <= 0x3F)
    {
      sub_24FE86ADC(319, &qword_27F3A5EB8, &qword_27F3A63C0, &qword_24FEE4530, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_24FE86ADC(319, &qword_27F3A5EC0, &qword_27F3A5EC8, &qword_24FEE4538, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24FE86B40();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24FE869B4()
{
  if (!qword_27F3A5EA8)
  {
    type metadata accessor for DocumentViewModel();
    sub_24FE86F30(&qword_27F3A5DF0, type metadata accessor for DocumentViewModel);
    v0 = sub_24FEDD1C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A5EA8);
    }
  }
}

void sub_24FE86A48()
{
  if (!qword_27F3A5EB0)
  {
    type metadata accessor for LaTeXMathTracker();
    sub_24FE86F30(&qword_27F3A5DF8, type metadata accessor for LaTeXMathTracker);
    v0 = sub_24FEDD1C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A5EB0);
    }
  }
}

void sub_24FE86ADC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_24FE86B40()
{
  if (!qword_27F3A5ED0)
  {
    sub_24FE85C8C();
    v0 = sub_24FEDD0D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A5ED0);
    }
  }
}

unint64_t sub_24FE86BA0()
{
  result = qword_27F3A5EE0;
  if (!qword_27F3A5EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5E80, &qword_24FEE4480);
    sub_24FE58928(&qword_27F3A5EE8, &qword_27F3A5EF0, &unk_24FEE4540);
    sub_24FE58928(&qword_27F3A5EF8, &unk_27F3A5E88, &qword_24FEE4488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5EE0);
  }

  return result;
}

uint64_t sub_24FE86C84(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_24FE86CBC()
{
  result = qword_27F3A5F98;
  if (!qword_27F3A5F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5F78, &qword_24FEE45C8);
    sub_24FE86F30(&qword_27F3A5FA0, type metadata accessor for ShareButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5F98);
  }

  return result;
}

unint64_t sub_24FE86D78()
{
  result = qword_27F3A5FA8;
  if (!qword_27F3A5FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5F90, &qword_24FEE4630);
    sub_24FE86E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5FA8);
  }

  return result;
}

unint64_t sub_24FE86E04()
{
  result = qword_27F3A5FB0;
  if (!qword_27F3A5FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5FB0);
  }

  return result;
}

uint64_t sub_24FE86E60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24FE86EC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24FE86F30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FE86F78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DocumentViewModel.elements.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  return v1;
}

uint64_t DocumentViewModel.elements.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24FEDCFF4();
}

void (*DocumentViewModel.elements.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_24FEDCFD4();
  return sub_24FE871BC;
}

void sub_24FE871BC(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t DocumentViewModel.$elements.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5FD8, &qword_24FEE46D0);
  sub_24FEDCFB4();
  return swift_endAccess();
}

uint64_t DocumentViewModel.$elements.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5FE0, &qword_24FEE46D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5FD8, &qword_24FEE46D0);
  sub_24FEDCFC4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*DocumentViewModel.$elements.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5FE0, &qword_24FEE46D8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC16MarkdownDocument17DocumentViewModel__elements;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5FD8, &qword_24FEE46D0);
  sub_24FEDCFB4();
  swift_endAccess();
  return sub_24FE87540;
}

void sub_24FE87540(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_24FEDCFC4();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_24FEDCFC4();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t DocumentViewModel.__allocating_init(elements:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E18, &qword_24FEE4420);
  sub_24FEDCFA4();
  swift_endAccess();
  return v3;
}

uint64_t DocumentViewModel.init(elements:)()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E18, &qword_24FEE4420);
  sub_24FEDCFA4();
  swift_endAccess();
  return v0;
}

Swift::Bool __swiftcall DocumentViewModel.hasCodeblockOrImage()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A5FE8, &qword_24FEE46E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v33 - v2;
  v41 = type metadata accessor for DocumentOutlineElement();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v41);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DocumentFileElement();
  v8 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v43 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DocumentDataImageElement();
  v10 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v45 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DocumentTableElement();
  v12 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v47 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DocumentCodeBlockElement();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v48 = &v33 - v19;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  v21 = v51[0];
  v39 = *(v51[0] + 16);
  if (!v39)
  {
LABEL_22:

    return 0;
  }

  v22 = 0;
  v23 = v51[0] + 32;
  v40 = (v4 + 56);
  v36 = v7;
  v33 = v3;
  v35 = v51[0];
  while (1)
  {
    if (v22 >= *(v21 + 16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    sub_24FE72D1C(v23 + 40 * v22, v51);
    sub_24FE72D1C(v51, v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5DE0, &unk_24FEE7BE0);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v51);

      v31 = type metadata accessor for DocumentCodeBlockElement;
      v32 = v48;
LABEL_24:
      sub_24FE87F5C(v32, v31);
      return 1;
    }

    sub_24FE72D1C(v51, v50);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v51);

      v31 = type metadata accessor for DocumentTableElement;
      v32 = v47;
      goto LABEL_24;
    }

    sub_24FE72D1C(v51, v50);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v51);

      v31 = type metadata accessor for DocumentDataImageElement;
      v32 = v45;
      goto LABEL_24;
    }

    sub_24FE72D1C(v51, v50);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v51);

      v31 = type metadata accessor for DocumentFileElement;
      v32 = v43;
      goto LABEL_24;
    }

    sub_24FE72D1C(v51, v50);
    v24 = v41;
    if (swift_dynamicCast())
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(v51);
    (*v40)(v3, 1, 1, v24);
    result = sub_24FE87E90(v3);
LABEL_21:
    if (++v22 == v39)
    {
      goto LABEL_22;
    }
  }

  (*v40)(v3, 0, 1, v24);
  result = sub_24FE87EF8(v3, v7);
  v25 = *&v7[*(v24 + 20)];
  v37 = *(v25 + 16);
  if (!v37)
  {
LABEL_20:
    __swift_destroy_boxed_opaque_existential_1(v51);
    v7 = v36;
    result = sub_24FE87F5C(v36, type metadata accessor for DocumentOutlineElement);
    v3 = v33;
    v21 = v35;
    goto LABEL_21;
  }

  v26 = 0;
  v38 = v25 + 32;
  v34 = v23;
  while (v26 < *(v25 + 16))
  {
    v27 = *(v38 + 8 * v26);
    v28 = *(v27 + 16);

    if (v28)
    {
      v29 = 0;
      v30 = v27 + 32;
      while (v29 < *(v27 + 16))
      {
        sub_24FE72D1C(v30, v50);
        sub_24FE731F4(v50, v49);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F00, &qword_24FEE4550);
        result = swift_dynamicCast();
        if (result)
        {

          sub_24FE87F5C(v18, type metadata accessor for DocumentCodeBlockElement);
          __swift_destroy_boxed_opaque_existential_1(v51);
          v31 = type metadata accessor for DocumentOutlineElement;
          v32 = v36;
          goto LABEL_24;
        }

        ++v29;
        v30 += 40;
        if (v28 == v29)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

LABEL_11:
    ++v26;

    v23 = v34;
    if (v26 == v37)
    {
      goto LABEL_20;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24FE87E90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A5FE8, &qword_24FEE46E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FE87EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentOutlineElement();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE87F5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DocumentViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC16MarkdownDocument17DocumentViewModel__elements;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5FD8, &qword_24FEE46D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DocumentViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MarkdownDocument17DocumentViewModel__elements;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5FD8, &qword_24FEE46D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24FE880DC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_24FEDCF94();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for DocumentViewModel()
{
  result = qword_27F3A5FF8;
  if (!qword_27F3A5FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24FE88180()
{
  sub_24FE88210();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_24FE88210()
{
  if (!qword_27F3A6008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5E18, &qword_24FEE4420);
    v0 = sub_24FEDD004();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A6008);
    }
  }
}

uint64_t DocumentBlockQuoteElement.init(id:text:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24FEDCA64();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for DocumentBlockQuoteElement() + 20);
  v8 = sub_24FEDC774();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t type metadata accessor for DocumentBlockQuoteElement()
{
  result = qword_27F3A6048;
  if (!qword_27F3A6048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DocumentBlockQuoteElement.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDCA64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DocumentBlockQuoteElement.text.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DocumentBlockQuoteElement() + 20);
  v4 = sub_24FEDC774();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DocumentBlockQuoteElement.makeView(textWrapOffset:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = *(type metadata accessor for DocumentBlockQuoteElement() + 20);
  v8 = sub_24FEDC774();
  (*(*(v8 - 8) + 16))(a1, v3 + v7, v8);
  v9 = type metadata accessor for DocumentBlockQuoteView();
  v10 = (a1 + v9[5]);
  *v10 = a2;
  v10[1] = a3;
  *(a1 + v9[6]) = 0x402A000000000000;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + v9[7]) = _Q0;
  *(a1 + v9[8]) = 0x4000000000000000;
  *(a1 + v9[9]) = 0x4014000000000000;
  v16 = a1 + v9[10];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = v9[11];
  *(a1 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DocumentBlockQuoteElement.makeView()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DocumentBlockQuoteElement() + 20);
  v4 = sub_24FEDC774();
  (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
  v5 = type metadata accessor for DocumentBlockQuoteView();
  v6 = (a1 + v5[5]);
  *v6 = 0;
  v6[1] = 0;
  *(a1 + v5[6]) = 0x402A000000000000;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + v5[7]) = _Q0;
  *(a1 + v5[8]) = 0x4000000000000000;
  *(a1 + v5[9]) = 0x4014000000000000;
  v12 = a1 + v5[10];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = v5[11];
  *(a1 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DocumentBlockQuoteElement.append(_:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DocumentBlockQuoteElement();
  a1[3] = v2;
  a1[4] = sub_24FE88DA0(&qword_27F3A6018, type metadata accessor for DocumentBlockQuoteElement);
  __swift_allocate_boxed_opaque_existential_1(a1);
  _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
  v3 = *(v2 + 20);
  return sub_24FEDC614();
}

uint64_t static DocumentBlockQuoteElement.__derived_struct_equals(_:_:)()
{
  if ((_s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v0 = *(type metadata accessor for DocumentBlockQuoteElement() + 20);

  return sub_24FEDC684();
}

uint64_t sub_24FE887A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  __swift_allocate_boxed_opaque_existential_1(a3);
  _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
  v4 = *(a1 + 20);
  return sub_24FEDC614();
}

uint64_t sub_24FE88800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_24FEDC774();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24FE88878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_24FEDC774();
  (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
  v6 = type metadata accessor for DocumentBlockQuoteView();
  v7 = (a2 + v6[5]);
  *v7 = 0;
  v7[1] = 0;
  *(a2 + v6[6]) = 0x402A000000000000;
  __asm { FMOV            V0.2D, #1.0 }

  *(a2 + v6[7]) = _Q0;
  *(a2 + v6[8]) = 0x4000000000000000;
  *(a2 + v6[9]) = 0x4014000000000000;
  v13 = a2 + v6[10];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = v6[11];
  *(a2 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24FE88988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = *(a1 + 20);
  v9 = sub_24FEDC774();
  (*(*(v9 - 8) + 16))(a2, v4 + v8, v9);
  v10 = type metadata accessor for DocumentBlockQuoteView();
  v11 = (a2 + v10[5]);
  *v11 = a3;
  v11[1] = a4;
  *(a2 + v10[6]) = 0x402A000000000000;
  __asm { FMOV            V0.2D, #1.0 }

  *(a2 + v10[7]) = _Q0;
  *(a2 + v10[8]) = 0x4000000000000000;
  *(a2 + v10[9]) = 0x4014000000000000;
  v17 = a2 + v10[10];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = v10[11];
  *(a2 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24FE88AA8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDCA64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24FE88B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);

  return sub_24FEDC684();
}

uint64_t sub_24FE88B78@<X0>(void *a1@<X8>)
{
  result = sub_24FEDD324();
  *a1 = v3;
  return result;
}

uint64_t sub_24FE88BA4@<X0>(void *a1@<X8>)
{
  result = sub_24FEDD324();
  *a1 = v3;
  return result;
}

uint64_t sub_24FE88C28(uint64_t a1)
{
  result = sub_24FE88DA0(&qword_27F3A6020, type metadata accessor for DocumentBlockQuoteElement);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24FE88CD4(uint64_t a1)
{
  *(a1 + 8) = sub_24FE88DA0(&qword_27F3A6030, type metadata accessor for DocumentBlockQuoteElement);
  result = sub_24FE88DA0(&unk_27F3A6038, type metadata accessor for DocumentBlockQuoteElement);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24FE88DA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FE88DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDCA64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_24FEDC774();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24FE88F00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24FEDCA64();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_24FEDC774();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24FE88FFC()
{
  result = sub_24FEDCA64();
  if (v1 <= 0x3F)
  {
    result = sub_24FEDC774();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t DocumentBlockQuoteView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for DocumentBlockQuoteView() + 24));
  *a1 = sub_24FEDD434();
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6060, &qword_24FEE48C0);
  return sub_24FE89138(v1, (a1 + *(v4 + 44)));
}

uint64_t type metadata accessor for DocumentBlockQuoteView()
{
  result = qword_27F3A6078;
  if (!qword_27F3A6078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24FE89138@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v94 = a2;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A60A8, &qword_24FEE4980);
  v92 = *(v93 - 8);
  v3 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v88 = &v80 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A60B0, &qword_24FEE4988);
  v6 = *(v5 - 8);
  v90 = v5 - 8;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v91 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v87 = &v80 - v10;
  MEMORY[0x28223BE20](v11);
  v89 = &v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A60B8, &qword_24FEE4990);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v80 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A60C0, &qword_24FEE4998);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v80 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A60C8, &qword_24FEE49A0);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v81 = &v80 - v26;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A60D0, &qword_24FEE49A8);
  v27 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v29 = &v80 - v28;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A60D8, &qword_24FEE49B0);
  v85 = *(v86 - 8);
  v30 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v84 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v82 = &v80 - v33;
  v34 = type metadata accessor for DocumentBlockQuoteView();
  v35 = (a1 + v34[7]);
  v36 = *v35;
  v37 = v35[1];
  v38 = *(sub_24FEDD284() + 20);
  v39 = *MEMORY[0x277CE0118];
  v40 = sub_24FEDD4E4();
  (*(*(v40 - 8) + 104))(&v17[v38], v39, v40);
  *v17 = v36;
  *(v17 + 1) = v37;
  v41 = *(a1 + v34[8]);
  sub_24FEDDF34();
  sub_24FEDD0F4();
  v42 = &v17[*(v14 + 44)];
  v43 = v98;
  *v42 = v97;
  *(v42 + 1) = v43;
  *(v42 + 2) = v99;
  sub_24FEDDF34();
  sub_24FEDD294();
  sub_24FE6315C(v17, v22, &qword_27F3A60B8, &qword_24FEE4990);
  v44 = &v22[*(v19 + 44)];
  v45 = v105;
  *(v44 + 4) = v104;
  *(v44 + 5) = v45;
  *(v44 + 6) = v106;
  v46 = v101;
  *v44 = v100;
  *(v44 + 1) = v46;
  v47 = v103;
  *(v44 + 2) = v102;
  *(v44 + 3) = v47;
  LOBYTE(v17) = sub_24FEDD774();
  v48 = *(a1 + v34[9]);
  sub_24FEDD014();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v57 = v81;
  sub_24FE6315C(v22, v81, &qword_27F3A60C0, &qword_24FEE4998);
  v58 = v57 + *(v24 + 44);
  *v58 = v17;
  *(v58 + 8) = v50;
  *(v58 + 16) = v52;
  *(v58 + 24) = v54;
  *(v58 + 32) = v56;
  *(v58 + 40) = 0;
  v59 = [objc_opt_self() separatorColor];
  v60 = sub_24FEDDC94();
  KeyPath = swift_getKeyPath();
  sub_24FE6315C(v57, v29, &qword_27F3A60C8, &qword_24FEE49A0);
  v62 = &v29[*(v83 + 36)];
  *v62 = KeyPath;
  v62[1] = v60;
  sub_24FE8A3E4();
  v63 = v82;
  sub_24FEDDA54();
  sub_24FE8A698(v29);
  sub_24FE89944(a1, v95);
  v64 = v95[0];
  v65 = v95[1];
  LOBYTE(KeyPath) = v96;
  v66 = a1 + v34[5];
  v67 = *(v66 + 8);
  LODWORD(v66) = *v66 != 0.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6118, &qword_24FEE49F0);
  sub_24FE8A700();
  v68 = v88;
  sub_24FEDDB84();
  sub_24FE56B94(v64, v65, KeyPath);

  LODWORD(v64) = sub_24FEDD634();
  v69 = v87;
  (*(v92 + 32))(v87, v68, v93);
  *(v69 + *(v90 + 44)) = v64;
  v70 = v89;
  sub_24FE8A77C(v69, v89);
  v71 = v85;
  v72 = *(v85 + 16);
  v73 = v84;
  v74 = v86;
  v72(v84, v63, v86);
  v75 = v91;
  sub_24FE8A7EC(v70, v91);
  v76 = v94;
  v72(v94, v73, v74);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6128, &qword_24FEE49F8);
  sub_24FE8A7EC(v75, &v76[*(v77 + 48)]);
  sub_24FE8A85C(v70);
  v78 = *(v71 + 8);
  v78(v63, v74);
  sub_24FE8A85C(v75);
  return (v78)(v73, v74);
}

uint64_t sub_24FE89944@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v64 = a2;
  v3 = sub_24FEDC774();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6130, &unk_24FEE4A00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v60 = &v54 - v9;
  v59 = sub_24FEDC5A4();
  v58 = *(v59 - 8);
  v10 = *(v58 + 64);
  MEMORY[0x28223BE20](v59);
  v57 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24FEDD054();
  v62 = *(v12 - 8);
  v63 = v12;
  v13 = *(v62 + 64);
  MEMORY[0x28223BE20](v12);
  v61 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24FEDD3E4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DocumentBlockQuoteView();
  v21 = a1 + *(v20 + 40);
  v22 = *v21;
  if (*(v21 + 8) == 1)
  {
    v23 = *v21;
  }

  else
  {

    sub_24FEDE4D4();
    v56 = v5;
    v24 = sub_24FEDD714();
    v55 = v15;
    v25 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = v24;
    v5 = v56;
    sub_24FEDCF14();

    v6 = v25;
    sub_24FEDD3D4();
    swift_getAtKeyPath();
    sub_24FE8A8C4(v22, 0);
    (*(v16 + 8))(v19, v55);
    v23 = v65[0];
  }

  v27 = a1 + *(v20 + 44);
  v28 = v61;
  sub_24FE9A750(v61);
  type metadata accessor for MarkdownFont();
  swift_initStaticObject();
  sub_24FE82000(v65);
  v29 = v65[1];
  v70 = v65[0];
  sub_24FE8A8D0(&v70);
  v69 = v65[2];
  sub_24FE8A8D0(&v69);
  v68 = v65[3];
  sub_24FE8A8D0(&v68);
  v67 = v65[4];
  sub_24FE8A8D0(&v67);
  v66 = v65[5];
  sub_24FE8A8D0(&v66);
  v30 = v57;
  sub_24FEDC574();
  sub_24FEAE034(v60);
  (*(v58 + 8))(v30, v59);
  v31 = sub_24FEDE224();
  v33 = _s16MarkdownDocument18LaTeXMathExtractorO7extract4from15extractingTypesSayAC11TextSegmentOGSS_AC14ExtractionTypeVtFZ_0(v31, v32, 3);

  (*(v4 + 16))(v6, a1, v3);
  v34 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v35 = (v5 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v4 + 32))(v36 + v34, v6, v3);
  v37 = (v36 + v35);
  *v37 = sub_24FEC572C;
  v37[1] = 0;
  sub_24FEDD4B4();
  v53 = 256;
  v38 = sub_24FEDD9D4();
  MEMORY[0x28223BE20](v38);
  *(&v54 - 6) = v23;
  *(&v54 - 5) = v28;
  *(&v54 - 4) = v29;
  *(&v54 - 3) = sub_24FE8A9C4;
  v52 = v36;
  v43 = sub_24FEAFE5C(v40, v41, v39 & 1, v42, sub_24FE8AA8C, (&v54 - 8), v33);
  v45 = v44;
  v47 = v46;
  v49 = v48;

  result = (*(v62 + 8))(v28, v63);
  v51 = v64;
  *v64 = v43;
  v51[1] = v45;
  *(v51 + 16) = v47 & 1;
  v51[3] = v49;
  return result;
}

uint64_t sub_24FE89F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(a1 + 24));
  *a2 = sub_24FEDD434();
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6060, &qword_24FEE48C0);
  return sub_24FE89138(v2, (a2 + *(v5 + 44)));
}

uint64_t sub_24FE89FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDC774();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 40) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A6068, qword_24FEE4930);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24FE8A0F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24FEDC774();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 40) + 8) = -a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A6068, qword_24FEE4930);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24FE8A228()
{
  sub_24FEDC774();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_24FE8A2F0();
      if (v2 <= 0x3F)
      {
        sub_24FE8A340();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24FE8A2F0()
{
  if (!qword_27F3A6088)
  {
    v0 = sub_24FEDD074();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A6088);
    }
  }
}

void sub_24FE8A340()
{
  if (!qword_27F3A6090)
  {
    sub_24FEDD054();
    v0 = sub_24FEDD074();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A6090);
    }
  }
}

unint64_t sub_24FE8A3E4()
{
  result = qword_27F3A60E0;
  if (!qword_27F3A60E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A60D0, &qword_24FEE49A8);
    sub_24FE8A49C();
    sub_24FE58928(&qword_27F3A6108, &qword_27F3A6110, &qword_24FEE4B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A60E0);
  }

  return result;
}

unint64_t sub_24FE8A49C()
{
  result = qword_27F3A60E8;
  if (!qword_27F3A60E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A60C8, &qword_24FEE49A0);
    sub_24FE8A528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A60E8);
  }

  return result;
}

unint64_t sub_24FE8A528()
{
  result = qword_27F3A60F0;
  if (!qword_27F3A60F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A60C0, &qword_24FEE4998);
    sub_24FE8A5B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A60F0);
  }

  return result;
}

unint64_t sub_24FE8A5B4()
{
  result = qword_27F3A60F8;
  if (!qword_27F3A60F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A60B8, &qword_24FEE4990);
    sub_24FE8A640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A60F8);
  }

  return result;
}

unint64_t sub_24FE8A640()
{
  result = qword_27F3A6100;
  if (!qword_27F3A6100)
  {
    sub_24FEDD284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6100);
  }

  return result;
}

uint64_t sub_24FE8A698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A60D0, &qword_24FEE49A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24FE8A700()
{
  result = qword_27F3A6120;
  if (!qword_27F3A6120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6118, &qword_24FEE49F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6120);
  }

  return result;
}

uint64_t sub_24FE8A77C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A60B0, &qword_24FEE4988);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE8A7EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A60B0, &qword_24FEE4988);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE8A85C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A60B0, &qword_24FEE4988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FE8A8C4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_24FE8A924()
{
  v1 = sub_24FEDC774();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24FE8A9C4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v9 = *(sub_24FEDC774() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  return sub_24FEAE508(a1, a2, a3, a4, v4 + v10, v12, v13);
}

uint64_t DocumentElementBlockQuoteParser.parseElement(attributedString:run:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a1;
  v86 = a2;
  v2 = sub_24FEDC8E4();
  v78 = *(v2 - 8);
  v3 = *(v78 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_24FEDC774();
  v82 = *(v99 - 8);
  v6 = *(v82 + 64);
  MEMORY[0x28223BE20](v99);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v80 = &v76 - v10;
  MEMORY[0x28223BE20](v11);
  v84 = &v76 - v12;
  MEMORY[0x28223BE20](v13);
  v81 = &v76 - v14;
  v98 = sub_24FEDC884();
  v88 = *(v98 - 1);
  v15 = *(v88 + 64);
  MEMORY[0x28223BE20](v98);
  v97 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v96 = (&v76 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6138, &unk_24FEE4A10);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v76 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6140, &qword_24FEE79D0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v76 - v25;
  v27 = sub_24FEDC854();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v85 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v83 = &v76 - v32;
  sub_24FE8B614();
  sub_24FEDC6D4();
  v33 = sub_24FEDC894();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v22, 1, v33) == 1)
  {
    sub_24FE58B7C(v22, &qword_27F3A6138, &unk_24FEE4A10);
    (*(v28 + 56))(v26, 1, 1, v27);
    v35 = v86;
    v36 = v26;
LABEL_11:
    sub_24FE58B7C(v36, &qword_27F3A6140, &qword_24FEE79D0);
    v53 = type metadata accessor for DocumentBlockQuoteElement();
    return (*(*(v53 - 8) + 56))(v35, 1, 1, v53);
  }

  v77 = v26;
  v37 = sub_24FEDC864();
  (*(v34 + 8))(v22, v33);
  result = v37;
  v39 = *(v37 + 16);
  v40 = v27;
  v41 = v85;
  v95 = v39;
  v76 = v8;
  if (v39)
  {
    v42 = 0;
    v91 = v28 + 16;
    LODWORD(v90) = *MEMORY[0x277CC8D00];
    v43 = v88;
    v88 += 8;
    v89 = (v43 + 104);
    v87 = (v28 + 8);
    v93 = v2;
    v94 = v5;
    v92 = result;
    v44 = v97;
    while (v42 < *(result + 16))
    {
      v45 = v28;
      (*(v28 + 16))(v41, result + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v42, v40);
      v46 = v96;
      v47 = v40;
      sub_24FEDC834();
      v48 = v98;
      (*v89)(v44, v90, v98);
      v49 = MEMORY[0x253058A70](v46, v44);
      v50 = *v88;
      (*v88)(v44, v48);
      v50(v46, v48);
      if (v49)
      {

        v36 = v77;
        (*(v45 + 32))(v77, v41, v47);
        v51 = 0;
        v2 = v93;
        v5 = v94;
        v40 = v47;
        v28 = v45;
        goto LABEL_10;
      }

      ++v42;
      (*v87)(v41, v47);
      v5 = v94;
      result = v92;
      v2 = v93;
      v40 = v47;
      v28 = v45;
      if (v95 == v42)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    v51 = 1;
    v36 = v77;
LABEL_10:
    (*(v28 + 56))(v36, v51, 1, v40);
    v52 = (*(v28 + 48))(v36, 1, v40);
    v35 = v86;
    if (v52 == 1)
    {
      goto LABEL_11;
    }

    v91 = v28;
    v92 = v40;
    (*(v28 + 32))(v83, v36, v40);
    v54 = sub_24FEDC844();
    v55 = v79;
    v56 = sub_24FED5384(v54);
    MEMORY[0x28223BE20](v56);
    *(&v76 - 2) = v55;
    v57 = sub_24FE8B764(sub_24FE8B744, (&v76 - 4), v56);

    v58 = v84;
    sub_24FEDC764();
    v59 = v82;
    v60 = v80;
    v61 = v58;
    v62 = v99;
    (*(v82 + 16))(v80, v61, v99);
    v63 = *(v57 + 16);
    if (v63)
    {
      v64 = v5;
      v65 = *(v78 + 16);
      v66 = v57 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
      v97 = *(v78 + 72);
      v98 = v65;
      v67 = (v59 + 8);
      v95 = (v59 + 32);
      v96 = (v78 + 8);
      v89 = ((v59 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v90 = v57;
      v68 = v76;
      v69 = v99;
      do
      {
        (v98)(v64, v66, v2);
        sub_24FE8BECC(&unk_27F3A6150, MEMORY[0x277CC8D88]);
        sub_24FEDC624();
        (*v96)(v64, v2);
        v70 = *v67;
        (*v67)(v60, v69);
        (*v95)(v60, v68, v69);
        v66 += v97;
        --v63;
      }

      while (v63);

      v35 = v86;
      v62 = v99;
      v59 = v82;
    }

    else
    {

      v70 = *(v59 + 8);
    }

    v70(v84, v62);
    v71 = *(v59 + 32);
    v72 = v81;
    v71(v81, v60, v62);
    _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
    (*(v91 + 8))(v83, v92);
    v73 = type metadata accessor for DocumentBlockQuoteElement();
    v74 = v62;
    v75 = v73;
    v71((v35 + *(v73 + 20)), v72, v74);
    return (*(*(v75 - 8) + 56))(v35, 0, 1, v75);
  }

  return result;
}

uint64_t sub_24FE8B440@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v25 = a1;
  v6 = sub_24FEDC854();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v7;
    v23 = a3;
    v14 = *(v7 + 16);
    v13 = v7 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v6, v9);
      v18 = v25(v11);
      if (v3)
      {
        return (*v15)(v11, v6);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v6);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v7 = v22;
        a3 = v23;
        return (*(v7 + 56))(a3, v19, 1, v6);
      }
    }

    v7 = v22;
    a3 = v23;
    (*(v22 + 32))(v23, v11, v6);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v7 + 56))(a3, v19, 1, v6);
}

unint64_t sub_24FE8B614()
{
  result = qword_27F3A6148;
  if (!qword_27F3A6148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6148);
  }

  return result;
}

uint64_t sub_24FE8B668()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6160, &unk_24FEE4A80);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - v2;
  sub_24FEDC6B4();
  sub_24FE8BF90();
  sub_24FEDC7A4();
  return sub_24FE58B7C(v3, &qword_27F3A6160, &unk_24FEE4A80);
}

uint64_t sub_24FE8B764(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v20 = sub_24FEDC8E4();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v20);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v23 = MEMORY[0x277D84F90];
  sub_24FEBE110(0, v10, 0);
  v11 = v23;
  v12 = *(sub_24FEDC6C4() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v19 = v6 + 32;
  v18 = *(v12 + 72);
  while (1)
  {
    v21(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v23 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_24FEBE110(v14 > 1, v15 + 1, 1);
      v11 = v23;
    }

    *(v11 + 16) = v15 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v20);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24FE8B968(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = type metadata accessor for DocumentTableView.RowHeader(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v22 = MEMORY[0x277D84F90];
  sub_24FEBE1D8(0, v11, 0);
  v12 = v22;
  v13 = *(sub_24FEDC6C4() - 8);
  v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v19 = *(v13 + 72);
  while (1)
  {
    v20(v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_24FEBE1D8(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    *(v12 + 16) = v16 + 1;
    sub_24FE8BF28(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, type metadata accessor for DocumentTableView.RowHeader);
    v14 += v19;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24FE8BB64(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v6 = type metadata accessor for DocumentTableView.TableDatum(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v21 = MEMORY[0x277D84F90];
  sub_24FEBE194(0, v11, 0);
  v12 = v21;
  for (i = (a3 + 32); ; ++i)
  {
    v20 = *i;

    v18(&v20);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v21 = v12;
    v15 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_24FEBE194(v14 > 1, v15 + 1, 1);
      v12 = v21;
    }

    *(v12 + 16) = v15 + 1;
    sub_24FE8BF28(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for DocumentTableView.TableDatum);
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24FE8BD24(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v18 = MEMORY[0x277D84F90];
  sub_24FEBE260(0, v4, 0);
  v5 = v18;
  v7 = *(sub_24FEDC6C4() - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = *(v7 + 72);
  while (1)
  {
    a1(v17, v8);
    if (v3)
    {
      break;
    }

    v11 = v17[0];
    v10 = v17[1];
    v18 = v5;
    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_24FEBE260((v12 > 1), v13 + 1, 1);
      v5 = v18;
    }

    *(v5 + 16) = v13 + 1;
    v14 = v5 + 16 * v13;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    v8 += v9;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24FE8BECC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FE8BF28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24FE8BF90()
{
  result = qword_27F3A6168;
  if (!qword_27F3A6168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6160, &unk_24FEE4A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6168);
  }

  return result;
}

uint64_t DocumentBreakElement.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDCA64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DocumentBreakElement.id.setter(uint64_t a1)
{
  v3 = sub_24FEDCA64();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

unint64_t sub_24FE8C100()
{
  result = qword_27F3A6170;
  if (!qword_27F3A6170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6170);
  }

  return result;
}

uint64_t sub_24FE8C154(uint64_t a1)
{
  *(a1 + 8) = sub_24FE8C26C(&qword_27F3A6178, type metadata accessor for DocumentBreakElement);
  result = sub_24FE8C26C(&unk_27F3A6180, type metadata accessor for DocumentBreakElement);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for DocumentBreakElement()
{
  result = qword_27F3A6190;
  if (!qword_27F3A6190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24FE8C26C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FE8C2CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24FEDCA64();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24FE8C34C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24FEDCA64();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24FE8C3BC()
{
  result = sub_24FEDCA64();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t DocumentBreakView.body.getter()
{
  sub_24FEDDF34();
  sub_24FEDD0F4();
  sub_24FEDDC74();
  v0 = sub_24FEDDC64();

  *&v2 = v5;
  BYTE8(v2) = v6;
  *&v3 = v7;
  BYTE8(v3) = v8;
  *&v4 = swift_getKeyPath();
  *(&v4 + 1) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A61A8, &qword_24FEE4B80);
  sub_24FE8C598();
  sub_24FEDDA54();
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v9;
  v10[3] = v4;
  return sub_24FE8C768(v10);
}

uint64_t sub_24FE8C540@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24FEDD354();
  *a1 = result;
  return result;
}

uint64_t sub_24FE8C56C(uint64_t *a1)
{
  v1 = *a1;

  return sub_24FEDD364();
}

unint64_t sub_24FE8C598()
{
  result = qword_27F3A61B0;
  if (!qword_27F3A61B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A61A8, &qword_24FEE4B80);
    sub_24FE8C624();
    sub_24FE8C704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A61B0);
  }

  return result;
}

unint64_t sub_24FE8C624()
{
  result = qword_27F3A61B8;
  if (!qword_27F3A61B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A61C0, &qword_24FEE4B88);
    sub_24FE8C6B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A61B8);
  }

  return result;
}

unint64_t sub_24FE8C6B0()
{
  result = qword_27F3A61C8;
  if (!qword_27F3A61C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A61C8);
  }

  return result;
}

unint64_t sub_24FE8C704()
{
  result = qword_27F3A6108;
  if (!qword_27F3A6108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6110, &qword_24FEE4B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6108);
  }

  return result;
}

uint64_t sub_24FE8C768(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A61A8, &qword_24FEE4B80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FE8C7FC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A61A8, &qword_24FEE4B80);
  sub_24FE8C598();
  return swift_getOpaqueTypeConformance2();
}

uint64_t DocumentElementBreakParser.parseElement(attributedString:run:)@<X0>(uint64_t a1@<X8>)
{
  v38 = sub_24FEDC884();
  v2 = *(v38 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v38);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_24FEDC854();
  v6 = *(v37 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v37);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6138, &unk_24FEE4A10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v29 - v12;
  v14 = sub_24FEDC894();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FE8B614();
  sub_24FEDC6D4();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_24FE8CC74(v13);
    v19 = 1;
LABEL_10:
    v28 = type metadata accessor for DocumentBreakElement();
    return (*(*(v28 - 8) + 56))(a1, v19, 1, v28);
  }

  v32 = v14;
  v33 = a1;
  v31 = v15;
  (*(v15 + 32))(v18, v13, v14);
  v30 = v18;
  result = sub_24FEDC864();
  v21 = result;
  v36 = *(result + 16);
  if (!v36)
  {
LABEL_8:

    (*(v31 + 8))(v30, v32);
    v19 = 1;
    a1 = v33;
    goto LABEL_10;
  }

  v22 = 0;
  v34 = v6 + 8;
  v35 = v6 + 16;
  v23 = (v2 + 88);
  v24 = *MEMORY[0x277CC8D10];
  v25 = (v2 + 8);
  while (v22 < *(v21 + 16))
  {
    v26 = v37;
    (*(v6 + 16))(v9, v21 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v22, v37);
    sub_24FEDC834();
    (*(v6 + 8))(v9, v26);
    v27 = v38;
    if ((*v23)(v5, v38) == v24)
    {

      a1 = v33;
      _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
      (*(v31 + 8))(v30, v32);
      v19 = 0;
      goto LABEL_10;
    }

    ++v22;
    result = (*v25)(v5, v27);
    if (v36 == v22)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24FE8CC74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6138, &unk_24FEE4A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24FE8CCE4()
{
  result = qword_27F3A61D0;
  if (!qword_27F3A61D0)
  {
    type metadata accessor for DocumentBreakElement();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A61D0);
  }

  return result;
}

uint64_t sub_24FE8CD64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24FE8CDF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for MarkdownButtonStyle()
{
  result = qword_27F3A61D8;
  if (!qword_27F3A61D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24FE8CEB8()
{
  sub_24FE86B40();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24FE8CF2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_24FEDDE54();
  if (v2 <= 0x3F)
  {
    sub_24FE8D74C();
    if (v3 <= 0x3F)
    {
      sub_24FE8A340();
      if (v4 <= 0x3F)
      {
        sub_24FE86B40();
        if (v5 <= 0x3F)
        {
          sub_24FE8D79C();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24FE8CFFC(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_24FEDD054() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  v14 = *(v6 + 80);
  v15 = *(v12 + 80);
  if (v13 <= v8)
  {
    v16 = v8;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v17 = ((v14 + 16) & ~v14) + *(v6 + 64);
  v18 = *(v9 + 80) & 0xF8;
  v19 = ~v18 & 0xFFFFFFFFFFFFFFF8;
  v20 = v18 + 23;
  v21 = v10 + v15 + 1;
  if (v16 >= a2)
  {
    goto LABEL_33;
  }

  v22 = ((*(*(v11 - 8) + 64) + ((*(*(v11 - 8) + 64) + v15 + ((v21 + ((v20 + ((v17 + 7) & 0xFFFFFFFFFFFFFFF8)) & v19)) & ~v15)) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v23 = v22 & 0xFFFFFFF8;
  if ((v22 & 0xFFFFFFF8) != 0)
  {
    v24 = 2;
  }

  else
  {
    v24 = a2 - v16 + 1;
  }

  if (v24 >= 0x10000)
  {
    v25 = 4;
  }

  else
  {
    v25 = 2;
  }

  if (v24 < 0x100)
  {
    v25 = 1;
  }

  if (v24 >= 2)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v27 = *(a1 + v22);
      if (!v27)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v27 = *(a1 + v22);
      if (!v27)
      {
        goto LABEL_33;
      }
    }

LABEL_30:
    v29 = v27 - 1;
    if (v23)
    {
      v29 = 0;
      v30 = *a1;
    }

    else
    {
      v30 = 0;
    }

    return v16 + (v30 | v29) + 1;
  }

  if (v26)
  {
    v27 = *(a1 + v22);
    if (v27)
    {
      goto LABEL_30;
    }
  }

LABEL_33:
  if (v8 >= v13)
  {
    v32 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v7 & 0x80000000) != 0)
    {
      v34 = *(v6 + 48);

      return v34((v32 + v14 + 8) & ~v14, v7, v5);
    }

    else
    {
      v33 = *v32;
      if (v33 >= 0xFFFFFFFF)
      {
        LODWORD(v33) = -1;
      }

      return (v33 + 1);
    }
  }

  else
  {
    v31 = *(v12 + 48);

    return v31((v21 + ((v20 + ((a1 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) & v19)) & ~v15);
  }
}

void sub_24FE8D338(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v39 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_24FEDD054() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0) - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v13 + 84);
  }

  v17 = *(v8 + 80);
  v18 = ((v17 + 16) & ~v17) + *(v8 + 64);
  v19 = *(v13 + 80);
  v20 = *(v13 + 64);
  v21 = *(v11 + 80) & 0xF8;
  v22 = ~v21 & 0xFFFFFFFFFFFFFFF8;
  v23 = v21 + 23;
  v24 = v12 + v19 + 1;
  v25 = ((v20 + ((v20 + v19 + ((v24 + ((v23 + ((v18 + 7) & 0xFFFFFFFFFFFFFFF8)) & v22)) & ~v19)) & ~v19) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v16 >= a3)
  {
    v28 = 0;
    v29 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (((v20 + ((v20 + v19 + ((v24 + ((v23 + ((v18 + 7) & 0xFFFFFFF8)) & v22)) & ~v19)) & ~v19) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v26 = a3 - v16 + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = a2 - v16;
    if (a2 <= v16)
    {
LABEL_23:
      if (v28 > 1)
      {
        if (v28 != 2)
        {
          *&a1[v25] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_39;
        }

        *&a1[v25] = 0;
      }

      else if (v28)
      {
        a1[v25] = 0;
        if (!a2)
        {
          return;
        }

LABEL_39:
        if (v10 >= v15)
        {
          if (v10 >= a2)
          {
            v36 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
            if ((v9 & 0x80000000) != 0)
            {
              v38 = *(v39 + 56);

              v38((v36 + v17 + 8) & ~v17, a2, v9, v7);
            }

            else
            {
              if ((a2 & 0x80000000) != 0)
              {
                v37 = a2 & 0x7FFFFFFF;
              }

              else
              {
                v37 = (a2 - 1);
              }

              *v36 = v37;
            }
          }

          else
          {
            if (v18 <= 3)
            {
              v33 = ~(-1 << (8 * v18));
            }

            else
            {
              v33 = -1;
            }

            if (v18)
            {
              v34 = v33 & (~v10 + a2);
              if (v18 <= 3)
              {
                v35 = v18;
              }

              else
              {
                v35 = 4;
              }

              bzero(a1, v18);
              if (v35 > 2)
              {
                if (v35 == 3)
                {
                  *a1 = v34;
                  a1[2] = BYTE2(v34);
                }

                else
                {
                  *a1 = v34;
                }
              }

              else if (v35 == 1)
              {
                *a1 = v34;
              }

              else
              {
                *a1 = v34;
              }
            }
          }
        }

        else
        {
          v32 = *(v14 + 56);

          v32((v24 + ((v23 + (&a1[v18 + 7] & 0xFFFFFFFFFFFFFFF8)) & v22)) & ~v19, a2);
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }
  }

  if (v25)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29;
  }

  if (v25)
  {
    v31 = ~v16 + a2;
    bzero(a1, v25);
    *a1 = v31;
  }

  if (v28 > 1)
  {
    if (v28 == 2)
    {
      *&a1[v25] = v30;
    }

    else
    {
      *&a1[v25] = v30;
    }
  }

  else if (v28)
  {
    a1[v25] = v30;
  }
}

unint64_t sub_24FE8D74C()
{
  result = qword_27F3A6270;
  if (!qword_27F3A6270)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F3A6270);
  }

  return result;
}

void sub_24FE8D79C()
{
  if (!qword_27F3A6278)
  {
    v0 = sub_24FEDDD74();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A6278);
    }
  }
}

uint64_t sub_24FE8D830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63B0, &qword_24FEE4E60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_24FE92290(a3, v24 - v10);
  v12 = sub_24FEDE414();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24FE58B7C(v11, &qword_27F3A63B0, &qword_24FEE4E60);
  }

  else
  {
    sub_24FEDE404();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_24FEDE3C4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_24FEDE234() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_24FE58B7C(a3, &qword_27F3A63B0, &qword_24FEE4E60);

      return v22;
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

  sub_24FE58B7C(a3, &qword_27F3A63B0, &qword_24FEE4E60);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void sub_24FE8DACC(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_24FEDDE54();

  JUMPOUT(0x25305A020);
}

uint64_t sub_24FE8DB0C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v118 = a2;
  v2 = *(a1 + 16);
  v114 = *(v2 - 8);
  v4 = *(v114 + 64);
  MEMORY[0x28223BE20](a1);
  v113 = v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_24FEDD054();
  v115 = *(v117 - 8);
  v6 = *(v115 + 64);
  MEMORY[0x28223BE20](v117);
  v116 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MarkdownButtonStyle();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v112 = v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = a1;
  v109 = *(a1 - 8);
  v110 = *(v109 + 64);
  MEMORY[0x28223BE20](v11);
  v108 = v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62B0, &qword_24FEE4DE8);
  v13 = sub_24FEDE3A4();
  v14 = *(*(a1 + 24) + 24);
  v107 = *(a1 + 24);
  v15 = v107;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62B8, &qword_24FEE4DF0);
  WitnessTable = swift_getWitnessTable();
  v106 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v136 = v13;
  *(&v136 + 1) = AssociatedTypeWitness;
  v137 = v17;
  v138 = WitnessTable;
  v139 = AssociatedConformanceWitness;
  sub_24FEDDEB4();
  v135 = sub_24FE91760();
  swift_getWitnessTable();
  sub_24FEDDDD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62F8, &unk_24FEE4E10);
  sub_24FEDD254();
  v20 = *(v15 + 16);
  sub_24FEDD4F4();
  sub_24FEDD254();
  v21 = swift_getWitnessTable();
  v22 = sub_24FE58928(&qword_27F3A6300, &qword_27F3A62F8, &unk_24FEE4E10);
  v133 = v21;
  v134 = v22;
  v23 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v131 = v23;
  v132 = v24;
  swift_getWitnessTable();
  sub_24FEDD2A4();
  sub_24FEDD254();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6308, &qword_24FEE5410);
  v25 = sub_24FEDD254();
  v26 = sub_24FE91988();
  v27 = swift_getWitnessTable();
  v129 = v26;
  v130 = v27;
  v28 = swift_getWitnessTable();
  v29 = sub_24FE58928(&qword_27F3A6328, &qword_27F3A6308, &qword_24FEE5410);
  v127 = v28;
  v128 = v29;
  v97 = v25;
  v96 = swift_getWitnessTable();
  v30 = sub_24FEDDD94();
  v99 = *(v30 - 8);
  v31 = *(v99 + 64);
  MEMORY[0x28223BE20](v30);
  v88 = v87 - v32;
  v90 = v30;
  v33 = sub_24FEDD254();
  v101 = *(v33 - 8);
  v34 = *(v101 + 64);
  MEMORY[0x28223BE20](v33);
  v92 = v87 - v35;
  v89 = swift_getWitnessTable();
  v125 = v89;
  v126 = MEMORY[0x277CDF690];
  v36 = swift_getWitnessTable();
  v37 = sub_24FE9234C(&qword_27F3A6330, type metadata accessor for MarkdownButtonStyle);
  *&v136 = v33;
  *(&v136 + 1) = v8;
  v87[3] = v8;
  v137 = v36;
  v138 = v37;
  v87[2] = v36;
  v38 = v37;
  v87[1] = v37;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v104 = *(OpaqueTypeMetadata2 - 8);
  v40 = *(v104 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v87[0] = v87 - v41;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6338, &qword_24FEE5420);
  v105 = OpaqueTypeMetadata2;
  v42 = sub_24FEDD254();
  v102 = *(v42 - 8);
  v43 = *(v102 + 64);
  MEMORY[0x28223BE20](v42);
  v100 = v87 - v44;
  *&v136 = v33;
  *(&v136 + 1) = v8;
  v137 = v36;
  v138 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = sub_24FE58928(&qword_27F3A6340, &qword_27F3A6338, &qword_24FEE5420);
  v95 = OpaqueTypeConformance2;
  v123 = OpaqueTypeConformance2;
  v124 = v46;
  v47 = swift_getWitnessTable();
  v103 = v42;
  *&v136 = v42;
  *(&v136 + 1) = v47;
  v94 = v47;
  v98 = swift_getOpaqueTypeMetadata2();
  v48 = *(v98 - 8);
  v49 = v48[8];
  MEMORY[0x28223BE20](v98);
  v91 = v87 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v51);
  v93 = v87 - v53;
  v54 = v109;
  v55 = v108;
  v56 = v111;
  v57 = v119;
  (*(v109 + 16))(v108, v111, v119, v52);
  v58 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v59 = swift_allocObject();
  v60 = v106;
  v61 = v107;
  *(v59 + 16) = v106;
  *(v59 + 24) = v61;
  v62 = v59 + v58;
  v63 = v87[0];
  (*(v54 + 32))(v62, v55, v57);
  v120 = v60;
  v121 = v61;
  v122 = v56;
  v64 = v88;
  sub_24FEDDD84();
  v65 = (v56 + *(v57 + 52));
  v66 = *v65;
  v67 = v65[1];
  *&v136 = v66;
  *(&v136 + 1) = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6348, &qword_24FEE4E28);
  sub_24FEDDD44();
  sub_24FEDDF94();
  v68 = v92;
  v69 = v90;
  sub_24FEDDAE4();
  (*(v99 + 8))(v64, v69);
  *&v136 = 0x402A000000000000;
  sub_24FE85C8C();
  v70 = v112;
  sub_24FEDD0B4();
  v71 = v63;
  sub_24FEDDAC4();
  sub_24FE91AD8(v70, type metadata accessor for MarkdownButtonStyle);
  (*(v101 + 8))(v68, v33);
  swift_getKeyPath();
  v72 = sub_24FEDDE54();
  v73 = v113;
  MEMORY[0x25305A020](v72);
  (*(v61 + 32))(&v136, v60, v61);
  (*(v114 + 8))(v73, v60);
  LOBYTE(v36) = v139;
  v141 = v136;
  sub_24FE91B40(&v141);
  v140 = v137;
  sub_24FE91B94(&v140);
  if (v36)
  {
    v74 = v115;
    v75 = v116;
    v76 = v117;
    (*(v115 + 104))(v116, *MEMORY[0x277CDF3D0], v117);
  }

  else
  {
    v77 = v56 + *(v119 + 40);
    v75 = v116;
    sub_24FE9A750(v116);
    v76 = v117;
    v74 = v115;
  }

  v78 = v100;
  v79 = v105;
  sub_24FEDDAD4();

  (*(v74 + 8))(v75, v76);
  (*(v104 + 8))(v71, v79);
  v80 = v91;
  v81 = v103;
  sub_24FEDDA54();
  (*(v102 + 8))(v78, v81);
  v82 = v48[2];
  v83 = v93;
  v84 = v98;
  v82(v93, v80, v98);
  v85 = v48[1];
  v85(v80, v84);
  v82(v118, v83, v84);
  return (v85)(v83, v84);
}

uint64_t sub_24FE8E91C(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63B0, &qword_24FEE4E60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_24FEDE414();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v3 + 16))(v5, v1, a1);
  sub_24FEDE3E4();
  v11 = sub_24FEDE3D4();
  v12 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  *(v13 + 32) = *(a1 + 16);
  (*(v3 + 32))(v13 + v12, v5, a1);
  sub_24FE8D830(0, 0, v9, &unk_24FEE4E70, v13);
}

uint64_t sub_24FE8EB04@<X0>(uint64_t a1@<X2>, char *a2@<X8>)
{
  v23 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62B0, &qword_24FEE4DE8);
  v3 = sub_24FEDE3A4();
  v4 = *(a1 + 24);
  v33 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62B8, &qword_24FEE4DF0);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24FEDDEB4();
  v32 = sub_24FE91760();
  swift_getWitnessTable();
  sub_24FEDDDD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62F8, &unk_24FEE4E10);
  sub_24FEDD254();
  v5 = *(a1 + 16);
  sub_24FEDD4F4();
  sub_24FEDD254();
  v30 = swift_getWitnessTable();
  v31 = sub_24FE58928(&qword_27F3A6300, &qword_27F3A62F8, &unk_24FEE4E10);
  v28 = swift_getWitnessTable();
  v29 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24FEDD2A4();
  sub_24FEDD254();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6308, &qword_24FEE5410);
  v6 = sub_24FEDD254();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v14 = type metadata accessor for AnimatedCornerButton();
  sub_24FE8EF2C(v14, v10);
  v15 = sub_24FE91988();
  v16 = swift_getWitnessTable();
  v26 = v15;
  v27 = v16;
  v17 = swift_getWitnessTable();
  v18 = sub_24FE58928(&qword_27F3A6328, &qword_27F3A6308, &qword_24FEE5410);
  v24 = v17;
  v25 = v18;
  swift_getWitnessTable();
  v19 = v7[2];
  v19(v13, v10, v6);
  v20 = v7[1];
  v20(v10, v6);
  v19(v23, v13, v6);
  return (v20)(v13, v6);
}

uint64_t sub_24FE8EF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v37 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62B0, &qword_24FEE4DE8);
  v3 = *(a1 + 16);
  v4 = sub_24FEDE3A4();
  v5 = *(a1 + 24);
  v6 = *(v5 + 24);
  v7 = v5;
  *&v55 = v4;
  *(&v55 + 1) = swift_getAssociatedTypeWitness();
  *&v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62B8, &qword_24FEE4DF0);
  *(&v56 + 1) = swift_getWitnessTable();
  *&v57 = swift_getAssociatedConformanceWitness();
  sub_24FEDDEB4();
  v54 = sub_24FE91760();
  swift_getWitnessTable();
  sub_24FEDDDD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62F8, &unk_24FEE4E10);
  sub_24FEDD254();
  v8 = v7;
  v28 = v7;
  v9 = *(v7 + 16);
  sub_24FEDD4F4();
  v10 = sub_24FEDD254();
  WitnessTable = swift_getWitnessTable();
  v53 = sub_24FE58928(&qword_27F3A6300, &qword_27F3A62F8, &unk_24FEE4E10);
  v34 = MEMORY[0x277CDFAD8];
  v50 = swift_getWitnessTable();
  v51 = swift_getWitnessTable();
  v29 = v10;
  v30 = swift_getWitnessTable();
  v31 = sub_24FEDD2A4();
  v11 = sub_24FEDD254();
  v12 = *(v11 - 8);
  v32 = v11;
  v33 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = sub_24FEDDF34();
  v27 = v17;
  v18 = v36;
  v19 = v3;
  sub_24FE8F3E8(v36, v3, v8, &v55);
  v26 = v55;
  v20 = v56;
  v21 = *(v35 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  sub_24FEDD0C4();
  sub_24FEDD0C4();
  sub_24FEDDF34();
  sub_24FEDD0F4();
  *&v44 = v16;
  *(&v44 + 1) = v27;
  v45 = v26;
  *&v46 = v20;
  sub_24FEDDF34();
  v39 = v19;
  v40 = v28;
  v41 = v18;
  v22 = sub_24FE91988();
  sub_24FEDDBA4();
  v57 = v46;
  v58 = v47;
  v59 = v48;
  v60 = v49;
  v55 = v44;
  v56 = v45;
  sub_24FE58B7C(&v55, &qword_27F3A62B0, &qword_24FEE4DE8);
  v23 = swift_getWitnessTable();
  v42 = v22;
  v43 = v23;
  v24 = v32;
  swift_getWitnessTable();
  sub_24FE91BF4();
  sub_24FEDDBE4();
  return (*(v33 + 8))(v15, v24);
}

uint64_t sub_24FE8F3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v36 = a4;
  v35 = sub_24FEDD054();
  v34 = *(v35 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v35);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AnimatedCornerButton();
  v19 = *(v18 + 16);
  v38 = sub_24FEDDE54();
  MEMORY[0x25305A020]();
  v20 = *(a3 + 32);
  v41 = a3;
  v39 = v20;
  v20(&v42, a2, a3);
  v21 = *(v13 + 8);
  v40 = v13 + 8;
  v37 = v21;
  v21(v17, a2);
  v22 = v44;
  v56 = v42;
  sub_24FE91B40(&v56);
  v55 = v43;
  sub_24FE91B94(&v55);
  v23 = 0;
  v24 = 0;
  if ((v22 & 1) == 0)
  {
    v25 = a1 + *(v18 + 40);
    sub_24FE9A750(v12);
    v26 = v34;
    v27 = v35;
    (*(v34 + 104))(v9, *MEMORY[0x277CDF3D0], v35);
    LOBYTE(v25) = sub_24FEDD044();
    v28 = *(v26 + 8);
    v28(v9, v27);
    v28(v12, v27);
    if ((v25 & 1) == 0)
    {
      goto LABEL_5;
    }

    MEMORY[0x25305A020](v38);
    v39(&v45, a2, v41);
    v37(v17, a2);
    v29 = v47;
    v54 = v45;
    sub_24FE91B40(&v54);
    v53 = v46;
    sub_24FE91B94(&v53);
    if (v29)
    {
      sub_24FEDDC54();
      v23 = sub_24FEDDC64();
    }

    else
    {
LABEL_5:
      v23 = 0;
    }

    sub_24FEDDC74();
    v24 = sub_24FEDDC64();
  }

  MEMORY[0x25305A020](v38);
  v39(&v48, a2, v41);
  v37(v17, a2);
  v30 = v50;
  v52 = v48;
  sub_24FE91B40(&v52);
  v51 = v49;
  sub_24FE91B94(&v51);
  if (v30)
  {
    sub_24FEDDC34();
    v31 = sub_24FEDDC64();
  }

  else
  {
    v31 = 0;
  }

  sub_24FE91EF4(v23, v24);

  sub_24FE91F34(v23, v24);

  v32 = v36;
  *v36 = v23;
  v32[1] = v24;
  v32[2] = v31;

  return sub_24FE91F34(v23, v24);
}

uint64_t sub_24FE8F898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v52 = a1;
  v51 = a4;
  v53 = *(a2 - 8);
  v6 = *(v53 + 64);
  MEMORY[0x28223BE20](a1);
  v49 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24FEDE3A4();
  v9 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62B8, &qword_24FEE4DF0);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v63 = v8;
  *(&v63 + 1) = AssociatedTypeWitness;
  v64 = v11;
  v65 = WitnessTable;
  v66 = AssociatedConformanceWitness;
  sub_24FEDDEB4();
  v62 = sub_24FE91760();
  swift_getWitnessTable();
  v14 = sub_24FEDDDD4();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62F8, &unk_24FEE4E10);
  v18 = sub_24FEDD254();
  v50 = *(v18 - 8);
  v19 = *(v50 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v42 - v20;
  v45 = *(a3 + 16);
  v48 = sub_24FEDD4F4();
  v22 = sub_24FEDD254();
  v46 = *(v22 - 8);
  v23 = *(v46 + 64);
  MEMORY[0x28223BE20](v22);
  v43 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v47 = &v42 - v26;
  sub_24FEDDF34();
  v54 = a2;
  v55 = a3;
  v56 = v52;
  sub_24FEDDDC4();
  v27 = *(type metadata accessor for AnimatedCornerButton() + 16);
  v28 = sub_24FEDDE54();
  v29 = v49;
  MEMORY[0x25305A020]();
  (*(a3 + 32))(&v63, a2, a3);
  v30 = *(v53 + 8);
  v53 += 8;
  v42 = v30;
  v30(v29, a2);
  v31 = v64;
  v68 = v64;
  v67 = v63;
  sub_24FE91B40(&v67);
  v61 = v31;
  v32 = swift_getWitnessTable();
  sub_24FEDDB74();
  sub_24FE91B94(&v68);
  (*(v44 + 8))(v17, v14);
  sub_24FEDDF64();
  MEMORY[0x25305A020](v28);
  v33 = sub_24FE58928(&qword_27F3A6300, &qword_27F3A62F8, &unk_24FEE4E10);
  v59 = v32;
  v60 = v33;
  v34 = swift_getWitnessTable();
  v35 = v43;
  sub_24FEDDBD4();

  v42(v29, a2);
  (*(v50 + 8))(v21, v18);
  v36 = swift_getWitnessTable();
  v57 = v34;
  v58 = v36;
  swift_getWitnessTable();
  v37 = v46;
  v38 = *(v46 + 16);
  v39 = v47;
  v38(v47, v35, v22);
  v40 = *(v37 + 8);
  v40(v35, v22);
  v38(v51, v39, v22);
  return (v40)(v39, v22);
}

uint64_t sub_24FE8FF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v39 = a1;
  v40 = a4;
  v38 = type metadata accessor for AnimatedCornerButton();
  v6 = *(v38 - 8);
  v37 = *(v6 + 64);
  MEMORY[0x28223BE20](v38);
  v35 = a3;
  v36 = v34 - v7;
  v8 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = sub_24FEDE3A4();
  v34[5] = v11;
  v34[1] = *(a3 + 24);
  v12 = swift_getAssociatedTypeWitness();
  v34[4] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62B8, &qword_24FEE4DF0);
  v34[3] = v13;
  WitnessTable = swift_getWitnessTable();
  v34[2] = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v42 = v11;
  v43 = v12;
  v44 = v13;
  v45 = WitnessTable;
  v46 = AssociatedConformanceWitness;
  v16 = sub_24FEDDEB4();
  v17 = *(v16 - 8);
  v18 = v17[8];
  MEMORY[0x28223BE20](v16);
  v20 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v34 - v22;
  sub_24FEDE634();
  v24 = *(swift_getAssociatedConformanceWitness() + 8);
  v42 = sub_24FEDE3B4();
  v25 = v36;
  v26 = v38;
  (*(v6 + 16))(v36, v39, v38);
  v27 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v28 = swift_allocObject();
  v29 = v35;
  *(v28 + 16) = a2;
  *(v28 + 24) = v29;
  (*(v6 + 32))(v28 + v27, v25, v26);
  v30 = sub_24FE91760();
  sub_24FEDDEA4();
  v41 = v30;
  swift_getWitnessTable();
  v31 = v17[2];
  v31(v23, v20, v16);
  v32 = v17[1];
  v32(v20, v16);
  v31(v40, v23, v16);
  return (v32)(v23, v16);
}

uint64_t sub_24FE90300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 32);
  v33 = v12 + 32;
  v34 = v13;
  (v13)(v36, v14, v12, v9);
  v42 = v36[2];
  sub_24FE91B94(&v42);
  v35 = sub_24FEDDCB4();
  v32 = a3;
  v15 = *(type metadata accessor for AnimatedCornerButton() + 16);
  v16 = sub_24FEDDE54();
  MEMORY[0x25305A020]();
  v17 = *(a3 + 16);
  v18 = sub_24FEDE194();
  v19 = *(v7 + 8);
  v19(v11, a2);
  v20 = 0.0;
  if (v18)
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 0.0;
  }

  MEMORY[0x25305A020](v16);
  v22 = sub_24FEDE194();
  v19(v11, a2);
  if (v22)
  {
    v23 = 1.0;
  }

  else
  {
    v23 = 0.0;
  }

  sub_24FEDDF94();
  v25 = v24;
  v27 = v26;
  MEMORY[0x25305A020](v16);
  v28 = sub_24FEDE194();
  v19(v11, a2);
  if ((v28 & 1) == 0)
  {
    v20 = 12.0;
  }

  v34(&v37, a2, v32);
  v29 = v39;
  v41 = v37;
  sub_24FE91B40(&v41);
  v40 = v38;
  result = sub_24FE91B94(&v40);
  *a4 = v35;
  *(a4 + 8) = v21;
  *(a4 + 16) = v23;
  *(a4 + 24) = v23;
  *(a4 + 32) = v25;
  *(a4 + 40) = v27;
  *(a4 + 48) = v20;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = v29;
  return result;
}

uint64_t sub_24FE905CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_24FEDE694();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  sub_24FEDE3E4();
  v6[11] = sub_24FEDE3D4();
  v11 = sub_24FEDE3C4();
  v6[12] = v11;
  v6[13] = v10;

  return MEMORY[0x2822009F8](sub_24FE906C4, v11, v10);
}

uint64_t sub_24FE906C4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = (v3 + *(type metadata accessor for AnimatedCornerButton() + 52));
  v5 = *v4;
  v6 = v4[1];
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6348, &qword_24FEE4E28);
  v7 = sub_24FEDDD44();
  if (*(v0 + 32) == 1.0)
  {
    v8 = *(v0 + 80);
    v9 = *(v0 + 40);
    v20 = *(v0 + 48);
    MEMORY[0x25305A170](v7, 0.3974, 0.632, 0.0);
    v10 = swift_task_alloc();
    *(v10 + 16) = v20;
    *(v10 + 32) = v9;
    sub_24FEDD184();

    v11 = sub_24FEDE954();
    v13 = v12;
    sub_24FEDE894();
    v14 = swift_task_alloc();
    *(v0 + 112) = v14;
    *v14 = v0;
    v14[1] = sub_24FE908D0;
    v15 = *(v0 + 80);

    return sub_24FE911B8(v11, v13, 0, 0, 1);
  }

  else
  {
    v17 = *(v0 + 88);

    v18 = *(v0 + 80);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_24FE908D0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  v5 = v2[13];
  v6 = v2[12];
  if (v0)
  {
    v7 = sub_24FE90B54;
  }

  else
  {
    v7 = sub_24FE90A58;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24FE90A58()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v3 = *(v0 + 40);
  v9 = *(v0 + 48);

  MEMORY[0x25305A170](v4, 0.3974, 0.632, 0.0);
  v5 = swift_task_alloc();
  *(v5 + 16) = v9;
  *(v5 + 32) = v3;
  sub_24FEDD184();

  v6 = *(v0 + 80);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24FE90B54()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_24FE90BC0(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AnimatedCornerButton() + 52));
  v3 = *v1;
  v4 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6348, &qword_24FEE4E28);
  return sub_24FEDDD54();
}

uint64_t sub_24FE90C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v50 = a2;
  v49 = sub_24FEDDE64();
  v2 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24FEDDE04();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5DE8, &qword_24FEE42D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v41 - v12;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6280, &qword_24FEE4DA8);
  v14 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v16 = &v41 - v15;
  v17 = sub_24FEDDEE4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v41 - v23;
  v45 = sub_24FEDDF04();
  v25 = *(v45 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v45);
  v28 = &v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FEDDED4();
  sub_24FEDDEC4();
  v29 = *(v18 + 8);
  v29(v21, v17);
  sub_24FEDDEF4();
  v29(v24, v17);
  sub_24FEDD674();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  sub_24FEDD0C4();
  v30 = sub_24FEDD7F4();
  (*(*(v30 - 8) + 56))(v13, 1, 1, v30);
  sub_24FEDD834();
  sub_24FE58B7C(v13, &qword_27F3A5DE8, &qword_24FEE42D0);
  sub_24FEDD824();
  v31 = sub_24FEDD864();

  KeyPath = swift_getKeyPath();
  v33 = &v16[*(v42 + 36)];
  *v33 = KeyPath;
  v33[1] = v31;
  sub_24FEDDDF4();
  v34 = v44;
  sub_24FEDDDE4();
  v35 = v47;
  v36 = *(v46 + 8);
  v36(v7, v47);
  v37 = *MEMORY[0x277CE0128];
  v38 = sub_24FEDD4E4();
  v39 = v48;
  (*(*(v38 - 8) + 104))(v48, v37, v38);
  sub_24FE91678();
  sub_24FE9234C(&qword_27F3A62A8, MEMORY[0x277CE1260]);
  sub_24FEDDAF4();
  sub_24FE91AD8(v39, MEMORY[0x277CE1260]);
  v36(v34, v35);
  sub_24FE58B7C(v16, &qword_27F3A6280, &qword_24FEE4DA8);
  return (*(v25 + 8))(v28, v45);
}

uint64_t sub_24FE911B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_24FEDE684();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_24FE912B8, 0, 0);
}

uint64_t sub_24FE912B8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_24FEDE694();
  v7 = sub_24FE9234C(&qword_27F3A6358, MEMORY[0x277D85928]);
  sub_24FEDE874();
  sub_24FE9234C(&unk_27F3A6360, MEMORY[0x277D858F8]);
  sub_24FEDE6A4();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_24FE91448;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_24FE91448()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24FE91604, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_24FE91604()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

unint64_t sub_24FE91678()
{
  result = qword_27F3A6288;
  if (!qword_27F3A6288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6280, &qword_24FEE4DA8);
    sub_24FE9234C(&qword_27F3A6290, MEMORY[0x277CDE278]);
    sub_24FE58928(&qword_27F3A6298, &qword_27F3A62A0, &qword_24FEE4DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6288);
  }

  return result;
}

unint64_t sub_24FE91760()
{
  result = qword_27F3A62C0;
  if (!qword_27F3A62C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62B8, &qword_24FEE4DF0);
    sub_24FE917EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A62C0);
  }

  return result;
}

unint64_t sub_24FE917EC()
{
  result = qword_27F3A62C8;
  if (!qword_27F3A62C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62D0, &qword_24FEE4DF8);
    sub_24FE91878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A62C8);
  }

  return result;
}

unint64_t sub_24FE91878()
{
  result = qword_27F3A62D8;
  if (!qword_27F3A62D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62E0, &qword_24FEE4E00);
    sub_24FE91904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A62D8);
  }

  return result;
}

unint64_t sub_24FE91904()
{
  result = qword_27F3A62E8;
  if (!qword_27F3A62E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62F0, &qword_24FEE4E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A62E8);
  }

  return result;
}

unint64_t sub_24FE91988()
{
  result = qword_27F3A6310;
  if (!qword_27F3A6310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62B0, &qword_24FEE4DE8);
    sub_24FE58928(&qword_27F3A6318, &qword_27F3A6320, &qword_24FEE4E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6310);
  }

  return result;
}

uint64_t sub_24FE91A44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for AnimatedCornerButton();
  v4 = v0 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)) + *(v3 + 36);
  v5 = *(v4 + 8);
  (*v4)();
  return sub_24FE8E91C(v3);
}

uint64_t sub_24FE91ACC@<X0>(char *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  return sub_24FE8EB04(v1[3], a1);
}

uint64_t sub_24FE91AD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24FE91BF4()
{
  result = qword_27F3A6350;
  if (!qword_27F3A6350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6350);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for AnimatedCornerButton();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = v0 + v5;
  v8 = *(v0 + v5);

  v9 = *(v0 + v5 + 8);

  v10 = sub_24FEDDE54();
  (*(*(v2 - 8) + 8))(v0 + v5 + *(v10 + 32), v2);
  v11 = *(v0 + v5 + v3[9] + 8);

  v12 = v3[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_24FEDD054();
    (*(*(v13 - 8) + 8))(v7 + v12, v13);
  }

  else
  {
    v14 = *(v7 + v12);
  }

  v15 = v3[11];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  v17 = *(*(v16 - 8) + 8);
  v17(v7 + v15, v16);
  v17(v7 + v3[12], v16);
  v18 = *(v7 + v3[13] + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_24FE91E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(*(type metadata accessor for AnimatedCornerButton() - 8) + 80);

  return sub_24FE90300(a1, v5, v6, a2);
}

uint64_t sub_24FE91EF4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24FE91F34(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24FE91F78()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = type metadata accessor for AnimatedCornerButton();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = &v0[v5];
  v9 = *&v0[v5];

  v10 = *&v0[v5 + 8];

  v11 = sub_24FEDDE54();
  (*(*(v2 - 8) + 8))(&v0[v5 + *(v11 + 32)], v2);
  v12 = *&v0[v5 + 8 + v3[9]];

  v13 = v3[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_24FEDD054();
    (*(*(v14 - 8) + 8))(&v8[v13], v14);
  }

  else
  {
    v15 = *&v8[v13];
  }

  v16 = v3[11];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  v18 = *(*(v17 - 8) + 8);
  v18(&v8[v16], v17);
  v18(&v8[v3[12]], v17);
  v19 = *&v8[v3[13] + 8];

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_24FE92184(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for AnimatedCornerButton() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24FE7DF78;

  return sub_24FE905CC(a1, v8, v9, v1 + v7, v4, v5);
}

uint64_t sub_24FE92290(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63B0, &qword_24FEE4E60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE92300()
{
  v1 = v0[2];
  v2 = v0[3];
  return sub_24FE90BC0(v0[4]);
}

uint64_t sub_24FE92328()
{
  v1 = v0[2];
  v2 = v0[3];
  return sub_24FE90BC0(v0[4]);
}

uint64_t sub_24FE9234C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FE923C4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6280, &qword_24FEE4DA8);
  sub_24FEDDE64();
  sub_24FE91678();
  sub_24FE9234C(&qword_27F3A62A8, MEMORY[0x277CE1260]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24FE92478(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62B0, &qword_24FEE4DE8);
  sub_24FEDE3A4();
  v3 = *(v2 + 24);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62B8, &qword_24FEE4DF0);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_24FEDDEB4();
  sub_24FE91760();
  swift_getWitnessTable();
  sub_24FEDDDD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A62F8, &unk_24FEE4E10);
  sub_24FEDD254();
  v4 = *(v2 + 16);
  sub_24FEDD4F4();
  sub_24FEDD254();
  swift_getWitnessTable();
  sub_24FE58928(&qword_27F3A6300, &qword_27F3A62F8, &unk_24FEE4E10);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24FEDD2A4();
  sub_24FEDD254();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6308, &qword_24FEE5410);
  sub_24FEDD254();
  sub_24FE91988();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24FE58928(&qword_27F3A6328, &qword_27F3A6308, &qword_24FEE5410);
  swift_getWitnessTable();
  sub_24FEDDD94();
  sub_24FEDD254();
  type metadata accessor for MarkdownButtonStyle();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24FE9234C(&qword_27F3A6330, type metadata accessor for MarkdownButtonStyle);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6338, &qword_24FEE5420);
  sub_24FEDD254();
  swift_getOpaqueTypeConformance2();
  sub_24FE58928(&qword_27F3A6340, &qword_27F3A6338, &qword_24FEE5420);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t CopyButton.init(contentsToCopy:isOnGreyBackground:)(uint64_t a1, char a2)
{
  sub_24FEDDD34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6370, &qword_24FEE4E80);
  sub_24FEDDD54();
  return a2 & 1;
}

uint64_t sub_24FE929B8(char a1)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a1 < 0)
  {
    v5 = 0x2D64656B63656863;
  }

  else
  {
    v5 = 0x2D656C6469;
  }

  v7 = v5;
  MEMORY[0x25305A470](v3, v4);

  return v7;
}

uint64_t sub_24FE92A4C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_24FEDDC74();
  v4 = sub_24FEDDC64();

  v6 = 0x72616D6B63656863;
  if (v3 >= 0)
  {
    v6 = 0x642E6E6F2E636F64;
  }

  v7 = 0xE90000000000006BLL;
  if (v3 >= 0)
  {
    v7 = 0xEF6C6C69662E636FLL;
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 33) = v3 & 1;
  return result;
}

uint64_t sub_24FE92AFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24FE929B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24FE92B28(char *a1, char *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 ^ v2 ^ 1;
  v5 = v3 >= 0;
  if (v3 < 0)
  {
    v6 = v3 ^ v2 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  if (!v5)
  {
    v4 = 0;
  }

  if (v2 >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  return v7 & 1;
}

double CopyButton.body.getter@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6370, &qword_24FEE4E80);
  sub_24FEDDD64();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *a5 = v17;
  *(a5 + 8) = v18;
  *(a5 + 16) = v19;
  *(a5 + 24) = sub_24FE92F44;
  *(a5 + 32) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6378, &qword_24FEE4E88);
  v12 = v11[10];
  *(a5 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);
  swift_storeEnumTagMultiPayload();
  v13 = v11[11];
  sub_24FE85C8C();

  sub_24FEDD0B4();
  v14 = v11[12];
  sub_24FEDD0B4();
  v15 = (a5 + v11[13]);
  sub_24FEDDD34();
  result = 13.0;
  *v15 = 0x402A000000000000;
  v15[1] = v18;
  return result;
}

uint64_t sub_24FE92D2C(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63B0, &qword_24FEE4E60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - v10;
  sub_24FE93490(a4);
  LOBYTE(v21) = a2;
  v22 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6370, &qword_24FEE4E80);
  result = sub_24FEDDD44();
  if ((v24 & 0x80000000) == 0)
  {
    v24 = a2;
    v25 = a3;
    sub_24FEDDD64();
    v13 = v21;
    v14 = v22;
    v15 = v23;
    v16 = sub_24FEDE414();
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
    sub_24FEDE3E4();

    v17 = sub_24FEDE3D4();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    *(v18 + 16) = v17;
    *(v18 + 24) = v19;
    *(v18 + 32) = v13;
    *(v18 + 40) = v14;
    *(v18 + 48) = v15;
    *(v18 + 49) = a1 & 1 | 0x80;
    *(v18 + 50) = 1;
    *(v18 + 51) = a1 & 1;
    sub_24FE8D830(0, 0, v11, &unk_24FEE5050, v18);
  }

  return result;
}

uint64_t sub_24FE92F04()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

__n128 __swift_memcpy32_8_0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24FE92F94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24FE92FDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CopyButton.CopyButtonState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7F)
  {
    goto LABEL_17;
  }

  if (a2 + 129 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 129) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 129;
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

      return (*a1 | (v4 << 8)) - 129;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 129;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v6 >= 0x7E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for CopyButton.CopyButtonState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7F)
  {
    v4 = 0;
  }

  if (a2 > 0x7E)
  {
    v5 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
    *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24FE93264(void *a1)
{
  a1[1] = sub_24FE9329C();
  a1[2] = sub_24FE932F0();
  result = sub_24FE93344();
  a1[3] = result;
  return result;
}

unint64_t sub_24FE9329C()
{
  result = qword_27F3A6398;
  if (!qword_27F3A6398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6398);
  }

  return result;
}

unint64_t sub_24FE932F0()
{
  result = qword_27F3A63A0;
  if (!qword_27F3A63A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A63A0);
  }

  return result;
}

unint64_t sub_24FE93344()
{
  result = qword_27F3A63A8;
  if (!qword_27F3A63A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A63A8);
  }

  return result;
}

uint64_t sub_24FE93398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char a6, char *a7)
{
  v12 = *a4;
  v13 = *(a4 + 8);
  v14 = *a7;
  v15 = *a5;
  v16 = *(a4 + 16);
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_24FE7DF78;

  return sub_24FE93A28(a1, a2, a3, v12, v13, v16, v15, a6);
}

void sub_24FE93490(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63B8, &qword_24FEE53B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - v4;
  v6 = sub_24FEDC774();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v28 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v33 = MEMORY[0x277D84F90];
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = a1 + 32;
    v15 = (v10 + 56);
    v27 = (v10 + 32);
    v16 = (v10 + 16);
    v17 = (v10 + 8);
    v29 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_24FE72D1C(v14, v32);
      sub_24FE72D1C(v32, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63C0, &qword_24FEE4530);
      v18 = swift_dynamicCast();
      v19 = *v15;
      if (v18)
      {
        break;
      }

      v19(v5, 1, 1, v6);
      sub_24FE939C0(v5);
      sub_24FE72D1C(v32, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63C8, &unk_24FEE5060);
      if (swift_dynamicCast())
      {
        v22 = v30;
        sub_24FE62F4C(0, &qword_27F3A63D0, 0x277CCAA88);
        v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithObject_];
        swift_unknownObjectRelease();
LABEL_9:
        v23 = __swift_destroy_boxed_opaque_existential_1(v32);
        if (v21)
        {
          MEMORY[0x25305A500](v23);
          if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v29 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_24FEDE344();
          }

          sub_24FEDE374();
          v29 = v33;
        }

        goto LABEL_4;
      }

      __swift_destroy_boxed_opaque_existential_1(v32);
LABEL_4:
      v14 += 40;
      if (!--v13)
      {
        goto LABEL_14;
      }
    }

    v19(v5, 0, 1, v6);
    (*v27)(v12, v5, v6);
    sub_24FE62F4C(0, &qword_27F3A63D8, 0x277CCA898);
    (*v16)(v28, v12, v6);
    v20 = sub_24FEDE524();
    v21 = [objc_allocWithZone(MEMORY[0x277CCAA88]) initWithObject_];

    (*v17)(v12, v6);
    goto LABEL_9;
  }

  v29 = MEMORY[0x277D84F90];
LABEL_14:
  v24 = [objc_opt_self() generalPasteboard];
  sub_24FE62F4C(0, &qword_27F3A63D0, 0x277CCAA88);
  v25 = sub_24FEDE314();

  [v24 setItemProviders:v25 localOnly:0 expirationDate:0];
}

uint64_t sub_24FE938A4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 52, 7);
}

uint64_t sub_24FE938EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 50);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24FE7DF78;

  return sub_24FE93398(a1, v4, v5, v1 + 32, (v1 + 49), v6, (v1 + 51));
}

uint64_t sub_24FE939C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63B8, &qword_24FEE53B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FE93A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8)
{
  *(v8 + 38) = v19;
  *(v8 + 37) = a8;
  *(v8 + 36) = a7;
  v12 = sub_24FEDE694();
  *(v8 + 40) = v12;
  v13 = *(v12 - 8);
  *(v8 + 48) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 56) = swift_task_alloc();
  *(v8 + 64) = swift_task_alloc();
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  sub_24FEDE3E4();
  *(v8 + 72) = sub_24FEDE3D4();
  v16 = sub_24FEDE3C4();
  *(v8 + 80) = v16;
  *(v8 + 88) = v15;

  return MEMORY[0x2822009F8](sub_24FE93B54, v16, v15);
}

uint64_t sub_24FE93B54()
{
  v1 = *(v0 + 64);
  v2 = sub_24FEDE954();
  v4 = v3;
  sub_24FEDE894();
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_24FE93C34;
  v6 = *(v0 + 64);

  return sub_24FE911B8(v2, v4, 0, 0, 1);
}

uint64_t sub_24FE93C34()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *v1;
  v2[13] = v0;

  v8 = *(v5 + 8);
  v2[14] = v8;
  v2[15] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = v2[11];
  v10 = v2[10];
  if (v0)
  {
    v11 = sub_24FE94094;
  }

  else
  {
    v11 = sub_24FE93DE0;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_24FE93DE0()
{
  v1 = *(v0 + 56);
  *(v0 + 33) = *(v0 + 36);
  *(v0 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6448, &unk_24FEE5340);
  sub_24FEDDE34();
  sub_24FEDE894();
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_24FE93EEC;
  v3 = *(v0 + 56);

  return sub_24FE911B8(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_24FE93EEC()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 144) = v0;

  v5(v6, v7);
  v9 = *(v2 + 88);
  v10 = *(v2 + 80);
  if (v0)
  {
    v11 = sub_24FE941D4;
  }

  else
  {
    v11 = sub_24FE94108;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_24FE94094()
{
  v1 = v0[9];

  v2 = v0[13];
  v4 = v0[7];
  v3 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_24FE94108()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 37);

  if (v2 != 1)
  {
LABEL_7:
    v6 = *(v0 + 128);
    *(v0 + 34) = *(v0 + 38);
    sub_24FEDDE34();
    goto LABEL_8;
  }

  v3 = *(v0 + 36);
  MEMORY[0x25305A020](*(v0 + 128));
  v4 = *(v0 + 35);
  v5 = *(v0 + 36);
  if (v4 < 0)
  {
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_6:
    if ((v4 ^ v3))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

LABEL_8:
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24FE941D4()
{
  v1 = v0[9];

  v2 = v0[18];
  v4 = v0[7];
  v3 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_24FE94248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8)
{
  *(v8 + 38) = v19;
  *(v8 + 37) = a8;
  *(v8 + 36) = a7;
  v12 = sub_24FEDE694();
  *(v8 + 40) = v12;
  v13 = *(v12 - 8);
  *(v8 + 48) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 56) = swift_task_alloc();
  *(v8 + 64) = swift_task_alloc();
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  sub_24FEDE3E4();
  *(v8 + 72) = sub_24FEDE3D4();
  v16 = sub_24FEDE3C4();
  *(v8 + 80) = v16;
  *(v8 + 88) = v15;

  return MEMORY[0x2822009F8](sub_24FE94374, v16, v15);
}

uint64_t sub_24FE94374()
{
  v1 = *(v0 + 64);
  v2 = sub_24FEDE954();
  v4 = v3;
  sub_24FEDE894();
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_24FE94454;
  v6 = *(v0 + 64);

  return sub_24FE911B8(v2, v4, 0, 0, 1);
}

uint64_t sub_24FE94454()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *v1;
  v2[13] = v0;

  v8 = *(v5 + 8);
  v2[14] = v8;
  v2[15] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = v2[11];
  v10 = v2[10];
  if (v0)
  {
    v11 = sub_24FE96050;
  }

  else
  {
    v11 = sub_24FE94600;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_24FE94600()
{
  v1 = *(v0 + 56);
  *(v0 + 33) = *(v0 + 36);
  *(v0 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6440, &qword_24FEE5330);
  sub_24FEDDE34();
  sub_24FEDE894();
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_24FE9470C;
  v3 = *(v0 + 56);

  return sub_24FE911B8(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_24FE9470C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 144) = v0;

  v5(v6, v7);
  v9 = *(v2 + 88);
  v10 = *(v2 + 80);
  if (v0)
  {
    v11 = sub_24FE96054;
  }

  else
  {
    v11 = sub_24FE948B4;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_24FE948B4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 37);

  if (v2 == 1)
  {
    MEMORY[0x25305A020](*(v0 + 128));
    v3 = 0x73736563637573;
    if (*(v0 + 35) != 1)
    {
      v3 = 0x6572756C696166;
    }

    if (*(v0 + 35))
    {
      v4 = v3;
    }

    else
    {
      v4 = 1701602409;
    }

    if (*(v0 + 35))
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }

    v6 = 0x73736563637573;
    if (*(v0 + 36) != 1)
    {
      v6 = 0x6572756C696166;
    }

    if (*(v0 + 36))
    {
      v7 = v6;
    }

    else
    {
      v7 = 1701602409;
    }

    if (*(v0 + 36))
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 == v7 && v5 == v8)
    {
    }

    else
    {
      v9 = sub_24FEDE844();

      if ((v9 & 1) == 0)
      {
        goto LABEL_23;
      }
    }
  }

  v10 = *(v0 + 128);
  *(v0 + 34) = *(v0 + 38);
  sub_24FEDDE34();
LABEL_23:
  v12 = *(v0 + 56);
  v11 = *(v0 + 64);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_24FE94A30()
{
  v0 = sub_24FEDCF54();
  __swift_allocate_value_buffer(v0, qword_27F3A63E0);
  __swift_project_value_buffer(v0, qword_27F3A63E0);
  return sub_24FEDCF44();
}

uint64_t sub_24FE94AB4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x73736563637573;
  if (v2 != 1)
  {
    v3 = 0x6572756C696166;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1701602409;
  }

  if (v2)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = 0x73736563637573;
  if (*a2 != 1)
  {
    v6 = 0x6572756C696166;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1701602409;
  }

  if (*a2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24FEDE844();
  }

  return v9 & 1;
}

uint64_t sub_24FE94BB0()
{
  v1 = *v0;
  sub_24FEDE904();
  sub_24FEDE254();

  return sub_24FEDE924();
}

uint64_t sub_24FE94C4C()
{
  *v0;
  *v0;
  sub_24FEDE254();
}

uint64_t sub_24FE94CD4()
{
  v1 = *v0;
  sub_24FEDE904();
  sub_24FEDE254();

  return sub_24FEDE924();
}

uint64_t sub_24FE94D6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24FE95D80();
  *a2 = result;
  return result;
}

void sub_24FE94D9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0x73736563637573;
  if (v2 != 1)
  {
    v4 = 0x6572756C696166;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1701602409;
  }

  if (!v5)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_24FE94DF4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = 0xE90000000000006BLL;
  v5 = 0x72616D6B63656863;
  if (v3 != 1)
  {
    v5 = 0xD000000000000018;
    v4 = 0x800000024FEE9BE0;
  }

  if (*v1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x800000024FEE9C00;
  }

  if (v3)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = -1.0;
  }

  result = sub_24FEDDC54();
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = result;
  *(a1 + 24) = v8;
  *(a1 + 32) = 1;
  return result;
}

double SaveImageButton.body.getter@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63F8, &qword_24FEE5070);
  sub_24FEDDD64();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *a5 = v17;
  *(a5 + 8) = v18;
  *(a5 + 16) = v19;
  *(a5 + 24) = sub_24FE951DC;
  *(a5 + 32) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6400, &qword_24FEE5078);
  v12 = v11[10];
  *(a5 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);
  swift_storeEnumTagMultiPayload();
  v13 = v11[11];

  sub_24FE62C94(a3, a4);
  sub_24FE85C8C();
  sub_24FEDD0B4();
  v14 = v11[12];
  sub_24FEDD0B4();
  v15 = (a5 + v11[13]);
  sub_24FEDDD34();
  result = 13.0;
  *v15 = 0x402A000000000000;
  v15[1] = v18;
  return result;
}

void sub_24FE950F4(char a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63F8, &qword_24FEE5070);
  sub_24FEDDD44();
  if (!v9)
  {

    goto LABEL_5;
  }

  v8 = sub_24FEDE844();

  if (v8)
  {
LABEL_5:
    sub_24FE95210(a1, a2, a3, a4);
  }
}

void sub_24FE95210(char a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = [objc_opt_self() sharedPhotoLibrary];
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  v17 = sub_24FE95DCC;
  v18 = v9;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_24FE5CE20;
  v16 = &block_descriptor_0;
  v10 = _Block_copy(&v13);

  sub_24FE62C94(a3, a4);

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  v17 = sub_24FE95E34;
  v18 = v11;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_24FEC8F40;
  v16 = &block_descriptor_15;
  v12 = _Block_copy(&v13);

  sub_24FE62C94(a3, a4);

  [v8 performChanges:v10 completionHandler:v12];
  _Block_release(v12);
  _Block_release(v10);
}

void sub_24FE953F4()
{
  v0 = [objc_opt_self() creationRequestForAsset];
  v1 = sub_24FEDCA04();
  [v0 addResourceWithType:1 data:v1 options:0];
}

void sub_24FE95490(char a1, void *a2, char a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63B0, &qword_24FEE4E60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - v10;
  if (a1)
  {
    LOBYTE(v30) = a3;
    v31 = a4;
    v33 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63F8, &qword_24FEE5070);
    sub_24FEDDD54();
  }

  else
  {
    v33 = a3;
    v34 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63F8, &qword_24FEE5070);
    sub_24FEDDD64();
    v12 = v30;
    v13 = v31;
    v14 = v32;
    v15 = sub_24FEDE414();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    sub_24FEDE3E4();

    v16 = sub_24FEDE3D4();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    *(v17 + 16) = v16;
    *(v17 + 24) = v18;
    *(v17 + 32) = v12;
    *(v17 + 40) = v13;
    *(v17 + 48) = v14;
    *(v17 + 49) = 258;
    *(v17 + 51) = 0;
    sub_24FE8D830(0, 0, v11, &unk_24FEE5318, v17);

    sub_24FE957E8(a3, a4);
    if (qword_27F3A5B70 != -1)
    {
      swift_once();
    }

    v19 = sub_24FEDCF54();
    __swift_project_value_buffer(v19, qword_27F3A63E0);
    v20 = a2;
    v21 = sub_24FEDCF34();
    v22 = sub_24FEDE4C4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = v24;
      *v23 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        v25 = sub_24FEDE8A4();
        v27 = v26;
      }

      else
      {
        v27 = 0xED0000726F727265;
        v25 = 0x206E776F6E6B6E55;
      }

      v28 = sub_24FECC0A4(v25, v27, &v30);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_24FE50000, v21, v22, "Failed to save image to album: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x25305B320](v24, -1, -1);
      MEMORY[0x25305B320](v23, -1, -1);
    }
  }
}

uint64_t sub_24FE957E8(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63B0, &qword_24FEE4E60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v16 - v6;
  v18 = a1;
  v19 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63F8, &qword_24FEE5070);
  sub_24FEDDD64();
  v8 = v16[1];
  v9 = v16[2];
  v10 = v17;
  v11 = sub_24FEDE414();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  sub_24FEDE3E4();

  v12 = sub_24FEDE3D4();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  *(v13 + 32) = v8;
  *(v13 + 40) = v9;
  *(v13 + 48) = v10;
  *(v13 + 49) = 258;
  *(v13 + 51) = 0;
  sub_24FE8D830(0, 0, v7, &unk_24FEE5320, v13);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO_0(uint64_t a1)
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

uint64_t sub_24FE959A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_24FE959FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_24FE95AB8()
{
  result = qword_27F3A6410;
  if (!qword_27F3A6410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6410);
  }

  return result;
}

unint64_t sub_24FE95B50(void *a1)
{
  a1[1] = sub_24FE95B88();
  a1[2] = sub_24FE95BDC();
  result = sub_24FE95C30();
  a1[3] = result;
  return result;
}

unint64_t sub_24FE95B88()
{
  result = qword_27F3A6428;
  if (!qword_27F3A6428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6428);
  }

  return result;
}

unint64_t sub_24FE95BDC()
{
  result = qword_27F3A6430;
  if (!qword_27F3A6430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6430);
  }

  return result;
}

unint64_t sub_24FE95C30()
{
  result = qword_27F3A6438;
  if (!qword_27F3A6438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6438);
  }

  return result;
}

uint64_t sub_24FE95C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char a6, char *a7)
{
  v12 = *a4;
  v13 = *(a4 + 8);
  v14 = *a7;
  v15 = *a5;
  v16 = *(a4 + 16);
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_24FE7DF78;

  return sub_24FE94248(a1, a2, a3, v12, v13, v16, v15, a6);
}

uint64_t sub_24FE95D80()
{
  v0 = sub_24FEDE6F4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void sub_24FE95DCC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  sub_24FE953F4();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_5()
{
  v1 = v0[3];

  sub_24FE62CFC(v0[4], v0[5]);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_24FE95E34(char a1, void *a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  sub_24FE95490(a1, a2, *(v2 + 16), *(v2 + 24));
}

uint64_t sub_24FE95E48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 50);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24FE96048;

  return sub_24FE95C88(a1, v4, v5, v1 + 32, (v1 + 49), v6, (v1 + 51));
}

uint64_t objectdestroy_17Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 52, 7);
}

uint64_t sub_24FE95F64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 50);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24FE7DF78;

  return sub_24FE95C88(a1, v4, v5, v1 + 32, (v1 + 49), v6, (v1 + 51));
}

uint64_t ShareButton.init(viewModel:contentsToShare:shareSheetMetadata:isCodeBlock:isTable:)@<X0>(uint64_t (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v65 = a5;
  v74 = a4;
  v75 = a3;
  v68 = a1;
  v69 = a2;
  v71 = a6;
  v6 = sub_24FEDCE94();
  v73 = *(v6 - 8);
  v7 = *(v73 + 64);
  MEMORY[0x28223BE20](v6);
  v60 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F60, &unk_24FEE45B0);
  v9 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v11 = &v59 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F70, &qword_24FEE45C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F68, &qword_24FEE5350);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v66 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v59 - v20;
  MEMORY[0x28223BE20](v22);
  v72 = &v59 - v23;
  v24 = type metadata accessor for ShareButton();
  v25 = *(*(v24 - 1) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v27 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);
  swift_storeEnumTagMultiPayload();
  v28 = v24[5];
  v79 = 0x403C000000000000;
  sub_24FE85C8C();
  sub_24FEDD0B4();
  v29 = v24[6];
  sub_24FEDDC74();
  v30 = sub_24FEDDC64();

  v63 = v30;
  v64 = v29;
  *(v27 + v29) = v30;
  v62 = v27 + v24[7];
  *v62 = 0;
  v67 = v27 + v24[8];
  *v67 = 0;
  v31 = (v27 + v24[9]);
  sub_24FEDE134();
  sub_24FE9B974(&qword_27F3A5C08, MEMORY[0x277D63F60]);
  *v31 = sub_24FEDD2C4();
  v31[1] = v32;
  v33 = (v27 + v24[10]);
  if (qword_27F3A5B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  type metadata accessor for LaTeXMathTracker();
  sub_24FE9B974(&qword_27F3A5DF8, type metadata accessor for LaTeXMathTracker);

  *v33 = sub_24FEDD1B4();
  v33[1] = v34;
  v35 = v27 + v24[11];
  v76 = 0;
  sub_24FEDDD34();
  v36 = v78;
  *v35 = v77;
  *(v35 + 1) = v36;
  v37 = v69;
  *(v27 + v24[12]) = v68;
  *(v27 + v24[13]) = v37;
  v38 = v75;
  sub_24FE58B14(v75, v27 + v24[14], &qword_27F3A5F70, &qword_24FEE45C0);
  *(v27 + v24[15]) = v74 & 1;
  sub_24FE58B14(v38, v15, &qword_27F3A5F70, &qword_24FEE45C0);
  v39 = type metadata accessor for ShareSheetMetadata();
  v40 = *(v39 - 8);
  v68 = *(v40 + 48);
  v61 = v40 + 48;
  v41 = v68(v15, 1, v39);
  v69 = v39;
  if (v41 == 1)
  {
    sub_24FE58B7C(v15, &qword_27F3A5F70, &qword_24FEE45C0);
    v42 = 1;
    v43 = v72;
    v44 = v73;
  }

  else
  {
    v43 = v72;
    v44 = v73;
    (*(v73 + 16))(v72, &v15[*(v39 + 24)], v6);
    sub_24FE9BA24(v15, type metadata accessor for ShareSheetMetadata);
    v42 = 0;
  }

  v45 = *(v44 + 56);
  v45(v43, v42, 1, v6);
  sub_24FEDCE64();
  v45(v21, 0, 1, v6);
  v46 = *(v70 + 48);
  sub_24FE58B14(v43, v11, &qword_27F3A5F68, &qword_24FEE5350);
  sub_24FE58B14(v21, &v11[v46], &qword_27F3A5F68, &qword_24FEE5350);
  v47 = *(v44 + 48);
  if (v47(v11, 1, v6) == 1)
  {
    sub_24FE58B7C(v21, &qword_27F3A5F68, &qword_24FEE5350);
    sub_24FE58B7C(v43, &qword_27F3A5F68, &qword_24FEE5350);
    if (v47(&v11[v46], 1, v6) == 1)
    {
      sub_24FE58B7C(v11, &qword_27F3A5F68, &qword_24FEE5350);
LABEL_17:
      v57 = sub_24FEDDC54();

      *(v27 + v64) = v57;
      v52 = v62;
      v50 = v75;
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  v48 = v66;
  sub_24FE58B14(v11, v66, &qword_27F3A5F68, &qword_24FEE5350);
  if (v47(&v11[v46], 1, v6) == 1)
  {
    sub_24FE58B7C(v21, &qword_27F3A5F68, &qword_24FEE5350);
    sub_24FE58B7C(v72, &qword_27F3A5F68, &qword_24FEE5350);
    (*(v73 + 8))(v48, v6);
LABEL_11:
    sub_24FE58B7C(v11, &qword_27F3A5F60, &unk_24FEE45B0);
    v49 = v74;
    goto LABEL_12;
  }

  v53 = v73;
  v54 = v60;
  (*(v73 + 32))(v60, &v11[v46], v6);
  sub_24FE9B974(&qword_27F3A5FC0, MEMORY[0x277D85578]);
  v55 = sub_24FEDE194();
  v56 = *(v53 + 8);
  v56(v54, v6);
  sub_24FE58B7C(v21, &qword_27F3A5F68, &qword_24FEE5350);
  sub_24FE58B7C(v72, &qword_27F3A5F68, &qword_24FEE5350);
  v56(v48, v6);
  sub_24FE58B7C(v11, &qword_27F3A5F68, &qword_24FEE5350);
  v49 = v74;
  if (v55)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (v49)
  {
    v50 = v75;
  }

  else
  {
    v50 = v75;
    if ((v65 & 1) == 0)
    {
      v51 = v68(v75, 1, v69);
      v52 = v67;
      if (v51 == 1)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  v52 = v67;
LABEL_20:
  *v52 = 1;
LABEL_21:
  sub_24FE9B9BC(v27, v71, type metadata accessor for ShareButton);
  sub_24FE58B7C(v50, &qword_27F3A5F70, &qword_24FEE45C0);
  return sub_24FE9BA24(v27, type metadata accessor for ShareButton);
}

uint64_t type metadata accessor for ShareButton()
{
  result = qword_27F3A6540;
  if (!qword_27F3A6540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24FE96984(uint64_t a1)
{
  v2 = sub_24FEDD054();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_24FEDD314();
}

uint64_t sub_24FE96A50()
{
  v0 = sub_24FEDCF54();
  __swift_allocate_value_buffer(v0, qword_27F3A6450);
  __swift_project_value_buffer(v0, qword_27F3A6450);
  return sub_24FEDCF44();
}

uint64_t property wrapper backing initializer of ShareButton.laTeXMathTracker()
{
  type metadata accessor for LaTeXMathTracker();
  sub_24FE9B974(&qword_27F3A5DF8, type metadata accessor for LaTeXMathTracker);

  return sub_24FEDD1B4();
}

uint64_t ShareButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v164 = a1;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6468, &qword_24FEE5390);
  v131 = *(v132 - 8);
  v2 = *(v131 + 64);
  MEMORY[0x28223BE20](v132);
  v129 = &v127 - v3;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6470, &qword_24FEE5398);
  v134 = *(v135 - 8);
  v4 = *(v134 + 64);
  MEMORY[0x28223BE20](v135);
  v133 = &v127 - v5;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6478, &qword_24FEE53A0);
  v6 = *(*(v130 - 8) + 64);
  MEMORY[0x28223BE20](v130);
  v137 = &v127 - v7;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6480, &qword_24FEE53A8);
  v8 = *(*(v161 - 8) + 64);
  MEMORY[0x28223BE20](v161);
  v136 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v138 = &v127 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63B8, &qword_24FEE53B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v143 = &v127 - v14;
  v15 = sub_24FEDC774();
  v154 = *(v15 - 8);
  v155 = v15;
  v16 = *(v154 + 64);
  MEMORY[0x28223BE20](v15);
  v139 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6488, &qword_24FEE53B8);
  v18 = *(*(v159 - 8) + 64);
  MEMORY[0x28223BE20](v159);
  v160 = &v127 - v19;
  v20 = sub_24FEDD054();
  v156 = *(v20 - 8);
  v157 = v20;
  v21 = *(v156 + 64);
  MEMORY[0x28223BE20](v20);
  v128 = &v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v148 = &v127 - v24;
  v151 = type metadata accessor for MarkdownButtonStyle();
  v25 = *(*(v151 - 8) + 64);
  MEMORY[0x28223BE20](v151);
  v27 = &v127 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for ShareButton();
  v163 = *(v165 - 1);
  v28 = *(v163 + 64);
  MEMORY[0x28223BE20](v165);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6490, &qword_24FEE53C0);
  v149 = *(v150 - 8);
  v29 = *(v149 + 64);
  MEMORY[0x28223BE20](v150);
  v31 = &v127 - v30;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6498, &qword_24FEE53C8);
  v152 = *(v153 - 8);
  v32 = *(v152 + 64);
  MEMORY[0x28223BE20](v153);
  v162 = &v127 - v33;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A64A0, &qword_24FEE53D0);
  v142 = *(v144 - 8);
  v34 = *(v142 + 64);
  MEMORY[0x28223BE20](v144);
  v140 = &v127 - v35;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A64A8, &qword_24FEE53D8);
  v36 = *(*(v141 - 8) + 64);
  MEMORY[0x28223BE20](v141);
  v146 = &v127 - v37;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A64B0, &qword_24FEE53E0);
  v38 = *(*(v158 - 8) + 64);
  MEMORY[0x28223BE20](v158);
  v145 = &v127 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v147 = &v127 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A64B8, &qword_24FEE63A0);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v45 = &v127 - v44;
  v46 = sub_24FEDC9E4();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  v50 = &v127 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v1;
  sub_24FE981A0(v45);
  if ((*(v47 + 48))(v45, 1, v46) != 1)
  {
    v154 = v47;
    v85 = *(v47 + 32);
    v127 = v50;
    v155 = v46;
    v85(v50, v45, v46);
    sub_24FE9B9BC(v1, &v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShareButton);
    v86 = (*(v163 + 80) + 16) & ~*(v163 + 80);
    v87 = swift_allocObject();
    v88 = sub_24FE9BB14(&v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v87 + v86, type metadata accessor for ShareButton);
    MEMORY[0x28223BE20](v88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A64C8, &qword_24FEE53F8);
    sub_24FE9A548();
    sub_24FEDDD84();
    *&v168 = 0x402A000000000000;
    sub_24FE85C8C();
    sub_24FEDD0B4();
    v89 = sub_24FE58928(&qword_27F3A64F8, &qword_27F3A6490, &qword_24FEE53C0);
    v90 = sub_24FE9B974(&qword_27F3A6330, type metadata accessor for MarkdownButtonStyle);
    v91 = v162;
    v92 = v150;
    v93 = v151;
    sub_24FEDDAC4();
    sub_24FE9BA24(v27, type metadata accessor for MarkdownButtonStyle);
    (*(v149 + 8))(v31, v92);
    v94 = v165;
    v95 = v1 + v165[11];
    v96 = *v95;
    v97 = *(v95 + 8);
    v166 = v96;
    v167 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6500, &qword_24FEE5418);
    sub_24FEDDD64();
    *&v168 = v92;
    *(&v168 + 1) = v93;
    *&v169 = v89;
    *(&v169 + 1) = v90;
    swift_getOpaqueTypeConformance2();
    v98 = v153;
    v99 = v140;
    v100 = v127;
    sub_24FEDDB44();

    (*(v152 + 8))(v91, v98);
    KeyPath = swift_getKeyPath();
    v102 = v94;
    v103 = v100;
    if (*(v1 + v94[7]) == 1)
    {
      v105 = v156;
      v104 = v157;
      v106 = v148;
      (*(v156 + 104))(v148, *MEMORY[0x277CDF3D0], v157);
    }

    else
    {
      v106 = v148;
      sub_24FE9A750(v148);
      v105 = v156;
      v104 = v157;
    }

    v107 = v146;
    v108 = &v146[*(v141 + 36)];
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6338, &qword_24FEE5420);
    (*(v105 + 32))(v108 + *(v109 + 28), v106, v104);
    *v108 = KeyPath;
    (*(v142 + 32))(v107, v99, v144);
    v110 = v102[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
    sub_24FEDD0C4();
    sub_24FEDD0C4();
    sub_24FEDDF34();
    sub_24FEDD0F4();
    v111 = v145;
    sub_24FE6315C(v107, v145, &qword_27F3A64A8, &qword_24FEE53D8);
    v112 = (v111 + *(v158 + 36));
    v113 = v169;
    *v112 = v168;
    v112[1] = v113;
    v112[2] = v170;
    v114 = v147;
    sub_24FE6315C(v111, v147, &qword_27F3A64B0, &qword_24FEE53E0);
    sub_24FE58B14(v114, v160, &qword_27F3A64B0, &qword_24FEE53E0);
    swift_storeEnumTagMultiPayload();
    sub_24FE9A950(&qword_27F3A6518, &qword_27F3A64B0, &qword_24FEE53E0, sub_24FE9A9D4);
    sub_24FE9A950(&qword_27F3A6528, &qword_27F3A6480, &qword_24FEE53A8, sub_24FE9AB88);
    v115 = v164;
    sub_24FEDD5F4();
    sub_24FE58B7C(v114, &qword_27F3A64B0, &qword_24FEE53E0);
    (*(v154 + 8))(v103, v155);
    goto LABEL_14;
  }

  v52 = v163;
  v53 = &v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = v31;
  sub_24FE58B7C(v45, &qword_27F3A64B8, &qword_24FEE63A0);
  v54 = *(v1 + v165[13]);
  if (*(v54 + 16))
  {
    v55 = v1;
    v56 = v165;
    sub_24FE72D1C(v54 + 32, &v168);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63C0, &qword_24FEE4530);
    v57 = v143;
    v58 = v155;
    v59 = swift_dynamicCast();
    v60 = v154;
    (*(v154 + 56))(v57, v59 ^ 1u, 1, v58);
    if ((*(v60 + 48))(v57, 1, v58) != 1)
    {
      (*(v60 + 32))(v139, v57, v58);
      sub_24FE9B9BC(v51, v53, type metadata accessor for ShareButton);
      v61 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v62 = swift_allocObject();
      v63 = sub_24FE9BB14(v53, v62 + v61, type metadata accessor for ShareButton);
      MEMORY[0x28223BE20](v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A64C8, &qword_24FEE53F8);
      sub_24FE9A548();
      v64 = v148;
      sub_24FEDDD84();
      *&v168 = 0x402A000000000000;
      sub_24FE85C8C();
      sub_24FEDD0B4();
      v65 = sub_24FE58928(&qword_27F3A64F8, &qword_27F3A6490, &qword_24FEE53C0);
      v66 = v56;
      v67 = sub_24FE9B974(&qword_27F3A6330, type metadata accessor for MarkdownButtonStyle);
      v68 = v150;
      v69 = v151;
      sub_24FEDDAC4();
      sub_24FE9BA24(v27, type metadata accessor for MarkdownButtonStyle);
      (*(v149 + 8))(v64, v68);
      v70 = v55 + v66[11];
      v71 = *v70;
      v72 = *(v70 + 8);
      v166 = v71;
      v167 = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6500, &qword_24FEE5418);
      sub_24FEDDD64();
      sub_24FE992B0();
      v74 = v73;
      *(&v169 + 1) = sub_24FE9A6B8();
      *&v168 = v74;
      v75 = v129;
      sub_24FEDD0E4();
      *&v168 = v68;
      *(&v168 + 1) = v69;
      *&v169 = v65;
      *(&v169 + 1) = v67;
      swift_getOpaqueTypeConformance2();
      sub_24FE9B974(&qword_27F3A6510, MEMORY[0x277CC8C40]);
      v76 = v155;
      v77 = v153;
      v78 = v133;
      v79 = v162;
      sub_24FEDDB34();

      (*(v131 + 8))(v75, v132);
      (*(v152 + 8))(v79, v77);
      v80 = swift_getKeyPath();
      v81 = v165;
      if (*(v55 + v165[7]) == 1)
      {
        v83 = v156;
        v82 = v157;
        v84 = v128;
        (*(v156 + 104))(v128, *MEMORY[0x277CDF3D0], v157);
      }

      else
      {
        v84 = v128;
        sub_24FE9A750(v128);
        v83 = v156;
        v82 = v157;
      }

      v117 = v137;
      v118 = &v137[*(v130 + 36)];
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6338, &qword_24FEE5420);
      (*(v83 + 32))(v118 + *(v119 + 28), v84, v82);
      *v118 = v80;
      (*(v134 + 32))(v117, v78, v135);
      v120 = v81[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
      sub_24FEDD0C4();
      sub_24FEDD0C4();
      sub_24FEDDF34();
      sub_24FEDD0F4();
      v121 = v136;
      sub_24FE6315C(v117, v136, &qword_27F3A6478, &qword_24FEE53A0);
      v122 = (v121 + *(v161 + 36));
      v123 = v169;
      *v122 = v168;
      v122[1] = v123;
      v122[2] = v170;
      v124 = v138;
      sub_24FE6315C(v121, v138, &qword_27F3A6480, &qword_24FEE53A8);
      sub_24FE58B14(v124, v160, &qword_27F3A6480, &qword_24FEE53A8);
      swift_storeEnumTagMultiPayload();
      sub_24FE9A950(&qword_27F3A6518, &qword_27F3A64B0, &qword_24FEE53E0, sub_24FE9A9D4);
      sub_24FE9A950(&qword_27F3A6528, &qword_27F3A6480, &qword_24FEE53A8, sub_24FE9AB88);
      v115 = v164;
      sub_24FEDD5F4();
      sub_24FE58B7C(v124, &qword_27F3A6480, &qword_24FEE53A8);
      (*(v154 + 8))(v139, v76);
LABEL_14:
      v116 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v57 = v143;
    (*(v154 + 56))(v143, 1, 1, v155);
  }

  sub_24FE58B7C(v57, &qword_27F3A63B8, &qword_24FEE53B0);
  v116 = 1;
  v115 = v164;
LABEL_15:
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A64C0, &unk_24FEE53E8);
  return (*(*(v125 - 8) + 56))(v115, v116, 1, v125);
}

uint64_t sub_24FE981A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDC9E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v53 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v56 = &v51 - v8;
  MEMORY[0x28223BE20](v9);
  v52 = &v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F70, &qword_24FEE45C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v51 - v13;
  v15 = type metadata accessor for ShareSheetMetadata();
  v54 = *(v15 - 8);
  v16 = *(v54 + 64);
  MEMORY[0x28223BE20](v15);
  v55 = (&v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A64B8, &qword_24FEE63A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v51 - v20;
  v22 = type metadata accessor for ShareButton();
  v23 = v22[13];
  v58 = v1;
  v24 = *&v1[v23];
  if (*(v24 + 16))
  {
    sub_24FE72D1C(v24 + 32, &v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63C0, &qword_24FEE4530);
    v25 = swift_dynamicCast();
    v26 = *(v4 + 56);
    (v26)(v21, v25 ^ 1u, 1, v3);
    if ((*(v4 + 48))(v21, 1, v3) != 1)
    {
      (*(v4 + 32))(a1, v21, v3);
      return (v26)(a1, 0, 1, v3);
    }

    v57 = v4;
  }

  else
  {
    v57 = v4;
    v26 = *(v4 + 56);
    (v26)(v21, 1, 1, v3);
  }

  v27 = v3;
  sub_24FE58B7C(v21, &qword_27F3A64B8, &qword_24FEE63A0);
  if (*(v24 + 16) && (sub_24FE72D1C(v24 + 32, &v61), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63C0, &qword_24FEE4530), (swift_dynamicCast() & 1) != 0))
  {
    v28 = v59;
    v29 = v60;
    sub_24FE58B14(&v58[v22[14]], v14, &qword_27F3A5F70, &qword_24FEE45C0);
    if ((*(v54 + 48))(v14, 1, v15) != 1)
    {
      v58 = v26;
      v54 = a1;
      v40 = v55;
      sub_24FE9BB14(v14, v55, type metadata accessor for ShareSheetMetadata);
      v41 = v29;
      v42 = v28;
      v44 = *v40;
      v43 = v40[1];
      v45 = [objc_opt_self() defaultManager];
      v46 = [v45 temporaryDirectory];

      v47 = v56;
      sub_24FEDC9B4();

      v48 = v52;
      sub_24FEDC984();
      v49 = v57;
      (*(v57 + 8))(v47, v27);
      v51 = v42;
      v53 = v41;
      sub_24FEDCA24();
      v50 = v54;
      (*(v49 + 32))(v54, v48, v27);
      (v58)(v50, 0, 1, v27);
      sub_24FE62CFC(v51, v53);
      return sub_24FE9BA24(v55, type metadata accessor for ShareSheetMetadata);
    }

    v30 = a1;
    sub_24FE62CFC(v28, v29);
    sub_24FE58B7C(v14, &qword_27F3A5F70, &qword_24FEE45C0);
  }

  else
  {
    v30 = a1;
  }

  v31 = *&v58[v22[10] + 8];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  v32 = v57;
  if (v61 != 1)
  {
    return (v26)(v30, 1, 1, v27);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24FEDCFE4();

  v33 = v62;
  if (v62 >> 60 == 15)
  {
    return (v26)(v30, 1, 1, v27);
  }

  v58 = v26;
  v35 = v61;
  v36 = [objc_opt_self() defaultManager];
  v37 = [v36 temporaryDirectory];

  v38 = v56;
  sub_24FEDC9B4();

  v39 = v53;
  sub_24FEDC984();
  (*(v32 + 8))(v38, v27);
  sub_24FEDCA24();
  (*(v32 + 32))(v30, v39, v27);
  (v58)(v30, 0, 1, v27);
  return sub_24FE62CE8(v35, v33);
}

void sub_24FE98BF0()
{
  v1 = type metadata accessor for ShareButton();
  v2 = v1 - 8;
  v36[0] = *(v1 - 8);
  v3 = *(v36[0] + 64);
  MEMORY[0x28223BE20](v1);
  v36[1] = v4;
  v38 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6588, &qword_24FEE54A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v36 - v7;
  v9 = sub_24FEDE014();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24FEDCAA4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v2 + 44);
  v37 = v0;
  v20 = v0 + v19;
  v21 = *(v0 + v19);
  if (v21)
  {
    v22 = v21;
    sub_24FEDE0E4();

    (*(v15 + 104))(v18, *MEMORY[0x277D63760], v14);
    (*(v10 + 104))(v13, *MEMORY[0x277D63BE0], v9);
    sub_24FEDDFE4();
    v23 = sub_24FEDDFF4();
    (*(*(v23 - 8) + 56))(v8, 0, 1, v23);
    v24 = objc_allocWithZone(sub_24FEDE084());
    v25 = sub_24FEDE074();
    v26 = v22;
    sub_24FEDE114();

    if (qword_27F3A5B78 != -1)
    {
      swift_once();
    }

    v27 = sub_24FEDCF54();
    __swift_project_value_buffer(v27, qword_27F3A6450);
    v28 = sub_24FEDCF34();
    v29 = sub_24FEDE4B4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_24FE50000, v28, v29, "RFInteractionPerformed: SHARE_BUTTON_TAPPED", v30, 2u);
      MEMORY[0x25305B320](v30, -1, -1);
    }

    v31 = v38;
    sub_24FE9B9BC(v37, v38, type metadata accessor for ShareButton);
    v32 = (*(v36[0] + 80) + 16) & ~*(v36[0] + 80);
    v33 = swift_allocObject();
    sub_24FE9BB14(v31, v33 + v32, type metadata accessor for ShareButton);
    v34 = v26;
    sub_24FEDE104();
  }

  else
  {
    v35 = *(v20 + 8);
    sub_24FEDE134();
    sub_24FE9B974(&qword_27F3A5C08, MEMORY[0x277D63F60]);
    sub_24FEDD2B4();
    __break(1u);
  }
}

double sub_24FE990D4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24FEDDF34();
  v6 = v5;
  sub_24FE996B8(v1, &v35);
  v22 = v35;
  v7 = v36;
  v8 = type metadata accessor for ShareButton();
  v9 = *(v8 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  sub_24FEDD0C4();
  sub_24FEDD0C4();
  sub_24FEDDF34();
  sub_24FEDD0F4();
  v10 = sub_24FEDDF34();
  v12 = v11;
  v13 = sub_24FEDDF34();
  v15 = v14;
  v16 = sub_24FEDDCB4();
  v17 = *(v2 + *(v8 + 24));
  *&v27 = v13;
  *(&v27 + 1) = v15;
  *&v28[8] = xmmword_24FEE3D70;
  *v28 = v16;
  *&v28[24] = v17;
  *&v29 = v10;
  *(&v29 + 1) = v12;
  v30[0] = v13;
  v35 = v27;
  v36 = *v28;
  v37 = *&v28[16];
  v38 = v29;
  v30[1] = v15;
  v30[2] = v16;
  v31 = xmmword_24FEE3D70;
  v32 = v17;
  v33 = v10;
  v34 = v12;

  sub_24FE58B14(&v27, v23, &qword_27F3A64F0, &qword_24FEE5408);
  sub_24FE58B7C(v30, &qword_27F3A64F0, &qword_24FEE5408);
  *(a1 + 16) = v22;
  v18 = v25;
  *(a1 + 40) = v24;
  *(a1 + 56) = v18;
  *(a1 + 72) = v26;
  v19 = v36;
  *(a1 + 88) = v35;
  *(a1 + 104) = v19;
  result = *&v37;
  v21 = v38;
  *(a1 + 120) = v37;
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 32) = v7;
  *(a1 + 136) = v21;
  *(a1 + 152) = 256;
  return result;
}

void sub_24FE992B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6130, &unk_24FEE4A00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v27[-v3 - 8];
  v5 = sub_24FEDC5A4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63B8, &qword_24FEE53B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27[-v12 - 8];
  v14 = sub_24FEDC774();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v19 = [objc_allocWithZone(MEMORY[0x277CD46C8]) init];
  v20 = *(v0 + *(type metadata accessor for ShareButton() + 52));
  if (!*(v20 + 16))
  {
    (*(v15 + 56))(v13, 1, 1, v14);
    goto LABEL_6;
  }

  sub_24FE72D1C(v20 + 32, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A63C0, &qword_24FEE4530);
  v21 = swift_dynamicCast();
  (*(v15 + 56))(v13, v21 ^ 1u, 1, v14);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
LABEL_6:
    sub_24FE58B7C(v13, &qword_27F3A63B8, &qword_24FEE53B0);
    return;
  }

  (*(v15 + 32))(v18, v13, v14);
  sub_24FEDC574();
  sub_24FEAE034(v4);
  (*(v6 + 8))(v9, v5);
  sub_24FEDE224();
  v22 = sub_24FEDE1C4();

  [v19 setTitle_];

  v23 = sub_24FEDE1C4();
  v24 = [objc_opt_self() systemImageNamed_];

  if (v24)
  {
    v25 = [objc_allocWithZone(MEMORY[0x277CD46B0]) initWithPlatformImage_];

    [v19 setIcon_];
    (*(v15 + 8))(v18, v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24FE996B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24FEDD054();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = type metadata accessor for ShareButton();
  if (*(a1 + *(v12 + 28)))
  {
    sub_24FEDDC34();
    v13 = sub_24FEDDC64();

    v14 = 0;
    v15 = 0;
  }

  else
  {
    v16 = v12;
    sub_24FE9A750(v11);
    (*(v5 + 104))(v8, *MEMORY[0x277CDF3D0], v4);
    v17 = sub_24FEDD044();
    v18 = *(v5 + 8);
    v18(v8, v4);
    v18(v11, v4);
    if ((v17 & 1) != 0 && *(a1 + *(v16 + 32)) == 1)
    {
      sub_24FEDDC54();
      v14 = sub_24FEDDC64();
    }

    else
    {
      v14 = 0;
    }

    sub_24FEDDC74();
    v15 = sub_24FEDDC64();

    v13 = 0;
  }

  sub_24FE91EF4(v14, v15);

  sub_24FE91F34(v14, v15);

  *a2 = v14;
  a2[1] = v15;
  a2[2] = v13;

  return sub_24FE91F34(v14, v15);
}

uint64_t sub_24FE99910()
{
  v1 = type metadata accessor for DocumentView();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6590, &qword_24FEE54B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v54 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6598, &qword_24FEE54B8);
  v9 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v59 = &v54 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A65A0, &qword_24FEE54C0);
  v11 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v58 = &v54 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A65A8, &qword_24FEE54C8);
  v13 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v15 = &v54 - v14;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A65B0, &qword_24FEE54D0);
  v16 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v60 = &v54 - v17;
  v18 = type metadata accessor for ShareButton();
  v19 = *(v0 + *(v18 + 40) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v61 = v19;
  sub_24FEDCFE4();

  if (v63 == 1 && *(v0 + *(v18 + 48)))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24FEDCFE4();

    if (*(&v63 + 1) >> 60 != 15)
    {
      sub_24FE62CE8(v63, *(&v63 + 1));
    }

    v21 = qword_27F3A5B88;

    if (v21 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    type metadata accessor for LaTeXMathTracker();
    sub_24FE9B974(&qword_27F3A5DF8, type metadata accessor for LaTeXMathTracker);

    *(v4 + 2) = sub_24FEDD1B4();
    *(v4 + 3) = v22;
    v23 = *(v1 + 36);
    *&v63 = 0x4040800000000000;
    sub_24FE85C8C();
    sub_24FEDD0B4();
    type metadata accessor for DocumentViewModel();
    sub_24FE9B974(&qword_27F3A5DF0, type metadata accessor for DocumentViewModel);

    *v4 = sub_24FEDD1B4();
    *(v4 + 1) = v24;
    *(v4 + 6) = 0;
    *(v4 + 7) = 0;
    *(v4 + 4) = MEMORY[0x277D84F90];
    v4[40] = 0;
    sub_24FE82880();

    LOBYTE(v23) = sub_24FEDD744();
    sub_24FE9B9BC(v4, v8, type metadata accessor for DocumentView);
    v25 = &v8[*(v5 + 36)];
    *v25 = v23;
    *(v25 + 8) = 0u;
    *(v25 + 24) = 0u;
    v25[40] = 1;
    sub_24FE9BA24(v4, type metadata accessor for DocumentView);
    sub_24FEDDF34();
    sub_24FEDD294();
    v26 = v59;
    sub_24FE6315C(v8, v59, &qword_27F3A6590, &qword_24FEE54B0);
    v27 = (v26 + *(v54 + 36));
    v28 = v68;
    v27[4] = v67;
    v27[5] = v28;
    v27[6] = v69;
    v29 = v64;
    *v27 = v63;
    v27[1] = v29;
    v30 = v66;
    v27[2] = v65;
    v27[3] = v30;
    KeyPath = swift_getKeyPath();
    v32 = v58;
    v33 = &v58[*(v55 + 36)];
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6338, &qword_24FEE5420) + 28);
    v35 = *MEMORY[0x277CDF3D0];
    v36 = sub_24FEDD054();
    (*(*(v36 - 8) + 104))(v33 + v34, v35, v36);
    *v33 = KeyPath;
    sub_24FE6315C(v26, v32, &qword_27F3A6598, &qword_24FEE54B8);
    v37 = sub_24FEDDC54();
    LOBYTE(v35) = sub_24FEDD744();
    sub_24FE6315C(v32, v15, &qword_27F3A65A0, &qword_24FEE54C0);
    v38 = &v15[*(v57 + 36)];
    *v38 = v37;
    v38[8] = v35;
    v39 = sub_24FEDD264();
    LOBYTE(v35) = sub_24FEDD744();
    v40 = v60;
    sub_24FE6315C(v15, v60, &qword_27F3A65A8, &qword_24FEE54C8);
    v41 = v40 + *(v56 + 36);
    *v41 = v39;
    *(v41 + 8) = v35;
    v42 = sub_24FE9A210();
    if (v42)
    {
      v43 = v42;

      v44 = UIImagePNGRepresentation(v43);
      if (v44)
      {
        v45 = v44;
        v46 = sub_24FEDCA14();
        v48 = v47;
      }

      else
      {
        v46 = 0;
        v48 = 0xF000000000000000;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v62[0] = v46;
      v62[1] = v48;
      sub_24FE62C80(v46, v48);
      sub_24FEDCFF4();

      sub_24FE62CE8(v46, v48);
    }

    else
    {
      if (qword_27F3A5B78 != -1)
      {
        swift_once();
      }

      v49 = sub_24FEDCF54();
      __swift_project_value_buffer(v49, qword_27F3A6450);
      v50 = sub_24FEDCF34();
      v51 = sub_24FEDE4C4();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v62[0] = v53;
        *v52 = 136315394;
        *(v52 + 4) = sub_24FECC0A4(0x7475426572616853, 0xEB000000006E6F74, v62);
        *(v52 + 12) = 2080;
        *(v52 + 14) = sub_24FECC0A4(0xD000000000000019, 0x800000024FEE9CE0, v62);
        _os_log_impl(&dword_24FE50000, v50, v51, "%s %s could not render snapshot of DocumentView", v52, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25305B320](v53, -1, -1);
        MEMORY[0x25305B320](v52, -1, -1);

        return sub_24FE58B7C(v40, &qword_27F3A65B0, &qword_24FEE54D0);
      }
    }

    return sub_24FE58B7C(v40, &qword_27F3A65B0, &qword_24FEE54D0);
  }

  return result;
}

id sub_24FE9A210()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A65B0, &qword_24FEE54D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_24FE58B14(v0, aBlock - v3, &qword_27F3A65B0, &qword_24FEE54D0);
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A65B8, &unk_24FEE5568));
  isEscapingClosureAtFileLocation = sub_24FEDD534();
  v6 = [isEscapingClosureAtFileLocation view];
  if (!v6)
  {
    goto LABEL_5;
  }

  result = [isEscapingClosureAtFileLocation view];
  if (result)
  {
    v8 = result;
    [result intrinsicContentSize];
    v10 = v9;
    v12 = v11;

    v13 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
    [v6 setBounds_];
    v14 = swift_allocObject();
    *(v14 + 16) = v6;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_24FE9BABC;
    *(v15 + 24) = v14;
    aBlock[4] = sub_24FE9BAD4;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24FE9A704;
    aBlock[3] = &block_descriptor_1;
    v16 = _Block_copy(aBlock);
    v17 = v6;

    v6 = [v13 imageWithActions_];

    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v6;
    }

    __break(1u);
LABEL_5:

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_24FE9A4C0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    sub_24FE99910();
    v3 = (a2 + *(type metadata accessor for ShareButton() + 44));
    v4 = *v3;
    v5 = *(v3 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6500, &qword_24FEE5418);
    return sub_24FEDDD54();
  }

  return result;
}

unint64_t sub_24FE9A548()
{
  result = qword_27F3A64D0;
  if (!qword_27F3A64D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A64C8, &qword_24FEE53F8);
    sub_24FE9A600();
    sub_24FE58928(&qword_27F3A6328, &qword_27F3A6308, &qword_24FEE5410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A64D0);
  }

  return result;
}

unint64_t sub_24FE9A600()
{
  result = qword_27F3A64D8;
  if (!qword_27F3A64D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A64E0, &qword_24FEE5400);
    sub_24FE91988();
    sub_24FE58928(&qword_27F3A64E8, &qword_27F3A64F0, &qword_24FEE5408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A64D8);
  }

  return result;
}

unint64_t sub_24FE9A6B8()
{
  result = qword_27F3A6508;
  if (!qword_27F3A6508)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F3A6508);
  }

  return result;
}

void sub_24FE9A704(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_24FE9A750@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24FEDD3E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_24FE58B14(v2, &v17 - v11, &qword_27F3A5C00, &unk_24FEE3E00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_24FEDD054();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_24FEDE4D4();
    v16 = sub_24FEDD714();
    sub_24FEDCF14();

    sub_24FEDD3D4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_24FE9A950(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24FE9A9D4()
{
  result = qword_27F3A6520;
  if (!qword_27F3A6520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A64A8, &qword_24FEE53D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6498, &qword_24FEE53C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6490, &qword_24FEE53C0);
    type metadata accessor for MarkdownButtonStyle();
    sub_24FE58928(&qword_27F3A64F8, &qword_27F3A6490, &qword_24FEE53C0);
    sub_24FE9B974(&qword_27F3A6330, type metadata accessor for MarkdownButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24FE58928(&qword_27F3A6340, &qword_27F3A6338, &qword_24FEE5420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6520);
  }

  return result;
}

unint64_t sub_24FE9AB88()
{
  result = qword_27F3A6530;
  if (!qword_27F3A6530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6478, &qword_24FEE53A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6498, &qword_24FEE53C8);
    sub_24FEDC774();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6490, &qword_24FEE53C0);
    type metadata accessor for MarkdownButtonStyle();
    sub_24FE58928(&qword_27F3A64F8, &qword_27F3A6490, &qword_24FEE53C0);
    sub_24FE9B974(&qword_27F3A6330, type metadata accessor for MarkdownButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_24FE9B974(&qword_27F3A6510, MEMORY[0x277CC8C40]);
    swift_getOpaqueTypeConformance2();
    sub_24FE58928(&qword_27F3A6340, &qword_27F3A6338, &qword_24FEE5420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6530);
  }

  return result;
}

void sub_24FE9ADA4()
{
  v1 = *(type metadata accessor for ShareButton() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_24FE98BF0();
}

double sub_24FE9AE00@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_24FE990D4(v9);
  v4 = v9[7];
  a1[6] = v9[6];
  a1[7] = v4;
  a1[8] = v10[0];
  *(a1 + 138) = *(v10 + 10);
  v5 = v9[3];
  a1[2] = v9[2];
  a1[3] = v5;
  v6 = v9[5];
  a1[4] = v9[4];
  a1[5] = v6;
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  a1[1] = v8;
  return result;
}

uint64_t sub_24FE9AE94(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A6068, qword_24FEE4930);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
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
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F70, &qword_24FEE45C0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[14];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24FE9B040(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A6068, qword_24FEE4930);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
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
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5F70, &qword_24FEE45C0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[14];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_24FE9B1D8()
{
  sub_24FE9B4D8(319, &qword_27F3A6090, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24FE86B40();
    if (v1 <= 0x3F)
    {
      sub_24FE9B390();
      if (v2 <= 0x3F)
      {
        sub_24FE86A48();
        if (v3 <= 0x3F)
        {
          sub_24FE9B424();
          if (v4 <= 0x3F)
          {
            sub_24FE9B4D8(319, &qword_27F3A6560, type metadata accessor for DocumentViewModel, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_24FE9B474();
              if (v6 <= 0x3F)
              {
                sub_24FE9B4D8(319, &qword_27F3A6568, type metadata accessor for ShareSheetMetadata, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
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

void sub_24FE9B390()
{
  if (!qword_27F3A6550)
  {
    sub_24FEDE134();
    sub_24FE9B974(&qword_27F3A5C08, MEMORY[0x277D63F60]);
    v0 = sub_24FEDD2D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A6550);
    }
  }
}

void sub_24FE9B424()
{
  if (!qword_27F3A6558)
  {
    v0 = sub_24FEDDD74();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A6558);
    }
  }
}

void sub_24FE9B474()
{
  if (!qword_27F3A5EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A63C0, &qword_24FEE4530);
    v0 = sub_24FEDE3A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A5EB8);
    }
  }
}

void sub_24FE9B4D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24FE9B540()
{
  result = qword_27F3A6570;
  if (!qword_27F3A6570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6578, &qword_24FEE54A0);
    sub_24FE9B5C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6570);
  }

  return result;
}

unint64_t sub_24FE9B5C4()
{
  result = qword_27F3A6580;
  if (!qword_27F3A6580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A64C0, &unk_24FEE53E8);
    sub_24FE9A950(&qword_27F3A6518, &qword_27F3A64B0, &qword_24FEE53E0, sub_24FE9A9D4);
    sub_24FE9A950(&qword_27F3A6528, &qword_27F3A6480, &qword_24FEE53A8, sub_24FE9AB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6580);
  }

  return result;
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for ShareButton();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5C00, &unk_24FEE3E00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24FEDD054();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  (*(*(v9 - 8) + 8))(&v5[v8], v9);
  v10 = *&v5[v1[6]];

  v11 = *&v5[v1[10] + 8];

  v12 = *&v5[v1[11] + 8];

  v13 = *&v5[v1[12]];

  v14 = *&v5[v1[13]];

  v15 = &v5[v1[14]];
  v16 = type metadata accessor for ShareSheetMetadata();
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v17 = *(v15 + 1);

    v18 = *(v15 + 3);

    v19 = *(v16 + 24);
    v20 = sub_24FEDCE94();
    (*(*(v20 - 8) + 8))(&v15[v19], v20);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24FE9B8F4(uint64_t a1)
{
  v3 = *(type metadata accessor for ShareButton() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24FE9A4C0(a1, v4);
}

uint64_t sub_24FE9B974(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FE9B9BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24FE9BA24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24FE9BA84()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24FE9BAD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24FE9BB14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t DocumentCodeBlockElement.init(id:text:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24FEDCA64();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for DocumentCodeBlockElement() + 20);
  v8 = sub_24FEDC774();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t type metadata accessor for DocumentCodeBlockElement()
{
  result = qword_27F3A65F8;
  if (!qword_27F3A65F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DocumentCodeBlockElement.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDCA64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DocumentCodeBlockElement.text.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DocumentCodeBlockElement() + 20);
  v4 = sub_24FEDC774();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DocumentCodeBlockElement.makeView()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DocumentCodeBlockElement() + 20);
  v4 = sub_24FEDC774();
  (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
  v5 = type metadata accessor for DocumentCodeBlockView();
  __asm { FMOV            V0.2D, #20.0 }

  *(a1 + v5[5]) = _Q0;
  *(a1 + v5[6]) = 0x4030000000000000;
  v11 = v5[7];
  sub_24FE85C8C();
  sub_24FEDD0B4();
  v12 = v5[8];
  return sub_24FEDD0B4();
}

uint64_t DocumentCodeBlockElement.append(_:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DocumentCodeBlockElement();
  a1[3] = v2;
  a1[4] = sub_24FE9C1D8(&qword_27F3A65C8, type metadata accessor for DocumentCodeBlockElement);
  __swift_allocate_boxed_opaque_existential_1(a1);
  _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
  v3 = *(v2 + 20);
  return sub_24FEDC614();
}

uint64_t static DocumentCodeBlockElement.__derived_struct_equals(_:_:)()
{
  if ((_s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v0 = *(type metadata accessor for DocumentCodeBlockElement() + 20);

  return sub_24FEDC684();
}

uint64_t sub_24FE9BF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_24FEDC774();
  (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
  v6 = type metadata accessor for DocumentCodeBlockView();
  __asm { FMOV            V0.2D, #20.0 }

  *(a2 + v6[5]) = _Q0;
  *(a2 + v6[6]) = 0x4030000000000000;
  v12 = v6[7];
  sub_24FE85C8C();
  sub_24FEDD0B4();
  v13 = v6[8];
  return sub_24FEDD0B4();
}

uint64_t sub_24FE9C060(uint64_t a1)
{
  result = sub_24FE9C1D8(&qword_27F3A65D0, type metadata accessor for DocumentCodeBlockElement);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24FE9C10C(uint64_t a1)
{
  *(a1 + 8) = sub_24FE9C1D8(&qword_27F3A65E0, type metadata accessor for DocumentCodeBlockElement);
  result = sub_24FE9C1D8(&unk_27F3A65E8, type metadata accessor for DocumentCodeBlockElement);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24FE9C1D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FE9C234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDCA64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_24FEDC774();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24FE9C338(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24FEDCA64();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_24FEDC774();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

double DocumentCodeBlockView.topPadding(previousElement:)(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return *(v1 + *(type metadata accessor for DocumentCodeBlockView() + 24));
  }

  else
  {
    return 0.0;
  }
}

uint64_t type metadata accessor for DocumentCodeBlockView()
{
  result = qword_27F3A6628;
  if (!qword_27F3A6628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DocumentCodeBlockView.body.getter@<X0>(char *a1@<X8>)
{
  *a1 = sub_24FEDDF14();
  *(a1 + 1) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6610, &qword_24FEE5660);
  sub_24FE9C5C4(v1, &a1[*(v4 + 44)]);
  v5 = sub_24FEDD734();
  v6 = -*(v1 + *(type metadata accessor for DocumentCodeBlockView() + 24));
  sub_24FEDD014();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A6618, &qword_24FEE5668);
  v16 = &a1[*(result + 36)];
  *v16 = v5;
  *(v16 + 1) = v8;
  *(v16 + 2) = v10;
  *(v16 + 3) = v12;
  *(v16 + 4) = v14;
  v16[40] = 0;
  return result;
}

uint64_t sub_24FE9C5C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v129 = a2;
  v3 = sub_24FEDC774();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6658, &qword_24FEE5720);
  v9 = *(v8 - 8);
  v112 = v8 - 8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v110 = &v107 - v11;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6660, &qword_24FEE5728);
  v12 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v115 = &v107 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6668, &qword_24FEE5730);
  v14 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  v117 = &v107 - v15;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6670, &qword_24FEE5738);
  v16 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v119 = &v107 - v17;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6678, &unk_24FEE5740);
  v18 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118);
  v128 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v122 = &v107 - v21;
  MEMORY[0x28223BE20](v22);
  v127 = &v107 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6680, &qword_24FEE8A80);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v107 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6688, &unk_24FEE5750);
  v123 = *(v28 - 8);
  v124 = v28;
  v29 = *(v123 + 64);
  MEMORY[0x28223BE20](v28);
  v121 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v107 - v32;
  v34 = type metadata accessor for DocumentCodeBlockView();
  v108 = a1;
  v109 = v34;
  v35 = (a1 + *(v34 + 20));
  v36 = *v35;
  v37 = v35[1];
  v38 = *(sub_24FEDD284() + 20);
  v39 = *MEMORY[0x277CE0118];
  v40 = sub_24FEDD4E4();
  (*(*(v40 - 8) + 104))(&v27[v38], v39, v40);
  *v27 = v36;
  *(v27 + 1) = v37;
  *&v27[*(v24 + 36)] = sub_24FEDD644();
  sub_24FE9D4EC();
  v120 = v33;
  sub_24FEDDA54();
  sub_24FE58B7C(v27, &qword_27F3A6680, &qword_24FEE8A80);
  v41 = *(v4 + 16);
  v125 = v4 + 16;
  v126 = v3;
  v111 = v41;
  v41(v7, a1, v3);
  v42 = sub_24FEDD9E4();
  v44 = v43;
  LOBYTE(a1) = v45;
  type metadata accessor for MarkdownFont();
  swift_initStaticObject();
  sub_24FE82000(v146);
  v158 = v146[0];

  sub_24FE8A8D0(&v158);
  v157 = v146[1];
  sub_24FE8A8D0(&v157);
  v156 = v146[2];
  sub_24FE8A8D0(&v156);
  v155 = v146[3];
  sub_24FE8A8D0(&v155);
  v154 = v146[4];
  sub_24FE8A8D0(&v154);

  v46 = sub_24FEDD994();
  v48 = v47;
  LOBYTE(v38) = v49;
  v51 = v50;

  v52 = a1 & 1;
  v53 = v108;
  sub_24FE56B94(v42, v44, v52);

  *&v147 = v46;
  *(&v147 + 1) = v48;
  LOBYTE(v38) = v38 & 1;
  LOBYTE(v148) = v38;
  *(&v148 + 1) = v51;
  v54 = v109;
  v55 = *(v109 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
  sub_24FEDD0C4();
  v56 = v110;
  sub_24FEDD0C4();
  sub_24FEDDB84();
  sub_24FE56B94(v46, v48, v38);

  *(v56 + *(v112 + 44)) = sub_24FEDD634();
  v57 = v53 + *(v54 + 32);
  sub_24FEDD0C4();
  v58 = *(v53 + *(v54 + 24));
  sub_24FEDDF34();
  sub_24FEDD294();
  v59 = v115;
  sub_24FE6315C(v56, v115, &qword_27F3A6658, &qword_24FEE5720);
  v60 = (v59 + *(v113 + 36));
  v61 = v150;
  v62 = v152;
  v60[4] = v151;
  v60[5] = v62;
  v60[6] = v153;
  v63 = v148;
  *v60 = v147;
  v60[1] = v63;
  v60[2] = v149;
  v60[3] = v61;
  LOBYTE(v57) = sub_24FEDD754();
  sub_24FEDD014();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v72 = v59;
  v73 = v117;
  sub_24FE6315C(v72, v117, &qword_27F3A6660, &qword_24FEE5728);
  v74 = v73 + *(v114 + 36);
  *v74 = v57;
  *(v74 + 8) = v65;
  *(v74 + 16) = v67;
  *(v74 + 24) = v69;
  *(v74 + 32) = v71;
  *(v74 + 40) = 0;
  LOBYTE(v57) = sub_24FEDD734();
  sub_24FEDD014();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v83 = v119;
  sub_24FE6315C(v73, v119, &qword_27F3A6668, &qword_24FEE5730);
  v84 = v83 + *(v116 + 36);
  *v84 = v57;
  *(v84 + 8) = v76;
  *(v84 + 16) = v78;
  *(v84 + 24) = v80;
  *(v84 + 32) = v82;
  *(v84 + 40) = 0;
  v85 = sub_24FEDDF24();
  v87 = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A66A8, &unk_24FEE5760);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_24FEE0740;
  v89 = v126;
  *(v88 + 56) = v126;
  *(v88 + 64) = &protocol witness table for AttributedString;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v88 + 32));
  v111(boxed_opaque_existential_1, v53, v89);
  LOBYTE(v133) = 0;
  sub_24FEDDD34();
  LOBYTE(v53) = v137;
  v91 = v139;
  LOBYTE(v133) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6370, &qword_24FEE4E80);
  sub_24FEDDD54();
  LOBYTE(v133) = 1;
  *(&v133 + 1) = *v132;
  DWORD1(v133) = *&v132[3];
  BYTE8(v133) = v53;
  *(&v133 + 9) = *v131;
  HIDWORD(v133) = *&v131[3];
  *&v134 = v91;
  *(&v134 + 1) = v88;
  *&v135 = -v58;
  *(&v135 + 1) = v58;
  *&v136 = v85;
  *(&v136 + 1) = v87;
  v92 = v122;
  sub_24FE6315C(v83, v122, &qword_27F3A6670, &qword_24FEE5738);
  v93 = (v92 + *(v118 + 36));
  v94 = v134;
  *v93 = v133;
  v93[1] = v94;
  v95 = v136;
  v93[2] = v135;
  v93[3] = v95;
  v137 = 1;
  *v138 = *v132;
  *&v138[3] = *&v132[3];
  LOBYTE(v139) = v53;
  *(&v139 + 1) = *v131;
  HIDWORD(v139) = *&v131[3];
  v140 = v91;
  v141 = v88;
  v142 = -v58;
  v143 = v58;
  v144 = v85;
  v145 = v87;
  sub_24FE9D5A4(&v133, &v130);
  sub_24FE58B7C(&v137, &qword_27F3A66B0, &qword_24FEE5770);
  v96 = v127;
  sub_24FE6315C(v92, v127, &qword_27F3A6678, &unk_24FEE5740);
  v98 = v123;
  v97 = v124;
  v99 = *(v123 + 16);
  v101 = v120;
  v100 = v121;
  v99(v121, v120, v124);
  v102 = v128;
  sub_24FE9D614(v96, v128);
  v103 = v129;
  v99(v129, v100, v97);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A66B8, &qword_24FEE5778);
  sub_24FE9D614(v102, &v103[*(v104 + 48)]);
  sub_24FE9D684(v96);
  v105 = *(v98 + 8);
  v105(v101, v97);
  sub_24FE9D684(v102);
  return (v105)(v100, v97);
}

uint64_t sub_24FE9D088@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = sub_24FEDDF14();
  *(a2 + 1) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6610, &qword_24FEE5660);
  sub_24FE9C5C4(v2, &a2[*(v6 + 44)]);
  v7 = sub_24FEDD734();
  v8 = -*(v2 + *(a1 + 24));
  sub_24FEDD014();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A6618, &qword_24FEE5668);
  v18 = &a2[*(result + 36)];
  *v18 = v7;
  *(v18 + 1) = v10;
  *(v18 + 2) = v12;
  *(v18 + 3) = v14;
  *(v18 + 4) = v16;
  v18[40] = 0;
  return result;
}

double sub_24FE9D144(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    return *(v2 + *(a2 + 24));
  }

  else
  {
    return 0.0;
  }
}

uint64_t sub_24FE9D174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDC774();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24FE9D284(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24FEDC774();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5E10, &unk_24FEE4CC0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }
}

void sub_24FE9D38C()
{
  sub_24FEDC774();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_24FE86B40();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24FE9D434()
{
  result = qword_27F3A6640;
  if (!qword_27F3A6640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F3A6618, &qword_24FEE5668);
    sub_24FE58928(&qword_27F3A6648, &qword_27F3A6650, &qword_24FEE5718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6640);
  }

  return result;
}

unint64_t sub_24FE9D4EC()
{
  result = qword_27F3A6690;
  if (!qword_27F3A6690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6680, &qword_24FEE8A80);
    sub_24FE8A640();
    sub_24FE58928(&qword_27F3A6698, &qword_27F3A66A0, &unk_24FEE7C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6690);
  }

  return result;
}

uint64_t sub_24FE9D5A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A66B0, &qword_24FEE5770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE9D614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6678, &unk_24FEE5740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE9D684(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6678, &unk_24FEE5740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DocumentElementCodeBlockParser.parseElement(attributedString:run:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a1;
  v86 = a2;
  v2 = sub_24FEDC8E4();
  v77 = *(v2 - 8);
  v78 = v2;
  v3 = *(v77 + 64);
  MEMORY[0x28223BE20](v2);
  v76 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_24FEDC774();
  v85 = *(v91 - 8);
  v5 = *(v85 + 64);
  MEMORY[0x28223BE20](v91);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v81 = &v74 - v9;
  MEMORY[0x28223BE20](v10);
  v84 = &v74 - v11;
  MEMORY[0x28223BE20](v12);
  v80 = &v74 - v13;
  v90 = sub_24FEDC884();
  v82 = *(v90 - 1);
  v14 = *(v82 + 64);
  MEMORY[0x28223BE20](v90);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6138, &unk_24FEE4A10);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v74 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6140, &qword_24FEE79D0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v74 - v23;
  v25 = sub_24FEDC854();
  v26 = *(v25 - 8);
  v27 = *(v26 + 8);
  MEMORY[0x28223BE20](v25);
  v29 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v83 = &v74 - v31;
  sub_24FE8B614();
  sub_24FEDC6D4();
  v32 = sub_24FEDC894();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v20, 1, v32) == 1)
  {
    sub_24FE58B7C(v20, &qword_27F3A6138, &unk_24FEE4A10);
    (*(v26 + 7))(v24, 1, 1, v25);
    v34 = v86;
LABEL_11:
    sub_24FE58B7C(v24, &qword_27F3A6140, &qword_24FEE79D0);
    v51 = type metadata accessor for DocumentCodeBlockElement();
    return (*(*(v51 - 8) + 56))(v34, 1, 1, v51);
  }

  v74 = v7;
  v75 = v24;
  v35 = sub_24FEDC864();
  result = (*(v33 + 8))(v20, v32);
  v37 = v25;
  v38 = v26;
  v89 = *(v35 + 16);
  if (v89)
  {
    v39 = 0;
    v88 = (v26 + 16);
    v40 = (v82 + 88);
    LODWORD(v87) = *MEMORY[0x277CC8D48];
    v41 = (v82 + 8);
    v42 = (v26 + 8);
    while (v39 < *(v35 + 16))
    {
      v43 = v38;
      v38[2](v29, v35 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + v38[9] * v39, v37);
      v44 = v37;
      sub_24FEDC834();
      v45 = v90;
      v46 = (*v40)(v16, v90);
      if (v46 == v87)
      {

        (*v41)(v16, v45);
        v24 = v75;
        v43[4](v75, v29, v44);
        v47 = 0;
        v37 = v44;
        v38 = v43;
        goto LABEL_10;
      }

      ++v39;
      (*v41)(v16, v45);
      result = (*v42)(v29, v44);
      v37 = v44;
      v38 = v43;
      if (v89 == v39)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    v47 = 1;
    v24 = v75;
LABEL_10:
    (v38[7])(v24, v47, 1, v37);
    v48 = (v38[6])(v24, 1, v37);
    v49 = v85;
    v34 = v86;
    v50 = v91;
    if (v48 == 1)
    {
      goto LABEL_11;
    }

    v75 = v38;
    v52 = v38[4];
    v82 = v37;
    v52(v83, v24, v37);
    v53 = sub_24FEDC844();
    v54 = v79;
    v55 = sub_24FED5384(v53);
    MEMORY[0x28223BE20](v55);
    *(&v74 - 2) = v54;
    v56 = sub_24FE8B764(sub_24FE9E0F0, (&v74 - 4), v55);

    v57 = v84;
    sub_24FEDC764();
    v58 = v81;
    (*(v49 + 16))(v81, v57, v50);
    v59 = *(v56 + 16);
    if (v59)
    {
      v60 = v78;
      v61 = *(v77 + 16);
      v62 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v79 = v56;
      v63 = v56 + v62;
      v89 = *(v77 + 72);
      v90 = v61;
      v64 = v49;
      v65 = (v49 + 8);
      v87 = (v64 + 32);
      v88 = (v77 + 8);
      v77 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v66 = v74;
      v67 = v76;
      do
      {
        (v90)(v67, v63, v60);
        sub_24FE9E6FC(&unk_27F3A6150, MEMORY[0x277CC8D88]);
        sub_24FEDC624();
        (*v88)(v67, v60);
        v68 = *v65;
        v69 = v91;
        (*v65)(v58, v91);
        (*v87)(v58, v66, v69);
        v63 += v89;
        --v59;
      }

      while (v59);

      v49 = v85;
      v34 = v86;
      v50 = v91;
    }

    else
    {

      v68 = *(v49 + 8);
    }

    v68(v84, v50);
    v70 = *(v49 + 32);
    v71 = v80;
    v70(v80, v58, v50);
    v72 = v74;
    sub_24FE9E110();
    _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
    v68(v71, v50);
    (*(v75 + 1))(v83, v82);
    v73 = type metadata accessor for DocumentCodeBlockElement();
    v70((v34 + *(v73 + 20)), v72, v50);
    return (*(*(v73 - 8) + 56))(v34, 0, 1, v73);
  }

  return result;
}

uint64_t sub_24FE9E014()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6160, &unk_24FEE4A80);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - v2;
  sub_24FEDC6B4();
  sub_24FE8BF90();
  sub_24FEDC7A4();
  return sub_24FE58B7C(v3, &qword_27F3A6160, &unk_24FEE4A80);
}

void sub_24FE9E110()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6130, &unk_24FEE4A00);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v20 - v2;
  v4 = sub_24FEDC5A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() preferredFontForTextStyle_];
  v20[10] = 174088288;
  v20[11] = 0xE400000000000000;
  sub_24FEDC574();
  sub_24FEAE034(v3);
  (*(v5 + 8))(v8, v4);
  v10 = sub_24FEDE224();
  MEMORY[0x25305A470](v10);

  MEMORY[0x25305A470](6316128, 0xE300000000000000);
  v11 = objc_opt_self();
  v12 = sub_24FEDE1C4();

  v13 = [objc_opt_self() defaultFormatOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A66C8, &qword_24FEE57E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24FEE0740;
  v15 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 64) = sub_24FE9E4AC();
  *(inited + 40) = v9;
  v16 = v15;
  v17 = v9;
  sub_24FE9E5F4(inited);
  swift_setDeallocating();
  sub_24FE58B7C(inited + 32, &qword_27F3A66D8, &qword_24FEE57F0);
  _s3__C3KeyVMa_0(0);
  sub_24FE9E6FC(&qword_27F3A5D50, _s3__C3KeyVMa_0);
  v18 = sub_24FEDE144();

  v19 = [v11 reconstituteAttributedStringFromFormattedString:v12 formatOptions:v13 attributes:v18];

  sub_24FEDC7B4();
}

unint64_t sub_24FE9E4AC()
{
  result = qword_27F3A66D0;
  if (!qword_27F3A66D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F3A66D0);
  }

  return result;
}

unint64_t sub_24FE9E4F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A66E8, &qword_24FEE5808);
    v3 = sub_24FEDE6D4();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24FE71544(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

unint64_t sub_24FE9E5F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A66E0, &unk_24FEE57F8);
    v3 = sub_24FEDE6D4();
    v4 = a1 + 32;

    while (1)
    {
      sub_24FE9E744(v4, &v11);
      v5 = v11;
      result = sub_24FE714B0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_24FE725D8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t sub_24FE9E6FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FE9E744(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A66D8, &qword_24FEE57F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DocumentElementEmbeddedVideoParser.parseElement(attributedString:run:)@<X0>(uint64_t a1@<X8>)
{
  sub_24FE9E898();
  sub_24FEDC6D4();
  if (v7)
  {
    _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
    v2 = type metadata accessor for DocumentEmbeddedVideoElement();
    v3 = (a1 + *(v2 + 20));
    *v3 = v6;
    v3[1] = v7;
    return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
  }

  else
  {
    v5 = type metadata accessor for DocumentEmbeddedVideoElement();
    return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

unint64_t sub_24FE9E898()
{
  result = qword_27F3A66F0;
  if (!qword_27F3A66F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A66F0);
  }

  return result;
}

unint64_t sub_24FE9E8F4()
{
  result = qword_27F3A66F8;
  if (!qword_27F3A66F8)
  {
    type metadata accessor for DocumentEmbeddedVideoElement();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A66F8);
  }

  return result;
}

uint64_t sub_24FE9E94C@<X0>(uint64_t a1@<X8>)
{
  sub_24FE9E898();
  sub_24FEDC6D4();
  if (v7)
  {
    _s16MarkdownDocument0B20EmbeddedVideoElementV2id10Foundation4UUIDVvpfi_0();
    v2 = type metadata accessor for DocumentEmbeddedVideoElement();
    v3 = (a1 + *(v2 + 20));
    *v3 = v6;
    v3[1] = v7;
    return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
  }

  else
  {
    v5 = type metadata accessor for DocumentEmbeddedVideoElement();
    return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

uint64_t DocumentEmbeddedVideoElement.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDCA64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

MarkdownDocument::DocumentEmbeddedVideoView __swiftcall DocumentEmbeddedVideoElement.makeView()()
{
  v1 = (v0 + *(type metadata accessor for DocumentEmbeddedVideoElement() + 20));
  v2 = *v1;
  v3 = v1[1];

  v4 = v2;
  v5 = v3;
  result.embeddedVideoSource._object = v5;
  result.embeddedVideoSource._countAndFlagsBits = v4;
  return result;
}

uint64_t type metadata accessor for DocumentEmbeddedVideoElement()
{
  result = qword_27F3A6728;
  if (!qword_27F3A6728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static DocumentEmbeddedVideoElement.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for DocumentEmbeddedVideoElement() + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_24FEDE844();
}

unint64_t sub_24FE9EBC4()
{
  result = qword_27F3A6708;
  if (!qword_27F3A6708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6708);
  }

  return result;
}

uint64_t sub_24FE9EC18(uint64_t a1)
{
  *(a1 + 8) = sub_24FE9ECE4(&qword_27F3A6710, type metadata accessor for DocumentEmbeddedVideoElement);
  result = sub_24FE9ECE4(&unk_27F3A6718, type metadata accessor for DocumentEmbeddedVideoElement);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24FE9ECE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FE9ED2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_24FEDE844();
}

uint64_t sub_24FE9EDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDCA64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24FE9EE9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24FEDCA64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24FE9EF58()
{
  result = sub_24FEDCA64();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t DocumentEmbeddedVideoView.body.getter(uint64_t a1, uint64_t a2)
{

  sub_24FEDDF34();
  sub_24FEDD294();
  *&v8[54] = v13;
  *&v8[70] = v14;
  *&v8[86] = v15;
  *&v8[102] = v16;
  *&v8[6] = v10;
  *&v8[22] = v11;
  *&v8[38] = v12;
  *&v6[74] = *&v8[64];
  *&v6[90] = *&v8[80];
  *&v6[106] = *&v8[96];
  *&v6[10] = *v8;
  *&v6[26] = *&v8[16];
  *&v6[42] = *&v8[32];
  v9 = 0;
  *&v5 = a1;
  *(&v5 + 1) = a2;
  *v6 = 0x3FFC71C71C71C71CLL;
  *&v6[8] = 256;
  *&v6[120] = *(&v16 + 1);
  *&v6[58] = *&v8[48];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6740, &qword_24FEE5940);
  sub_24FE9F178();
  sub_24FEDDA54();
  v7[6] = *&v6[80];
  v7[7] = *&v6[96];
  v7[8] = *&v6[112];
  v7[2] = *&v6[16];
  v7[3] = *&v6[32];
  v7[4] = *&v6[48];
  v7[5] = *&v6[64];
  v7[0] = v5;
  v7[1] = *v6;
  return sub_24FE9F2E4(v7);
}

unint64_t sub_24FE9F178()
{
  result = qword_27F3A6748;
  if (!qword_27F3A6748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6740, &qword_24FEE5940);
    sub_24FE9F204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6748);
  }

  return result;
}

unint64_t sub_24FE9F204()
{
  result = qword_27F3A6750;
  if (!qword_27F3A6750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6758, &qword_24FEE5948);
    sub_24FE9F290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6750);
  }

  return result;
}

unint64_t sub_24FE9F290()
{
  result = qword_27F3A6760;
  if (!qword_27F3A6760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6760);
  }

  return result;
}

uint64_t sub_24FE9F2E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6740, &qword_24FEE5940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FE9F380()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A6740, &qword_24FEE5940);
  sub_24FE9F178();
  return swift_getOpaqueTypeConformance2();
}

uint64_t static EmbeddedVideoUrlAttribute.name.getter()
{
  swift_beginAccess();
  v0 = static EmbeddedVideoUrlAttribute.name;

  return v0;
}

uint64_t static EmbeddedVideoUrlAttribute.name.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  static EmbeddedVideoUrlAttribute.name = a1;
  off_27F3A6770 = a2;
}

uint64_t sub_24FE9F5A4()
{
  swift_beginAccess();
  v0 = static EmbeddedVideoUrlAttribute.name;

  return v0;
}

unint64_t sub_24FE9F614()
{
  result = qword_27F3A6778;
  if (!qword_27F3A6778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6778);
  }

  return result;
}

uint64_t static EmbeddedVideoView.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_24FEDE844();
  }
}

id EmbeddedVideoView.Coordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EmbeddedVideoView.Coordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmbeddedVideoView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id EmbeddedVideoView.makeCoordinator()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmbeddedVideoView.Coordinator();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtCV16MarkdownDocument17EmbeddedVideoView11Coordinator_parent];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v4;

  return objc_msgSendSuper2(&v8, sel_init);
}

id EmbeddedVideoView.makeUIView(context:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CE3850]) init];
  v1 = [v0 scrollView];
  [v1 setBounces_];

  [v0 setOpaque_];
  return v0;
}

void EmbeddedVideoView.updateUIView(_:context:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24FEDE624();
  MEMORY[0x25305A470](0xD0000000000002F5, 0x800000024FEE9DC0);
  MEMORY[0x25305A470](a3, a4);
  MEMORY[0x25305A470](0xD000000000000048, 0x800000024FEEA0C0);
  v7 = sub_24FEDE1C4();
}

id sub_24FE9F974()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CE3850]) init];
  v1 = [v0 scrollView];
  [v1 setBounces_];

  [v0 setOpaque_];
  return v0;
}

id sub_24FE9FA00@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = type metadata accessor for EmbeddedVideoView.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV16MarkdownDocument17EmbeddedVideoView11Coordinator_parent];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_24FE9FABC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24FEDE844();
  }
}

uint64_t sub_24FE9FAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FE9FBEC();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24FE9FB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FE9FBEC();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24FE9FBB4()
{
  sub_24FE9FBEC();
  sub_24FEDD5D4();
  __break(1u);
}

unint64_t sub_24FE9FBEC()
{
  result = qword_27F3A6790;
  if (!qword_27F3A6790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A6790);
  }

  return result;
}

uint64_t DocumentFileElement.init(id:fileURL:fileName:fileType:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_24FEDCA64();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v15 = type metadata accessor for DocumentFileElement();
  v16 = v15[5];
  v17 = sub_24FEDC9E4();
  (*(*(v17 - 8) + 32))(a7 + v16, a2, v17);
  v18 = (a7 + v15[6]);
  *v18 = a3;
  v18[1] = a4;
  v19 = v15[7];
  v20 = sub_24FEDCE94();
  result = (*(*(v20 - 8) + 32))(a7 + v19, a5, v20);
  *(a7 + v15[8]) = a6;
  return result;
}

uint64_t type metadata accessor for DocumentFileElement()
{
  result = qword_27F3A67B8;
  if (!qword_27F3A67B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DocumentFileElement.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDCA64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DocumentFileElement.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DocumentFileElement() + 20);
  v4 = sub_24FEDC9E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DocumentFileElement.fileName.getter()
{
  v1 = (v0 + *(type metadata accessor for DocumentFileElement() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DocumentFileElement.fileType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DocumentFileElement() + 28);
  v4 = sub_24FEDCE94();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DocumentFileElement.makeView()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DocumentFileElement();
  v4 = v3[5];
  v5 = sub_24FEDC9E4();
  (*(*(v5 - 8) + 16))(a1, v1 + v4, v5);
  v6 = v3[7];
  v7 = (v1 + v3[6]);
  v8 = v7[1];
  v24 = *v7;
  v9 = type metadata accessor for DocumentFileView(0);
  v10 = (a1 + v9[8]);
  v23 = type metadata accessor for ShareSheetMetadata();
  v11 = *(v23 + 24);
  v25 = sub_24FEDCE94();
  v26 = *(*(v25 - 8) + 16);
  v26(&v10[v11], v1 + v6, v25);
  v12 = *(v1 + v3[8]);
  v13 = a1 + v9[7];

  sub_24FEDDD34();
  *v13 = v27;
  *(v13 + 8) = v28;
  v14 = (a1 + v9[10]);
  sub_24FEDE134();
  sub_24FEA0398(&qword_27F3A5C08, MEMORY[0x277D63F60]);
  *v14 = sub_24FEDD2C4();
  v14[1] = v15;
  v16 = sub_24FEDE1C4();
  v17 = [v16 stringByDeletingPathExtension];

  v18 = sub_24FEDE1F4();
  v20 = v19;

  v21 = (a1 + v9[5]);
  *v21 = v18;
  v21[1] = v20;
  result = (v26)(a1 + v9[6], &v10[v11], v25);
  *(a1 + v9[9]) = v12;
  if (v12 < 0)
  {
    __break(1u);
  }

  else
  {
    *v10 = v24;
    *(v10 + 1) = v8;
    *(v10 + 2) = v18;
    *(v10 + 3) = v20;
    *&v10[*(v23 + 28)] = v12;
  }

  return result;
}

BOOL _s16MarkdownDocument0B11FileElementV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s16MarkdownDocument0B12BreakElementV23__derived_struct_equalsySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DocumentFileElement();
  v5 = v4[5];
  if ((sub_24FEDC994() & 1) == 0)
  {
    return 0;
  }

  v6 = v4[6];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (v10 || (sub_24FEDE844()) && (v11 = v4[7], (sub_24FEDCE24()))
  {
    return *(a1 + v4[8]) == *(a2 + v4[8]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24FEA02CC(uint64_t a1)
{
  *(a1 + 8) = sub_24FEA0398(&qword_27F3A67A0, type metadata accessor for DocumentFileElement);
  result = sub_24FEA0398(&unk_27F3A67A8, type metadata accessor for DocumentFileElement);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24FEA0398(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FEA03F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24FEDCA64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_24FEDC9E4();
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
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_24FEDCE94();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24FEA0580(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_24FEDCA64();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_24FEDC9E4();
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
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v15 = sub_24FEDCE94();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_24FEA06F8()
{
  result = sub_24FEDCA64();
  if (v1 <= 0x3F)
  {
    result = sub_24FEDC9E4();
    if (v2 <= 0x3F)
    {
      result = sub_24FEDCE94();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t DocumentFileView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = type metadata accessor for DocumentFileView(0);
  v3 = v2 - 8;
  v44 = *(v2 - 8);
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A67D0, &qword_24FEE5D90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v44 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A67D8, &qword_24FEE5D98);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A67E0, &qword_24FEE5DA0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - v16;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A67E8, &qword_24FEE5DA8);
  v45 = *(v46 - 8);
  v18 = *(v45 + 64);
  MEMORY[0x28223BE20](v46);
  v20 = &v44 - v19;
  *v8 = sub_24FEDDF34();
  v8[1] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A67F0, &unk_24FEE5DB0);
  sub_24FEA0D48(v1, v8 + *(v22 + 44));
  sub_24FEDDF44();
  sub_24FEDD294();
  sub_24FE6315C(v8, v13, &qword_27F3A67D0, &qword_24FEE5D90);
  v23 = &v13[*(v10 + 44)];
  v24 = v57;
  *(v23 + 4) = v56;
  *(v23 + 5) = v24;
  *(v23 + 6) = v58;
  v25 = v53;
  *v23 = v52;
  *(v23 + 1) = v25;
  v26 = v55;
  *(v23 + 2) = v54;
  *(v23 + 3) = v26;
  LOBYTE(v10) = sub_24FEDD734();
  sub_24FEDD014();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_24FE6315C(v13, v17, &qword_27F3A67D8, &qword_24FEE5D98);
  v35 = &v17[*(v14 + 36)];
  *v35 = v10;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  sub_24FEA4F70(v1, &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DocumentFileView);
  v36 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v37 = swift_allocObject();
  sub_24FEA4F08(&v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36, type metadata accessor for DocumentFileView);
  v38 = sub_24FEA4304(&qword_27F3A67F8, &qword_27F3A67E0, &qword_24FEE5DA0, sub_24FEA2048);
  sub_24FEDDB14();

  sub_24FEA2100(v17);
  v39 = v1 + *(v3 + 36);
  v40 = *v39;
  v41 = *(v39 + 8);
  v50 = v40;
  v51 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A6500, &qword_24FEE5418);
  sub_24FEDDD64();
  v48 = v14;
  v49 = v38;
  swift_getOpaqueTypeConformance2();
  v42 = v46;
  sub_24FEDDB44();

  return (*(v45 + 8))(v20, v42);
}