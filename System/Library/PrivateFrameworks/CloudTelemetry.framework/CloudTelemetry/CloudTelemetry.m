void static Reporter.report(teamID:eventType:event:allowCellularAccess:allowExpensiveAccess:bundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8, uint64_t a9)
{
  v50 = a3;
  v49 = a1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C80C0, &qword_22B4C6538);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v42 - v19;
  if (MGGetProductType() == 3348380076)
  {
    return;
  }

  v21 = sub_22B4ADB54(a5);
  if (v10)
  {
    return;
  }

  v48 = v21;
  v22 = qword_280C534C0;
  v46 = a8;
  v47 = a9;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_280C53A90;
  os_unfair_lock_lock((qword_280C53A90 + 24));
  v24 = *(v23 + 16);
  v25 = v24 + 1;
  if (__OFADD__(v24, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v25 <= 4)
  {
    v45 = v9;
    *(v23 + 16) = v25;
    if (qword_280C535F0 == -1)
    {
LABEL_8:
      v26 = sub_22B4C50A0();
      __swift_project_value_buffer(v26, qword_280C535F8);
      v27 = sub_22B4C5080();
      v43 = sub_22B4C5290();
      if (os_log_type_enabled(v27, v43))
      {
        v28 = swift_slowAlloc();
        v44 = v27;
        v29 = v28;
        *v28 = 134217984;
        *(v28 + 4) = v25;
        _os_log_impl(&dword_22B4AC000, v44, v43, "Legacy task count incremented, now %ld.", v28, 0xCu);
        v30 = v29;
        v27 = v44;
        MEMORY[0x2318939B0](v30, -1, -1);
      }

      v31 = v45;
      os_unfair_lock_unlock((v23 + 24));
      v32 = sub_22B4C5240();
      (*(*(v32 - 8) + 56))(v20, 1, 1, v32);
      v33 = swift_allocObject();
      *(v33 + 16) = 0;
      *(v33 + 24) = 0;
      v34 = v49;
      *(v33 + 32) = v31;
      *(v33 + 40) = v34;
      v35 = v50;
      *(v33 + 48) = a2;
      *(v33 + 56) = v35;
      v36 = v48;
      *(v33 + 64) = a4;
      *(v33 + 72) = v36;
      *(v33 + 80) = a6 & 1;
      *(v33 + 81) = a7 & 1;
      v37 = v47;
      *(v33 + 88) = v46;
      *(v33 + 96) = v37;
      *(v33 + 104) = v31;

      sub_22B4B92EC(0, 0, v20, &unk_22B4C6608, v33);

      return;
    }

LABEL_18:
    swift_once();
    goto LABEL_8;
  }

  os_unfair_lock_unlock((v23 + 24));

  if (qword_280C535F0 != -1)
  {
    swift_once();
  }

  v38 = sub_22B4C50A0();
  __swift_project_value_buffer(v38, qword_280C535F8);
  v39 = sub_22B4C5080();
  v40 = sub_22B4C52D0();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_22B4AC000, v39, v40, "Over legacy task count limit.", v41, 2u);
    MEMORY[0x2318939B0](v41, -1, -1);
  }
}

uint64_t sub_22B4AD9F8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

_OWORD *sub_22B4ADA50(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_22B4ADA60(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for EventValue()
{
  result = qword_280C53A80;
  if (!qword_280C53A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B4ADB0C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_22B4ADB54(uint64_t a1)
{
  v2 = v1;
  v45 = *(type metadata accessor for EventValue() - 8);
  v4 = *(v45 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v46 = &v43 - v8;
  v9 = MEMORY[0x2318930A0](*(a1 + 16), MEMORY[0x277D837D0]);
  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v14 = (v11 + 63) >> 6;
  v43 = a1;

  v15 = 0;
  v44 = v14;
  while (v13)
  {
    v17 = v15;
LABEL_15:
    v21 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v22 = v21 | (v17 << 6);
    v23 = (*(v43 + 48) + 16 * v22);
    v25 = *v23;
    v24 = v23[1];
    sub_22B4ADF4C(*(v43 + 56) + 32 * v22, v47);
    *&v48 = v25;
    *(&v48 + 1) = v24;
    sub_22B4ADA50(v47, &v49);

    v19 = v17;
    v20 = v46;
LABEL_16:
    v51 = v48;
    v52[0] = v49;
    v52[1] = v50;
    v26 = *(&v48 + 1);
    if (!*(&v48 + 1))
    {
      goto LABEL_30;
    }

    v53 = v19;
    v27 = v51;
    sub_22B4ADA50(v52, &v48);
    sub_22B4AE1A4(&v48, v20);
    if (v2)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(&v48);

LABEL_30:

      return v9;
    }

    v28 = v7;
    sub_22B4AFF0C(v20, v7, type metadata accessor for EventValue);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v47[0] = v9;
    v30 = sub_22B4AFF74(v27, v26);
    v32 = v9[2];
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      goto LABEL_32;
    }

    v36 = v31;
    if (v9[3] < v35)
    {
      sub_22B4B41B8(v35, isUniquelyReferenced_nonNull_native);
      v30 = sub_22B4AFF74(v27, v26);
      if ((v36 & 1) != (v37 & 1))
      {
        goto LABEL_34;
      }

LABEL_23:
      if (v36)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v41 = v30;
    sub_22B4B3F88();
    v30 = v41;
    if (v36)
    {
LABEL_4:
      v16 = v30;

      v9 = *&v47[0];
      v7 = v28;
      sub_22B4B4D10(v28, *(*&v47[0] + 56) + *(v45 + 72) * v16);
      __swift_destroy_boxed_opaque_existential_0Tm(&v48);
      goto LABEL_5;
    }

LABEL_24:
    v9 = *&v47[0];
    *(*&v47[0] + 8 * (v30 >> 6) + 64) |= 1 << v30;
    v38 = (v9[6] + 16 * v30);
    *v38 = v27;
    v38[1] = v26;
    v7 = v28;
    sub_22B4AFF0C(v28, v9[7] + *(v45 + 72) * v30, type metadata accessor for EventValue);
    __swift_destroy_boxed_opaque_existential_0Tm(&v48);
    v39 = v9[2];
    v34 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v34)
    {
      goto LABEL_33;
    }

    v9[2] = v40;
LABEL_5:
    v15 = v53;
    v2 = 0;
    v14 = v44;
  }

  if (v14 <= v15 + 1)
  {
    v18 = v15 + 1;
  }

  else
  {
    v18 = v14;
  }

  v19 = v18 - 1;
  v20 = v46;
  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      v13 = 0;
      v49 = 0u;
      v50 = 0u;
      v48 = 0u;
      goto LABEL_16;
    }

    v13 = *(v10 + 8 * v17);
    ++v15;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_22B4C5400();
  __break(1u);
  return result;
}

uint64_t sub_22B4ADF4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for XPCObject()
{
  result = qword_280C536A0;
  if (!qword_280C536A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B4ADFF4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B4B2628;

  return sub_22B4AE0AC(a1, v5);
}

uint64_t sub_22B4AE0AC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B4B262C;

  return v7(a1);
}

uint64_t sub_22B4AE1A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22B4C5030();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B4ADF4C(a1, v24);
  if (swift_dynamicCast())
  {
    v9 = v23[1];
    *a2 = v23[0];
    *(a2 + 8) = v9;
  }

  else
  {
    sub_22B4ADB0C(0, &qword_280C52CB0, 0x277CCABB0);
    if (!swift_dynamicCast())
    {
      goto LABEL_29;
    }

    v10 = v23[0];
    if (*MEMORY[0x277CBED28])
    {
      v11 = v23[0] == *MEMORY[0x277CBED28];
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {

      *a2 = 1;
      goto LABEL_15;
    }

    v12 = *MEMORY[0x277CBED10];

    if (!v12 || v10 != v12)
    {
LABEL_29:
      if (swift_dynamicCast() || swift_dynamicCast() || swift_dynamicCast())
      {
        *a2 = v23[0];
        type metadata accessor for EventValue();
        goto LABEL_16;
      }

      if (swift_dynamicCast())
      {
        (*(v5 + 32))(a2, v8, v4);
        type metadata accessor for EventValue();
        goto LABEL_16;
      }

      sub_22B4ADB0C(0, &qword_280C52CA8, 0x277D82BB8);
      if (swift_dynamicCast())
      {
        v14 = v23[0];
        if ([v23[0] respondsToSelector_])
        {
          v15 = [v14 description];
          v16 = sub_22B4C5150();
          v18 = v17;

          *a2 = v16;
          *(a2 + 8) = v18;
          goto LABEL_15;
        }
      }

      __swift_project_boxed_opaque_existential_0(a1, a1[3]);
      v23[0] = swift_getDynamicType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C80A0, &qword_22B4C6518);
      v19 = sub_22B4C5160();
      v21 = v20;
      sub_22B4B6044();
      swift_allocError();
      *v22 = v19;
      v22[1] = v21;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0Tm(v24);
    }

    *a2 = 0;
  }

LABEL_15:
  type metadata accessor for EventValue();
LABEL_16:
  swift_storeEnumTagMultiPayload();
  return __swift_destroy_boxed_opaque_existential_0Tm(v24);
}

uint64_t sub_22B4AE578(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8C80B0, qword_22B4C6520);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v53 = (&v48 - v4);
  v52 = type metadata accessor for EventValue();
  v50 = *(v52 - 8);
  v5 = *(v50 + 64);
  v6 = MEMORY[0x28223BE20](v52);
  v56 = (&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v55 = &v48 - v9;
  MEMORY[0x28223BE20](v8);
  v49 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C8058, &qword_22B4C6070);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v54 = (&v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v16 = (&v48 - v15);
  v57 = XPCDictionary.init()();
  v17 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 64);
  v21 = (v18 + 63) >> 6;
  v51 = a1;

  v23 = 0;
  while (v20)
  {
    v25 = v23;
LABEL_16:
    v28 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v29 = v28 | (v25 << 6);
    v30 = (*(v51 + 48) + 16 * v29);
    v31 = *v30;
    v32 = v30[1];
    v33 = v49;
    sub_22B4B1A54(*(v51 + 56) + *(v50 + 72) * v29, v49);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C8060, &qword_22B4C6078);
    v35 = *(v34 + 48);
    v36 = v54;
    *v54 = v31;
    v36[1] = v32;
    v37 = v36;
    sub_22B4B1AB8(v33, v36 + v35);
    (*(*(v34 - 8) + 56))(v37, 0, 1, v34);

LABEL_17:
    sub_22B4B1B1C(v37, v16);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C8060, &qword_22B4C6078);
    if ((*(*(v38 - 8) + 48))(v16, 1, v38) == 1)
    {

      return v57;
    }

    v39 = *v16;
    v40 = v16[1];
    v41 = v55;
    sub_22B4B1AB8(v16 + *(v38 + 48), v55);
    sub_22B4B1A54(v41, v56);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      v43 = v53;
      if (EnumCaseMultiPayload == 3)
      {
        *v53 = *v56;
      }

      else if (EnumCaseMultiPayload == 4)
      {
        *v53 = *v56;
      }

      else
      {
        v47 = sub_22B4C5030();
        (*(*(v47 - 8) + 32))(v43, v56, v47);
      }
    }

    else
    {
      v43 = v53;
      if (EnumCaseMultiPayload)
      {
        *v53 = *v56;
      }

      else
      {
        v46 = v56[1];
        *v53 = *v56;
        *(v43 + 8) = v46;
      }
    }

    v24 = type metadata accessor for XPCObject();
    swift_storeEnumTagMultiPayload();
    (*(*(v24 - 8) + 56))(v43, 0, 1, v24);
    XPCDictionary.subscript.setter(v43);
    result = sub_22B4B1B8C(v55);
  }

  if (v21 <= v23 + 1)
  {
    v26 = v23 + 1;
  }

  else
  {
    v26 = v21;
  }

  v27 = v26 - 1;
  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v21)
    {
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C8060, &qword_22B4C6078);
      v45 = v54;
      (*(*(v44 - 8) + 56))(v54, 1, 1, v44);
      v20 = 0;
      v23 = v27;
      v37 = v45;
      goto LABEL_17;
    }

    v20 = *(v17 + 8 * v25);
    ++v23;
    if (v20)
    {
      v23 = v25;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

NSObject *sub_22B4AEB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v103 = a5;
  v106 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8C80B0, qword_22B4C6520);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v98 = (&v93 - v12);
  v13 = *a6;
  v101 = a6[1];
  v102 = v13;
  v14 = *(a6 + 1);
  v99 = *(a6 + 2);
  v100 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C80F8, &qword_22B4C65D8);
  inited = swift_initStackObject();
  v105 = xmmword_22B4C64B0;
  *(inited + 16) = xmmword_22B4C64B0;
  *(inited + 32) = 0xD000000000000013;
  v16 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  v104 = 0x800000022B4C77D0;
  *(inited + 40) = 0x800000022B4C77D0;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v107 = sub_22B4B0B9C(inited);
  swift_setDeallocating();
  sub_22B4ADA60(inited + 32, &unk_27D8C8100, &qword_22B4C65E0);
  v17 = swift_initStackObject();
  *(v17 + 16) = v105;
  *(v17 + 32) = 0x7954746E6576655FLL;
  *(v17 + 72) = v16;
  *(v17 + 40) = 0xEA00000000006570;
  *(v17 + 48) = v106;
  *(v17 + 56) = a4;

  v18 = sub_22B4B0B9C(v17);
  swift_setDeallocating();
  sub_22B4ADA60(v17 + 32, &unk_27D8C8100, &qword_22B4C65E0);
  if (*(v18 + 16) && (v19 = sub_22B4AFF74(0x7954746E6576655FLL, 0xEA00000000006570), (v20 & 1) != 0))
  {
    sub_22B4ADF4C(*(v18 + 56) + 32 * v19, &v113);
  }

  else
  {

    v113 = 0u;
    v114 = 0u;
  }

  v109 = v113;
  v110 = v114;
  v21 = v107;
  if (*(&v114 + 1))
  {
    sub_22B4ADA50(&v109, v108);
    v22 = swift_dynamicCast();
    if (v22)
    {
      v23 = v112;
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = v111;
    }

    else
    {
      v24 = 0;
    }

    if (!*(v21 + 16))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v23 = 0;
    v24 = 0;
    if (!*(v107 + 16))
    {
      goto LABEL_17;
    }
  }

  v25 = sub_22B4AFF74(0xD000000000000013, v104);
  if (v26)
  {
    sub_22B4ADF4C(*(v21 + 56) + 32 * v25, &v113);
    goto LABEL_18;
  }

LABEL_17:
  v113 = 0u;
  v114 = 0u;
LABEL_18:
  v109 = v113;
  v110 = v114;
  if (!*(&v114 + 1))
  {
    if (v23)
    {
      goto LABEL_30;
    }

LABEL_40:

    if (qword_280C535F0 != -1)
    {
      swift_once();
    }

    v90 = sub_22B4C50A0();
    __swift_project_value_buffer(v90, qword_280C535F8);
    v66 = sub_22B4C5080();
    v67 = sub_22B4C52C0();
    if (!os_log_type_enabled(v66, v67))
    {
      goto LABEL_45;
    }

    v68 = swift_slowAlloc();
    *v68 = 0;
    v69 = "invalid or missing eventType";
    goto LABEL_44;
  }

  sub_22B4ADA50(&v109, v108);
  v27 = swift_dynamicCast();
  v28 = v111;
  if (v27)
  {
    v29 = v112;
  }

  else
  {
    v29 = 0;
  }

  if (!v27)
  {
    v28 = 0;
  }

  if (!v23)
  {
    goto LABEL_40;
  }

  if (!v29)
  {
LABEL_30:

    if (qword_280C535F0 != -1)
    {
      swift_once();
    }

    v65 = sub_22B4C50A0();
    __swift_project_value_buffer(v65, qword_280C535F8);
    v66 = sub_22B4C5080();
    v67 = sub_22B4C52C0();
    if (!os_log_type_enabled(v66, v67))
    {
      goto LABEL_45;
    }

    v68 = swift_slowAlloc();
    *v68 = 0;
    v69 = "invalid or missing clientType";
LABEL_44:
    _os_log_impl(&dword_22B4AC000, v66, v67, v69, v68, 2u);
    MEMORY[0x2318939B0](v68, -1, -1);
LABEL_45:

    sub_22B4BD210();
    swift_allocError();
    *v91 = 1;
    swift_willThrow();
    return v66;
  }

  v95 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C8188, &qword_22B4C6A28);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8C8190, &qword_22B4C6A30);
  v32 = *(v31 - 8);
  v106 = *(v32 + 72);
  v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v97 = *(v32 + 80);
  *&v105 = v30;
  v34 = swift_allocObject();
  v96 = v34;
  *(v34 + 16) = xmmword_22B4C64D0;
  v104 = v33;
  v35 = (v34 + v33);
  v36 = *(v31 + 48);
  v94 = v31;
  v37 = (v34 + v33 + v36);
  v38 = MessageKeys.eventType.unsafeMutableAddressor();
  v39 = v38[1];
  *v35 = *v38;
  v35[1] = v39;
  *v37 = v24;
  v37[1] = v23;
  v40 = type metadata accessor for XPCObject();
  swift_storeEnumTagMultiPayload();
  v41 = v106;
  v42 = (v35 + v106);
  v43 = (v35 + v106 + *(v31 + 48));

  v44 = MessageKeys.clientType.unsafeMutableAddressor();
  v45 = v44[1];
  *v42 = *v44;
  v42[1] = v45;
  *v43 = v95;
  v43[1] = v29;
  v46 = v40;
  swift_storeEnumTagMultiPayload();
  v47 = 2 * v41;
  v48 = (v35 + 2 * v41);
  v49 = v94;
  v50 = *(v94 + 48);

  v51 = MessageKeys.legacyClient.unsafeMutableAddressor();
  v52 = v51[1];
  *v48 = *v51;
  v48[1] = v52;
  *(v48 + v50) = 1;
  v53 = v47;
  v54 = v46;
  swift_storeEnumTagMultiPayload();
  v55 = (v35 + v53 + v106);
  v56 = v49;
  v57 = *(v49 + 48);

  v58 = MessageKeys.transportConfiguration.unsafeMutableAddressor();
  v60 = *v58;
  v59 = v58[1];
  *v55 = v60;
  v55[1] = v59;
  LOBYTE(v113) = v102;
  BYTE1(v113) = v101;
  *(&v113 + 1) = v100;
  *&v114 = v99;

  *(v55 + v57) = sub_22B4B00A4();
  v61 = v107;
  swift_storeEnumTagMultiPayload();
  v62 = XPCDictionary.init(dictionaryLiteral:)(v96);
  v115 = v62;
  if (*(v61 + 16) && (v63 = sub_22B4AFF74(0x676E696C706D6153, 0xEC00000044495555), (v64 & 1) != 0))
  {
    sub_22B4ADF4C(*(v61 + 56) + 32 * v63, &v113);
  }

  else
  {

    v113 = 0u;
    v114 = 0u;
  }

  v109 = v113;
  v110 = v114;
  if (*(&v114 + 1))
  {
    sub_22B4ADA50(&v109, v108);
    if (swift_dynamicCast())
    {
      v70 = v112;
      if (v112)
      {
        v71 = v111;
        v72 = MessageKeys.samplingUUID.unsafeMutableAddressor();
        v74 = *v72;
        v73 = *(v72 + 1);
        v75 = v98;
        *v98 = v71;
        *(v75 + 8) = v70;
        swift_storeEnumTagMultiPayload();
        (*(*(v54 - 8) + 56))(v75, 0, 1, v54);

        XPCDictionary.subscript.setter(v75);
        v62 = v115;
      }
    }
  }

  v77 = nullsub_1(v76);
  v78 = v104;
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_22B4C64E0;
  v80 = (v79 + v78);
  v81 = *(v49 + 48);
  v82 = MessageKeys.sendOneMessageSessionInfo.unsafeMutableAddressor();
  v83 = v82[1];
  *v80 = *v82;
  v80[1] = v83;
  *(v80 + v81) = v62;
  swift_storeEnumTagMultiPayload();
  v84 = (v80 + v106);
  v85 = *(v56 + 48);

  swift_unknownObjectRetain();
  v86 = MessageKeys.sendOneMessageEvent.unsafeMutableAddressor();
  v88 = *v86;
  v87 = v86[1];
  *v84 = v88;
  v84[1] = v87;

  v89 = sub_22B4AE578(v77);

  *(v84 + v85) = v89;
  swift_storeEnumTagMultiPayload();
  v66 = XPCDictionary.init(dictionaryLiteral:)(v79);
  swift_unknownObjectRelease();
  return v66;
}

uint64_t sub_22B4AF3A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCObject();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B4AF404()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B4B2628;

  return sub_22B4AF4AC(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_22B4AF4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  return MEMORY[0x2822009F8](sub_22B4AFB28, 0, 0);
}

uint64_t XPCMessage.init(ty:payload:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8C80B0, qword_22B4C6520);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  v11 = a2;
  swift_unknownObjectRetain();
  v8 = xpc_int64_create(a1);
  XPCObject.init(_:)(v8, v7);
  XPCDictionary.subscript.setter(v7);
  swift_unknownObjectRelease();
  return v11;
}

unsigned __int8 *XPCObject.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22B4C5030();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for XPCObject();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v47 - v15);
  MEMORY[0x28223BE20](v14);
  v19 = (&v47 - v18);
  if (a1)
  {
    v48 = v17;
    v20 = swift_unknownObjectRetain();
    v21 = MEMORY[0x231893D00](v20);
    if (XPCTypeNull.getter() == v21)
    {
      swift_unknownObjectRelease_n();
    }

    else if (XPCTypeConnection.getter() == v21 || XPCTypeEndpoint.getter() == v21)
    {
      swift_unknownObjectRelease();
      *v19 = a1;
    }

    else if (XPCTypeBool.getter() == v21)
    {
      value = xpc_BOOL_get_value(a1);
      swift_unknownObjectRelease_n();
      *v19 = value;
    }

    else if (XPCTypeInt64.getter() == v21)
    {
      v25 = xpc_int64_get_value(a1);
      swift_unknownObjectRelease_n();
      *v19 = v25;
    }

    else if (XPCTypeUInt64.getter() == v21)
    {
      v26 = xpc_uint64_get_value(a1);
      swift_unknownObjectRelease_n();
      *v19 = v26;
    }

    else if (XPCTypeDouble.getter() == v21)
    {
      v27 = xpc_double_get_value(a1);
      swift_unknownObjectRelease_n();
      *v19 = v27;
    }

    else
    {
      if (XPCTypeDate.getter() != v21)
      {
        if (XPCTypeData.getter() == v21)
        {
          result = xpc_data_get_bytes_ptr(a1);
          if (result)
          {
            v29 = result;
            length = xpc_data_get_length(a1);
            v31 = sub_22B4BF1F8(v29, length);
            v33 = v32;
            swift_unknownObjectRelease_n();
            *v16 = v31;
            v16[1] = v33;
            swift_storeEnumTagMultiPayload();
            v34 = v16;
LABEL_34:
            sub_22B4AF3A0(v34, v19);
            goto LABEL_29;
          }

          __break(1u);
        }

        else
        {
          if (XPCTypeString.getter() != v21)
          {
            if (XPCTypeUUID.getter() != v21)
            {
              swift_unknownObjectRelease();
              if (XPCTypeShmem.getter() == v21)
              {
                *v19 = a1;
              }

              else if (XPCTypeArray.getter() == v21)
              {
                *v19 = a1;
              }

              else
              {
                if (XPCTypeDictionary.getter() != v21)
                {
                  swift_unknownObjectRelease();
                  v17 = v48;
                  goto LABEL_17;
                }

                *v19 = a1;
              }

              goto LABEL_28;
            }

            result = xpc_uuid_get_bytes(a1);
            if (result)
            {
              v38 = *(result + 1);
              v39 = result[7];
              v40 = result[6];
              v41 = result[5];
              v42 = result[4];
              v43 = result[3];
              v44 = result[2];
              v45 = result[1];
              v46 = *result;
              sub_22B4C5010();
              swift_unknownObjectRelease_n();
              (*(v5 + 32))(v19, v8, v4);
              goto LABEL_28;
            }

LABEL_42:
            __break(1u);
            return result;
          }

          result = xpc_string_get_string_ptr(a1);
          if (result)
          {
            v35 = sub_22B4C51A0();
            v37 = v36;
            swift_unknownObjectRelease_n();
            *v13 = v35;
            v13[1] = v37;
            swift_storeEnumTagMultiPayload();
            v34 = v13;
            goto LABEL_34;
          }
        }

        __break(1u);
        goto LABEL_42;
      }

      v28 = xpc_date_get_value(a1);
      swift_unknownObjectRelease_n();
      *v19 = v28;
    }

LABEL_28:
    swift_storeEnumTagMultiPayload();
LABEL_29:
    sub_22B4AF3A0(v19, a2);
    return (*(v48 + 56))(a2, 0, 1, v9);
  }

LABEL_17:
  v22 = *(v17 + 56);

  return v22(a2, 1, 1, v9);
}

uint64_t sub_22B4AFB28()
{
  if (qword_280C535F0 != -1)
  {
    swift_once();
  }

  v1 = sub_22B4C50A0();
  v0[12] = __swift_project_value_buffer(v1, qword_280C535F8);
  v2 = sub_22B4C5080();
  v3 = sub_22B4C52A0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B4AC000, v2, v3, "SendOneMessage, sending to service", v4, 2u);
    MEMORY[0x2318939B0](v4, -1, -1);
  }

  v5 = v0[9];

  v6 = *(v5 + OBJC_IVAR___CloudTelemetryReporter_connectionManager);
  result = swift_beginAccess();
  v8 = *(v6 + 40);
  v0[13] = v8;
  if (v8)
  {
    v9 = v0[10];

    swift_unknownObjectRetain();
    v10 = XPCMessage.init(ty:payload:)(0, v9);
    v12 = v11;
    v0[14] = v10;
    v13 = swift_task_alloc();
    v0[15] = v13;
    *v13 = v0;
    v13[1] = sub_22B4B2A34;

    return XPCConnection.sendWithReply(_:)(v10, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t XPCDictionary.subscript.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8C80B0, qword_22B4C6520);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *v1;
  sub_22B4AFE58(a1, &v12 - v5, &unk_27D8C80B0, qword_22B4C6520);
  v8 = type metadata accessor for XPCObject();
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_22B4ADA60(v6, &unk_27D8C80B0, qword_22B4C6520);
    v9 = 0;
  }

  else
  {
    v9 = XPCObject.obj.getter();
    sub_22B4B0CFC(v6);
  }

  v10 = sub_22B4C5170();

  xpc_dictionary_set_value(v7, (v10 + 32), v9);
  swift_unknownObjectRelease();
  sub_22B4ADA60(a1, &unk_27D8C80B0, qword_22B4C6520);
}

uint64_t sub_22B4AFE58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_22B4AFF0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_22B4AFF74(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22B4C5490();
  sub_22B4C5180();
  v6 = sub_22B4C54D0();

  return sub_22B4AFFEC(a1, a2, v6);
}

unint64_t sub_22B4AFFEC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_22B4C53E0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

xpc_object_t sub_22B4B00A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8C80B0, qword_22B4C6520);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v31 - v3;
  v5 = *v0;
  v6 = v0[1];
  v8 = *(v0 + 1);
  v7 = *(v0 + 2);
  v32 = XPCDictionary.init()();
  v9 = MessageKeys.tcAllowsCellularAccess.unsafeMutableAddressor();
  v10 = *v9;
  v11 = v9[1];
  *v4 = v5 & 1;
  v12 = type metadata accessor for XPCObject();
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v4, 0, 1, v12);

  XPCDictionary.subscript.setter(v4);
  v13 = MessageKeys.tcAllowsExpensiveAccess.unsafeMutableAddressor();
  v14 = *v13;
  v15 = v13[1];
  *v4 = v6 & 1;
  v16 = type metadata accessor for XPCObject();
  swift_storeEnumTagMultiPayload();
  v17 = *(*(v16 - 8) + 56);
  v17(v4, 0, 1, v16);

  XPCDictionary.subscript.setter(v4);
  if (v7)
  {

    v18 = MessageKeys.tcBundleID.unsafeMutableAddressor();
    v19 = *v18;
    v20 = v18[1];
    *v4 = v8;
    *(v4 + 1) = v7;
    swift_storeEnumTagMultiPayload();
    v17(v4, 0, 1, v16);

    v21 = v4;
LABEL_5:
    XPCDictionary.subscript.setter(v21);
    return v32;
  }

  v22 = [objc_opt_self() mainBundle];
  v23 = [v22 bundleIdentifier];

  if (v23)
  {
    v24 = sub_22B4C5150();
    v26 = v25;

    v27 = MessageKeys.tcBundleID.unsafeMutableAddressor();
    v28 = *v27;
    v29 = v27[1];
    *v4 = v24;
    *(v4 + 1) = v26;
    swift_storeEnumTagMultiPayload();
    v17(v4, 0, 1, v16);

    v21 = v4;
    goto LABEL_5;
  }

  return v32;
}

uint64_t sub_22B4B036C()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v14 = *(v0 + 88);
  v7 = *(v0 + 80);
  v8 = *(v0 + 104);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_22B4B2534;

  return sub_22B4B0454(v9, v10, v11, v12, v2, v3, v4, v5);
}

uint64_t sub_22B4B0454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v13;
  *(v8 + 136) = v14;
  *(v8 + 184) = v11;
  *(v8 + 112) = v10;
  *(v8 + 120) = v12;
  *(v8 + 96) = a7;
  *(v8 + 104) = a8;
  *(v8 + 80) = a5;
  *(v8 + 88) = a6;
  return MEMORY[0x2822009F8](sub_22B4B0498, 0, 0);
}

uint64_t sub_22B4B0498()
{
  if (MGGetProductType() == 3348380076)
  {

    return MEMORY[0x2822009F8](sub_22B4B8738, 0, 0);
  }

  else
  {
    if (qword_280C53698 != -1)
    {
      swift_once();
    }

    v1 = qword_280C53A98;
    v2 = *(MEMORY[0x277D857C8] + 4);
    v3 = swift_task_alloc();
    *(v0 + 144) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8C82B0, &qword_22B4C6328);
    *v3 = v0;
    v3[1] = sub_22B4B05DC;
    v5 = *(v0 + 136);
    v6 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 64, v1, v5, v4, v6);
  }
}

uint64_t sub_22B4B05DC()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_22B4B06F0;
  }

  else
  {
    v3 = sub_22B4B88BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B4B06F0()
{
  v23 = v0;
  v1 = v0[19];
  if (qword_280C535F0 != -1)
  {
    swift_once();
  }

  v2 = sub_22B4C50A0();
  __swift_project_value_buffer(v2, qword_280C535F8);
  v3 = v1;
  v4 = sub_22B4C5080();
  v5 = sub_22B4C52B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[2];
    v8 = v0[3];
    v10 = v0[4];
    v11 = sub_22B4C5430();
    v13 = sub_22B4BB27C(v11, v12, &v22);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_22B4AC000, v4, v5, "Report, failed with error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2318939B0](v7, -1, -1);
    MEMORY[0x2318939B0](v6, -1, -1);
  }

  else
  {
  }

  if (qword_280C534C0 != -1)
  {
    swift_once();
  }

  v14 = qword_280C53A90;
  os_unfair_lock_lock((qword_280C53A90 + 24));
  v15 = *(v14 + 16);
  v16 = v15 - 1;
  if (__OFSUB__(v15, 1))
  {
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v16;
    if (qword_280C535F0 == -1)
    {
      goto LABEL_10;
    }
  }

  swift_once();
LABEL_10:
  __swift_project_value_buffer(v2, qword_280C535F8);
  v17 = sub_22B4C5080();
  v18 = sub_22B4C5290();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = v16;
    _os_log_impl(&dword_22B4AC000, v17, v18, "Legacy task count decremented, now %ld.", v19, 0xCu);
    MEMORY[0x2318939B0](v19, -1, -1);
  }

  os_unfair_lock_unlock((v14 + 24));
  v20 = v0[1];

  return v20();
}

uint64_t sub_22B4B09CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 137) = a7;
  *(v8 + 48) = a5;
  *(v8 + 56) = v7;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 64) = swift_getObjectType();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C80C0, &qword_22B4C6538) - 8) + 64) + 15;
  *(v8 + 72) = swift_task_alloc();
  *(v8 + 138) = *a6;
  *(v8 + 80) = *(a6 + 8);

  return MEMORY[0x2822009F8](sub_22B4B0A94, 0, 0);
}

uint64_t sub_22B4B0A94()
{
  v11 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  *v9 = *(v0 + 138);
  v10 = *(v0 + 80);
  *(v0 + 96) = sub_22B4AEB00(v5, v3, v4, v1, v2, v9);
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_22B4B1F1C;
  v7 = *(v0 + 56);

  return sub_22B4B1BE8();
}

unint64_t sub_22B4B0B9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C8180, &qword_22B4C6A08);
    v3 = sub_22B4C53C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_22B4AFE58(v4, &v13, &unk_27D8C8100, &qword_22B4C65E0);
      v5 = v13;
      v6 = v14;
      result = sub_22B4AFF74(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22B4ADA50(&v15, (v3[7] + 32 * result));
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

uint64_t sub_22B4B0CFC(uint64_t a1)
{
  v2 = type metadata accessor for XPCObject();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t XPCConnection.sendWithReply(_:)(uint64_t a1, char a2)
{
  *(v3 + 96) = a2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  return MEMORY[0x2822009F8](sub_22B4B0D7C, 0, 0);
}

uint64_t sub_22B4B0D7C()
{
  v1 = *(v0 + 56);
  v2 = swift_beginAccess();
  v10 = *(v1 + 16);
  *(v0 + 64) = v10;
  if (v10)
  {
    v11 = *(v0 + 96);
    v12 = *(v0 + 48);
    v13 = *(*(v0 + 56) + 40);
    v14 = swift_task_alloc();
    *(v0 + 72) = v14;
    *(v14 + 16) = v10;
    *(v14 + 24) = v12;
    *(v14 + 32) = v11;
    *(v14 + 40) = v13;
    v15 = *(MEMORY[0x277D85A40] + 4);
    swift_unknownObjectRetain();
    v16 = swift_task_alloc();
    *(v0 + 80) = v16;
    *v16 = v0;
    v16[1] = sub_22B4B28A4;
    v9 = &type metadata for XPCDictionary;
    v7 = sub_22B4B15C8;
    v2 = v0 + 40;
    v6 = 0x800000022B4C7920;
    v3 = 0;
    v4 = 0;
    v5 = 0xD000000000000011;
    v8 = v14;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822008A0](v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22B4B0EC0(uint64_t a1, _xpc_connection_s *a2, uint64_t a3, NSObject *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C82E8, &unk_22B4C71E0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - v10;
  v12 = j__swift_unknownObjectRetain();
  (*(v8 + 16))(v11, a1, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v11, v7);
  aBlock[4] = sub_22B4B2784;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4B2724;
  aBlock[3] = &block_descriptor_8_0;
  v15 = _Block_copy(aBlock);

  xpc_connection_send_message_with_reply(a2, v12, a4, v15);
  _Block_release(v15);
  return swift_unknownObjectRelease();
}

uint64_t sub_22B4B1094()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C82E8, &unk_22B4C71E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

xpc_object_t XPCObject.obj.getter()
{
  v1 = v0;
  v42 = *MEMORY[0x277D85DE8];
  v2 = sub_22B4C5030();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &uuid[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = type metadata accessor for XPCObject();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &uuid[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_22B4B1564(v1, v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      result = xpc_BOOL_create(*v10);
      goto LABEL_3;
    case 3u:
      result = xpc_int64_create(*v10);
      goto LABEL_3;
    case 4u:
      result = xpc_uint64_create(*v10);
      goto LABEL_3;
    case 5u:
      result = xpc_double_create(*v10);
      goto LABEL_3;
    case 6u:
      result = xpc_date_create(*v10);
      goto LABEL_3;
    case 7u:
      v22 = *v10;
      v21 = *(v10 + 1);
      v23 = v21 >> 62;
      if ((v21 >> 62) > 1)
      {
        if (v23 != 2)
        {
          memset(uuid, 0, 14);
          v25 = uuid;
          v24 = 0;
          goto LABEL_34;
        }

        v30 = *(v22 + 16);
        v31 = *(v22 + 24);
        v32 = sub_22B4C4F00();
        if (v32)
        {
          v33 = sub_22B4C4F20();
          if (__OFSUB__(v30, v33))
          {
            goto LABEL_36;
          }

          v32 += v30 - v33;
        }

        v34 = __OFSUB__(v31, v30);
        v35 = v31 - v30;
        if (!v34)
        {
          goto LABEL_26;
        }

        __break(1u);
LABEL_22:
        v35 = (v22 >> 32) - v22;
        if (v22 >> 32 >= v22)
        {
          v32 = sub_22B4C4F00();
          if (!v32)
          {
LABEL_26:
            v37 = sub_22B4C4F10();
            if (v37 >= v35)
            {
              v38 = v35;
            }

            else
            {
              v38 = v37;
            }

            if (v32)
            {
              v24 = v38;
            }

            else
            {
              v24 = 0;
            }

            v25 = v32;
            goto LABEL_34;
          }

          v36 = sub_22B4C4F20();
          if (!__OFSUB__(v22, v36))
          {
            v32 += v22 - v36;
            goto LABEL_26;
          }

LABEL_37:
          __break(1u);
        }

        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if (v23)
      {
        goto LABEL_22;
      }

      *uuid = *v10;
      *&uuid[8] = v21;
      uuid[10] = BYTE2(v21);
      uuid[11] = BYTE3(v21);
      uuid[12] = BYTE4(v21);
      v24 = BYTE6(v21);
      uuid[13] = BYTE5(v21);
      v25 = uuid;
LABEL_34:
      v39 = xpc_data_create(v25, v24);
      sub_22B4BF2A8(v22, v21);
      result = v39;
LABEL_3:
      v12 = *MEMORY[0x277D85DE8];
      return result;
    case 8u:
      v26 = *v10;
      v27 = *(v10 + 1);
      v28 = sub_22B4C5170();

      v29 = xpc_string_create((v28 + 32));

      result = v29;
      goto LABEL_3;
    case 9u:
      (*(v3 + 32))(v6, v10, v2);
      *uuid = sub_22B4C5020();
      *&uuid[8] = v13;
      uuid[10] = v14;
      uuid[11] = v15;
      uuid[12] = v16;
      uuid[13] = v17;
      uuid[14] = v18;
      uuid[15] = v19;
      v20 = xpc_uuid_create(uuid);
      (*(v3 + 8))(v6, v2);
      result = v20;
      goto LABEL_3;
    case 0xDu:
      result = xpc_null_create();
      goto LABEL_3;
    default:
      result = *v10;
      goto LABEL_3;
  }
}

uint64_t sub_22B4B1564(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCObject();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

xpc_object_t sub_22B4B161C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8C80B0, qword_22B4C6520);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8C8190, &qword_22B4C6A30);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v43 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v39 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v39 - v17);
  MEMORY[0x28223BE20](v16);
  v42 = (&v39 - v19);
  empty = xpc_dictionary_create_empty();
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = *(v8 + 48);
    v22 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v39 = *(v9 + 72);
    v40 = v21;
    v41 = v15;
    do
    {
      v26 = v42;
      sub_22B4AFE58(v22, v42, &unk_27D8C8190, &qword_22B4C6A30);
      v27 = v26[1];
      v28 = *(v8 + 48);
      *v18 = *v26;
      v18[1] = v27;
      sub_22B4AF3A0(v26 + v40, v18 + v28);
      sub_22B4AFE58(v18, v15, &unk_27D8C8190, &qword_22B4C6A30);
      v46 = *v15;
      v29 = v15[1];
      v30 = v43;
      sub_22B4AFE58(v18, v43, &unk_27D8C8190, &qword_22B4C6A30);
      v31 = *(v30 + 8);

      v32 = v8;
      sub_22B4AF3A0(v30 + *(v8 + 48), v7);
      v33 = type metadata accessor for XPCObject();
      v34 = *(v33 - 8);
      (*(v34 + 56))(v7, 0, 1, v33);
      v35 = v7;
      v36 = v7;
      v37 = v44;
      sub_22B4AFE58(v36, v44, &unk_27D8C80B0, qword_22B4C6520);
      if ((*(v34 + 48))(v37, 1, v33) == 1)
      {
        sub_22B4ADA60(v37, &unk_27D8C80B0, qword_22B4C6520);
        v23 = 0;
      }

      else
      {
        v23 = XPCObject.obj.getter();
        sub_22B4B0CFC(v37);
      }

      v8 = v32;
      v24 = *(v32 + 48);
      v25 = sub_22B4C5170();

      xpc_dictionary_set_value(empty, (v25 + 32), v23);
      swift_unknownObjectRelease();
      v7 = v35;
      sub_22B4ADA60(v35, &unk_27D8C80B0, qword_22B4C6520);
      sub_22B4ADA60(v18, &unk_27D8C8190, &qword_22B4C6A30);

      v15 = v41;
      sub_22B4B0CFC(v41 + v24);
      v22 += v39;
      --v20;
    }

    while (v20);
  }

  return empty;
}

xpc_object_t XPCDictionary.init(dictionaryLiteral:)(uint64_t a1)
{
  v1 = sub_22B4B161C(a1);

  return v1;
}

uint64_t sub_22B4B1A54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventValue();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B4B1AB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventValue();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B4B1B1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C8058, &qword_22B4C6070);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B4B1B8C(uint64_t a1)
{
  v2 = type metadata accessor for EventValue();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B4B1C08()
{
  v1 = v0[5];
  if (*(*(v1 + OBJC_IVAR___CloudTelemetryReporter_connectionManager) + 24) != 1)
  {
LABEL_20:
    v20 = v0[1];

    return v20();
  }

  v2 = *(v1 + OBJC_IVAR___CloudTelemetryReporter_xpcServiceXpcActivityStarted);
  os_unfair_lock_lock((v2 + 20));
  if (*(v2 + 16))
  {
    os_unfair_lock_unlock((v2 + 20));
    goto LABEL_20;
  }

  *(v2 + 16) = 1;
  os_unfair_lock_unlock((v2 + 20));
  if (qword_280C535F0 != -1)
  {
    swift_once();
  }

  v3 = sub_22B4C50A0();
  __swift_project_value_buffer(v3, qword_280C535F8);
  v4 = sub_22B4C5080();
  v5 = sub_22B4C52A0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_22B4AC000, v4, v5, "XPCService registration for CloudTelemetry", v6, 2u);
    MEMORY[0x2318939B0](v6, -1, -1);
  }

  v7 = v0[5];

  v8 = XPCActivity.makeHandler.unsafeMutableAddressor();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  swift_beginAccess();
  v10 = *v8;
  v11 = v8[1];
  *v8 = &unk_22B4C65F8;
  v8[1] = v9;
  v12 = v7;
  sub_22B4BC278(v10);
  if (qword_280C53778 != -1)
  {
    swift_once();
  }

  v15 = qword_280C53AC8;
  v0[6] = qword_280C53AC8;
  if (v15 >> 62)
  {
    v16 = sub_22B4C5390();
    v0[7] = v16;
    if (!v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[7] = v16;
    if (!v16)
    {
      goto LABEL_20;
    }
  }

  if (v16 < 1)
  {
    __break(1u);
  }

  else
  {
    v0[8] = 0;
    v17 = v0[6];
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x2318932F0](0);
    }

    else
    {
      v18 = *(v17 + 32);
    }

    v0[9] = v18;
    v19 = (*v18 + 160) & 0xFFFFFFFFFFFFLL | 0xD283000000000000;
    v0[10] = *(*v18 + 160);
    v0[11] = v19;
    v16 = sub_22B4B83CC;
    v13 = v18;
    v14 = 0;
  }

  return MEMORY[0x2822009F8](v16, v13, v14);
}

uint64_t sub_22B4B1EE4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B4B1F1C()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_22B4B78A4;
  }

  else
  {
    v3 = sub_22B4B2030;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_22B4B2030()
{
  v25 = v0;
  v1 = *(v0 + 112);
  v2 = OBJC_IVAR___CloudTelemetryReporter_activeSendOneMessageCount;
  v3 = swift_task_alloc();
  v4 = *(*(v0 + 56) + v2);
  *(v3 + 16) = *(v0 + 56);
  os_unfair_lock_lock((v4 + 24));
  sub_22B4B22D8((v4 + 16), v24);
  os_unfair_lock_unlock((v4 + 24));
  if (v1)
  {
    return;
  }

  v5 = v24[0];

  v6 = *(v0 + 96);
  if (v5)
  {
    v7 = *(v0 + 96);
    swift_unknownObjectRelease();
LABEL_9:
    v22 = *(v0 + 72);

    v23 = *(v0 + 8);

    v23();
    return;
  }

  v9 = *(v0 + 64);
  v8 = *(v0 + 72);
  v10 = *(v0 + 56);
  v11 = *(v0 + 137);
  v12 = sub_22B4C5240();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v10;
  v13[5] = v6;
  v13[6] = v9;
  v14 = v10;
  swift_unknownObjectRetain();
  v15 = sub_22B4B92EC(0, 0, v8, &unk_22B4C65B0, v13);
  *(v0 + 120) = v15;
  if (v11 != 1)
  {
    v21 = *(v0 + 96);
    swift_unknownObjectRelease();

    goto LABEL_9;
  }

  v16 = *(MEMORY[0x277D857D0] + 4);
  v17 = swift_task_alloc();
  *(v0 + 128) = v17;
  *v17 = v0;
  v17[1] = sub_22B4B7730;
  v18 = MEMORY[0x277D84A98];
  v19 = MEMORY[0x277D84AC0];
  v20 = MEMORY[0x277D84F78] + 8;

  MEMORY[0x282200440](v0 + 136, v15, v20, v18, v19);
}

uint64_t sub_22B4B2290()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_22B4B2300(uint64_t *a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, char *a4@<X8>)
{
  v9 = *a1 + 1;
  if (__OFADD__(*a1, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = *(v4 + 16);
  v7 = *&v6[OBJC_IVAR___CloudTelemetryReporter_activeSendOneMessageLimit];
  if (v7 < v9)
  {
    v5 = a2;
    if (qword_280C535F0 == -1)
    {
LABEL_4:
      v10 = sub_22B4C50A0();
      __swift_project_value_buffer(v10, qword_280C535F8);
      v11 = v6;
      v12 = sub_22B4C5080();
      v13 = sub_22B4C52B0();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 134349056;
        *(v14 + 4) = v7;

        _os_log_impl(&dword_22B4AC000, v12, v13, v5, v14, 0xCu);
        MEMORY[0x2318939B0](v14, -1, -1);
      }

      else
      {
      }

      v20 = 1;
      goto LABEL_14;
    }

LABEL_16:
    swift_once();
    goto LABEL_4;
  }

  *a1 = v9;
  if (qword_280C535F0 != -1)
  {
    swift_once();
  }

  v16 = sub_22B4C50A0();
  __swift_project_value_buffer(v16, qword_280C535F8);
  v17 = v6;
  v12 = sub_22B4C5080();
  v18 = sub_22B4C52A0();
  if (os_log_type_enabled(v12, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134349312;
    *(v19 + 4) = v9;
    *(v19 + 12) = 2050;
    *(v19 + 14) = v7;

    _os_log_impl(&dword_22B4AC000, v12, v18, a3, v19, 0x16u);
    MEMORY[0x2318939B0](v19, -1, -1);
  }

  else
  {
  }

  v20 = 0;
LABEL_14:

  *a4 = v20;
}

uint64_t sub_22B4B2534()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22B4B262C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22B4B2724(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_22B4B2784(uint64_t a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C82E8, &unk_22B4C71E0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = MEMORY[0x231893D00](a1);
  if (v4 == XPCTypeError.getter())
  {
    sub_22B4C342C();
    swift_allocError();
    *v7 = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C82E8, &unk_22B4C71E0);
    return sub_22B4C5210();
  }

  else
  {
    v5 = swift_unknownObjectRetain();
    XPCDictionary.init(_:)(v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C82E8, &unk_22B4C71E0);
    return sub_22B4C5220();
  }
}

uint64_t sub_22B4B28A4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_22B4C2824;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_22B4B29C4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B4B29C4()
{
  v1 = v0[8];
  swift_unknownObjectRelease();
  v2 = v0[5];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_22B4B2A34()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v9 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_22B4B95EC;
  }

  else
  {
    v7 = v2 + 104;
    v5 = *(v2 + 104);
    v6 = *(v7 + 8);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v4 = sub_22B4B2B70;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_22B4B2B70()
{
  v1 = v0[12];
  v2 = sub_22B4C5080();
  v3 = sub_22B4C52A0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B4AC000, v2, v3, "SendOneMessage, sent to service", v4, 2u);
    MEMORY[0x2318939B0](v4, -1, -1);
  }

  v5 = v0[16];
  v6 = v0[11];
  v7 = v0[9];
  v8 = *(v7 + OBJC_IVAR___CloudTelemetryReporter_activeSendOneMessageCount);
  v9 = swift_task_alloc();
  *(v9 + 16) = v7;
  *(v9 + 24) = v6;
  os_unfair_lock_lock((v8 + 24));
  sub_22B4B2E08((v8 + 16));
  os_unfair_lock_unlock((v8 + 24));
  if (!v5)
  {

    v10 = v0[1];

    v10();
  }
}

void sub_22B4B2CC4(uint64_t *a1, const char *a2)
{
  v5 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v4 = *(v2 + 16);
    *a1 = v5;
    if (qword_280C535F0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v6 = sub_22B4C50A0();
  __swift_project_value_buffer(v6, qword_280C535F8);
  v7 = v4;
  v8 = sub_22B4C5080();
  v9 = sub_22B4C52A0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134349312;
    *(v10 + 4) = v5;
    *(v10 + 12) = 2050;
    *(v10 + 14) = *(v7 + OBJC_IVAR___CloudTelemetryReporter_activeSendOneMessageLimit);

    _os_log_impl(&dword_22B4AC000, v8, v9, v3, v10, 0x16u);
    MEMORY[0x2318939B0](v10, -1, -1);
  }

  else
  {

    v8 = v7;
  }
}

uint64_t sub_22B4B2E28()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B4B2E64()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4B2E9C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B4B2EFC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22B4B2F44()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B4B2F84()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B4B2FCC(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  return v2;
}

uint64_t sub_22B4B302C()
{
  v1 = *(v0[5] + 112);
  result = swift_beginAccess();
  v3 = *(v1 + 40);
  v0[6] = v3;
  if (v3)
  {

    v4 = XPCDictionary.init()();
    v5 = XPCMessage.init(ty:payload:)(2u, v4);
    v7 = v6;
    v0[7] = v5;
    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    v8[1] = sub_22B4B311C;

    return XPCConnection.sendWithReply(_:)(v5, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22B4B311C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 48);

    v6 = *(v2 + 56);
  }

  else
  {
    v8 = *(v2 + 48);
    v7 = *(v2 + 56);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  v9 = *(v4 + 8);

  return v9();
}

uint64_t sub_22B4B3254()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22B4B3298()
{
  v2 = *(*v0 + 104);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B4B2534;

  return v6();
}

uint64_t sub_22B4B33A8()
{
  v0 = PostInstallActivityConfig.activityFlags.unsafeMutableAddressor();
  swift_beginAccess();
  v1 = *v0;
}

uint64_t sub_22B4B33EC()
{
  v0 = PostInstallActivityConfig.identifier.unsafeMutableAddressor();
  v1 = *v0;
  v2 = *(v0 + 1);

  return v1;
}

unint64_t sub_22B4B3420(uint64_t a1)
{
  result = sub_22B4B3448();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22B4B3448()
{
  result = qword_280C52E30;
  if (!qword_280C52E30)
  {
    type metadata accessor for PostInstallActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C52E30);
  }

  return result;
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

uint64_t EventValue.init(integerLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for EventValue();

  return swift_storeEnumTagMultiPayload();
}

uint64_t EventValue.init(floatLiteral:)@<X0>(double *a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  type metadata accessor for EventValue();

  return swift_storeEnumTagMultiPayload();
}

uint64_t EventValue.init(BOOLeanLiteral:)@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for EventValue();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22B4B3600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for EventValue();

  return swift_storeEnumTagMultiPayload();
}

uint64_t EventValue.hash(into:)()
{
  v1 = sub_22B4C5030();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EventValue();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B4B1A54(v0, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v17 = *v9;
      MEMORY[0x231893440](3);
      v18 = 0.0;
      if (v17 != 0.0)
      {
        v18 = v17;
      }

      return MEMORY[0x231893460](*&v18);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v13 = *v9;
      MEMORY[0x231893440](4);
      return sub_22B4C54B0();
    }

    else
    {
      (*(v2 + 32))(v5, v9, v1);
      MEMORY[0x231893440](5);
      sub_22B4B4AB4(&qword_27D8C8050, MEMORY[0x277CC95F0]);
      sub_22B4C5110();
      return (*(v2 + 8))(v5, v1);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v11 = *v9;
    if (EnumCaseMultiPayload == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    MEMORY[0x231893440](v12);
    return MEMORY[0x231893460](*&v11);
  }

  else
  {
    v15 = *v9;
    v16 = *(v9 + 1);
    MEMORY[0x231893440](0);
    sub_22B4C5180();
  }
}

uint64_t EventValue.hashValue.getter()
{
  sub_22B4C5490();
  EventValue.hash(into:)();
  return sub_22B4C54D0();
}

uint64_t sub_22B4B38E4()
{
  sub_22B4C5490();
  EventValue.hash(into:)();
  return sub_22B4C54D0();
}

uint64_t sub_22B4B3928()
{
  sub_22B4C5490();
  EventValue.hash(into:)();
  return sub_22B4C54D0();
}

uint64_t sub_22B4B3978@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return swift_storeEnumTagMultiPayload();
}

void sub_22B4B39B8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16))
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C81A0, &qword_22B4C6068);
    v4 = sub_22B4C53C0();
    a1 = v3;
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v5 = v4;
  sub_22B4B3A70(a1, 1, &v5);
  *a2 = v5;
}

void sub_22B4B3A70(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for EventValue();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C8080, &qword_22B4C6320);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v17 = (&v59 - v16);
  v65 = *(a1 + 16);
  if (!v65)
  {
    goto LABEL_23;
  }

  v61 = v3;
  v62 = v8;
  v18 = a2;
  v19 = *(v14 + 48);
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v64 = *(v15 + 72);
  v66 = a1;
  v60 = v20;
  sub_22B4AFE58(a1 + v20, &v59 - v16, &qword_27D8C8080, &qword_22B4C6320);
  v21 = v17[1];
  v69 = *v17;
  v22 = v69;
  v70 = v21;
  v63 = v19;
  sub_22B4B1AB8(v17 + v19, v11);
  v23 = *a3;
  v25 = sub_22B4AFF74(v22, v21);
  v26 = v23[2];
  v27 = (v24 & 1) == 0;
  v28 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v29 = v24;
  if (v23[3] >= v28)
  {
    if (v18)
    {
      if ((v24 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_22B4B3F88();
      if ((v29 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_22B4B41B8(v28, v18 & 1);
  v30 = *a3;
  v31 = sub_22B4AFF74(v22, v21);
  if ((v29 & 1) == (v32 & 1))
  {
    v25 = v31;
    if ((v29 & 1) == 0)
    {
LABEL_13:
      v35 = *a3;
      *(*a3 + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v36 = (v35[6] + 16 * v25);
      *v36 = v22;
      v36[1] = v21;
      v37 = v35[7];
      v62 = *(v62 + 72);
      sub_22B4B1AB8(v11, v37 + v62 * v25);
      v38 = v35[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (!v39)
      {
        v35[2] = v40;
        v41 = v66;
        if (v65 != 1)
        {
          v42 = v66 + v64 + v60;
          v43 = 1;
          while (v43 < *(v41 + 16))
          {
            sub_22B4AFE58(v42, v17, &qword_27D8C8080, &qword_22B4C6320);
            v44 = v17[1];
            v69 = *v17;
            v45 = v69;
            v70 = v44;
            sub_22B4B1AB8(v17 + v63, v11);
            v46 = *a3;
            v47 = sub_22B4AFF74(v45, v44);
            v49 = v46[2];
            v50 = (v48 & 1) == 0;
            v39 = __OFADD__(v49, v50);
            v51 = v49 + v50;
            if (v39)
            {
              goto LABEL_24;
            }

            v52 = v48;
            if (v46[3] < v51)
            {
              sub_22B4B41B8(v51, 1);
              v53 = *a3;
              v47 = sub_22B4AFF74(v45, v44);
              if ((v52 & 1) != (v54 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v52)
            {
              goto LABEL_10;
            }

            v55 = *a3;
            *(*a3 + 8 * (v47 >> 6) + 64) |= 1 << v47;
            v56 = (v55[6] + 16 * v47);
            *v56 = v45;
            v56[1] = v44;
            sub_22B4B1AB8(v11, v55[7] + v62 * v47);
            v57 = v55[2];
            v39 = __OFADD__(v57, 1);
            v58 = v57 + 1;
            if (v39)
            {
              goto LABEL_25;
            }

            ++v43;
            v55[2] = v58;
            v42 += v64;
            v41 = v66;
            if (v65 == v43)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v33 = swift_allocError();
    swift_willThrow();

    v71 = v33;
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8C82B0, &qword_22B4C6328);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_22B4B1B8C(v11);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_22B4C5400();
  __break(1u);
LABEL_28:
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_22B4C5340();
  MEMORY[0x231893130](0xD00000000000001BLL, 0x800000022B4C7480);
  sub_22B4C5370();
  MEMORY[0x231893130](39, 0xE100000000000000);
  sub_22B4C5380();
  __break(1u);
}

void *sub_22B4B3F88()
{
  v1 = v0;
  v31 = *(type metadata accessor for EventValue() - 8);
  v2 = *(v31 + 64);
  MEMORY[0x28223BE20]();
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C81A0, &qword_22B4C6068);
  v4 = *v0;
  v5 = sub_22B4C53A0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
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
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_22B4B1A54(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_22B4B1AB8(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

uint64_t sub_22B4B41B8(uint64_t a1, int a2)
{
  v3 = v2;
  v42 = *(type metadata accessor for EventValue() - 8);
  v6 = *(v42 + 64);
  MEMORY[0x28223BE20]();
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v9 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C81A0, &qword_22B4C6068);
  v43 = a2;
  result = sub_22B4C53B0();
  v11 = result;
  if (*(v8 + 16))
  {
    v40 = v3;
    v41 = v8;
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
      v25 = *(v8 + 56);
      v26 = (*(v8 + 48) + 16 * v24);
      v27 = *v26;
      v28 = v26[1];
      v29 = *(v42 + 72);
      v30 = v25 + v29 * v24;
      if (v43)
      {
        sub_22B4B1AB8(v30, v44);
      }

      else
      {
        sub_22B4B1A54(v30, v44);
      }

      v31 = *(v11 + 40);
      sub_22B4C5490();
      sub_22B4C5180();
      result = sub_22B4C54D0();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v27;
      v20[1] = v28;
      result = sub_22B4B1AB8(v44, *(v11 + 56) + v29 * v19);
      ++*(v11 + 16);
      v8 = v41;
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

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v8 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v8 + 16) = 0;
  }

LABEL_36:
  *v3 = v11;
  return result;
}

uint64_t _s14CloudTelemetry10EventValueO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v3 = sub_22B4C5030();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EventValue();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v48 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v48 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v48 - v18);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (&v48 - v21);
  MEMORY[0x28223BE20](v20);
  v24 = (&v48 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C8088, qword_22B4C6330);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v29 = &v48 - v28;
  v30 = (&v48 + *(v27 + 56) - v28);
  sub_22B4B1A54(a1, &v48 - v28);
  sub_22B4B1A54(v51, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_22B4B1A54(v29, v22);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v32 = *v22;
LABEL_16:
          v37 = v32 == *v30;
LABEL_17:
          v34 = v37;
          goto LABEL_22;
        }
      }

      else
      {
        sub_22B4B1A54(v29, v19);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v32 = *v19;
          goto LABEL_16;
        }
      }
    }

    else
    {
      sub_22B4B1A54(v29, v24);
      v36 = *v24;
      v35 = v24[1];
      if (!swift_getEnumCaseMultiPayload())
      {
        if (v36 == *v30 && v35 == *(v30 + 1))
        {
          v47 = *(v30 + 1);
        }

        else
        {
          v45 = *(v30 + 1);
          v46 = sub_22B4C53E0();

          if ((v46 & 1) == 0)
          {
            sub_22B4B1B8C(v29);
            goto LABEL_25;
          }
        }

        sub_22B4B1B8C(v29);
        v34 = 1;
        return v34 & 1;
      }
    }

    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_22B4B1A54(v29, v16);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v37 = *v16 == *v30;
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  if (EnumCaseMultiPayload != 4)
  {
    sub_22B4B1A54(v29, v10);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v39 = v48;
      v38 = v49;
      v40 = v30;
      v41 = v50;
      (*(v49 + 32))(v48, v40, v50);
      v34 = sub_22B4C5000();
      v42 = *(v38 + 8);
      v42(v39, v41);
      v42(v10, v41);
LABEL_22:
      sub_22B4B1B8C(v29);
      return v34 & 1;
    }

    (*(v49 + 8))(v10, v50);
    goto LABEL_24;
  }

  sub_22B4B1A54(v29, v13);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
LABEL_24:
    sub_22B4ADA60(v29, &qword_27D8C8088, qword_22B4C6330);
LABEL_25:
    v34 = 0;
    return v34 & 1;
  }

  v33 = *v13 ^ *v30;
  sub_22B4B1B8C(v29);
  v34 = v33 ^ 1;
  return v34 & 1;
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

uint64_t sub_22B4B4AB4(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22B4B4B38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 73))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_22B4B4B94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_22B4B4C5C()
{
  result = sub_22B4C5030();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22B4B4D10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventValue();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B4B4DA0()
{
  v1 = *(v0[5] + 112);
  result = swift_beginAccess();
  v3 = *(v1 + 40);
  v0[6] = v3;
  if (v3)
  {

    v4 = XPCDictionary.init()();
    v5 = XPCMessage.init(ty:payload:)(1u, v4);
    v7 = v6;
    v0[7] = v5;
    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    v8[1] = sub_22B4B311C;

    return XPCConnection.sendWithReply(_:)(v5, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22B4B4E90()
{
  v2 = *(*v0 + 104);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B4B2534;

  return v6();
}

uint64_t sub_22B4B4FA0()
{
  v0 = SubmitEventsActivityConfig.activityFlags.unsafeMutableAddressor();
  swift_beginAccess();
  v1 = *v0;
}

uint64_t sub_22B4B4FE4()
{
  v0 = SubmitEventsActivityConfig.identifier.unsafeMutableAddressor();
  v1 = *v0;
  v2 = *(v0 + 1);

  return v1;
}

unint64_t sub_22B4B5018(uint64_t a1)
{
  result = sub_22B4B5040();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22B4B5040()
{
  result = qword_280C52E08;
  if (!qword_280C52E08)
  {
    type metadata accessor for SubmitEventsActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C52E08);
  }

  return result;
}

uint64_t sub_22B4B50B8(char a1)
{
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B4B5164;

  return sub_22B4B5264(a1 & 1);
}

uint64_t sub_22B4B5164(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_22B4B5264(char a1)
{
  *(v2 + 96) = v1;
  *(v2 + 208) = a1;
  v3 = sub_22B4C50B0();
  *(v2 + 104) = v3;
  v4 = *(v3 - 8);
  *(v2 + 112) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 120) = swift_task_alloc();
  v6 = sub_22B4C52F0();
  *(v2 + 128) = v6;
  v7 = *(v6 - 8);
  *(v2 + 136) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 144) = swift_task_alloc();
  v9 = sub_22B4C52E0();
  *(v2 + 152) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v2 + 160) = swift_task_alloc();
  v11 = *(*(sub_22B4C50D0() - 8) + 64) + 15;
  *(v2 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B4B53E0, 0, 0);
}

uint64_t sub_22B4B53E0()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v30 = *(v0 + 144);
  v31 = *(v0 + 128);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v6 = *(v0 + 96);
  v32 = *(v0 + 104);
  v33 = *(v0 + 168);
  v34 = *(v0 + 208);
  sub_22B4B5A74();
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  sub_22B4C50C0();
  *(v0 + 88) = MEMORY[0x277D84F90];
  sub_22B4B5AC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8C8090, &qword_22B4C63D0);
  sub_22B4B5B18();
  sub_22B4C5320();
  (*(v3 + 104))(v30, *MEMORY[0x277D85268], v31);
  (*(v4 + 104))(v5, *MEMORY[0x277D851A8], v32);
  sub_22B4C5310();
  (*(v4 + 8))(v5, v32);
  v7 = sub_22B4C5300();
  *(v0 + 176) = v7;
  *(v6 + 16) = v7;
  *(v6 + 24) = v34 & 1;
  if (v34)
  {
    v8 = *(v0 + 96);
    type metadata accessor for XPCConnection();
    swift_allocObject();
    v9 = v7;

    XPCConnection.init(serviceName:targetQ:listen:delegate:)(0xD000000000000023, 0x800000022B4C7500, v9, 0, v8, &off_283F147F0);
    v11 = v10;
    v13 = *(v0 + 160);
    v12 = *(v0 + 168);
    v14 = *(v0 + 144);
    v15 = *(v0 + 120);
    v16 = *(v0 + 96);
    swift_beginAccess();
    v17 = *(v16 + 40);
    *(v16 + 40) = v11;

    v18 = *(v0 + 8);
    v19 = *(v0 + 96);

    return v18(v19);
  }

  else
  {
    v21 = objc_opt_self();
    v22 = v7;
    v23 = [v21 mainBundle];
    v24 = [v23 bundleIdentifier];

    if (v24)
    {
      v25 = sub_22B4C5150();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    sub_22B4C5070();
    swift_allocObject();
    v28 = *(MEMORY[0x277CFB480] + 4);
    v29 = swift_task_alloc();
    *(v0 + 184) = v29;
    *v29 = v0;
    v29[1] = sub_22B4B5774;

    return MEMORY[0x28214D690](0, v25, v27);
  }
}

uint64_t sub_22B4B5774(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v7 = sub_22B4B589C;
  }

  else
  {
    *(v4 + 200) = a1;
    v7 = sub_22B4B5948;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22B4B589C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 120);
  v5 = *(v0 + 96);

  v6 = *(v0 + 8);
  v7 = *(v0 + 192);

  return v6();
}

uint64_t sub_22B4B5948()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[12];
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v1;

  v5 = sub_22B4C5050();

  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[18];
  v9 = v0[15];
  v10 = v0[12];
  swift_beginAccess();
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;

  v12 = v0[1];
  v13 = v0[12];

  return v12(v13);
}

unint64_t sub_22B4B5A74()
{
  result = qword_280C52D58;
  if (!qword_280C52D58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C52D58);
  }

  return result;
}

unint64_t sub_22B4B5AC0()
{
  result = qword_280C52D60;
  if (!qword_280C52D60)
  {
    sub_22B4C52E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C52D60);
  }

  return result;
}

unint64_t sub_22B4B5B18()
{
  result = qword_280C52D78[0];
  if (!qword_280C52D78[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D8C8090, &qword_22B4C63D0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C52D78);
  }

  return result;
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

uint64_t sub_22B4B5BC4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_22B4B5C50()
{
  v1 = *(v0[5] + 112);
  result = swift_beginAccess();
  v3 = *(v1 + 40);
  v0[6] = v3;
  if (v3)
  {

    v4 = XPCDictionary.init()();
    v5 = XPCMessage.init(ty:payload:)(3u, v4);
    v7 = v6;
    v0[7] = v5;
    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    v8[1] = sub_22B4B311C;

    return XPCConnection.sendWithReply(_:)(v5, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22B4B5D40()
{
  v2 = *(*v0 + 104);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B4B2534;

  return v6();
}

uint64_t sub_22B4B5E50()
{
  v0 = CacheCleanupActivityConfig.activityFlags.unsafeMutableAddressor();
  swift_beginAccess();
  v1 = *v0;
}

uint64_t sub_22B4B5E94()
{
  v0 = CacheCleanupActivityConfig.identifier.unsafeMutableAddressor();
  v1 = *v0;
  v2 = *(v0 + 1);

  return v1;
}

unint64_t sub_22B4B5EC8(uint64_t a1)
{
  result = sub_22B4B5EF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22B4B5EF0()
{
  result = qword_280C52E20;
  if (!qword_280C52E20)
  {
    type metadata accessor for CacheCleanupActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C52E20);
  }

  return result;
}

unint64_t sub_22B4B5F68()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22B4C5340();

  MEMORY[0x231893130](v1, v2);
  return 0xD000000000000016;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_22B4B6044()
{
  result = qword_27D8C80A8;
  if (!qword_27D8C80A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8C80A8);
  }

  return result;
}

CloudTelemetry::TransportConfiguration __swiftcall TransportConfiguration.init(allowCellularAccess:allowExpensiveAccess:bundleID:)(Swift::Bool_optional allowCellularAccess, Swift::Bool_optional allowExpensiveAccess, Swift::String_optional bundleID)
{
  *v3 = allowCellularAccess;
  *(v3 + 1) = allowExpensiveAccess;
  *(v3 + 8) = bundleID;
  result.bundleID.value._object = bundleID.value._countAndFlagsBits;
  LOBYTE(result.bundleID.value._countAndFlagsBits) = allowExpensiveAccess;
  result.allowCellularAccess = allowCellularAccess;
  return result;
}

uint64_t static CloudTelemetry.setupXpcServiceActivities()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C80C0, &qword_22B4C6538);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;
  result = MGGetProductType();
  if (result != 3348380076)
  {
    v6 = sub_22B4C5240();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v0;
    sub_22B4B6358(0, 0, v4, &unk_22B4C6548, v7);
  }

  return result;
}

{
  return MEMORY[0x2822009F8](sub_22B4B6248, 0, 0);
}

uint64_t sub_22B4B6248()
{
  if (MGGetProductType() == 3348380076 || MGGetProductType() == 3348380076)
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 16) = v3;
    *v3 = v0;
    v3[1] = sub_22B4B2628;

    return sub_22B4BBA48();
  }
}

uint64_t sub_22B4B6358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C80C0, &qword_22B4C6538);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_22B4AFE58(a3, v24 - v10, &qword_27D8C80C0, &qword_22B4C6538);
  v12 = sub_22B4C5240();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22B4ADA60(v11, &qword_27D8C80C0, &qword_22B4C6538);
  }

  else
  {
    sub_22B4C5230();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_22B4C5200();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_22B4C5170() + 32;

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

      sub_22B4ADA60(a3, &qword_27D8C80C0, &qword_22B4C6538);

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

  sub_22B4ADA60(a3, &qword_27D8C80C0, &qword_22B4C6538);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_22B4B6604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C80C0, &qword_22B4C6538);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_22B4AFE58(a3, v24 - v10, &qword_27D8C80C0, &qword_22B4C6538);
  v12 = sub_22B4C5240();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22B4ADA60(v11, &qword_27D8C80C0, &qword_22B4C6538);
  }

  else
  {
    sub_22B4C5230();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_22B4C5200();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_22B4C5170() + 32;
      type metadata accessor for Reporter();

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

      sub_22B4ADA60(a3, &qword_27D8C80C0, &qword_22B4C6538);

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

  sub_22B4ADA60(a3, &qword_27D8C80C0, &qword_22B4C6538);
  type metadata accessor for Reporter();
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_22B4B690C()
{
  if (MGGetProductType() == 3348380076)
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 16) = v3;
    *v3 = v0;
    v3[1] = sub_22B4B2534;

    return sub_22B4BBA48();
  }
}

uint64_t sub_22B4B6A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  return MEMORY[0x2822009F8](sub_22B4B6A54, 0, 0);
}

uint64_t sub_22B4B6A54()
{
  if (MGGetProductType() == 3348380076)
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_280C53698 != -1)
    {
      swift_once();
    }

    v3 = qword_280C53A98;
    v4 = *(MEMORY[0x277D857C8] + 4);
    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    v6 = type metadata accessor for Reporter();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8C82B0, &qword_22B4C6328);
    *v5 = v0;
    v5[1] = sub_22B4B6BA8;
    v8 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 40, v3, v6, v7, v8);
  }
}

uint64_t sub_22B4B6BA8()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  *(v3 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B4B6EB4, 0, 0);
  }

  else
  {
    *(v3 + 16) = 514;
    *(v3 + 104) = *(v3 + 40);
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    v4 = swift_task_alloc();
    *(v3 + 112) = v4;
    *v4 = v3;
    v4[1] = sub_22B4B6D3C;
    v5 = *(v3 + 72);
    v6 = *(v3 + 80);
    v7 = *(v3 + 56);
    v8 = *(v3 + 64);
    v9 = *(v3 + 48);

    return sub_22B4B09CC(v9, v7, v8, v5, v6, v3 + 16, 0);
  }
}

uint64_t sub_22B4B6D3C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 120) = v0;

  v6 = *(v2 + 32);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B4B6ECC, 0, 0);
  }

  else
  {
    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t static CloudTelemetry.report(teamID:eventType:event:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22B4B2628;

  return sub_22B4BBFA0(a1, a2, a3, a4, a5);
}

{
  return sub_22B4B7008(a1, a2, a3, a4, a5, &unk_283F148B8, &unk_22B4C6590);
}

uint64_t sub_22B4B7008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C80C0, &qword_22B4C6538);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v22 - v16;
  result = MGGetProductType();
  if (result != 3348380076)
  {
    result = sub_22B4ADB54(a5);
    if (!v8)
    {
      v19 = result;
      v20 = sub_22B4C5240();
      (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
      v21 = swift_allocObject();
      v21[2] = 0;
      v21[3] = 0;
      v21[4] = a1;
      v21[5] = a2;
      v21[6] = a3;
      v21[7] = a4;
      v21[8] = v19;
      v21[9] = v7;

      sub_22B4B6358(0, 0, v17, v23, v21);
    }
  }

  return result;
}

uint64_t sub_22B4B7170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  return MEMORY[0x2822009F8](sub_22B4B719C, 0, 0);
}

uint64_t sub_22B4B719C()
{
  if (MGGetProductType() == 3348380076)
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_280C53698 != -1)
    {
      swift_once();
    }

    v3 = qword_280C53A98;
    v4 = *(MEMORY[0x277D857C8] + 4);
    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    v6 = type metadata accessor for Reporter();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8C82B0, &qword_22B4C6328);
    *v5 = v0;
    v5[1] = sub_22B4B72F0;
    v8 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 40, v3, v6, v7, v8);
  }
}

uint64_t sub_22B4B72F0()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  *(v3 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B4BDAA4, 0, 0);
  }

  else
  {
    *(v3 + 16) = 514;
    *(v3 + 104) = *(v3 + 40);
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    v4 = swift_task_alloc();
    *(v3 + 112) = v4;
    *v4 = v3;
    v4[1] = sub_22B4B7484;
    v5 = *(v3 + 72);
    v6 = *(v3 + 80);
    v7 = *(v3 + 56);
    v8 = *(v3 + 64);
    v9 = *(v3 + 48);

    return sub_22B4B09CC(v9, v7, v8, v5, v6, v3 + 16, 0);
  }
}

uint64_t sub_22B4B7484()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 120) = v0;

  v6 = *(v2 + 32);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B4BDAC0, 0, 0);
  }

  else
  {
    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_22B4B7614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = sub_22B4C5150();
  v10 = v9;
  v11 = sub_22B4C5150();
  v13 = v12;
  v14 = sub_22B4C50E0();
  swift_getObjCClassMetadata();
  a7(v8, v10, v11, v13, v14);

  return 1;
}

uint64_t sub_22B4B7730()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B4B782C, 0, 0);
}

uint64_t sub_22B4B782C()
{
  v1 = v0[15];
  v2 = v0[12];
  swift_unknownObjectRelease();

  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22B4B78A4()
{
  v1 = v0[12];
  swift_unknownObjectRelease();
  v2 = v0[14];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

id CloudTelemetry.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_22B4B7990()
{
  sub_22B4C5490();
  MEMORY[0x231893440](0);
  return sub_22B4C54D0();
}

uint64_t sub_22B4B79FC()
{
  sub_22B4C5490();
  MEMORY[0x231893440](0);
  return sub_22B4C54D0();
}

uint64_t sub_22B4B7A64()
{
  v0 = sub_22B4C50A0();
  __swift_allocate_value_buffer(v0, qword_280C535F8);
  __swift_project_value_buffer(v0, qword_280C535F8);
  return sub_22B4C5090();
}

uint64_t sub_22B4B7AE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C80C0, &qword_22B4C6538);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_22B4C5240();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  result = sub_22B4B6604(0, 0, v3, &unk_22B4C6A40, v5);
  qword_280C53A98 = result;
  return result;
}

uint64_t sub_22B4B7BF8()
{
  v0[5] = &type metadata for Reporter.CloudTelemetryFeatureFlags;
  v0[6] = sub_22B4BD974();
  v1 = sub_22B4C5040();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  type metadata accessor for ConnectionManager();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_22B4B7CCC;

  return sub_22B4B50B8((v1 & 1) == 0);
}

uint64_t sub_22B4B7CCC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 72) = a1;

    return MEMORY[0x2822009F8](sub_22B4B7E18, 0, 0);
  }
}

uint64_t sub_22B4B7E18()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = objc_allocWithZone(type metadata accessor for Reporter());
  *v2 = sub_22B4B7F24(v1, 20);
  v4 = v0[1];

  return v4();
}

uint64_t sub_22B4B7EE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C80D0, &qword_22B4C65C8);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  qword_280C53A90 = result;
  return result;
}

id sub_22B4B7F24(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR___CloudTelemetryReporter_activeSendOneMessageCount;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C80D0, &qword_22B4C65C8);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = 0;
  *&v2[v6] = v7;
  v8 = OBJC_IVAR___CloudTelemetryReporter_xpcServiceXpcActivityStarted;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C80D8, &qword_22B4C65D0);
  v9 = swift_allocObject();
  *(v9 + 20) = 0;
  *(v9 + 16) = 0;
  *&v2[v8] = v9;
  *&v2[OBJC_IVAR___CloudTelemetryReporter_connectionManager] = a1;
  *&v2[OBJC_IVAR___CloudTelemetryReporter_activeSendOneMessageLimit] = a2;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_22B4B8018(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_22B4C5490();
  a3(v5);
  return sub_22B4C54D0();
}

uint64_t sub_22B4B80B4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_22B4C5490();
  a4(v6);
  return sub_22B4C54D0();
}

void *sub_22B4B8108@<X0>(void *result@<X0>, char *a2@<X8>)
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

uint64_t sub_22B4B8150(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B4BD768();
  v5 = sub_22B4BD7BC();

  return MEMORY[0x28211BAD0](a1, a2, v4, v5);
}

unint64_t sub_22B4B81A8()
{
  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  else
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    v2 = "com.apple.CloudTelemetry";
  }

  else
  {
    v2 = "invalid parameter";
  }

  v3 = v2 | 0x8000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C80F8, &qword_22B4C65D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B4C64B0;
  v5 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_22B4C5150();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v6;
  *(inited + 48) = v1;
  *(inited + 56) = v3;
  v7 = sub_22B4B0B9C(inited);
  swift_setDeallocating();
  sub_22B4ADA60(inited + 32, &unk_27D8C8100, &qword_22B4C65E0);
  return v7;
}

uint64_t sub_22B4B8294(uint64_t a1)
{
  v2 = sub_22B4BD714();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22B4B82D0(uint64_t a1)
{
  v2 = sub_22B4BD714();
  v3 = sub_22B4BD768();
  v4 = sub_22B4BD7BC();

  return MEMORY[0x28211F498](a1, v2, v3, v4);
}

uint64_t static Reporter.start()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B4B2534;

  return sub_22B4BBA48();
}

uint64_t sub_22B4B83CC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  (*(v0 + 80))(0);

  return MEMORY[0x2822009F8](sub_22B4B843C, 0, 0);
}

uint64_t sub_22B4B843C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  if (v2 + 1 == v3)
  {
    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[8] + 1;
    v0[8] = v6;
    v7 = v0[6];
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2318932F0]();
    }

    else
    {
      v8 = *(v7 + 8 * v6 + 32);
    }

    v0[9] = v8;
    v9 = (*v8 + 160) & 0xFFFFFFFFFFFFLL | 0xD283000000000000;
    v0[10] = *(*v8 + 160);
    v0[11] = v9;

    return MEMORY[0x2822009F8](sub_22B4B83CC, v8, 0);
  }
}

uint64_t sub_22B4B853C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_22B4B855C, 0, 0);
}

uint64_t sub_22B4B855C()
{
  v1 = v0[2];
  if (type metadata accessor for SubmitEventsActivity() == v1)
  {
    v3 = *(v0[3] + OBJC_IVAR___CloudTelemetryReporter_connectionManager);

    v5 = sub_22B4B2FCC(v4);
    v6 = &qword_280C52E18;
    v7 = type metadata accessor for SubmitEventsActivity;
  }

  else if (type metadata accessor for CacheCleanupActivity() == v1)
  {
    v8 = *(v0[3] + OBJC_IVAR___CloudTelemetryReporter_connectionManager);

    v5 = sub_22B4B2FCC(v9);
    v6 = &qword_280C52E28;
    v7 = type metadata accessor for CacheCleanupActivity;
  }

  else
  {
    if (type metadata accessor for PostInstallActivity() != v1)
    {
      return sub_22B4C5380();
    }

    v10 = *(v0[3] + OBJC_IVAR___CloudTelemetryReporter_connectionManager);

    v5 = sub_22B4B2FCC(v11);
    v6 = qword_280C52E40;
    v7 = type metadata accessor for PostInstallActivity;
  }

  v12 = sub_22B4BD894(v6, v7);
  v13 = v0[1];

  return v13(v5, v12);
}

uint64_t sub_22B4B8738()
{
  if (qword_280C534C0 != -1)
  {
    swift_once();
  }

  v1 = qword_280C53A90;
  os_unfair_lock_lock((qword_280C53A90 + 24));
  v2 = *(v1 + 16);
  v3 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 16) = v3;
    if (qword_280C535F0 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v4 = sub_22B4C50A0();
  __swift_project_value_buffer(v4, qword_280C535F8);
  v5 = sub_22B4C5080();
  v6 = sub_22B4C5290();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v3;
    _os_log_impl(&dword_22B4AC000, v5, v6, "Legacy task count decremented, now %ld.", v7, 0xCu);
    MEMORY[0x2318939B0](v7, -1, -1);
  }

  os_unfair_lock_unlock((v1 + 24));
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22B4B88BC()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 184);
  v4 = *(v0 + 64);
  *(v0 + 40) = v3;
  *(v0 + 160) = v4;
  *(v0 + 41) = HIBYTE(v3);
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;

  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  *v5 = v0;
  v5[1] = sub_22B4B8994;
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  v8 = *(v0 + 88);
  v9 = *(v0 + 96);
  v10 = *(v0 + 80);

  return sub_22B4B09CC(v10, v8, v9, v6, v7, v0 + 40, 0);
}

uint64_t sub_22B4B8994()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 176) = v0;

  v6 = *(v2 + 56);

  if (v0)
  {
    v7 = sub_22B4B8AE4;
  }

  else
  {
    v7 = sub_22B4B8738;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22B4B8AE4()
{
  v23 = v0;
  v1 = v0[22];
  if (qword_280C535F0 != -1)
  {
    swift_once();
  }

  v2 = sub_22B4C50A0();
  __swift_project_value_buffer(v2, qword_280C535F8);
  v3 = v1;
  v4 = sub_22B4C5080();
  v5 = sub_22B4C52B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[2];
    v8 = v0[3];
    v10 = v0[4];
    v11 = sub_22B4C5430();
    v13 = sub_22B4BB27C(v11, v12, &v22);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_22B4AC000, v4, v5, "Report, failed with error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2318939B0](v7, -1, -1);
    MEMORY[0x2318939B0](v6, -1, -1);
  }

  else
  {
  }

  if (qword_280C534C0 != -1)
  {
    swift_once();
  }

  v14 = qword_280C53A90;
  os_unfair_lock_lock((qword_280C53A90 + 24));
  v15 = *(v14 + 16);
  v16 = v15 - 1;
  if (__OFSUB__(v15, 1))
  {
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v16;
    if (qword_280C535F0 == -1)
    {
      goto LABEL_10;
    }
  }

  swift_once();
LABEL_10:
  __swift_project_value_buffer(v2, qword_280C535F8);
  v17 = sub_22B4C5080();
  v18 = sub_22B4C5290();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = v16;
    _os_log_impl(&dword_22B4AC000, v17, v18, "Legacy task count decremented, now %ld.", v19, 0xCu);
    MEMORY[0x2318939B0](v19, -1, -1);
  }

  os_unfair_lock_unlock((v14 + 24));
  v20 = v0[1];

  return v20();
}

uint64_t static Reporter.report(teamID:eventType:event:transportConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 80) = a5;
  *(v7 + 88) = v6;
  *(v7 + 64) = a3;
  *(v7 + 72) = a4;
  *(v7 + 48) = a1;
  *(v7 + 56) = a2;
  *(v7 + 96) = *a6;
  *(v7 + 112) = *(a6 + 16);
  return MEMORY[0x2822009F8](sub_22B4B8DF8, 0, 0);
}

uint64_t sub_22B4B8DF8()
{
  if (MGGetProductType() == 3348380076)
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    if (qword_280C53698 != -1)
    {
      swift_once();
    }

    v3 = qword_280C53A98;
    v4 = *(MEMORY[0x277D857C8] + 4);
    v5 = swift_task_alloc();
    v0[15] = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8C82B0, &qword_22B4C6328);
    *v5 = v0;
    v5[1] = sub_22B4B8F38;
    v7 = v0[11];
    v8 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 5, v3, v7, v6, v8);
  }
}

uint64_t sub_22B4B8F38()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_22B4B92BC;
  }

  else
  {
    v3 = sub_22B4B904C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B4B904C()
{
  v2 = *(v0 + 112);
  *(v0 + 136) = *(v0 + 40);
  if (v2 == 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(v0 + 96);
    v6 = *(v0 + 104);
    LOBYTE(v7) = 2;
    v8 = 2;
  }

  else
  {
    v5 = *(v0 + 96);
    v6 = *(v0 + 104);
    v7 = v5 >> 8;
    v3 = v2;
    v4 = v6;
    v8 = v5;
  }

  *(v0 + 16) = v8;
  *(v0 + 17) = v7;
  *(v0 + 24) = v4;
  *(v0 + 32) = v3;
  sub_22B4BC288(v5, v6, v2);
  v9 = swift_task_alloc();
  *(v0 + 144) = v9;
  *v9 = v0;
  v9[1] = sub_22B4B9144;
  v10 = *(v0 + 72);
  v11 = *(v0 + 80);
  v12 = *(v0 + 56);
  v13 = *(v0 + 64);
  v14 = *(v0 + 48);

  return sub_22B4B09CC(v14, v12, v13, v10, v11, v0 + 16, 0);
}

uint64_t sub_22B4B9144()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 152) = v0;

  v6 = *(v2 + 32);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B4B92D4, 0, 0);
  }

  else
  {
    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_22B4B92EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C80C0, &qword_22B4C6538);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_22B4AFE58(a3, v27 - v11, &qword_27D8C80C0, &qword_22B4C6538);
  v13 = sub_22B4C5240();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_22B4ADA60(v12, &qword_27D8C80C0, &qword_22B4C6538);
  }

  else
  {
    sub_22B4C5230();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22B4C5200();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22B4C5170() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_22B4ADA60(a3, &qword_27D8C80C0, &qword_22B4C6538);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22B4ADA60(a3, &qword_27D8C80C0, &qword_22B4C6538);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_22B4B95EC()
{
  v25 = v0;
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  swift_unknownObjectRelease();

  v5 = v1;
  v6 = sub_22B4C5080();
  v7 = sub_22B4C52B0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[16];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = v0[5];
    v11 = v0[6];
    v13 = v0[7];
    v14 = sub_22B4C5430();
    v16 = sub_22B4BB27C(v14, v15, &v24);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_22B4AC000, v6, v7, "SendOneMessage, failed with error: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x2318939B0](v10, -1, -1);
    MEMORY[0x2318939B0](v9, -1, -1);
  }

  else
  {
    v17 = v0[16];
  }

  v18 = v0[11];
  v19 = v0[9];
  v20 = *(v19 + OBJC_IVAR___CloudTelemetryReporter_activeSendOneMessageCount);
  v21 = swift_task_alloc();
  *(v21 + 16) = v19;
  *(v21 + 24) = v18;
  os_unfair_lock_lock((v20 + 24));
  sub_22B4B2E08((v20 + 16));
  os_unfair_lock_unlock((v20 + 24));

  v22 = v0[1];

  return v22();
}

uint64_t sub_22B4B9804()
{
  v1 = *(v0[5] + OBJC_IVAR___CloudTelemetryReporter_connectionManager);
  result = swift_beginAccess();
  v3 = *(v1 + 40);
  v0[6] = v3;
  if (v3)
  {

    v4 = XPCDictionary.init()();
    v5 = XPCMessage.init(ty:payload:)(1u, v4);
    v7 = v6;
    v0[7] = v5;
    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    v8[1] = sub_22B4B311C;

    return XPCConnection.sendWithReply(_:)(v5, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Reporter.wouldSampleEvent(teamID:eventType:event:transportConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 88) = a6;
  *(v8 + 96) = v7;
  *(v8 + 72) = a4;
  *(v8 + 80) = a5;
  *(v8 + 56) = a2;
  *(v8 + 64) = a3;
  *(v8 + 48) = a1;
  *(v8 + 104) = *a7;
  *(v8 + 120) = *(a7 + 16);
  return MEMORY[0x2822009F8](sub_22B4B9938, 0, 0);
}

uint64_t sub_22B4B9938()
{
  if (MGGetProductType() == 3348380076)
  {
    **(v0 + 48) = 3;
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_280C53698 != -1)
    {
      swift_once();
    }

    v3 = qword_280C53A98;
    v4 = *(MEMORY[0x277D857C8] + 4);
    v5 = swift_task_alloc();
    *(v0 + 128) = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8C82B0, &qword_22B4C6328);
    *v5 = v0;
    v5[1] = sub_22B4B9A84;
    v7 = *(v0 + 96);
    v8 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 40, v3, v7, v6, v8);
  }
}

uint64_t sub_22B4B9A84()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_22B4B9E04;
  }

  else
  {
    v3 = sub_22B4B9B98;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B4B9B98()
{
  v2 = *(v0 + 120);
  *(v0 + 144) = *(v0 + 40);
  if (v2 == 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(v0 + 104);
    v6 = *(v0 + 112);
    LOBYTE(v7) = 2;
    v8 = 2;
  }

  else
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 112);
    v7 = v5 >> 8;
    v3 = v2;
    v4 = v6;
    v8 = v5;
  }

  *(v0 + 16) = v8;
  *(v0 + 17) = v7;
  *(v0 + 24) = v4;
  *(v0 + 32) = v3;
  sub_22B4BC288(v5, v6, v2);
  v9 = swift_task_alloc();
  *(v0 + 152) = v9;
  *v9 = v0;
  v9[1] = sub_22B4B9C8C;
  v10 = *(v0 + 80);
  v11 = *(v0 + 88);
  v12 = *(v0 + 64);
  v13 = *(v0 + 72);
  v14 = *(v0 + 48);
  v15 = *(v0 + 56);

  return sub_22B4B9E34(v14, v15, v12, v13, v10, v11, v0 + 16);
}

uint64_t sub_22B4B9C8C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 160) = v0;

  v6 = *(v2 + 32);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B4B9E1C, 0, 0);
  }

  else
  {
    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_22B4B9E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 112) = a6;
  *(v8 + 120) = v7;
  *(v8 + 96) = a4;
  *(v8 + 104) = a5;
  *(v8 + 80) = a2;
  *(v8 + 88) = a3;
  *(v8 + 72) = a1;
  *(v8 + 128) = swift_getObjectType();
  *(v8 + 224) = *a7;
  *(v8 + 136) = *(a7 + 8);

  return MEMORY[0x2822009F8](sub_22B4B9EC4, 0, 0);
}

uint64_t sub_22B4B9EC4()
{
  v11 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);
  *v9 = *(v0 + 224);
  v10 = *(v0 + 136);
  *(v0 + 152) = sub_22B4AEB00(v5, v3, v4, v1, v2, v9);
  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  *v6 = v0;
  v6[1] = sub_22B4B9FC4;
  v7 = *(v0 + 120);

  return sub_22B4B1BE8();
}

uint64_t sub_22B4B9FC4()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_22B4BA5D8;
  }

  else
  {
    v3 = sub_22B4BA0D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_22B4BA0D8()
{
  v22 = v0;
  v1 = v0[21];
  v2 = OBJC_IVAR___CloudTelemetryReporter_activeSendOneMessageCount;
  v3 = swift_task_alloc();
  v4 = *(v0[15] + v2);
  *(v3 + 16) = *(v0 + 15);
  os_unfair_lock_lock((v4 + 24));
  sub_22B4BC29C((v4 + 16), v21);
  os_unfair_lock_unlock((v4 + 24));
  if (!v1)
  {
    v5 = v21[0];

    if (v5)
    {
      v6 = v0[19];
      v7 = v0[9];
      swift_unknownObjectRelease();
      *v7 = 7;
      v8 = v0[1];

      v8();
    }

    else
    {
      if (qword_280C535F0 != -1)
      {
        swift_once();
      }

      v9 = sub_22B4C50A0();
      v0[22] = __swift_project_value_buffer(v9, qword_280C535F8);
      v10 = sub_22B4C5080();
      v11 = sub_22B4C52A0();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_22B4AC000, v10, v11, "CheckSamplingResult, sending to service", v12, 2u);
        MEMORY[0x2318939B0](v12, -1, -1);
      }

      v13 = v0[15];

      v14 = *(v13 + OBJC_IVAR___CloudTelemetryReporter_connectionManager);
      swift_beginAccess();
      v15 = *(v14 + 40);
      v0[23] = v15;
      if (v15)
      {
        v16 = v0[19];

        swift_unknownObjectRetain();
        v17 = XPCMessage.init(ty:payload:)(4u, v16);
        v19 = v18;
        v0[24] = v17;
        v20 = swift_task_alloc();
        v0[25] = v20;
        *v20 = v0;
        v20[1] = sub_22B4BA348;

        XPCConnection.sendWithReply(_:)(v17, v19);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_22B4BA348(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v9 = *v2;
  v3[26] = a1;
  v3[27] = v1;

  if (v1)
  {
    v5 = sub_22B4BA63C;
  }

  else
  {
    v7 = v3[23];
    v6 = v3[24];
    swift_unknownObjectRelease();

    v5 = sub_22B4BA46C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B4BA46C()
{
  v19 = v0;
  v1 = v0[22];
  v2 = sub_22B4C5080();
  v3 = sub_22B4C52A0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B4AC000, v2, v3, "CheckSamplingResult, sent to service", v4, 2u);
    MEMORY[0x2318939B0](v4, -1, -1);
  }

  v5 = v0[26];
  v6 = v0[19];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[9];

  swift_unknownObjectRetain();
  v10 = MessageKeys.samplingOutcome.unsafeMutableAddressor();
  v12 = *v10;
  v11 = v10[1];
  v13 = sub_22B4C5170();
  int64 = xpc_dictionary_get_int64(v5, (v13 + 32));

  swift_unknownObjectRelease();
  SamplingOutcome.init(rawValue:)(int64, &v18);
  swift_unknownObjectRelease();
  v15 = v18;
  if (v18 == 8)
  {
    v15 = 6;
  }

  *v9 = v15;
  sub_22B4BA7F0(v8);
  swift_unknownObjectRelease();
  v16 = v0[1];

  return v16();
}

uint64_t sub_22B4BA5D8()
{
  v1 = v0[19];
  swift_unknownObjectRelease();
  v2 = v0[21];
  v3 = v0[1];

  return v3();
}

uint64_t sub_22B4BA63C()
{
  v24 = v0;
  v1 = *(v0 + 216);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 176);
  swift_unknownObjectRelease();

  v5 = v1;
  v6 = sub_22B4C5080();
  v7 = sub_22B4C52B0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 216);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = *(v0 + 40);
    v11 = *(v0 + 48);
    v13 = *(v0 + 56);
    v14 = sub_22B4C5430();
    v16 = sub_22B4BB27C(v14, v15, &v23);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_22B4AC000, v6, v7, "CheckSamplingResult, failed with error: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x2318939B0](v10, -1, -1);
    MEMORY[0x2318939B0](v9, -1, -1);
  }

  else
  {
    v17 = *(v0 + 216);
  }

  v18 = *(v0 + 152);
  v19 = *(v0 + 120);
  v20 = *(v0 + 128);
  **(v0 + 72) = 6;
  sub_22B4BA7F0(v19);
  swift_unknownObjectRelease();
  v21 = *(v0 + 8);

  return v21();
}

void sub_22B4BA7F0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___CloudTelemetryReporter_activeSendOneMessageCount);
  os_unfair_lock_lock((v1 + 24));
  sub_22B4BD874((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

id Reporter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_22B4BA9AC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B4BAA40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8C8170, &qword_22B4C6A00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22B4C64C0;
  type metadata accessor for XPCActivity();
  v1 = type metadata accessor for SubmitEventsActivity();
  v2 = sub_22B4BD894(&qword_280C52E18, type metadata accessor for SubmitEventsActivity);
  *(v0 + 32) = XPCActivity.__allocating_init(handlerType:)(v1, v2);
  v3 = type metadata accessor for PostInstallActivity();
  v4 = sub_22B4BD894(qword_280C52E40, type metadata accessor for PostInstallActivity);
  *(v0 + 40) = XPCActivity.__allocating_init(handlerType:)(v3, v4);
  v5 = type metadata accessor for CacheCleanupActivity();
  v6 = sub_22B4BD894(&qword_280C52E28, type metadata accessor for CacheCleanupActivity);
  result = XPCActivity.__allocating_init(handlerType:)(v5, v6);
  *(v0 + 48) = result;
  qword_280C53AC8 = v0;
  return result;
}

uint64_t sub_22B4BAB98()
{
  v1 = *v0;
  v2 = sub_22B4C5150();
  v3 = MEMORY[0x231893170](v2);

  return v3;
}

uint64_t sub_22B4BABD4()
{
  v1 = *v0;
  sub_22B4C5150();
  sub_22B4C5180();
}

uint64_t sub_22B4BAC28()
{
  v1 = *v0;
  sub_22B4C5150();
  sub_22B4C5490();
  sub_22B4C5180();
  v2 = sub_22B4C54D0();

  return v2;
}

uint64_t sub_22B4BACA4(uint64_t a1, id *a2)
{
  result = sub_22B4C5130();
  *a2 = 0;
  return result;
}

uint64_t sub_22B4BAD1C(uint64_t a1, id *a2)
{
  v3 = sub_22B4C5140();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_22B4BAD9C@<X0>(uint64_t *a1@<X8>)
{
  sub_22B4C5150();
  v2 = sub_22B4C5120();

  *a1 = v2;
  return result;
}

uint64_t sub_22B4BADE0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_22B4C5150();
  v6 = v5;
  if (v4 == sub_22B4C5150() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22B4C53E0();
  }

  return v9 & 1;
}

uint64_t sub_22B4BAE68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22B4C5120();

  *a2 = v5;
  return result;
}

uint64_t sub_22B4BAEB0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_22B4C5150();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_22B4BAEDC(uint64_t a1)
{
  v2 = sub_22B4BD894(&qword_27D8C8150, type metadata accessor for FileAttributeKey);
  v3 = sub_22B4BD894(&qword_27D8C81C8, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

size_t sub_22B4BAF98(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C8158, &qword_22B4C69E8);
  v10 = *(sub_22B4C4FE0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22B4C4FE0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_22B4BB170(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8C8160, &qword_22B4C69F0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22B4BB27C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22B4BB348(v11, 0, 0, 1, a1, a2);
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
    sub_22B4ADF4C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_22B4BB348(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22B4BB454(a5, a6);
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
    result = sub_22B4C5360();
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

uint64_t sub_22B4BB454(uint64_t a1, unint64_t a2)
{
  v4 = sub_22B4BB4A0(a1, a2);
  sub_22B4BB5D0(&unk_283F14830);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_22B4BB4A0(uint64_t a1, unint64_t a2)
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

  v6 = sub_22B4BB6BC(v5, 0);
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

  result = sub_22B4C5360();
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
        v10 = sub_22B4C51B0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22B4BB6BC(v10, 0);
        result = sub_22B4C5330();
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

uint64_t sub_22B4BB5D0(uint64_t result)
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

  result = sub_22B4BB730(result, v12, 1, v3);
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

void *sub_22B4BB6BC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8C82D0, &qword_22B4C69F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22B4BB730(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D8C82D0, &qword_22B4C69F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

unint64_t sub_22B4BB824(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22B4C5150();
  sub_22B4C5490();
  sub_22B4C5180();
  v4 = sub_22B4C54D0();

  return sub_22B4BB8B8(a1, v4);
}

unint64_t sub_22B4BB8B8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_22B4C5150();
      v9 = v8;
      if (v7 == sub_22B4C5150() && v9 == v10)
      {
        break;
      }

      v12 = sub_22B4C53E0();

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

uint64_t sub_22B4BB9BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B4B2628;

  return sub_22B4B622C();
}

uint64_t sub_22B4BBA64()
{
  if (MGGetProductType() == 3348380076)
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_280C53698 != -1)
    {
      swift_once();
    }

    v3 = qword_280C53A98;
    v4 = *(MEMORY[0x277D857C8] + 4);
    v5 = swift_task_alloc();
    *(v0 + 24) = v5;
    v6 = type metadata accessor for Reporter();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8C82B0, &qword_22B4C6328);
    *v5 = v0;
    v5[1] = sub_22B4BBBB8;
    v8 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 16, v3, v6, v7, v8);
  }
}

uint64_t sub_22B4BBBB8()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  v3[4] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B4BBE64, 0, 0);
  }

  else
  {
    v3[5] = v3[2];
    v4 = swift_task_alloc();
    v3[6] = v4;
    *v4 = v3;
    v4[1] = sub_22B4BBD28;

    return sub_22B4B1BE8();
  }
}

uint64_t sub_22B4BBD28()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22B4BBE7C, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_22B4BBE7C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B4BBEE0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22B4B2628;

  return sub_22B4B6A28(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_22B4BBFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  return MEMORY[0x2822009F8](sub_22B4B719C, 0, 0);
}

uint64_t objectdestroy_8Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22B4BC018()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22B4B2628;

  return sub_22B4B7170(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_22B4BC0D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B4BC174;

  return sub_22B4B853C(a1, v6, v7, v4);
}

uint64_t sub_22B4BC174(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_22B4BC278(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22B4BC288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_22B4BC2C4()
{
  v128[4] = *MEMORY[0x277D85DE8];
  v0 = sub_22B4C4FE0();
  v118 = *(v0 - 8);
  v1 = *(v118 + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v103 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v102 - v5;
  v7 = MEMORY[0x28223BE20](v4);
  v122 = &v102 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v102 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v109 = &v102 - v13;
  MEMORY[0x28223BE20](v12);
  v115 = &v102 - v14;
  if (MGGetProductType() == 3348380076)
  {
    goto LABEL_2;
  }

  v116 = v6;
  v16 = NSHomeDirectory();
  v17 = sub_22B4C5150();
  v19 = v18;

  v20 = sub_22B4BB170(0, 1, 1, MEMORY[0x277D84F90]);
  v22 = *(v20 + 16);
  v21 = *(v20 + 24);
  v23 = v22 + 1;
  if (v22 >= v21 >> 1)
  {
    goto LABEL_110;
  }

LABEL_4:
  *(v20 + 16) = v23;
  v106 = v20 + 32;
  v24 = (v20 + 32 + 16 * v22);
  *v24 = v17;
  v24[1] = v19;
  v124 = [objc_opt_self() defaultManager];
  v25 = *(v20 + 16);
  v121 = v0;
  v104 = v25;
  if (!v25)
  {

    v77 = MEMORY[0x277D84F90];
    v78 = *(MEMORY[0x277D84F90] + 16);
    if (!v78)
    {
      goto LABEL_96;
    }

LABEL_76:
    v125 = *(v118 + 16);
    v126 = v77;
    v119 = (*(v118 + 80) + 32) & ~*(v118 + 80);
    v79 = v77 + v119;
    v123 = *(v118 + 72);
    v122 = *MEMORY[0x277CCA1C0];
    v80 = (v118 + 8);
    v117 = (v118 + 32);
    v118 += 16;
    v81 = MEMORY[0x277D84F90];
    while (1)
    {
      v84 = v116;
      v85 = v121;
      (v125)(v116, v79, v121);
      sub_22B4C4FD0();
      v86 = sub_22B4C5120();

      v128[0] = 0;
      v87 = [v124 attributesOfItemAtPath:v86 error:v128];

      v88 = v128[0];
      if (v87)
      {
        type metadata accessor for FileAttributeKey(0);
        sub_22B4BD894(&qword_27D8C8150, type metadata accessor for FileAttributeKey);
        v89 = sub_22B4C50E0();
        v90 = v88;

        if (*(v89 + 16) && (v91 = sub_22B4BB824(v122), (v92 & 1) != 0))
        {
          sub_22B4ADF4C(*(v89 + 56) + 32 * v91, v128);

          if ((swift_dynamicCast() & 1) != 0 && v127 >= 1)
          {
            (v125)(v103, v116, v121);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v81 = sub_22B4BAF98(0, *(v81 + 2) + 1, 1, v81);
            }

            v94 = *(v81 + 2);
            v93 = *(v81 + 3);
            if (v94 >= v93 >> 1)
            {
              v81 = sub_22B4BAF98(v93 > 1, v94 + 1, 1, v81);
            }

            v95 = v121;
            (*v80)(v116, v121);
            *(v81 + 2) = v94 + 1;
            (*v117)(&v81[v119 + v94 * v123], v103, v95);
            goto LABEL_78;
          }
        }

        else
        {
        }

        (*v80)(v116, v121);
      }

      else
      {
        v82 = v128[0];
        v83 = sub_22B4C4F80();

        swift_willThrow();
        (*v80)(v84, v85);
        v120 = 0;
      }

LABEL_78:
      v79 += v123;
      if (!--v78)
      {

        result = v81;
        goto LABEL_94;
      }
    }
  }

  v107 = v20;
  v26 = 0;
  v105 = "xpcServiceXpcActivityStarted";
  v27 = (v118 + 8);
  v123 = v118 + 16;
  v28 = MEMORY[0x277D84F90];
  v111 = v11;
  do
  {
    v21 = *(v107 + 16);
    if (v26 >= v21)
    {
      goto LABEL_103;
    }

    v126 = v28;
    v110 = v26;
    v29 = (v106 + 16 * v26);
    v30 = *v29;
    v20 = v29[1];

    v31 = v109;
    sub_22B4C4F90();
    v32 = v115;
    sub_22B4C4FB0();
    v33 = *v27;
    (*v27)(v31, v0);
    v17 = v32;
    v34 = v120;
    v35 = sub_22B4C4FC0();
    if (v34)
    {

      v120 = 0;
    }

    else
    {
      v120 = 0;
      if (v35)
      {
        v102 = v20;
        v36 = sub_22B4C4FA0();
        v128[0] = 0;
        v20 = [v124 contentsOfDirectoryAtURL:v36 includingPropertiesForKeys:0 options:0 error:v128];

        v17 = v128[0];
        if (!v20)
        {
          goto LABEL_99;
        }

        v22 = sub_22B4C51F0();
        v37 = v17;

        v114 = *(v22 + 16);
        if (v114)
        {
          v17 = 0;
          v119 = (*(v118 + 80) + 32) & ~*(v118 + 80);
          v112 = v22;
          v113 = v22 + v119;
          do
          {
            v21 = *(v22 + 16);
            if (v17 >= v21)
            {
              goto LABEL_102;
            }

            v38 = *(v118 + 72);
            v117 = v17;
            v125 = v38;
            v19 = *(v118 + 16);
            v19(v11, v113 + v38 * v17, v0);
            sub_22B4C4FD0();
            v20 = sub_22B4C51C0();

            if (v20)
            {
              v39 = sub_22B4C4FA0();
              v128[0] = 0;
              v40 = [v124 contentsOfDirectoryAtURL:v39 includingPropertiesForKeys:0 options:0 error:v128];

              v41 = v128[0];
              if (!v40)
              {
                v96 = v128[0];

                v97 = sub_22B4C4F80();

                v98 = v121;
                v120 = v97;
                swift_willThrow();

                v33(v111, v98);
                goto LABEL_93;
              }

              v42 = sub_22B4C51F0();
              v43 = v41;
              v44 = v42;

              v22 = *(v42 + 16);
              if (v22)
              {
                v108 = v44;
                v11 = v44 + v119;
                do
                {
                  v46 = v122;
                  v19(v122, v11, v0);
                  v47 = sub_22B4C4FA0();
                  v33(v46, v0);
                  v128[0] = 0;
                  v48 = [v124 contentsOfDirectoryAtURL:v47 includingPropertiesForKeys:0 options:0 error:v128];

                  v49 = v128[0];
                  if (v48)
                  {
                    v23 = v27;
                    v50 = sub_22B4C51F0();
                    v51 = v49;

                    v17 = *(v50 + 16);
                    v20 = v126[2];
                    v52 = v20 + v17;
                    if (__OFADD__(v20, v17))
                    {
                      __break(1u);
LABEL_98:
                      __break(1u);
LABEL_99:
                      v100 = v17;

                      v101 = sub_22B4C4F80();

                      v98 = v121;
                      v120 = v101;
                      swift_willThrow();

LABEL_93:
                      result = (v33)(v115, v98);
                      goto LABEL_94;
                    }

                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v54 = v126;
                    if (!isUniquelyReferenced_nonNull_native || v52 > v126[3] >> 1)
                    {
                      if (v20 <= v52)
                      {
                        v55 = v20 + v17;
                      }

                      else
                      {
                        v55 = v20;
                      }

                      v54 = sub_22B4BAF98(isUniquelyReferenced_nonNull_native, v55, 1, v126);
                    }

                    v0 = v121;
                    v56 = *(v50 + 16);
                    v126 = v54;
                    if (v56)
                    {
                      v21 = v54[2];
                      if (((v54[3] >> 1) - v21) < v17)
                      {
                        __break(1u);
LABEL_101:
                        __break(1u);
LABEL_102:
                        __break(1u);
LABEL_103:
                        __break(1u);
LABEL_104:
                        __break(1u);
LABEL_105:
                        __break(1u);
LABEL_106:
                        __break(1u);
LABEL_107:
                        __break(1u);
LABEL_108:
                        __break(1u);
LABEL_109:
                        __break(1u);
LABEL_110:
                        v20 = sub_22B4BB170((v21 > 1), v23, 1, v20);
                        goto LABEL_4;
                      }

                      v20 = v54;
                      swift_arrayInitWithCopy();

                      if (v17)
                      {
                        v57 = *(v20 + 16);
                        v58 = __OFADD__(v57, v17);
                        v21 = v57 + v17;
                        if (v58)
                        {
                          goto LABEL_101;
                        }

                        v27 = v23;
                        *(v20 + 16) = v21;
                      }

                      else
                      {
                        v27 = v23;
                      }
                    }

                    else
                    {

                      v27 = v23;
                      if (v17)
                      {
                        goto LABEL_98;
                      }
                    }
                  }

                  else
                  {
                    v45 = v128[0];
                    v20 = sub_22B4C4F80();

                    swift_willThrow();
                    v120 = 0;
                  }

                  v11 += v125;
                  --v22;
                }

                while (v22);
              }

              v11 = v111;
              goto LABEL_15;
            }

            sub_22B4C4FD0();
            v59 = sub_22B4C51C0();

            v60 = sub_22B4C4FA0();
            if (v59)
            {
              v128[0] = 0;
              v11 = [v124 contentsOfDirectoryAtURL:v60 includingPropertiesForKeys:0 options:0 error:v128];

              v61 = v128[0];
              if (!v11)
              {
                goto LABEL_68;
              }

              v20 = sub_22B4C51F0();
              v62 = v61;

              v17 = *(v20 + 16);
              v22 = v126[2];
              v19 = (v22 + v17);
              if (__OFADD__(v22, v17))
              {
                goto LABEL_104;
              }

              v63 = swift_isUniquelyReferenced_nonNull_native();
              v64 = v126;
              if (!v63 || v19 > v126[3] >> 1)
              {
                if (v22 <= v19)
                {
                  v65 = v22 + v17;
                }

                else
                {
                  v65 = v22;
                }

                v64 = sub_22B4BAF98(v63, v65, 1, v126);
              }

              v11 = v111;
              v22 = v112;
              v66 = *(v20 + 16);
              v126 = v64;
              if (!v66)
              {

                if (v17)
                {
                  goto LABEL_107;
                }

                goto LABEL_16;
              }

              v21 = v64[2];
              if (((v64[3] >> 1) - v21) < v17)
              {
                goto LABEL_108;
              }

              v67 = v64;
              swift_arrayInitWithCopy();

              if (v17)
              {
                v68 = v67[2];
                v58 = __OFADD__(v68, v17);
                v69 = v68 + v17;
                if (v58)
                {
                  __break(1u);
LABEL_111:
                  __break(1u);
                }

                goto LABEL_67;
              }
            }

            else
            {
              v128[0] = 0;
              v11 = [v124 contentsOfDirectoryAtURL:v60 includingPropertiesForKeys:0 options:0 error:v128];

              v61 = v128[0];
              if (!v11)
              {
LABEL_68:
                v20 = v61;
                v76 = sub_22B4C4F80();

                swift_willThrow();
                v120 = 0;
                v11 = v111;
                goto LABEL_16;
              }

              v20 = sub_22B4C51F0();
              v70 = v61;

              v17 = *(v20 + 16);
              v22 = v126[2];
              v19 = (v22 + v17);
              if (__OFADD__(v22, v17))
              {
                goto LABEL_105;
              }

              v71 = swift_isUniquelyReferenced_nonNull_native();
              v72 = v126;
              if (!v71 || v19 > v126[3] >> 1)
              {
                if (v22 <= v19)
                {
                  v73 = v22 + v17;
                }

                else
                {
                  v73 = v22;
                }

                v72 = sub_22B4BAF98(v71, v73, 1, v126);
              }

              v11 = v111;
              v22 = v112;
              v74 = *(v20 + 16);
              v126 = v72;
              if (!v74)
              {

                if (v17)
                {
                  goto LABEL_106;
                }

                goto LABEL_16;
              }

              v21 = v72[2];
              if (((v72[3] >> 1) - v21) < v17)
              {
                goto LABEL_109;
              }

              v67 = v72;
              swift_arrayInitWithCopy();

              if (v17)
              {
                v75 = v67[2];
                v58 = __OFADD__(v75, v17);
                v69 = v75 + v17;
                if (v58)
                {
                  goto LABEL_111;
                }

LABEL_67:
                v67[2] = v69;
              }
            }

LABEL_15:
            v22 = v112;
LABEL_16:
            v17 = v117 + 1;
            v33(v11, v0);
          }

          while (v17 != v114);
        }

        v20 = v102;
      }
    }

    v22 = v110 + 1;

    v33(v115, v0);
    v26 = v22;
    v28 = v126;
  }

  while (v22 != v104);

  v77 = v126;
  v78 = v126[2];
  if (v78)
  {
    goto LABEL_76;
  }

LABEL_96:

LABEL_2:
  result = MEMORY[0x277D84F90];
LABEL_94:
  v99 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_22B4BD108()
{
  result = qword_27D8C8110;
  if (!qword_27D8C8110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8C8110);
  }

  return result;
}

unint64_t sub_22B4BD160()
{
  result = qword_27D8C8118;
  if (!qword_27D8C8118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8C8118);
  }

  return result;
}

unint64_t sub_22B4BD1B8()
{
  result = qword_27D8C8120;
  if (!qword_27D8C8120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8C8120);
  }

  return result;
}

unint64_t sub_22B4BD210()
{
  result = qword_27D8C8128;
  if (!qword_27D8C8128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8C8128);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22B4BD270(uint64_t a1, int a2)
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

uint64_t sub_22B4BD2B8(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22B4BD35C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_22B4BD3B8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Reporter.CloudTelemetryFeatureFlags(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Reporter.CloudTelemetryFeatureFlags(_WORD *result, int a2, int a3)
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

uint64_t _s14CloudTelemetry4ModeOwet_0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s14CloudTelemetry4ModeOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22B4BD6B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B4BD6D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_22B4BD714()
{
  result = qword_27D8C8138;
  if (!qword_27D8C8138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8C8138);
  }

  return result;
}

unint64_t sub_22B4BD768()
{
  result = qword_27D8C8140;
  if (!qword_27D8C8140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8C8140);
  }

  return result;
}

unint64_t sub_22B4BD7BC()
{
  result = qword_27D8C8148;
  if (!qword_27D8C8148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8C8148);
  }

  return result;
}

void sub_22B4BD824(uint64_t a1, unint64_t *a2)
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

uint64_t sub_22B4BD894(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B4BD8DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B4B2534;

  return sub_22B4B7BD8(a1);
}

unint64_t sub_22B4BD974()
{
  result = qword_280C52CF8;
  if (!qword_280C52CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C52CF8);
  }

  return result;
}

BOOL sub_22B4BDAD0(char a1, char a2)
{
  v2 = (a1 - 2) + 2;
  if ((a1 - 2) >= 6u)
  {
    v2 = (a1 & 1) == 0;
  }

  v3 = (a2 - 2) + 2;
  if ((a2 - 2) >= 6u)
  {
    v3 = (a2 & 1) == 0;
  }

  return v2 == v3;
}

uint64_t sub_22B4BDB18()
{
  v1 = *v0;
  sub_22B4C5490();
  if ((v1 - 2) >= 6)
  {
    v2 = (v1 & 1) == 0;
  }

  else
  {
    v2 = (v1 - 2) + 2;
  }

  MEMORY[0x231893440](v2);
  return sub_22B4C54D0();
}

uint64_t sub_22B4BDB78()
{
  v1 = *v0;
  v2 = ~v1;
  v3 = v1 - 2;
  v4 = v2 & 1;
  if (v3 >= 6)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3 + 2;
  }

  return MEMORY[0x231893440](v5);
}

uint64_t sub_22B4BDBC0()
{
  v1 = *v0;
  sub_22B4C5490();
  if ((v1 - 2) >= 6)
  {
    v2 = (v1 & 1) == 0;
  }

  else
  {
    v2 = (v1 - 2) + 2;
  }

  MEMORY[0x231893440](v2);
  return sub_22B4C54D0();
}

unint64_t SamplingOutcome.init(rawValue:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x706050403020001uLL >> (8 * result);
  if (result >= 8)
  {
    LOBYTE(v2) = 8;
  }

  *a2 = v2;
  return result;
}

uint64_t SamplingOutcome.rawValue.getter()
{
  v1 = *v0;
  v2 = ~v1;
  v3 = v1 - 2;
  v4 = v2 & 1;
  if (v3 >= 6)
  {
    return v4;
  }

  else
  {
    return v3 + 2;
  }
}

unint64_t sub_22B4BDC70()
{
  result = qword_27D8C8230;
  if (!qword_27D8C8230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8C8230);
  }

  return result;
}

void sub_22B4BDCCC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = ~v2;
  v4 = v2 - 2;
  v5 = v3 & 1;
  if (v4 >= 6)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4 + 2;
  }

  *a1 = v6;
}

uint64_t getEnumTagSinglePayload for SamplingOutcome(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_19;
  }

  v2 = a2 + 7;
  if (a2 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 7;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

LABEL_19:
  v7 = *a1;
  if (*a1 < 2u)
  {
    return 0;
  }

  v8 = (v7 & 0xFE) + 2147483646;
  if ((v8 & 0x7FFFFFFEu) <= 5)
  {
    return 0;
  }

  return (v8 & 0x7FFFFFFE | v7 & 1u) - 5;
}

uint64_t storeEnumTagSinglePayload for SamplingOutcome(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_22B4BDE64(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_22B4BDE80(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_22B4BDF40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C8238, &qword_22B4C6D50);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C8240, &qword_22B4C6D58);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22B4C6CD0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = *MEMORY[0x277D86360];
  *(v4 + v5) = 1;
  type metadata accessor for XPCObject();
  swift_storeEnumTagMultiPayload();
  v6 = (v4 + v1);
  v7 = *(v0 + 48);
  *v6 = *MEMORY[0x277D86250];
  *(v6 + v7) = 86400;
  swift_storeEnumTagMultiPayload();
  v8 = (v4 + 2 * v1);
  v9 = *(v0 + 48);
  *v8 = *MEMORY[0x277D86270];
  *(v8 + v9) = 43200;
  swift_storeEnumTagMultiPayload();
  v10 = (v4 + 3 * v1);
  v11 = (v10 + *(v0 + 48));
  *v10 = *MEMORY[0x277D86340];
  v12 = *MEMORY[0x277D86348];
  *v11 = sub_22B4C51A0();
  v11[1] = v13;
  swift_storeEnumTagMultiPayload();
  v14 = (v4 + 4 * v1);
  v15 = *(v0 + 48);
  *v14 = *MEMORY[0x277D86230];
  *(v14 + v15) = 0;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86330])
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = *(v0 + 48);
  v18 = (v4 + 5 * v1);
  *v18 = *MEMORY[0x277D86330];
  *(v18 + v17) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86358])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v19 = (v4 + 6 * v1);
  v20 = *(v0 + 48);
  *v19 = *MEMORY[0x277D86358];
  *(v19 + v20) = 43200;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86398])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v21 = (&v4[v1] - v1);
  v22 = *(v0 + 48);
  *v21 = *MEMORY[0x277D86398];
  *(v21 + v22) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86390])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v23 = *(v0 + 48);
  v24 = &v4[v1];
  *v24 = *MEMORY[0x277D86390];
  *(v24 + v23) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86320])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v25 = (v4 + 9 * v1);
  v26 = *(v0 + 48);
  *v25 = *MEMORY[0x277D86320];
  *(v25 + v26) = 5242880;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86268])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v27 = (v4 + 10 * v1);
  v28 = *(v0 + 48);
  *v27 = *MEMORY[0x277D86268];
  *(v27 + v28) = *MEMORY[0x277D862C0];
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86280])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v29 = (v4 + 11 * v1);
  v30 = (v29 + *(v0 + 48));
  *v29 = *MEMORY[0x277D86280];
  *v30 = 0xD000000000000025;
  v30[1] = 0x800000022B4C77F0;
  result = swift_storeEnumTagMultiPayload();
  if (*MEMORY[0x277D86278])
  {
    v31 = (v4 + 12 * v1);
    v32 = *(v0 + 48);
    *v31 = *MEMORY[0x277D86278];
    *(v31 + v32) = 1;
    swift_storeEnumTagMultiPayload();
    v33 = sub_22B4BE678(v3);
    swift_setDeallocating();
    swift_arrayDestroy();
    result = swift_deallocClassInstance();
    static SubmitEventsActivityConfig.activityFlags = v33;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t *SubmitEventsActivityConfig.activityFlags.unsafeMutableAddressor()
{
  if (qword_280C53730 != -1)
  {
    swift_once();
  }

  return &static SubmitEventsActivityConfig.activityFlags;
}

uint64_t static SubmitEventsActivityConfig.activityFlags.getter()
{
  if (qword_280C53730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static SubmitEventsActivityConfig.activityFlags.setter(uint64_t a1)
{
  if (qword_280C53730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static SubmitEventsActivityConfig.activityFlags = a1;
}

uint64_t (*static SubmitEventsActivityConfig.activityFlags.modify())()
{
  if (qword_280C53730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_22B4BE52C()
{
  if (qword_280C53730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

unint64_t sub_22B4BE5C8(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_22B4C5480();

  return sub_22B4BE60C(a1, v4);
}

unint64_t sub_22B4BE60C(uint64_t a1, uint64_t a2)
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

unint64_t sub_22B4BE678(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C8240, &qword_22B4C6D58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C8248, &qword_22B4C6D60);
    v8 = sub_22B4C53C0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_22B4BE828(v10, v6);
      v12 = *v6;
      result = sub_22B4BE5C8(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for XPCObject();
      result = sub_22B4AF3A0(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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

uint64_t sub_22B4BE828(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C8240, &qword_22B4C6D58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL static XPCObject.== infix(_:_:)()
{
  v0 = XPCObject.obj.getter();
  v1 = XPCObject.obj.getter();
  v2 = xpc_equal(v0, v1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

BOOL sub_22B4BE8FC()
{
  v0 = XPCObject.obj.getter();
  v1 = XPCObject.obj.getter();
  v2 = xpc_equal(v0, v1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t XPCDictionary.keys.getter(void *a1)
{
  count = xpc_dictionary_get_count(a1);
  v3 = MEMORY[0x277D84F90];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || count > *(v3 + 3) >> 1)
  {
    if (*(v3 + 2) <= count)
    {
      v5 = count;
    }

    else
    {
      v5 = *(v3 + 2);
    }

    v3 = sub_22B4BB170(isUniquelyReferenced_nonNull_native, v5, 0, v3);
  }

  v13 = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = &v13;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_22B4BF2FC;
  *(v7 + 24) = v6;
  aBlock[4] = sub_22B4BF3B4;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4BEAFC;
  aBlock[3] = &block_descriptor;
  v8 = _Block_copy(aBlock);

  xpc_dictionary_apply(a1, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    return v11;
  }

  return result;
}

uint64_t sub_22B4BEAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v5) = v6(a2, a3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

unsigned __int8 *XPCDictionary.subscript.getter@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_22B4C5170();
  v5 = xpc_dictionary_get_value(a1, (v4 + 32));

  return XPCObject.init(_:)(v5, a2);
}

void (*XPCDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a2;
  v8[1] = a3;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8C80B0, qword_22B4C6520) - 8) + 64);
  if (v7)
  {
    v9[2] = swift_coroFrameAlloc();
    v9[3] = swift_coroFrameAlloc();
    v9[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v9[2] = malloc(v10);
    v9[3] = malloc(v10);
    v9[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v9[5] = v11;
  v13 = *v3;
  v9[6] = v13;
  v14 = sub_22B4C5170();
  v15 = xpc_dictionary_get_value(v13, (v14 + 32));

  XPCObject.init(_:)(v15, v12);
  return sub_22B4BED28;
}

void sub_22B4BED28(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v4 = v2[3];
    v6 = v2[1];
    sub_22B4AFE58(v3, v4, &unk_27D8C80B0, qword_22B4C6520);
    sub_22B4AFE58(v4, v5, &unk_27D8C80B0, qword_22B4C6520);
    v7 = type metadata accessor for XPCObject();
    LODWORD(v5) = (*(*(v7 - 8) + 48))(v5, 1, v7);

    v8 = v2[2];
    if (v5 == 1)
    {
      sub_22B4ADA60(v2[2], &unk_27D8C80B0, qword_22B4C6520);
      v9 = 0;
    }

    else
    {
      v9 = XPCObject.obj.getter();
      sub_22B4B0CFC(v8);
    }

    v16 = v2[5];
    v17 = v2[6];
    v19 = v2[3];
    v18 = v2[4];
    v21 = v2[1];
    v20 = v2[2];
    v22 = *v2;
    v23 = sub_22B4C5170();

    xpc_dictionary_set_value(v17, (v23 + 32), v9);
    swift_unknownObjectRelease();
    sub_22B4ADA60(v19, &unk_27D8C80B0, qword_22B4C6520);

    sub_22B4ADA60(v16, &unk_27D8C80B0, qword_22B4C6520);
  }

  else
  {
    v10 = v2[4];
    v11 = v2[1];
    sub_22B4AFE58(v3, v10, &unk_27D8C80B0, qword_22B4C6520);
    v12 = type metadata accessor for XPCObject();
    v13 = (*(*(v12 - 8) + 48))(v10, 1, v12);

    v14 = v2[4];
    if (v13 == 1)
    {
      sub_22B4ADA60(v2[4], &unk_27D8C80B0, qword_22B4C6520);
      v15 = 0;
    }

    else
    {
      v15 = XPCObject.obj.getter();
      sub_22B4B0CFC(v14);
    }

    v16 = v2[5];
    v24 = v2[6];
    v19 = v2[3];
    v18 = v2[4];
    v25 = v2[1];
    v20 = v2[2];
    v26 = *v2;
    v27 = sub_22B4C5170();

    xpc_dictionary_set_value(v24, (v27 + 32), v15);
    swift_unknownObjectRelease();
    sub_22B4ADA60(v16, &unk_27D8C80B0, qword_22B4C6520);
  }

  free(v16);
  free(v18);
  free(v19);
  free(v20);

  free(v2);
}

Swift::Bool __swiftcall XPCDictionary.contains(key:)(Swift::String key)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8C80B0, qword_22B4C6520);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = sub_22B4C5170();
  v8 = xpc_dictionary_get_value(v2, (v7 + 32));

  XPCObject.init(_:)(v8, v6);
  v9 = type metadata accessor for XPCObject();
  LOBYTE(v8) = (*(*(v9 - 8) + 48))(v6, 1, v9) != 1;
  sub_22B4ADA60(v6, &unk_27D8C80B0, qword_22B4C6520);
  return v8;
}

uint64_t sub_22B4BF100@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = sub_22B4B161C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_22B4BF140(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22B4BF1F8(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_22B4BF140(a1, &a1[a2]);
  }

  v3 = sub_22B4C4F30();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_22B4C4EF0();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_22B4C4FF0();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_22B4BF2A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22B4BF2FC()
{
  v1 = *(v0 + 16);
  v2 = sub_22B4C51A0();
  v4 = v3;
  v5 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_22B4BB170(0, *(v5 + 2) + 1, 1, v5);
    *v1 = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_22B4BB170((v7 > 1), v8 + 1, 1, v5);
    *v1 = v5;
  }

  *(v5 + 2) = v8 + 1;
  v9 = &v5[16 * v8];
  *(v9 + 4) = v2;
  *(v9 + 5) = v4;
  return 1;
}

uint64_t sub_22B4BF3B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

unint64_t sub_22B4BF3E0()
{
  result = sub_22B4BF4A4();
  if (v1 <= 0x3F)
  {
    result = sub_22B4C5030();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22B4BF4A4()
{
  result = qword_280C52CB8[0];
  if (!qword_280C52CB8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280C52CB8);
  }

  return result;
}

uint64_t sub_22B4BF51C(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_22B4BF550()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22B4BF588()
{
  v0 = sub_22B4C50A0();
  __swift_allocate_value_buffer(v0, qword_280C53758);
  __swift_project_value_buffer(v0, qword_280C53758);
  return sub_22B4C5090();
}

uint64_t sub_22B4BF608()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
}

uint64_t sub_22B4BF640(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;
}

uint64_t sub_22B4BF714(char a1)
{
  result = swift_beginAccess();
  *(v1 + 136) = a1;
  return result;
}

uint64_t static XPCActivity.makeHandler.getter()
{
  swift_beginAccess();
  v0 = static XPCActivity.makeHandler;
  sub_22B4BF808(static XPCActivity.makeHandler);
  return v0;
}

uint64_t sub_22B4BF808(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t static XPCActivity.makeHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = static XPCActivity.makeHandler;
  static XPCActivity.makeHandler = a1;
  qword_280C53AC0 = a2;
  return sub_22B4BC278(v4);
}

Swift::Void __swiftcall XPCActivity.register(disabled:)(Swift::Bool_optional disabled)
{
  v2 = v1;
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6 = sub_22B4C5150();
    v8 = v7;

    if (disabled.value != 2)
    {
      (*(*v2 + 144))(disabled.value);
    }

    sub_22B4C5340();

    aBlock = 0x6C655464756F6C43;
    v30 = 0xEF2E797274656D65;
    MEMORY[0x231893130](v6, v8);

    MEMORY[0x231893130](46, 0xE100000000000000);
    v9 = v2[14];
    v10 = (*(v2[15] + 32))();
    MEMORY[0x231893130](v10);

    v11 = *MEMORY[0x277D86238];
    v33 = sub_22B4C14F0;
    v34 = v2;
    aBlock = MEMORY[0x277D85DD0];
    v30 = 1107296256;
    v31 = sub_22B4B2724;
    v32 = &block_descriptor_0;
    v12 = _Block_copy(&aBlock);

    v13 = sub_22B4C5170();
    xpc_activity_register((v13 + 32), v11, v12);

    _Block_release(v12);
    if (qword_280C53750 != -1)
    {
      swift_once();
    }

    v14 = sub_22B4C50A0();
    __swift_project_value_buffer(v14, qword_280C53758);

    v15 = sub_22B4C5080();
    v16 = sub_22B4C52A0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock = v18;
      *v17 = 136315138;
      v19 = sub_22B4BB27C(0x6C655464756F6C43, 0xEF2E797274656D65, &aBlock);

      *(v17 + 4) = v19;
      _os_log_impl(&dword_22B4AC000, v15, v16, "registered: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x2318939B0](v18, -1, -1);
      MEMORY[0x2318939B0](v17, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_280C53750 != -1)
    {
      swift_once();
    }

    v20 = sub_22B4C50A0();
    __swift_project_value_buffer(v20, qword_280C53758);

    oslog = sub_22B4C5080();
    v21 = sub_22B4C52A0();

    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock = v23;
      *v22 = 136315138;
      v24 = v2[14];
      v25 = (*(v2[15] + 32))();
      v27 = sub_22B4BB27C(v25, v26, &aBlock);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_22B4AC000, oslog, v21, "unable to register: %s, nil bundleIdentifier", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x2318939B0](v23, -1, -1);
      MEMORY[0x2318939B0](v22, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_22B4BFD70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8C80B0, qword_22B4C6520);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v48 = &v44 - v3;
  v47 = type metadata accessor for XPCObject();
  v4 = *(v47 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v47);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C82C0, &qword_22B4C6F28);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v15 = *(v0 + 112);
  v16 = *(v0 + 120);
  v17 = *(v16 + 24);
  v18 = *(v17(v15, v16) + 16);

  if (!v18)
  {
    return 0;
  }

  v49 = v14;
  v50 = v12;
  v51 = XPCDictionary.init()();
  result = v17(v15, v16);
  v20 = 0;
  v22 = result + 64;
  v21 = *(result + 64);
  v44 = v4;
  v45 = result;
  v23 = 1 << *(result + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v21;
  v26 = (v23 + 63) >> 6;
  v46 = (v4 + 56);
  v27 = &unk_27D8C82C8;
  while (v25)
  {
    v28 = v20;
    v30 = v49;
    v29 = v50;
LABEL_14:
    v33 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v34 = v33 | (v28 << 6);
    v35 = *(*(v45 + 48) + 8 * v34);
    sub_22B4B1564(*(v45 + 56) + *(v44 + 72) * v34, v7);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, &unk_22B4C6F30);
    v37 = *(v36 + 48);
    *v29 = v35;
    sub_22B4AF3A0(v7, v29 + v37);
    (*(*(v36 - 8) + 56))(v29, 0, 1, v36);
    v32 = v28;
LABEL_15:
    sub_22B4C18FC(v29, v30);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, &unk_22B4C6F30);
    if ((*(*(v38 - 8) + 48))(v30, 1, v38) == 1)
    {

      return v51;
    }

    v39 = *v30;
    sub_22B4AF3A0(v30 + *(v38 + 48), v7);
    sub_22B4C51A0();
    v40 = v27;
    v41 = v48;
    sub_22B4B1564(v7, v48);
    (*v46)(v41, 0, 1, v47);
    v42 = v41;
    v27 = v40;
    XPCDictionary.subscript.setter(v42);
    result = sub_22B4B0CFC(v7);
    v20 = v32;
  }

  if (v26 <= v20 + 1)
  {
    v31 = v20 + 1;
  }

  else
  {
    v31 = v26;
  }

  v32 = v31 - 1;
  v30 = v49;
  v29 = v50;
  while (1)
  {
    v28 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v28 >= v26)
    {
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, &unk_22B4C6F30);
      (*(*(v43 - 8) + 56))(v29, 1, 1, v43);
      v25 = 0;
      goto LABEL_15;
    }

    v25 = *(v22 + 8 * v28);
    ++v20;
    if (v25)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B4C01A8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C80C0, &qword_22B4C6538);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v46 - v6;
  type metadata accessor for XPCActivityHandle();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = swift_unknownObjectRetain();
  state = xpc_activity_get_state(v9);
  if (state == 2)
  {
    if (qword_280C53750 != -1)
    {
      swift_once();
    }

    v22 = sub_22B4C50A0();
    __swift_project_value_buffer(v22, qword_280C53758);

    v23 = sub_22B4C5080();
    v24 = sub_22B4C52D0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v47 = v26;
      *v25 = 136315138;
      v27 = *(v2 + 112);
      v28 = (*(*(v2 + 120) + 32))();
      v30 = sub_22B4BB27C(v28, v29, &v47);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_22B4AC000, v23, v24, "run: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x2318939B0](v26, -1, -1);
      MEMORY[0x2318939B0](v25, -1, -1);
    }

    should_defer = xpc_activity_should_defer(*(v8 + 16));
    v32 = *(v8 + 16);
    if (!should_defer)
    {
      xpc_activity_set_state(v32, 4);
      v44 = sub_22B4C5240();
      (*(*(v44 - 8) + 56))(v7, 1, 1, v44);
      v45 = swift_allocObject();
      v45[2] = 0;
      v45[3] = 0;
      v45[4] = v2;
      v45[5] = v8;

      sub_22B4B92EC(0, 0, v7, &unk_22B4C6F18, v45);
    }

    xpc_activity_set_state(v32, 3);
LABEL_16:
  }

  if (!state)
  {
    if (qword_280C53750 != -1)
    {
      swift_once();
    }

    v11 = sub_22B4C50A0();
    __swift_project_value_buffer(v11, qword_280C53758);

    v12 = sub_22B4C5080();
    v13 = sub_22B4C52A0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v47 = v15;
      *v14 = 136315138;
      v16 = *(v2 + 112);
      v17 = (*(*(v2 + 120) + 32))();
      v19 = sub_22B4BB27C(v17, v18, &v47);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_22B4AC000, v12, v13, "checkin: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x2318939B0](v15, -1, -1);
      MEMORY[0x2318939B0](v14, -1, -1);
    }

    v20 = sub_22B4BFD70();
    if (v20)
    {
      v21 = v20;
      if (xpc_activity_copy_criteria(*(v8 + 16)))
      {

        swift_unknownObjectRelease();
      }

      else
      {
        xpc_activity_set_criteria(*(v8 + 16), v21);
      }

      return swift_unknownObjectRelease();
    }

    goto LABEL_16;
  }

  if (qword_280C53750 != -1)
  {
    swift_once();
  }

  v34 = sub_22B4C50A0();
  __swift_project_value_buffer(v34, qword_280C53758);
  swift_retain_n();

  v35 = sub_22B4C5080();
  v36 = sub_22B4C52B0();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v47 = v38;
    *v37 = 136315394;
    v39 = *(v2 + 112);
    v40 = (*(*(v2 + 120) + 32))();
    v42 = sub_22B4BB27C(v40, v41, &v47);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2048;
    v43 = xpc_activity_get_state(*(v8 + 16));

    *(v37 + 14) = v43;

    _os_log_impl(&dword_22B4AC000, v35, v36, "activity: %s, encountered unrecognized XPC activity state: %ld", v37, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    MEMORY[0x2318939B0](v38, -1, -1);
    MEMORY[0x2318939B0](v37, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_22B4C07AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22B4C07CC, a4, 0);
}

uint64_t sub_22B4C07CC()
{
  v1 = v0[2];
  sub_22B4C082C(v0[3]);
  v2 = v0[1];

  return v2();
}

void sub_22B4C082C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C80C0, &qword_22B4C6538);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v27 - v8;
  v10 = (*(v4 + 136))(v7);
  v11 = *(a1 + 16);
  if (v10)
  {
    xpc_activity_set_state(*(a1 + 16), 5);
    if (qword_280C53750 != -1)
    {
      swift_once();
    }

    v12 = sub_22B4C50A0();
    __swift_project_value_buffer(v12, qword_280C53758);

    v28 = sub_22B4C5080();
    v13 = sub_22B4C52B0();

    if (os_log_type_enabled(v28, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136315138;
      v16 = v2[14];
      v17 = (*(v2[15] + 32))();
      v19 = sub_22B4BB27C(v17, v18, aBlock);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_22B4AC000, v28, v13, "disabled: skipping %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x2318939B0](v15, -1, -1);
      MEMORY[0x2318939B0](v14, -1, -1);
    }

    else
    {
      v26 = v28;
    }
  }

  else
  {
    aBlock[4] = sub_22B4C153C;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B4B2724;
    aBlock[3] = &block_descriptor_8;
    v20 = _Block_copy(aBlock);

    v21 = xpc_activity_add_eligibility_changed_handler();
    _Block_release(v20);
    v22 = sub_22B4C5240();
    (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
    v23 = sub_22B4C1544();
    v24 = swift_allocObject();
    v24[2] = v2;
    v24[3] = v23;
    v24[4] = v21;
    v24[5] = a1;
    v24[6] = v2;
    v24[7] = v4;
    swift_retain_n();

    v25 = sub_22B4B6358(0, 0, v9, &unk_22B4C6EF8, v24);
    (*(*v2 + 120))(v25);
  }
}

uint64_t sub_22B4C0BD4(_xpc_activity_s *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C80C0, &qword_22B4C6538);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  result = xpc_activity_should_defer(a1);
  if (result)
  {
    v9 = sub_22B4C5240();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a2;

    sub_22B4B92EC(0, 0, v7, &unk_22B4C6F08, v10);
  }

  return result;
}

uint64_t sub_22B4C0D10()
{
  if ((*(**(v0 + 16) + 112))())
  {
    v1 = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8C82B0, &qword_22B4C6328);
    sub_22B4C5260();
    (*(*v1 + 120))(0);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B4C0E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return MEMORY[0x2822009F8](sub_22B4C0E24, a6, 0);
}

uint64_t sub_22B4C0E24()
{
  result = swift_beginAccess();
  v2 = static XPCActivity.makeHandler;
  v0[11] = static XPCActivity.makeHandler;
  if (v2)
  {
    v3 = v0[10];
    v0[12] = qword_280C53AC0;
    v4 = *(v3 + 112);
    v5 = *(v3 + 120);

    v9 = (v2 + *v2);
    v6 = v2[1];
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_22B4C0F6C;
    v8 = v0[10];

    return v9(v4, v5, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22B4C0F6C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = a2;
  v5 = v3[13];
  v6 = v3[12];
  v7 = v3[11];
  v8 = v3[10];
  v10 = *v2;
  v4[14] = a1;

  sub_22B4BC278(v7);

  return MEMORY[0x2822009F8](sub_22B4C10C8, v8, 0);
}

uint64_t sub_22B4C10C8()
{
  sub_22B4C5280();
  v1 = v0[14];
  v2 = v0[7];
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 16);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_22B4C1258;
  v7 = v0[14];

  return v9(ObjectType, v2);
}

uint64_t sub_22B4C1258()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B4C1368, v2, 0);
}

uint64_t sub_22B4C1368()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  swift_unknownObjectRelease();
  sub_22B4C1640(v4, v2, v3);
  v5 = v0[1];

  return v5();
}

uint64_t XPCActivity.__allocating_init(handlerType:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 120) = a2;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 112) = a1;
  return v4;
}

uint64_t XPCActivity.init(handlerType:)(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  *(v2 + 120) = a2;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 112) = a1;
  return v2;
}

uint64_t XPCActivity.deinit()
{
  v1 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t XPCActivity.__deallocating_deinit()
{
  v1 = *(v0 + 128);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_22B4C1544()
{
  result = qword_280C52CE8;
  if (!qword_280C52CE8)
  {
    type metadata accessor for XPCActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C52CE8);
  }

  return result;
}

uint64_t sub_22B4C1598()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22B4B2534;

  return sub_22B4C0E00(v5, v6, v7, v2, v3, v4);
}

void sub_22B4C1640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    xpc_activity_remove_eligibility_changed_handler();
  }

  xpc_activity_set_state(*(a2 + 16), 5);
  if (qword_280C53750 != -1)
  {
    swift_once();
  }

  v5 = sub_22B4C50A0();
  __swift_project_value_buffer(v5, qword_280C53758);

  oslog = sub_22B4C5080();
  v6 = sub_22B4C52D0();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = *(a3 + 112);
    v10 = (*(*(a3 + 120) + 32))();
    v12 = sub_22B4BB27C(v10, v11, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_22B4AC000, oslog, v6, "done: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2318939B0](v8, -1, -1);
    MEMORY[0x2318939B0](v7, -1, -1);
  }
}

uint64_t sub_22B4C17D0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22B4B2628;

  return sub_22B4C0CF0(v3, v4, v5, v2);
}

uint64_t sub_22B4C1864()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22B4B2534;

  return sub_22B4C07AC(v4, v5, v6, v2, v3);
}

uint64_t sub_22B4C18FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8C82C0, &qword_22B4C6F28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t XPCError.description.getter(void *a1)
{
  if (xpc_dictionary_get_string(a1, "XPCErrorDescription"))
  {
    return sub_22B4C51A0();
  }

  else
  {
    return 0x64696C61766E693CLL;
  }
}

uint64_t XPCError.errorDescription.getter(void *a1)
{
  if (xpc_dictionary_get_string(a1, "XPCErrorDescription"))
  {
    return sub_22B4C51A0();
  }

  else
  {
    return 0x64696C61766E693CLL;
  }
}

uint64_t sub_22B4C1B84()
{
  if (xpc_dictionary_get_string(*v0, "XPCErrorDescription"))
  {
    return sub_22B4C51A0();
  }

  else
  {
    return 0x64696C61766E693CLL;
  }
}

uint64_t XPCIncomingConnection.auditToken.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  xpc_connection_get_audit_token();
  result = 0;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned __int8 *XPCIncomingConnection.entitlementValue(forKey:)@<X0>(uint64_t a1@<X8>)
{
  sub_22B4C5170();
  v2 = xpc_connection_copy_entitlement_value();

  return XPCObject.init(_:)(v2, a1);
}

void *XPCIncomingConnection.makeConnection(targetQ:delegate:)(void *a1, uint64_t a2, uint64_t a3, _xpc_connection_s *a4)
{
  type metadata accessor for XPCConnection();
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = a1;
  v9 = sub_22B4C2AE0(a4, v8, a2, a3);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v9;
}

uint64_t XPCConnection.conn.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  return swift_unknownObjectRetain();
}

uint64_t XPCConnection.conn.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  return swift_unknownObjectRelease();
}

uint64_t XPCConnection.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 32);
  return result;
}