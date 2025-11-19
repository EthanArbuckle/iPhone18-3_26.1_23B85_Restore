uint64_t sub_20DF3A280(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_20DF474E4();
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

uint64_t sub_20DF3A364(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D098, &qword_20DF4BD30);
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

uint64_t sub_20DF3A454(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_20DF474E4();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_20DF3A6F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D098, &qword_20DF4BD30);
  v39 = *(v41 - 8);
  v8 = *(v39 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = (&v35 - v13);
  v42 = a4;
  v16 = *(a4 + 64);
  v15 = a4 + 64;
  v14 = v16;
  v17 = -1 << *(v15 - 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v14;
  if (!a2)
  {
LABEL_18:
    v26 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v42;
    a1[1] = v15;
    a1[2] = ~v17;
    a1[3] = v26;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v26 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = -1 << *(v15 - 32);
    v37 = a1;
    result = 0;
    v20 = 0;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    v38 = a3;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v20;
      v27 = v25 | (v20 << 6);
      v28 = v42;
      v29 = *(v42 + 48);
      v30 = sub_20DF474E4();
      (*(*(v30 - 8) + 16))(v11, v29 + *(*(v30 - 8) + 72) * v27, v30);
      v31 = *(v28 + 56);
      v32 = sub_20DF47834();
      (*(*(v32 - 8) + 16))(&v11[*(v41 + 48)], v31 + *(*(v32 - 8) + 72) * v27, v32);
      a1 = v40;
      sub_20DED9CE8(v11, v40, &qword_27C84D098, &qword_20DF4BD30);
      sub_20DED9CE8(a1, a2, &qword_27C84D098, &qword_20DF4BD30);
      a3 = v38;
      if (v22 == v38)
      {
        goto LABEL_23;
      }

      a2 += *(v39 + 72);
      result = v22;
      v33 = __OFADD__(v22++, 1);
      v20 = v26;
      if (v33)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = *(v15 + 8 * v24);
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v34 = v20 + 1;
    }

    else
    {
      v34 = v21;
    }

    v26 = v34 - 1;
    a3 = result;
LABEL_23:
    v17 = v36;
    a1 = v37;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_20DF3AA34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnergySite.EnergyUsage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DF3AA98(uint64_t a1)
{
  v2 = type metadata accessor for EnergySite.EnergyUsage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DF3AAF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x20F328B90](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_20DF35BBC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_20DF3AB8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20DF3ABD4(uint64_t a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0B8, &qword_20DF4BD50) - 8);
  v26 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v3 = v26 + *(v2 + 64);
  v4 = *(sub_20DF474E4() - 8);
  v5 = *(v4 + 80);
  v6 = (v3 + v5 + 1) & ~v5;
  v7 = *(v4 + 64);
  v8 = (v7 + v5 + v6) & ~v5;
  v9 = (v7 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_20DF47604() - 8);
  v12 = (*(v11 + 80) + v10 + 16) & ~*(v11 + 80);
  v23 = *(v1 + 24);
  v24 = *(v1 + 16);
  v13 = v1 + v9;
  v14 = *(v1 + v9);
  v15 = *(v13 + 8);
  v16 = v1 + v10;
  v18 = *(v1 + v10);
  v17 = *(v16 + 8);
  v19 = *(v1 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v20 = *(v1 + v3);
  v21 = swift_task_alloc();
  *(v25 + 16) = v21;
  *v21 = v25;
  v21[1] = sub_20DEBA16C;

  return sub_20DF34D40(a1, v24, v23, v1 + v26, v20, v1 + v6, v1 + v8, v14);
}

uint64_t objectdestroyTm_2()
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0B8, &qword_20DF4BD50);
  v1 = *(v24 - 8);
  v2 = *(v1 + 80);
  v21 = (v2 + 32) & ~v2;
  v3 = *(v1 + 64);
  v4 = sub_20DF474E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v6 + v21 + 1) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v22 = (v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = sub_20DF47604();
  v10 = *(v23 - 8);
  v11 = *(v10 + 80);
  v12 = (v11 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v11;
  v13 = v2 | v6 | v11;
  v14 = (*(v10 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v21, v24);
  v16 = *(v5 + 8);
  v16(v0 + v7, v4);
  v16(v0 + v9, v4);
  v17 = *(v0 + v22 + 8);

  v18 = *(v0 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  (*(v10 + 8))(v0 + v12, v23);
  v19 = *(v0 + v14);

  return MEMORY[0x2821FE8E8](v0, v14 + 8, v13 | 7);
}

uint64_t sub_20DF3B09C(uint64_t a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0B8, &qword_20DF4BD50) - 8);
  v26 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v3 = v26 + *(v2 + 64);
  v4 = *(sub_20DF474E4() - 8);
  v5 = *(v4 + 80);
  v6 = (v3 + v5 + 1) & ~v5;
  v7 = *(v4 + 64);
  v8 = (v7 + v5 + v6) & ~v5;
  v9 = (v7 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_20DF47604() - 8);
  v12 = (*(v11 + 80) + v10 + 16) & ~*(v11 + 80);
  v23 = *(v1 + 24);
  v24 = *(v1 + 16);
  v13 = v1 + v9;
  v14 = *(v1 + v9);
  v15 = *(v13 + 8);
  v16 = v1 + v10;
  v18 = *(v1 + v10);
  v17 = *(v16 + 8);
  v19 = *(v1 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v20 = *(v1 + v3);
  v21 = swift_task_alloc();
  *(v25 + 16) = v21;
  *v21 = v25;
  v21[1] = sub_20DEDA9C0;

  return sub_20DF342E0(a1, v24, v23, v1 + v26, v20, v1 + v6, v1 + v8, v14);
}

uint64_t objectdestroy_7Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0B8, &qword_20DF4BD50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

unint64_t sub_20DF3B404()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[5];
  v6 = v0[7];
  v14 = v0[4];
  v15 = v0[6];
  v16 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0D8, &unk_20DF4BF10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DF4BD90;
  *(inited + 32) = 0x656C746974;
  v8 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  *(inited + 72) = v8;
  *(inited + 80) = 2036625250;
  *(inited + 120) = v8;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = v4;
  *(inited + 104) = v3;

  v9 = sub_20DED8600(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C9F8, &unk_20DF49F30);
  swift_arrayDestroy();
  if (v5)
  {
    v19 = v8;
    *&v18 = v14;
    *(&v18 + 1) = v5;
    sub_20DED8390(&v18, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20DF0E9A0(v17, 0x4C5255706174, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  }

  if (v6)
  {
    v19 = v8;
    *&v18 = v15;
    *(&v18 + 1) = v6;
    sub_20DED8390(&v18, v17);

    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_20DF0E9A0(v17, 0x4449656D6F68, 0xE600000000000000, v11);
  }

  v19 = MEMORY[0x277D839B0];
  LOBYTE(v18) = v16;
  sub_20DED8390(&v18, v17);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_20DF0E9A0(v17, 0xD000000000000012, 0x800000020DF50270, v12);
  return v9;
}

uint64_t HomeEnergyNotificationStatus.description.getter(uint64_t a1)
{
  result = 0xD000000000000025;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0xD00000000000003ALL;
    }

    if (a1 == 3)
    {
      return 0xD000000000000037;
    }

    goto LABEL_10;
  }

  if (a1 && a1 != 1)
  {
LABEL_10:
    result = sub_20DF483F4();
    __break(1u);
  }

  return result;
}

unint64_t sub_20DF3B6F0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_20DF3B748(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void __swiftcall HomeEnergyNotificationContext.init(title:body:tapURL:homeID:seriesNotifications:)(EnergyKitInternal::HomeEnergyNotificationContext *__return_ptr retstr, Swift::String title, Swift::String body, Swift::String_optional tapURL, Swift::String_optional homeID, Swift::Bool seriesNotifications)
{
  retstr->title = title;
  retstr->body = body;
  retstr->tapURL = tapURL;
  retstr->homeID = homeID;
  retstr->seriesNotifications = seriesNotifications;
}

unint64_t sub_20DF3B748(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_20DF3B75C()
{
  result = qword_27C84D0D0;
  if (!qword_27C84D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D0D0);
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_20DF3B7E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_20DF3B82C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20DF3B890(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t static PerfDebug.forceIndependentTokenRotate(token:utility:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_20DF3B980, 0, 0);
}

uint64_t sub_20DF3B980()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v8 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v8;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_20DF3BA90;
  v6 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 72, 0, 0, 0xD00000000000002BLL, 0x800000020DF50290, sub_20DF3BE5C, v3, v6);
}

uint64_t sub_20DF3BA90()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_20DF3BBC8;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_20DF3BBAC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DF3BBC8()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2(0);
}

uint64_t sub_20DF3BC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a2;
  v26 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C918, &qword_20DF49EE0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25 - v15;
  v17 = sub_20DF47F04();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v9 + 16))(v12, a1, v8);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  (*(v9 + 32))(v20 + v18, v12, v8);
  v21 = (v20 + v19);
  v22 = v26;
  *v21 = v25;
  v21[1] = a3;
  v23 = (v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v22;
  v23[1] = a5;

  sub_20DEBB534(0, 0, v16, &unk_20DF4BF68, v20);
}

uint64_t sub_20DF3BE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a7;
  v8[23] = a8;
  v8[20] = a5;
  v8[21] = a6;
  v8[19] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  v8[24] = v9;
  v10 = *(v9 - 8);
  v8[25] = v10;
  v8[26] = *(v10 + 64);
  v8[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF3BF44, 0, 0);
}

uint64_t sub_20DF3BF44()
{
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[24];
  v15 = v0[22];
  v16 = v0[23];
  v14 = v0[21];
  v5 = v0[19];
  v6 = v0[20];
  type metadata accessor for HomeEnergyXPCConnection();
  swift_allocObject();
  v0[28] = sub_20DF3C9D8();
  (*(v2 + 16))(v1, v5, v4);
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v8 = swift_allocObject();
  (*(v2 + 32))(v8 + v7, v1, v4);
  v9 = sub_20DF3D598(sub_20DF3C8DC, v8);
  v0[29] = v9;

  v10 = sub_20DF47D04();
  v0[30] = v10;
  v11 = sub_20DF47D04();
  v0[31] = v11;
  v0[2] = v0;
  v0[7] = v0 + 33;
  v0[3] = sub_20DF3C174;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA40, &qword_20DF49FA0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DF3B890;
  v0[13] = &block_descriptor_10;
  v0[14] = v12;
  [v9 forceIndependentTokenRotateWithToken:v10 utility:v11 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DF3C174()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_20DF3C33C;
  }

  else
  {
    v3 = sub_20DF3C284;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DF3C284()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 192);
  v6 = *(v0 + 152);
  v7 = *(v0 + 264);
  swift_unknownObjectRelease();

  [*(v4 + 16) invalidate];
  *(v0 + 265) = v7;
  sub_20DF47EE4();

  v8 = *(v0 + 216);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_20DF3C33C()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[28];
  v6 = v0[24];
  v7 = v0[19];
  swift_willThrow();
  swift_unknownObjectRelease();

  v0[18] = v1;
  sub_20DF47ED4();

  v8 = v0[27];

  v9 = v0[1];

  return v9();
}

uint64_t sub_20DF3C400(void *a1, uint64_t a2)
{
  v4 = sub_20DF47BD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C84C728 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_27C851F48);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_20DF47BB4();
  v12 = sub_20DF47FF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22[0] = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22[1] = a1;
    v23 = v15;
    *v14 = 136315138;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v17 = sub_20DF47D24();
    v19 = sub_20DED38E8(v17, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_20DEAF000, v11, v12, "Failed to conduct perf test. %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F329700](v15, -1, -1);
    MEMORY[0x20F329700](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0);
  return sub_20DF47ED4();
}

uint64_t sub_20DF3C698()
{
  sub_20DED4D6C();
  swift_allocError();
  *v1 = 8;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20DF3C77C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0) - 8);
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
  v16[1] = sub_20DEBA16C;

  return sub_20DF3BE68(a1, v9, v10, v1 + v6, v12, v13, v14, v15);
}

uint64_t sub_20DF3C8DC(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA38, &qword_20DF4B2A0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_20DF3C400(a1, v4);
}

void sub_20DF3C970(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_20DF3C9D8()
{
  *(v0 + 16) = 0;
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_20DF47D04();
  v3 = [v1 initWithMachServiceName:v2 options:0];

  v4 = *(v0 + 16);
  *(v0 + 16) = v3;

  v5 = *(v0 + 16);
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 interfaceWithProtocol_];
    [v7 setRemoteObjectInterface_];

    v9 = *(v0 + 16);
    if (v9)
    {
      v42 = sub_20DF3DF74;
      v43 = v0;
      aBlock = MEMORY[0x277D85DD0];
      v39 = 1107296256;
      v40 = sub_20DF3D2EC;
      v41 = &block_descriptor_16_0;
      v10 = _Block_copy(&aBlock);
      v11 = v9;

      [v11 setInterruptionHandler_];
      _Block_release(v10);

      v12 = *(v0 + 16);
      if (v12)
      {
        v42 = sub_20DF3DF78;
        v43 = v0;
        aBlock = MEMORY[0x277D85DD0];
        v39 = 1107296256;
        v40 = sub_20DF3D2EC;
        v41 = &block_descriptor_19_0;
        v13 = _Block_copy(&aBlock);

        v14 = v12;

        [v14 setInvalidationHandler_];
        _Block_release(v13);
      }
    }
  }

  sub_20DF3DCB8();
  inited = swift_initStackObject();
  inited[4] = sub_20DF3DF1C(0, &qword_281122980, 0x277CBEA60);
  v16 = sub_20DF3DF1C(0, &qword_27C84C708, 0x277CBEA90);
  inited[5] = v16;
  v17 = sub_20DF3DF1C(0, &qword_27C84C700, 0x277CBEAA8);
  inited[6] = v17;
  v18 = sub_20DF3DF1C(0, &qword_27C84C718, 0x277CBEAC0);
  inited[7] = v18;
  v33 = sub_20DF3DF1C(0, &qword_27C84C6F0, 0x277CCA9B8);
  inited[8] = v33;
  v34 = sub_20DF3DF1C(0, &qword_27C84C6E8, 0x277CCABB0);
  inited[9] = v34;
  v35 = sub_20DF3DF1C(0, &qword_27C84C6E0, 0x277CCACA8);
  inited[10] = v35;
  v36 = sub_20DF3DF1C(0, &qword_27C84C6F8, 0x277CCAD78);
  inited[11] = v36;
  v37 = sub_20DF3DF1C(0, &qword_27C84C710, 0x277CBEBC0);
  inited[12] = v37;
  v19 = *(v0 + 16);
  if (!v19)
  {
    goto LABEL_14;
  }

  v20 = [v19 remoteObjectInterface];
  if (v20)
  {
    v21 = v20;
    v22 = [objc_allocWithZone(MEMORY[0x277CBEB58]) init];
    aBlock = inited[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0F0, &qword_20DF4BFE0);
    [v22 addObject_];
    swift_unknownObjectRelease();
    aBlock = v16;
    [v22 addObject_];
    swift_unknownObjectRelease();
    aBlock = v17;
    [v22 addObject_];
    swift_unknownObjectRelease();
    aBlock = v18;
    [v22 addObject_];
    swift_unknownObjectRelease();
    aBlock = v33;
    [v22 addObject_];
    swift_unknownObjectRelease();
    aBlock = v34;
    [v22 addObject_];
    swift_unknownObjectRelease();
    aBlock = v35;
    [v22 addObject_];
    swift_unknownObjectRelease();
    aBlock = v36;
    [v22 addObject_];
    swift_unknownObjectRelease();
    aBlock = v37;
    [v22 addObject_];
    swift_unknownObjectRelease();
    aBlock = 0;
    v23 = v22;
    sub_20DF47F84();

    if (!aBlock)
    {
      goto LABEL_17;
    }

    v24 = sub_20DF47F74();

    [v21 setClasses:v24 forSelector:sel_clearEnergyKitDataForAllHomesWithCompletionHandler_ argumentIndex:0 ofReply:0];
  }

  v25 = *(v0 + 16);
  if (!v25 || (v26 = [v25 remoteObjectInterface]) == 0)
  {
LABEL_14:
    swift_setDeallocating();
    v31 = *(v0 + 16);
    if (!v31)
    {
      return v0;
    }

LABEL_15:
    [v31 resume];
    return v0;
  }

  v27 = v26;
  v28 = [objc_allocWithZone(MEMORY[0x277CBEB58]) init];
  aBlock = inited[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0F0, &qword_20DF4BFE0);
  [v28 addObject_];
  swift_unknownObjectRelease();
  aBlock = v16;
  [v28 addObject_];
  swift_unknownObjectRelease();
  aBlock = v17;
  [v28 addObject_];
  swift_unknownObjectRelease();
  aBlock = v18;
  [v28 addObject_];
  swift_unknownObjectRelease();
  aBlock = v33;
  [v28 addObject_];
  swift_unknownObjectRelease();
  aBlock = v34;
  [v28 addObject_];
  swift_unknownObjectRelease();
  aBlock = v35;
  [v28 addObject_];
  swift_unknownObjectRelease();
  aBlock = v36;
  [v28 addObject_];
  swift_unknownObjectRelease();
  aBlock = v37;
  [v28 addObject_];
  swift_unknownObjectRelease();
  aBlock = 0;
  v29 = v28;
  sub_20DF47F84();

  if (aBlock)
  {
    swift_setDeallocating();
    v30 = sub_20DF47F74();

    [v27 setClasses:v30 forSelector:sel_clearEnergyKitDataForAllHomesWithCompletionHandler_ argumentIndex:0 ofReply:1];

    v31 = *(v0 + 16);
    if (!v31)
    {
      return v0;
    }

    goto LABEL_15;
  }

LABEL_17:
  result = sub_20DF48204();
  __break(1u);
  return result;
}

uint64_t sub_20DF3D2EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_20DF3D330()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    [v1 suspend];
    v2 = *(v0 + 16);
    *(v0 + 16) = 0;
  }

  v3 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v4 = sub_20DF47D04();
  v5 = [v3 initWithMachServiceName:v4 options:0];

  v6 = *(v0 + 16);
  *(v0 + 16) = v5;
  v7 = v5;

  if (v7)
  {
    v8 = [objc_opt_self() interfaceWithProtocol_];
    [v7 setRemoteObjectInterface_];
  }

  v9 = *(v0 + 16);
  if (!v9)
  {
    goto LABEL_8;
  }

  v21 = sub_20DF3DD30;
  v22 = v0;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_20DF3D2EC;
  v20 = &block_descriptor_10;
  v10 = _Block_copy(&v17);
  v11 = v9;

  [v11 setInterruptionHandler_];
  _Block_release(v10);

  v12 = *(v0 + 16);
  if (v12)
  {
    v21 = sub_20DF3DD50;
    v22 = v0;
    v17 = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_20DF3D2EC;
    v20 = &block_descriptor_13;
    v13 = _Block_copy(&v17);

    v14 = v12;

    [v14 setInvalidationHandler_];
    _Block_release(v13);

    v15 = *(v0 + 16);
  }

  else
  {
LABEL_8:
    v15 = 0;
  }

  return [v15 resume];
}

uint64_t sub_20DF3D598(uint64_t a1, uint64_t a2)
{
  v5 = sub_20DF47BD4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 16);
  if (v10 || (sub_20DF3D330(), (v10 = *(v2 + 16)) != 0))
  {
    v11 = swift_allocObject();
    v11[2] = v2;
    v11[3] = a1;
    v11[4] = a2;
    v23 = sub_20DF3DC24;
    v24 = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20DF3C970;
    v22 = &block_descriptor_11;
    v12 = _Block_copy(aBlock);
    v13 = v10;

    v14 = [v13 remoteObjectProxyWithErrorHandler_];
    _Block_release(v12);

    sub_20DF48074();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v25, 0, sizeof(v25));
  }

  sub_20DF3DC48(v25, aBlock);
  if (!v22)
  {
    sub_20DEDCE24(aBlock);
LABEL_9:
    if (qword_27C84C730 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v5, qword_27C851F60);
    swift_beginAccess();
    (*(v6 + 16))(v9, v16, v5);
    v17 = sub_20DF47BB4();
    v18 = sub_20DF47FF4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20DEAF000, v17, v18, "Returned host vended by XPC service doesn't conform to HomeEnergyXPCProtocol.", v19, 2u);
      MEMORY[0x20F329700](v19, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    exit(1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0E0, &qword_20DF4BFC8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_20DEDCE24(v25);
  return v20[1];
}

uint64_t sub_20DF3D8BC(void *a1, void **a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = sub_20DF47BD4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_281122F18);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);

  v14 = a1;
  v15 = sub_20DF47BB4();
  v16 = sub_20DF47FF4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29[0] = v18;
    *v17 = 136315394;
    v31 = *a2;
    v32 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0E8, &unk_20DF4BFD0);
    v19 = sub_20DF47D24();
    v30 = a3;
    v21 = sub_20DED38E8(v19, v20, &v32);
    v29[1] = a4;
    v22 = v21;

    *(v17 + 4) = v22;
    *(v17 + 12) = 2082;
    v31 = a1;
    v23 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84C928, &qword_20DF4A0C0);
    v24 = sub_20DF47D24();
    v26 = sub_20DED38E8(v24, v25, &v32);
    a3 = v30;

    *(v17 + 14) = v26;
    _os_log_impl(&dword_20DEAF000, v15, v16, "%s: remoteObjectProxyWithErrorHandler error: %{public}s", v17, 0x16u);
    v27 = v29[0];
    swift_arrayDestroy();
    MEMORY[0x20F329700](v27, -1, -1);
    MEMORY[0x20F329700](v17, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  [a2[2] invalidate];
  return a3(a1);
}

uint64_t sub_20DF3DBC8()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20DF3DC48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CA00, &qword_20DF4A170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DF3DCB8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D0F0, &qword_20DF4BFE0);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27C84D0F8;
    v3 = &unk_20DF4BFE8;
  }

  else
  {
    v2 = &unk_27C84D100;
    v3 = &unk_20DF4BFF0;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t sub_20DF3DD70(const char *a1)
{
  v2 = sub_20DF47BD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_281122F18);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_20DF47BB4();
  v9 = sub_20DF47FF4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_20DEAF000, v8, v9, a1, v10, 2u);
    MEMORY[0x20F329700](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_20DF3DF1C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

EnergyKitInternal::GuidanceType_optional __swiftcall GuidanceType.init(rawValue:)(Swift::Int16 rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

_WORD *sub_20DF3DFB4@<X0>(_WORD *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_20DF3E094()
{
  result = qword_27C84D108;
  if (!qword_27C84D108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D108);
  }

  return result;
}

uint64_t sub_20DF3E0E8()
{
  v1 = *v0;
  sub_20DF48494();
  sub_20DF484B4();
  return sub_20DF484D4();
}

uint64_t sub_20DF3E15C()
{
  v1 = *v0;
  sub_20DF48494();
  sub_20DF484B4();
  return sub_20DF484D4();
}

unint64_t sub_20DF3E1B0()
{
  result = qword_27C84D110;
  if (!qword_27C84D110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D110);
  }

  return result;
}

uint64_t sub_20DF3E204(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_20DF47DA4();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20DF3E254()
{
  v1 = *v0;
  v2 = 6710895;
  v3 = 0x64656767756C70;
  v4 = 0x7465736572;
  if (v1 != 4)
  {
    v4 = 0x4E474F4345524E55;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 28271;
  if (v1 != 1)
  {
    v5 = 0x656767756C706E75;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20DF3E304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20DF43D14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20DF3E32C(uint64_t a1)
{
  v2 = sub_20DF3ECAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF3E368(uint64_t a1)
{
  v2 = sub_20DF3ECAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF3E3B0(uint64_t a1)
{
  v2 = sub_20DF3EEA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF3E3EC(uint64_t a1)
{
  v2 = sub_20DF3EEA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF3E428(uint64_t a1)
{
  v2 = sub_20DF3EE50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF3E464(uint64_t a1)
{
  v2 = sub_20DF3EE50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF3E4A0(uint64_t a1)
{
  v2 = sub_20DF3EDA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF3E4DC(uint64_t a1)
{
  v2 = sub_20DF3EDA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF3E518(uint64_t a1)
{
  v2 = sub_20DF3ED54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF3E554(uint64_t a1)
{
  v2 = sub_20DF3ED54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF3E5A4(uint64_t a1)
{
  v2 = sub_20DF3ED00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF3E5E0(uint64_t a1)
{
  v2 = sub_20DF3ED00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF3E61C(uint64_t a1)
{
  v2 = sub_20DF3EDFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF3E658(uint64_t a1)
{
  v2 = sub_20DF3EDFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LoadState.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D118, &qword_20DF4C130);
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v52 = &v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D120, &qword_20DF4C138);
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v7);
  v49 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D128, &qword_20DF4C140);
  v47 = *(v10 - 8);
  v48 = v10;
  v11 = *(v47 + 64);
  MEMORY[0x28223BE20](v10);
  v46 = &v38 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D130, &qword_20DF4C148);
  v44 = *(v13 - 8);
  v45 = v13;
  v14 = *(v44 + 64);
  MEMORY[0x28223BE20](v13);
  v43 = &v38 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D138, &qword_20DF4C150);
  v41 = *(v16 - 8);
  v42 = v16;
  v17 = *(v41 + 64);
  MEMORY[0x28223BE20](v16);
  v40 = &v38 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D140, &qword_20DF4C158);
  v38 = *(v19 - 8);
  v39 = v19;
  v20 = *(v38 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v38 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D148, &qword_20DF4C160);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v38 - v26;
  v28 = *v2;
  v29 = *(v2 + 8);
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF3ECAC();
  sub_20DF484F4();
  if (v29 != 1)
  {
    v60 = 5;
    sub_20DF3ED00();
    v35 = v52;
    sub_20DF48314();
    v36 = v54;
    sub_20DF48374();
    (*(v53 + 8))(v35, v36);
    return (*(v24 + 8))(v27, v23);
  }

  v31 = (v24 + 8);
  if (v28 > 1)
  {
    if (v28 == 2)
    {
      v57 = 2;
      sub_20DF3EDFC();
      v32 = v43;
      sub_20DF48314();
      v34 = v44;
      v33 = v45;
    }

    else if (v28 == 3)
    {
      v58 = 3;
      sub_20DF3EDA8();
      v32 = v46;
      sub_20DF48314();
      v34 = v47;
      v33 = v48;
    }

    else
    {
      v59 = 4;
      sub_20DF3ED54();
      v32 = v49;
      sub_20DF48314();
      v34 = v50;
      v33 = v51;
    }

    goto LABEL_12;
  }

  if (v28)
  {
    v56 = 1;
    sub_20DF3EE50();
    v32 = v40;
    sub_20DF48314();
    v34 = v41;
    v33 = v42;
LABEL_12:
    (*(v34 + 8))(v32, v33);
    return (*v31)(v27, v23);
  }

  v55 = 0;
  sub_20DF3EEA4();
  sub_20DF48314();
  (*(v38 + 8))(v22, v39);
  return (*v31)(v27, v23);
}

unint64_t sub_20DF3ECAC()
{
  result = qword_27C84D150;
  if (!qword_27C84D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D150);
  }

  return result;
}

unint64_t sub_20DF3ED00()
{
  result = qword_27C84D158;
  if (!qword_27C84D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D158);
  }

  return result;
}

unint64_t sub_20DF3ED54()
{
  result = qword_27C84D160;
  if (!qword_27C84D160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D160);
  }

  return result;
}

unint64_t sub_20DF3EDA8()
{
  result = qword_27C84D168;
  if (!qword_27C84D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D168);
  }

  return result;
}

unint64_t sub_20DF3EDFC()
{
  result = qword_27C84D170;
  if (!qword_27C84D170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D170);
  }

  return result;
}

unint64_t sub_20DF3EE50()
{
  result = qword_27C84D178;
  if (!qword_27C84D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D178);
  }

  return result;
}

unint64_t sub_20DF3EEA4()
{
  result = qword_27C84D180;
  if (!qword_27C84D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D180);
  }

  return result;
}

uint64_t LoadState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D188, &qword_20DF4C168);
  v4 = *(v3 - 8);
  v65 = v3;
  v66 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v71 = &v53 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D190, &qword_20DF4C170);
  v8 = *(v7 - 8);
  v63 = v7;
  v64 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v70 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D198, &qword_20DF4C178);
  v12 = *(v11 - 8);
  v61 = v11;
  v62 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v69 = &v53 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D1A0, &qword_20DF4C180);
  v59 = *(v15 - 8);
  v60 = v15;
  v16 = *(v59 + 64);
  MEMORY[0x28223BE20](v15);
  v67 = &v53 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D1A8, &qword_20DF4C188);
  v57 = *(v18 - 8);
  v58 = v18;
  v19 = *(v57 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v53 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D1B0, &qword_20DF4C190);
  v56 = *(v22 - 8);
  v23 = *(v56 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v53 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D1B8, &qword_20DF4C198);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v53 - v29;
  v32 = a1[3];
  v31 = a1[4];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_20DF3ECAC();
  v33 = v72;
  sub_20DF484E4();
  if (!v33)
  {
    v54 = v22;
    v55 = v21;
    v34 = v69;
    v35 = v70;
    v36 = v71;
    v72 = v27;
    v37 = v30;
    v38 = sub_20DF48304();
    if (*(v38 + 16) == 1)
    {
      v39 = *(v38 + 32);
      if (v39 != 6)
      {
        if (*(v38 + 32) > 2u)
        {
          v67 = v38;
          v48 = v72;
          if (v39 == 3)
          {
            v50 = v68;
            v77 = 3;
            sub_20DF3EDA8();
            sub_20DF48264();
            (*(v62 + 8))(v34, v61);
            (*(v48 + 8))(v37, v26);
            swift_unknownObjectRelease();
            v42 = 1;
            v41 = 3;
LABEL_18:
            *v50 = v41;
            *(v50 + 8) = v42;
            return __swift_destroy_boxed_opaque_existential_1(v73);
          }

          v49 = v37;
          if (v39 == 4)
          {
            v78 = 4;
            sub_20DF3ED54();
            sub_20DF48264();
            (*(v64 + 8))(v35, v63);
            (*(v48 + 8))(v37, v26);
            swift_unknownObjectRelease();
            v42 = 1;
            v41 = 4;
          }

          else
          {
            v79 = 5;
            sub_20DF3ED00();
            sub_20DF48264();
            v52 = v65;
            v41 = sub_20DF482D4();
            (*(v66 + 8))(v36, v52);
            (*(v48 + 8))(v49, v26);
            swift_unknownObjectRelease();
            v42 = 0;
          }
        }

        else if (*(v38 + 32))
        {
          if (v39 == 1)
          {
            v75 = 1;
            sub_20DF3EE50();
            v40 = v55;
            sub_20DF48264();
            (*(v57 + 8))(v40, v58);
            (*(v72 + 8))(v30, v26);
            swift_unknownObjectRelease();
            v41 = 1;
            v42 = 1;
          }

          else
          {
            v76 = 2;
            sub_20DF3EDFC();
            v51 = v67;
            sub_20DF48264();
            (*(v59 + 8))(v51, v60);
            (*(v72 + 8))(v30, v26);
            swift_unknownObjectRelease();
            v42 = 1;
            v41 = 2;
          }
        }

        else
        {
          v74 = 0;
          sub_20DF3EEA4();
          sub_20DF48264();
          (*(v56 + 8))(v25, v54);
          (*(v72 + 8))(v30, v26);
          swift_unknownObjectRelease();
          v41 = 0;
          v42 = 1;
        }

        v50 = v68;
        goto LABEL_18;
      }
    }

    v43 = sub_20DF48194();
    swift_allocError();
    v45 = v44;
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D1C0, &qword_20DF4C1A0) + 48);
    *v45 = &type metadata for LoadState;
    sub_20DF48274();
    sub_20DF48184();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D84160], v43);
    swift_willThrow();
    (*(v72 + 8))(v37, v26);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v73);
}

uint64_t sub_20DF3F85C()
{
  v1 = 0x726568746FLL;
  v2 = 0x6369727463656C65;
  if (*v0 != 2)
  {
    v2 = 0x4E474F4345524E55;
  }

  if (*v0)
  {
    v1 = 1667331688;
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

uint64_t sub_20DF3F8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20DF43F10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20DF3F914(uint64_t a1)
{
  v2 = sub_20DF4011C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF3F950(uint64_t a1)
{
  v2 = sub_20DF4011C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF3F98C(uint64_t a1)
{
  v2 = sub_20DF401C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF3F9C8(uint64_t a1)
{
  v2 = sub_20DF401C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF3FA04(uint64_t a1)
{
  v2 = sub_20DF40218();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF3FA40(uint64_t a1)
{
  v2 = sub_20DF40218();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF3FA7C(uint64_t a1)
{
  v2 = sub_20DF4026C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF3FAB8(uint64_t a1)
{
  v2 = sub_20DF4026C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20DF3FAF4()
{
  sub_20DF48494();
  MEMORY[0x20F329080](0);
  return sub_20DF484D4();
}

uint64_t sub_20DF3FB38()
{
  sub_20DF48494();
  MEMORY[0x20F329080](0);
  return sub_20DF484D4();
}

uint64_t sub_20DF3FB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20DF483D4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20DF3FBF8(uint64_t a1)
{
  v2 = sub_20DF40170();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF3FC34(uint64_t a1)
{
  v2 = sub_20DF40170();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LoadDeviceType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D1C8, &qword_20DF4C1A8);
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4);
  v42 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D1D0, &qword_20DF4C1B0);
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v7);
  v39 = &v34 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D1D8, &qword_20DF4C1B8);
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = *(v37 + 64);
  MEMORY[0x28223BE20](v10);
  v36 = &v34 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D1E0, &qword_20DF4C1C0);
  v34 = *(v13 - 8);
  v35 = v13;
  v14 = *(v34 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D1E8, &qword_20DF4C1C8);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v34 - v20;
  v22 = *v2;
  v23 = *(v2 + 8);
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF4011C();
  sub_20DF484F4();
  if (v23 == 1)
  {
    v25 = (v18 + 8);
    if (v22)
    {
      v26 = v22 == 1;
      v27 = v17;
      if (v26)
      {
        v46 = 1;
        sub_20DF40218();
        v31 = v36;
        sub_20DF48314();
        v33 = v37;
        v32 = v38;
      }

      else
      {
        v47 = 2;
        sub_20DF401C4();
        v31 = v39;
        sub_20DF48314();
        v33 = v40;
        v32 = v41;
      }

      (*(v33 + 8))(v31, v32);
      return (*v25)(v21, v27);
    }

    else
    {
      v45 = 0;
      sub_20DF4026C();
      sub_20DF48314();
      (*(v34 + 8))(v16, v35);
      return (*v25)(v21, v17);
    }
  }

  else
  {
    v48 = 3;
    sub_20DF40170();
    v28 = v42;
    sub_20DF48314();
    v29 = v44;
    sub_20DF48374();
    (*(v43 + 8))(v28, v29);
    return (*(v18 + 8))(v21, v17);
  }
}

unint64_t sub_20DF4011C()
{
  result = qword_27C84D1F0;
  if (!qword_27C84D1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D1F0);
  }

  return result;
}

unint64_t sub_20DF40170()
{
  result = qword_27C84D1F8;
  if (!qword_27C84D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D1F8);
  }

  return result;
}

unint64_t sub_20DF401C4()
{
  result = qword_27C84D200;
  if (!qword_27C84D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D200);
  }

  return result;
}

unint64_t sub_20DF40218()
{
  result = qword_27C84D208;
  if (!qword_27C84D208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D208);
  }

  return result;
}

unint64_t sub_20DF4026C()
{
  result = qword_27C84D210;
  if (!qword_27C84D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D210);
  }

  return result;
}

uint64_t LoadDeviceType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D218, &qword_20DF4C1D0);
  v51 = *(v48 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  v54 = &v43 - v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D220, &qword_20DF4C1D8);
  v45 = *(v50 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v50);
  v53 = &v43 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D228, &qword_20DF4C1E0);
  v47 = *(v49 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D230, &qword_20DF4C1E8);
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D238, &unk_20DF4C1F0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_20DF4011C();
  v21 = v55;
  sub_20DF484E4();
  if (!v21)
  {
    v22 = v13;
    v44 = v10;
    v23 = v9;
    v25 = v53;
    v24 = v54;
    v55 = v15;
    v26 = v18;
    v27 = sub_20DF48304();
    v28 = *(v27 + 16);
    if (!v28 || ((v29 = *(v27 + 32), v28 == 1) ? (v30 = v29 == 4) : (v30 = 1), v30))
    {
      v31 = sub_20DF48194();
      swift_allocError();
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D1C0, &qword_20DF4C1A0) + 48);
      *v33 = &type metadata for LoadDeviceType;
      sub_20DF48274();
      sub_20DF48184();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
      swift_willThrow();
      (*(v55 + 8))(v18, v14);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v27 + 32) > 1u)
      {
        v49 = v27;
        v37 = v52;
        v38 = v55;
        if (v29 == 2)
        {
          v59 = 2;
          sub_20DF401C4();
          sub_20DF48264();
          (*(v45 + 8))(v25, v50);
          (*(v38 + 8))(v26, v14);
          swift_unknownObjectRelease();
          v42 = 1;
          v36 = 2;
        }

        else
        {
          v60 = 3;
          sub_20DF40170();
          v39 = v24;
          v40 = v26;
          sub_20DF48264();
          v41 = v48;
          v36 = sub_20DF482D4();
          (*(v51 + 8))(v39, v41);
          (*(v38 + 8))(v40, v14);
          swift_unknownObjectRelease();
          v42 = 0;
        }
      }

      else
      {
        if (*(v27 + 32))
        {
          v58 = 1;
          sub_20DF40218();
          sub_20DF48264();
          (*(v47 + 8))(v23, v49);
          (*(v55 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v36 = 1;
        }

        else
        {
          v57 = 0;
          sub_20DF4026C();
          sub_20DF48264();
          (*(v46 + 8))(v22, v44);
          (*(v55 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v36 = 0;
        }

        v42 = 1;
        v37 = v52;
      }

      *v37 = v36;
      *(v37 + 8) = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v56);
}

uint64_t LoadEvent.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20DF47564();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LoadEvent.id.setter(uint64_t a1)
{
  v3 = sub_20DF47564();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t LoadEvent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LoadEvent() + 20);
  v4 = sub_20DF474E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for LoadEvent()
{
  result = qword_27C84D288;
  if (!qword_27C84D288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LoadEvent.state.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for LoadEvent();
  v4 = (v1 + *(result + 24));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t LoadEvent.deviceID.getter()
{
  v1 = (v0 + *(type metadata accessor for LoadEvent() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t LoadEvent.type.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for LoadEvent();
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t LoadEvent.siteID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LoadEvent() + 40);
  v4 = sub_20DF47564();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LoadEvent.power.getter()
{
  v1 = (v0 + *(type metadata accessor for LoadEvent() + 48));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t LoadEvent.energy.getter()
{
  v1 = (v0 + *(type metadata accessor for LoadEvent() + 52));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t LoadEvent.energyFlowDirection.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LoadEvent();
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t LoadEvent.guidanceID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LoadEvent() + 60);

  return sub_20DF40E2C(v3, a1);
}

uint64_t sub_20DF40E2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t LoadEvent.init(timestamp:state:level:deviceID:type:siteID:followingGuidance:guidanceID:energy:power:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v47 = a8;
  v48 = a7;
  v46 = a9;
  v49 = a10;
  Event = type metadata accessor for LoadEvent();
  v17 = *(*(Event - 1) + 64);
  MEMORY[0x28223BE20](Event);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a2;
  v21 = *(a2 + 8);
  v22 = *a6;
  v44 = v20;
  v45 = v22;
  v23 = *(a6 + 8);
  sub_20DF47554();
  *&v19[Event[16]] = 0x3FF0000000000000;
  if (a3 > 0x64)
  {
    v24 = 6;
LABEL_10:

    sub_20DEDD4D8();
    swift_allocError();
    *v26 = v24;
    swift_willThrow();
    v27 = sub_20DF47564();
    v28 = *(*(v27 - 8) + 8);
    v28(v48, v27);
    v29 = sub_20DF474E4();
    (*(*(v29 - 8) + 8))(a1, v29);
    sub_20DED8730(v49, &qword_27C84CCB8, &qword_20DF4AC48);
    return (v28)(v19, v27);
  }

  if ((a5 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
LABEL_9:
    v24 = 5;
    goto LABEL_10;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if (sub_20DF47D94() > 64)
    {
      goto LABEL_9;
    }
  }

  else if (v25 > 64)
  {
    goto LABEL_9;
  }

  HIDWORD(v43) = v23;
  if (v47)
  {
    v31 = sub_20DF47564();
    v24 = 1;
    if ((*(*(v31 - 8) + 48))(v49, 1, v31) == 1)
    {
      goto LABEL_10;
    }
  }

  v32 = Event[5];
  v33 = sub_20DF474E4();
  (*(*(v33 - 8) + 32))(&v19[v32], a1, v33);
  v34 = &v19[Event[6]];
  v35 = v45;
  *v34 = v44;
  v34[8] = v21;
  *&v19[Event[7]] = a3;
  v36 = &v19[Event[8]];
  *v36 = a4;
  *(v36 + 1) = a5;
  v37 = &v19[Event[9]];
  *v37 = v35;
  v37[8] = BYTE4(v43);
  v38 = Event[10];
  v39 = sub_20DF47564();
  (*(*(v39 - 8) + 32))(&v19[v38], v48, v39);
  v19[Event[11]] = v47 & 1;
  v40 = &v19[Event[13]];
  *v40 = 0;
  v40[8] = 0;
  v41 = &v19[Event[12]];
  *v41 = 0;
  v41[8] = 0;
  v42 = v49;
  sub_20DF40E2C(v49, &v19[Event[15]]);
  v19[Event[14]] = 1;
  sub_20DF41234(v19, v46);
  sub_20DED8730(v42, &qword_27C84CCB8, &qword_20DF4AC48);
  return sub_20DF41298(v19);
}

uint64_t sub_20DF41234(uint64_t a1, uint64_t a2)
{
  Event = type metadata accessor for LoadEvent();
  (*(*(Event - 8) + 16))(a2, a1, Event);
  return a2;
}

uint64_t sub_20DF41298(uint64_t a1)
{
  Event = type metadata accessor for LoadEvent();
  (*(*(Event - 8) + 8))(a1, Event);
  return a1;
}

uint64_t LoadEvent.init(timestamp:state:level:deviceID:type:siteID:followingGuidance:energyFlowDirection:guidanceID:energy:power:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, unsigned __int8 *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  v53 = a9;
  v54 = a8;
  v55 = a1;
  v56 = a7;
  v57 = a11;
  Event = type metadata accessor for LoadEvent();
  v21 = *(*(Event - 1) + 64);
  MEMORY[0x28223BE20](Event);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a2;
  v25 = *(a2 + 8);
  v52 = *a6;
  v26 = *(a6 + 8);
  v27 = *a10;
  sub_20DF47554();
  *&v23[Event[16]] = 0x3FF0000000000000;
  if (a3 > 0x64)
  {
    v28 = 6;
LABEL_10:

    sub_20DEDD4D8();
    swift_allocError();
    *v42 = v28;
    swift_willThrow();
    v43 = sub_20DF47564();
    v44 = *(*(v43 - 8) + 8);
    v44(v56, v43);
    v45 = sub_20DF474E4();
    (*(*(v45 - 8) + 8))(v55, v45);
    sub_20DED8730(v57, &qword_27C84CCB8, &qword_20DF4AC48);
    return (v44)(v23, v43);
  }

  if (!sub_20DF4407C(a4, a5))
  {
    v28 = 5;
    goto LABEL_10;
  }

  v51 = v27;
  if (v54)
  {
    v29 = sub_20DF47564();
    v28 = 1;
    if ((*(*(v29 - 8) + 48))(v57, 1, v29) == 1)
    {
      goto LABEL_10;
    }
  }

  v30 = Event[5];
  v31 = sub_20DF474E4();
  (*(*(v31 - 8) + 32))(&v23[v30], v55, v31);
  v32 = &v23[Event[6]];
  *v32 = v24;
  v32[8] = v25;
  *&v23[Event[7]] = a3;
  v33 = &v23[Event[8]];
  *v33 = a4;
  v33[1] = a5;
  v34 = &v23[Event[9]];
  *v34 = v52;
  v34[8] = v26;
  v35 = Event[10];
  v36 = sub_20DF47564();
  (*(*(v36 - 8) + 32))(&v23[v35], v56, v36);
  v23[Event[11]] = v54 & 1;
  if (!v25)
  {
    v37 = v51;
    if (v24 == 4)
    {
      goto LABEL_8;
    }

LABEL_12:
    v41 = a15;
    v40 = a14;
    v39 = a13;
    v38 = a12;
    goto LABEL_13;
  }

  v37 = v51;
  if (v24 < 4)
  {
    goto LABEL_12;
  }

LABEL_8:
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
LABEL_13:
  v47 = &v23[Event[13]];
  *v47 = v38;
  v47[8] = v39 & 1;
  v48 = &v23[Event[12]];
  *v48 = v40;
  v48[8] = v41 & 1;
  v49 = v57;
  sub_20DF40E2C(v57, &v23[Event[15]]);
  v23[Event[14]] = v37;
  sub_20DF41234(v23, v53);
  sub_20DED8730(v49, &qword_27C84CCB8, &qword_20DF4AC48);
  return sub_20DF41298(v23);
}

uint64_t static LoadEvent.reset(timestamp:deviceID:type:siteID:followingGuidance:guidanceID:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v42 = a7;
  v43 = a6;
  v48 = a5;
  v44 = a4;
  v45 = a3;
  v46 = a2;
  v47 = a1;
  Event = type metadata accessor for LoadEvent();
  v8 = *(*(Event - 1) + 64);
  MEMORY[0x28223BE20](Event);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = sub_20DF47564();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20DF474E4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *v44;
  LODWORD(v44) = *(v44 + 8);
  (*(v21 + 16))(v24, v47, v20);
  v25 = *(v16 + 16);
  v47 = v19;
  v25(v19, v48, v15);
  v26 = *(v16 + 56);
  v48 = v14;
  v27 = v14;
  v28 = v45;
  v26(v27, 1, 1, v15);
  sub_20DF47554();
  *&v10[Event[16]] = 0x3FF0000000000000;
  v29 = v46;
  v30 = sub_20DF4407C(v46, v28);
  if (!v30 || (v43 & 1) != 0)
  {
    if (v30)
    {
      v38 = 1;
    }

    else
    {
      v38 = 5;
    }

    sub_20DEDD4D8();
    swift_allocError();
    *v39 = v38;
    swift_willThrow();
    v40 = *(v16 + 8);
    v40(v47, v15);
    (*(v21 + 8))(v24, v20);
    sub_20DED8730(v48, &qword_27C84CCB8, &qword_20DF4AC48);
    return (v40)(v10, v15);
  }

  else
  {
    (*(v21 + 32))(&v10[Event[5]], v24, v20);
    v31 = &v10[Event[6]];
    *v31 = 4;
    v31[8] = 1;
    *&v10[Event[7]] = 0;
    v32 = &v10[Event[8]];
    *v32 = v29;
    v32[1] = v28;
    v33 = &v10[Event[9]];
    *v33 = v41;
    v33[8] = v44;
    (*(v16 + 32))(&v10[Event[10]], v47, v15);
    v10[Event[11]] = 0;
    v34 = &v10[Event[13]];
    *v34 = 0;
    v34[8] = 0;
    v35 = &v10[Event[12]];
    *v35 = 0;
    v35[8] = 0;
    v36 = v48;
    sub_20DF40E2C(v48, &v10[Event[15]]);
    v10[Event[14]] = 1;
    sub_20DF41234(v10, v42);

    sub_20DED8730(v36, &qword_27C84CCB8, &qword_20DF4AC48);
    return sub_20DF41298(v10);
  }
}

uint64_t static LoadEvent.reset(timestamp:deviceID:type:siteID:followingGuidance:energyFlowDirection:guidanceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X8>)
{
  v45 = a8;
  v50 = a2;
  v51 = a7;
  v46 = a6;
  v52 = a5;
  v47 = a4;
  v48 = a1;
  v49 = a3;
  Event = type metadata accessor for LoadEvent();
  v9 = *(*(Event - 1) + 64);
  MEMORY[0x28223BE20](Event);
  v11 = &v42[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v42[-v14];
  v16 = sub_20DF47564();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v42[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_20DF474E4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v42[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = *v47;
  v43 = *(v47 + 8);
  LODWORD(v47) = *v51;
  (*(v22 + 16))(v25, v48, v21);
  v26 = *(v17 + 16);
  v51 = v20;
  v26(v20, v52, v16);
  v27 = *(v17 + 56);
  v52 = v15;
  v28 = v15;
  v29 = v49;
  v27(v28, 1, 1, v16);
  sub_20DF47554();
  *&v11[Event[16]] = 0x3FF0000000000000;
  v30 = v50;
  v31 = sub_20DF4407C(v50, v29);
  if (!v31 || (v46 & 1) != 0)
  {
    if (v31)
    {
      v39 = 1;
    }

    else
    {
      v39 = 5;
    }

    sub_20DEDD4D8();
    swift_allocError();
    *v40 = v39;
    swift_willThrow();
    v41 = *(v17 + 8);
    v41(v51, v16);
    (*(v22 + 8))(v25, v21);
    sub_20DED8730(v52, &qword_27C84CCB8, &qword_20DF4AC48);
    return (v41)(v11, v16);
  }

  else
  {
    (*(v22 + 32))(&v11[Event[5]], v25, v21);
    v32 = &v11[Event[6]];
    *v32 = 4;
    v32[8] = 1;
    *&v11[Event[7]] = 0;
    v33 = &v11[Event[8]];
    *v33 = v30;
    v33[1] = v29;
    v34 = &v11[Event[9]];
    *v34 = v44;
    v34[8] = v43;
    (*(v17 + 32))(&v11[Event[10]], v51, v16);
    v11[Event[11]] = 0;
    v35 = &v11[Event[13]];
    *v35 = 0;
    v35[8] = 0;
    v36 = &v11[Event[12]];
    *v36 = 0;
    v36[8] = 0;
    v37 = v52;
    sub_20DF40E2C(v52, &v11[Event[15]]);
    v11[Event[14]] = v47;
    sub_20DF41234(v11, v45);

    sub_20DED8730(v37, &qword_27C84CCB8, &qword_20DF4AC48);
    return sub_20DF41298(v11);
  }
}

uint64_t static LoadEvent.submit(events:)(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_20DF47BD4();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF41FD4, 0, 0);
}

uint64_t sub_20DF41FD4()
{
  v19 = v0;
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = __swift_project_value_buffer(v3, qword_281122F18);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_20DF47BB4();
  v6 = sub_20DF48004();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[7];
  v8 = v0[8];
  v11 = v0[5];
  v10 = v0[6];
  if (v7)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_20DED38E8(0x652874696D627573, 0xEF293A73746E6576, &v18);
    *(v12 + 12) = 2048;
    *(v12 + 14) = *(v11 + 16);

    _os_log_impl(&dword_20DEAF000, v5, v6, "%s: %ld", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x20F329700](v13, -1, -1);
    MEMORY[0x20F329700](v12, -1, -1);
  }

  else
  {
    v14 = v0[5];
  }

  (*(v9 + 8))(v8, v10);
  v15 = v0[8];

  v16 = v0[1];

  return v16();
}

uint64_t static LoadEvent.send(events:)(uint64_t a1)
{
  v2 = sub_20DF47BD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_281122F18);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);

  v8 = sub_20DF47BB4();
  v9 = sub_20DF48004();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_20DED38E8(0x65766528646E6573, 0xED0000293A73746ELL, &v13);
    *(v10 + 12) = 2048;
    *(v10 + 14) = *(a1 + 16);

    _os_log_impl(&dword_20DEAF000, v8, v9, "%s: %ld", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x20F329700](v11, -1, -1);
    MEMORY[0x20F329700](v10, -1, -1);
  }

  else
  {
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_20DF42428()
{
  v0 = sub_20DF47374();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v11 - v7;
  __swift_allocate_value_buffer(v6, qword_27C851FC8);
  __swift_project_value_buffer(v0, qword_27C851FC8);
  sub_20DF47344();
  sub_20DF47334();
  sub_20DF47354();
  v9 = *(v1 + 8);
  v9(v5, v0);
  return (v9)(v8, v0);
}

uint64_t sub_20DF42564(uint64_t a1, unint64_t a2)
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
    v5 = 0;
    v20 = a2 & 0xFFFFFFFFFFFFFFLL;
    v18 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_20DF48144();
        v9 = v8;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v19[0] = a1;
          v19[1] = v20;
          v7 = v19 + v5;
        }

        else
        {
          v6 = v18;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v6 = sub_20DF481A4();
          }

          v7 = (v6 + v5);
        }

        v10 = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v13 = (__clz(v10 ^ 0xFF) - 24);
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v15 = ((v10 & 0xF) << 12) | ((v7[1] & 0x3F) << 6) | v7[2] & 0x3Fu;
            v9 = 3;
          }

          else
          {
            v16 = ((v10 & 0xF) << 18) | ((v7[1] & 0x3F) << 12) | ((v7[2] & 0x3F) << 6) | v7[3] & 0x3Fu;
            v9 = 4;
          }

          goto LABEL_15;
        }

        if (v13 == 1)
        {
LABEL_14:
          v9 = 1;
        }

        else
        {
          v14 = v7[1] & 0x3F | ((v10 & 0x1F) << 6);
          v9 = 2;
        }
      }

LABEL_15:
      if (qword_27C84C758 != -1)
      {
        swift_once();
      }

      v11 = sub_20DF47374();
      __swift_project_value_buffer(v11, qword_27C851FC8);
      v12 = sub_20DF47364();
      if (v12)
      {
        v5 += v9;
        if (v5 < v2)
        {
          continue;
        }
      }

      return v12 & 1;
    }
  }

  v12 = 1;
  return v12 & 1;
}

uint64_t sub_20DF42744(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_20DF47D64();
  return sub_20DF47DA4();
}

unint64_t sub_20DF427C8(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6D617473656D6974;
      break;
    case 2:
      result = 0x6574617473;
      break;
    case 3:
      result = 0x6C6576656CLL;
      break;
    case 4:
      result = 0x4449656369766564;
      break;
    case 5:
      result = 1701869940;
      break;
    case 6:
      result = 0x444965746973;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x7265776F70;
      break;
    case 9:
      result = 0x796772656E65;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0x65636E6164697567;
      break;
    case 12:
      result = 0x6E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_20DF42918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20DF45658(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20DF4294C(uint64_t a1)
{
  v2 = sub_20DF44288();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF42988(uint64_t a1)
{
  v2 = sub_20DF44288();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LoadEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D240, &qword_20DF4C208);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF44288();
  sub_20DF484F4();
  LOBYTE(v34) = 0;
  sub_20DF47564();
  sub_20DF45A68(&qword_27C84C820, MEMORY[0x277CC95F0]);
  sub_20DF48384();
  if (!v2)
  {
    Event = type metadata accessor for LoadEvent();
    v11 = Event[5];
    LOBYTE(v34) = 1;
    sub_20DF474E4();
    sub_20DF45A68(&qword_27C84CC50, MEMORY[0x277CC9578]);
    sub_20DF48384();
    v12 = Event;
    v13 = (v3 + Event[6]);
    v14 = *v13;
    LOBYTE(v13) = *(v13 + 8);
    v34 = v14;
    v35 = v13;
    v36 = 2;
    sub_20DF442DC();
    sub_20DF48384();
    v15 = *(v3 + v12[7]);
    LOBYTE(v34) = 3;
    sub_20DF48394();
    v16 = (v3 + v12[8]);
    v17 = *v16;
    v18 = v16[1];
    LOBYTE(v34) = 4;
    sub_20DF48344();
    v19 = (v3 + v12[9]);
    v20 = *v19;
    LOBYTE(v19) = *(v19 + 8);
    v34 = v20;
    v35 = v19;
    v36 = 5;
    sub_20DF44330();
    sub_20DF48384();
    v21 = v12[10];
    LOBYTE(v34) = 6;
    sub_20DF48384();
    v22 = *(v3 + v12[11]);
    LOBYTE(v34) = 7;
    sub_20DF48354();
    v23 = (v3 + v12[12]);
    v24 = *v23;
    v25 = *(v23 + 8);
    LOBYTE(v34) = 8;
    sub_20DF48324();
    v26 = (v3 + v12[13]);
    v27 = *v26;
    v28 = *(v26 + 8);
    LOBYTE(v34) = 9;
    sub_20DF48324();
    LOBYTE(v34) = *(v3 + v12[14]);
    v36 = 10;
    sub_20DF44384();
    sub_20DF48384();
    v29 = Event[15];
    LOBYTE(v34) = 11;
    sub_20DF48334();
    v30 = *(v3 + Event[16]);
    LOBYTE(v34) = 12;
    sub_20DF48364();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t LoadEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v50 - v6;
  v7 = sub_20DF474E4();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20DF47564();
  v61 = *(v11 - 8);
  v12 = *(v61 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D268, &qword_20DF4C210);
  v54 = *(v18 - 8);
  v55 = v18;
  v19 = *(v54 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v50 - v20;
  Event = type metadata accessor for LoadEvent();
  v22 = *(*(Event - 1) + 64);
  MEMORY[0x28223BE20](Event);
  v60 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DF47554();
  v25 = a1[3];
  v24 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_20DF44288();
  v58 = v21;
  sub_20DF484E4();
  if (v2)
  {
    v26 = v60;
    __swift_destroy_boxed_opaque_existential_1(v59);
    return (*(v61 + 8))(v26, v11);
  }

  else
  {
    v51 = v15;
    LOBYTE(v64) = 0;
    sub_20DF45A68(&qword_27C84C870, MEMORY[0x277CC95F0]);
    sub_20DF482E4();
    v27 = v60;
    (*(v61 + 40))(v60, v17, v11);
    LOBYTE(v64) = 1;
    sub_20DF45A68(&qword_27C84CC70, MEMORY[0x277CC9578]);
    v28 = v57;
    sub_20DF482E4();
    v29 = v11;
    v30 = Event;
    (*(v56 + 32))(&v27[Event[5]], v10, v28);
    v63 = 2;
    sub_20DF443D8();
    sub_20DF482E4();
    v31 = v65;
    v32 = &v27[v30[6]];
    *v32 = v64;
    v32[8] = v31;
    LOBYTE(v64) = 3;
    *&v27[v30[7]] = sub_20DF482F4();
    LOBYTE(v64) = 4;
    v33 = sub_20DF482A4();
    v34 = &v27[v30[8]];
    *v34 = v33;
    v34[1] = v35;
    v63 = 5;
    sub_20DF4442C();
    sub_20DF482E4();
    v36 = v65;
    v37 = &v27[v30[9]];
    *v37 = v64;
    v37[8] = v36;
    LOBYTE(v64) = 6;
    v38 = v51;
    sub_20DF482E4();
    (*(v61 + 32))(&v27[v30[10]], v38, v29);
    LOBYTE(v64) = 7;
    v27[v30[11]] = sub_20DF482B4() & 1;
    LOBYTE(v64) = 8;
    v39 = sub_20DF48284();
    v40 = &v27[Event[12]];
    *v40 = v39;
    v40[8] = v41 & 1;
    LOBYTE(v64) = 9;
    v42 = sub_20DF48284();
    v43 = &v60[Event[13]];
    *v43 = v42;
    v43[8] = v44 & 1;
    v63 = 10;
    sub_20DF44480();
    sub_20DF482E4();
    v60[Event[14]] = v64;
    LOBYTE(v64) = 11;
    sub_20DF48294();
    sub_20DF444D4(v53, &v60[Event[15]]);
    LOBYTE(v64) = 12;
    sub_20DF482C4();
    v46 = v45;
    v47 = Event[16];
    (*(v54 + 8))(v58, v55);
    v48 = v60;
    *&v60[v47] = v46;
    sub_20DF41234(v48, v52);
    __swift_destroy_boxed_opaque_existential_1(v59);
    return sub_20DF41298(v48);
  }
}

uint64_t sub_20DF437A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20DF47564();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

BOOL _s17EnergyKitInternal9LoadEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20DF47564();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D3A0, &unk_20DF4CF80);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - v15;
  if ((sub_20DF47534() & 1) == 0)
  {
    return 0;
  }

  Event = type metadata accessor for LoadEvent();
  v18 = Event[5];
  if ((sub_20DF474A4() & 1) == 0)
  {
    return 0;
  }

  v19 = Event[6];
  v20 = *(a1 + v19);
  v21 = a2 + v19;
  v22 = *(a2 + v19);
  if (*(v21 + 8) == 1)
  {
    if (v22 <= 1)
    {
      if (v22)
      {
        if (v20 != 1)
        {
          return 0;
        }
      }

      else if (v20)
      {
        return 0;
      }
    }

    else if (v22 == 2)
    {
      if (v20 != 2)
      {
        return 0;
      }
    }

    else if (v22 == 3)
    {
      if (v20 != 3)
      {
        return 0;
      }
    }

    else if (v20 != 4)
    {
      return 0;
    }
  }

  else if (v20 != v22)
  {
    return 0;
  }

  if (*(a1 + Event[7]) != *(a2 + Event[7]))
  {
    return 0;
  }

  v23 = Event[8];
  v24 = *(a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  if ((v24 != *v26 || v25 != v26[1]) && (sub_20DF483D4() & 1) == 0)
  {
    return 0;
  }

  v27 = Event[9];
  v28 = *(a1 + v27);
  v29 = a2 + v27;
  v30 = *(a2 + v27);
  if (*(v29 + 8) == 1)
  {
    if (v30)
    {
      if (v30 == 1)
      {
        if (v28 != 1)
        {
          return 0;
        }
      }

      else if (v28 != 2)
      {
        return 0;
      }
    }

    else if (v28)
    {
      return 0;
    }
  }

  else if (v28 != v30)
  {
    return 0;
  }

  v31 = Event[10];
  if ((sub_20DF47534() & 1) == 0 || *(a1 + Event[11]) != *(a2 + Event[11]))
  {
    return 0;
  }

  v33 = Event[12];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 8);
  if (v35)
  {
    if (!v37)
    {
      return 0;
    }
  }

  else
  {
    if (*v34 != *v36)
    {
      LOBYTE(v37) = 1;
    }

    if (v37)
    {
      return 0;
    }
  }

  v38 = Event[13];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  v42 = *(a2 + v38 + 8);
  if (v40)
  {
    if (!v42)
    {
      return 0;
    }
  }

  else
  {
    if (*v39 != *v41)
    {
      LOBYTE(v42) = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  if (*(a1 + Event[14]) != *(a2 + Event[14]))
  {
    return 0;
  }

  v43 = Event[15];
  v44 = *(v13 + 48);
  sub_20DF40E2C(a1 + v43, v16);
  v49 = v44;
  sub_20DF40E2C(a2 + v43, &v16[v44]);
  v45 = *(v5 + 48);
  if (v45(v16, 1, v4) != 1)
  {
    sub_20DF40E2C(v16, v12);
    if (v45(&v16[v49], 1, v4) == 1)
    {
      (*(v5 + 8))(v12, v4);
      goto LABEL_54;
    }

    (*(v5 + 32))(v8, &v16[v49], v4);
    sub_20DF45A68(&qword_27C84D3A8, MEMORY[0x277CC95F0]);
    v46 = sub_20DF47CF4();
    v47 = *(v5 + 8);
    v47(v8, v4);
    v47(v12, v4);
    sub_20DED8730(v16, &qword_27C84CCB8, &qword_20DF4AC48);
    if (v46)
    {
      return *(a1 + Event[16]) == *(a2 + Event[16]);
    }

    return 0;
  }

  if (v45(&v16[v49], 1, v4) != 1)
  {
LABEL_54:
    sub_20DED8730(v16, &qword_27C84D3A0, &unk_20DF4CF80);
    return 0;
  }

  sub_20DED8730(v16, &qword_27C84CCB8, &qword_20DF4AC48);
  return *(a1 + Event[16]) == *(a2 + Event[16]);
}

uint64_t sub_20DF43D14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6710895 && a2 == 0xE300000000000000;
  if (v3 || (sub_20DF483D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 28271 && a2 == 0xE200000000000000 || (sub_20DF483D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656767756C706E75 && a2 == 0xE900000000000064 || (sub_20DF483D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656767756C70 && a2 == 0xE700000000000000 || (sub_20DF483D4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7465736572 && a2 == 0xE500000000000000 || (sub_20DF483D4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4E474F4345524E55 && a2 == 0xEC00000044455A49)
  {

    return 5;
  }

  else
  {
    v6 = sub_20DF483D4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_20DF43F10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726568746FLL && a2 == 0xE500000000000000;
  if (v4 || (sub_20DF483D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1667331688 && a2 == 0xE400000000000000 || (sub_20DF483D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6369727463656C65 && a2 == 0xEF656C6369686556 || (sub_20DF483D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E474F4345524E55 && a2 == 0xEC00000044455A49)
  {

    return 3;
  }

  else
  {
    v6 = sub_20DF483D4();

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

BOOL sub_20DF4407C(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  sub_20DF47504();
  v8 = sub_20DF47564();
  v9 = 1;
  v10 = (*(*(v8 - 8) + 48))(v7, 1, v8);
  sub_20DED8730(v7, &qword_27C84CCB8, &qword_20DF4AC48);
  if (v10 == 1)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v11 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v11)
    {
      return 0;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      if (sub_20DF47D94() > 63)
      {
        return 0;
      }
    }

    else if (v11 > 63)
    {
      return 0;
    }

    if ((sub_20DF42564(a1, a2) & 1) == 0)
    {
      return 0;
    }

    sub_20DF3E204(a1, a2);
    if (!v12)
    {
      return 0;
    }

    sub_20DF42744(a1, a2);
    if (v13)
    {
      if (sub_20DF47CB4())
      {

LABEL_14:
        if (sub_20DF47CB4())
        {

          return 1;
        }

        v15 = sub_20DF47CC4();

        return (v15 & 1) != 0;
      }

      v14 = sub_20DF47CC4();

      if (v14)
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

  return v9;
}

unint64_t sub_20DF44288()
{
  result = qword_27C84D248;
  if (!qword_27C84D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D248);
  }

  return result;
}

unint64_t sub_20DF442DC()
{
  result = qword_27C84D250;
  if (!qword_27C84D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D250);
  }

  return result;
}

unint64_t sub_20DF44330()
{
  result = qword_27C84D258;
  if (!qword_27C84D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D258);
  }

  return result;
}

unint64_t sub_20DF44384()
{
  result = qword_27C84D260;
  if (!qword_27C84D260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D260);
  }

  return result;
}

unint64_t sub_20DF443D8()
{
  result = qword_27C84D270;
  if (!qword_27C84D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D270);
  }

  return result;
}

unint64_t sub_20DF4442C()
{
  result = qword_27C84D278;
  if (!qword_27C84D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D278);
  }

  return result;
}

unint64_t sub_20DF44480()
{
  result = qword_27C84D280;
  if (!qword_27C84D280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D280);
  }

  return result;
}

uint64_t sub_20DF444D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_20DF445D4()
{
  sub_20DF47564();
  if (v0 <= 0x3F)
  {
    sub_20DF474E4();
    if (v1 <= 0x3F)
    {
      sub_20DF446E0();
      if (v2 <= 0x3F)
      {
        sub_20DF44730();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20DF446E0()
{
  if (!qword_27C84D298)
  {
    v0 = sub_20DF48064();
    if (!v1)
    {
      atomic_store(v0, &qword_27C84D298);
    }
  }
}

void sub_20DF44730()
{
  if (!qword_27C84D2A0)
  {
    sub_20DF47564();
    v0 = sub_20DF48064();
    if (!v1)
    {
      atomic_store(v0, &qword_27C84D2A0);
    }
  }
}

uint64_t getEnumTagSinglePayload for LoadEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LoadEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LoadDeviceType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LoadDeviceType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_20DF44AD4(unsigned int *a1, int a2)
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

_WORD *sub_20DF44B24(_WORD *result, int a2, int a3)
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

unint64_t sub_20DF44BB4()
{
  result = qword_27C84D2A8;
  if (!qword_27C84D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D2A8);
  }

  return result;
}

unint64_t sub_20DF44C0C()
{
  result = qword_27C84D2B0;
  if (!qword_27C84D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D2B0);
  }

  return result;
}

unint64_t sub_20DF44C64()
{
  result = qword_27C84D2B8;
  if (!qword_27C84D2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D2B8);
  }

  return result;
}

unint64_t sub_20DF44CBC()
{
  result = qword_27C84D2C0;
  if (!qword_27C84D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D2C0);
  }

  return result;
}

unint64_t sub_20DF44D14()
{
  result = qword_27C84D2C8;
  if (!qword_27C84D2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D2C8);
  }

  return result;
}

unint64_t sub_20DF44D6C()
{
  result = qword_27C84D2D0;
  if (!qword_27C84D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D2D0);
  }

  return result;
}

unint64_t sub_20DF44DC4()
{
  result = qword_27C84D2D8;
  if (!qword_27C84D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D2D8);
  }

  return result;
}

unint64_t sub_20DF44E1C()
{
  result = qword_27C84D2E0;
  if (!qword_27C84D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D2E0);
  }

  return result;
}

unint64_t sub_20DF44E74()
{
  result = qword_27C84D2E8;
  if (!qword_27C84D2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D2E8);
  }

  return result;
}

unint64_t sub_20DF44ECC()
{
  result = qword_27C84D2F0;
  if (!qword_27C84D2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D2F0);
  }

  return result;
}

unint64_t sub_20DF44F24()
{
  result = qword_27C84D2F8;
  if (!qword_27C84D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D2F8);
  }

  return result;
}

unint64_t sub_20DF44F7C()
{
  result = qword_27C84D300;
  if (!qword_27C84D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D300);
  }

  return result;
}

unint64_t sub_20DF44FD4()
{
  result = qword_27C84D308;
  if (!qword_27C84D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D308);
  }

  return result;
}

unint64_t sub_20DF4502C()
{
  result = qword_27C84D310;
  if (!qword_27C84D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D310);
  }

  return result;
}

unint64_t sub_20DF45084()
{
  result = qword_27C84D318;
  if (!qword_27C84D318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D318);
  }

  return result;
}

unint64_t sub_20DF450DC()
{
  result = qword_27C84D320;
  if (!qword_27C84D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D320);
  }

  return result;
}

unint64_t sub_20DF45134()
{
  result = qword_27C84D328;
  if (!qword_27C84D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D328);
  }

  return result;
}

unint64_t sub_20DF4518C()
{
  result = qword_27C84D330;
  if (!qword_27C84D330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D330);
  }

  return result;
}

unint64_t sub_20DF451E4()
{
  result = qword_27C84D338;
  if (!qword_27C84D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D338);
  }

  return result;
}

unint64_t sub_20DF4523C()
{
  result = qword_27C84D340;
  if (!qword_27C84D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D340);
  }

  return result;
}

unint64_t sub_20DF45294()
{
  result = qword_27C84D348;
  if (!qword_27C84D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D348);
  }

  return result;
}

unint64_t sub_20DF452EC()
{
  result = qword_27C84D350;
  if (!qword_27C84D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D350);
  }

  return result;
}

unint64_t sub_20DF45344()
{
  result = qword_27C84D358;
  if (!qword_27C84D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D358);
  }

  return result;
}

unint64_t sub_20DF4539C()
{
  result = qword_27C84D360;
  if (!qword_27C84D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D360);
  }

  return result;
}

unint64_t sub_20DF453F4()
{
  result = qword_27C84D368;
  if (!qword_27C84D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D368);
  }

  return result;
}

unint64_t sub_20DF4544C()
{
  result = qword_27C84D370;
  if (!qword_27C84D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D370);
  }

  return result;
}

unint64_t sub_20DF454A4()
{
  result = qword_27C84D378;
  if (!qword_27C84D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D378);
  }

  return result;
}

unint64_t sub_20DF454FC()
{
  result = qword_27C84D380;
  if (!qword_27C84D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D380);
  }

  return result;
}

unint64_t sub_20DF45554()
{
  result = qword_27C84D388;
  if (!qword_27C84D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D388);
  }

  return result;
}

unint64_t sub_20DF455AC()
{
  result = qword_27C84D390;
  if (!qword_27C84D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D390);
  }

  return result;
}

unint64_t sub_20DF45604()
{
  result = qword_27C84D398;
  if (!qword_27C84D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D398);
  }

  return result;
}

uint64_t sub_20DF45658(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_20DF483D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_20DF483D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_20DF483D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6576656CLL && a2 == 0xE500000000000000 || (sub_20DF483D4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE800000000000000 || (sub_20DF483D4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_20DF483D4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x444965746973 && a2 == 0xE600000000000000 || (sub_20DF483D4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020DF503F0 == a2 || (sub_20DF483D4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7265776F70 && a2 == 0xE500000000000000 || (sub_20DF483D4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x796772656E65 && a2 == 0xE600000000000000 || (sub_20DF483D4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x800000020DF50410 == a2 || (sub_20DF483D4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x65636E6164697567 && a2 == 0xEA00000000004449 || (sub_20DF483D4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 12;
  }

  else
  {
    v6 = sub_20DF483D4();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_20DF45A68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t HomeEnergyError.description.getter()
{
  result = 0x206E776F6E6B6E55;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD000000000000020;
      break;
    case 6:
      result = 0xD000000000000021;
      break;
    case 7:
    case 0xE:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0x6C706D6920746F4ELL;
      break;
    case 9:
      result = 0x69746E6520746F4ELL;
      break;
    case 0xA:
      result = 0x746F6E2065746953;
      break;
    case 0xB:
      result = 0x6E6F697461636F4CLL;
      break;
    case 0xC:
      result = 0xD000000000000017;
      break;
    case 0xD:
      result = 0x74694B64756F6C43;
      break;
    case 0xF:
      result = 0xD000000000000023;
      break;
    case 0x10:
    case 0x15:
      result = 0xD00000000000001BLL;
      break;
    case 0x11:
    case 0x1E:
      result = 0xD00000000000001CLL;
      break;
    case 0x12:
      result = 0xD000000000000018;
      break;
    case 0x13:
      result = 0xD000000000000018;
      break;
    case 0x14:
      result = 0xD000000000000013;
      break;
    case 0x16:
      result = 0x20656E6F5A204B43;
      break;
    case 0x17:
      result = 0xD00000000000001ALL;
      break;
    case 0x18:
      result = 0xD00000000000002ALL;
      break;
    case 0x19:
      result = 0xD00000000000001DLL;
      break;
    case 0x1A:
      result = 0xD000000000000029;
      break;
    case 0x1B:
      result = 0xD000000000000010;
      break;
    case 0x1C:
      result = 0x6920444965746953;
      break;
    case 0x1D:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

EnergyKitInternal::HomeEnergyError_optional __swiftcall HomeEnergyError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 13;
  switch(rawValue)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v2 = 1;
      goto LABEL_25;
    case 2:
      v2 = 2;
      goto LABEL_25;
    case 3:
      v2 = 3;
      goto LABEL_25;
    case 4:
      v2 = 4;
      goto LABEL_25;
    case 5:
      v2 = 5;
      goto LABEL_25;
    case 6:
      v2 = 6;
      goto LABEL_25;
    case 7:
      v2 = 7;
      goto LABEL_25;
    case 8:
      v2 = 8;
      goto LABEL_25;
    case 9:
      v2 = 9;
      goto LABEL_25;
    case 10:
      v2 = 10;
      goto LABEL_25;
    case 11:
      v2 = 11;
      goto LABEL_25;
    case 12:
      v2 = 12;
LABEL_25:
      v3 = v2;
      goto LABEL_26;
    case 13:
LABEL_26:
      *v1 = v3;
      break;
    case 14:
      *v1 = 14;
      break;
    case 15:
      *v1 = 15;
      break;
    case 16:
      *v1 = 16;
      break;
    case 17:
      *v1 = 17;
      break;
    case 18:
      *v1 = 18;
      break;
    case 19:
      *v1 = 19;
      break;
    case 20:
      *v1 = 20;
      break;
    case 21:
      *v1 = 21;
      break;
    case 22:
      *v1 = 22;
      break;
    case 23:
      *v1 = 23;
      break;
    case 24:
      *v1 = 24;
      break;
    case 25:
      *v1 = 25;
      break;
    case 26:
      *v1 = 26;
      break;
    case 27:
      *v1 = 27;
      break;
    case 28:
      *v1 = 28;
      break;
    case 29:
      *v1 = 29;
      break;
    case 30:
      *v1 = 30;
      break;
    default:
      *v1 = 31;
      break;
  }

  return rawValue;
}

unint64_t sub_20DF46040()
{
  result = qword_27C84D3B0;
  if (!qword_27C84D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D3B0);
  }

  return result;
}

uint64_t sub_20DF4609C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20DF46248();
  v5 = sub_20DF4629C();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t getEnumTagSinglePayload for HomeEnergyError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE2)
  {
    goto LABEL_17;
  }

  if (a2 + 30 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 30) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 30;
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

      return (*a1 | (v4 << 8)) - 30;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 30;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v8 = v6 - 31;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeEnergyError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE2)
  {
    v4 = 0;
  }

  if (a2 > 0xE1)
  {
    v5 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
    *result = a2 + 30;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20DF46248()
{
  result = qword_281122968;
  if (!qword_281122968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281122968);
  }

  return result;
}

unint64_t sub_20DF4629C()
{
  result = qword_2811225A0;
  if (!qword_2811225A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811225A0);
  }

  return result;
}

uint64_t EnergyDevice.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_20DF46320(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 40);
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t sub_20DF46380()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_20DF463CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_20DF46470(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 56);
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;
}

uint64_t sub_20DF464D0()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_20DF4651C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t static EnergyDevice.allDevices.getter()
{
  if (qword_27C84C760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t EnergyDevice.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20DEBBAA8;

  return (sub_20DF46CB4)(a1, a2);
}

uint64_t EnergyDevice.__allocating_init(clientProvidedId:)(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_20DF47564();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF467C0, 0, 0);
}

uint64_t sub_20DF467C0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];
  sub_20DF47A24();
  sub_20DF47914();
  sub_20DF474F4();
  v6 = sub_20DF47514();
  v8 = v7;
  (*(v2 + 8))(v1, v4);
  if (qword_27C84C760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_27C84D3B8 + 2))
  {
    sub_20DEEFAE0(v6, v8);
  }

  v9 = v0[9];
  swift_endAccess();

  v10 = v0[1];

  return v10(0);
}

uint64_t static EnergyDevice.register(name:site:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_20DF47564();
  v4[18] = v5;
  v6 = *(v5 - 8);
  v4[19] = v6;
  v7 = *(v6 + 64) + 15;
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF469CC, 0, 0);
}

uint64_t sub_20DF469CC()
{
  if (*(v0[17] + 16) && (v1 = sub_20DEEFAE0(0xD000000000000010, 0x800000020DF506F0), (v2 & 1) != 0) && (sub_20DEBA2EC(*(v0[17] + 56) + 32 * v1, (v0 + 2)), (swift_dynamicCast() & 1) != 0))
  {
    v3 = v0[20];
    v4 = v0[12];
    v5 = v0[13];
    sub_20DF47A24();
    sub_20DF47914();
    sub_20DF474F4();
  }

  else
  {
    v6 = v0[20];
    sub_20DF47554();
  }

  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[18];
  v10 = v0[15];
  v11 = v0[16];
  v12 = v0[14];
  v13 = sub_20DF47514();
  v15 = v14;
  (*(v8 + 8))(v7, v9);
  v16 = *(v11 + 16);

  v17 = sub_20DF479B4();
  v19 = v18;

  type metadata accessor for EnergyDevice();
  v20 = swift_allocObject();
  v20[7] = 0;
  v20[6] = 0;
  v20[2] = v13;
  v20[3] = v15;
  v20[4] = v12;
  v20[5] = v10;
  swift_beginAccess();
  v20[6] = v17;
  v20[7] = v19;
  v21 = qword_27C84C760;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = v0[20];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = off_27C84D3B8;
  off_27C84D3B8 = 0x8000000000000000;
  sub_20DF0ED04(v20, v13, v15, isUniquelyReferenced_nonNull_native);

  off_27C84D3B8 = v26;
  swift_endAccess();

  v24 = v0[1];

  return v24(v20);
}

void *EnergyDevice.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return v0;
}

uint64_t EnergyDevice.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_20DF46CB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_20DF46CD4, 0, 0);
}

uint64_t sub_20DF46CD4()
{
  if (qword_27C84C760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_27C84D3B8 + 2))
  {
    sub_20DEEFAE0(v0[5], v0[6]);
  }

  swift_endAccess();
  v1 = v0[6];

  v2 = v0[1];

  return v2(0);
}

uint64_t dispatch thunk of EnergyDevice.suspend()()
{
  v2 = *(*v0 + 160);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DEDA9C0;

  return v6();
}

uint64_t dispatch thunk of EnergyDevice.resume()()
{
  v2 = *(*v0 + 168);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DEDA9C0;

  return v6();
}

uint64_t dispatch thunk of EnergyDevice.sendLoadUpdate(update:)(uint64_t a1)
{
  v4 = *(*v1 + 176);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20DEDA9C0;

  return v8(a1);
}

uint64_t dispatch thunk of EnergyDevice.unregister()()
{
  v2 = *(*v0 + 184);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_20DEBA16C;

  return v6();
}