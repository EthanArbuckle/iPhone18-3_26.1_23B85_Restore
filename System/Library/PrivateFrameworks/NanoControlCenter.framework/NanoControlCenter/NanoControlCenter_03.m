uint64_t type metadata accessor for ButtonAnimator.Params()
{
  result = qword_27FA249F8;
  if (!qword_27FA249F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25AF4F8F4(uint64_t a1)
{
  v2 = type metadata accessor for ButtonAnimator.Params();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25AF4F950()
{
  result = qword_27FA271F0;
  if (!qword_27FA271F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA271F0);
  }

  return result;
}

uint64_t sub_25AF4F99C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA252B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_25AF4FA80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA252B0);
  v1 = *(v0 + 16);

  return sub_25AF4C4CC(v1);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25AF4FB38(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25AF4FB80()
{
  result = qword_27FA246C8;
  if (!qword_27FA246C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FA25690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA246C8);
  }

  return result;
}

uint64_t sub_25AF4FC08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA252B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25AF4FCD8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA252B0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_25AF4C064(v2, v3);
}

uint64_t sub_25AF4FD48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA252B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25AF4FE20(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA252B0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25AF18ADC;

  return sub_25AF4C26C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_25AF4FF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25B004194();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
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

uint64_t sub_25AF50018(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25B004194();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

void sub_25AF500D0()
{
  sub_25B004194();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ButtonsTransition(319);
    if (v1 <= 0x3F)
    {
      sub_25AF501B0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25AF501B0()
{
  if (!qword_27FA24A08)
  {
    v0 = sub_25B005E04();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA24A08);
    }
  }
}

uint64_t sub_25AF502A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247D0);
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

uint64_t sub_25AF50380(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247D0);
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

uint64_t type metadata accessor for DraggingReorderAndScrollEffect()
{
  result = qword_27FA24A10;
  if (!qword_27FA24A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25AF50494()
{
  sub_25AF50530();
  if (v0 <= 0x3F)
  {
    sub_25AF50588();
    if (v1 <= 0x3F)
    {
      type metadata accessor for GlanceScrollingModel();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25AF50530()
{
  if (!qword_27FA24878)
  {
    sub_25B004804();
    v0 = sub_25B005554();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA24878);
    }
  }
}

void sub_25AF50588()
{
  if (!qword_27FA24890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA247C8);
    v0 = sub_25B005554();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA24890);
    }
  }
}

uint64_t sub_25AF50608()
{
  result = type metadata accessor for DraggingReorderAndScrollEffect();
  if (qword_27FA30B10)
  {
    swift_beginAccess();
    swift_getKeyPath();
    sub_25AF517A4(&qword_27FA23D18, type metadata accessor for ButtonLayout);

    sub_25B004234();

    swift_beginAccess();

    swift_getKeyPath();
    sub_25B004234();

    return swift_beginAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_25AF507A0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  v13[2] = a1;
  v3 = type metadata accessor for DraggingReorderAndScrollEffect();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA255D0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - v7;
  if (qword_27FA30B10)
  {
    v9 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_draggingModel);
    swift_getKeyPath();
    v13[3] = v9;
    sub_25AF517A4(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);

    sub_25B004234();

    v10 = OBJC_IVAR____TtC17NanoControlCenter19GlanceDraggingModel__draggingButtonTick;
    swift_beginAccess();
    sub_25AF512B4(v9 + v10, v8);
    sub_25AF51324(v2, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v12 = swift_allocObject();
    sub_25AF516C8(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for DraggingReorderAndScrollEffect);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24A20);
    sub_25AF51538();
    sub_25AF5159C();
    sub_25B005364();

    sub_25AF51650(v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25AF50A34(uint64_t a1, uint64_t a2)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25AF50AEC(a2, a1);
}

void sub_25AF50AEC(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA255D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v50 - v4;
  v6 = type metadata accessor for GlanceDraggingModel.DraggingButtonTick(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v56 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_27FA30B10;
  if (!qword_27FA30B10)
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return;
  }

  swift_getKeyPath();
  *&v57 = v9;
  sub_25AF517A4(&qword_27FA25250, type metadata accessor for GlanceModel);
  v10 = v9;
  sub_25B004234();

  v11 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__editMode;
  swift_beginAccess();
  LODWORD(v11) = v10[v11];

  if (v11 != 1)
  {
    return;
  }

  v12 = qword_27FA30B10;
  if (!qword_27FA30B10)
  {
    goto LABEL_30;
  }

  swift_getKeyPath();
  *&v57 = v12;
  v13 = v12;
  sub_25B004234();

  v14 = *&v13[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID];
  v15 = *&v13[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID + 8];
  v17 = *&v13[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID + 16];
  v16 = *&v13[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID + 24];
  v18 = v13[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID + 32];
  sub_25AF1D7EC(v14, v15, v17, v16, v13[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID + 32]);

  if (v18 > 0xFD)
  {
    return;
  }

  sub_25AF512B4(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_25AF231D0(v14, v15, v17, v16, v18);
    sub_25AF51650(v5);
    return;
  }

  v52 = v17;
  v53 = v15;
  v19 = v56;
  sub_25AF516C8(v5, v56, type metadata accessor for GlanceDraggingModel.DraggingButtonTick);
  v20 = qword_27FA30B10;
  if (!qword_27FA30B10)
  {
    goto LABEL_31;
  }

  v21 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_draggingModel);
  v22 = v52;
  *&v57 = v14;
  *(&v57 + 1) = v53;
  v58 = v52;
  v59 = v16;
  v60 = v18;
  v51 = v16;
  v23 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_buttonLayout;
  swift_beginAccess();
  v24 = *&v20[v23];

  v25 = v20;

  v26 = v55;
  sub_25AF50608();
  sub_25AF68480(&v57, v19, v54, v24, v26, v27, v28, v29, v30);

  swift_getKeyPath();
  *&v57 = v21;
  sub_25AF517A4(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
  sub_25B004234();

  if (*(v21 + 56) != 1)
  {
    sub_25AF51738(v19);
    sub_25AF231D0(v14, v53, v22, v51, v18);

    return;
  }

  v31 = v51;
  if (!qword_27FA30B10)
  {
    goto LABEL_32;
  }

  swift_getKeyPath();
  *&v57 = v21;

  sub_25B004234();

  v32 = *(v21 + 48);
  if (*(v32 + 16))
  {

    v33 = sub_25AFEC930();
    if (*(v32 + 16) == *(v33 + 16))
    {
      v34 = v33;

      v36 = sub_25AF9B0A0(v35);

      v37 = sub_25AF9B0A0(v34);

      LOBYTE(v34) = sub_25AFF9C60(v36, v37);

      if (v34)
      {
LABEL_25:
        v48 = v52;
        v49 = v53;
        *&v57 = v14;
        *(&v57 + 1) = v53;
        v58 = v52;
        v59 = v31;
        v60 = v18;
        sub_25AFECC84(&v57, v32);

        sub_25AF51738(v56);
        sub_25AF231D0(v14, v49, v48, v31, v18);
        return;
      }
    }

    else
    {
    }

    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v43 = sub_25B0044C4();
    __swift_project_value_buffer(v43, qword_27FA30C28);
    v44 = sub_25B0044B4();
    v45 = sub_25B005CB4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v57 = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_25AF8E7DC(0xD000000000000012, 0x800000025B0175A0, &v57);
      _os_log_impl(&dword_25AF0B000, v44, v45, "%s reordered displayed button IDs not a permutation of existing displayed button IDs. This indicates programmer error.", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      MEMORY[0x25F85EC30](v47, -1, -1);
      MEMORY[0x25F85EC30](v46, -1, -1);
    }

    goto LABEL_25;
  }

  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v38 = sub_25B0044C4();
  __swift_project_value_buffer(v38, qword_27FA30C28);
  v39 = sub_25B0044B4();
  v40 = sub_25B005CB4();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v57 = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_25AF8E7DC(0xD000000000000012, 0x800000025B0175A0, &v57);
    _os_log_impl(&dword_25AF0B000, v39, v40, "%s No dragging button order while ostensibly dragging a button. This is suspicious.", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    MEMORY[0x25F85EC30](v42, -1, -1);
    MEMORY[0x25F85EC30](v41, -1, -1);
    sub_25AF231D0(v14, v53, v52, v31, v18);
  }

  else
  {
    sub_25AF231D0(v14, v53, v52, v31, v18);
  }

  sub_25AF51738(v56);
}

uint64_t sub_25AF512B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA255D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AF51324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DraggingReorderAndScrollEffect();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AF51388()
{
  v1 = (type metadata accessor for DraggingReorderAndScrollEffect() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247D0) + 32);
  v6 = sub_25B004804();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25AF514B8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DraggingReorderAndScrollEffect();

  return sub_25AF50A34(a1, a2);
}

unint64_t sub_25AF51538()
{
  result = qword_27FA24A28;
  if (!qword_27FA24A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24A28);
  }

  return result;
}

unint64_t sub_25AF5159C()
{
  result = qword_27FA24A30;
  if (!qword_27FA24A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FA255D0);
    sub_25AF517A4(qword_27FA24A38, type metadata accessor for GlanceDraggingModel.DraggingButtonTick);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24A30);
  }

  return result;
}

uint64_t sub_25AF51650(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA255D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25AF516C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25AF51738(uint64_t a1)
{
  v2 = type metadata accessor for GlanceDraggingModel.DraggingButtonTick(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25AF517A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25AF517EC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24A20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FA255D0);
  sub_25AF51538();
  sub_25AF5159C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25AF51884()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25AF518F4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_25AF51A34(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_25AF51C54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_25AF51C9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25AF51CFC()
{
  v0 = sub_25B005794();
  __swift_allocate_value_buffer(v0, qword_27FA24AC0);
  __swift_project_value_buffer(v0, qword_27FA24AC0);
  return sub_25B005784();
}

uint64_t sub_25AF51D48()
{
  v1 = v0[1];
  v35 = *v0;
  v36 = v1;
  v37 = v0[2];
  v38 = *(v0 + 48);
  v2 = qword_27FA30B10;
  if (qword_27FA30B10)
  {
    swift_getKeyPath();
    v27 = v2;
    sub_25AF538BC(&qword_27FA25250, type metadata accessor for GlanceModel);
    v3 = v2;
    sub_25B004234();

    v4 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__editMode;
    swift_beginAccess();
    v5 = *(&v3->Kind + v4);

    v6 = 0;
    if (v38)
    {
      if (v5)
      {
        swift_getKeyPath();
        v27 = *(&v37 + 1);
        sub_25AF538BC(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
        sub_25B004234();

        v6 = *(*(&v37 + 1) + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__isLifted) ^ 1;
      }
    }

    v7 = sub_25AFB70F0(0.5, 0.03);
    v9 = v8;
    v11 = v10;
    v32 = v7;
    v33 = v8;
    v34 = v10;
    *(swift_allocObject() + 16) = v6 & 1;
    v12 = swift_allocObject();
    v13 = v36;
    *(v12 + 16) = v35;
    *(v12 + 32) = v13;
    *(v12 + 48) = v37;
    *(v12 + 64) = v38;
    *(v12 + 72) = xmmword_25B00C500;
    *(v12 + 88) = xmmword_25B00C510;
    *(v12 + 104) = 0x3FC0624DD2F1A9FCLL;
    *(v12 + 112) = v7;
    *(v12 + 120) = v9;
    *(v12 + 128) = v11;
    *(v12 + 136) = xmmword_25B00C520;
    sub_25AF5387C(&v35, &v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24AD8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24AE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24AE8);
    sub_25AF0F274(&qword_27FA24AF0, &qword_27FA24AD8);
    v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24AF8);
    v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24B00);
    v16 = sub_25AF0F274(&qword_27FA24B08, &qword_27FA24AF8);
    v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24B10);
    v18 = sub_25B004954();
    v19 = sub_25AF538BC(&qword_27FA24020, MEMORY[0x277CDFCB0]);
    v27 = v18;
    v28 = v19;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v27 = v17;
    v28 = OpaqueTypeConformance2;
    v21 = swift_getOpaqueTypeConformance2();
    v27 = v14;
    v28 = v15;
    v29 = v16;
    v30 = v21;
    swift_getOpaqueTypeConformance2();
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24B18);
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24B20);
    v24 = sub_25AF0F274(&qword_27FA24B28, &qword_27FA24B20);
    v27 = &type metadata for GlanceButtonModel.Jitter;
    v28 = v23;
    v29 = v23;
    v30 = v24;
    v31 = v24;
    v25 = swift_getOpaqueTypeConformance2();
    v27 = &type metadata for GlanceButtonModel.Jitter;
    v28 = v22;
    v29 = v23;
    v30 = v25;
    v31 = v24;
    swift_getOpaqueTypeConformance2();
    sub_25B0051F4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25AF52290(uint64_t a1, __int128 *a2, char a3)
{
  v11 = *a2;
  v4 = *(a2 + 2);
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = v11;
  *(v5 + 40) = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24AF8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24B00);
  v8 = sub_25AF0F274(&qword_27FA24B08, &qword_27FA24AF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24B10);
  sub_25B004954();
  sub_25AF538BC(&qword_27FA24020, MEMORY[0x277CDFCB0]);
  swift_getOpaqueTypeConformance2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x25F85CF70](sub_25AF5398C, v5, v6, v7, v8, OpaqueTypeConformance2);
}

uint64_t sub_25AF52450(double a1, double a2, double a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24B10);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - v12;
  v14 = sub_25B004954();
  v15 = sub_25AF538BC(&qword_27FA24020, MEMORY[0x277CDFCB0]);
  if (a6)
  {
    v17.n128_f64[0] = a2;
  }

  else
  {
    v17.n128_f64[0] = 0.0;
  }

  if (a6)
  {
    v16.n128_f64[0] = a1;
  }

  else
  {
    v16.n128_f64[0] = 0.0;
  }

  if ((a6 & 1) == 0)
  {
    a3 = 0.0;
  }

  MEMORY[0x25F85C490](v14, v15, v16, v17);
  sub_25B0057D4();
  v19 = v18;
  v21 = v20;
  v24[0] = v14;
  v24[1] = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x25F85C460](v10, OpaqueTypeConformance2, a3, v19, v21);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_25AF52604@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>, uint64_t a10, uint64_t a11)
{
  v67 = a9;
  v64 = a8;
  v75 = a1;
  v65 = a11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24AE8);
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = v61 - v17;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24B18);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = v61 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24B20);
  v68 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v69 = v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v78 = v61 - v22;
  MEMORY[0x28223BE20](v23);
  v77 = v61 - v24;
  MEMORY[0x28223BE20](v25);
  v79 = v61 - v26;
  sub_25B005B34();
  v66 = sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  KeyPath = swift_getKeyPath();
  v63 = v61;
  v27 = MEMORY[0x28223BE20](KeyPath);
  *&v61[-6] = a2;
  *&v61[-5] = a3;
  *&v61[-4] = v27;
  *&v61[-3] = a4;
  *&v61[-2] = a7;
  v61[-1] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24B30);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24B38);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24B40);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24B48);
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24B50);
  v33 = sub_25AF0F274(&qword_27FA24B58, &qword_27FA24B40);
  v34 = MEMORY[0x277D839F8];
  v80 = MEMORY[0x277D839F8];
  v81 = v30;
  v82 = v30;
  v83 = v33;
  v84 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v80 = v34;
  v81 = v32;
  v82 = v30;
  v83 = OpaqueTypeConformance2;
  v84 = v33;
  v36 = swift_getOpaqueTypeConformance2();
  v80 = v34;
  v81 = v31;
  v82 = v30;
  v83 = v36;
  v84 = v33;
  v37 = swift_getOpaqueTypeConformance2();
  v80 = v34;
  v81 = v29;
  v82 = v30;
  v83 = v37;
  v84 = v33;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v77;
  v61[1] = v38;
  sub_25B004744();
  v40 = sub_25AF0F274(&qword_27FA24B28, &qword_27FA24B20);
  MEMORY[0x25F85C690](v39, &type metadata for GlanceButtonModel.Jitter, v19, v40);
  v41 = *(v68 + 1);
  v41(v39, v19);
  v42 = swift_getKeyPath();
  v43 = MEMORY[0x28223BE20](v42);
  *&v61[-6] = a2;
  *&v61[-5] = a3;
  *&v61[-4] = v43;
  *&v61[-3] = a5;
  v61[-2] = v45;
  v61[-1] = v44;
  v46 = v78;
  sub_25B004744();
  MEMORY[0x25F85C690](v46, &type metadata for GlanceButtonModel.Jitter, v19, v40);
  v68 = v41;
  v41(v46, v19);
  v47 = swift_getKeyPath();
  v48 = MEMORY[0x28223BE20](v47);
  v61[-6] = a10;
  v61[-5] = v49;
  *&v61[-4] = v48;
  *&v61[-3] = a6;
  v61[-2] = v51;
  v61[-1] = v50;
  v52 = v69;
  sub_25B004744();
  MEMORY[0x25F85C690](v52, &type metadata for GlanceButtonModel.Jitter, v19, v40);
  v41(v52, v19);
  MEMORY[0x25F85C6C0](v79, &type metadata for GlanceButtonModel.Jitter, v19, v40);
  v53 = v70;
  sub_25B0048B4();
  v80 = &type metadata for GlanceButtonModel.Jitter;
  v81 = v19;
  v82 = v19;
  v83 = v40;
  v84 = v40;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = v73;
  v56 = v72;
  sub_25B0048B4();
  v80 = &type metadata for GlanceButtonModel.Jitter;
  v81 = v56;
  v82 = v19;
  v83 = v54;
  v84 = v40;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = v76;
  MEMORY[0x25F85C6A0](v55, &type metadata for GlanceButtonModel.Jitter, v76, v57);
  (*(v74 + 8))(v55, v58);
  (*(v71 + 8))(v53, v56);
  v59 = v68;
  v68(v52, v19);
  v59(v78, v19);
  v59(v77, v19);
  v59(v79, v19);
}

uint64_t sub_25AF52E7C@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D4>)
{
  v60 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24B38);
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x28223BE20](v7);
  v59 = &v51 - v8;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24B48);
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v51 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24B50);
  v55 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v51 - v10;
  v11 = sub_25B005794();
  v52 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24B40);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v54 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v65 = &v51 - v18;
  MEMORY[0x28223BE20](v19);
  v70 = &v51 - v20;
  MEMORY[0x28223BE20](v21);
  v69 = &v51 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v51 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v51 - v27;
  sub_25B005B34();
  v53 = sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v71 = a3;
  sub_25B005774();
  v29 = MEMORY[0x277D839F8];
  sub_25B004794();
  v30 = sub_25AF0F274(&qword_27FA24B58, &qword_27FA24B40);
  v64 = v28;
  MEMORY[0x25F85CC40](v25, v29, v14, v30);
  v63 = *(v15 + 8);
  v63(v25, v14);
  v71 = a2;
  v68 = v25;
  if (qword_27FA23718 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v11, qword_27FA24AC0);
  v32 = *(v52 + 2);
  v51 = v31;
  v32(v13, v31, v11);
  v52 = v32;
  v33 = v69;
  v34 = MEMORY[0x277D839F8];
  sub_25B004794();
  MEMORY[0x25F85CC40](v33, v34, v14, v30);
  v35 = v63;
  v63(v33, v14);
  v71 = a3;
  v32(v13, v31, v11);
  v36 = v70;
  v37 = MEMORY[0x277D839F8];
  sub_25B004794();
  v38 = v37;
  MEMORY[0x25F85CC40](v36, *&v37, v14, v30);
  v35(v36, v14);
  v71 = a2;
  v52(v13, v51, v11);
  v39 = v65;
  sub_25B004794();
  MEMORY[0x25F85CC40](v39, *&v38, v14, v30);
  v35(v39, v14);
  v71 = a4;
  sub_25B005764();
  v40 = v54;
  sub_25B004794();
  MEMORY[0x25F85CC40](v40, *&v38, v14, v30);
  v35(v40, v14);
  MEMORY[0x25F85CC60](v64, *&v38, v14, v30);
  sub_25B004E54();
  v71 = v38;
  v72 = v14;
  v73 = v14;
  v74 = v30;
  v75 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v56;
  v43 = v67;
  sub_25B004E54();
  v71 = v38;
  v72 = v43;
  v73 = v14;
  v74 = OpaqueTypeConformance2;
  v75 = v30;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = v59;
  v46 = v58;
  sub_25B004E54();
  v71 = v38;
  v72 = v46;
  v73 = v14;
  v74 = v44;
  v75 = v30;
  swift_getOpaqueTypeConformance2();
  v47 = v65;
  v48 = v62;
  sub_25B004E54();
  (*(v61 + 8))(v45, v48);
  (*(v57 + 8))(v42, v46);
  (*(v55 + 8))(v66, v67);
  v49 = v63;
  v63(v40, v14);
  v49(v47, v14);
  v49(v70, v14);
  v49(v69, v14);
  v49(v68, v14);
  v49(v64, v14);
}

uint64_t sub_25AF537F0()
{
  v1 = *(v0 + 48);
  if (v1 <= 0xFD)
  {
    sub_25AF18128(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_25AF538BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_25AF5399C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24AD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24AE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24AE8);
  sub_25AF0F274(&qword_27FA24AF0, &qword_27FA24AD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24AF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24B00);
  sub_25AF0F274(&qword_27FA24B08, &qword_27FA24AF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24B10);
  sub_25B004954();
  sub_25AF538BC(&qword_27FA24020, MEMORY[0x277CDFCB0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24B18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24B20);
  sub_25AF0F274(&qword_27FA24B28, &qword_27FA24B20);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25AF53C78(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  v1[3] = swift_task_alloc();
  v1[4] = sub_25B005B34();
  v1[5] = sub_25B005B24();
  v3 = sub_25B005AE4();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_25AF53D4C, v3, v2);
}

uint64_t sub_25AF53D4C()
{
  v1 = v0[2];
  v2 = *(v1 + 24);
  v0[8] = v2;
  if (v2 >> 60 == 15)
  {
    v3 = v0[3];
    v4 = sub_25B005B64();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);

    v5 = sub_25B005B24();
    v6 = swift_allocObject();
    v7 = MEMORY[0x277D85700];
    v6[2] = v5;
    v6[3] = v7;
    v6[4] = v1;
    v8 = sub_25AF6C7F8(0, 0, v3, &unk_25B00C8E8, v6) | 0x8000000000000000;
    v9 = *(v1 + 24);
    *(v1 + 24) = v8;
    sub_25AF5761C(v9);
    v10 = swift_task_alloc();
    v0[11] = v10;
    *v10 = v0;
    v10[1] = sub_25AF54264;
    v11 = v0[2];

    return sub_25AF53C78(v11);
  }

  else if ((v2 & 0x8000000000000000) != 0)
  {

    v15 = swift_task_alloc();
    v0[9] = v15;
    *v15 = v0;
    v15[1] = sub_25AF53F90;
    v16 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200460](v15, v2 & 0x7FFFFFFFFFFFFFFFLL, v16);
  }

  else
  {

    v13 = *(v1 + 24);
    *(v1 + 24) = v2;
    sub_25AF5761C(v13);

    v14 = v0[1];

    return v14(v2);
  }
}

uint64_t sub_25AF53F90()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_25AF540B0, v3, v2);
}

uint64_t sub_25AF540B0()
{
  v1 = *(v0[2] + 24);
  v0[10] = v1;
  if (v1 < 0)
  {

    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v5 = sub_25B0044C4();
    __swift_project_value_buffer(v5, qword_27FA30C28);
    v6 = sub_25B0044B4();
    v7 = sub_25B005CB4();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[8];
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      MEMORY[0x25F85EC30](v10, -1, -1);
    }

    sub_25AF5761C(v9);

    v11 = v0[1];

    return v11(0);
  }

  else
  {
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_25AF543FC;
    v3 = v0[2];

    return sub_25AF53C78(v3);
  }
}

uint64_t sub_25AF54264(__int16 a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return MEMORY[0x2822009F8](sub_25AF5438C, v4, v3);
}

uint64_t sub_25AF5438C()
{

  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_25AF543FC(__int16 a1)
{
  v2 = *v1;
  *(*v1 + 106) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return MEMORY[0x2822009F8](sub_25AF54524, v4, v3);
}

uint64_t sub_25AF54524()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  sub_25AF5761C(v1);
  sub_25AF5761C(v2);
  v3 = *(v0 + 106);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_25AF545AC(uint64_t a1, __int16 a2)
{
  *(v2 + 104) = a2;
  *(v2 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  *(v2 + 24) = swift_task_alloc();
  *(v2 + 32) = sub_25B005B34();
  *(v2 + 40) = sub_25B005B24();
  v4 = sub_25B005AE4();
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;

  return MEMORY[0x2822009F8](sub_25AF54684, v4, v3);
}

uint64_t sub_25AF54684()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v0 + 64) = v2;
  if (v2 >> 60 == 15)
  {
    v3 = *(v0 + 24);
    v4 = sub_25B005B64();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);

    v5 = sub_25B005B24();
    v6 = swift_allocObject();
    v7 = MEMORY[0x277D85700];
    v6[2] = v5;
    v6[3] = v7;
    v6[4] = v1;
    v8 = sub_25AF6C7F8(0, 0, v3, &unk_25B00C900, v6) | 0x8000000000000000;
    v9 = *(v1 + 24);
    *(v1 + 24) = v8;
    sub_25AF5761C(v9);
    v10 = swift_task_alloc();
    *(v0 + 88) = v10;
    *v10 = v0;
    v10[1] = sub_25AF54BCC;
    v11 = *(v0 + 16);
    v12 = *(v0 + 104);

    return sub_25AF545AC(v11, v12);
  }

  else if ((v2 & 0x8000000000000000) != 0)
  {

    v20 = swift_task_alloc();
    *(v0 + 72) = v20;
    *v20 = v0;
    v20[1] = sub_25AF548E8;
    v21 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200460](v20, v2 & 0x7FFFFFFFFFFFFFFFLL, v21);
  }

  else
  {
    v14 = *(v0 + 104);

    v15 = (v14 & v2);
    v16 = v15 != v14;
    if (v15 == v14)
    {
      v17 = 0;
    }

    else
    {
      v17 = v14;
    }

    v18 = *(v1 + 24);
    *(v1 + 24) = v17 | v2;
    sub_25AF5761C(v18);

    v19 = *(v0 + 8);

    return v19(v16);
  }
}

uint64_t sub_25AF548E8()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_25AF54A08, v3, v2);
}

uint64_t sub_25AF54A08()
{
  v1 = *(*(v0 + 16) + 24);
  *(v0 + 80) = v1;
  if (v1 < 0)
  {

    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v6 = sub_25B0044C4();
    __swift_project_value_buffer(v6, qword_27FA30C28);
    v7 = sub_25B0044B4();
    v8 = sub_25B005CB4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      MEMORY[0x25F85EC30](v9, -1, -1);
    }

    v10 = *(v0 + 64);
    v11 = *(v0 + 104);

    sub_25AF5761C(v10);

    v12 = *(v0 + 8);

    return v12(v11 != 0);
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_25AF54D64;
    v3 = *(v0 + 16);
    v4 = *(v0 + 104);

    return sub_25AF545AC(v3, v4);
  }
}

uint64_t sub_25AF54BCC(char a1)
{
  v2 = *v1;
  *(*v1 + 106) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return MEMORY[0x2822009F8](sub_25AF54CF4, v4, v3);
}

uint64_t sub_25AF54CF4()
{

  v1 = *(v0 + 106);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_25AF54D64(char a1)
{
  v2 = *v1;
  *(*v1 + 107) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return MEMORY[0x2822009F8](sub_25AF54E8C, v4, v3);
}

uint64_t sub_25AF54E8C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  sub_25AF5761C(v1);
  sub_25AF5761C(v2);
  v3 = *(v0 + 107);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_25AF54F14()
{
  v1[2] = v0;
  v1[3] = sub_25B005B34();
  v1[4] = sub_25B005B24();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_25AF54FC4;

  return sub_25AF53C78(v0);
}

uint64_t sub_25AF54FC4(__int16 a1)
{
  v3 = *v1;
  v4 = *v1;

  v5 = swift_task_alloc();
  *(v3 + 48) = v5;
  *v5 = v4;
  v5[1] = sub_25AF55114;

  return sub_25AF554D4(a1);
}

uint64_t sub_25AF55114()
{
  *(*v1 + 56) = v0;

  v3 = sub_25B005AE4();
  if (v0)
  {
    v4 = sub_25AF552D0;
  }

  else
  {
    v4 = sub_25AF55270;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_25AF55270()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25AF552D0()
{
  v16 = v0;

  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_25B0044C4();
  __swift_project_value_buffer(v2, qword_27FA30C28);
  v3 = v1;
  v4 = sub_25B0044B4();
  v5 = sub_25B005CB4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 56);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_25AF8E7DC(0x292865766173, 0xE600000000000000, &v15);
    *(v8 + 12) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_25AF0B000, v4, v5, "%s saving button conditions failed: %@", v8, 0x16u);
    sub_25AF2602C(v9, &qword_27FA23AC0);
    MEMORY[0x25F85EC30](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x25F85EC30](v10, -1, -1);
    MEMORY[0x25F85EC30](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_25AF554D4(__int16 a1)
{
  *(v2 + 72) = v1;
  *(v2 + 128) = a1;
  sub_25B005B34();
  *(v2 + 80) = sub_25B005B24();
  v4 = sub_25B005AE4();
  *(v2 + 88) = v4;
  *(v2 + 96) = v3;

  return MEMORY[0x2822009F8](sub_25AF55570, v4, v3);
}

uint64_t sub_25AF55570()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24B60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25B00A900;
  *(inited + 32) = 0x6F697469646E6F63;
  *(inited + 40) = 0xEA0000000000736ELL;
  *(inited + 48) = v2;
  *(v0 + 104) = sub_25AF6BEE8(inited);
  swift_setDeallocating();
  sub_25AF2602C(inited + 32, &qword_27FA24B68);
  v4 = *(v1 + 16);
  *(v0 + 112) = v4;

  return MEMORY[0x2822009F8](sub_25AF55660, v4, 0);
}

uint64_t sub_25AF55660()
{
  sub_25AF56DD4(v0[13], 0xD000000000000013, 0x800000025B017650);
  v0[15] = 0;

  v1 = v0[11];
  v2 = v0[12];

  return MEMORY[0x2822009F8](sub_25AF55708, v1, v2);
}

uint64_t sub_25AF55708()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25AF5576C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25AF557D0()
{

  sub_25AF5761C(*(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_25AF55840(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF && *(a1 + 8))
  {
    return (*a1 + 15);
  }

  v3 = (((*a1 >> 60) >> 3) & 0xFFFFFFF1 | (2 * ((*a1 >> 60) & 7))) ^ 0xF;
  if (v3 >= 0xE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25AF55894(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *result = a2 - 15;
    if (a3 >= 0xF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 1) & 7) - 8 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_25AF55914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_25B005B34();
  v4[4] = sub_25B005B24();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_25AF559C4;

  return sub_25AF55D74();
}

uint64_t sub_25AF559C4(__int16 a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_25B005AE4();
    v7 = v6;
    v8 = sub_25AF55BB8;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_25B005AE4();
    v7 = v9;
    v8 = sub_25AF55B44;
  }

  return MEMORY[0x2822009F8](v8, v5, v7);
}

uint64_t sub_25AF55B44()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 16);
  v3 = *(v2 + 24);
  *(v2 + 24) = v1;
  sub_25AF5761C(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25AF55BB8()
{

  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_25B0044C4();
  __swift_project_value_buffer(v2, qword_27FA30C28);
  v3 = v1;
  v4 = sub_25B0044B4();
  v5 = sub_25B005CB4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_25AF0B000, v4, v5, "Failed to load buttons' display conditions with error: %@", v8, 0xCu);
    sub_25AF2602C(v9, &qword_27FA23AC0);
    MEMORY[0x25F85EC30](v9, -1, -1);
    MEMORY[0x25F85EC30](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[2];
  v13 = *(v12 + 24);
  *(v12 + 24) = 0;
  sub_25AF5761C(v13);
  v14 = v0[1];

  return v14();
}

uint64_t sub_25AF55D74()
{
  v1[2] = v0;
  sub_25B005B34();
  v1[3] = sub_25B005B24();
  v3 = sub_25B005AE4();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_25AF55E0C, v3, v2);
}

uint64_t sub_25AF55E0C()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](sub_25AF55E30, v1, 0);
}

uint64_t sub_25AF55E30()
{
  v0[7] = sub_25AF566C0(0xD000000000000013, 0x800000025B017650);
  v0[8] = 0;
  v1 = v0[4];
  v2 = v0[5];

  return MEMORY[0x2822009F8](sub_25AF55ED0, v1, v2);
}

uint64_t sub_25AF55ED0()
{
  v1 = *(v0 + 56);

  if (*(v1 + 16) && (v2 = sub_25AF8EE80(0x6F697469646E6F63, 0xEA0000000000736ELL), (v3 & 1) != 0))
  {
    v4 = *(*(*(v0 + 56) + 56) + 2 * v2);

    v5 = *(v0 + 8);

    return v5(v4);
  }

  else
  {
    sub_25AF57640();
    swift_allocError();
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_25AF55FF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25AF5605C()
{
  sub_25B006294();
  MEMORY[0x25F85E0A0](0);
  return sub_25B0062D4();
}

uint64_t sub_25AF560C8()
{
  sub_25B006294();
  MEMORY[0x25F85E0A0](0);
  return sub_25B0062D4();
}

uint64_t sub_25AF56124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F697469646E6F63 && a2 == 0xEA0000000000736ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25B006174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25AF561CC(uint64_t a1)
{
  v2 = sub_25AF57C8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25AF56208(uint64_t a1)
{
  v2 = sub_25AF57C8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25AF56244(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24BD8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25AF57C8C();
  sub_25B006324();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24BE8);
  sub_25AF57EF0(&qword_27FA24BF0, sub_25AF57CE0);
  sub_25B006104();
  return (*(v5 + 8))(v7, v4);
}

void *sub_25AF563D8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_25AF57D34(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

BOOL sub_25AF56520(_WORD *a1, unsigned __int16 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int16 *sub_25AF56550@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

unsigned __int16 *sub_25AF5657C@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

_WORD *sub_25AF56650@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t sub_25AF56680@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v3 = sub_25AFA8338(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_25AF566C0(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v7 = sub_25B0044C4();
  __swift_project_value_buffer(v7, qword_27FA30C28);

  v8 = sub_25B0044B4();
  v9 = sub_25B005C94();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_25AF8E7DC(0xD00000000000001CLL, 0x800000025B017690, &v23);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_25AF8E7DC(a1, a2, &v23);
    _os_log_impl(&dword_25AF0B000, v8, v9, "%s key: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v11, -1, -1);
    MEMORY[0x25F85EC30](v10, -1, -1);
  }

  v12 = *(v4 + 120);
  v13 = sub_25B005924();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24B78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25B00A900;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_25AF19100(inited);
  swift_setDeallocating();
  sub_25AF574BC(inited + 32);
  v15 = sub_25B005C24();

  [v12 synchronizeNanoDomain:v13 keys:v15];

  v16 = *(v4 + 112);
  v17 = sub_25B005924();
  v18 = [v16 dataForKey_];

  if (v18)
  {
    v19 = sub_25B004154();
    v21 = v20;

    sub_25B004044();
    swift_allocObject();
    sub_25B004034();
    sub_25AF57694();
    sub_25B004024();

    result = sub_25AF57510(v19, v21);
    if (!v3)
    {
      return v23;
    }
  }

  else
  {
    sub_25AF57640();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25AF56A28(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v7 = sub_25B0044C4();
  __swift_project_value_buffer(v7, qword_27FA30C28);

  v8 = sub_25B0044B4();
  v9 = sub_25B005C94();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_25AF8E7DC(0xD00000000000001CLL, 0x800000025B017690, &v23);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_25AF8E7DC(a1, a2, &v23);
    _os_log_impl(&dword_25AF0B000, v8, v9, "%s key: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v11, -1, -1);
    MEMORY[0x25F85EC30](v10, -1, -1);
  }

  v12 = *(v4 + 120);
  v13 = sub_25B005924();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24B78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25B00A900;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_25AF19100(inited);
  swift_setDeallocating();
  sub_25AF574BC(inited + 32);
  v15 = sub_25B005C24();

  [v12 synchronizeNanoDomain:v13 keys:v15];

  v16 = *(v4 + 112);
  v17 = sub_25B005924();
  v18 = [v16 dataForKey_];

  if (v18)
  {
    v19 = sub_25B004154();
    v21 = v20;

    sub_25B004044();
    swift_allocObject();
    sub_25B004034();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24B90);
    sub_25AF57A40(&qword_27FA24BA8, sub_25AF57AB8);
    sub_25B004024();

    result = sub_25AF57510(v19, v21);
    if (!v3)
    {
      return v23;
    }
  }

  else
  {
    sub_25AF57640();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25AF56DD4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v26[8] = a1;
  v5 = v3;
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v8 = sub_25B0044C4();
  __swift_project_value_buffer(v8, qword_27FA30C28);

  v9 = sub_25B0044B4();
  v10 = sub_25B005C94();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_25AF8E7DC(0xD000000000000017, 0x800000025B017670, v26);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_25AF8E7DC(a2, a3, v26);
    _os_log_impl(&dword_25AF0B000, v9, v10, "%s key: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v12, -1, -1);
    MEMORY[0x25F85EC30](v11, -1, -1);
  }

  sub_25B004074();
  swift_allocObject();
  sub_25B004064();
  sub_25AF57468();
  v13 = sub_25B004054();
  if (!v4)
  {
    v15 = *(v5 + 112);
    v25 = v13;
    v16 = v14;
    v17 = sub_25B004144();
    v18 = v5;
    v19 = sub_25B005924();
    [v15 setObject:v17 forKey:v19];

    v20 = *(v18 + 120);
    v21 = sub_25B005924();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24B78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25B00A900;
    *(inited + 32) = a2;
    *(inited + 40) = a3;

    sub_25AF19100(inited);
    swift_setDeallocating();
    sub_25AF574BC(inited + 32);
    v23 = sub_25B005C24();

    [v20 synchronizeNanoDomain:v21 keys:v23];

    sub_25AF57510(v25, v16);
  }
}

uint64_t sub_25AF570FC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v27[8] = a1;
  v5 = v3;
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v8 = sub_25B0044C4();
  __swift_project_value_buffer(v8, qword_27FA30C28);

  v9 = sub_25B0044B4();
  v10 = sub_25B005C94();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_25AF8E7DC(0xD000000000000017, 0x800000025B017670, v27);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_25AF8E7DC(a2, a3, v27);
    _os_log_impl(&dword_25AF0B000, v9, v10, "%s key: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v12, -1, -1);
    MEMORY[0x25F85EC30](v11, -1, -1);
  }

  sub_25B004074();
  swift_allocObject();
  sub_25B004064();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24B90);
  sub_25AF57A40(&qword_27FA24B98, sub_25AF579EC);
  v13 = sub_25B004054();
  if (!v4)
  {
    v15 = *(v5 + 112);
    v26 = v13;
    v16 = v14;
    v17 = sub_25B004144();
    v18 = a2;
    v19 = v5;
    v20 = sub_25B005924();
    [v15 setObject:v17 forKey:v20];

    v21 = *(v19 + 120);
    v22 = sub_25B005924();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24B78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25B00A900;
    *(inited + 32) = v18;
    *(inited + 40) = a3;

    sub_25AF19100(inited);
    swift_setDeallocating();
    sub_25AF574BC(inited + 32);
    v24 = sub_25B005C24();

    [v21 synchronizeNanoDomain:v22 keys:v24];

    sub_25AF57510(v26, v16);
  }
}

unint64_t sub_25AF57468()
{
  result = qword_27FA24B70;
  if (!qword_27FA24B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24B70);
  }

  return result;
}

uint64_t sub_25AF57510(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25AF57568(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AF19A24;

  return sub_25AF55914(a1, v4, v5, v6);
}

uint64_t sub_25AF5761C(uint64_t result)
{
  if (result >> 60 != 15)
  {
    return sub_25AF57630(result);
  }

  return result;
}

uint64_t sub_25AF57630(uint64_t result)
{
  if (result < 0)
  {
  }

  return result;
}

unint64_t sub_25AF57640()
{
  result = qword_27FA24B80;
  if (!qword_27FA24B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24B80);
  }

  return result;
}

unint64_t sub_25AF57694()
{
  result = qword_27FA24B88;
  if (!qword_27FA24B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24B88);
  }

  return result;
}

uint64_t sub_25AF576E8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 32);
  if (!(v2 >> 6))
  {
    if (v1 <= 11)
    {
      switch(v1)
      {
        case 1:
          v8 = 0;
          v9 = 4;
          return v9 & 0xFFFEFFFF | ((v8 & 1) << 16);
        case 6:
          v8 = 0;
          v9 = 128;
          return v9 & 0xFFFEFFFF | ((v8 & 1) << 16);
        case 10:
          v8 = 0;
          v9 = 16;
          return v9 & 0xFFFEFFFF | ((v8 & 1) << 16);
      }
    }

    else if (v1 > 21)
    {
      if (v1 == 22)
      {
        v8 = 0;
        v9 = 1;
        return v9 & 0xFFFEFFFF | ((v8 & 1) << 16);
      }

      if (v1 == 100)
      {
        v8 = 0;
        v9 = 32;
        return v9 & 0xFFFEFFFF | ((v8 & 1) << 16);
      }
    }

    else
    {
      if (v1 == 12)
      {
        v8 = 0;
        v9 = 8;
        return v9 & 0xFFFEFFFF | ((v8 & 1) << 16);
      }

      if (v1 == 18)
      {
        v8 = 0;
        v9 = 2;
        return v9 & 0xFFFEFFFF | ((v8 & 1) << 16);
      }
    }

LABEL_28:
    v9 = 0;
    v8 = 1;
    return v9 & 0xFFFEFFFF | ((v8 & 1) << 16);
  }

  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (v2 >> 6 != 1)
  {
    if (v2)
    {
      v10 = v1 == 0xD000000000000012 && v4 == 0x800000025B0176B0;
      if (v10 || (sub_25B006174()) && (v3 == 0xD000000000000022 && v5 == 0x800000025B0168E0 || (sub_25B006174()))
      {
        v8 = 0;
        v9 = 64;
        return v9 & 0xFFFEFFFF | ((v8 & 1) << 16);
      }
    }

    goto LABEL_28;
  }

  v12[5] = 0xD000000000000012;
  v12[6] = 0x800000025B0176B0;
  v12[7] = 0xD000000000000022;
  v12[8] = 0x800000025B0168E0;
  v13 = 1;
  v12[0] = v1;
  v12[1] = v4;
  v12[2] = v3;
  v12[3] = v5;

  v6 = v1;
  v7 = sub_25AF5A6FC(v12);
  sub_25AF18128(v1, v4, v3, v5, v2);
  v8 = v7 ^ 1;
  if (v7)
  {
    v9 = 64;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 0xFFFEFFFF | ((v8 & 1) << 16);
}

uint64_t objectdestroyTm_2()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25AF57938(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AF18ADC;

  return sub_25AF55914(a1, v4, v5, v6);
}

unint64_t sub_25AF579EC()
{
  result = qword_27FA24BA0;
  if (!qword_27FA24BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24BA0);
  }

  return result;
}

uint64_t sub_25AF57A40(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24B90);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25AF57AB8()
{
  result = qword_27FA24BB0;
  if (!qword_27FA24BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24BB0);
  }

  return result;
}

unint64_t sub_25AF57B30()
{
  result = qword_27FA24BB8;
  if (!qword_27FA24BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24BB8);
  }

  return result;
}

unint64_t sub_25AF57B88()
{
  result = qword_27FA24BC0;
  if (!qword_27FA24BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24BC0);
  }

  return result;
}

unint64_t sub_25AF57BE0()
{
  result = qword_27FA24BC8;
  if (!qword_27FA24BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24BC8);
  }

  return result;
}

unint64_t sub_25AF57C38()
{
  result = qword_27FA24BD0;
  if (!qword_27FA24BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24BD0);
  }

  return result;
}

unint64_t sub_25AF57C8C()
{
  result = qword_27FA24BE0;
  if (!qword_27FA24BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24BE0);
  }

  return result;
}

unint64_t sub_25AF57CE0()
{
  result = qword_27FA24BF8;
  if (!qword_27FA24BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24BF8);
  }

  return result;
}

void *sub_25AF57D34(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24C00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25AF57C8C();
  sub_25B006304();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24BE8);
    sub_25AF57EF0(&qword_27FA24C08, sub_25AF57F74);
    sub_25B0060B4();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v7;
}

uint64_t sub_25AF57EF0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24BE8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25AF57F74()
{
  result = qword_27FA24C10;
  if (!qword_27FA24C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24C10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ButtonConditions.PlistContainer.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ButtonConditions.PlistContainer.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_25AF580B4()
{
  result = qword_27FA24C18;
  if (!qword_27FA24C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24C18);
  }

  return result;
}

unint64_t sub_25AF5810C()
{
  result = qword_27FA24C20;
  if (!qword_27FA24C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24C20);
  }

  return result;
}

unint64_t sub_25AF58164()
{
  result = qword_27FA24C28;
  if (!qword_27FA24C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24C28);
  }

  return result;
}

uint64_t type metadata accessor for ButtonAXString()
{
  result = qword_27FA24C30;
  if (!qword_27FA24C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25AF5825C()
{
  result = sub_25B0040A4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25AF582D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24240);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25AF58364(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24240);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_25AF58400()
{
  sub_25AF5846C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25AF5846C()
{
  if (!qword_27FA24268)
  {
    sub_25B004844();
    v0 = sub_25B0045A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA24268);
    }
  }
}

uint64_t sub_25AF584E0()
{
  v0 = type metadata accessor for DisplayedButtonsView.ButtonsInSection(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ButtonAndLabel.ParentState(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25AF3D79C(&v5[*(v6 + 28)]);
  *v5 = 1;
  sub_25AF5A0F0(v5, v2, type metadata accessor for ButtonAndLabel.ParentState);
  v7 = &v2[*(v0 + 20)];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  sub_25B004F44();
  sub_25B004F64();
  sub_25B004F84();
  sub_25B004F84();
  sub_25B004F84();
  sub_25B004F84();
  sub_25AF59E38(&qword_27FA24C68, type metadata accessor for DisplayedButtonsView.ButtonsInSection);
  sub_25B005164();
  sub_25AF59A9C(v2, type metadata accessor for DisplayedButtonsView.ButtonsInSection);
  return sub_25AF59A9C(v5, type metadata accessor for ButtonAndLabel.ParentState);
}

uint64_t sub_25AF586B0()
{
  v0 = sub_25B004C94();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24C58);
  MEMORY[0x28223BE20](v4);
  v6 = v8 - v5;
  sub_25AF584E0();
  v8[0] = 0xD00000000000001ELL;
  v8[1] = 0x800000025B016770;
  sub_25B004D74();
  sub_25AF58838();
  sub_25B0051D4();
  (*(v1 + 8))(v3, v0);
  return sub_25AF58998(v6);
}

unint64_t sub_25AF58838()
{
  result = qword_27FA24C60;
  if (!qword_27FA24C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24C58);
    type metadata accessor for DisplayedButtonsView.ButtonsInSection(255);
    sub_25AF59E38(&qword_27FA24C68, type metadata accessor for DisplayedButtonsView.ButtonsInSection);
    swift_getOpaqueTypeConformance2();
    sub_25AF58944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24C60);
  }

  return result;
}

unint64_t sub_25AF58944()
{
  result = qword_27FA24C70;
  if (!qword_27FA24C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24C70);
  }

  return result;
}

uint64_t sub_25AF58998(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24C58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25AF58A00()
{
  v0 = sub_25B0055F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24CF0);
  sub_25B005604();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25B00CD00;
  v8 = xmmword_25B00CD10;
  *v3 = xmmword_25B00CD10;
  v5 = *MEMORY[0x277CDF108];
  v6 = *(v1 + 104);
  v6(v3, v5, v0);
  sub_25B005614();
  *v3 = v8;
  v6(v3, v5, v0);
  result = sub_25B005614();
  qword_27FA24C40 = v4;
  return result;
}

void sub_25AF58BE4(uint64_t a1@<X8>)
{
  v2 = sub_25B004CC4();
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24C88);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  if (qword_27FA30B10)
  {

    v7 = sub_25AFEC930();

    v15 = v7;
    sub_25AFC30E4(v7);
    if (qword_27FA23720 != -1)
    {
      swift_once();
    }

    v14 = v4;
    v16 = v3;
    v17 = a1;
    if (qword_27FA30B10)
    {
      v8 = swift_beginAccess();
      v13[1] = v13;
      MEMORY[0x28223BE20](v8);

      sub_25B004C24();
      v18 = 0;
      sub_25AF59E38(&qword_27FA24C90, MEMORY[0x277CE0428]);
      sub_25B006354();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24C98);
      sub_25AF59E80();
      sub_25B005744();

      v9 = sub_25B005704();
      v10 = v17;
      (*(v14 + 32))(v17, v6, v16);
      v11 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24CD8) + 36));
      v12 = v15;
      *v11 = v9;
      v11[1] = v12;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_25AF58EFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayedButtonsView.ButtonsInSection(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10[1] = a1;
  sub_25AF5A0F0(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DisplayedButtonsView.ButtonsInSection);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_25AF5A338(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for DisplayedButtonsView.ButtonsInSection);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24428);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24CB0);
  sub_25AF0F274(&qword_27FA24CE0, &qword_27FA24428);
  sub_25AF59F04();
  sub_25AF5A2DC();
  sub_25B005584();
}

uint64_t sub_25AF59140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a3;
  v5 = type metadata accessor for ButtonAndLabel.ParentState(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25B004B14();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v46 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for ButtonAndLabel(0);
  MEMORY[0x28223BE20](v60);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24450);
  MEMORY[0x28223BE20](v13 - 8);
  v54 = &v45 - v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24CC0);
  MEMORY[0x28223BE20](v52);
  v53 = &v45 - v15;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24CB0);
  MEMORY[0x28223BE20](v50);
  v51 = &v45 - v16;
  v17 = *a1;
  v47 = *(a1 + 8);
  v18 = *(a1 + 24);
  v58 = *(a1 + 16);
  v59 = v17;
  v57 = v18;
  v56 = *(a1 + 32);
  v49 = *(a1 + 48);
  v19 = *(a1 + 72);
  v63 = *(a1 + 80);
  v64 = v19;
  v20 = *(a1 + 96);
  v62 = *(a1 + 88);
  v21 = *(a1 + 104);
  v48 = *(a1 + 105);
  sub_25B005B34();
  v55 = sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = (a2 + *(type metadata accessor for DisplayedButtonsView.ButtonsInSection(0) + 20));
  v23 = *v22;
  if (*(v22 + 8) == 1)
  {
    v46 = *v22;
  }

  else
  {

    sub_25B005CC4();
    v24 = v8;
    v25 = sub_25B004F24();
    sub_25B0044A4();

    v26 = v46;
    sub_25B004B04();
    swift_getAtKeyPath();
    sub_25AF241CC(v23, 0);
    (*(v9 + 8))(v26, v24);
    v46 = v65;
  }

  result = sub_25AF5A0F0(a2, v7, type metadata accessor for ButtonAndLabel.ParentState);
  v28 = qword_27FA30B10;
  v45 = v7;
  if (qword_27FA30B10)
  {
    swift_getKeyPath();
    v65 = v28;
    sub_25AF59E38(&qword_27FA25250, type metadata accessor for GlanceModel);
    v29 = v28;
    sub_25B004234();

    v30 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__editMode;
    swift_beginAccess();
    LOBYTE(v30) = v29[v30];

    v31 = v58;
    v32 = v59;
    v33 = v47;
    *v12 = v59;
    *(v12 + 1) = v33;
    v34 = v57;
    *(v12 + 2) = v31;
    *(v12 + 3) = v34;
    v35 = v56;
    v12[32] = v56;
    v36 = v63;
    *(v12 + 5) = v64;
    *(v12 + 6) = v36;
    *(v12 + 7) = v62;
    *(v12 + 8) = v20;
    v12[72] = v21;
    v12[73] = v48;
    *(v12 + 10) = v49;
    v12[88] = v46;
    v37 = v60;
    sub_25AF5A338(v45, &v12[*(v60 + 36)], type metadata accessor for ButtonAndLabel.ParentState);
    v12[*(v37 + 40)] = v30;
    v38 = v54;
    sub_25AF5A338(v12, v54, type metadata accessor for ButtonAndLabel);
    v39 = v38;
    v40 = v53;
    sub_25AF25B0C(v39, v53, &qword_27FA24450);
    v41 = v40 + *(v52 + 36);
    *v41 = v32;
    *(v41 + 8) = v33;
    *(v41 + 16) = v31;
    *(v41 + 24) = v34;
    *(v41 + 32) = v35;
    *(v41 + 33) = 0;
    v42 = v40;
    v43 = v51;
    sub_25AF25B0C(v42, v51, &qword_27FA24CC0);
    v44 = v43 + *(v50 + 36);
    *v44 = v32;
    *(v44 + 8) = v33;
    *(v44 + 16) = v31;
    *(v44 + 24) = v34;
    *(v44 + 32) = v35;
    *(v44 + 33) = 256;
    sub_25AF25B0C(v43, v61, &qword_27FA24CB0);
    sub_25AF181DC(v32, v33, v31, v34, v35);
    sub_25AF181DC(v32, v33, v31, v34, v35);
    sub_25AF181DC(v32, v33, v31, v34, v35);
    sub_25AF1D7EC(v64, v63, v62, v20, v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25AF5977C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (qword_27FA30B10)
  {
    v4 = result;
    v5 = *(v2 + 33);
    v7 = *(v2 + 16);
    v6 = *(v2 + 24);
    v9 = *v2;
    v8 = *(v2 + 8);
    v10 = *(v2 + 32);
    v16 = v9;
    v17 = v8;
    v18 = v7;
    v19 = v6;
    v20 = v10;
    v11 = qword_27FA30B10;
    sub_25AF181DC(v9, v8, v7, v6, v10);
    v12 = sub_25AF730A0(&v16, v5);

    sub_25AF18128(v16, v17, v18, v19, v20);
    swift_getKeyPath();
    v16 = v12;
    sub_25AF59E38(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
    sub_25B004234();

    v13 = v12[OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__isLifted];

    if (v13)
    {
      v14 = 1.0;
    }

    else
    {
      v14 = 0.0;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24D18);
    (*(*(v15 - 8) + 16))(a2, v4, v15);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24D20);
    *(a2 + *(result + 36)) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25AF5993C()
{
  v0 = qword_27FA30B10;
  if (qword_27FA30B10)
  {
    swift_getKeyPath();
    sub_25AF59E38(&qword_27FA25250, type metadata accessor for GlanceModel);
    v1 = v0;
    sub_25B004234();

    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24CF8);
    sub_25AF0F274(&qword_27FA24D00, &qword_27FA24CF8);
    return sub_25B005274();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25AF59A9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25AF59B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ButtonAndLabel.ParentState(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25AF59BF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ButtonAndLabel.ParentState(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_25AF59CAC()
{
  type metadata accessor for ButtonAndLabel.ParentState(319);
  if (v0 <= 0x3F)
  {
    sub_25AF59D30();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25AF59D30()
{
  if (!qword_27FA24270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24278);
    v0 = sub_25B0045A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA24270);
    }
  }
}

uint64_t sub_25AF59D94()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24C58);
  sub_25AF58838();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25AF59E38(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25AF59E80()
{
  result = qword_27FA24CA0;
  if (!qword_27FA24CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24C98);
    sub_25AF59F04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24CA0);
  }

  return result;
}

unint64_t sub_25AF59F04()
{
  result = qword_27FA24CA8;
  if (!qword_27FA24CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24CB0);
    sub_25AF59F90();
    sub_25AF5A09C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24CA8);
  }

  return result;
}

unint64_t sub_25AF59F90()
{
  result = qword_27FA24CB8;
  if (!qword_27FA24CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24CC0);
    sub_25AF0F274(&qword_27FA24458, &qword_27FA24450);
    sub_25AF5A048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24CB8);
  }

  return result;
}

unint64_t sub_25AF5A048()
{
  result = qword_27FA24CC8;
  if (!qword_27FA24CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24CC8);
  }

  return result;
}

unint64_t sub_25AF5A09C()
{
  result = qword_27FA24CD0;
  if (!qword_27FA24CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24CD0);
  }

  return result;
}

uint64_t sub_25AF5A0F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25AF5A158()
{
  v1 = (type metadata accessor for DisplayedButtonsView.ButtonsInSection(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(type metadata accessor for ButtonAndLabel.ParentState(0) + 20);
  v6 = sub_25B004844();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  sub_25AF241CC(*(v0 + v3 + v1[7]), *(v0 + v3 + v1[7] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25AF5A25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DisplayedButtonsView.ButtonsInSection(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_25AF59140(a1, v6, a2);
}

unint64_t sub_25AF5A2DC()
{
  result = qword_27FA24CE8;
  if (!qword_27FA24CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24CE8);
  }

  return result;
}

uint64_t sub_25AF5A338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25AF5A3B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
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

uint64_t sub_25AF5A408(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_25AF5A464()
{
  result = qword_27FA24D08;
  if (!qword_27FA24D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24CD8);
    sub_25AF0F274(&qword_27FA24D10, &qword_27FA24C88);
    sub_25AF0F274(&qword_27FA243E8, &qword_27FA243F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24D08);
  }

  return result;
}

uint64_t sub_25AF5A548()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24CF8);
  sub_25AF0F274(&qword_27FA24D00, &qword_27FA24CF8);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_25AF5A608()
{
  result = qword_27FA24D28;
  if (!qword_27FA24D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24D20);
    sub_25AF0F274(&qword_27FA24D30, &qword_27FA24D18);
    sub_25AF0F274(&qword_27FA23C00, &qword_27FA23C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24D28);
  }

  return result;
}

uint64_t sub_25AF5A6FC(void **a1)
{
  v2 = *a1;
  v3 = *v1;
  if (*(v1 + 32))
  {
    v5 = *(v1 + 8);
    v4 = *(v1 + 16);
    v6 = *(v1 + 24);

    v7 = [v2 extensionIdentity];
    v8 = *MEMORY[0x277CFA130];
    swift_beginAccess();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23B28);
    if ((*(*(v9 - 8) + 48))(&v7[v8], 1, v9))
    {
      swift_endAccess();

      v10 = 0;
    }

    else
    {
      v14 = sub_25B004294();
      v16 = v15;
      swift_endAccess();

      if (v3 == v14 && v5 == v16)
      {

        v10 = 1;
      }

      else
      {
        v10 = sub_25B006174();
      }
    }

    v18 = [v2 kind];
    v19 = sub_25B005934();
    v21 = v20;

    if (v4 == v19 && v6 == v21)
    {
      v22 = 1;
    }

    else
    {
      v22 = sub_25B006174();
    }

    return v10 & v22 & 1;
  }

  else
  {
    v11 = v3;
    sub_25AF18BD4(0, &qword_27FA27200);
    v12 = sub_25B005DE4();

    return v12 & 1;
  }
}

uint64_t sub_25AF5A930(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24DC8);
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24DD0);
  v18 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24DD8);
  v21 = *(v10 - 8);
  v22 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v17 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25AF5C6BC();
  sub_25B006324();
  v13 = *v2;
  v17[1] = v2[2];
  if (v2[4])
  {
    v29 = 1;
    sub_25AF5C710();
    sub_25B0060D4();
    v28 = 0;
    v14 = v20;
    sub_25B0060E4();
    if (!v14)
    {
      v27 = 1;
      sub_25B0060E4();
    }

    (*(v19 + 8))(v6, v4);
  }

  else
  {
    v26 = 0;
    sub_25AF5C764();
    sub_25B0060D4();
    v23 = v13;
    v25 = 0;
    sub_25AF18BD4(0, &qword_27FA23A78);
    sub_25AF5C7B8(&qword_27FA24DE0);
    v15 = v20;
    sub_25B006104();
    if (!v15)
    {
      v24 = 1;
      sub_25B0060E4();
    }

    (*(v18 + 8))(v9, v7);
  }

  return (*(v21 + 8))(v12, v22);
}

uint64_t sub_25AF5ACF4()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_25AF5AD28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_25B006174() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025B0160B0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25B006174();

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

uint64_t sub_25AF5AE04(uint64_t a1)
{
  v2 = sub_25AF5C764();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25AF5AE40(uint64_t a1)
{
  v2 = sub_25AF5C764();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25AF5AE9C()
{
  if (*v0)
  {
    return 0x676E697274536469;
  }

  else
  {
    return 0x44496F6E6F726863;
  }
}

uint64_t sub_25AF5AEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x44496F6E6F726863 && a2 == 0xE800000000000000;
  if (v6 || (sub_25B006174() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E697274536469 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25B006174();

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

uint64_t sub_25AF5AFCC(uint64_t a1)
{
  v2 = sub_25AF5C6BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25AF5B008(uint64_t a1)
{
  v2 = sub_25AF5C6BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25AF5B044()
{
  if (*v0)
  {
    return 1684957547;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_25AF5B07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000025B0177A0 == a2 || (sub_25B006174() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_25B006174();

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

uint64_t sub_25AF5B164(uint64_t a1)
{
  v2 = sub_25AF5C710();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25AF5B1A0(uint64_t a1)
{
  v2 = sub_25AF5C710();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_25AF5B1E8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_25AF5BBB0(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_25AF5B248(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_25AF5BA8C(v5, v7) & 1;
}

unint64_t sub_25AF5B294()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (*(v0 + 32))
  {
    v4 = *(v0 + 24);

    sub_25B005F24();

    v11 = 0xD000000000000019;
    MEMORY[0x25F85D7B0](v2, v1);

    MEMORY[0x25F85D7B0](0x203A646E696B203BLL, 0xE800000000000000);
    MEMORY[0x25F85D7B0](v3, v4);

    MEMORY[0x25F85D7B0](15913, 0xE200000000000000);
  }

  else
  {
    v11 = 0;
    v5 = v2;

    sub_25B005F24();
    MEMORY[0x25F85D7B0](0xD000000000000020, 0x800000025B017720);
    v6 = [v5 description];
    v7 = sub_25B005934();
    v9 = v8;

    MEMORY[0x25F85D7B0](v7, v9);

    MEMORY[0x25F85D7B0](0xD000000000000014, 0x800000025B017750);
    MEMORY[0x25F85D7B0](v1, v3);

    MEMORY[0x25F85D7B0](62, 0xE100000000000000);
  }

  return v11;
}

uint64_t sub_25AF5B464(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24D58);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25AF5C39C();
  sub_25B006324();
  v8 = *(v2 + 16);
  v10[0] = *v2;
  v10[1] = v8;
  v11 = *(v2 + 32);
  sub_25AF5C444();
  sub_25B006104();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_25AF5B5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25B006174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25AF5B650(uint64_t a1)
{
  v2 = sub_25AF5C39C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25AF5B68C(uint64_t a1)
{
  v2 = sub_25AF5C39C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25AF5B6C8()
{
  v1 = *(v0 + 32);
  sub_25B006294();
  if (v1)
  {
    MEMORY[0x25F85E0A0](1);
    sub_25B005994();
  }

  else
  {
    MEMORY[0x25F85E0A0](0);
    sub_25B005DF4();
  }

  sub_25B005994();
  return sub_25B0062D4();
}

uint64_t sub_25AF5B774()
{
  if (*(v0 + 32))
  {
    MEMORY[0x25F85E0A0](1);
    sub_25B005994();
  }

  else
  {
    MEMORY[0x25F85E0A0](0);
    sub_25B005DF4();
  }

  return sub_25B005994();
}

uint64_t sub_25AF5B818()
{
  v1 = *(v0 + 32);
  sub_25B006294();
  if (v1)
  {
    MEMORY[0x25F85E0A0](1);
    sub_25B005994();
  }

  else
  {
    MEMORY[0x25F85E0A0](0);
    sub_25B005DF4();
  }

  sub_25B005994();
  return sub_25B0062D4();
}

double sub_25AF5B8C0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_25AF5C20C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

BOOL sub_25AF5B924(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      return 0;
    }

    v6 = *(a1 + 24);
    v7 = *(a2 + 24);
    v8 = *a1 == *a2 && v2 == v4;
    if (!v8 && (sub_25B006174() & 1) == 0)
    {
      return 0;
    }

    if (v3 == v5 && v6 == v7)
    {
      return 1;
    }
  }

  else
  {
    if (*(a2 + 32))
    {
      return 0;
    }

    sub_25AF18BD4(0, &qword_27FA27200);
    if ((sub_25B005DE4() & 1) == 0)
    {
      return 0;
    }

    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }
  }

  return (sub_25B006174() & 1) != 0;
}

unint64_t sub_25AF5BA38()
{
  result = qword_27FA24D38;
  if (!qword_27FA24D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24D38);
  }

  return result;
}

uint64_t sub_25AF5BA8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (*(a1 + 32))
  {
    if (*(a2 + 32))
    {
      v4 = *(a1 + 24);
      v5 = *(a2 + 16);
      v6 = *(a2 + 24);
      v7 = *a1 == *a2 && v2 == *(a2 + 8);
      if (v7 || (sub_25B006174() & 1) != 0)
      {
        if (v3 != v5 || v4 != v6)
        {
          goto LABEL_19;
        }

        return 1;
      }
    }

    return 0;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  v10 = *(a2 + 8);
  v9 = *(a2 + 16);
  sub_25AF18BD4(0, &qword_27FA27200);
  if ((sub_25B005DE4() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v10 && v3 == v9)
  {
    return 1;
  }

LABEL_19:

  return sub_25B006174();
}

uint64_t sub_25AF5BBB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24D88);
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v42 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24D90);
  v46 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24D98);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  v13 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_25AF5C6BC();
  v14 = v49;
  sub_25B006304();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v50);
  }

  v49 = v10;
  v15 = sub_25B0060C4();
  v16 = v9;
  if (*(v15 + 16) != 1)
  {
    v22 = sub_25B005F64();
    swift_allocError();
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24DA8);
    *v24 = &type metadata for GlancePendingID.Kind;
    sub_25B006064();
    sub_25B005F54();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
    swift_willThrow();
    (*(v49 + 8))(v12, v9);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v50);
  }

  v44 = v15;
  v17 = *(v15 + 32);
  if (v17)
  {
    v57 = 1;
    sub_25AF5C710();
    sub_25B006054();
    v18 = v12;
    v56 = 0;
    v19 = v48;
    v20 = sub_25B0060A4();
    v21 = v49;
    v46 = v28;
    v29 = v20;
    v43 = v16;
    v55 = 1;
    v30 = sub_25B0060A4();
    v31 = (v21 + 8);
    v37 = v36;
    v49 = v30;
    (*(v47 + 8))(v5, v19);
    (*v31)(v18, v43);
    swift_unknownObjectRelease();
    v38 = v29;
  }

  else
  {
    v54 = 0;
    sub_25AF5C764();
    v25 = v8;
    sub_25B006054();
    v43 = v16;
    sub_25AF18BD4(0, &qword_27FA23A78);
    v53 = 0;
    sub_25AF5C7B8(&qword_27FA24DC0);
    v27 = v6;
    sub_25B0060B4();
    v32 = v12;
    v38 = v51;
    v52 = 1;
    v33 = sub_25B0060A4();
    v34 = (v46 + 8);
    v35 = (v49 + 8);
    v49 = v39;
    v46 = v33;
    (*v34)(v25, v27);
    (*v35)(v32, v43);
    swift_unknownObjectRelease();
    v37 = 0;
  }

  result = __swift_destroy_boxed_opaque_existential_0Tm(v50);
  v41 = v45;
  v40 = v46;
  *v45 = v38;
  v41[1] = v40;
  v41[2] = v49;
  v41[3] = v37;
  *(v41 + 32) = v17;
  return result;
}

uint64_t sub_25AF5C20C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24D40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25AF5C39C();
  sub_25B006304();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  sub_25AF5C3F0();
  sub_25B0060B4();
  (*(v6 + 8))(v8, v5);
  v9 = v16;
  v12 = v15;
  v13 = v14;
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v11 = v12;
  *a2 = v13;
  *(a2 + 16) = v11;
  *(a2 + 32) = v9;
  return result;
}

unint64_t sub_25AF5C39C()
{
  result = qword_27FA24D48;
  if (!qword_27FA24D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24D48);
  }

  return result;
}

unint64_t sub_25AF5C3F0()
{
  result = qword_27FA24D50;
  if (!qword_27FA24D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24D50);
  }

  return result;
}

unint64_t sub_25AF5C444()
{
  result = qword_27FA24D60;
  if (!qword_27FA24D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24D60);
  }

  return result;
}

uint64_t sub_25AF5C4AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25AF5C4F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_25AF5C560()
{
  result = qword_27FA24D68;
  if (!qword_27FA24D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24D68);
  }

  return result;
}

unint64_t sub_25AF5C5B8()
{
  result = qword_27FA24D70;
  if (!qword_27FA24D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24D70);
  }

  return result;
}

unint64_t sub_25AF5C610()
{
  result = qword_27FA24D78;
  if (!qword_27FA24D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24D78);
  }

  return result;
}

unint64_t sub_25AF5C668()
{
  result = qword_27FA24D80;
  if (!qword_27FA24D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24D80);
  }

  return result;
}

unint64_t sub_25AF5C6BC()
{
  result = qword_27FA24DA0;
  if (!qword_27FA24DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24DA0);
  }

  return result;
}

unint64_t sub_25AF5C710()
{
  result = qword_27FA24DB0;
  if (!qword_27FA24DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24DB0);
  }

  return result;
}

unint64_t sub_25AF5C764()
{
  result = qword_27FA24DB8;
  if (!qword_27FA24DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24DB8);
  }

  return result;
}

uint64_t sub_25AF5C7B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_25AF18BD4(255, &qword_27FA23A78);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreviewingMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PreviewingMode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25AF5C994()
{
  result = qword_27FA24DE8;
  if (!qword_27FA24DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24DE8);
  }

  return result;
}

unint64_t sub_25AF5C9EC()
{
  result = qword_27FA24DF0;
  if (!qword_27FA24DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24DF0);
  }

  return result;
}

unint64_t sub_25AF5CA44()
{
  result = qword_27FA24DF8;
  if (!qword_27FA24DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24DF8);
  }

  return result;
}

unint64_t sub_25AF5CA9C()
{
  result = qword_27FA24E00;
  if (!qword_27FA24E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24E00);
  }

  return result;
}

unint64_t sub_25AF5CAF4()
{
  result = qword_27FA24E08;
  if (!qword_27FA24E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24E08);
  }

  return result;
}

unint64_t sub_25AF5CB4C()
{
  result = qword_27FA24E10;
  if (!qword_27FA24E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24E10);
  }

  return result;
}

unint64_t sub_25AF5CBA4()
{
  result = qword_27FA24E18;
  if (!qword_27FA24E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24E18);
  }

  return result;
}

unint64_t sub_25AF5CBFC()
{
  result = qword_27FA24E20;
  if (!qword_27FA24E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24E20);
  }

  return result;
}

unint64_t sub_25AF5CC54()
{
  result = qword_27FA24E28;
  if (!qword_27FA24E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24E28);
  }

  return result;
}

double SensorStatusViewModel.layoutMargins.getter()
{
  swift_getKeyPath();
  sub_25AF5D370();
  sub_25B004234();

  v1 = v0 + OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__layoutMargins;
  swift_beginAccess();
  return *v1;
}

float64_t SensorStatusViewModel.layoutMargins.setter(float64_t a1, float64_t a2, float64_t a3, float64_t a4)
{
  v5 = (v4 + OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__layoutMargins);
  swift_beginAccess();
  v6.f64[0] = a1;
  v6.f64[1] = a2;
  v7.f64[0] = a3;
  v7.f64[1] = a4;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v5, v6), vceqq_f64(v5[1], v7)))))
  {
    v5->f64[0] = a1;
    v5->f64[1] = a2;
    result = a4;
    v5[1].f64[0] = a3;
    v5[1].f64[1] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AF5D370();
    sub_25B004224();
  }

  return result;
}

__n128 sub_25AF5D27C@<Q0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF5D370();
  sub_25B004234();

  v4 = v3 + OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__layoutMargins;
  swift_beginAccess();
  result = *v4;
  v6 = *(v4 + 16);
  *a2 = *v4;
  a2[1] = v6;
  return result;
}

unint64_t sub_25AF5D370()
{
  result = qword_27FA24E38;
  if (!qword_27FA24E38)
  {
    type metadata accessor for SensorStatusViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24E38);
  }

  return result;
}

uint64_t type metadata accessor for SensorStatusViewModel()
{
  result = qword_27FA24FA0;
  if (!qword_27FA24FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_25AF5D414()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__layoutMargins);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  swift_beginAccess();
  result = v4;
  *v1 = v4;
  v1[1] = v3;
  return result;
}

void (*SensorStatusViewModel.layoutMargins.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25AF5D370();
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  return sub_25AF5D590;
}

uint64_t sub_25AF5D5C4(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__currentTransition;
  swift_beginAccess();
  *(v2 + v4) = a1;
  v5 = *(v2 + OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel_textModel);
  swift_getKeyPath();
  sub_25AF5D370();
  sub_25B004234();

  *(v5 + 16) = *(v2 + v4);
  return result;
}

void (*sub_25AF5D684(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__currentTransition;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_25AF5D70C;
}

void sub_25AF5D70C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    v6 = *(v5 + OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel_textModel);
    swift_getKeyPath();
    *v3 = v5;
    sub_25AF5D370();
    sub_25B004234();

    *(v6 + 16) = *(v5 + v4);
  }

  free(v3);
}

void sub_25AF5D7E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1;
  a5(a3);
}

uint64_t SensorStatusViewModel.currentTransition.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__currentTransition;
  swift_beginAccess();
  if (*(v1 + v3) == a1)
  {
    v4 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel_textModel);
    swift_getKeyPath();
    sub_25AF5D370();
    sub_25B004234();

    *(v4 + 16) = *(v1 + v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AF5D370();
    sub_25B004224();
  }

  return result;
}

uint64_t sub_25AF5DA74(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__currentTransition;
  swift_beginAccess();
  *(a1 + v4) = a2;
  v5 = *(a1 + OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel_textModel);
  swift_getKeyPath();
  sub_25AF5D370();
  sub_25B004234();

  *(v5 + 16) = *(a1 + v4);
  return result;
}

void (*SensorStatusViewModel.currentTransition.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_25AF5D370();
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  v4[7] = sub_25AF5D684(v4);
  return sub_25AF5DC30;
}

void sub_25AF5DC30(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_25B004244();

  free(v1);
}

void (*SensorStatusViewModel.desiredHeightWithMargins.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25AF5D370();
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  return sub_25AF5DE54;
}

void (*SensorStatusViewModel.isAirplaneMode.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25AF5D370();
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  return sub_25AF5E03C;
}

void (*SensorStatusViewModel.phoneSymbolName.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25AF5D370();
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  return sub_25AF5E20C;
}

void sub_25AF5E278(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a1;
  a4(a3);
}

void (*SensorStatusViewModel.isTinkerWatch.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25AF5D370();
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  return sub_25AF5E4C8;
}

void (*SensorStatusViewModel.isTheaterMode.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25AF5D370();
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  return sub_25AF5E6B0;
}

void (*SensorStatusViewModel.isLowPowerMode.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25AF5D370();
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  return sub_25AF5E898;
}

double sub_25AF5EB44(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_25AF5D370();
  sub_25B004234();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_25AF5ECB8(uint64_t *a1, double a2)
{
  v4 = *a1;
  result = swift_beginAccess();
  if (*(v2 + v4) == a2)
  {
    *(v2 + v4) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AF5D370();
    sub_25B004224();
  }

  return result;
}

double sub_25AF5EDC0@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, double *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_25AF5D370();
  sub_25B004234();

  v6 = *a2;
  swift_beginAccess();
  result = *(v5 + v6);
  *a3 = result;
  return result;
}

void (*SensorStatusViewModel.batteryLevel.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25AF5D370();
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  return sub_25AF5EF98;
}

void (*SensorStatusViewModel.batteryState.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25AF5D370();
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  return sub_25AF5F17C;
}

uint64_t sub_25AF5F208@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF5D370();
  sub_25B004234();

  v4 = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__locationStatus;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void (*SensorStatusViewModel.locationStatus.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25AF5D370();
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  return sub_25AF5F3DC;
}

void sub_25AF5F440(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a1;
  a4(a3);
}

void (*SensorStatusViewModel.cellularSignalStrengthBars.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25AF5D370();
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  return sub_25AF5F690;
}

void (*SensorStatusViewModel.cellularDataIndicator.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25AF5D370();
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  return sub_25AF5F860;
}

void (*SensorStatusViewModel.hasBaseband.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25AF5D370();
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  return sub_25AF5FA48;
}

void (*SensorStatusViewModel.simActive.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25AF5D370();
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  return sub_25AF5FC30;
}

void sub_25AF5FC94(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    v7 = sub_25B005934();
    a3 = v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = a1;
  a4(v7, a3);
}

uint64_t keypath_set_51Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

void (*SensorStatusViewModel.operatorName.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25AF5D370();
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  return sub_25AF5FF3C;
}

id sub_25AF5FF68(uint64_t a1, uint64_t a2, void *a3)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a1 + *a3;
  swift_beginAccess();
  if (*(v5 + 8))
  {

    v6 = sub_25B005924();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

uint64_t sub_25AF6007C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    a3 = sub_25B005934();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = a3;
  v9[1] = v8;
}

id sub_25AF60178(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_25AF5D370();
  v6 = a1;
  sub_25B004234();

  v7 = &v6[*a4];
  swift_beginAccess();
  v8 = *(v7 + 1);

  if (v8)
  {
    v9 = sub_25B005924();
  }

  else
  {

    v9 = 0;
  }

  return v9;
}

uint64_t sub_25AF602E8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_25AF5D370();
  sub_25B004234();

  v4 = (v2 + *a2);
  swift_beginAccess();
  v5 = *v4;

  return v5;
}

uint64_t sub_25AF603C0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  if (v7)
  {
    if (a2)
    {
      v8 = *v6 == a1 && v7 == a2;
      if (v8 || (sub_25B006174() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v6 = a1;
    v6[1] = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_25AF5D370();
  sub_25B004224();
}

uint64_t sub_25AF6050C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_25AF5D370();
  sub_25B004234();

  v6 = (v5 + *a2);
  swift_beginAccess();
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

uint64_t sub_25AF605C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = (a1 + *a4);
  swift_beginAccess();
  *v6 = a2;
  v6[1] = a3;
}

void (*SensorStatusViewModel.wifiSSID.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25AF5D370();
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  return sub_25AF6074C;
}

uint64_t sub_25AF60764(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *a3;
  swift_beginAccess();
  v6 = *(a1 + v5);

  return v6;
}

uint64_t sub_25AF6082C(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *a4;
  swift_beginAccess();
  *(a1 + v7) = a3;
}

uint64_t sub_25AF608FC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_25AF5D370();
  v6 = a1;
  sub_25B004234();

  v7 = *a4;
  swift_beginAccess();
  v8 = *&v6[v7];

  return v8;
}

uint64_t sub_25AF60A24(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_25AF5D370();
  sub_25B004234();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_25AF60AE8(int a1, uint64_t *a2)
{
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AF5D370();
    sub_25B004224();
  }

  return result;
}

uint64_t sub_25AF60BE0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _DWORD *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_25AF5D370();
  sub_25B004234();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

void (*SensorStatusViewModel.wifiStrengthBars.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25AF5D370();
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  return sub_25AF60DB8;
}

id sub_25AF60DD0()
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();

  v0 = sub_25B005924();

  return v0;
}

uint64_t sub_25AF60ECC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_25B005934();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

id sub_25AF60FBC(void *a1)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_25AF5D370();
  v2 = a1;
  sub_25B004234();

  swift_beginAccess();

  v3 = sub_25B005924();

  return v3;
}

void sub_25AF61130(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_25B005934();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_25AF61240(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6 == a1 && v6[1] == a2;
  if (v7 || (sub_25B006174() & 1) != 0)
  {
    *v6 = a1;
    v6[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AF5D370();
    sub_25B004224();
  }
}

uint64_t keypath_set_15Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

void (*SensorStatusViewModel.micAttributionString.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25AF5D370();
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  return sub_25AF614F4;
}

void (*SensorStatusViewModel.connectionStatus.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25AF5D370();
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  return sub_25AF616D8;
}

void (*SensorStatusViewModel.connectionType.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25AF5D370();
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  return sub_25AF618BC;
}

uint64_t sub_25AF618D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);

  return v7;
}

uint64_t sub_25AF619A8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *a5;
  swift_beginAccess();
  *(a1 + v8) = a3;
}

uint64_t sub_25AF61A84(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_25AF5D370();
  v6 = a1;
  sub_25B004234();

  v7 = *a4;
  swift_beginAccess();
  v8 = v6[v7];

  return v8;
}

uint64_t sub_25AF61BAC(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_25AF5D370();
  sub_25B004234();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_25AF61C70(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AF5D370();
    sub_25B004224();
  }

  return result;
}

uint64_t sub_25AF61D70@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_25AF5D370();
  sub_25B004234();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

void (*SensorStatusViewModel.showBuildNumber.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25AF5D370();
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  return sub_25AF61F48;
}

uint64_t sub_25AF61F94(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_25AF5D370();
  sub_25B004234();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_25AF6205C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF5D370();
  sub_25B004234();

  v4 = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__companionConnectionStatus;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void (*SensorStatusViewModel.companionConnectionStatus.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25AF5D370();
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  return sub_25AF62230;
}

uint64_t sub_25AF62248(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *a3;
  swift_beginAccess();
  v6 = *(a1 + v5);

  return v6;
}

uint64_t sub_25AF62310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *a4;
  swift_beginAccess();
  *(a1 + v7) = a3;
}

uint64_t sub_25AF623E0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_25AF5D370();
  v6 = a1;
  sub_25B004234();

  v7 = *a4;
  swift_beginAccess();
  v8 = *&v6[v7];

  return v8;
}

uint64_t sub_25AF62538(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AF5D370();
    sub_25B004224();
  }

  return result;
}

uint64_t sub_25AF6262C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_25AF5D370();
  sub_25B004234();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

void (*SensorStatusViewModel.telephonyState.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25AF5D370();
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  return sub_25AF62804;
}

id SensorStatusViewModel.init(focusModel:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__layoutMargins];
  v5 = *(MEMORY[0x277D768C8] + 16);
  *v4 = *MEMORY[0x277D768C8];
  v4[1] = v5;
  *&v1[OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__currentTransition] = 1;
  *&v1[OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__desiredHeightWithMargins] = 0;
  v1[OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__isAirplaneMode] = 0;
  v6 = &v1[OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__phoneSymbolName];
  *v6 = 0x672E656E6F687069;
  v6[1] = 0xEB00000000326E65;
  v1[OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__isTinkerWatch] = 0;
  v1[OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__isTheaterMode] = 0;
  v1[OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__isLowPowerMode] = 0;
  *&v1[OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__batteryLevel] = 0;
  *&v1[OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__batteryState] = 0;
  *&v1[OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__locationStatus] = 0;
  *&v1[OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__cellularSignalStrengthBars] = 0;
  v7 = &v1[OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__cellularDataIndicator];
  *v7 = 0;
  v7[1] = 0;
  v1[OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__hasBaseband] = 0;
  v1[OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__simActive] = 0;
  v8 = &v1[OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__operatorName];
  *v8 = 0;
  v8[1] = 0;
  v1[OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__sosNotSuppressed] = 0;
  v9 = &v1[OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__wifiSSID];
  *v9 = 0;
  v9[1] = 0;
  *&v1[OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__wifiStrengthBars] = 0;
  v10 = &v1[OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__micAttributionString];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  *&v1[OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__connectionStatus] = 0;
  *&v1[OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__connectionType] = 0;
  v1[OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__showBuildNumber] = 0;
  v11 = &v1[OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__locationAttributionString];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  *&v1[OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__companionConnectionStatus] = 0;
  *&v1[OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__telephonyState] = 0;
  v12 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__activeAccessibilityFeatures] = MEMORY[0x277D84F90];
  v13 = &v1[OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel_latestStatusButtonSource];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v13[32] = -2;
  v14 = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel_textModel;
  type metadata accessor for StatusTextModel();
  v15 = swift_allocObject();
  *(v15 + 16) = 1;
  *(v15 + 24) = 0u;
  *(v15 + 40) = 0u;
  *(v15 + 56) = -2;
  *(v15 + 64) = v12;
  *(v15 + 72) = 0u;
  *(v15 + 88) = 0u;
  *(v15 + 104) = 0u;
  *(v15 + 113) = 0u;
  sub_25B004264();
  *&v1[v14] = v15;
  v1[OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__showingStatusDetail] = 0;
  sub_25B004264();
  *&v1[OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel_focusModel] = a1;
  v17.receiver = v1;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t SensorStatusViewModel.setConnectionStatus(_:connectionType:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__connectionStatus;
  swift_beginAccess();
  if (*(v3 + v6) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AF5D370();
    sub_25B004224();
  }

  v8 = OBJC_IVAR____TtC17NanoControlCenter21SensorStatusViewModel__connectionType;
  result = swift_beginAccess();
  if (*(v3 + v8) != a2)
  {
    v10 = swift_getKeyPath();
    MEMORY[0x28223BE20](v10);
    sub_25AF5D370();
    sub_25B004224();
  }

  return result;
}

uint64_t SensorStatusViewModel.statusChanged(for:isOn:)(unint64_t a1, char a2)
{
  v4 = sub_25AFA6868(a1);
  v8 = v5;
  if (a2)
  {
    if (v5)
    {
      v9 = v4;
LABEL_6:

      v10 = v9;
      goto LABEL_8;
    }
  }

  else if (v5)
  {
    v8 = v7;
    v9 = v6;
    goto LABEL_6;
  }

  v10 = 0;
LABEL_8:
  v12[0] = a1;
  memset(&v12[1], 0, 24);
  v13 = 0;
  sub_25AFCF648(v10, v8, v12);
}

id SensorStatusViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SensorStatusViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25AF63408(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

uint64_t sub_25AF63728(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

uint64_t sub_25AF638A8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

uint64_t sub_25AF6396C(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_25AF639C8()
{
  result = sub_25B004274();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_25AF63B64()
{
  sub_25AF63C5C();
  sub_25B004B24();
  return v1;
}

uint64_t sub_25AF63BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25AF63CC0();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_25AF63C08()
{
  result = qword_27FA24FB0;
  if (!qword_27FA24FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24FB0);
  }

  return result;
}

unint64_t sub_25AF63C5C()
{
  result = qword_27FA24FB8;
  if (!qword_27FA24FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24FB8);
  }

  return result;
}

unint64_t sub_25AF63CC0()
{
  result = qword_27FA24FC0;
  if (!qword_27FA24FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24278);
    sub_25AF63C08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24FC0);
  }

  return result;
}

uint64_t sub_25AF63D44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = 0;
    v25 = *(a1 + 8);
    v26 = *a1;
    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v7 = *(a1 + 32);
    v21 = v7 & 0xC0;
    v22 = v2 - 1;
    v23 = v5;
    v8 = (a2 + 64);
    for (i = v6; ; v6 = i)
    {
      v10 = *(v8 - 4);
      v9 = *(v8 - 3);
      v12 = *(v8 - 2);
      v11 = *(v8 - 1);
      v13 = *v8;
      v28[0] = v10;
      v28[1] = v9;
      v28[2] = v12;
      v28[3] = v11;
      v29 = v13;
      v30 = v26;
      v31 = v25;
      v32 = v6;
      v33 = v5;
      v34 = v7;
      if (v13 >> 6)
      {
        if (v13 >> 6 == 1)
        {
          if (v21 != 64)
          {
            goto LABEL_30;
          }

          sub_25AF67FDC();
          sub_25AF181DC(v10, v9, v12, v11, v13);
          sub_25AF196CC(a1, v27);
          sub_25AF181DC(v10, v9, v12, v11, v13);
          sub_25AF196CC(a1, v27);
          sub_25AF181DC(v10, v9, v12, v11, v13);
          if ((sub_25B005DE4() & 1) == 0 || v9 != v25)
          {
            sub_25AF2602C(v28, &unk_27FA25590);
            sub_25AF18128(v10, v9, v12, v11, v13);
            sub_25AF1C414(a1);
            v17 = v10;
            v18 = v9;
LABEL_28:
            sub_25AF18128(v17, v18, v12, v11, v13);
            goto LABEL_32;
          }

          if (v11)
          {
            if (!v23)
            {
              sub_25AF2602C(v28, &unk_27FA25590);
              sub_25AF18128(v10, v25, v12, v11, v13);
              sub_25AF1C414(a1);
              v17 = v10;
              v18 = v25;
              goto LABEL_28;
            }

            if (v12 == i && v11 == v23)
            {
              sub_25AF2602C(v28, &unk_27FA25590);
              sub_25AF18128(v10, v25, i, v23, v13);
              sub_25AF1C414(a1);
              sub_25AF18128(v10, v25, i, v23, v13);
              return v4;
            }

            v14 = sub_25B006174();
            sub_25AF2602C(v28, &unk_27FA25590);
            sub_25AF18128(v10, v25, v12, v11, v13);
            sub_25AF1C414(a1);
            sub_25AF18128(v10, v25, v12, v11, v13);
            if (v14)
            {
              return v4;
            }
          }

          else
          {
            sub_25AF2602C(v28, &unk_27FA25590);
            sub_25AF18128(v10, v25, v12, 0, v13);
            sub_25AF1C414(a1);
            sub_25AF18128(v10, v25, v12, 0, v13);
            if (!v23)
            {
              return v4;
            }
          }
        }

        else
        {
          if (v21 != 128)
          {
            goto LABEL_30;
          }

          if (v13)
          {
            if ((v7 & 1) == 0 || (v10 != v26 || v9 != v25) && (v15 = sub_25B006174(), v5 = v23, (v15 & 1) == 0))
            {
LABEL_30:
              sub_25AF196CC(a1, v27);
              sub_25AF181DC(v10, v9, v12, v11, v13);
              goto LABEL_31;
            }

            if (v12 == v6 && v11 == v5)
            {
              v20 = v5;
              sub_25AF196CC(a1, v27);
              sub_25AF181DC(v10, v9, v6, v20, v13);
LABEL_48:
              sub_25AF2602C(v28, &unk_27FA25590);
              return v4;
            }

            v16 = sub_25B006174();
            sub_25AF196CC(a1, v27);
            sub_25AF181DC(v10, v9, v12, v11, v13);
          }

          else
          {
            if (v7)
            {
              goto LABEL_30;
            }

            sub_25AF67FDC();
            sub_25AF181DC(v10, v9, v12, v11, v13);
            sub_25AF196CC(a1, v27);
            sub_25AF181DC(v10, v9, v12, v11, v13);
            if ((sub_25B005DE4() & 1) == 0)
            {
              sub_25AF18128(v10, v9, v12, v11, v13);
              goto LABEL_31;
            }

            if (v9 == v25 && v12 == i)
            {
              sub_25AF18128(v10, v25, i, v11, v13);
              goto LABEL_48;
            }

            v16 = sub_25B006174();
            sub_25AF18128(v10, v9, v12, v11, v13);
          }

          sub_25AF2602C(v28, &unk_27FA25590);
          if (v16)
          {
            return v4;
          }
        }
      }

      else
      {
        if (v7 >= 0x40)
        {
          sub_25AF196CC(a1, v27);
LABEL_31:
          sub_25AF2602C(v28, &unk_27FA25590);
          goto LABEL_32;
        }

        sub_25AF196CC(a1, v27);
        sub_25AF2602C(v28, &unk_27FA25590);
        if (v10 == v26)
        {
          return v4;
        }
      }

LABEL_32:
      if (v22 == v4)
      {
        return 0;
      }

      v8 += 40;
      ++v4;
      v5 = v23;
    }
  }

  return 0;
}

uint64_t sub_25AF64304@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25AFCDB8C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = (v5 + 40 * a1);
    v10 = v9[2];
    v9 += 2;
    v11 = *(v9 + 32);
    v12 = v9[1];
    *a2 = v10;
    *(a2 + 16) = v12;
    *(a2 + 32) = v11;
    result = memmove(v9, v9 + 40, 40 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

double sub_25AF643A4()
{
  swift_getKeyPath();
  sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
  sub_25B004234();

  return *(v0 + 16);
}

double sub_25AF64444@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
  sub_25B004234();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

void sub_25AF64514(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
    sub_25B004224();
  }
}

uint64_t sub_25AF64634(uint64_t a1)
{
  *(v1 + 24) = a1;

  if (*(v1 + 56) != 1)
  {
    *(v1 + 56) = 0;
    result = *(v1 + 24);
    if (!result)
    {
      return result;
    }

    goto LABEL_5;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
  sub_25B004224();

  result = *(v1 + 24);
  if (result)
  {
LABEL_5:

    return sub_25AF64A44(v4);
  }

  return result;
}

uint64_t sub_25AF64770(uint64_t result)
{
  if (*(result + 16))
  {
    swift_getKeyPath();
    sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
    sub_25B004234();

    if (*(*(v1 + 48) + 16))
    {
      if (*(v1 + 56) == 1)
      {
        *(v1 + 56) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_25B004224();
      }
    }
  }

  return result;
}

uint64_t sub_25AF648C8()
{
  swift_getKeyPath();
  sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
  sub_25B004234();
}

uint64_t sub_25AF6496C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
  sub_25B004234();

  *a2 = *(v3 + 48);
}

uint64_t sub_25AF64A44(uint64_t a1)
{

  v4 = sub_25AF38000(v3, a1);

  if (v4)
  {
    v5 = *(v1 + 48);
    *(v1 + 48) = a1;
    sub_25AF64770(v5);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
    sub_25B004224();
  }
}

uint64_t sub_25AF64BA4()
{
  swift_getKeyPath();
  sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
  sub_25B004234();

  return *(v0 + 56);
}

uint64_t sub_25AF64C44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
  sub_25B004234();

  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_25AF64D14(uint64_t result)
{
  if (*(v1 + 56) == (result & 1))
  {
    *(v1 + 56) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
    sub_25B004224();
  }

  return result;
}

__n128 sub_25AF64E24@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
  sub_25B004234();

  v3 = *(v1 + 96);
  result = *(v1 + 64);
  v5 = *(v1 + 80);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

__n128 sub_25AF64ED4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
  sub_25B004234();

  v4 = *(v3 + 96);
  result = *(v3 + 64);
  v6 = *(v3 + 80);
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_25AF64F84(uint64_t result)
{
  if (*(v1 + 96))
  {
    if (*(result + 32))
    {
LABEL_3:
      v2 = *(result + 16);
      *(v1 + 64) = *result;
      *(v1 + 80) = v2;
      *(v1 + 96) = *(result + 32);
      return result;
    }
  }

  else if ((*(result + 32) & 1) == 0)
  {
    v3 = *(v1 + 64) == *result && *(v1 + 72) == *(result + 8);
    v4 = v3 && *(v1 + 80) == *(result + 16);
    if (v4 && *(v1 + 88) == *(result + 24))
    {
      goto LABEL_3;
    }
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
  sub_25B004224();
}

__n128 sub_25AF650D0@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
  sub_25B004234();

  v3 = *(v1 + 136);
  result = *(v1 + 104);
  v5 = *(v1 + 120);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

__n128 sub_25AF65184@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
  sub_25B004234();

  v4 = *(v3 + 136);
  result = *(v3 + 104);
  v6 = *(v3 + 120);
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_25AF65238(uint64_t result)
{
  if (*(v1 + 136))
  {
    if (*(result + 32))
    {
LABEL_3:
      v2 = *(result + 16);
      *(v1 + 104) = *result;
      *(v1 + 120) = v2;
      *(v1 + 136) = *(result + 32);
      return result;
    }
  }

  else if ((*(result + 32) & 1) == 0)
  {
    v3 = *(v1 + 104) == *result && *(v1 + 112) == *(result + 8);
    v4 = v3 && *(v1 + 120) == *(result + 16);
    if (v4 && *(v1 + 128) == *(result + 24))
    {
      goto LABEL_3;
    }
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
  sub_25B004224();
}

uint64_t sub_25AF65384()
{
  swift_getKeyPath();
  sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
  sub_25B004234();

  return *(v0 + 144);
}

__n128 sub_25AF65428@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
  sub_25B004234();

  v4 = v3[10].n128_u8[0];
  result = v3[9];
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_25AF654D8()
{
  swift_getKeyPath();
  sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
  sub_25B004224();
}

uint64_t sub_25AF655B8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23D08);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_25B004594();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 48);
  if (v11(a1, 1, v7) == 1)
  {
    KeyPath = swift_getKeyPath();
    *&v25 = &v22;
    MEMORY[0x28223BE20](KeyPath);
    *(&v22 - 3) = 0;
    *(&v22 - 2) = 0;
    *(&v22 - 4) = v2;
    *(&v22 - 8) = 1;
    *&v26[0] = v2;
    sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
    sub_25B004224();
  }

  swift_getKeyPath();
  *&v26[0] = v2;
  sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
  sub_25B004234();

  v13 = OBJC_IVAR____TtC17NanoControlCenter19GlanceDraggingModel__dragValue;
  swift_beginAccess();
  sub_25AF25FC4(v2 + v13, v6, &qword_27FA23D08);
  v14 = v11(v6, 1, v7);
  if (v14 == 1)
  {
    sub_25AF2602C(v6, &qword_27FA23D08);
    v15 = 0uLL;
    v16 = 0uLL;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_25B004574();
    v23 = v17;
    v25 = v18;
    sub_25B004564();
    v22 = v19;
    v24 = v20;
    (*(v8 + 8))(v10, v7);
    *&v16 = v22;
    *&v15 = v23;
    *(&v15 + 1) = v25;
    *(&v16 + 1) = v24;
  }

  v26[0] = v15;
  v26[1] = v16;
  v27 = v14 == 1;
  return sub_25AF64F84(v26);
}

uint64_t sub_25AF659A4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23D08);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = OBJC_IVAR____TtC17NanoControlCenter19GlanceDraggingModel__dragValue;
  swift_beginAccess();
  sub_25AF25FC4(v1 + v9, v8, &qword_27FA23D08);
  v10 = sub_25AF678B4(v8, a1);
  sub_25AF2602C(v8, &qword_27FA23D08);
  if (v10)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13[-2] = v1;
    v13[-1] = a1;
    v13[2] = v1;
    sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
    sub_25B004224();
  }

  else
  {
    sub_25AF25FC4(a1, v8, &qword_27FA23D08);
    sub_25AF25FC4(v1 + v9, v6, &qword_27FA23D08);
    swift_beginAccess();
    sub_25AF69638(v8, v1 + v9, &qword_27FA23D08);
    swift_endAccess();
    sub_25AF655B8(v6);
    sub_25AF2602C(v6, &qword_27FA23D08);
    sub_25AF2602C(v8, &qword_27FA23D08);
  }

  return sub_25AF2602C(a1, &qword_27FA23D08);
}

uint64_t sub_25AF65C0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23D08);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  sub_25AF25FC4(a2, &v12[-v8], &qword_27FA23D08);
  v10 = OBJC_IVAR____TtC17NanoControlCenter19GlanceDraggingModel__dragValue;
  swift_beginAccess();
  sub_25AF25FC4(a1 + v10, v7, &qword_27FA23D08);
  swift_beginAccess();
  sub_25AF69638(v9, a1 + v10, &qword_27FA23D08);
  swift_endAccess();
  sub_25AF655B8(v7);
  sub_25AF2602C(v7, &qword_27FA23D08);
  return sub_25AF2602C(v9, &qword_27FA23D08);
}

uint64_t sub_25AF65D90@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
  sub_25B004234();

  v7 = *a1;
  swift_beginAccess();
  return sub_25AF25FC4(v9 + v7, a3, a2);
}

uint64_t sub_25AF65E94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
  sub_25B004234();

  v8 = *a2;
  swift_beginAccess();
  return sub_25AF25FC4(v7 + v8, a4, a3);
}

uint64_t sub_25AF65FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v14 - v11;
  sub_25AF25FC4(a1, &v14 - v11, a5);
  return a7(v12);
}

uint64_t sub_25AF6604C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA255D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC17NanoControlCenter19GlanceDraggingModel__draggingButtonTick;
  swift_beginAccess();
  sub_25AF25FC4(v1 + v6, v5, &unk_27FA255D0);
  v7 = sub_25AF69234(v5, a1);
  sub_25AF2602C(v5, &unk_27FA255D0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
    sub_25B004224();
  }

  else
  {
    sub_25AF25FC4(a1, v5, &unk_27FA255D0);
    swift_beginAccess();
    sub_25AF694D4(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_25AF2602C(a1, &unk_27FA255D0);
}

uint64_t sub_25AF66254(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17NanoControlCenter19GlanceDraggingModel__draggingButtonTick;
  swift_beginAccess();
  sub_25AF69638(a2, a1 + v4, &unk_27FA255D0);
  return swift_endAccess();
}

double sub_25AF6636C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
  sub_25B004234();

  return *(v2 + *a2);
}

double sub_25AF6640C@<D0>(uint64_t *a1@<X0>, void *a2@<X4>, double *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
  sub_25B004234();

  result = *(v5 + *a2);
  *a3 = result;
  return result;
}

void *sub_25AF664E8(void *result, double a2)
{
  if (*(v2 + *result) == a2)
  {
    *(v2 + *result) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
    sub_25B004224();
  }

  return result;
}

uint64_t sub_25AF665F4()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = MEMORY[0x277D84F90];
  *(v0 + 56) = 0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 1;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 1;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 160) = 1;
  v1 = OBJC_IVAR____TtC17NanoControlCenter19GlanceDraggingModel__dragValue;
  v2 = sub_25B004594();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC17NanoControlCenter19GlanceDraggingModel__draggingButtonTick;
  v4 = type metadata accessor for GlanceDraggingModel.DraggingButtonTick(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC17NanoControlCenter19GlanceDraggingModel__scrollOffset) = 0;
  *(v0 + OBJC_IVAR____TtC17NanoControlCenter19GlanceDraggingModel__scrollViewHeight) = 0;
  sub_25B004264();
  return v0;
}

void sub_25AF6670C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 32);
  *&v20 = *a1;
  *(&v20 + 1) = v3;
  v21 = v4;
  v22 = v5;
  v23 = v6;
  v8 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v8;
  v19 = v7;
  sub_25AF6694C(&v20, v18);
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v9 = sub_25B0044C4();
  __swift_project_value_buffer(v9, qword_27FA30C28);
  sub_25AF181DC(v2, v3, v4, v5, v6);
  oslog = sub_25B0044B4();
  v10 = sub_25B005CA4();
  sub_25AF18128(v2, v3, v4, v5, v6);
  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v18[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_25AF8E7DC(0xD000000000000025, 0x800000025B018000, v18);
    *(v11 + 12) = 2080;
    *&v20 = v2;
    *(&v20 + 1) = v3;
    v21 = v4;
    v22 = v5;
    v23 = v6;
    sub_25AF181DC(v2, v3, v4, v5, v6);
    v13 = sub_25AFD3228();
    v15 = v14;
    sub_25AF18128(v20, *(&v20 + 1), v21, v22, v23);
    v16 = sub_25AF8E7DC(v13, v15, v18);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_25AF0B000, oslog, v10, "%s reordered %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v12, -1, -1);
    MEMORY[0x25F85EC30](v11, -1, -1);
  }
}

void sub_25AF6694C(__int128 *a1, __int128 *a2)
{
  v3 = a1[1];
  v54 = *a1;
  v55 = v3;
  v4 = *(a1 + 32);
  v56 = v4;
  v44 = a1[1];
  v45 = v54;
  v5 = a2[1];
  v51 = *a2;
  v52 = v5;
  v53 = *(a2 + 32);
  swift_getKeyPath();
  *&v48 = v2;
  sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
  sub_25B004234();

  v6 = *(v2 + 48);

  v7 = sub_25AF63D44(&v54, v6);
  if (v8)
  {

    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v9 = sub_25B0044C4();
    __swift_project_value_buffer(v9, qword_27FA30C28);
    sub_25AF196CC(&v54, &v48);
    v10 = sub_25B0044B4();
    v11 = sub_25B005CB4();
    sub_25AF1C414(&v54);
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v47 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_25AF8E7DC(0xD000000000000035, 0x800000025B018030, &v47);
    *(v12 + 12) = 2080;
    v48 = v54;
    v49 = v55;
    v50 = v56;
    sub_25AF196CC(&v54, v46);
    v14 = sub_25AFD3228();
    v16 = v15;
    sub_25AF18128(v48, *(&v48 + 1), v49, *(&v49 + 1), v50);
    v17 = sub_25AF8E7DC(v14, v16, &v47);

    *(v12 + 14) = v17;
    v18 = "%s couldn't find dragging button ID %s in current set of dragging button IDs. This is a major error.";
LABEL_11:
    _os_log_impl(&dword_25AF0B000, v10, v11, v18, v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v13, -1, -1);
    MEMORY[0x25F85EC30](v12, -1, -1);
LABEL_12:

    return;
  }

  v43 = v7;
  v19 = sub_25AF63D44(&v51, v6);
  if (v20)
  {

    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v21 = sub_25B0044C4();
    __swift_project_value_buffer(v21, qword_27FA30C28);
    sub_25AF196CC(&v54, &v48);
    v10 = sub_25B0044B4();
    v11 = sub_25B005CB4();
    sub_25AF1C414(&v54);
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v47 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_25AF8E7DC(0xD000000000000035, 0x800000025B018030, &v47);
    *(v12 + 12) = 2080;
    v48 = v54;
    v49 = v55;
    v50 = v56;
    sub_25AF196CC(&v54, v46);
    v22 = sub_25AFD3228();
    v24 = v23;
    sub_25AF18128(v48, *(&v48 + 1), v49, *(&v49 + 1), v50);
    v25 = sub_25AF8E7DC(v22, v24, &v47);

    *(v12 + 14) = v25;
    v18 = "%s couldn't find target button ID %s in current set of dragging button IDs. This is a major error.";
    goto LABEL_11;
  }

  v26 = v19;
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v27 = sub_25B0044C4();
  __swift_project_value_buffer(v27, qword_27FA30C28);
  sub_25AF196CC(&v54, &v48);
  sub_25AF196CC(&v51, &v48);
  v28 = sub_25B0044B4();
  v29 = sub_25B005CA4();
  sub_25AF1C414(&v54);
  sub_25AF1C414(&v51);
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v47 = v31;
    *v30 = 136315650;
    *(v30 + 4) = sub_25AF8E7DC(0xD000000000000035, 0x800000025B018030, &v47);
    *(v30 + 12) = 2080;
    v48 = v54;
    v49 = v55;
    v50 = v56;
    sub_25AF196CC(&v54, v46);
    v32 = sub_25AFD3228();
    v34 = v33;
    sub_25AF18128(v48, *(&v48 + 1), v49, *(&v49 + 1), v50);
    v35 = sub_25AF8E7DC(v32, v34, &v47);

    *(v30 + 14) = v35;
    *(v30 + 22) = 2080;
    v48 = v51;
    v49 = v52;
    v50 = v53;
    sub_25AF196CC(&v51, v46);
    v36 = sub_25AFD3228();
    v38 = v37;
    sub_25AF18128(v48, *(&v48 + 1), v49, *(&v49 + 1), v50);
    v39 = sub_25AF8E7DC(v36, v38, &v47);

    *(v30 + 24) = v39;
    _os_log_impl(&dword_25AF0B000, v28, v29, "%s reordering button: %s to the place currently occupied by button: %s", v30, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v31, -1, -1);
    MEMORY[0x25F85EC30](v30, -1, -1);
  }

  v46[0] = v6;
  sub_25AF64304(v43, &v48);
  sub_25AF18128(v48, *(&v48 + 1), v49, *(&v49 + 1), v50);
  v40 = v46[0];
  v41 = *(v46[0] + 16);
  if (v41 < v26)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v26 < 0)
  {
LABEL_24:
    __break(1u);
    return;
  }

  sub_25AF196CC(&v54, &v48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v41 >= *(v40 + 3) >> 1)
  {
    v40 = sub_25AFCD450(isUniquelyReferenced_nonNull_native, v41 + 1, 1, v40);
    v46[0] = v40;
  }

  v48 = v45;
  v49 = v44;
  v50 = v4;
  sub_25AF67DC0(v26, v26, 1uLL, &v48);
  sub_25AF1C414(&v54);
  sub_25AF64A44(v40);
}

uint64_t sub_25AF67010()
{

  sub_25AF2602C(v0 + OBJC_IVAR____TtC17NanoControlCenter19GlanceDraggingModel__dragValue, &qword_27FA23D08);
  sub_25AF2602C(v0 + OBJC_IVAR____TtC17NanoControlCenter19GlanceDraggingModel__draggingButtonTick, &unk_27FA255D0);
  v1 = OBJC_IVAR____TtC17NanoControlCenter19GlanceDraggingModel___observationRegistrar;
  v2 = sub_25B004274();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_25AF67124()
{
  sub_25AF672B8(319, &qword_27FA25000, MEMORY[0x277CDD708]);
  if (v0 <= 0x3F)
  {
    sub_25AF672B8(319, &qword_27FA25008, type metadata accessor for GlanceDraggingModel.DraggingButtonTick);
    if (v1 <= 0x3F)
    {
      sub_25B004274();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_25AF672B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25B005E04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25AF67350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 124)
  {
    v4 = ((*(a1 + 32) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 32) >> 1) & 0x1F))) ^ 0x7F;
    if (v4 >= 0x7D)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v8 = sub_25B004194();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25AF67414(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 124)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *(result + 32) = ((~a2 & 0x7Cu) >> 1) | (~a2 << 6);
  }

  else
  {
    v7 = sub_25B004194();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25AF674CC()
{
  sub_25AF67550();
  if (v0 <= 0x3F)
  {
    sub_25B004194();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25AF67550()
{
  if (!qword_27FA23B90)
  {
    v0 = sub_25B005E04();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA23B90);
    }
  }
}

BOOL sub_25AF675A4(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[3] == a2[3])
  {
    return a1[2] == a2[2];
  }

  return 0;
}

uint64_t sub_25AF675DC(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  v10 = *a2;
  v9 = *(a2 + 8);
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  LODWORD(v13) = *(a2 + 32);
  v37 = *a2;
  if (v8 <= 0xFD)
  {
    if (v13 <= 0xFD)
    {
      v43 = *a1;
      v44 = v5;
      v45 = v7;
      v46 = v6;
      v47 = v8;
      v38 = v10;
      v39 = v9;
      v40 = v12;
      v41 = v11;
      v42 = v13;
      v27 = v4;
      v28 = v4;
      v36 = v9;
      v29 = v6;
      v30 = v8;
      sub_25AF1D7EC(v28, v5, v7, v6, v8);
      sub_25AF1D7EC(v37, v36, v12, v11, v13);
      sub_25AF1D7EC(v27, v5, v7, v29, v30);
      sub_25AF181DC(v27, v5, v7, v29, v30);
      v31 = sub_25AFD33F0(&v43, &v38);
      sub_25AF18128(v38, v39, v40, v41, v42);
      sub_25AF18128(v43, v44, v45, v46, v47);
      sub_25AF18128(v27, v5, v7, v29, v30);
      sub_25AF231D0(v27, v5, v7, v29, v30);
      if (v31)
      {
        goto LABEL_9;
      }

      return 0;
    }

    v22 = *(a2 + 8);
    v14 = *(a1 + 8);
    v15 = *(a1 + 16);
    v23 = *(a2 + 24);
    v16 = *(a1 + 24);
    v17 = *(a1 + 32);
    sub_25AF1D7EC(v4, v14, v15, v6, v8);
    v24 = v10;
    v19 = v22;
    v35 = v12;
    v25 = v12;
    v21 = v23;
    sub_25AF1D7EC(v24, v22, v25, v23, v13);
    sub_25AF1D7EC(v4, v14, v15, v16, v17);
    sub_25AF18128(v4, v14, v15, v16, v17);
LABEL_6:
    sub_25AF231D0(v4, v14, v15, v16, v17);
    sub_25AF231D0(v37, v19, v35, v21, v13);
    return 0;
  }

  v34 = *(a2 + 32);
  v13 = *(a2 + 8);
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v33 = *(a2 + 24);
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);
  sub_25AF1D7EC(v4, v14, v15, v6, v8);
  v18 = v10;
  v19 = v13;
  LOBYTE(v13) = v34;
  v35 = v12;
  v20 = v12;
  v21 = v33;
  sub_25AF1D7EC(v18, v19, v20, v33, v34);
  if (v34 <= 0xFD)
  {
    goto LABEL_6;
  }

  sub_25AF231D0(v4, v14, v15, v16, v17);
LABEL_9:
  v32 = *(type metadata accessor for GlanceDraggingModel.DraggingButtonTick(0) + 20);

  return MEMORY[0x28211DA98](a1 + v32, a2 + v32);
}

uint64_t sub_25AF678B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25B004594();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23D08);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25030);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_25AF25FC4(a1, &v21 - v13, &qword_27FA23D08);
  sub_25AF25FC4(a2, &v14[v15], &qword_27FA23D08);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_25AF25FC4(v14, v10, &qword_27FA23D08);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_25AF69750(&qword_27FA23CF8, MEMORY[0x277CDD708]);
      v18 = sub_25B0058E4();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_25AF2602C(v14, &qword_27FA23D08);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_25AF2602C(v14, &qword_27FA25030);
    v17 = 1;
    return v17 & 1;
  }

  sub_25AF2602C(v14, &qword_27FA23D08);
  v17 = 0;
  return v17 & 1;
}

unint64_t sub_25AF67BD4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  v14 = 40 * v12;
  v15 = &v13[40 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_25AF67CA8(unint64_t result, _BYTE *a2, size_t a3, uint64_t a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = a3;
  v8 = a2;
  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(v7, v5);
  v12 = v7 - v5;
  if (v11)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_19;
  }

  result = v10 + 40 * v7;
  a2 = (v9 + 32 + 40 * v8);
  a3 = 40 * v14;
  v15 = &a2[40 * v14];
  if (result != a2 || result >= v15)
  {
    result = memmove(result, a2, a3);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (v7 <= 0)
  {
    return result;
  }

  v19 = *a4;
  v20 = *(a4 + 16);
  *(v10 + 32) = *(a4 + 32);
  *v10 = v19;
  *(v10 + 16) = v20;
  a3 = &qword_27FA25038;
  a2 = v21;
  result = a4;
  if (v7 != 1)
  {
LABEL_21:
    result = sub_25AF25FC4(result, a2, a3);
    __break(1u);
    return result;
  }

  return sub_25AF25FC4(a4, v21, &qword_27FA25038);
}

unint64_t sub_25AF67DC0(unint64_t result, _BYTE *a2, size_t a3, uint64_t a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = a3;
  v8 = a2;
  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(v7, v5);
  v12 = v7 - v5;
  if (v11)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_19;
  }

  result = v10 + 40 * v7;
  a2 = (v9 + 32 + 40 * v8);
  a3 = 40 * v14;
  v15 = &a2[40 * v14];
  if (result != a2 || result >= v15)
  {
    result = memmove(result, a2, a3);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (v7 <= 0)
  {
    return result;
  }

  v19 = *a4;
  v20 = *(a4 + 16);
  *(v10 + 32) = *(a4 + 32);
  *v10 = v19;
  *(v10 + 16) = v20;
  a3 = &qword_27FA25020;
  a2 = v21;
  result = a4;
  if (v7 != 1)
  {
LABEL_21:
    result = sub_25AF25FC4(result, a2, a3);
    __break(1u);
    return result;
  }

  return sub_25AF25FC4(a4, v21, &qword_27FA25020);
}

unint64_t sub_25AF67ED8(unint64_t result, _BYTE *a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_25AFCD450(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_25AF67DC0(v7, a2, 1uLL, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_25AF67FDC()
{
  result = qword_27FA27200;
  if (!qword_27FA27200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA27200);
  }

  return result;
}

double sub_25AF68078()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC17NanoControlCenter19GlanceDraggingModel__scrollViewHeight) = result;
  return result;
}

double sub_25AF680E0()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC17NanoControlCenter19GlanceDraggingModel__scrollOffset) = result;
  return result;
}

uint64_t sub_25AF680F8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = sub_25B004804();
  MEMORY[0x28223BE20](v9 - 8);
  swift_getKeyPath();
  sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
  sub_25B004234();

  v10 = OBJC_IVAR____TtC17NanoControlCenter19GlanceDraggingModel__scrollOffset;
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  v30 = CGRectOffset(v29, 0.0, *(v4 + OBJC_IVAR____TtC17NanoControlCenter19GlanceDraggingModel__scrollOffset));
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  swift_getKeyPath();
  sub_25B004234();

  v15 = *(v4 + v10);
  swift_getKeyPath();
  sub_25B004234();

  v16 = *(v4 + OBJC_IVAR____TtC17NanoControlCenter19GlanceDraggingModel__scrollViewHeight);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  if (CGRectGetMinY(v31) >= v15)
  {
    v24 = v15 + v16;
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    if (v24 >= CGRectGetMaxY(v33) || (swift_getKeyPath(), sub_25B004234(), , v25 = *(v4 + 16), v34.origin.x = x, v34.origin.y = y, v34.size.width = width, v34.size.height = height, v26 = v25 - CGRectGetMaxY(v34), v26 <= 0.0))
    {
      v18 = 0.0;
      return *&v18;
    }

    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    v27 = CGRectGetMaxY(v35) - v24;
    if (v26 >= v27)
    {
      v17 = v27;
    }

    else
    {
      v17 = v26;
    }

    sub_25B0057C4();
  }

  else
  {
    sub_25B0057B4();
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    v17 = CGRectGetMinY(v32) - v15;
  }

  v18 = v15 + v17;
  sub_25B0057B4();
  v19 = sub_25B0057A4();
  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  if (v19)
  {
    CGRectGetMinY(*&v20);
  }

  else
  {
    CGRectGetMaxY(*&v20);
    swift_getKeyPath();
    sub_25B004234();
  }

  sub_25B0047D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247D0);
  sub_25B005524();
  return *&v18;
}

void sub_25AF68480(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v10 = v9;
  v97 = a5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23D08);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v84 - v20;
  v22 = sub_25B004594();
  v99 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v98 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA255D0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v84 - v25;
  if (!*(v10 + 24))
  {
    return;
  }

  v96 = a4;
  v27 = *(a2 + 32);
  if (v27 <= 0xFD)
  {
    v95 = v22;
    v28 = a1[1];
    v89 = *a1;
    v88 = v28;
    v87 = *(a1 + 32);
    v30 = *a2;
    v29 = *(a2 + 8);
    v31 = *(a2 + 16);
    v32 = *(a2 + 24);
    sub_25AF25FC4(a3, v26, &unk_27FA255D0);
    v33 = type metadata accessor for GlanceDraggingModel.DraggingButtonTick(0);
    v34 = (*(*(v33 - 8) + 48))(v26, 1, v33);
    v94 = v32;
    v93 = v31;
    v91 = v30;
    if (v34 == 1)
    {
      sub_25AF181DC(v30, v29, v31, v32, v27);
      sub_25AF181DC(v30, v29, v31, v32, v27);
      sub_25AF2602C(v26, &unk_27FA255D0);
      v35 = 0;
      v92.f64[0] = 0.0;
      v36 = 0;
      v90.f64[0] = 0.0;
      v37 = v31;
      LOBYTE(v31) = -2;
    }

    else
    {
      v86 = v21;
      v38 = v29;
      v39 = *v26;
      v85 = *(v26 + 1);
      v40 = *(v26 + 2);
      v84 = *(v26 + 3);
      v37 = v31;
      LODWORD(v31) = v26[32];
      sub_25AF1D7EC(v30, v38, v37, v32, v27);
      sub_25AF1D7EC(v30, v38, v37, v32, v27);
      v90.f64[0] = v39;
      v41 = v39;
      v42 = v85;
      v92.f64[0] = v40;
      v43 = *&v40;
      v44 = v84;
      sub_25AF1D7EC(*&v41, v85, v43, v84, v31);
      sub_25AF51738(v26);
      if (v31 <= 0xFD)
      {
        *&v106 = v30;
        *(&v106 + 1) = v38;
        *&v107 = v37;
        *(&v107 + 1) = v32;
        v108 = v27;
        v100 = v90.f64[0];
        v101 = v42;
        v102 = *&v92.f64[0];
        v103 = v44;
        v104 = v31;
        sub_25AF1D7EC(v30, v38, v37, v32, v27);
        sub_25AF181DC(v30, v38, v37, v32, v27);
        v81 = sub_25AFD33F0(&v106, &v100);
        sub_25AF18128(*&v100, v101, v102, v103, v104);
        sub_25AF18128(v106, *(&v106 + 1), v107, *(&v107 + 1), v108);
        sub_25AF18128(v30, v38, v37, v32, v27);
        sub_25AF231D0(v30, v38, v37, v32, v27);
        v29 = v38;
        v21 = v86;
        if (v81)
        {
          v49 = v91;
          v50 = v29;
          v51 = v93;
          v52 = v94;
          goto LABEL_15;
        }

LABEL_8:
        swift_getKeyPath();
        *&v106 = v10;
        sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
        sub_25B004234();

        v45 = *(v10 + 136);
        v92 = *(v10 + 120);
        v90 = *(v10 + 104);
        swift_getKeyPath();
        *&v106 = v10;
        sub_25B004234();

        if (v45)
        {
          v46 = v94;
          v47 = v93;
          v48 = v91;
          if (*(v10 + 96))
          {
            goto LABEL_14;
          }
        }

        else
        {
          v46 = v94;
          v47 = v93;
          v48 = v91;
          if ((*(v10 + 96) & 1) == 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v90, *(v10 + 64)), vceqq_f64(v92, *(v10 + 80))), xmmword_25B00DFA0)) & 0xF) == 0)
          {
            goto LABEL_14;
          }
        }

        v106 = v89;
        v107 = v88;
        v108 = v87;
        v100 = *&v48;
        v101 = v29;
        v102 = v47;
        v103 = v46;
        v104 = v27;
        sub_25AF6670C(&v106, &v100);
LABEL_14:
        v49 = v48;
        v50 = v29;
        v51 = v47;
        v52 = v46;
LABEL_15:
        sub_25AF231D0(v49, v50, v51, v52, v27);
        v22 = v95;
        goto LABEL_16;
      }

      v35 = v44;
      v36 = v42;
      v29 = v38;
      v21 = v86;
    }

    sub_25AF1D7EC(v30, v29, v37, v32, v27);
    sub_25AF18128(v30, v29, v37, v32, v27);
    sub_25AF231D0(v30, v29, v37, v32, v27);
    sub_25AF231D0(*&v90.f64[0], v36, *&v92.f64[0], v35, v31);
    goto LABEL_8;
  }

LABEL_16:
  swift_getKeyPath();
  *&v106 = v10;
  sub_25AF69750(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
  sub_25B004234();

  v53 = *(v10 + 80);
  v106 = *(v10 + 64);
  v107 = v53;
  v108 = *(v10 + 96);
  sub_25AF65238(&v106);
  swift_getKeyPath();
  v100 = *&v10;
  sub_25B004234();

  v54 = OBJC_IVAR____TtC17NanoControlCenter19GlanceDraggingModel__dragValue;
  swift_beginAccess();
  sub_25AF25FC4(v10 + v54, v21, &qword_27FA23D08);
  v55 = v99;
  if ((*(v99 + 48))(v21, 1, v22) == 1)
  {
    sub_25AF2602C(v21, &qword_27FA23D08);
    return;
  }

  v56 = v98;
  (*(v55 + 32))(v98, v21, v22);
  sub_25B004584();
  v58 = v57;
  v60 = v59;
  swift_getKeyPath();
  v61 = v96;
  v105[1] = v96;
  sub_25AF69750(&qword_27FA23D18, type metadata accessor for ButtonLayout);
  sub_25B004234();

  swift_beginAccess();
  v62 = v60 + *(v61 + 96);
  v63 = sub_25AF31974();
  v64 = *(v61 + 32);
  v65 = v58 - v63 * 0.5;
  v66 = v62 - v64 * 0.5;
  v109.origin.x = v65;
  v109.origin.y = v66;
  v109.size.width = v63;
  v109.size.height = v64;
  if (CGRectGetMinY(v109) >= 0.0)
  {
    v111.origin.x = a6;
    v111.origin.y = a7;
    v111.size.width = a8;
    v111.size.height = a9;
    Height = CGRectGetHeight(v111);
    v112.origin.x = v65;
    v112.origin.y = v66;
    v112.size.width = v63;
    v112.size.height = v64;
    if (Height >= CGRectGetMaxY(v112))
    {
      (*(v55 + 8))(v56, v22);
      return;
    }

    v113.origin.x = v65;
    v113.origin.y = v66;
    v113.size.width = v63;
    v113.size.height = v64;
    v70 = Height - CGRectGetHeight(v113) + 2.0;
    v114.origin.x = v65;
    v114.origin.y = v66;
    v114.size.width = v63;
    v114.size.height = v64;
    MinY = CGRectGetMinY(v114);
    (*(v55 + 8))(v56, v22);
    if (v70 >= MinY)
    {
      v68 = MinY;
    }

    else
    {
      v68 = v70;
    }
  }

  else
  {
    v110.origin.x = v65;
    v110.origin.y = v66;
    v110.size.width = v63;
    v110.size.height = v64;
    v67 = CGRectGetMinY(v110);
    (*(v55 + 8))(v56, v22);
    if (v67 > -2.0)
    {
      v68 = v67;
    }

    else
    {
      v68 = -2.0;
    }
  }

  v72 = sub_25AF680F8(v65, v68, v63, v64);
  if ((v73 & 1) == 0)
  {
    v74 = v72;
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v75 = sub_25B0044C4();
    __swift_project_value_buffer(v75, qword_27FA30C28);
    v76 = sub_25B0044B4();
    v77 = sub_25B005CA4();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v105[0] = v79;
      *v78 = 136315394;
      *(v78 + 4) = sub_25AF8E7DC(0xD000000000000068, 0x800000025B018070, v105);
      *(v78 + 12) = 2048;
      *(v78 + 14) = v74;
      _os_log_impl(&dword_25AF0B000, v76, v77, "%s did scroll with target minY: %f", v78, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v79);
      MEMORY[0x25F85EC30](v79, -1, -1);
      MEMORY[0x25F85EC30](v78, -1, -1);
    }

    swift_getKeyPath();
    v105[0] = v10;
    sub_25B004234();

    if (*(v10 + 160) == 1)
    {
      swift_getKeyPath();
      v105[0] = v10;
      sub_25B004234();

      v80 = OBJC_IVAR____TtC17NanoControlCenter19GlanceDraggingModel__scrollOffset;
    }

    else
    {
      v80 = 144;
    }

    v82 = *(v10 + v80);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v84 - 4) = v10;
    *(&v84 - 3) = v82;
    *(&v84 - 2) = v74;
    *(&v84 - 8) = 0;
    v105[0] = v10;
    sub_25B004224();
  }
}

unint64_t sub_25AF690A0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 56 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 56 * a3;
  v13 = (v7 + 32 + 56 * a2);
  v14 = 56 * v12;
  v15 = &v13[56 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_25AF69174(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_25AFCD834(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_25AF690A0(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_25AF69234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlanceDraggingModel.DraggingButtonTick(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA255D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25028);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_25AF25FC4(a1, &v20 - v12, &unk_27FA255D0);
  sub_25AF25FC4(a2, &v13[v15], &unk_27FA255D0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_25AF25FC4(v13, v10, &unk_27FA255D0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_25AF695D4(&v13[v15], v7);
      v18 = sub_25AF675DC(v10, v7);
      sub_25AF51738(v7);
      sub_25AF51738(v10);
      sub_25AF2602C(v13, &unk_27FA255D0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_25AF51738(v10);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_25AF2602C(v13, &qword_27FA25028);
    v17 = 1;
    return v17 & 1;
  }

  sub_25AF2602C(v13, &unk_27FA255D0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_25AF694D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA255D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AF695D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlanceDraggingModel.DraggingButtonTick(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AF69638(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

__n128 sub_25AF69738()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  result = *(v0 + 24);
  v1[9] = result;
  v1[10].n128_u8[0] = v2;
  return result;
}

uint64_t sub_25AF69750(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25AF6979C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_25AF65238(v3);
}

__n128 sub_25AF697DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = *v2;
  v4 = *(v2 + 16);
  *(v1 + 136) = *(v2 + 32);
  *(v1 + 120) = v4;
  *(v1 + 104) = result;
  return result;
}

uint64_t sub_25AF697FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_25AF64F84(v3);
}

__n128 sub_25AF6983C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = *v2;
  v4 = *(v2 + 16);
  *(v1 + 96) = *(v2 + 32);
  *(v1 + 64) = result;
  *(v1 + 80) = v4;
  return result;
}

uint64_t sub_25AF69890()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 48);
  *(v1 + 48) = *(v0 + 24);

  sub_25AF64770(v2);
}

double sub_25AF6990C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

id sub_25AF69954()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.823529412 green:0.847058824 blue:0.890196078 alpha:1.0];

  return v0;
}

id static UIColor.ncc_liftedPlatter.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:0.823529412 green:0.847058824 blue:0.890196078 alpha:1.0];
}

id sub_25AF69A08()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.917647059 green:0.737254902 blue:0.109803922 alpha:1.0];

  return v0;
}

id static UIColor.ncc_schoolMode.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:0.917647059 green:0.737254902 blue:0.109803922 alpha:1.0];
}

id sub_25AF69ABC()
{
  v0 = [objc_opt_self() hkshui_sleepModeButtonSelectedColor];

  return v0;
}

id static UIColor.ncc_sleepMode.getter()
{
  v0 = [objc_opt_self() hkshui_sleepModeButtonSelectedColor];

  return v0;
}

id sub_25AF69B40()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.968627451 green:0.988235294 blue:0.368627451 alpha:1.0];

  return v0;
}

id static UIColor.ncc_walkieTalkieAvailable.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:0.968627451 green:0.988235294 blue:0.368627451 alpha:1.0];
}

uint64_t sub_25AF69BEC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25040);
  MEMORY[0x28223BE20](v10);
  v12 = v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25048);
  MEMORY[0x28223BE20](v13);
  v15 = v21 - v14;
  if (a2)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = 1;
    *(v16 + 24) = a3;
    *(v16 + 32) = a4;
    v17 = &v15[*(v13 + 36)];
    sub_25B004754();
    v21[1] = a5;

    sub_25B005B44();
    *v17 = &unk_25B00E458;
    *(v17 + 1) = v16;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25050);
    (*(*(v18 - 8) + 16))(v15, a1, v18);
    sub_25AF6A93C(v15, v12);
    swift_storeEnumTagMultiPayload();
    sub_25AF6A70C();
    sub_25AF6A798();
    sub_25B004C74();
    return sub_25AF6A9AC(v15);
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25050);
    (*(*(v20 - 8) + 16))(v12, a1, v20);
    swift_storeEnumTagMultiPayload();
    sub_25AF6A70C();
    sub_25AF6A798();
    return sub_25B004C74();
  }
}

uint64_t sub_25AF69E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[7] = sub_25B005B34();
  v3[8] = sub_25B005B24();
  v5 = sub_25B005AE4();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x2822009F8](sub_25AF69F14, v5, v4);
}

uint64_t sub_25AF69F14(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = qword_27FA30B10;
  v3[11] = qword_27FA30B10;
  if (v4)
  {
    type metadata accessor for ManualAppearanceTransitionsEffect.LifecycleModel();
    v3[12] = swift_allocObject();
    v5 = v4;
    v3[13] = sub_25B005B24();
    v6 = sub_25B005AE4();
    a3 = v7;
    v3[14] = v6;
    v3[15] = v7;
    a1 = sub_25AF69FD0;
    a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_25AF69FD0()
{
  *(*(v0 + 96) + 16) = 0;
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_25AF6A070;

  return GlanceModel.performAppearanceTransition(_:animated:)(0, 0);
}

uint64_t sub_25AF6A070()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_25AF6A190, v3, v2);
}

uint64_t sub_25AF6A190()
{
  v1 = v0[12];
  v2 = v0[11];

  *(swift_allocObject() + 16) = v2;
  sub_25B0044E4();
  swift_allocObject();
  *(v1 + 16) = sub_25B0044F4();
  v3 = v0[9];
  v4 = v0[10];

  return MEMORY[0x2822009F8](sub_25AF6A258, v3, v4);
}

uint64_t sub_25AF6A258()
{
  v1 = *(v0 + 96);
  v4 = *(v0 + 40);

  *(v0 + 16) = v4;
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25068);
  sub_25B0054A4();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25AF6A300(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_25B005B64();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;
  v7 = a1;
  sub_25AF6CDEC(0, 0, v4, &unk_25B00E478, v6);
}

uint64_t sub_25AF6A408(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_25AF6A4A8;

  return GlanceModel.performAppearanceTransition(_:animated:)(1, 0);
}

uint64_t sub_25AF6A4A8(char a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_25AF6A5A8, 0, 0);
}

uint64_t sub_25AF6A5C8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25AF6A624(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_25AF6A680(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_25AF6A70C()
{
  result = qword_27FA25058;
  if (!qword_27FA25058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25048);
    sub_25AF6A798();
    sub_25AF6A7FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25058);
  }

  return result;
}

unint64_t sub_25AF6A798()
{
  result = qword_27FA25060;
  if (!qword_27FA25060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25060);
  }

  return result;
}

unint64_t sub_25AF6A7FC()
{
  result = qword_27FA23818;
  if (!qword_27FA23818)
  {
    sub_25B004754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23818);
  }

  return result;
}

uint64_t sub_25AF6A854()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25AF6A894()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25AF19A24;

  return sub_25AF69E78(v2, v4, v3);
}

uint64_t sub_25AF6A93C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25048);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AF6A9AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25048);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25AF6AA14()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25AF6AA54()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25AF6AA94(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25AF18ADC;

  return sub_25AF6A408(a1);
}

unint64_t sub_25AF6AB4C()
{
  result = qword_27FA25070;
  if (!qword_27FA25070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA25078);
    sub_25AF6A70C();
    sub_25AF6A798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25070);
  }

  return result;
}

id sub_25AF6ABD8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_25AF6B2A4();
  sub_25B004234();

  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return sub_25AF6B1F0(v3);
}

void *sub_25AF6AC5C(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  sub_25AF6B1F0(v6);
  v10 = sub_25AF6AF88(v6, v7, v8, v9, v2, v3, v4, v5);
  sub_25AF1979C(v6);
  if (v10)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AF6B2A4();
    sub_25B004224();
    sub_25AF1979C(v2);
  }

  else
  {
    v13 = v1[2];
    v1[2] = v2;
    v1[3] = v3;
    v1[4] = v4;
    v1[5] = v5;

    return sub_25AF1979C(v13);
  }
}