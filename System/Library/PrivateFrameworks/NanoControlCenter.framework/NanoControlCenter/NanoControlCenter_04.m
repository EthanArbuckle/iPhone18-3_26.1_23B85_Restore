uint64_t sub_25AF6ADF0()
{
  sub_25AF1979C(*(v0 + 16));
  v1 = OBJC_IVAR____TtC17NanoControlCenter21ConfigureControlModel___observationRegistrar;
  v2 = sub_25B004274();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConfigureControlModel()
{
  result = qword_27FA25088;
  if (!qword_27FA25088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25AF6AEEC()
{
  result = sub_25B004274();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25AF6AF88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    sub_25AF6B1F0(0);
    if (!a5)
    {
      sub_25AF6B1F0(0);
      sub_25AF1979C(0);
      return 0;
    }

    sub_25AF6B1F0(a5);
    goto LABEL_17;
  }

  if (!a5)
  {
    sub_25AF6B1F0(a1);
    sub_25AF6B1F0(0);
    sub_25AF6B1F0(a1);

LABEL_17:
    sub_25AF1979C(a1);
    sub_25AF1979C(a5);
    return 1;
  }

  sub_25AF67FDC();
  sub_25AF6B1F0(a1);
  sub_25AF6B1F0(a5);
  sub_25AF6B1F0(a1);
  if ((sub_25B005DE4() & 1) == 0 || a2 != a6)
  {
    v17 = a5;
LABEL_13:
    sub_25AF1979C(v17);
    goto LABEL_14;
  }

  if (!a4)
  {
    if (!a8)
    {
      v16 = a5;
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  if (!a8)
  {
LABEL_21:
    v17 = a5;
    goto LABEL_13;
  }

  if (a3 == a7 && a4 == a8)
  {
    v16 = a5;
LABEL_25:
    sub_25AF1979C(v16);
    v18 = 0;
    goto LABEL_15;
  }

  v20 = sub_25B006174();
  sub_25AF1979C(a5);
  v18 = 0;
  if (v20)
  {
    goto LABEL_15;
  }

LABEL_14:
  v18 = 1;
LABEL_15:

  sub_25AF1979C(a1);
  return v18;
}

id sub_25AF6B1F0(id result)
{
  if (result)
  {
    v1 = result;

    return v1;
  }

  return result;
}

void *sub_25AF6B23C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v2[2];
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = v4;
  v2[5] = v5;
  sub_25AF6B1F0(v1);
  return sub_25AF1979C(v6);
}

unint64_t sub_25AF6B2A4()
{
  result = qword_27FA25098;
  if (!qword_27FA25098)
  {
    type metadata accessor for ConfigureControlModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA25098);
  }

  return result;
}

id GlanceScrollingModel.__allocating_init(allowScrollingEffects:buttonsModel:buttonLayout:defaultScrollAnchor:)(char a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = OBJC_IVAR____TtC17NanoControlCenter20GlanceScrollingModel_ellipticButtonAttributes;
  v13 = MEMORY[0x277D84F90];
  *&v11[v12] = sub_25AF6BFE4(MEMORY[0x277D84F90]);
  *&v11[OBJC_IVAR____TtC17NanoControlCenter20GlanceScrollingModel_contentViewHeight] = 0;
  *&v11[OBJC_IVAR____TtC17NanoControlCenter20GlanceScrollingModel_scrollOffset] = 0;
  *&v11[OBJC_IVAR____TtC17NanoControlCenter20GlanceScrollingModel__overscrollOffsetsFloats] = v13;
  sub_25B004264();
  v11[OBJC_IVAR____TtC17NanoControlCenter20GlanceScrollingModel_allowScrollingEffects] = a1;
  *&v11[OBJC_IVAR____TtC17NanoControlCenter20GlanceScrollingModel_buttonsModel] = a2;
  *&v11[OBJC_IVAR____TtC17NanoControlCenter20GlanceScrollingModel_buttonLayout] = a3;
  v14 = &v11[OBJC_IVAR____TtC17NanoControlCenter20GlanceScrollingModel_defaultScrollAnchor];
  *v14 = a4;
  v14[1] = a5;
  *(v14 + 16) = 0;
  v16.receiver = v11;
  v16.super_class = v5;
  return objc_msgSendSuper2(&v16, sel_init);
}

id GlanceScrollingModel.init(allowScrollingEffects:buttonsModel:buttonLayout:defaultScrollAnchor:)(char a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC17NanoControlCenter20GlanceScrollingModel_ellipticButtonAttributes;
  v13 = MEMORY[0x277D84F90];
  *&v5[v12] = sub_25AF6BFE4(MEMORY[0x277D84F90]);
  *&v5[OBJC_IVAR____TtC17NanoControlCenter20GlanceScrollingModel_contentViewHeight] = 0;
  *&v5[OBJC_IVAR____TtC17NanoControlCenter20GlanceScrollingModel_scrollOffset] = 0;
  *&v5[OBJC_IVAR____TtC17NanoControlCenter20GlanceScrollingModel__overscrollOffsetsFloats] = v13;
  sub_25B004264();
  v5[OBJC_IVAR____TtC17NanoControlCenter20GlanceScrollingModel_allowScrollingEffects] = a1;
  *&v5[OBJC_IVAR____TtC17NanoControlCenter20GlanceScrollingModel_buttonsModel] = a2;
  *&v5[OBJC_IVAR____TtC17NanoControlCenter20GlanceScrollingModel_buttonLayout] = a3;
  v14 = &v5[OBJC_IVAR____TtC17NanoControlCenter20GlanceScrollingModel_defaultScrollAnchor];
  *v14 = a4;
  v14[1] = a5;
  *(v14 + 16) = 0;
  v16.receiver = v5;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_init);
}

id GlanceScrollingModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GlanceScrollingModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25AF6B6D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25700);
    v3 = sub_25B006034();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *(i - 3);

      result = sub_25AF8EFD0(v8, v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 24 * result);
      *v11 = v8;
      v11[1] = v5;
      v11[2] = v6;
      *(v3[7] + result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_25AF6B800(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25110);
    v3 = sub_25B006034();

    for (i = a1 + 56; ; i += 80)
    {
      v5 = *(i - 16);
      v6 = *(i - 8);
      v7 = *i;
      v8 = *(i + 8);
      v9 = *(i + 16);
      v10 = *(i + 24);
      v11 = *(i + 32);
      v12 = *(i + 40);
      v13 = *(i + 48);
      *&v22 = *(i - 24);
      *(&v22 + 1) = v5;
      *&v23 = v6;
      *(&v23 + 1) = v7;
      v24 = v8;
      sub_25AF18244(v22, v5, v6, v7, v8);
      sub_25AF1988C(v9, v10, v11, v12, v13);
      result = sub_25AF8EEF8(&v22);
      if (v15)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v3[6] + 40 * result;
      v17 = v23;
      *v16 = v22;
      *(v16 + 16) = v17;
      *(v16 + 32) = v24;
      v18 = v3[7] + 40 * result;
      *v18 = v9;
      *(v18 + 8) = v10;
      *(v18 + 16) = v11;
      *(v18 + 24) = v12;
      *(v18 + 32) = v13;
      v19 = v3[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v3[2] = v21;
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

unint64_t sub_25AF6B95C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25108);
    v3 = sub_25B006034();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_25AF8EE80(v5, v6);
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

unint64_t sub_25AF6BA58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA250F8);
    v3 = sub_25B006034();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_25AF8EE80(v5, v6);
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

unint64_t sub_25AF6BB5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA25650);
    v3 = sub_25B006034();

    for (i = (a1 + 66); ; i += 40)
    {
      v5 = *(i - 26);
      v6 = *(i - 18);
      v7 = *(i - 10);
      v8 = *(i - 1);
      v9 = *i;
      *&v18 = *(i - 34);
      *(&v18 + 1) = v5;
      *&v19 = v6;
      *(&v19 + 1) = v7;
      v20 = *(i - 2);
      sub_25AF181DC(v18, v5, v6, v7, v20);
      result = sub_25AF8F064(&v18);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 40 * result;
      v13 = v19;
      *v12 = v18;
      *(v12 + 16) = v13;
      *(v12 + 32) = v20;
      v14 = (v3[7] + 2 * result);
      *v14 = v8;
      v14[1] = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t sub_25AF6BCA8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_25B006034();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_25AF8EE80(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
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

unint64_t sub_25AF6BDA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25118);
  v3 = sub_25B006034();
  v4 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  v5 = *(a1 + 72);
  result = sub_25AF8F278(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v8 = a1 + 80;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v9 = v3[7] + 40 * result;
    *v9 = v14;
    *(v9 + 16) = v15;
    *(v9 + 32) = v5 & 1;
    v10 = v3[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      break;
    }

    v3[2] = v12;
    sub_25AF18244(v14, *(&v14 + 1), v15, *(&v15 + 1), v5 & 1);
    if (!--v1)
    {
      return v3;
    }

    v4 = *v8;
    v14 = *(v8 + 8);
    v15 = *(v8 + 24);
    v5 = *(v8 + 40);
    result = sub_25AF8F278(*v8);
    v8 += 48;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25AF6BEE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25100);
    v3 = sub_25B006034();

    for (i = (a1 + 48); ; i += 12)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_25AF8EE80(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 2 * result) = v7;
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

unint64_t sub_25AF6BFE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25138);
    v3 = sub_25B006034();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *i;
      *&v17 = *(i - 5);
      *(&v17 + 1) = v5;
      *&v18 = v6;
      *(&v18 + 1) = v7;
      v19 = *(i - 8);
      sub_25AF181DC(v17, v5, v6, v7, v19);
      v9 = v8;
      result = sub_25AF8F064(&v17);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 40 * result;
      v13 = v18;
      *v12 = v17;
      *(v12 + 16) = v13;
      *(v12 + 32) = v19;
      *(v3[7] + 8 * result) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

uint64_t type metadata accessor for GlanceScrollingModel()
{
  result = qword_27FA250E8;
  if (!qword_27FA250E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25AF6C164()
{
  result = sub_25B004274();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_25AF6C270(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25128);
    v3 = sub_25B006034();

    for (i = (a1 + 64); ; i += 5)
    {
      v6 = *(i - 4);
      v5 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v6;
      result = sub_25AF8F1B4(v10, v5, v7, v8);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 32 * result);
      *v13 = v10;
      v13[1] = v5;
      v13[2] = v7;
      v13[3] = v8;
      *(v3[7] + 8 * result) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_25AF6C390(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA255C0);
    v3 = sub_25B006034();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *i;
      *&v16 = *(i - 5);
      *(&v16 + 1) = v5;
      *&v17 = v6;
      *(&v17 + 1) = v7;
      v18 = *(i - 8);
      sub_25AF181DC(v16, v5, v6, v7, v18);

      result = sub_25AF8F064(&v16);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 40 * result;
      v12 = v17;
      *v11 = v16;
      *(v11 + 16) = v12;
      *(v11 + 32) = v18;
      *(v3[7] + 8 * result) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

void *sub_25AF6C4BC(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25120);
  v3 = sub_25B006034();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_25AF8F278(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_25AF8F278(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25AF6C5D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25600);
    v3 = sub_25B006034();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_25AF8EE80(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

void *sub_25AF6C6E4(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 16))(v14);
  v5 = v15;
  if (v15 <= 0xFDu)
  {
    if (qword_27FA30B10)
    {
      v7 = v14[1];
      v13 = v14[0];
      v8 = v14[2];
      v9 = v14[3];
      v10 = *(a2 + 24);
      v11 = qword_27FA30B10;
      v12 = v10(a1, a2);
      v6 = sub_25AF730A0(v14, v12 & 1);

      sub_25AF231D0(v13, v7, v8, v9, v5);
      return v6;
    }
  }

  else
  {
    if (qword_27FA30B10)
    {
      v6 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editDoneButtonModel);

      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25AF6C7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  MEMORY[0x28223BE20]();
  v10 = v24 - v9;
  sub_25AF701DC(a3, v24 - v9);
  v11 = sub_25B005B64();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_25AF2602C(v10, &unk_27FA24790);
  }

  else
  {
    sub_25B005B54();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_25B005AE4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_25B005984() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_25AF2602C(a3, &unk_27FA24790);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25AF2602C(a3, &unk_27FA24790);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_25AF6CAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25AF701DC(a3, v25 - v10);
  v12 = sub_25B005B64();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25AF2602C(v11, &unk_27FA24790);
  }

  else
  {
    sub_25B005B54();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_25B005AE4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_25B005984() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24098);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_25AF2602C(a3, &unk_27FA24790);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25AF2602C(a3, &unk_27FA24790);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24098);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_25AF6CDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25AF701DC(a3, v25 - v10);
  v12 = sub_25B005B64();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25AF2602C(v11, &unk_27FA24790);
  }

  else
  {
    sub_25B005B54();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_25B005AE4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_25B005984() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_25AF2602C(a3, &unk_27FA24790);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25AF2602C(a3, &unk_27FA24790);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_25AF6D0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25AF701DC(a3, v25 - v10);
  v12 = sub_25B005B64();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25AF2602C(v11, &unk_27FA24790);
  }

  else
  {
    sub_25B005B54();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_25B005AE4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_25B005984() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25200);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_25AF2602C(a3, &unk_27FA24790);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25AF2602C(a3, &unk_27FA24790);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25200);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t type metadata accessor for LegacyAudioModel()
{
  result = qword_27FA25190;
  if (!qword_27FA25190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LegacyAudioModel.isAirplayActive.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_25AF70CC4(&qword_27FA25148, type metadata accessor for LegacyAudioModel);
  sub_25B004234();

  v1 = OBJC_IVAR____TtC17NanoControlCenter16LegacyAudioModel__isAirplayActive;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_25AF6D55C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF70CC4(&qword_27FA25148, type metadata accessor for LegacyAudioModel);
  sub_25B004234();

  v4 = OBJC_IVAR____TtC17NanoControlCenter16LegacyAudioModel__isAirplayActive;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t LegacyAudioModel.isAirplayActive.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC17NanoControlCenter16LegacyAudioModel__isAirplayActive;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AF70CC4(&qword_27FA25148, type metadata accessor for LegacyAudioModel);
    sub_25B004224();
  }

  return result;
}

void (*LegacyAudioModel.isAirplayActive.modify(uint64_t *a1))(void **a1)
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
  v4[4] = OBJC_IVAR____TtC17NanoControlCenter16LegacyAudioModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25AF70CC4(&qword_27FA25148, type metadata accessor for LegacyAudioModel);
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  return sub_25AF6D900;
}

Swift::Void __swiftcall LegacyAudioModel.startObservingAudioRouteChanges()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_25B005B64();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_25AF6EAE0(0, 0, v3, &unk_25B00E6B0, v6);
  sub_25AF2602C(v3, &unk_27FA24790);
  sub_25B0044E4();
  swift_allocObject();

  *(v0 + OBJC_IVAR____TtC17NanoControlCenter16LegacyAudioModel_notificationCancellable) = sub_25B0044F4();

  sub_25AF6E538();
}

uint64_t sub_25AF6DAB4()
{
  MEMORY[0x25F85ED10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25AF6DAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25220);
  v4[13] = swift_task_alloc();
  v5 = sub_25B005D84();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25AF6DC28, 0, 0);
}

uint64_t sub_25AF6DC28()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_25B005D94();

  sub_25B005D74();
  swift_beginAccess();
  v2 = sub_25AF70CC4(&qword_27FA25228, MEMORY[0x277CC9D68]);
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_25AF6DD70;
  v4 = v0[13];
  v5 = v0[14];

  return MEMORY[0x282200308](v4, v5, v2);
}

uint64_t sub_25AF6DD70()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_25AF6E2C0;
  }

  else
  {
    v2 = sub_25AF6DE84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25AF6DEA0()
{
  v1 = v0[13];
  v2 = sub_25B004004();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[11];
    v6 = v0[12];
    v7 = sub_25B005B64();
    v8 = *(v7 - 8);
    (*(v8 + 56))(v6, 1, 1, v7);
    v9 = swift_allocObject();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    sub_25B005B34();

    v11 = sub_25B005B24();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D85700];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v9;

    sub_25AF701DC(v6, v5);
    LODWORD(v5) = (*(v8 + 48))(v5, 1, v7);

    v14 = v0[11];
    if (v5 == 1)
    {
      sub_25AF2602C(v0[11], &unk_27FA24790);
    }

    else
    {
      sub_25B005B54();
      (*(v8 + 8))(v14, v7);
    }

    v15 = v12[2];
    swift_unknownObjectRetain();

    if (v15)
    {
      swift_getObjectType();
      v16 = sub_25B005AE4();
      v18 = v17;
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    sub_25AF2602C(v0[12], &unk_27FA24790);
    v19 = swift_allocObject();
    *(v19 + 16) = &unk_25B00E858;
    *(v19 + 24) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25200);
    if (v18 | v16)
    {
      v0[2] = 0;
      v0[3] = 0;
      v0[4] = v16;
      v0[5] = v18;
    }

    v20 = v0[13];
    swift_task_create();

    sub_25AF2602C(v20, &qword_27FA25220);
    v21 = sub_25AF70CC4(&qword_27FA25228, MEMORY[0x277CC9D68]);
    v22 = swift_task_alloc();
    v0[17] = v22;
    *v22 = v0;
    v22[1] = sub_25AF6DD70;
    v23 = v0[13];
    v24 = v0[14];

    return MEMORY[0x282200308](v23, v24, v21);
  }
}

uint64_t sub_25AF6E2C0()
{
  *(v0 + 72) = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA25230);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_25AF6E350(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AF18ADC;

  return sub_25AF6DAEC(a1, v4, v5, v6);
}

uint64_t sub_25AF6E404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_25B005B34();
  v4[7] = sub_25B005B24();
  v6 = sub_25B005AE4();

  return MEMORY[0x2822009F8](sub_25AF6E49C, v6, v5);
}

uint64_t sub_25AF6E49C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_25AF6E538();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_25AF6E538()
{
  v1 = v0;
  v26 = objc_opt_self();
  v2 = [v26 systemRoute];
  objc_opt_self();
  v3 = [swift_dynamicCastObjCClassUnconditional() endpointObject];

  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = [v3 outputDevices];

  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v24 = v1;
    v27 = sub_25AF18BD4(0, &qword_27FA25210);
    v1 = sub_25B005A44();

    v29 = v5;
    if (v1 >> 62)
    {
      v28 = sub_25B005EA4();
    }

    else
    {
      v28 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    v25 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v28 == v6)
      {

        v1 = v24;
        v5 = v25;
        goto LABEL_19;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x25F85DD30](v6, v1);
      }

      else
      {
        if (v6 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v12 = *(v1 + 8 * v6 + 32);
      }

      v13 = v12;
      v14 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_25B005B34();
      sub_25B005B24();
      sub_25B005AE4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25218);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_25B00A900;
      *(v7 + 56) = v27;
      *(v7 + 32) = v13;
      v8 = objc_allocWithZone(MEMORY[0x277CD5D30]);
      v9 = v13;
      v10 = sub_25B005A34();

      v11 = [v8 initWithOutputDevices_];

      ++v6;
      if (v11)
      {
        MEMORY[0x25F85D820]();
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25B005A64();
        }

        sub_25B005A94();
        v25 = v29;
        v6 = v14;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_19:
    if (!(v5 >> 62))
    {

      sub_25B0061D4();
      sub_25AF18BD4(0, &qword_27FA25208);
      goto LABEL_21;
    }
  }

  sub_25AF18BD4(0, &qword_27FA25208);

  sub_25B005FF4();

LABEL_21:

  sub_25AF18BD4(0, &qword_27FA25208);
  v15 = sub_25B005A34();

  v16 = [v26 _symbolNameForRoutes_];

  v17 = sub_25B005934();
  v19 = v18;

  sub_25AF6F494(v17, v19, &OBJC_IVAR____TtC17NanoControlCenter16LegacyAudioModel__outputDeviceSymbolName);
  sub_25AF6F63C();
  v20 = [v26 systemRoute];
  objc_opt_self();
  v21 = [swift_dynamicCastObjCClassUnconditional() isRoutingToWirelessDevice];

  v22 = OBJC_IVAR____TtC17NanoControlCenter16LegacyAudioModel__isAirplayActive;
  swift_beginAccess();
  if (v21 == *(v1 + v22))
  {
    *(v1 + v22) = v21;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AF70CC4(&qword_27FA25148, type metadata accessor for LegacyAudioModel);
    sub_25B004224();
  }
}

uint64_t sub_25AF6EAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25AF701DC(a3, v25 - v10);
  v12 = sub_25B005B64();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25AF2602C(v11, &unk_27FA24790);
  }

  else
  {
    sub_25B005B54();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_25B005AE4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_25B005984() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

float LegacyAudioModel.volumeValue.getter()
{
  swift_getKeyPath();
  sub_25AF70CC4(&qword_27FA25148, type metadata accessor for LegacyAudioModel);
  sub_25B004234();

  v1 = v0 + OBJC_IVAR____TtC17NanoControlCenter16LegacyAudioModel__volumeValue;
  swift_beginAccess();
  return *v1;
}

float sub_25AF6EE88@<S0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF70CC4(&qword_27FA25148, type metadata accessor for LegacyAudioModel);
  sub_25B004234();

  v4 = (v3 + OBJC_IVAR____TtC17NanoControlCenter16LegacyAudioModel__volumeValue);
  swift_beginAccess();
  result = *v4;
  *a2 = *v4;
  return result;
}

uint64_t LegacyAudioModel.volumeValue.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC17NanoControlCenter16LegacyAudioModel__volumeValue);
  result = swift_beginAccess();
  if (*v3 == a1)
  {
    *v3 = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AF70CC4(&qword_27FA25148, type metadata accessor for LegacyAudioModel);
    sub_25B004224();
  }

  return result;
}

void (*LegacyAudioModel.volumeValue.modify(uint64_t *a1))(void **a1)
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
  v4[4] = OBJC_IVAR____TtC17NanoControlCenter16LegacyAudioModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_25AF70CC4(&qword_27FA25148, type metadata accessor for LegacyAudioModel);
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  swift_beginAccess();
  return sub_25AF6F23C;
}

uint64_t sub_25AF6F25C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_25AF70CC4(&qword_27FA25148, type metadata accessor for LegacyAudioModel);
  sub_25B004234();

  v4 = *(v2 + *a2);

  return v4;
}

uint64_t sub_25AF6F324@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_25AF70CC4(&qword_27FA25148, type metadata accessor for LegacyAudioModel);
  sub_25B004234();

  v6 = (v5 + *a2);
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a1;
  v6 = a1[1];

  return sub_25AF6F494(v7, v6, a5);
}

uint64_t sub_25AF6F494(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
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
    sub_25AF70CC4(&qword_27FA25148, type metadata accessor for LegacyAudioModel);
    sub_25B004224();
  }
}

Swift::Void __swiftcall LegacyAudioModel.startObservingVolumeChanges()()
{
  [*(v0 + OBJC_IVAR____TtC17NanoControlCenter16LegacyAudioModel_volumeController) setDelegate_];

  sub_25AF6F63C();
}

id sub_25AF6F63C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC17NanoControlCenter16LegacyAudioModel_volumeController);
  [v2 volumeValue];
  v4 = v3;
  v5 = (v0 + OBJC_IVAR____TtC17NanoControlCenter16LegacyAudioModel__volumeValue);
  swift_beginAccess();
  if (*v5 == v4)
  {
    *v5 = v4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AF70CC4(&qword_27FA25148, type metadata accessor for LegacyAudioModel);
    sub_25B004224();
  }

  v7 = [objc_opt_self() systemRoute];
  objc_opt_self();
  v8 = [swift_dynamicCastObjCClassUnconditional() isDeviceSpeakerRoute];

  if (!v8)
  {
    swift_getKeyPath();
    sub_25AF70CC4(&qword_27FA25148, type metadata accessor for LegacyAudioModel);
    sub_25B004234();

    v14 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter16LegacyAudioModel__outputDeviceSymbolName);
    v15 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter16LegacyAudioModel__outputDeviceSymbolName + 8);

    v16 = v14;
    v17 = v15;
    return sub_25AF6F494(v16, v17, &OBJC_IVAR____TtC17NanoControlCenter16LegacyAudioModel__volumeSymbolName);
  }

  result = [v2 volumeValue];
  v11 = ceilf(v10 * 3.0);
  if (v11 <= 3.0)
  {
    if ((LODWORD(v11) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    v11 = 3.0;
  }

  if (v11 <= -9.2234e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v11 < 9.2234e18)
  {
    if (v11)
    {
      v12 = sub_25B006124();
      MEMORY[0x25F85D7B0](v12);

      v13 = 0x2E65766177;
    }

    else
    {
      v13 = 0x6873616C73;
    }

    MEMORY[0x25F85D7B0](v13, 0xE500000000000000);

    MEMORY[0x25F85D7B0](0x6C6C69662ELL, 0xE500000000000000);
    v16 = 0x2E72656B61657073;
    v17 = 0xE800000000000000;
    return sub_25AF6F494(v16, v17, &OBJC_IVAR____TtC17NanoControlCenter16LegacyAudioModel__volumeSymbolName);
  }

LABEL_18:
  __break(1u);
  return result;
}

id LegacyAudioModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LegacyAudioModel.init()()
{
  ObjectType = swift_getObjectType();
  v2 = objc_opt_self();
  v3 = [v2 systemRoute];
  v4 = [v2 _symbolNameForRoute_];

  v5 = sub_25B005934();
  v7 = v6;

  v8 = &v0[OBJC_IVAR____TtC17NanoControlCenter16LegacyAudioModel__outputDeviceSymbolName];
  *v8 = v5;
  v8[1] = v7;
  v0[OBJC_IVAR____TtC17NanoControlCenter16LegacyAudioModel__isAirplayActive] = 0;
  *&v0[OBJC_IVAR____TtC17NanoControlCenter16LegacyAudioModel_notificationCancellable] = 0;
  *&v0[OBJC_IVAR____TtC17NanoControlCenter16LegacyAudioModel__volumeValue] = 0;
  v9 = &v0[OBJC_IVAR____TtC17NanoControlCenter16LegacyAudioModel__volumeSymbolName];
  *v9 = 0xD000000000000013;
  v9[1] = 0x800000025B0183C0;
  v10 = OBJC_IVAR____TtC17NanoControlCenter16LegacyAudioModel_volumeController;
  *&v0[v10] = [objc_allocWithZone(MEMORY[0x277CD60F0]) init];
  sub_25B004264();
  v12.receiver = v0;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

id LegacyAudioModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LegacyAudioModel.volumeController(_:volumeValueDidChange:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_25B005B64();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_25B005B34();
  v5 = v0;
  v6 = sub_25B005B24();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  sub_25AF6C7F8(0, 0, v3, &unk_25B00E710, v7);
}

uint64_t sub_25AF6FE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_25B005B34();
  *(v4 + 24) = sub_25B005B24();
  v6 = sub_25B005AE4();

  return MEMORY[0x2822009F8](sub_25AF6FEBC, v6, v5);
}

uint64_t sub_25AF6FEBC()
{

  sub_25AF6F63C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25AF6FF24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AF19A24;

  return sub_25AF6FE24(a1, v4, v5, v6);
}

uint64_t sub_25AF6FFE0()
{
  result = sub_25B004274();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25AF701DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AF7024C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25AF108E8;

  return v6(a1);
}

uint64_t sub_25AF70344(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_25AF70438;

  return v5(v2 + 16);
}

uint64_t sub_25AF70438()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_25AF70568(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_25AF7065C;

  return v5(v2 + 32);
}

uint64_t sub_25AF7065C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_25AF70770()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25AF707A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25AF19A24;

  return sub_25AF70568(a1, v4);
}

uint64_t sub_25AF70860(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25AF18ADC;

  return sub_25AF70568(a1, v4);
}

uint64_t sub_25AF70918(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_25AF7065C;

  return v5(v2 + 32);
}

uint64_t sub_25AF70A0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25AF19A24;

  return sub_25AF70918(a1, v4);
}

uint64_t sub_25AF70AC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25AF19A24;

  return sub_25AF7024C(a1, v4);
}

uint64_t sub_25AF70B7C()
{
  v1 = *(v0 + 24);
  v2 = (*(v0 + 16) + OBJC_IVAR____TtC17NanoControlCenter16LegacyAudioModel__volumeValue);
  result = swift_beginAccess();
  *v2 = v1;
  return result;
}

uint64_t sub_25AF70BFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC17NanoControlCenter16LegacyAudioModel__isAirplayActive;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_25AF70C78(void *a1)
{
  v2 = v1[4];
  v3 = (v1[2] + *a1);
  *v3 = v1[3];
  v3[1] = v2;
}

uint64_t sub_25AF70CC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25AF70D0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AF19A24;

  return sub_25AF6E404(a1, v4, v5, v6);
}

uint64_t sub_25AF70DC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25AF19A24;

  return sub_25AF70344(a1, v4);
}

uint64_t sub_25AF70EDC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  sub_25B006294();
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v27 = *(a1 + 16);
  v28 = *a1;
  v29 = *(a1 + 32);
  if (v29 >> 6)
  {
    if (v29 >> 6 == 1)
    {
      MEMORY[0x25F85E0A0](1);
      sub_25B005DF4();
      MEMORY[0x25F85E0A0](v4);
      if (!v5)
      {
        sub_25B0062B4();
        goto LABEL_12;
      }

      sub_25B0062B4();
    }

    else
    {
      MEMORY[0x25F85E0A0](2);
      if (v29)
      {
        MEMORY[0x25F85E0A0](1);
        sub_25B005994();
      }

      else
      {
        MEMORY[0x25F85E0A0](0);
        sub_25B005DF4();
      }
    }

    sub_25B005994();
  }

  else
  {
    MEMORY[0x25F85E0A0](0);
    MEMORY[0x25F85E0A0](v28);
  }

LABEL_12:
  v7 = sub_25B0062D4();
  v8 = -1 << *(v2 + 32);
  v9 = v7 & ~v8;
  v25 = v2 + 56;
  if (((*(v2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v23 = v29 >> 6;
  v26 = v5;
  v24 = ~v8;
  while (1)
  {
    v10 = v2;
    v11 = *(v2 + 48) + 40 * v9;
    v13 = *v11;
    v12 = *(v11 + 8);
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    v16 = *(v11 + 32);
    v31[0] = *v11;
    v31[1] = v12;
    v31[2] = v15;
    v31[3] = v14;
    v32 = v16;
    v33 = v28;
    v34 = v4;
    v35 = v27;
    v36 = v26;
    v37 = v29;
    if (v16 >> 6)
    {
      break;
    }

    if (v29 >= 0x40)
    {
      sub_25AF196CC(a1, v30);
      goto LABEL_45;
    }

    sub_25AF196CC(a1, v30);
    sub_25AF2602C(v31, &unk_27FA25590);
    v2 = v10;
    if (v13 == v28)
    {
      return 1;
    }

LABEL_15:
    v9 = (v9 + 1) & v24;
    if (((*(v25 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  if (v16 >> 6 != 1)
  {
    if (v23 != 2)
    {
      goto LABEL_44;
    }

    if (v16)
    {
      if ((v29 & 1) == 0 || (v13 == v28 ? (v18 = v12 == v4) : (v18 = 0), !v18 && (sub_25B006174() & 1) == 0))
      {
LABEL_44:
        sub_25AF196CC(a1, v30);
        sub_25AF181DC(v13, v12, v15, v14, v16);
        goto LABEL_45;
      }

      if (v15 == v27 && v14 == v26)
      {
        sub_25AF196CC(a1, v30);
        sub_25AF181DC(v13, v12, v27, v26, v16);
LABEL_63:
        sub_25AF2602C(v31, &unk_27FA25590);
        return 1;
      }

      v17 = sub_25B006174();
      sub_25AF196CC(a1, v30);
      sub_25AF181DC(v13, v12, v15, v14, v16);
      sub_25AF2602C(v31, &unk_27FA25590);
    }

    else
    {
      if (v29)
      {
        goto LABEL_44;
      }

      sub_25AF18BD4(0, &qword_27FA27200);
      sub_25AF181DC(v13, v12, v15, v14, v16);
      sub_25AF196CC(a1, v30);
      sub_25AF181DC(v13, v12, v15, v14, v16);
      if ((sub_25B005DE4() & 1) == 0)
      {
        sub_25AF18128(v13, v12, v15, v14, v16);
LABEL_45:
        sub_25AF2602C(v31, &unk_27FA25590);
LABEL_46:
        v2 = v10;
        goto LABEL_15;
      }

      if (v12 == v4 && v15 == v27)
      {
        sub_25AF18128(v13, v4, v27, v14, v16);
        goto LABEL_63;
      }

      v17 = sub_25B006174();
      sub_25AF18128(v13, v12, v15, v14, v16);
      sub_25AF2602C(v31, &unk_27FA25590);
    }

    goto LABEL_53;
  }

  if (v23 != 1)
  {
    goto LABEL_44;
  }

  sub_25AF18BD4(0, &qword_27FA27200);
  sub_25AF181DC(v13, v12, v15, v14, v16);
  sub_25AF196CC(a1, v30);
  sub_25AF181DC(v13, v12, v15, v14, v16);
  sub_25AF196CC(a1, v30);
  sub_25AF181DC(v13, v12, v15, v14, v16);
  if ((sub_25B005DE4() & 1) == 0 || v12 != v4)
  {
    sub_25AF2602C(v31, &unk_27FA25590);
    sub_25AF18128(v13, v12, v15, v14, v16);
    sub_25AF1C414(a1);
    v20 = v13;
    v21 = v12;
LABEL_42:
    sub_25AF18128(v20, v21, v15, v14, v16);
    goto LABEL_46;
  }

  if (!v14)
  {
    sub_25AF2602C(v31, &unk_27FA25590);
    sub_25AF18128(v13, v4, v15, 0, v16);
    sub_25AF1C414(a1);
    sub_25AF18128(v13, v4, v15, 0, v16);
    v2 = v10;
    if (!v26)
    {
      return 1;
    }

    goto LABEL_15;
  }

  if (!v26)
  {
    sub_25AF2602C(v31, &unk_27FA25590);
    sub_25AF18128(v13, v4, v15, v14, v16);
    sub_25AF1C414(a1);
    v20 = v13;
    v21 = v4;
    goto LABEL_42;
  }

  if (v15 != v27 || v14 != v26)
  {
    v17 = sub_25B006174();
    sub_25AF2602C(v31, &unk_27FA25590);
    sub_25AF18128(v13, v4, v15, v14, v16);
    sub_25AF1C414(a1);
    sub_25AF18128(v13, v4, v15, v14, v16);
LABEL_53:
    v2 = v10;
    if (v17)
    {
      return 1;
    }

    goto LABEL_15;
  }

  sub_25AF2602C(v31, &unk_27FA25590);
  sub_25AF18128(v13, v4, v27, v26, v16);
  sub_25AF1C414(a1);
  sub_25AF18128(v13, v4, v27, v26, v16);
  return 1;
}

BOOL sub_25AF715FC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_25B006294();
  MEMORY[0x25F85E0A0](a1);
  v4 = sub_25B0062D4();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_25AF716C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_25B006294();
  sub_25B005994();
  v6 = sub_25B0062D4();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_25B006174() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_25AF717E8(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_25AF718D8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  return *(v2 + *a2);
}

unint64_t sub_25AF71978(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v41 = MEMORY[0x277D84F90];
  sub_25AF98A50(0, v1, 0);
  v2 = v41;
  v4 = v3 + 56;
  result = sub_25B005E64();
  v6 = result;
  v7 = *(v3 + 36);
  if (qword_27FA23768 != -1)
  {
    goto LABEL_34;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    do
    {
      if (v6 >= 1 << *(v3 + 32))
      {
        break;
      }

      v33 = v3 + 64;
      v34 = v1;
      v36 = qword_27FA30B40;
      v37 = v3;
      v8 = 1;
      v35 = v4;
      while (1)
      {
        v9 = v6 >> 6;
        if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          break;
        }

        v40 = v8;
        v10 = *(*(v3 + 48) + 8 * v6);
        if (*(v36 + 16))
        {
          v38 = v7;
          v11 = v2;
          result = sub_25AF8F278(v10);
          if (v12)
          {
            v13 = *(v36 + 56) + 40 * result;
            v10 = *v13;
            v14 = *(v13 + 8);
            v15 = *(v13 + 16);
            v4 = *(v13 + 24);
            v16 = *(v13 + 32);
            v17 = v16 | 0x80;
            result = sub_25AF18244(*v13, v14, v15, v4, v16);
            v18 = v17;
            v19 = v15;
          }

          else
          {
            v14 = 0;
            v19 = 0;
            v4 = 0;
            v18 = 0;
          }

          v2 = v11;
          v7 = v38;
        }

        else
        {
          v14 = 0;
          v19 = 0;
          v4 = 0;
          v18 = 0;
        }

        v42 = v2;
        v21 = *(v2 + 16);
        v20 = *(v2 + 24);
        if (v21 >= v20 >> 1)
        {
          v32 = v19;
          v39 = v7;
          v30 = v18;
          result = sub_25AF98A50((v20 > 1), v21 + 1, 1);
          v18 = v30;
          v19 = v32;
          v7 = v39;
          v2 = v42;
        }

        *(v2 + 16) = v21 + 1;
        v22 = v2 + 40 * v21;
        *(v22 + 32) = v10;
        *(v22 + 40) = v14;
        *(v22 + 48) = v19;
        *(v22 + 56) = v4;
        *(v22 + 64) = v18;
        v3 = v37;
        v1 = 1 << *(v37 + 32);
        if (v6 >= v1)
        {
          goto LABEL_31;
        }

        v4 = v35;
        v23 = *(v35 + 8 * v9);
        if ((v23 & (1 << v6)) == 0)
        {
          goto LABEL_32;
        }

        if (v7 != *(v37 + 36))
        {
          goto LABEL_33;
        }

        v24 = v23 & (-2 << (v6 & 0x3F));
        if (v24)
        {
          v6 = __clz(__rbit64(v24)) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v25 = v9 << 6;
          v26 = v9 + 1;
          v27 = (v33 + 8 * v9);
          while (v26 < (v1 + 63) >> 6)
          {
            v29 = *v27++;
            v28 = v29;
            v25 += 64;
            ++v26;
            if (v29)
            {
              result = sub_25AF40220(v6, v7, 0);
              v6 = __clz(__rbit64(v28)) + v25;
              goto LABEL_25;
            }
          }

          result = sub_25AF40220(v6, v7, 0);
          v6 = v1;
        }

LABEL_25:
        if (v40 == v34)
        {
          return v2;
        }

        if ((v6 & 0x8000000000000000) == 0)
        {
          v7 = *(v37 + 36);
          v8 = v40 + 1;
          if (v6 < 1 << *(v37 + 32))
          {
            continue;
          }
        }

        goto LABEL_35;
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      v31 = v7;
      result = swift_once();
      v7 = v31;
    }

    while ((v6 & 0x8000000000000000) == 0);
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_25AF71CA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v33 = MEMORY[0x277D84F90];
  sub_25AF98A50(0, v1, 0);
  v2 = v33;
  v4 = v3 + 56;
  result = sub_25B005E64();
  v6 = result;
  v7 = 0;
  v26 = v3 + 64;
  v27 = v1;
  v28 = v3 + 56;
  v29 = v3;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v30 = v7;
    v31 = *(v3 + 36);
    v10 = *(v3 + 48) + 40 * v6;
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 32);
    v32 = *(v10 + 24);
    result = sub_25AF18244(*v10, v12, v13, v32, v14);
    v16 = *(v33 + 16);
    v15 = *(v33 + 24);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      result = sub_25AF98A50((v15 > 1), v16 + 1, 1);
      v17 = v16 + 1;
    }

    *(v33 + 16) = v17;
    v18 = v33 + 40 * v16;
    *(v18 + 32) = v11;
    *(v18 + 40) = v12;
    *(v18 + 48) = v13;
    *(v18 + 56) = v32;
    *(v18 + 64) = v14 | 0x80;
    v3 = v29;
    v8 = 1 << *(v29 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = v28;
    v19 = *(v28 + 8 * v9);
    if ((v19 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v31 != *(v29 + 36))
    {
      goto LABEL_24;
    }

    v20 = v19 & (-2 << (v6 & 0x3F));
    if (v20)
    {
      v8 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v9 << 6;
      v22 = v9 + 1;
      v23 = (v26 + 8 * v9);
      while (v22 < (v8 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_25AF40220(v6, v31, 0);
          v8 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_25AF40220(v6, v31, 0);
    }

LABEL_4:
    v7 = v30 + 1;
    v6 = v8;
    if (v30 + 1 == v27)
    {
      return v2;
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
  return result;
}

void sub_25AF71F04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
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
    v24 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_25AF8E7DC(0xD000000000000037, 0x800000025B0194C0, &v24);
    _os_log_impl(&dword_25AF0B000, v8, v9, "%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x25F85EC30](v11, -1, -1);
    MEMORY[0x25F85EC30](v10, -1, -1);
  }

  v12 = [v5 extensionIdentity];
  v13 = [v5 kind];
  if (!v13)
  {
    sub_25B005934();
    v13 = sub_25B005924();
  }

  v14 = objc_allocWithZone(MEMORY[0x277CFA228]);
  v15 = v12;
  v16 = [v14 initWithExtensionIdentity:v15 kind:v13 intent:a2];

  v17 = (v3 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_selectAvailableControlBlock);
  swift_beginAccess();
  v18 = *v17;
  if (*v17)
  {
    v24 = v16;
    v25 = v6;
    v26 = 0;
    v27 = 0;
    v19 = v16;
    sub_25AF2EBC4(v18);
    v18(&v24, a2);
    sub_25AF1895C(v18);
  }

  else
  {
    v24 = v16;
    v25 = v6;
    v26 = 0;
    v27 = 0;
    v28 = 64;
    v20 = v16;
    sub_25AF81C70(&v24);
  }

  v21 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__showAddSheet;
  if (*(v3 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__showAddSheet))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v24 = v3;
    sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
    sub_25B004224();
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__showAddSheet) = 0;
    swift_getKeyPath();
    v24 = v3;
    sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
    sub_25B004234();

    swift_getKeyPath();
    v24 = v3;
    sub_25B004234();

    if (*(v3 + v21))
    {
      v23 = 0;
    }

    else
    {
      v23 = 2;
    }

    sub_25AF72400(v23, 1u, 0, 0);
  }
}

uint64_t sub_25AF72354()
{
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();
}

uint64_t sub_25AF72400(uint64_t a1, unsigned int a2, uint64_t a3, char a4)
{
  if (!a3)
  {
    v4 = *(*(v85 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_controlsModel) + OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_userDisplayedControls);
    goto LABEL_19;
  }

  v4 = a3;
  if (a3 != 1)
  {
LABEL_19:

LABEL_22:
    v72 = 0;
    v20 = 0;
    v21 = v4 + 56;
    v22 = 1 << *(v4 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v4 + 56);
    v82 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_controlsShouldBeMarkedNotSettledVisible;
    v84 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_controlsShouldBeMarkedVisible;
    v76 = (v22 + 63) >> 6;
    v78 = v4;
    v25 = a1;
LABEL_25:
    v74 = 0;
    while (v24)
    {
LABEL_31:
      v27 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v28 = *(v4 + 48) + ((v20 << 11) | (32 * v27));
      v29 = *v28;
      v30 = *(v28 + 8);
      v31 = *(v28 + 16);
      v32 = *(v28 + 24);
      if (v25)
      {
        if (v25 == 1)
        {
          swift_beginAccess();

          v69 = v29;
          v39 = sub_25AF7E350(v86, v69, v30, v31, v32);
          if (*v40)
          {
            sub_25AF99800(a2);
          }

          (v39)(v86, 0);
          swift_endAccess();
          swift_beginAccess();
          sub_25AF1895C(v74);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v87[0] = *(v85 + v82);
          v42 = v87[0];
          *(v85 + v82) = 0x8000000000000000;
          v43 = sub_25AF8F1B4(v69, v30, v31, v32);
          v45 = v42[2];
          v46 = (v44 & 1) == 0;
          v47 = __OFADD__(v45, v46);
          v48 = v45 + v46;
          if (v47)
          {
            goto LABEL_65;
          }

          v49 = v44;
          if (v42[3] >= v48)
          {
            v50 = v30;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v53 = v43;
              sub_25AF985C4();
              v43 = v53;
              v42 = v87[0];
            }
          }

          else
          {
            sub_25AF97420(v48, isUniquelyReferenced_nonNull_native);
            v42 = v87[0];
            v50 = v30;
            v43 = sub_25AF8F1B4(v69, v30, v31, v32);
            if ((v49 & 1) != (v51 & 1))
            {
              goto LABEL_67;
            }
          }

          *(v85 + v82) = v42;
          if ((v49 & 1) == 0)
          {
            sub_25AF16430(v43, v69, v50, v31, v32, MEMORY[0x277D84FA0], v42);
            v52 = v69;
          }

          sub_25AF90E78(v87, a2);
          swift_endAccess();

          v74 = sub_25AFA0BAC;
          v25 = a1;
          v4 = v78;
        }

        else if (v25 == 2)
        {
          v70 = *(v28 + 8);
          swift_beginAccess();

          v54 = v29;
          v55 = sub_25AF7E350(v86, v54, v70, v31, v32);
          if (*v56)
          {
            sub_25AF99800(a2);
          }

          (v55)(v86, 0);
          swift_endAccess();
          swift_beginAccess();
          sub_25AF1895C(v72);
          v57 = swift_isUniquelyReferenced_nonNull_native();
          v87[0] = *(v85 + v84);
          v58 = v87[0];
          *(v85 + v84) = 0x8000000000000000;
          v59 = sub_25AF8F1B4(v54, v70, v31, v32);
          v61 = v58[2];
          v62 = (v60 & 1) == 0;
          v47 = __OFADD__(v61, v62);
          v63 = v61 + v62;
          if (v47)
          {
            goto LABEL_66;
          }

          v64 = v60;
          if (v58[3] >= v63)
          {
            if ((v57 & 1) == 0)
            {
              v67 = v59;
              sub_25AF985C4();
              v59 = v67;
              v58 = v87[0];
            }
          }

          else
          {
            sub_25AF97420(v63, v57);
            v58 = v87[0];
            v59 = sub_25AF8F1B4(v54, v70, v31, v32);
            if ((v64 & 1) != (v65 & 1))
            {
              goto LABEL_67;
            }
          }

          v4 = v78;
          *(v85 + v84) = v58;
          if ((v64 & 1) == 0)
          {
            sub_25AF16430(v59, v54, v70, v31, v32, MEMORY[0x277D84FA0], v58);
            v66 = v54;
          }

          sub_25AF90E78(v87, a2);
          swift_endAccess();

          v72 = sub_25AFA0BAC;
          v25 = a1;
          goto LABEL_25;
        }
      }

      else
      {
        v33 = *(v28 + 16);
        swift_beginAccess();

        v34 = v29;
        v35 = sub_25AF7E350(v86, v34, v30, v33, v32);
        if (*v36)
        {
          sub_25AF99800(a2);
        }

        (v35)(v86, 0);
        swift_endAccess();
        swift_beginAccess();
        v37 = sub_25AF7E350(v86, v34, v30, v33, v32);
        v4 = v78;
        if (*v38)
        {
          sub_25AF99800(a2);
        }

        (v37)(v86, 0);
        swift_endAccess();

        v25 = a1;
      }
    }

    while (1)
    {
      v26 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v26 >= v76)
      {

        sub_25AF7E44C(a4 & 1);
        sub_25AF1895C(v72);
        return sub_25AF1895C(v74);
      }

      v24 = *(v21 + 8 * v26);
      ++v20;
      if (v24)
      {
        v20 = v26;
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_64;
  }

  swift_getKeyPath();
  v86[0] = v85;
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  v5 = *(v85 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__suggestedButtonIDs);
  v6 = *(v5 + 16);

  if (!v6)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_21:

    v4 = sub_25AF9B3D0(v9);

    goto LABEL_22;
  }

  v7 = 0;
  v8 = v5 + 64;
  v9 = MEMORY[0x277D84F90];
  v81 = v6;
  v83 = v5;
  v73 = v6 - 1;
  v75 = v5 + 64;
LABEL_5:
  v77 = v9;
  v10 = (v8 + 40 * v7);
  v11 = v7;
  while (v11 < *(v5 + 16))
  {
    v13 = *(v10 - 4);
    v12 = *(v10 - 3);
    v15 = *(v10 - 2);
    v14 = *(v10 - 1);
    v16 = *v10;
    sub_25B005B34();
    sub_25AF181DC(v13, v12, v15, v14, v16);
    sub_25B005B24();
    sub_25B005AE4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if ((v16 & 0xC0) == 0x40)
    {
      v9 = v77;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_25AFCD46C(0, *(v77 + 2) + 1, 1, v77);
      }

      v5 = v83;
      v18 = *(v9 + 2);
      v17 = *(v9 + 3);
      if (v18 >= v17 >> 1)
      {
        v9 = sub_25AFCD46C((v17 > 1), v18 + 1, 1, v9);
      }

      v7 = v11 + 1;
      *(v9 + 2) = v18 + 1;
      v19 = &v9[32 * v18];
      *(v19 + 4) = v13;
      *(v19 + 5) = v12;
      *(v19 + 6) = v15;
      *(v19 + 7) = v14;
      v8 = v75;
      if (v73 != v11)
      {
        goto LABEL_5;
      }

      goto LABEL_21;
    }

    ++v11;
    sub_25AF18128(v13, v12, v15, v14, v16);
    v10 += 40;
    v5 = v83;
    if (v81 == v11)
    {
      v9 = v77;
      goto LABEL_21;
    }
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  result = sub_25B006204();
  __break(1u);
  return result;
}

Swift::Void __swiftcall GlanceModel.updateLockButtonPresence()()
{
  v1 = v0;
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v2 = sub_25B0044C4();
  __swift_project_value_buffer(v2, qword_27FA30C28);
  v3 = sub_25B0044B4();
  v4 = sub_25B005C94();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_25AF8E7DC(0xD00000000000001ALL, 0x800000025B018500, v10);
    _os_log_impl(&dword_25AF0B000, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x25F85EC30](v6, -1, -1);
    MEMORY[0x25F85EC30](v5, -1, -1);
  }

  swift_getKeyPath();
  v10[0] = v1;
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  v7 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__isTinkerWatch;
  swift_beginAccess();
  if (*(v1 + v7) == 1)
  {
    v10[0] = 10;
    memset(&v10[1], 0, 24);
    v11 = 0;
    v8 = sub_25AF730A0(v10, 0);
    sub_25AF18128(0xA, 0, 0, 0, 0);
    if (*(v8 + 72))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v10[0] = v8;
      sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
      sub_25B004224();
    }

    else
    {
      *(v8 + 72) = 0;
    }
  }
}

uint64_t sub_25AF72FEC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  return *(v2 + *a2);
}

uint64_t sub_25AF730A0(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  v18 = *a1;
  v19 = v3;
  v20 = *(a1 + 32);
  if (a2)
  {
    v4 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_selectionViewButtonModels;
    swift_beginAccess();
    v5 = sub_25AF7EB28((v2 + v4), &v18);
    swift_endAccess();
  }

  else
  {
    v6 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_buttonModels;
    swift_beginAccess();
    v5 = sub_25AF7EB28((v2 + v6), &v18);
    swift_endAccess();
    v15 = v18;
    v16 = v19;
    v17 = v20;
    swift_retain_n();
    sub_25AF7EF38(&v15, v5);
  }

  v7 = *(v5 + 48);
  if (v7 <= 0xFD && (v7 & 0xC0) == 0x40)
  {
    v9 = *(v5 + 16);
    v8 = *(v5 + 24);
    v11 = *(v5 + 32);
    v10 = *(v5 + 40);
    *&v15 = v9;
    *(&v15 + 1) = v8;
    *&v16 = v11;
    *(&v16 + 1) = v10;
    sub_25AF181DC(v9, v8, v11, v10, v7);
    v12 = sub_25AF81740(&v15);
    v13 = *(v5 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlVisibility);
    *(v5 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlVisibility) = v12;
    if (v12 != v13)
    {
      sub_25AFB9D68();
    }

    sub_25AF231D0(v9, v8, v11, v10, v7);
  }

  else
  {
  }

  return v5;
}

id sub_25AF73238@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  v3 = v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID;
  v4 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID);
  v5 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID + 8);
  v6 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID + 16);
  v7 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(v3 + 32);
  *(a1 + 32) = v8;
  return sub_25AF1D7EC(v4, v5, v6, v7, v8);
}

uint64_t GlanceModel.performAppearanceTransition(_:animated:)(uint64_t a1, char a2)
{
  *(v3 + 264) = a2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA249E8);
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = sub_25B005B34();
  *(v3 + 216) = sub_25B005B24();
  v5 = sub_25B005AE4();
  *(v3 + 224) = v5;
  *(v3 + 232) = v4;

  return MEMORY[0x2822009F8](sub_25AF733D8, v5, v4);
}

uint64_t sub_25AF733D8()
{
  v41 = v0;
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0044C4();
  *(v0 + 240) = __swift_project_value_buffer(v1, qword_27FA30C28);
  v2 = sub_25B0044B4();
  v3 = sub_25B005C94();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v40[0] = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_25AF8E7DC(0xD000000000000028, 0x800000025B018520, v40);
    _os_log_impl(&dword_25AF0B000, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x25F85EC30](v5, -1, -1);
    MEMORY[0x25F85EC30](v4, -1, -1);
  }

  v6 = *(v0 + 192);
  swift_getKeyPath();
  *(v0 + 144) = v6;
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  v7 = *(v6 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__hasStartedAnyTransitions);
  if ((v7 & 1) == 0)
  {
    v8 = sub_25B0044B4();
    v9 = sub_25B005CD4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v40[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_25AF8E7DC(0xD000000000000028, 0x800000025B018520, v40);
      _os_log_impl(&dword_25AF0B000, v8, v9, "%s First appearance transition", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x25F85EC30](v11, -1, -1);
      MEMORY[0x25F85EC30](v10, -1, -1);
    }

    v12 = *(v0 + 192) + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_firstTransitionBlock;
    v13 = *v12;
    if (*v12)
    {

      v13(v14);
      sub_25AF1895C(v13);
      v15 = *v12;
    }

    else
    {
      v15 = 0;
    }

    *v12 = 0;
    *(v12 + 8) = 0;
    sub_25AF1895C(v15);
  }

  v17 = *(v0 + 184);
  v16 = *(v0 + 192);
  swift_getKeyPath();
  *(v0 + 152) = v16;
  sub_25B004234();

  v18 = *(v16 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__currentTransition);
  if (v18 != v17)
  {
    v20 = *(v0 + 184);
    v19 = *(v0 + 192);
    swift_getKeyPath();
    v21 = swift_task_alloc();
    *(v21 + 16) = v19;
    *(v21 + 24) = v20;
    *(v0 + 160) = v19;
    sub_25B004224();
  }

  v22 = *(v0 + 264);
  if (v7)
  {
    v22 = (v18 == 2) & v22;
  }

  v23 = [objc_opt_self() processInfo];
  v24 = [v23 isLowPowerModeEnabled];

  if (v22 && (v24 & 1) == 0)
  {
    *(v0 + 248) = sub_25B005B24();
    v26 = sub_25B005AE4();

    return MEMORY[0x2822009F8](sub_25AF73AB0, v26, v25);
  }

  v27 = sub_25B0044B4();
  v28 = sub_25B005C94();
  if (!os_log_type_enabled(v27, v28))
  {
    goto LABEL_29;
  }

  v29 = *(v0 + 184);
  v30 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  v40[0] = v31;
  *v30 = 136315394;
  *(v30 + 4) = sub_25AF8E7DC(0xD000000000000028, 0x800000025B018520, v40);
  *(v30 + 12) = 2080;
  switch(v29)
  {
    case 0:
      v32 = "ButtonsTransition.disappear";
      v33 = 0xD000000000000018;
      goto LABEL_28;
    case 2:
      v32 = "eTransition(_:animated:)";
      v33 = 0xD000000000000022;
      goto LABEL_28;
    case 1:
      v32 = "n.disappearReplace";
      v33 = 0xD00000000000001BLL;
LABEL_28:
      v34 = sub_25AF8E7DC(v33, v32 | 0x8000000000000000, v40);

      *(v30 + 14) = v34;
      _os_log_impl(&dword_25AF0B000, v27, v28, "%s animating to ending state. Transition: %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F85EC30](v31, -1, -1);
      MEMORY[0x25F85EC30](v30, -1, -1);
LABEL_29:

      if (!*(v0 + 184))
      {
        sub_25AF120D4();
      }

      sub_25AF72400(1, 1u, 0, 0);
      v35 = swift_task_alloc();
      *(v0 + 256) = v35;
      *v35 = v0;
      v35[1] = sub_25AF73E94;
      v36 = *(v0 + 264);
      v37 = *(v0 + 184);

      return sub_25AF80348(v37, 1, v36);
  }

  v38 = *(v0 + 184);
  type metadata accessor for ButtonsTransition(0);
  *(v0 + 176) = v38;

  return sub_25B0061E4();
}

uint64_t sub_25AF73AB0()
{
  v13 = v0;
  v1 = v0[23];
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 userInterfaceLayoutDirection];

  v12 = 0;
  if (!v1)
  {
    GlanceModel.updateLockButtonPresence()();
  }

  v4 = v3 == 0;
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[23];

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA252B0);
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_25AF4C5B4(v5, 0, v7, 0, v4, v6);
  sub_25AF2602C(v5, &qword_27FA249E8);
  sub_25AF808F4(v6, &v12, v7);
  v9 = v0[28];
  v10 = v0[29];

  return MEMORY[0x2822009F8](sub_25AF73C10, v9, v10);
}

uint64_t sub_25AF73C10()
{
  v15 = v0;
  v1 = sub_25B0044B4();
  v2 = sub_25B005C94();
  if (!os_log_type_enabled(v1, v2))
  {
    goto LABEL_9;
  }

  v3 = 0xD000000000000018;
  v4 = *(v0 + 184);
  v5 = swift_slowAlloc();
  v6 = swift_slowAlloc();
  v14 = v6;
  *v5 = 136315394;
  *(v5 + 4) = sub_25AF8E7DC(0xD000000000000028, 0x800000025B018520, &v14);
  *(v5 + 12) = 2080;
  switch(v4)
  {
    case 0:
      v7 = "ButtonsTransition.disappear";
      goto LABEL_8;
    case 2:
      v7 = "eTransition(_:animated:)";
      v3 = 0xD000000000000022;
      goto LABEL_8;
    case 1:
      v7 = "n.disappearReplace";
      v3 = 0xD00000000000001BLL;
LABEL_8:
      v8 = sub_25AF8E7DC(v3, v7 | 0x8000000000000000, &v14);

      *(v5 + 14) = v8;
      _os_log_impl(&dword_25AF0B000, v1, v2, "%s animating to ending state. Transition: %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F85EC30](v6, -1, -1);
      MEMORY[0x25F85EC30](v5, -1, -1);
LABEL_9:

      if (!*(v0 + 184))
      {
        sub_25AF120D4();
      }

      sub_25AF72400(1, 1u, 0, 0);
      v9 = swift_task_alloc();
      *(v0 + 256) = v9;
      *v9 = v0;
      v9[1] = sub_25AF73E94;
      v10 = *(v0 + 264);
      v11 = *(v0 + 184);

      return sub_25AF80348(v11, 1, v10);
  }

  v13 = *(v0 + 184);
  type metadata accessor for ButtonsTransition(0);
  *(v0 + 176) = v13;

  return sub_25B0061E4();
}

uint64_t sub_25AF73E94(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 136) = a1;
  *(v3 + 128) = v1;

  v4 = *(v2 + 232);
  v5 = *(v2 + 224);

  return MEMORY[0x2822009F8](sub_25AF73FBC, v5, v4);
}

uint64_t sub_25AF73FBC()
{
  v1 = *(v0 + 184);
  if ((v1 - 1) >= 2)
  {
    if (v1)
    {
      type metadata accessor for ButtonsTransition(0);
      *(v0 + 168) = v1;

      return sub_25B0061E4();
    }

    else
    {

      sub_25AF72400(2, 1u, 0, 0);
LABEL_18:
      v22 = *(v0 + 136);

      v23 = *(v0 + 8);

      return v23(v22);
    }
  }

  else
  {
    v29 = (v0 + 16);
    v2 = *(v0 + 192);

    v3 = *(v2 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_controlsModel);
    sub_25AF122C8(0);
    v4 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_userDisplayedControls);
    v5 = v4 + 56;
    v6 = -1;
    v7 = -1 << *(v4 + 32);
    if (-v7 < 64)
    {
      v6 = ~(-1 << -v7);
    }

    v8 = v6 & *(v4 + 56);
    v9 = (63 - v7) >> 6;
    v27 = v4;

    v11 = 0;
    v24 = v5;
    v25 = (v0 + 48);
    v26 = v0;
    while (v8)
    {
LABEL_11:
      v13 = *(v27 + 48) + ((v11 << 11) | (32 * __clz(__rbit64(v8))));
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = *(v13 + 24);
      swift_beginAccess();

      v28 = v14;
      v18 = sub_25AF7E350(v29, v28, v15, v16, v17);
      if (*v19)
      {
        sub_25AF99800(1u);
      }

      v18();
      v0 = v26;
      swift_endAccess();
      swift_beginAccess();
      v20 = sub_25AF7E350(v25, v28, v15, v16, v17);
      if (*v21)
      {
        sub_25AF99800(1u);
      }

      v8 &= v8 - 1;
      (v20)(v25, 0);
      swift_endAccess();

      v5 = v24;
    }

    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        sub_25AF7E44C(0);
        goto LABEL_18;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        v11 = v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_25AF742D8()
{
  type metadata accessor for GlanceModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27FA30B00 = result;
  return result;
}

uint64_t sub_25AF74330()
{
  result = sub_25B005924();
  qword_27FA30B08 = result;
  return result;
}

uint64_t static GlanceModel.sharedIfExists()()
{
  v0 = qword_27FA30B10;
  v1 = qword_27FA30B10;
  return v0;
}

void sub_25AF74394()
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = qword_27FA30B10;
  qword_27FA30B10 = 0;
}

uint64_t GlanceModel.buttonLayout.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_buttonLayout;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *sub_25AF74548(uint64_t a1)
{
  v2 = v1;
  v31 = 0;
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  swift_getKeyPath();
  v8 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel___observationRegistrar;
  v41 = v2;
  v32 = sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  v33 = v8;
  sub_25B004234();

  v35 = v2;
  v9 = &v2[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID];
  v11 = *&v2[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID];
  v10 = *&v2[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID + 8];
  v13 = *&v2[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID + 16];
  v12 = *(v9 + 3);
  v34 = v9;
  v14 = v9[32];
  if (v7 > 0xFD)
  {
    sub_25AF1D7EC(v11, v10, v13, v12, v9[32]);
    sub_25AF1D7EC(v3, v4, v6, v5, v7);
    if (v14 > 0xFD)
    {
      return sub_25AF231D0(v3, v4, v6, v5, v7);
    }

LABEL_6:
    sub_25AF231D0(v3, v4, v6, v5, v7);
    sub_25AF231D0(v11, v10, v13, v12, v14);
    v16 = v35;
    if (v7 > 0xFD)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v14 > 0xFD)
  {
    sub_25AF1D7EC(v11, v10, v13, v12, v9[32]);
    sub_25AF1D7EC(v3, v4, v6, v5, v7);
    sub_25AF1D7EC(v3, v4, v6, v5, v7);
    sub_25AF18128(v3, v4, v6, v5, v7);
    goto LABEL_6;
  }

  v41 = v3;
  v42 = v4;
  v43 = v6;
  v44 = v5;
  v45 = v7;
  v36 = v11;
  v37 = v10;
  v38 = v13;
  v39 = v12;
  v40 = v14;
  sub_25AF1D7EC(v11, v10, v13, v12, v14);
  sub_25AF1D7EC(v3, v4, v6, v5, v7);
  sub_25AF1D7EC(v3, v4, v6, v5, v7);
  sub_25AF181DC(v3, v4, v6, v5, v7);
  v17 = sub_25AFD33F0(&v41, &v36);
  sub_25AF18128(v36, v37, v38, v39, v40);
  sub_25AF18128(v41, v42, v43, v44, v45);
  sub_25AF18128(v3, v4, v6, v5, v7);
  result = sub_25AF231D0(v3, v4, v6, v5, v7);
  v16 = v35;
  if (v17)
  {
    return result;
  }

LABEL_9:
  v41 = v3;
  v42 = v4;
  v43 = v6;
  v44 = v5;
  v45 = v7;
  sub_25AF181DC(v3, v4, v6, v5, v7);
  v18 = sub_25AF730A0(&v41, 0);
  v19 = OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__isLifted;
  if (*(v18 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__isLifted))
  {
    KeyPath = swift_getKeyPath();
    v30[1] = v30;
    MEMORY[0x28223BE20](KeyPath);
    v41 = v18;
    sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
    v21 = v31;
    sub_25B004224();
    v31 = v21;
    sub_25AF231D0(v3, v4, v6, v5, v7);

    v16 = v35;
  }

  else
  {
    sub_25AF231D0(v3, v4, v6, v5, v7);
    *(v18 + v19) = 0;
  }

LABEL_12:
  swift_getKeyPath();
  v41 = v16;
  sub_25B004234();

  v22 = v34[32];
  if (v22 <= 0xFD)
  {
    v24 = *(v34 + 1);
    v26 = *(v34 + 2);
    v25 = *(v34 + 3);
    v41 = *v34;
    v23 = v41;
    v42 = v24;
    v43 = v26;
    v44 = v25;
    v45 = v22;
    sub_25AF181DC(v41, v24, v26, v25, v22);
    v27 = sub_25AF730A0(&v41, 0);
    v28 = OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__isLifted;
    if (v27[OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel__isLifted] == 1)
    {
      sub_25AF231D0(v23, v24, v26, v25, v22);
      v27[v28] = 1;
    }

    else
    {
      v29 = swift_getKeyPath();
      v35 = v30;
      MEMORY[0x28223BE20](v29);
      v41 = v27;
      sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
      sub_25B004224();
      sub_25AF231D0(v23, v24, v26, v25, v22);
    }
  }

  return result;
}

id sub_25AF74B3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  v4 = v3 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID;
  v5 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID);
  v6 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID + 8);
  v7 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID + 16);
  v8 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID + 24);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  v9 = *(v4 + 32);
  *(a2 + 32) = v9;
  return sub_25AF1D7EC(v5, v6, v7, v8, v9);
}

void *sub_25AF74C04(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *&v6 = *a1;
  *(&v6 + 1) = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  sub_25AF1D7EC(v6, v1, v2, v3, v4);
  return sub_25AF74C58(&v6);
}

void *sub_25AF74C58(__int128 *a1)
{
  v2 = a1[1];
  v16 = *a1;
  v17 = v2;
  v18 = *(a1 + 32);
  v3 = v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID;
  v4 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID + 16);
  v19[0] = *(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID);
  v19[1] = v4;
  v20 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID + 32);
  sub_25AF25FC4(v19, v14, &qword_27FA23D78);
  v5 = sub_25AF9B144(v19, &v16);
  sub_25AF2602C(v19, &qword_27FA23D78);
  if (v5)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v14[0] = v1;
    sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
    sub_25B004224();
    sub_25AF2602C(&v16, &qword_27FA23D78);
  }

  else
  {
    v8 = *v3;
    v9 = *(v3 + 8);
    v10 = *(v3 + 16);
    v11 = *(v3 + 24);
    v12 = v17;
    *v3 = v16;
    *(v3 + 16) = v12;
    v13 = *(v3 + 32);
    *(v3 + 32) = v18;
    sub_25AF1D7EC(v8, v9, v10, v11, v13);
    sub_25AF231D0(v8, v9, v10, v11, v13);
    v14[0] = v8;
    v14[1] = v9;
    v14[2] = v10;
    v14[3] = v11;
    v15 = v13;
    sub_25AF74548(v14);
    return sub_25AF231D0(v8, v9, v10, v11, v13);
  }
}

void *sub_25AF74E60(uint64_t a1, uint64_t a2)
{
  v3 = a1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID;
  v4 = *(a1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID);
  v5 = *(a1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID + 8);
  v6 = *(a1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID + 16);
  v7 = *(a1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID + 24);
  v8 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v8;
  v9 = *(v3 + 32);
  *(v3 + 32) = *(a2 + 32);
  sub_25AF1D7EC(v4, v5, v6, v7, v9);
  sub_25AF25FC4(a2, v11, &qword_27FA23D78);
  sub_25AF231D0(v4, v5, v6, v7, v9);
  v11[0] = v4;
  v11[1] = v5;
  v11[2] = v6;
  v11[3] = v7;
  v12 = v9;
  sub_25AF74548(v11);
  return sub_25AF231D0(v4, v5, v6, v7, v9);
}

BOOL GlanceModel.isDragging.getter()
{
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  return *(v0 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID + 32) < 0xFEu;
}

uint64_t sub_25AF75004()
{
  swift_getKeyPath();
  v7 = v0;
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  v1 = (v0 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__phoneSymbolName);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  sub_25B005F24();

  MEMORY[0x25F85D7B0](0xD00000000000001ALL, 0x800000025B0193B0);
  v5[0] = swift_getKeyPath();
  v5[1] = v3;
  v5[2] = v2;
  v6 = v5;
  sub_25AF75D34(6, 2, &v6, &qword_27FA242A0);
}

uint64_t GlanceModel.phoneSymbolName.getter()
{
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  v1 = (v0 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__phoneSymbolName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_25AF75230@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v4 = *(v3 + 88);
  *a2 = *(v3 + 80);
  a2[1] = v4;
}

void *sub_25AF752F4(void *a1, char a2)
{
  v4 = sub_25B005894();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25AF18BD4(0, &qword_27FA271F0);
  *v7 = sub_25B005D34();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = sub_25B0058A4();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v12 = a1;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v10 = sub_25AF730A0(&v12, 0);
    sub_25AF18128(a1, 0, 0, 0, 0);
    if (a2 != 2)
    {
      sub_25AFB851C(a2 & 1);
    }

    v12 = a1;
    v13 = 0;
    v14 = 0;
    v15 = 0;

    sub_25AF7EF38(&v12, v10);

    return sub_25AF18128(v12, *(&v12 + 1), v13, v14, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_25AF754BC(void *a1, char a2, void *a3)
{
  v4 = v3;
  v8 = sub_25B005894();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25AF18BD4(0, &qword_27FA271F0);
  *v11 = sub_25B005D34();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v12 = sub_25B0058A4();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v44 = a1;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v43 = v4;
    v14 = sub_25AF730A0(&v44, 0);
    v42 = a1;
    sub_25AF18128(a1, 0, 0, 0, 0);
    if (a2 != 2)
    {
      sub_25AFB851C(a2 & 1);
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA242A0);
    v16 = a3;
    v17 = *a3;
    type metadata accessor for GlanceButtonModel(255);
    v40 = sub_25B006144();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v41 = v36;
    v19 = *(TupleTypeMetadata2 - 8);
    v20 = *(v19 + 64);
    v21 = MEMORY[0x28223BE20](TupleTypeMetadata2);
    v22 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = *(v19 + 16);
    v24 = v23(v22, v17, TupleTypeMetadata2, v21);
    v39 = v36;
    v37 = *(TupleTypeMetadata2 + 48);
    v25 = MEMORY[0x28223BE20](v24);
    (v23)(v22, v25);

    *&v44 = v14;
    swift_setAtReferenceWritableKeyPath();

    v26 = *(v15 - 8);
    v38 = *(v26 + 8);
    v39 = (v26 + 8);
    v38(&v22[v37], v15);
    v27 = v16[1];
    v28 = swift_getTupleTypeMetadata2();
    v40 = v36;
    v29 = *(v28 - 8);
    v30 = *(v29 + 64);
    v31 = MEMORY[0x28223BE20](v28);
    v32 = v36 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = *(v29 + 16);
    v34 = v33(v32, v27, v28, v31);
    v36[1] = v36;
    v37 = *(v28 + 48);
    v35 = MEMORY[0x28223BE20](v34);
    (v33)(v32, v35);

    *&v44 = v14;
    swift_setAtReferenceWritableKeyPath();

    v38(&v32[v37], v15);
    v44 = v42;
    v45 = 0;
    v46 = 0;
    v47 = 0;

    sub_25AF7EF38(&v44, v14);

    return sub_25AF18128(v44, *(&v44 + 1), v45, v46, v47);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_25AF759BC(void *a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v8 = sub_25B005894();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25AF18BD4(0, &qword_27FA271F0);
  *v11 = sub_25B005D34();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v12 = sub_25B0058A4();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v29 = a1;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v28 = v4;
    v14 = sub_25AF730A0(&v29, 0);
    v27 = a1;
    sub_25AF18128(a1, 0, 0, 0, 0);
    if (a2 != 2)
    {
      sub_25AFB851C(a2 & 1);
    }

    v15 = *a3;
    type metadata accessor for GlanceButtonModel(255);
    sub_25B006144();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v26 = &v24;
    v17 = *(TupleTypeMetadata2 - 8);
    v18 = *(v17 + 64);
    v19 = MEMORY[0x28223BE20](TupleTypeMetadata2);
    v20 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = *(v17 + 16);
    v22 = v21(v20, v15, TupleTypeMetadata2, v19);
    v25 = *(TupleTypeMetadata2 + 48);
    v23 = MEMORY[0x28223BE20](v22);
    (v21)(v20, v23);

    *&v29 = v14;
    swift_setAtReferenceWritableKeyPath();

    (*(*(MEMORY[0x277D839B0] - 8) + 8))(&v20[v25]);
    v29 = v27;
    v30 = 0;
    v31 = 0;
    v32 = 0;

    sub_25AF7EF38(&v29, v14);

    return sub_25AF18128(v29, *(&v29 + 1), v30, v31, v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_25AF75D34(void *a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = v4;
  v10 = sub_25B005894();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25AF18BD4(0, &qword_27FA271F0);
  *v13 = sub_25B005D34();
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v14 = sub_25B0058A4();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v32 = a1;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v31 = v6;
    v16 = sub_25AF730A0(&v32, 0);
    v30 = a1;
    sub_25AF18128(a1, 0, 0, 0, 0);
    if (a2 != 2)
    {
      sub_25AFB851C(a2 & 1);
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
    v18 = *a3;
    type metadata accessor for GlanceButtonModel(255);
    sub_25B006144();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v29 = &v27;
    v20 = *(TupleTypeMetadata2 - 8);
    v21 = *(v20 + 64);
    v22 = MEMORY[0x28223BE20](TupleTypeMetadata2);
    v23 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = *(v20 + 16);
    v25 = v24(v23, v18, TupleTypeMetadata2, v22);
    v27 = &v27;
    v28 = *(TupleTypeMetadata2 + 48);
    v26 = MEMORY[0x28223BE20](v25);
    (v24)(v23, v26);

    *&v32 = v16;
    swift_setAtReferenceWritableKeyPath();

    (*(*(v17 - 8) + 8))(&v23[v28], v17);
    v32 = v30;
    v33 = 0;
    v34 = 0;
    v35 = 0;

    sub_25AF7EF38(&v32, v16);

    return sub_25AF18128(v32, *(&v32 + 1), v33, v34, v35);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_25AF760BC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_25AF76120;
}

uint64_t GlanceModel.phoneSymbolName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__phoneSymbolName);
  swift_beginAccess();
  v6 = *v5 == a1 && v5[1] == a2;
  if (v6 || (sub_25B006174() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;

    return sub_25AF75004();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
    sub_25B004224();
  }
}

uint64_t sub_25AF764EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  v4 = (v3 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__phoneSymbolName);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t sub_25AF765D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__phoneSymbolName);
  swift_beginAccess();
  *v5 = a2;
  v5[1] = a3;

  return sub_25AF75004();
}

void (*GlanceModel.phoneSymbolName.modify(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  v4[7] = sub_25AF760BC(v4);
  return sub_25AF76790;
}

uint64_t sub_25AF7679C(char a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  v4 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__showAddSheet;
  if (*(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__showAddSheet) & 1) == 0 && (a1)
  {
    v5 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_selectionViewButtonModels;
    swift_beginAccess();
    *(v2 + v5) = MEMORY[0x277D84F98];
  }

  swift_getKeyPath();
  sub_25B004234();

  if (*(v2 + v4))
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  return sub_25AF72400(v6, 1u, 0, 0);
}

uint64_t sub_25AF768F4(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__showAddSheet);
  if (v3 == v2)
  {
    *(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__showAddSheet) = v2;

    return sub_25AF7679C(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
    sub_25B004224();
  }
}

uint64_t sub_25AF76A44@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_25AF76B0C(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
    sub_25B004224();
  }

  return result;
}

void (*sub_25AF76C10(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__hasBaseband;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_25AF76C98;
}

void sub_25AF76C98(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    v6 = *(v5 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_orderModel);
    swift_getKeyPath();
    *v3 = v5;
    sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
    sub_25B004234();

    *(v6 + 40) = *(v5 + v4);
  }

  free(v3);
}

uint64_t GlanceModel.hasBaseband.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__hasBaseband;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
    v6 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_orderModel);
    swift_getKeyPath();
    sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
    sub_25B004234();

    *(v6 + 40) = *(v1 + v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
    sub_25B004224();
  }

  return result;
}

uint64_t type metadata accessor for GlanceModel()
{
  result = qword_27FA25500;
  if (!qword_27FA25500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25AF77004(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__hasBaseband;
  swift_beginAccess();
  *(a1 + v4) = a2;
  v5 = *(a1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_orderModel);
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  *(v5 + 40) = *(a1 + v4);
  return result;
}

void (*GlanceModel.hasBaseband.modify(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  v4[7] = sub_25AF76C10(v4);
  return sub_25AF77220;
}

uint64_t sub_25AF7722C@<X0>(void *a1@<X0>, uint64_t (**a2)(unsigned __int8 *a1)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editingChangedBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_25AF9F4CC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_25AF2EBC4(v4);
}

uint64_t sub_25AF772CC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_25AF9F494;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editingChangedBlock);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_25AF2EBC4(v3);
  return sub_25AF1895C(v8);
}

uint64_t GlanceModel.filterAvailableControlsBlock.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_availableControlsModel) + 48);
  sub_25AF2EBC4(v1);
  return v1;
}

uint64_t sub_25AF77474@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_availableControlsModel);
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_25AF9F460;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_25AF2EBC4(v4);
}

uint64_t sub_25AF77504(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_25AF9F428;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(*a2 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_availableControlsModel);
  v8 = *(v7 + 48);
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  sub_25AF2EBC4(v3);

  return sub_25AF1895C(v8);
}

uint64_t GlanceModel.filterAvailableControlsBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_availableControlsModel);
  v4 = *(v3 + 48);
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  return sub_25AF1895C(v4);
}

uint64_t (*GlanceModel.filterAvailableControlsBlock.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_availableControlsModel);
  a1[2] = v3;
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  *a1 = v4;
  a1[1] = v5;
  sub_25AF2EBC4(v4);
  return sub_25AF7761C;
}

uint64_t sub_25AF7761C(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  v5 = *(v2 + 48);
  *(v2 + 48) = *a1;
  *(v2 + 56) = v3;
  if (a2)
  {
    sub_25AF2EBC4(v4);
    sub_25AF1895C(v5);
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  return sub_25AF1895C(v6);
}

uint64_t sub_25AF77690@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_selectAvailableControlBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_25AF9F3FC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_25AF2EBC4(v4);
}

uint64_t sub_25AF77730(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_25AF9F3C4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_selectAvailableControlBlock);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_25AF2EBC4(v3);
  return sub_25AF1895C(v8);
}

uint64_t sub_25AF7789C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_selectControlDoneBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_25AFA0CB0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_25AF2EBC4(v4);
}

uint64_t sub_25AF7793C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_25AFA0C74;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_selectControlDoneBlock);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_25AF2EBC4(v3);
  return sub_25AF1895C(v8);
}

uint64_t sub_25AF77AA4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_selectControlNavigationBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_25AF9F398;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_25AF2EBC4(v4);
}

uint64_t sub_25AF77B44(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_25AF9F360;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_selectControlNavigationBlock);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_25AF2EBC4(v3);
  return sub_25AF1895C(v8);
}

uint64_t sub_25AF77CAC@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_selectControlNavigationBackBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_25AF9F338;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_25AF2EBC4(v4);
}

uint64_t sub_25AF77D4C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_25AF9F310;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_selectControlNavigationBackBlock);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_25AF2EBC4(v3);
  return sub_25AF1895C(v8);
}

uint64_t sub_25AF77E34(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_25AF77EBC(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_25AF77F80(unint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA255A0);
  MEMORY[0x28223BE20](v6 - 8);
  v70 = &v57 - v7;
  v61 = v4;
  if (!a1)
  {
    v8 = sub_25AFEC930();
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    swift_getKeyPath();
    *&v73 = v2;
    sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
    sub_25B004234();

LABEL_5:
    v9 = sub_25AF7E938(v8);

    goto LABEL_10;
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    v9 = sub_25AF159EC(*(a1 + 16), 0);
    v11 = sub_25AF168E4(&v73, v9 + 32, v10, a1);
    sub_25AF9F4F8(a1);
    result = sub_25AF18700();
    if (v11 != v10)
    {
      __break(1u);
      return result;
    }

    LOBYTE(v4) = v61;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

LABEL_10:
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v13 = sub_25B0044C4();
  __swift_project_value_buffer(v13, qword_27FA30C28);
  sub_25AF9F4F8(a1);

  v14 = sub_25B0044B4();
  v15 = sub_25B005C94();
  sub_25AF9F508(a1);

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v73 = v17;
    *v16 = 136315650;
    *(v16 + 4) = sub_25AF8E7DC(0xD000000000000024, 0x800000025B0190F0, &v73);
    *(v16 + 12) = 2080;
    v18 = sub_25AF7E26C(a1);
    v20 = sub_25AF8E7DC(v18, v19, &v73);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2080;
    v21 = MEMORY[0x25F85D850](v9, &type metadata for GlanceControlID);
    v4 = sub_25AF8E7DC(v21, v22, &v73);

    *(v16 + 24) = v4;
    LOBYTE(v4) = v61;
    _os_log_impl(&dword_25AF0B000, v14, v15, "%s prewarm buttons set: %s; controls: %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v17, -1, -1);
    MEMORY[0x25F85EC30](v16, -1, -1);
  }

  v57 = v9;
  v23 = *(v9 + 16);
  if (v23)
  {
    v65 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_selectionViewButtonModels;
    v66 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_buttonModels;
    v60 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_controlsShouldBeMarkedVisible;
    v59 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_controlsShouldBeMarkedNotSettledVisible;
    v24 = (v57 + 56);
    v58 = v3;
    while (1)
    {
      v27 = *(v24 - 3);
      v26 = *(v24 - 2);
      v28 = *(v24 - 1);
      v29 = *v24;
      if (v4)
      {
        v76[0] = *(v24 - 3);
        v76[1] = v26;
        v76[2] = v28;
        v76[3] = v29;
        v77 = 64;
        v30 = v65;
        swift_beginAccess();
        swift_bridgeObjectRetain_n();
        v31 = v27;
        v32 = sub_25AF7EB28((v3 + v30), v76);
        swift_endAccess();

        v33 = 1;
      }

      else
      {
        *&v73 = *(v24 - 3);
        *(&v73 + 1) = v26;
        *&v74 = v28;
        *(&v74 + 1) = v29;
        LOBYTE(v75) = 64;
        v34 = v66;
        swift_beginAccess();
        swift_bridgeObjectRetain_n();
        v35 = v27;
        v32 = sub_25AF7EB28((v3 + v34), &v73);
        swift_endAccess();
        v71[0] = v73;
        v71[1] = v74;
        v72 = v75;
        swift_retain_n();
        sub_25AF7EF38(v71, v32);

        v33 = 0;
      }

      v36 = *(v32 + 48);
      if (v36 <= 0xFD && (v36 & 0xC0) == 0x40)
      {
        break;
      }

LABEL_17:
      v24 += 4;
      v25 = v70;
      sub_25AFB7988(v33, v70);

      sub_25AF2602C(v25, &qword_27FA255A0);
      if (!--v23)
      {
      }
    }

    v62 = v29;
    v63 = v27;
    v64 = v33;
    v37 = v3;
    v38 = *(v32 + 16);
    v39 = *(v32 + 24);
    v41 = *(v32 + 32);
    v40 = *(v32 + 40);
    v42 = v60;
    swift_beginAccess();
    v43 = *(v37 + v42);
    v44 = *(v43 + 16);
    v69 = v38;
    sub_25AF181DC(v38, v39, v41, v40, v36);
    v67 = v40;
    v68 = v39;
    if (v44 && (v45 = sub_25AF8F1B4(v69, v39, v41, v40), (v46 & 1) != 0))
    {
      v47 = *(*(v43 + 56) + 8 * v45);
      swift_endAccess();
      v48 = *(v47 + 16) != 0;
    }

    else
    {
      swift_endAccess();
      v48 = 0;
    }

    v49 = v59;
    v3 = v58;
    swift_beginAccess();
    v50 = *(v3 + v49);
    v51 = v41;
    if (*(v50 + 16) && (v52 = sub_25AF8F1B4(v69, v68, v41, v67), (v53 & 1) != 0))
    {
      v54 = *(*(v50 + 56) + 8 * v52);
      swift_endAccess();
      v27 = v63;
      if (v48)
      {
        v55 = 1;
        if (!*(v54 + 16))
        {
          v55 = 2;
        }

        goto LABEL_36;
      }
    }

    else
    {
      swift_endAccess();
      v27 = v63;
      if (v48)
      {
        v55 = 2;
LABEL_36:
        v56 = *(v32 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlVisibility);
        *(v32 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlVisibility) = v55;
        LOBYTE(v4) = v61;
        if (v55 != v56)
        {
          sub_25AFB9D68();
        }

        sub_25AF231D0(v69, v68, v51, v67, v36);
        v33 = v64;
        goto LABEL_17;
      }
    }

    v55 = 0;
    goto LABEL_36;
  }
}

uint64_t sub_25AF78694@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  *a2 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__suggestedButtonIDs);
}

uint64_t sub_25AF78774(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__suggestedButtonIDs;

  v5 = sub_25AF38000(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;

    return sub_25AF77F80(1uLL, 1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
    sub_25B004224();
  }
}

uint64_t sub_25AF788DC(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__suggestedButtonIDs) = a2;

  return sub_25AF77F80(1uLL, 1);
}

uint64_t sub_25AF789B8(uint64_t result, void *a2)
{
  if (*(v2 + *a2) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
    sub_25B004224();
  }

  return result;
}

uint64_t sub_25AF78AB0()
{
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();
}

uint64_t sub_25AF78B5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  *a2 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__previousTransitionAnimationTask);
}

uint64_t sub_25AF78C10(uint64_t result)
{
  v2 = result;
  v3 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__previousTransitionAnimationTask;
  if (!*(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__previousTransitionAnimationTask))
  {
    if (!result)
    {
      *(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__previousTransitionAnimationTask) = 0;
      return result;
    }

    goto LABEL_9;
  }

  if (!result || (, v4 = sub_25B005BE4(), result = , (v4 & 1) == 0))
  {
LABEL_9:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
    sub_25B004224();
  }

  v5 = *(v1 + v3);
  *(v1 + v3) = v2;
  if (v5)
  {

    sub_25B005BF4();
  }

  return result;
}

uint64_t sub_25AF78DD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__previousTransitionAnimationTask);
  *(a1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__previousTransitionAnimationTask) = a2;
  if (!v2)
  {
  }

  sub_25B005BF4();
}

void *sub_25AF78E68()
{
  v1 = v0;
  swift_getKeyPath();
  *&v8[0] = v0;
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  v2 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__editMode;
  result = swift_beginAccess();
  if ((*(v1 + v2) & 1) == 0)
  {
    swift_getKeyPath();
    *&v8[0] = v1;
    sub_25B004234();

    if (*(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__draggingButtonID + 32) <= 0xFDu)
    {
      if (qword_27FA23800 != -1)
      {
        swift_once();
      }

      v4 = sub_25B0044C4();
      __swift_project_value_buffer(v4, qword_27FA30C28);
      v5 = sub_25B0044B4();
      v6 = sub_25B005CB4();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        MEMORY[0x25F85EC30](v7, -1, -1);
      }
    }

    memset(v8, 0, sizeof(v8));
    v9 = -2;
    return sub_25AF74C58(v8);
  }

  return result;
}

uint64_t (*sub_25AF7904C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_25AF790B0;
}

uint64_t sub_25AF790C8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_25AF79120@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

void *GlanceModel.editMode.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__editMode;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
    return sub_25AF78E68();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
    sub_25B004224();
  }
}

void (*GlanceModel.editMode.modify(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  v4[7] = sub_25AF7904C(v4);
  return sub_25AF79478;
}

uint64_t sub_25AF794F8()
{
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  v1 = *(v0 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__wifiButtonName);

  return v1;
}

uint64_t sub_25AF795B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  v4 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__wifiButtonName + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__wifiButtonName);
  a2[1] = v4;
}

uint64_t sub_25AF7966C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__wifiButtonName);
  v6 = *(v2 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__wifiButtonName) == a1 && *(v2 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__wifiButtonName + 8) == a2;
  if (v6 || (sub_25B006174() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
    sub_25B004224();
  }
}

double sub_25AF797D8()
{
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  return *(v0 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__batteryPercentage);
}

double sub_25AF79880@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  result = *(v3 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__batteryPercentage);
  *a2 = result;
  return result;
}

void sub_25AF79930(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__batteryPercentage) == a1)
  {
    *(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__batteryPercentage) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
    sub_25B004224();
  }
}

uint64_t sub_25AF79A64@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  *a3 = *(v5 + *a2);
  return result;
}

void *sub_25AF79B2C(char a1)
{
  v2 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__isLowPowerMode;
  if (*(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__isLowPowerMode) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__isLowPowerMode) = a1 & 1;
    swift_getKeyPath();
    sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
    sub_25B004234();

    return sub_25AF752F4(0, *(v1 + v2));
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
    sub_25B004224();
  }
}

void *sub_25AF79CC8(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__isLowPowerMode;
  *(a1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__isLowPowerMode) = a2;
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  return sub_25AF752F4(0, *(a1 + v3));
}

void (*sub_25AF79D94(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__isTinkerWatch;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_25AF79E1C;
}

void sub_25AF79E1C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    v6 = *(v5 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_orderModel);
    swift_getKeyPath();
    *v3 = v5;
    sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
    sub_25B004234();

    *(v6 + 41) = *(v5 + v4);
  }

  free(v3);
}

uint64_t sub_25AF79F08(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  v6 = a1;
  sub_25B004234();

  v7 = *a4;
  swift_beginAccess();
  v8 = v6[v7];

  return v8;
}

uint64_t GlanceModel.isTinkerWatch.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__isTinkerWatch;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
    v6 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_orderModel);
    swift_getKeyPath();
    sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
    sub_25B004234();

    *(v6 + 41) = *(v1 + v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
    sub_25B004224();
  }

  return result;
}

uint64_t sub_25AF7A2AC(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__isTinkerWatch;
  swift_beginAccess();
  *(a1 + v4) = a2;
  v5 = *(a1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_orderModel);
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  *(v5 + 41) = *(a1 + v4);
  return result;
}

void (*GlanceModel.isTinkerWatch.modify(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  *v4 = v1;
  swift_getKeyPath();
  sub_25B004254();

  v4[7] = sub_25AF79D94(v4);
  return sub_25AF7A4C8;
}

void sub_25AF7A4D4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_25B004244();

  free(v1);
}

uint64_t GlanceModel.buttonDelegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*GlanceModel.buttonDelegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_buttonDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_25AF7A838;
}

void sub_25AF7A838(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id GlanceModel.__allocating_init(focusModel:workQueue:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_25AF9BB48(a1, a2);

  return v6;
}

id GlanceModel.init(focusModel:workQueue:)(void *a1, void *a2)
{
  v4 = sub_25AF9BB48(a1, a2);

  return v4;
}

uint64_t sub_25AF7A94C()
{
  v0[2] = sub_25B005B34();
  v0[3] = sub_25B005B24();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_25AF27E54;

  return sub_25AF7A9FC(0);
}

uint64_t sub_25AF7A9FC(uint64_t a1)
{
  v2[371] = v1;
  v2[370] = a1;
  v3 = sub_25B004204();
  v2[372] = v3;
  v2[373] = *(v3 - 8);
  v2[374] = swift_task_alloc();
  sub_25B005B34();
  v2[375] = sub_25B005B24();
  v5 = sub_25B005AE4();
  v2[376] = v5;
  v2[377] = v4;

  return MEMORY[0x2822009F8](sub_25AF7AAF8, v5, v4);
}

uint64_t sub_25AF7AAF8()
{
  v26 = v0;
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0044C4();
  __swift_project_value_buffer(v1, qword_27FA30C28);
  v2 = sub_25B0044B4();
  v3 = sub_25B005C94();
  if (!os_log_type_enabled(v2, v3))
  {
    goto LABEL_12;
  }

  v4 = 0xD000000000000025;
  v5 = v0[370];
  v6 = swift_slowAlloc();
  v7 = swift_slowAlloc();
  v25 = v7;
  *v6 = 136315394;
  *(v6 + 4) = sub_25AF8E7DC(0xD00000000000001CLL, 0x800000025B019240, &v25);
  *(v6 + 12) = 2080;
  switch(v5)
  {
    case 0:
      v9 = "PairedOrFirstUnlockReason.synchronous";
      goto LABEL_10;
    case 2:
      v9 = "PairedOrFirstUnlockReason.firstUnlock";
LABEL_10:
      v8 = (v9 - 32);
      goto LABEL_11;
    case 1:
      v8 = "ockReason.firstUnlock";
      v4 = 0xD000000000000020;
LABEL_11:
      v10 = sub_25AF8E7DC(v4, v8 | 0x8000000000000000, &v25);

      *(v6 + 14) = v10;
      _os_log_impl(&dword_25AF0B000, v2, v3, "%s reason: %s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F85EC30](v7, -1, -1);
      MEMORY[0x25F85EC30](v6, -1, -1);
LABEL_12:

      v11 = v0[374];
      v12 = v0[373];
      v13 = v0[372];
      v14 = v0[371];
      swift_unknownObjectWeakAssign();
      sub_25AF7C81C();
      v15 = [objc_opt_self() defaultCenter];
      [v15 addObserver:v14 selector:sel_localeDidChange name:*MEMORY[0x277CBE620] object:0];

      v16 = *(v14 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_batteryFormatter);
      sub_25B0041F4();
      v17 = sub_25B0041D4();
      (*(v12 + 8))(v11, v13);
      [v16 setLocale_];

      v18 = CFNotificationCenterGetDarwinNotifyCenter();
      if (qword_27FA237C0 != -1)
      {
        swift_once();
      }

      v19 = v0[371];
      CFNotificationCenterAddObserver(v18, v19, sub_25AF7C818, qword_27FA30BF0, 0, 0);

      v20 = CFNotificationCenterGetDarwinNotifyCenter();
      [objc_opt_self() watchDidBecomeActive];
      sub_25B0059C4();
      v21 = sub_25B005924();

      CFNotificationCenterAddObserver(v20, v19, sub_25AF74444, v21, 0, 0);

      sub_25AF10CE4(*(*&v19[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_controlsModel] + OBJC_IVAR____TtC17NanoControlCenter13ControlsModel_extensionProviderVisible), 1);
      v22 = swift_task_alloc();
      v0[378] = v22;
      *v22 = v0;
      v22[1] = sub_25AF7AF5C;

      return sub_25AF1AB34();
  }

  v24 = v0[370];
  type metadata accessor for PairedOrFirstUnlockReason(0);
  v0[369] = v24;

  return sub_25B0061E4();
}

uint64_t sub_25AF7AF5C()
{
  v1 = *v0;

  v2 = *(v1 + 3016);
  v3 = *(v1 + 3008);

  return MEMORY[0x2822009F8](sub_25AF7B07C, v3, v2);
}

uint64_t sub_25AF7B07C()
{
  v73 = v0;

  GlanceModel.readAndPopulateButtonLayout(allowSaving:)(1);
  v1 = sub_25AFEC930();
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3)
  {
    v59 = (v0 + 1296);
    v4 = (v0 + 2832);
    v60 = (v0 + 1360);
    v61 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_buttonModels;
    v62 = *(v0 + 2968);
    v68 = v3 - 1;
    v69 = (v0 + 656);
    v5 = 32;
    v63 = v1;
    while (1)
    {
      v64 = v5;
      v6 = v2 + v5;
      v7 = *v6;
      v8 = *(v6 + 16);
      *(v0 + 2864) = *(v6 + 32);
      *v4 = v7;
      *(v0 + 2848) = v8;
      swift_beginAccess();
      sub_25AF196CC(v0 + 2832, v0 + 2872);
      v9 = sub_25AF7EB28((v62 + v61), v0 + 2832);
      swift_endAccess();
      v10 = *(v0 + 2848);
      v70 = *v4;
      v71 = v10;
      v72 = *(v0 + 2864);
      sub_25AF7EF38(&v70, v9);
      v11 = *(v9 + 48);
      if (v11 <= 0xFD && (v11 & 0xC0) == 0x40)
      {
        v12 = *(v9 + 16);
        v13 = *(v9 + 24);
        v15 = *(v9 + 32);
        v14 = *(v9 + 40);
        *&v70 = v12;
        *(&v70 + 1) = v13;
        *&v71 = v15;
        *(&v71 + 1) = v14;
        sub_25AF181DC(v12, v13, v15, v14, v11);
        v16 = sub_25AF81740(&v70);
        v17 = *(v9 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlVisibility);
        *(v9 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlVisibility) = v16;
        if (v16 != v17)
        {
          sub_25AFB9D68();
        }

        sub_25AF231D0(v12, v13, v15, v14, v11);
      }

      v18 = sub_25AFB6D8C();

      swift_getKeyPath();
      *(v0 + 2944) = v18;
      sub_25AFA048C(&unk_27FA25670, type metadata accessor for GlanceButtonModel.TransitionModel);
      sub_25B004234();

      v19 = v18[5];
      v20 = v18[6];
      v21 = v18[8];
      *(v0 + 368) = v18[7];
      *(v0 + 384) = v21;
      *(v0 + 336) = v19;
      *(v0 + 352) = v20;
      v22 = *(v0 + 384);
      if (v22 == 1)
      {
        v22 = 0;
        v23 = 1.0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 1.0;
      }

      else
      {
        v24 = *(v0 + 336);
        v25 = *(v0 + 344);
        v26 = *(v0 + 352);
        v23 = *(v0 + 368);
        v27 = *(v0 + 376);
      }

      sub_25AF25FC4(v0 + 336, v0 + 592, &qword_27FA249F0);

      v65 = v25;
      v66 = v24;
      *(v0 + 528) = v24;
      *(v0 + 536) = v25;
      *(v0 + 544) = v26;
      *(v0 + 552) = 0;
      v67 = v23;
      *(v0 + 560) = v23;
      *(v0 + 568) = v27;
      *(v0 + 576) = v22;
      *(v0 + 584) = 0;
      v28 = *(v0 + 544);
      *v69 = *(v0 + 528);
      *(v0 + 672) = v28;
      v29 = *(v0 + 576);
      *(v0 + 688) = *(v0 + 560);
      *(v0 + 704) = v29;
      v31 = v18[7];
      v30 = v18[8];
      v32 = v18[6];
      *(v0 + 464) = v18[5];
      *(v0 + 480) = v32;
      *(v0 + 496) = v31;
      *(v0 + 512) = v30;
      v34 = *(v0 + 464);
      v33 = *(v0 + 472);
      v35 = *(v0 + 480);
      v36 = *(v0 + 488);
      v38 = *(v0 + 496);
      v37 = *(v0 + 504);
      v39 = *(v0 + 512);
      v40 = *(v0 + 520);
      v41 = *(v0 + 704);
      v42 = *(v0 + 712);
      if (v39 == 1)
      {
        if (v41 == 1)
        {
          sub_25AF4F820(v0 + 528, v0 + 1104);
          sub_25AF4F820(v0 + 528, v0 + 1168);
          sub_25AF25FC4(v0 + 464, v0 + 1232, &qword_27FA249F0);
          sub_25AF1C414(v0 + 2832);
          *(v0 + 1040) = v34;
          *(v0 + 1048) = v33;
          *(v0 + 1056) = v35;
          *(v0 + 1064) = v36;
          *(v0 + 1072) = v38;
          *(v0 + 1080) = v37;
          *(v0 + 1088) = 1;
          *(v0 + 1096) = v40;
          sub_25AF2602C(v0 + 1040, &qword_27FA249F0);
LABEL_14:
          v43 = v18[5];
          v44 = v18[6];
          v45 = v18[8];
          *(v0 + 1328) = v18[7];
          *(v0 + 1344) = v45;
          *v59 = v43;
          *(v0 + 1312) = v44;
          v46 = *v69;
          v47 = *(v0 + 672);
          v48 = *(v0 + 704);
          v18[7] = *(v0 + 688);
          v18[8] = v48;
          v18[5] = v46;
          v18[6] = v47;
          sub_25AF2602C(v59, &qword_27FA249F0);

          v2 = v63;
          goto LABEL_38;
        }
      }

      else if (v41 != 1)
      {
        v50 = *(v0 + 560);
        *(v0 + 1376) = *(v0 + 544);
        *(v0 + 1392) = v50;
        *v60 = *(v0 + 528);
        *(v0 + 1408) = v41;
        *(v0 + 1416) = v42;
        if (v34 == *(v0 + 1360))
        {
          if (v33 == *(v0 + 1368) && v35 == *(v0 + 1376))
          {
            if (v36 == *(v0 + 1384))
            {
              if (v38 == *(v0 + 1392) && v37 == *(v0 + 1400))
              {
                v51 = v0 + 528;
                if (v39)
                {
                  if (v41)
                  {
                    sub_25AF4F820(v51, v0 + 912);
                    sub_25AF25FC4(v0 + 464, v0 + 400, &qword_27FA249F0);
                    sub_25AF4F820(v0 + 528, v0 + 272);
                    sub_25AF25FC4(v0 + 464, v0 + 2768, &qword_27FA249F0);

                    v57 = sub_25B0056C4();

                    if (v57)
                    {
                      if (v40)
                      {
                        goto LABEL_27;
                      }

LABEL_45:
                      sub_25AF2602C(v0 + 464, &qword_27FA249F0);
                      sub_25AF2602C(v60, &qword_27FA249F0);
                      if (!v42)
                      {
LABEL_46:
                        *(v0 + 1616) = v34;
                        *(v0 + 1624) = v33;
                        *(v0 + 1632) = v35;
                        *(v0 + 1640) = v36;
                        *(v0 + 1648) = v38;
                        *(v0 + 1656) = v37;
                        *(v0 + 1664) = v39;
                        *(v0 + 1672) = v40;
                        sub_25AF2602C(v0 + 1616, &qword_27FA249F0);
                        sub_25AF1C414(v0 + 2832);
                        goto LABEL_14;
                      }

LABEL_36:
                      *(v0 + 1616) = v34;
                      *(v0 + 1624) = v33;
                      *(v0 + 1632) = v35;
                      *(v0 + 1640) = v36;
                      *(v0 + 1648) = v38;
                      *(v0 + 1656) = v37;
                      *(v0 + 1664) = v39;
                      *(v0 + 1672) = v40;
                      sub_25AF2602C(v0 + 1616, &qword_27FA249F0);
                      goto LABEL_37;
                    }

LABEL_42:
                    sub_25AF2602C(v0 + 464, &qword_27FA249F0);
LABEL_35:
                    sub_25AF2602C(v60, &qword_27FA249F0);
                    goto LABEL_36;
                  }

                  sub_25AF4F820(v51, v0 + 2704);
                  sub_25AF4F820(v0 + 528, v0 + 208);
                  v52 = v0 + 464;
                  v53 = v0 + 144;
                }

                else
                {
                  if (!v41)
                  {
                    sub_25AF4F820(v51, v0 + 2448);
                    sub_25AF25FC4(v0 + 464, v0 + 2512, &qword_27FA249F0);
                    sub_25AF4F820(v0 + 528, v0 + 2576);
                    sub_25AF25FC4(v0 + 464, v0 + 2640, &qword_27FA249F0);
                    if (!v40)
                    {
                      goto LABEL_45;
                    }

LABEL_27:
                    if (v42)
                    {

                      v58 = sub_25B0056C4();

                      sub_25AF2602C(v0 + 464, &qword_27FA249F0);
                      sub_25AF2602C(v60, &qword_27FA249F0);
                      if (v58)
                      {
                        goto LABEL_46;
                      }

                      goto LABEL_36;
                    }

                    goto LABEL_42;
                  }

                  sub_25AF4F820(v51, v0 + 2256);
                  sub_25AF4F820(v0 + 528, v0 + 2320);
                  v52 = v0 + 464;
                  v53 = v0 + 2384;
                }
              }

              else
              {
                sub_25AF4F820(v0 + 528, v0 + 2064);
                sub_25AF4F820(v0 + 528, v0 + 2128);
                v52 = v0 + 464;
                v53 = v0 + 2192;
              }
            }

            else
            {
              sub_25AF4F820(v0 + 528, v0 + 1872);
              sub_25AF4F820(v0 + 528, v0 + 1936);
              v52 = v0 + 464;
              v53 = v0 + 2000;
            }
          }

          else
          {
            sub_25AF4F820(v0 + 528, v0 + 1680);
            sub_25AF4F820(v0 + 528, v0 + 1744);
            v52 = v0 + 464;
            v53 = v0 + 1808;
          }
        }

        else
        {
          sub_25AF4F820(v0 + 528, v0 + 1424);
          sub_25AF4F820(v0 + 528, v0 + 1488);
          v52 = v0 + 464;
          v53 = v0 + 1552;
        }

        sub_25AF25FC4(v52, v53, &qword_27FA249F0);
        goto LABEL_35;
      }

      *(v0 + 16) = v34;
      *(v0 + 24) = v33;
      *(v0 + 32) = v35;
      *(v0 + 40) = v36;
      *(v0 + 48) = v38;
      *(v0 + 56) = v37;
      *(v0 + 64) = v39;
      *(v0 + 72) = v40;
      v49 = *(v0 + 544);
      *(v0 + 80) = *(v0 + 528);
      *(v0 + 96) = v49;
      *(v0 + 112) = *(v0 + 560);
      *(v0 + 128) = v41;
      *(v0 + 136) = v42;
      sub_25AF4F820(v0 + 528, v0 + 720);
      sub_25AF4F820(v0 + 528, v0 + 784);
      sub_25AF25FC4(v0 + 464, v0 + 848, &qword_27FA249F0);
      sub_25AF2602C(v0 + 16, &unk_27FA25680);
LABEL_37:
      swift_getKeyPath();
      v54 = swift_task_alloc();
      *(v54 + 16) = v18;
      *(v54 + 24) = v69;
      *(v0 + 2936) = v18;
      sub_25B004224();
      sub_25AF1C414(v0 + 2832);
      sub_25AF4F8A0(v0 + 528);

      v2 = v63;
LABEL_38:
      *(v0 + 976) = v66;
      *(v0 + 984) = v65;
      *(v0 + 992) = v26;
      *(v0 + 1000) = 0;
      *(v0 + 1008) = v67;
      *(v0 + 1016) = v27;
      *(v0 + 1024) = v22;
      *(v0 + 1032) = 0;
      sub_25AF4F8A0(v0 + 976);
      if (!v68)
      {
        break;
      }

      --v68;
      v5 = v64 + 40;
    }
  }

  v55 = *(v0 + 8);

  return v55();
}

id GlanceModel.__allocating_init(hasBaseband:buttonCorral:focusModel:workQueue:)(char a1, uint64_t a2, void *a3, void *a4)
{
  v8 = objc_allocWithZone(v4);
  v9 = sub_25AF9BB48(a3, a4);
  GlanceModel.hasBaseband.setter(a1);

  return v9;
}

__CFNotificationCenter *GlanceModel.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  result = CFNotificationCenterGetDarwinNotifyCenter();
  if (result)
  {
    v3 = qword_27FA237C0;
    v4 = result;
    if (v3 != -1)
    {
      swift_once();
    }

    CFNotificationCenterRemoveObserver(v4, v0, qword_27FA30BF0, 0);

    v5 = CFNotificationCenterGetDarwinNotifyCenter();
    [objc_opt_self() watchDidBecomeActive];
    sub_25B0059C4();
    v6 = sub_25B005924();

    CFNotificationCenterRemoveObserver(v5, v0, v6, 0);

    v7.receiver = v0;
    v7.super_class = ObjectType;
    return objc_msgSendSuper2(&v7, sel_dealloc);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id GlanceModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_25AF7BFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_25B005B34();
  v4[3] = sub_25B005B24();
  v6 = sub_25B005AE4();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_25AF7C054, v6, v5);
}

uint64_t sub_25AF7C054()
{
  v1 = v0[2];
  GlanceModel.readAndPopulateButtonLayout(allowSaving:)(0);
  v2 = *(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_readButtonLayoutTask);
  v0[6] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_25AF7C160;
    v4 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200460](v3, v2, v4);
  }

  else
  {

    sub_25AF7C5BC();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_25AF7C160()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_25AF7C2A4, v3, v2);
}

uint64_t sub_25AF7C2A4()
{

  sub_25AF7C5BC();
  v1 = *(v0 + 8);

  return v1();
}

Swift::Bool __swiftcall GlanceModel.readAndPopulateButtonLayout(allowSaving:)(Swift::Bool allowSaving)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
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
    v21 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_25AF8E7DC(0xD000000000000029, 0x800000025B0185E0, &v21);
    *(v10 + 12) = 1024;
    *(v10 + 14) = allowSaving;
    _os_log_impl(&dword_25AF0B000, v8, v9, "%s allowSaving: %{BOOL}d", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x25F85EC30](v11, -1, -1);
    MEMORY[0x25F85EC30](v10, -1, -1);
  }

  v12 = sub_25B005B64();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_25B005B34();
  v13 = v2;
  v14 = sub_25B005B24();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  *(v15 + 32) = v13;
  *(v15 + 40) = allowSaving;
  v17 = sub_25AF6C7F8(0, 0, v6, &unk_25B00EA80, v15);
  v18 = *&v13[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_readButtonLayoutTask];
  *&v13[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_readButtonLayoutTask] = v17;
  if (v18)
  {

    sub_25B005BF4();
  }

  return 1;
}

uint64_t sub_25AF7C5BC()
{
  v1 = v0;
  v2 = sub_25AFEC930();
  v3 = sub_25AF9B0A0(v2);

  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v4 = sub_25B0044C4();
  __swift_project_value_buffer(v4, qword_27FA30C28);

  v5 = sub_25B0044B4();
  v6 = sub_25B005C94();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_25AF8E7DC(0xD000000000000019, 0x800000025B0192F0, v17);
    *(v7 + 12) = 2080;
    sub_25AF9F778();
    v9 = sub_25B005C44();
    v11 = sub_25AF8E7DC(v9, v10, v17);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_25AF0B000, v5, v6, "%s displayed button IDs: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v8, -1, -1);
    MEMORY[0x25F85EC30](v7, -1, -1);
  }

  v12 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_buttonModels;
  swift_beginAccess();

  v14 = sub_25AF9CB90(v13, v3);

  swift_bridgeObjectRelease_n();
  *(v1 + v12) = v14;

  v15 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_selectionViewButtonModels;
  swift_beginAccess();
  *(v1 + v15) = MEMORY[0x277D84F98];
}

uint64_t sub_25AF7C81C()
{
  v1 = v0;
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v2 = sub_25B0044C4();
  __swift_project_value_buffer(v2, qword_27FA30C28);
  v3 = sub_25B0044B4();
  v4 = sub_25B005C94();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_25AF8E7DC(0xD00000000000001ALL, 0x800000025B019310, &v10);
    _os_log_impl(&dword_25AF0B000, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x25F85EC30](v6, -1, -1);
    MEMORY[0x25F85EC30](v5, -1, -1);
  }

  if (*(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_updatingAvailableControlsTask))
  {

    sub_25B005BF4();
  }

  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA256A0);
  sub_25B004214();
  sub_25AF82CC4(v10);
}

uint64_t GlanceModel.collectStateOfCCButtons(isCellularInThermalTrap:)(char a1)
{
  v1 = MEMORY[0x277D84F90];
  v53 = sub_25AF6C5D0(MEMORY[0x277D84F90]);
  *&v55[0] = v1;
  sub_25AF98A50(0, 8, 0);
  v2 = v1;
  sub_25B005B34();
  for (i = 0; i != 64; i += 8)
  {
    v4 = *(&unk_286C4C3D0 + i + 32);
    sub_25B005B24();
    sub_25B005AE4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    *&v55[0] = v2;
    v6 = *(v2 + 16);
    v5 = *(v2 + 24);
    if (v6 >= v5 >> 1)
    {
      sub_25AF98A50((v5 > 1), v6 + 1, 1);
      v2 = *&v55[0];
    }

    *(v2 + 16) = v6 + 1;
    v7 = v2 + 40 * v6;
    *(v7 + 32) = v4;
    *(v7 + 40) = 0;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
  }

  v8 = sub_25AF9B0A0(v2);

  v9 = sub_25AFEC930();
  v10 = v9;
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = 32;
    v50 = v9;
    v51 = v8;
    do
    {
      v13 = *(v10 + v12);
      v14 = *(v10 + v12 + 16);
      v56 = *(v10 + v12 + 32);
      v55[0] = v13;
      v55[1] = v14;
      sub_25AF196CC(v55, v54);
      if ((sub_25AF70EDC(v55, v8) & 1) != 0 || v56 > 0x3Fu)
      {
        sub_25AF1C414(v55);
      }

      else
      {
        v15 = *&v55[0];
        sub_25AF196CC(v55, v54);
        if (qword_27FA23748 != -1)
        {
          swift_once();
        }

        if (!*(off_27FA25240 + 2))
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        sub_25AF8F278(v15);
        if ((v16 & 1) == 0)
        {
          goto LABEL_34;
        }

        v17 = sub_25AF9CD50(v15, a1 & 1);
        v19 = v18;

        v54[0] = v15;
        v20 = sub_25B006124();
        v22 = v21;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54[0] = v53;
        v25 = sub_25AF8EE80(v20, v22);
        v26 = *(v53 + 16);
        v27 = (v24 & 1) == 0;
        v28 = v26 + v27;
        if (__OFADD__(v26, v27))
        {
          goto LABEL_35;
        }

        v29 = v24;
        if (*(v53 + 24) >= v28)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_25AF988B8();
          }
        }

        else
        {
          sub_25AF979AC(v28, isUniquelyReferenced_nonNull_native);
          v30 = sub_25AF8EE80(v20, v22);
          if ((v29 & 1) != (v31 & 1))
          {
            result = sub_25B006204();
            __break(1u);
            return result;
          }

          v25 = v30;
        }

        v32 = v54[0];
        v53 = v54[0];
        if (v29)
        {
          v33 = (*(v54[0] + 56) + 16 * v25);
          *v33 = v17;
          v33[1] = v19;
        }

        else
        {
          *(v54[0] + 8 * (v25 >> 6) + 64) |= 1 << v25;
          v34 = (v32[6] + 16 * v25);
          *v34 = v20;
          v34[1] = v22;
          v35 = (v32[7] + 16 * v25);
          *v35 = v17;
          v35[1] = v19;
          v36 = v32[2];
          v37 = __OFADD__(v36, 1);
          v38 = v36 + 1;
          if (v37)
          {
            goto LABEL_36;
          }

          v32[2] = v38;
        }

        sub_25AF1C414(v55);
        v10 = v50;
        v8 = v51;
      }

      v12 += 40;
      --v11;
    }

    while (v11);
  }

  if (qword_27FA23800 != -1)
  {
LABEL_37:
    swift_once();
  }

  v39 = sub_25B0044C4();
  __swift_project_value_buffer(v39, qword_27FA30C28);
  v40 = sub_25B0044B4();
  v41 = sub_25B005CD4();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v54[0] = v43;
    *v42 = 136315394;
    *(v42 + 4) = sub_25AF8E7DC(0xD000000000000031, 0x800000025B018640, v54);
    *(v42 + 12) = 2080;
    v44 = v53;

    v45 = sub_25B0058D4();
    v47 = v46;

    v48 = sub_25AF8E7DC(v45, v47, v54);

    *(v42 + 14) = v48;
    _os_log_impl(&dword_25AF0B000, v40, v41, "%s %s", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v43, -1, -1);
    MEMORY[0x25F85EC30](v42, -1, -1);
  }

  else
  {

    return v53;
  }

  return v44;
}

Swift::Void __swiftcall GlanceModel.setRadioThermalTrapState(_:)(Swift::Bool a1)
{
  v2 = v1;
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v4 = sub_25B0044C4();
  __swift_project_value_buffer(v4, qword_27FA30C28);
  v5 = sub_25B0044B4();
  v6 = sub_25B005C94();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_25AF8E7DC(0xD00000000000001CLL, 0x800000025B018680, &v10);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1;
    _os_log_impl(&dword_25AF0B000, v5, v6, "%s state: %{BOOL}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x25F85EC30](v8, -1, -1);
    MEMORY[0x25F85EC30](v7, -1, -1);
  }

  if (*(v2 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__cellularThermalTrap) == a1)
  {
    *(v2 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__cellularThermalTrap) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10 = v2;
    sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
    sub_25B004224();
  }
}

Swift::Void __swiftcall GlanceModel.updateWiFiWLANStrings()()
{
  swift_getObjectType();
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v0 = sub_25B0044C4();
  __swift_project_value_buffer(v0, qword_27FA30C28);
  v1 = sub_25B0044B4();
  v2 = sub_25B005C94();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_25AF8E7DC(0xD000000000000017, 0x800000025B0186A0, &v12);
    _os_log_impl(&dword_25AF0B000, v1, v2, "%s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
    MEMORY[0x25F85EC30](v4, -1, -1);
    MEMORY[0x25F85EC30](v3, -1, -1);
  }

  v5 = sub_25B005924();
  v6 = SFLocalizableWAPIStringKeyForKey();

  sub_25B005934();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = sub_25B004014();
  v11 = v10;

  sub_25AF7966C(v9, v11);
}

uint64_t sub_25AF7D778(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (!(v3 >> 6))
  {
    v6 = 0;
    switch(*a1)
    {
      case 0:
        swift_getKeyPath();
        v11 = v2;
        sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
        sub_25B004234();

        return *(v2 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__isLowPowerMode);
      case 1:
        v11 = 1;
        v12 = 0uLL;
        v13 = 0;
        v14 = 0;
        v5 = sub_25AF730A0(&v11, 0);
        v7 = 1;
        goto LABEL_22;
      case 2:
        v11 = 2;
        v12 = 0uLL;
        v13 = 0;
        v14 = 0;
        v5 = sub_25AF730A0(&v11, 0);
        v7 = 2;
        goto LABEL_22;
      case 3:
        v11 = 3;
        v12 = 0uLL;
        v13 = 0;
        v14 = 0;
        v5 = sub_25AF730A0(&v11, 0);
        v7 = 3;
        goto LABEL_22;
      case 4:
        v11 = 4;
        v12 = 0uLL;
        v13 = 0;
        v14 = 0;
        v5 = sub_25AF730A0(&v11, 0);
        v7 = 4;
        goto LABEL_22;
      case 5:
      case 0xALL:
      case 0xCLL:
      case 0x11:
      case 0x13:
      case 0x15:
      case 0x16:
      case 0x17:
      case 0x18:
      case 0x19:
      case 0x32:
      case 0x33:
        return v6;
      case 6:
        v11 = 6;
        v12 = 0uLL;
        v13 = 0;
        v14 = 0;
        v5 = sub_25AF730A0(&v11, 0);
        v7 = 6;
        goto LABEL_22;
      case 7:
        v11 = 7;
        v12 = 0uLL;
        v13 = 0;
        v14 = 0;
        v5 = sub_25AF730A0(&v11, 0);
        v7 = 7;
        goto LABEL_22;
      case 8:
        v11 = 8;
        v12 = 0uLL;
        v13 = 0;
        v14 = 0;
        v5 = sub_25AF730A0(&v11, 0);
        v7 = 8;
        goto LABEL_22;
      case 9:
        v11 = 9;
        v12 = 0uLL;
        v13 = 0;
        v14 = 0;
        v5 = sub_25AF730A0(&v11, 0);
        v7 = 9;
        goto LABEL_22;
      case 0xBLL:
        v11 = 11;
        v12 = 0uLL;
        v13 = 0;
        v14 = 0;
        v5 = sub_25AF730A0(&v11, 0);
        v7 = 11;
        goto LABEL_22;
      case 0xDLL:
        v11 = 13;
        v12 = 0uLL;
        v13 = 0;
        v14 = 0;
        v5 = sub_25AF730A0(&v11, 0);
        v7 = 13;
        goto LABEL_22;
      case 0xELL:
        v11 = 14;
        v12 = 0uLL;
        v13 = 0;
        v14 = 0;
        v5 = sub_25AF730A0(&v11, 0);
        v7 = 14;
        goto LABEL_22;
      case 0xFLL:
        v11 = 15;
        v12 = 0uLL;
        v13 = 0;
        v14 = 0;
        v5 = sub_25AF730A0(&v11, 0);
        v7 = 15;
        goto LABEL_22;
      case 0x10:
        v11 = 16;
        v12 = 0uLL;
        v13 = 0;
        v14 = 0;
        v5 = sub_25AF730A0(&v11, 0);
        v7 = 16;
        goto LABEL_22;
      case 0x12:
        v11 = 18;
        v12 = 0uLL;
        v13 = 0;
        v14 = 0;
        v5 = sub_25AF730A0(&v11, 0);
        v7 = 18;
        goto LABEL_22;
      case 0x14:
        v9 = *(v2 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_focusModel);
        swift_getKeyPath();
        v11 = v9;
        sub_25AFA048C(&qword_27FA256E0, type metadata accessor for GlanceFocusModel);
        sub_25B004234();

        return *(v9 + OBJC_IVAR____TtC17NanoControlCenter16GlanceFocusModel__focusState);
      case 0x64:
        v11 = 100;
        v12 = 0uLL;
        v13 = 0;
        v14 = 0;
        v5 = sub_25AF730A0(&v11, 0);
        v7 = 100;
LABEL_22:
        sub_25AF18128(v7, 0, 0, 0, 0);
        break;
      default:
        v10 = *a1;
        type metadata accessor for LegacyButtonIdentifier(0);
        v11 = v10;
        sub_25B0061E4();
        __break(1u);
        JUMPOUT(0x25AF7DC34);
    }

    goto LABEL_23;
  }

  if (v3 >> 6 == 1)
  {
    v4 = *(a1 + 24);
    v11 = *a1;
    v12 = *(a1 + 8);
    v13 = v4;
    v14 = v3;
    v5 = sub_25AF730A0(&v11, a2 & 1);
LABEL_23:
    swift_getKeyPath();
    v11 = v5;
    sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
    sub_25B004234();

    v6 = *(v5 + 74);

    return v6;
  }

  return 0;
}

uint64_t sub_25AF7DDD8(void *a1)
{
  v5[0] = a1;
  memset(&v5[1], 0, 24);
  v6 = 0;
  v2 = sub_25AF730A0(v5, 0);
  sub_25AF18128(a1, 0, 0, 0, 0);
  swift_getKeyPath();
  v5[0] = v2;
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004234();

  v3 = *(v2 + 74);

  return v3;
}

Swift::Void __swiftcall GlanceModel.toggleEditing()()
{
  v1 = v0;
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  v2 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__editMode;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3 != 1)
  {
    goto LABEL_8;
  }

  sub_25AFED6B0();
  if (*(v0 + v2))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25B004224();
  }

  else
  {
    *(v0 + v2) = 0;
    sub_25AF78E68();
  }

  if (*(v0 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__editModeToggledStayAtBottom) == 1)
  {
    *(v0 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__editModeToggledStayAtBottom) = 1;
  }

  else
  {
LABEL_8:
    v5 = swift_getKeyPath();
    MEMORY[0x28223BE20](v5);
    sub_25B004224();
  }

  v6 = (v0 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editingChangedBlock);
  swift_beginAccess();
  v7 = *v6;
  if (*v6)
  {
    swift_getKeyPath();

    sub_25B004234();

    if (v3 != *(v1 + v2))
    {
      swift_getKeyPath();
      sub_25B004234();

      v7(*(v1 + v2));
    }

    sub_25AF1895C(v7);
  }
}

unint64_t sub_25AF7E26C(unint64_t a1)
{
  result = 0xD000000000000015;
  if (a1 > 1)
  {
    sub_25B005F24();

    sub_25AF9F564();
    v3 = sub_25B005C44();
    MEMORY[0x25F85D7B0](v3);

    MEMORY[0x25F85D7B0](41, 0xE100000000000000);
    return 0xD000000000000015;
  }

  return result;
}

void (*sub_25AF7E350(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  *a1 = v10;
  v10[4] = sub_25AF9A910(v10, a2, a3, a4, a5);
  return sub_25AF7E3F0;
}

void sub_25AF7E3F0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_25AF7E44C(char a1)
{
  v2 = v1;
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v3 = sub_25B0044C4();
  __swift_project_value_buffer(v3, qword_27FA30C28);
  v4 = sub_25B0044B4();
  v5 = sub_25B005C94();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v53[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_25AF8E7DC(0xD00000000000002ALL, 0x800000025B0193D0, v53);
    _os_log_impl(&dword_25AF0B000, v4, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x25F85EC30](v7, -1, -1);
    MEMORY[0x25F85EC30](v6, -1, -1);
  }

  v8 = *(v2 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_controlsModel);
  swift_getKeyPath();
  v53[0] = v8;
  sub_25AFA048C(&unk_27FA256B0, type metadata accessor for ControlsModel);
  sub_25B004234();

  swift_beginAccess();
  v9 = swift_allocObject();
  *(v9 + 16) = 2;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;

  v11 = sub_25AF16C14(v10, sub_25AF1972C);

  v44 = v11;
  v12 = *(v11 + 2);
  if (v12)
  {
    v48 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_selectionViewButtonModels;
    v49 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_buttonModels;
    v50 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_controlsShouldBeMarkedNotSettledVisible;
    v51 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_controlsShouldBeMarkedVisible;
    v13 = (v44 + 56);
    do
    {
      v14 = *(v13 - 3);
      v15 = *(v13 - 2);
      v17 = *(v13 - 1);
      v16 = *v13;
      swift_beginAccess();
      v18 = *(v2 + v51);
      v19 = *(v18 + 16);

      v20 = v14;
      v21 = v20;
      if (v19 && (v22 = sub_25AF8F1B4(v20, v15, v17, v16), (v23 & 1) != 0))
      {
        v24 = *(*(v18 + 56) + 8 * v22);
        swift_endAccess();
        v25 = *(v24 + 16) != 0;
      }

      else
      {
        swift_endAccess();
        v25 = 0;
      }

      swift_beginAccess();
      v26 = *(v2 + v50);
      if (*(v26 + 16) && (v27 = sub_25AF8F1B4(v21, v15, v17, v16), (v28 & 1) != 0))
      {
        v29 = *(*(v26 + 56) + 8 * v27);
        swift_endAccess();
        if (!v25)
        {
          goto LABEL_21;
        }

        if (*(v29 + 16))
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }
      }

      else
      {
        swift_endAccess();
        if (!v25)
        {
LABEL_21:
          v30 = 0;
          goto LABEL_22;
        }

        v30 = 2;
      }

LABEL_22:
      v53[0] = v21;
      v53[1] = v15;
      v53[2] = v17;
      v53[3] = v16;
      v54 = 64;
      if (a1)
      {
        v31 = v48;
      }

      else
      {
        v31 = v49;
      }

      swift_beginAccess();
      v32 = *(v2 + v31);
      if (*(v32 + 16))
      {

        v33 = v21;
        v34 = sub_25AF8F064(v53);
        if (v35)
        {
          v36 = *(*(v32 + 56) + 8 * v34);
          swift_endAccess();

          v37 = *(v36 + 48);
          if (v37 <= 0xFD && (v37 & 0xC0) == 0x40)
          {
            v39 = *(v36 + 16);
            v38 = *(v36 + 24);
            v40 = *(v36 + 32);
            v41 = *(v36 + 40);
            v42 = *(v36 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlVisibility);
            *(v36 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlVisibility) = v30;
            v46 = v40;
            v47 = v38;
            v45 = v41;
            sub_25AF181DC(v39, v38, v40, v41, v37);
            if (v30 != v42)
            {
              sub_25AFB9D68();
            }

            sub_25AF231D0(v39, v47, v46, v45, v37);
          }

          else
          {
          }
        }

        else
        {
          swift_endAccess();
          swift_bridgeObjectRelease_n();
        }
      }

      else
      {
        swift_endAccess();
      }

      v13 += 4;
      --v12;
    }

    while (v12);
  }
}

uint64_t sub_25AF7E938(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v4 = result + 64;
  v17 = *(result + 16);
  v15 = result + 64;
  do
  {
    v16 = v3;
    v5 = (v4 + 40 * v2);
    v6 = v2;
    while (1)
    {
      if (v6 >= v1)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v2 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_20;
      }

      v8 = *(v5 - 4);
      v7 = *(v5 - 3);
      v10 = *(v5 - 2);
      v9 = *(v5 - 1);
      v11 = *v5;
      sub_25B005B34();
      sub_25AF181DC(v8, v7, v10, v9, v11);
      sub_25B005B24();
      sub_25B005AE4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if ((v11 & 0xC0) == 0x40)
      {
        break;
      }

      result = sub_25AF18128(v8, v7, v10, v9, v11);
      ++v6;
      v5 += 40;
      v1 = v17;
      if (v2 == v17)
      {
        return v16;
      }
    }

    v3 = v16;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25AFCD46C(0, *(v16 + 16) + 1, 1, v16);
      v3 = result;
    }

    v4 = v15;
    v13 = *(v3 + 16);
    v12 = *(v3 + 24);
    if (v13 >= v12 >> 1)
    {
      result = sub_25AFCD46C((v12 > 1), v13 + 1, 1, v3);
      v3 = result;
    }

    *(v3 + 16) = v13 + 1;
    v14 = (v3 + 32 * v13);
    v14[4] = v8;
    v14[5] = v7;
    v14[6] = v10;
    v14[7] = v9;
    v1 = v17;
  }

  while (v2 != v17);
  return v3;
}

uint64_t sub_25AF7EB28(uint64_t *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1;
  v31 = *a2;
  if (*(*a1 + 16))
  {
    v9 = sub_25AF8F064(a2);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      return v11;
    }

    v12 = *a2;
    v14 = *(a2 + 24);
    v13 = *(a2 + 32);
    v4 = v31;
  }

  else
  {
    v12 = *a2;
    v13 = *(a2 + 32);
    v14 = *(a2 + 24);
  }

  if ((v13 & 0xC0) == 0x40)
  {
    v29 = v6;
    v30 = v5;
    v15 = *(a2 + 16);
    v39[0] = v15;
    v39[1] = v14;
    if (v14)
    {
      sub_25AF196CC(a2, v37);
      v16 = v12;
      v17 = 0;
      v18 = v14;
    }

    else
    {
      sub_25AF196CC(a2, v37);
      sub_25AF196CC(a2, v37);
      v19 = [v12 extensionIdentity];
      v20 = *MEMORY[0x277CFA130];
      swift_beginAccess();
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23B28);
      if ((*(*(v21 - 8) + 48))(&v19[v20], 1, v21))
      {
        swift_endAccess();
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23A70);
      }

      v22 = sub_25B004294();
      v15 = v23;
      swift_endAccess();
      v24 = [v12 kind];
      v18 = sub_25B005934();
      v17 = v25;

      sub_25AF1C414(a2);
      v12 = v22;
    }

    v37[0] = v12;
    v37[1] = v15;
    if (v14)
    {
      v26 = 0x80;
    }

    else
    {
      v26 = -127;
    }

    v37[2] = v18;
    v37[3] = v17;
    v38 = v26;
    sub_25AF25FC4(v39, &v33, &qword_27FA242A0);
    sub_25AF9905C(v37);
    sub_25AF1C414(a2);

    sub_25AF1818C(v12, v15, v18, v17, v14 == 0);
    v4 = v31;
    v5 = v30;
    v6 = v29;
  }

  v33 = v4;
  v34 = v5;
  v35 = v6;
  v36 = v7;
  type metadata accessor for GlanceButtonModel(0);
  swift_allocObject();
  sub_25AF196CC(a2, v32);
  v11 = sub_25AFBCC94(&v33);
  swift_getKeyPath();
  MEMORY[0x28223BE20]();
  *&v33 = v11;
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);
  sub_25B004224();

  sub_25AF196CC(a2, &v33);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v33 = *a1;
  sub_25AF15F30(v11, a2, isUniquelyReferenced_nonNull_native);
  sub_25AF1C414(a2);
  *a1 = v33;
  return v11;
}

uint64_t sub_25AF7EF38(__int128 *a1, uint64_t a2)
{
  v4 = a1[1];
  v22 = *a1;
  v23 = v4;
  v24 = *(a1 + 32);
  v5 = *(v2 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_demoModeNumber);
  result = sub_25B003FF4();
  if (v5 == result)
  {
    return result;
  }

  if (v5 == 300)
  {
    if (qword_27FA23750 != -1)
    {
      swift_once();
    }

    v7 = sub_25AF70EDC(&v22, qword_27FA30B28) ^ 1;
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    v9 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_buttonModels;
    swift_beginAccess();
    v8 = sub_25AF7EB28((v2 + v9), &v22);
    swift_endAccess();
    v19 = v22;
    v20 = v23;
    v21 = v24;

    sub_25AF7EF38(&v19, v8);
    v10 = *(v8 + 48);
    if (v10 <= 0xFD && (v10 & 0xC0) == 0x40)
    {
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      v14 = *(v8 + 32);
      v13 = *(v8 + 40);
      *&v19 = v12;
      *(&v19 + 1) = v11;
      *&v20 = v14;
      *(&v20 + 1) = v13;
      sub_25AF181DC(v12, v11, v14, v13, v10);
      v15 = sub_25AF81740(&v19);
      v16 = *(v8 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlVisibility);
      *(v8 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlVisibility) = v15;
      if (v15 != v16)
      {
        sub_25AFB9D68();
      }

      sub_25AF231D0(v12, v11, v14, v13, v10);
    }

    else
    {
    }

    goto LABEL_14;
  }

  v7 = 0;
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  v8 = a2;
LABEL_14:
  swift_getKeyPath();
  *&v19 = v8;
  sub_25AFA048C(&qword_27FA25270, type metadata accessor for GlanceButtonModel);

  sub_25B004234();

  v17 = *(v8 + 72);
  if (v17 == (v17 & v7))
  {
    *(v8 + 72) = v17 & v7;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v19 = v8;
    sub_25B004224();
  }
}

uint64_t sub_25AF7F220()
{
  result = MEMORY[0x25F85D4F0](0.48669, 0.56804, 0.0);
  qword_27FA30B18 = result;
  return result;
}

uint64_t sub_25AF7F254()
{
  result = MEMORY[0x25F85D4F0](0.48669, 1.0, 0.0);
  qword_27FA30B20 = result;
  return result;
}

uint64_t sub_25AF7F284(uint64_t a1)
{
  v2[423] = v1;
  v2[422] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA249E8);
  v2[424] = swift_task_alloc();
  v2[425] = sub_25B005B34();
  v2[426] = sub_25B005B24();
  v4 = sub_25B005AE4();
  v2[427] = v4;
  v2[428] = v3;

  return MEMORY[0x2822009F8](sub_25AF7F360, v4, v3);
}

uint64_t sub_25AF7F360()
{
  v18 = v0;
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0044C4();
  v0[429] = __swift_project_value_buffer(v1, qword_27FA30C28);
  v2 = sub_25B0044B4();
  v3 = sub_25B005C94();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = 0xD000000000000018;
    v5 = v0[422];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_25AF8E7DC(0xD00000000000002DLL, 0x800000025B019400, &v17);
    *(v6 + 12) = 2080;
    if (v5)
    {
      if (v5 == 2)
      {
        v8 = "eTransition(_:animated:)";
        v4 = 0xD000000000000022;
      }

      else
      {
        if (v5 != 1)
        {
          v15 = v0[422];
          type metadata accessor for ButtonsTransition(0);
          v0[421] = v15;
          goto LABEL_17;
        }

        v8 = "n.disappearReplace";
        v4 = 0xD00000000000001BLL;
      }
    }

    else
    {
      v8 = "ButtonsTransition.disappear";
    }

    v9 = sub_25AF8E7DC(v4, v8 | 0x8000000000000000, &v17);

    *(v6 + 14) = v9;
    _os_log_impl(&dword_25AF0B000, v2, v3, "%s. Transition: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v7, -1, -1);
    MEMORY[0x25F85EC30](v6, -1, -1);
  }

  v10 = v0[422];
  v0[430] = sub_25AFEC930();
  type metadata accessor for ButtonsTransition(0);
  v0[415] = v11;
  v0[416] = v12;
  if (v10 < 3)
  {
    v0[431] = qword_25B00F430[v10];
    v0[432] = sub_25B005B24();
    v14 = sub_25B005AE4();

    return MEMORY[0x2822009F8](sub_25AF7F640, v14, v13);
  }

  v0[420] = v0[422];
LABEL_17:

  return sub_25B0061E4();
}

uint64_t sub_25AF7F640()
{
  v13 = v0;
  v1 = v0[422];
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 userInterfaceLayoutDirection];

  v12 = 0;
  if (!v1)
  {
    GlanceModel.updateLockButtonPresence()();
  }

  v4 = v3 == 0;
  v5 = v0[424];
  v6 = v0[423];
  v7 = v0[422];

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA252B0);
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_25AF4C5B4(v5, 0, v7, 1, v4, v6);
  sub_25AF2602C(v5, &qword_27FA249E8);
  sub_25AF808F4(v6, &v12, v7);
  v9 = v0[428];
  v10 = v0[427];

  return MEMORY[0x2822009F8](sub_25AF7F7A8, v10, v9);
}

uint64_t sub_25AF7F7A8()
{
  v86 = v0;
  v1 = *(v0 + 3440);

  v2 = sub_25B005714();
  v3 = v2;
  v4 = *(v1 + 16);
  if (v4)
  {
    v72 = (v0 + 1424);
    v5 = (v0 + 3216);
    v73 = (v0 + 1488);
    v74 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_buttonModels;
    v6 = *(v0 + 3440) + 32;
    v81 = v4 - 1;
    v82 = (v0 + 720);
    v75 = *(v0 + 3384);
    v76 = v2;
    while (1)
    {
      v7 = *v6;
      v8 = *(v6 + 16);
      v77 = v6;
      *(v0 + 3248) = *(v6 + 32);
      *v5 = v7;
      *(v0 + 3232) = v8;
      swift_beginAccess();
      sub_25AF196CC(v0 + 3216, v0 + 3256);
      v9 = sub_25AF7EB28((v75 + v74), v0 + 3216);
      swift_endAccess();
      v10 = *(v0 + 3232);
      v83 = *v5;
      v84 = v10;
      v85 = *(v0 + 3248);
      sub_25AF7EF38(&v83, v9);
      v11 = *(v9 + 48);
      if (v11 <= 0xFD && (v11 & 0xC0) == 0x40)
      {
        v12 = *(v9 + 16);
        v13 = *(v9 + 24);
        v14 = *(v9 + 32);
        v15 = *(v9 + 40);
        *&v83 = v12;
        *(&v83 + 1) = v13;
        *&v84 = v14;
        *(&v84 + 1) = v15;
        sub_25AF181DC(v12, v13, v14, v15, v11);
        v16 = sub_25AF81740(&v83);
        v17 = *(v9 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlVisibility);
        *(v9 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlVisibility) = v16;
        if (v16 != v17)
        {
          sub_25AFB9D68();
        }

        sub_25AF231D0(v12, v13, v14, v15, v11);
        v3 = v76;
      }

      v18 = sub_25AFB6D8C();
      swift_getKeyPath();
      *(v0 + 3352) = v18;
      sub_25AFA048C(&unk_27FA25670, type metadata accessor for GlanceButtonModel.TransitionModel);

      sub_25B004234();

      v19 = v18[5];
      v20 = v18[6];
      v21 = v18[8];
      *(v0 + 432) = v18[7];
      *(v0 + 448) = v21;
      *(v0 + 400) = v19;
      *(v0 + 416) = v20;
      v22 = *(v0 + 448);
      if (v22 == 1)
      {
        v22 = 0;
        v23 = 1.0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 1.0;
      }

      else
      {
        v24 = *(v0 + 400);
        v25 = *(v0 + 408);
        v26 = *(v0 + 416);
        v23 = *(v0 + 432);
        v27 = *(v0 + 440);
      }

      v28 = *(v0 + 3448);

      sub_25AF25FC4(v0 + 400, v0 + 656, &qword_27FA249F0);

      v78 = v25;
      v79 = v24;
      *(v0 + 592) = v24;
      *(v0 + 600) = v25;
      *(v0 + 608) = v26;
      *(v0 + 616) = v28;
      v80 = v23;
      *(v0 + 624) = v23;
      *(v0 + 632) = v27;
      *(v0 + 640) = v22;
      *(v0 + 648) = v3;
      v29 = *(v0 + 608);
      *v82 = *(v0 + 592);
      *(v0 + 736) = v29;
      v30 = *(v0 + 640);
      *(v0 + 752) = *(v0 + 624);
      *(v0 + 768) = v30;
      v32 = v18[7];
      v31 = v18[8];
      v33 = v18[6];
      *(v0 + 528) = v18[5];
      *(v0 + 544) = v33;
      *(v0 + 560) = v32;
      *(v0 + 576) = v31;
      v34 = *(v0 + 528);
      v35 = *(v0 + 536);
      v36 = *(v0 + 544);
      v37 = *(v0 + 552);
      v38 = *(v0 + 560);
      v39 = *(v0 + 568);
      v40 = *(v0 + 576);
      v41 = *(v0 + 584);
      v42 = *(v0 + 768);
      v43 = *(v0 + 776);
      if (v40 == 1)
      {
        break;
      }

      if (v42 == 1)
      {
        goto LABEL_16;
      }

      v54 = *(v0 + 624);
      *(v0 + 1504) = *(v0 + 608);
      *(v0 + 1520) = v54;
      *v73 = *(v0 + 592);
      *(v0 + 1536) = v42;
      *(v0 + 1544) = v43;
      if (v34 != *(v0 + 1488))
      {
        sub_25AF4F820(v0 + 592, v0 + 1552);
        sub_25AF4F820(v0 + 592, v0 + 1616);
        v58 = v0 + 528;
        v59 = v0 + 1680;
        goto LABEL_40;
      }

      if (v35 != *(v0 + 1496))
      {
        sub_25AF4F820(v0 + 592, v0 + 1808);
        sub_25AF4F820(v0 + 592, v0 + 1872);
        v58 = v0 + 528;
        v59 = v0 + 1936;
        goto LABEL_40;
      }

      if (v36 != *(v0 + 1504))
      {
        sub_25AF4F820(v0 + 592, v0 + 2000);
        sub_25AF4F820(v0 + 592, v0 + 2064);
        v58 = v0 + 528;
        v59 = v0 + 2128;
        goto LABEL_40;
      }

      if (v37 != *(v0 + 1512))
      {
        sub_25AF4F820(v0 + 592, v0 + 2192);
        sub_25AF4F820(v0 + 592, v0 + 2256);
        v58 = v0 + 528;
        v59 = v0 + 2320;
        goto LABEL_40;
      }

      if (v38 != *(v0 + 1520))
      {
        sub_25AF4F820(v0 + 592, v0 + 2384);
        sub_25AF4F820(v0 + 592, v0 + 2448);
        v58 = v0 + 528;
        v59 = v0 + 2512;
        goto LABEL_40;
      }

      v55 = v0 + 592;
      if (v39 != *(v0 + 1528))
      {
        sub_25AF4F820(v55, v0 + 2576);
        sub_25AF4F820(v0 + 592, v0 + 2640);
        v58 = v0 + 528;
        v59 = v0 + 2704;
        goto LABEL_40;
      }

      if (v40)
      {
        if (!v42)
        {
          sub_25AF4F820(v55, v0 + 144);
          sub_25AF4F820(v0 + 592, v0 + 1104);
          v58 = v0 + 528;
          v59 = v0 + 976;
LABEL_40:
          sub_25AF25FC4(v58, v59, &qword_27FA249F0);
LABEL_41:
          sub_25AF2602C(v73, &qword_27FA249F0);
LABEL_42:
          *(v0 + 1744) = v34;
          *(v0 + 1752) = v35;
          *(v0 + 1760) = v36;
          *(v0 + 1768) = v37;
          *(v0 + 1776) = v38;
          *(v0 + 1784) = v39;
          *(v0 + 1792) = v40;
          *(v0 + 1800) = v41;
          sub_25AF2602C(v0 + 1744, &qword_27FA249F0);
          goto LABEL_43;
        }

        sub_25AF4F820(v55, v0 + 464);
        sub_25AF25FC4(v0 + 528, v0 + 336, &qword_27FA249F0);
        sub_25AF4F820(v0 + 592, v0 + 272);
        sub_25AF25FC4(v0 + 528, v0 + 3152, &qword_27FA249F0);

        v56 = sub_25B0056C4();

        if ((v56 & 1) == 0)
        {
          goto LABEL_38;
        }

        if (!v41)
        {
LABEL_47:
          sub_25AF2602C(v0 + 528, &qword_27FA249F0);
          sub_25AF2602C(v73, &qword_27FA249F0);
          if (!v43)
          {
            *(v0 + 1744) = v34;
            *(v0 + 1752) = v35;
            *(v0 + 1760) = v36;
            *(v0 + 1768) = v37;
            *(v0 + 1776) = v38;
            *(v0 + 1784) = v39;
            *(v0 + 1792) = v40;
            *(v0 + 1800) = 0;
            sub_25AF2602C(v0 + 1744, &qword_27FA249F0);
LABEL_49:

            sub_25AF1C414(v0 + 3216);
            v3 = v76;

LABEL_14:
            v45 = v79;
            v44 = v80;
            v46 = v78;
            v47 = v18[5];
            v48 = v18[6];
            v49 = v18[8];
            *(v0 + 1456) = v18[7];
            *(v0 + 1472) = v49;
            *v72 = v47;
            *(v0 + 1440) = v48;
            v50 = *v82;
            v51 = *(v0 + 736);
            v52 = *(v0 + 768);
            v18[7] = *(v0 + 752);
            v18[8] = v52;
            v18[5] = v50;
            v18[6] = v51;
            sub_25AF2602C(v72, &qword_27FA249F0);

            goto LABEL_44;
          }

          goto LABEL_42;
        }
      }

      else
      {
        if (v42)
        {
          sub_25AF4F820(v55, v0 + 2768);
          sub_25AF4F820(v0 + 592, v0 + 2832);
          v58 = v0 + 528;
          v59 = v0 + 2896;
          goto LABEL_40;
        }

        sub_25AF4F820(v55, v0 + 2960);
        sub_25AF25FC4(v0 + 528, v0 + 3024, &qword_27FA249F0);
        sub_25AF4F820(v0 + 592, v0 + 3088);
        sub_25AF25FC4(v0 + 528, v0 + 208, &qword_27FA249F0);
        if (!v41)
        {
          goto LABEL_47;
        }
      }

      if (!v43)
      {
LABEL_38:
        sub_25AF2602C(v0 + 528, &qword_27FA249F0);
        goto LABEL_41;
      }

      v57 = sub_25B0056C4();

      sub_25AF2602C(v0 + 528, &qword_27FA249F0);
      sub_25AF2602C(v73, &qword_27FA249F0);
      *(v0 + 1744) = v34;
      *(v0 + 1752) = v35;
      *(v0 + 1760) = v36;
      *(v0 + 1768) = v37;
      *(v0 + 1776) = v38;
      *(v0 + 1784) = v39;
      *(v0 + 1792) = v40;
      *(v0 + 1800) = v41;
      sub_25AF2602C(v0 + 1744, &qword_27FA249F0);
      if (v57)
      {
        goto LABEL_49;
      }

LABEL_43:
      swift_getKeyPath();
      v60 = swift_task_alloc();
      *(v60 + 16) = v18;
      *(v60 + 24) = v82;
      *(v0 + 3344) = v18;
      sub_25B004224();

      sub_25AF1C414(v0 + 3216);
      v3 = v76;

      sub_25AF4F8A0(v0 + 592);

      v45 = v79;
      v44 = v80;
      v46 = v78;
LABEL_44:
      v61 = *(v0 + 3448);
      *(v0 + 1040) = v45;
      *(v0 + 1048) = v46;
      *(v0 + 1056) = v26;
      *(v0 + 1064) = v61;
      *(v0 + 1072) = v44;
      *(v0 + 1080) = v27;
      *(v0 + 1088) = v22;
      *(v0 + 1096) = v3;
      sub_25AF4F8A0(v0 + 1040);
      if (!v81)
      {
        goto LABEL_50;
      }

      --v81;
      v6 = v77 + 40;
    }

    if (v42 == 1)
    {
      sub_25AF4F820(v0 + 592, v0 + 1232);
      sub_25AF4F820(v0 + 592, v0 + 1296);
      sub_25AF25FC4(v0 + 528, v0 + 1360, &qword_27FA249F0);

      sub_25AF1C414(v0 + 3216);
      v3 = v76;

      *(v0 + 1168) = v34;
      *(v0 + 1176) = v35;
      *(v0 + 1184) = v36;
      *(v0 + 1192) = v37;
      *(v0 + 1200) = v38;
      *(v0 + 1208) = v39;
      *(v0 + 1216) = 1;
      *(v0 + 1224) = v41;
      sub_25AF2602C(v0 + 1168, &qword_27FA249F0);
      goto LABEL_14;
    }

LABEL_16:
    *(v0 + 16) = v34;
    *(v0 + 24) = v35;
    *(v0 + 32) = v36;
    *(v0 + 40) = v37;
    *(v0 + 48) = v38;
    *(v0 + 56) = v39;
    *(v0 + 64) = v40;
    *(v0 + 72) = v41;
    v53 = *(v0 + 608);
    *(v0 + 80) = *(v0 + 592);
    *(v0 + 96) = v53;
    *(v0 + 112) = *(v0 + 624);
    *(v0 + 128) = v42;
    *(v0 + 136) = v43;
    sub_25AF4F820(v0 + 592, v0 + 784);
    sub_25AF4F820(v0 + 592, v0 + 848);
    sub_25AF25FC4(v0 + 528, v0 + 912, &qword_27FA249F0);
    sub_25AF2602C(v0 + 16, &unk_27FA25680);
    goto LABEL_43;
  }

LABEL_50:

  v62 = sub_25B0044B4();
  v63 = sub_25B005C94();
  if (!os_log_type_enabled(v62, v63))
  {
    goto LABEL_58;
  }

  v64 = 0xD000000000000018;
  v65 = *(v0 + 3376);
  v66 = swift_slowAlloc();
  v67 = swift_slowAlloc();
  *&v83 = v67;
  *v66 = 136315394;
  *(v66 + 4) = sub_25AF8E7DC(0xD00000000000002DLL, 0x800000025B019400, &v83);
  *(v66 + 12) = 2080;
  switch(v65)
  {
    case 0:
      v68 = "ButtonsTransition.disappear";
      goto LABEL_57;
    case 2:
      v68 = "eTransition(_:animated:)";
      v64 = 0xD000000000000022;
      goto LABEL_57;
    case 1:
      v68 = "n.disappearReplace";
      v64 = 0xD00000000000001BLL;
LABEL_57:
      v69 = sub_25AF8E7DC(v64, v68 | 0x8000000000000000, &v83);

      *(v66 + 14) = v69;
      _os_log_impl(&dword_25AF0B000, v62, v63, "%s Completed. Transition: %s", v66, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F85EC30](v67, -1, -1);
      MEMORY[0x25F85EC30](v66, -1, -1);
LABEL_58:

      v70 = *(v0 + 8);

      return v70(1);
  }

  *(v0 + 3336) = *(v0 + 3376);

  return sub_25B0061E4();
}

uint64_t sub_25AF80348(uint64_t a1, char a2, char a3)
{
  *(v4 + 106) = a3;
  *(v4 + 105) = a2;
  *(v4 + 24) = a1;
  *(v4 + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA249E8);
  *(v4 + 40) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = sub_25B005B34();
  *(v4 + 64) = sub_25B005B24();
  v6 = sub_25B005AE4();
  *(v4 + 72) = v6;
  *(v4 + 80) = v5;

  return MEMORY[0x2822009F8](sub_25AF8045C, v6, v5);
}

uint64_t sub_25AF8045C()
{
  v1 = *(v0 + 24);
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 userInterfaceLayoutDirection];

  *(v0 + 16) = 0;
  if (!v1)
  {
    GlanceModel.updateLockButtonPresence()();
  }

  if (*(v0 + 106) == 1)
  {
    v4 = v3 == 0;
    v5 = *(v0 + 48);
    v6 = *(v0 + 105);
    v8 = *(v0 + 24);
    v7 = *(v0 + 32);
    v9 = sub_25B005B64();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    v10 = v7;
    v11 = sub_25B005B24();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D85700];
    *(v12 + 16) = v11;
    *(v12 + 24) = v13;
    *(v12 + 32) = v10;
    *(v12 + 40) = v8;
    *(v12 + 48) = v6;
    *(v12 + 49) = v4;
    v14 = sub_25AF6CDEC(0, 0, v5, &unk_25B00F100, v12);
    *(v0 + 88) = v14;
    *(v0 + 16) = v14;

    sub_25AF78C10(v15);
    v16 = swift_task_alloc();
    *(v0 + 96) = v16;
    *v16 = v0;
    v16[1] = sub_25AF80734;
    v17 = MEMORY[0x277D839B0];

    return MEMORY[0x282200460](v0 + 104, v14, v17);
  }

  else
  {
    v18 = v3 == 0;
    v20 = *(v0 + 32);
    v19 = *(v0 + 40);
    v21 = *(v0 + 105);
    v22 = *(v0 + 24);

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA252B0);
    (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
    sub_25AF4C5B4(v19, 0, v22, v21, v18, v20);
    sub_25AF2602C(v19, &qword_27FA249E8);
    sub_25AF808F4(v20, (v0 + 16), v22);

    v24 = *(v0 + 8);

    return v24(1);
  }
}

uint64_t sub_25AF80734()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_25AF80854, v3, v2);
}

uint64_t sub_25AF80854()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  v3 = *(v0 + 104);
  sub_25AF808F4(v1, (v0 + 16), v2);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_25AF808F4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  if ((*(a1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__hasStartedAnyTransitions) & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25B004224();
  }

  v7 = *a2;
  swift_getKeyPath();

  sub_25B004234();

  v9 = *(a1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__previousTransitionAnimationTask);
  if (!v7)
  {
    if (v9)
    {
      return result;
    }

LABEL_8:
    if (((a3 != 0) ^ *(a1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__suppressLightEffects)))
    {
      v11 = swift_getKeyPath();
      MEMORY[0x28223BE20](v11);
      sub_25B004224();
    }

    else
    {
      *(a1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__suppressLightEffects) = a3 != 0;
    }

    return result;
  }

  if (!v9)
  {
  }

  v10 = sub_25B005BE4();

  if (v10)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_25AF80BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v7 + 43) = a7;
  *(v7 + 42) = a6;
  *(v7 + 56) = a4;
  *(v7 + 64) = a5;
  *(v7 + 48) = a1;
  *(v7 + 72) = sub_25B005B34();
  *(v7 + 80) = sub_25B005B24();
  v9 = sub_25B005AE4();
  *(v7 + 88) = v9;
  *(v7 + 96) = v8;

  return MEMORY[0x2822009F8](sub_25AF80C4C, v9, v8);
}

uint64_t sub_25AF80C4C()
{
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 isLowPowerModeEnabled];

  if (v2)
  {
    v3 = swift_task_alloc();
    *(v0 + 104) = v3;
    *v3 = v0;
    v3[1] = sub_25AF80E68;
    v4 = *(v0 + 64);

    return sub_25AF7F284(v4);
  }

  else
  {
    v6 = *(v0 + 64);
    v7 = *(v0 + 43);
    v8 = *(v0 + 42);
    v9 = *(v0 + 56);
    type metadata accessor for ButtonAnimator.CancellationBox();
    inited = swift_initStackObject();
    *(v0 + 112) = inited;
    *(inited + 16) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
    *(inited + 24) = 0;
    v11 = swift_task_alloc();
    *(v0 + 120) = v11;
    *(v11 + 16) = v9;
    *(v11 + 24) = inited;
    *(v11 + 32) = v6;
    *(v11 + 40) = v8;
    *(v11 + 41) = v7;
    v12 = sub_25B005B24();
    *(v0 + 128) = v12;
    v13 = swift_task_alloc();
    *(v0 + 136) = v13;
    *v13 = v0;
    v13[1] = sub_25AF80FFC;
    v14 = MEMORY[0x277D85700];
    v15 = MEMORY[0x277D839B0];

    return MEMORY[0x282200830](v0 + 41, &unk_25B00F110, v11, sub_25AFA02A4, inited, v12, v14, v15);
  }
}

uint64_t sub_25AF80E68(char a1)
{
  v2 = *v1;
  *(*v1 + 44) = a1;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);

  return MEMORY[0x2822009F8](sub_25AF80F90, v4, v3);
}

uint64_t sub_25AF80F90()
{

  **(v0 + 48) = *(v0 + 44);
  v1 = *(v0 + 8);

  return v1();
}

void sub_25AF80FFC()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);

    MEMORY[0x2822009F8](sub_25AF8113C, v3, v4);
  }
}

uint64_t sub_25AF8113C()
{
  v1 = *(v0 + 112);
  swift_setDeallocating();

  **(v0 + 48) = *(v0 + 41);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25AF811C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 106) = a6;
  *(v6 + 105) = a5;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 48) = sub_25B005B34();
  *(v6 + 56) = sub_25B005B24();
  v8 = sub_25B005AE4();
  *(v6 + 64) = v8;
  *(v6 + 72) = v7;

  return MEMORY[0x2822009F8](sub_25AF81268, v8, v7);
}

uint64_t sub_25AF81268()
{
  v1 = *(v0 + 106);
  v2 = *(v0 + 105);
  v3 = *(v0 + 40);
  v10 = *(v0 + 24);
  v4 = sub_25B005B24();
  *(v0 + 80) = v4;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *(v5 + 16) = v10;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 41) = v1;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_25AF813A0;
  v7 = MEMORY[0x277D85700];
  v8 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 104, v4, v7, 0xD000000000000051, 0x800000025B019430, sub_25AFA02F8, v5, v8);
}

uint64_t sub_25AF813A0()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_25AF81500, v3, v2);
}

uint64_t sub_25AF81500()
{
  v1 = *(v0 + 16);

  *v1 = *(v0 + 104);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25AF81570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA249E8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18 - v13;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA252B0);
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a1, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  sub_25AF4C5B4(v14, a3, a4, a5 & 1, a6 & 1, a2);
  sub_25AF2602C(v14, &qword_27FA249E8);
}

uint64_t sub_25AF81740(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_controlsShouldBeMarkedVisible;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (*(v8 + 16) && (v9 = sub_25AF8F1B4(v3, v4, v5, v6), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();
    v12 = *(v11 + 16) != 0;
  }

  else
  {
    swift_endAccess();
    v12 = 0;
  }

  v13 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_controlsShouldBeMarkedNotSettledVisible;
  swift_beginAccess();
  v14 = *(v2 + v13);
  if (*(v14 + 16))
  {
    v15 = sub_25AF8F1B4(v3, v4, v5, v6);
    if (v16)
    {
      v17 = *(*(v14 + 56) + 8 * v15);
      swift_endAccess();
      if (*(v17 + 16))
      {
        v18 = 0;
      }

      else
      {
        v18 = v12;
      }

      if (!v18)
      {
        return v12;
      }

      return 2;
    }
  }

  swift_endAccess();
  if (v12)
  {
    return 2;
  }

  return 0;
}

void *sub_25AF81874(uint64_t a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
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
    v22 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_25AF8E7DC(0xD000000000000019, 0x800000025B019770, &v22);
    _os_log_impl(&dword_25AF0B000, v9, v10, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x25F85EC30](v12, -1, -1);
    MEMORY[0x25F85EC30](v11, -1, -1);
  }

  v13 = (v2 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_selectAvailableControlBlock);
  swift_beginAccess();
  v14 = *v13;
  if (*v13 && (v7 & 0xC0) == 0x40)
  {
    v22 = v4;
    v23 = v3;
    v24 = v6;
    v25 = v5;
    sub_25AF2EBC4(v14);
    sub_25AF181DC(v4, v3, v6, v5, v7);
    v14(&v22, 0);
    sub_25AF1895C(v14);
    return sub_25AF18128(v4, v3, v6, v5, v7);
  }

  else
  {
    v22 = v4;
    v23 = v3;
    v24 = v6;
    v25 = v5;
    v26 = v7;
    sub_25AF81C70(&v22);
    v16 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__showAddSheet;
    if (*(v2 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__showAddSheet))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v22 = v2;
      sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
      sub_25B004224();
    }

    else
    {
      *(v2 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__showAddSheet) = 0;
      swift_getKeyPath();
      v22 = v2;
      sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
      sub_25B004234();

      swift_getKeyPath();
      v22 = v2;
      sub_25B004234();

      if (*(v2 + v16))
      {
        v18 = 0;
      }

      else
      {
        v18 = 2;
      }

      sub_25AF72400(v18, 1u, 0, 0);
    }

    v19 = (v2 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_selectControlDoneBlock);
    result = swift_beginAccess();
    v20 = *v19;
    if (*v19)
    {

      v20(v21);
      return sub_25AF1895C(v20);
    }
  }

  return result;
}

uint64_t sub_25AF81C70(uint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *(a1 + 32);
  v18 = *a1;
  v12 = v18;
  v19 = v2;
  v20 = v3;
  *&v21 = v4;
  BYTE8(v21) = v5;
  sub_25AFED924(&v18);
  sub_25AF81E80();
  swift_getKeyPath();
  v18 = v1;
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  sub_25B004234();

  v18 = v1;
  swift_getKeyPath();
  sub_25B004254();

  *(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__scrollToBottomTrigger) = (*(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__scrollToBottomTrigger) & 1) == 0;
  v18 = v1;
  swift_getKeyPath();
  sub_25B004244();

  v18 = v12;
  v19 = v2;
  v20 = v3;
  *&v21 = v4;
  BYTE8(v21) = v5;
  sub_25AF730A0(&v18, 0);
  sub_25AFB6D8C();
  v15 = 0uLL;
  *v16 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  v13 = _Q0;
  *&v16[8] = _Q0;
  v17 = 0uLL;
  *&v16[24] = 0x3FF0000000000000;
  v14[0] = 0uLL;
  v14[1] = *v16;
  v14[2] = *&v16[16];
  v14[3] = 0uLL;
  sub_25AF4F820(&v15, &v18);
  sub_25AFBF5B0(v14);

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = v13;
  v23 = 0;
  v24 = 0;
  v22 = 0x3FF0000000000000;
  return sub_25AF4F8A0(&v18);
}

uint64_t sub_25AF81E80()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v5 = sub_25B0044C4();
  __swift_project_value_buffer(v5, qword_27FA30C28);
  v6 = sub_25B0044B4();
  v7 = sub_25B005C94();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_25AF8E7DC(0xD00000000000001ALL, 0x800000025B019360, &v17);
    _os_log_impl(&dword_25AF0B000, v6, v7, "%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x25F85EC30](v9, -1, -1);
    MEMORY[0x25F85EC30](v8, -1, -1);
  }

  v10 = sub_25B005B64();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_25B005B34();
  v11 = v1;
  v12 = sub_25B005B24();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  sub_25AF6C7F8(0, 0, v4, &unk_25B00F010, v13);
}

uint64_t static GlanceModel.localizedTitleKey(forButtonID:)(uint64_t a1)
{
  v2 = sub_25B004204();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_25B005904();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v13[-v8];
  sub_25AFA7234(a1);
  sub_25B005914();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_27FA23728 != -1)
  {
    swift_once();
  }

  v10 = qword_27FA30B00;
  sub_25B0041F4();
  v11 = sub_25B005954();
  (*(v4 + 8))(v9, v3);
  return v11;
}

uint64_t sub_25AF8266C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_25B005B34();
  v5[4] = sub_25B005B24();
  v7 = sub_25B005AE4();

  return MEMORY[0x2822009F8](sub_25AF82704, v7, v6);
}

uint64_t sub_25AF82704()
{

  if ((sub_25B005C14() & 1) == 0)
  {
    (*(v0 + 16))();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25AF82778@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_controlsModel);
  swift_getKeyPath();
  sub_25AFA048C(&unk_27FA256B0, type metadata accessor for ControlsModel);
  sub_25B004234();

  v5 = OBJC_IVAR____TtC17NanoControlCenter13ControlsModel__knownControls;
  swift_beginAccess();
  v6 = *(v4 + v5);

  *a2 = v6;
  return result;
}

uint64_t sub_25AF828BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_25B005B64();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_25B005B34();

  v6 = sub_25B005B24();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  sub_25AF6D0D4(0, 0, v4, &unk_25B00F028, v7);
}

uint64_t sub_25AF829E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a1;
  v4[9] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  v4[10] = swift_task_alloc();
  v4[11] = sub_25B005B34();
  v4[12] = sub_25B005B24();
  v6 = sub_25B005AE4();

  return MEMORY[0x2822009F8](sub_25AF82AB4, v6, v5);
}

uint64_t sub_25AF82AB4()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 80);
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v5 = sub_25B005B64();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);

    v6 = v3;
    v7 = sub_25B005B24();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D85700];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = sub_25AF9FD90;
    v8[5] = v4;
    v10 = sub_25AF6C7F8(0, 0, v2, &unk_25B00F038, v8);
    v11 = *&Strong[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_updatingAvailableControlsTask];
    *&Strong[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_updatingAvailableControlsTask] = v10;
    if (v11)
    {

      sub_25B005BF4();
    }
  }

  **(v0 + 64) = Strong == 0;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_25AF82CC4(uint64_t a1)
{
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v2 = sub_25B0044C4();
  __swift_project_value_buffer(v2, qword_27FA30C28);
  v3 = sub_25B0044B4();
  v4 = sub_25B005C94();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_25AF8E7DC(0xD000000000000024, 0x800000025B019330, &v8);
    _os_log_impl(&dword_25AF0B000, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x25F85EC30](v6, -1, -1);
    MEMORY[0x25F85EC30](v5, -1, -1);
  }

  sub_25AF28914(a1);
  sub_25AF81E80();
  sub_25AFEE1AC(0);
}

uint64_t sub_25AF82E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_25B005B34();
  v4[4] = sub_25B005B24();
  v6 = sub_25B005AE4();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_25AF82EE8, v6, v5);
}

uint64_t sub_25AF82EE8()
{
  v0[7] = *(v0[2] + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_orderModel);
  v0[8] = sub_25B005B24();
  v2 = sub_25B005AE4();
  v0[9] = v2;
  v0[10] = v1;

  return MEMORY[0x2822009F8](sub_25AF82F84, v2, v1);
}

uint64_t sub_25AF82F84()
{
  v1 = *(v0[7] + OBJC_IVAR____TtC17NanoControlCenter16ButtonOrderModel_buttonsAddPendingPersistenceStreamTask);
  v0[11] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_25AF83084;
    v3 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200460](v2, v1, v3);
  }

  else
  {

    v4 = v0[5];
    v5 = v0[6];

    return MEMORY[0x2822009F8](sub_25AF8322C, v4, v5);
  }
}

uint64_t sub_25AF83084()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_25AF831C8, v3, v2);
}

uint64_t sub_25AF831C8()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_25AF8322C, v1, v2);
}

uint64_t sub_25AF8322C()
{

  sub_25AF83294();
  v1 = *(v0 + 8);

  return v1();
}

void sub_25AF83294()
{
  v1 = v0;
  if (qword_27FA23800 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v2 = sub_25B0044C4();
    __swift_project_value_buffer(v2, qword_27FA30C28);
    v3 = sub_25B0044B4();
    v4 = sub_25B005C94();
    v66 = v1;
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v75 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_25AF8E7DC(0xD000000000000020, 0x800000025B019380, &v75);
      _os_log_impl(&dword_25AF0B000, v3, v4, "%s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v6);
      MEMORY[0x25F85EC30](v6, -1, -1);
      v7 = v5;
      v1 = v66;
      MEMORY[0x25F85EC30](v7, -1, -1);
    }

    v8 = sub_25AFEC930();
    swift_getKeyPath();
    v75 = v1;
    sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
    sub_25B004234();

    v9 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__suggestedButtonIDs;
    if (*(*(v1 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__suggestedButtonIDs) + 16) <= 3uLL)
    {
LABEL_58:

      goto LABEL_60;
    }

    v65 = v8;
    swift_getKeyPath();
    v75 = v1;
    sub_25B004234();

    v10 = *(v1 + v9);
    v11 = *(v10 + 16);

    v71 = v11;
    v72 = v10;
    if (!v11)
    {
      break;
    }

    v12 = 0;
    v13 = v10 + 64;
    v67 = v10 + 64;
    v69 = MEMORY[0x277D84F90];
    v64 = v11 - 1;
    do
    {
      v14 = (v13 + 40 * v12);
      v1 = v12;
      while (1)
      {
        if (v1 >= *(v10 + 16))
        {
          __break(1u);
          goto LABEL_64;
        }

        v16 = *(v14 - 4);
        v15 = *(v14 - 3);
        v17 = *(v14 - 2);
        v18 = *(v14 - 1);
        v19 = *v14;
        sub_25B005B34();
        sub_25AF181DC(v16, v15, v17, v18, v19);
        sub_25B005B24();
        sub_25B005AE4();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if ((v19 & 0xC0) == 0x40)
        {
          break;
        }

        ++v1;
        sub_25AF18128(v16, v15, v17, v18, v19);

        v14 += 40;
        v10 = v72;
        if (v71 == v1)
        {
          goto LABEL_19;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = sub_25AFCD450(0, *(v69 + 2) + 1, 1, v69);
      }

      v21 = *(v69 + 2);
      v20 = *(v69 + 3);
      if (v21 >= v20 >> 1)
      {
        v69 = sub_25AFCD450((v20 > 1), v21 + 1, 1, v69);
      }

      v12 = v1 + 1;
      v13 = v67;
      *(v69 + 2) = v21 + 1;
      v22 = &v69[40 * v21];
      *(v22 + 4) = v16;
      *(v22 + 5) = v15;
      *(v22 + 6) = v17;
      *(v22 + 7) = v18;
      v22[64] = v19;
      v10 = v72;
    }

    while (v64 != v1);
LABEL_19:
    v23 = 0;
    v68 = MEMORY[0x277D84F90];
    v24 = v10 + 64;
    v63 = v10 + 64;
LABEL_20:
    v25 = (v24 + 40 * v23);
    v1 = v23;
    while (v1 < *(v10 + 16))
    {
      v26 = *(v25 - 4);
      v27 = *(v25 - 3);
      v28 = *(v25 - 2);
      v29 = *(v25 - 1);
      v30 = *v25;
      sub_25AF181DC(v26, v27, v28, v29, *v25);
      sub_25B005B24();
      sub_25B005AE4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_25AF18128(v26, v27, v28, v29, v30);
      if (v30 < 0x40)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_25AFCD958(0, *(v68 + 2) + 1, 1, v68);
        }

        v32 = *(v68 + 2);
        v31 = *(v68 + 3);
        if (v32 >= v31 >> 1)
        {
          v68 = sub_25AFCD958((v31 > 1), v32 + 1, 1, v68);
        }

        v23 = v1 + 1;
        *(v68 + 2) = v32 + 1;
        *&v68[8 * v32 + 32] = v26;
        v24 = v63;
        v10 = v72;
        if (v64 == v1)
        {
LABEL_32:
          v11 = v71;
          goto LABEL_34;
        }

        goto LABEL_20;
      }

      ++v1;
      v25 += 40;
      v10 = v72;
      if (v71 == v1)
      {
        goto LABEL_32;
      }
    }

LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  v68 = MEMORY[0x277D84F90];
  v69 = MEMORY[0x277D84F90];
LABEL_34:
  v33 = v65;
  v70 = *(v65 + 16);
  if (!v70)
  {
LABEL_49:

    v1 = 1;
    if (v11)
    {
      goto LABEL_52;
    }

    goto LABEL_59;
  }

  v1 = 0;
  v34 = v65 + 32;
  while (1)
  {
    if (v1 >= *(v33 + 16))
    {
      __break(1u);
      return;
    }

    v35 = v34 + 40 * v1;
    v36 = *v35;
    v37 = *(v35 + 8);
    v39 = *(v35 + 16);
    v38 = *(v35 + 24);
    v40 = *(v35 + 32);
    if (!(v40 >> 6))
    {
      v49 = *(v68 + 2);
      v50 = 32;
      while (v49)
      {
        v51 = *&v68[v50];
        v50 += 8;
        --v49;
        if (v36 == v51)
        {
LABEL_47:

          sub_25AF18128(v36, v37, v39, v38, v40);

          goto LABEL_51;
        }
      }

      goto LABEL_48;
    }

    if (v40 >> 6 != 1)
    {
      break;
    }

    v41 = *(v69 + 2);
    sub_25AF181DC(v36, v37, v39, v38, v40);
    v42 = -1;
    v43 = v69 + 64;
    while (v42 - v41 != -1)
    {
      if (++v42 >= *(v69 + 2))
      {
        goto LABEL_66;
      }

      v44 = v43 + 40;
      v45 = *v43;
      v46 = *(v43 - 2);
      v47 = *(v43 - 1);
      v75 = v36;
      v76 = v37;
      v77 = v39;
      v78 = v38;
      v79 = v40;
      v73[0] = v46;
      v73[1] = v47;
      v74 = v45;
      v48 = sub_25AFD19C4(v73);
      v43 = v44;
      if (v48)
      {
        goto LABEL_47;
      }
    }

LABEL_48:
    ++v1;
    sub_25AF18128(v36, v37, v39, v38, v40);
    v11 = v71;
    v10 = v72;
    v34 = v65 + 32;
    v33 = v65;
    if (v1 == v70)
    {
      goto LABEL_49;
    }
  }

  sub_25AF18244(v36, v37, v39, v38, v40 & 1);

  sub_25AF18128(v36, v37, v39, v38, v40);
LABEL_51:

  v1 = 0;
  v11 = v71;
  v10 = v72;
  if (v71)
  {
LABEL_52:
    v52 = 0;
    v53 = (v10 + 64);
    while (v52 < *(v10 + 16))
    {
      v54 = *v53;
      if (v54 >> 6)
      {
        if (v54 >> 6 != 1)
        {
          goto LABEL_58;
        }

        v56 = *(v53 - 2);
        v55 = *(v53 - 1);
        v58 = *(v53 - 4);
        v57 = *(v53 - 3);
        v75 = v58;
        v76 = v57;
        v77 = v56;
        v78 = v55;
        sub_25AF181DC(v58, v57, v56, v55, v54);
        sub_25AF125B0(&v75, 2);
        v60 = v59;
        v61 = v58;
        v62 = v55;
        v11 = v71;
        v10 = v72;
        sub_25AF18128(v61, v57, v56, v62, v54);
        if ((v60 & 1) == 0)
        {
          goto LABEL_58;
        }
      }

      ++v52;
      v53 += 40;
      if (v11 == v52)
      {
        goto LABEL_59;
      }
    }

    goto LABEL_65;
  }

LABEL_59:

  if ((v1 & 1) == 0)
  {
LABEL_60:
    sub_25AF83AE4();
  }
}