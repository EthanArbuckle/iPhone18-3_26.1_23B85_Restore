uint64_t sub_252F33018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576340, &qword_252F54D60) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576360, &qword_252F54D68) + 28);
  v7 = *MEMORY[0x277CDF3D0];
  v8 = sub_252F531EC();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  *v5 = KeyPath;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576308, &qword_252F54CE0);
  v10 = *(*(v9 - 8) + 16);

  return v10(a2, a1, v9);
}

uint64_t sub_252F33130()
{
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v0 = sub_252F5316C();
  __swift_project_value_buffer(v0, qword_27F57B800);
  v1._object = 0x8000000252F583E0;
  v2._countAndFlagsBits = 0xD000000000000068;
  v2._object = 0x8000000252F58350;
  v1._countAndFlagsBits = 0xD000000000000028;
  Logger.debug(output:test:caller:)(v1, 0, v2);
  if (qword_27F575E18 != -1)
  {
    swift_once();
  }

  v3 = *(type metadata accessor for TemperatureView() + 24);
  sub_252F53ACC();
  return sub_252F5311C();
}

uint64_t sub_252F33274(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - v4;
  v6 = sub_252F52FBC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v11 = sub_252F5316C();
  __swift_project_value_buffer(v11, qword_27F57B800);
  v12._countAndFlagsBits = 0xD00000000000001CLL;
  v12._object = 0x8000000252F58080;
  v13._object = 0x8000000252F58350;
  v13._countAndFlagsBits = 0xD000000000000068;
  Logger.debug(output:test:caller:)(v12, 0, v13);
  v14 = *(type metadata accessor for TemperatureSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
  sub_252F530BC();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_252F25CDC(v5, &qword_27F576050, &unk_252F54880);
  }

  (*(v7 + 32))(v10, v5, v6);
  v16 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  v17 = a1 + *(type metadata accessor for TemperatureView() + 20);
  if (*v17)
  {
    v18 = *v17;
    sub_252F5391C();

    sub_252F53B3C();
    v19 = sub_252F5396C();

    [v16 setBundleId_];

    v20 = sub_252F52F8C();
    [v16 setPunchOutUri_];

    v21 = v18;
    v22 = v16;
    sub_252F5392C();

    strcpy(&v26, "Punchout to ");
    BYTE5(v26._object) = 0;
    HIWORD(v26._object) = -5120;
    sub_252F33D18(&qword_27F5763D8, MEMORY[0x277CC9260]);
    v23 = sub_252F53C9C();
    MEMORY[0x2530AF890](v23);

    MEMORY[0x2530AF890](46, 0xE100000000000000);
    v24._object = 0x8000000252F58350;
    v24._countAndFlagsBits = 0xD000000000000068;
    Logger.debug(output:test:caller:)(v26, 0, v24);

    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    v25 = *(v17 + 8);
    sub_252F5394C();
    sub_252F33D18(&qword_27F575E48, MEMORY[0x277D63F60]);
    result = sub_252F5325C();
    __break(1u);
  }

  return result;
}

uint64_t sub_252F336B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_252F33710(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TemperatureView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F33774()
{
  v1 = *(*(type metadata accessor for TemperatureView() - 8) + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);

  return sub_252F32B70(v2);
}

uint64_t objectdestroy_2Tm()
{
  v2 = type metadata accessor for TemperatureView();
  OUTLINED_FUNCTION_3_5(v2);
  v26 = *(v4 + 64);
  v5 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_0_1(v6);
  (*(v7 + 8))(v5);
  v8 = type metadata accessor for TemperatureSnippetModel();
  v9 = v8[5];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_1(v10);
  v12 = *(v11 + 8);
  v12(v5 + v9, v10);
  v12(v5 + v8[6], v10);
  v13 = v8[7];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  OUTLINED_FUNCTION_0_1(v14);
  (*(v15 + 8))(v5 + v13);
  v16 = v8[8];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
  OUTLINED_FUNCTION_0_1(v17);
  (*(v18 + 8))(v5 + v16);

  v19 = *(v0 + 32);
  v20 = sub_252F5314C();
  OUTLINED_FUNCTION_0_1(v20);
  (*(v21 + 8))(v5 + v19);
  v22 = OUTLINED_FUNCTION_2_4();

  return MEMORY[0x2821FE8E8](v22, v23, v24);
}

uint64_t sub_252F33A1C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TemperatureView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_252F33A90()
{
  result = qword_27F576580;
  if (!qword_27F576580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576570, &qword_252F55220);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576308, &qword_252F54CE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576340, &qword_252F54D60);
    sub_252F25B24(&qword_27F576348, &qword_27F576308, &qword_252F54CE0);
    sub_252F2D8D4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576580);
  }

  return result;
}

void sub_252F33C00()
{
  type metadata accessor for TemperatureSnippetModel();
  if (v0 <= 0x3F)
  {
    sub_252F252C8();
    if (v1 <= 0x3F)
    {
      sub_252F5314C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_252F33C9C()
{
  result = qword_27F576598;
  if (!qword_27F576598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5765A0, "$U");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576598);
  }

  return result;
}

uint64_t sub_252F33D18(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Void __swiftcall Logger.debug(output:test:caller:)(Swift::String output, Swift::Bool test, Swift::String caller)
{
  countAndFlagsBits = caller._countAndFlagsBits;
  object = output._object;
  v20 = output._countAndFlagsBits;
  v23 = 46;
  v24 = 0xE100000000000000;
  v22 = &v23;
  v5 = sub_252F34D68(sub_252F34E98, v21, caller._countAndFlagsBits, caller._object);
  if (v6)
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_1_2();
    v5 = sub_252F539DC();
  }

  v7 = v5;
  v23 = 47;
  v24 = 0xE100000000000000;
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_1_2();
  sub_252F34D68(v8, v9, v10, v11);
  v13 = v12;

  v14 = sub_252F5315C();
  v15 = sub_252F53AAC();

  v16 = os_log_type_enabled(v14, v15);
  if (v13)
  {
    if (v16)
    {
      v17 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v17 = 136446466;
LABEL_8:
      OUTLINED_FUNCTION_1_2();
      v18 = sub_252F53A4C();
      MEMORY[0x2530AF850](v18);
      OUTLINED_FUNCTION_5_4();
      v19 = sub_252F347B4(countAndFlagsBits, v7, &v23);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_252F347B4(v20, object, &v23);
      _os_log_impl(&dword_252F17000, v14, v15, "%{public}s: %s", v17, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_4_4();
    }

LABEL_9:

    return;
  }

  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = swift_slowAlloc();
  v23 = swift_slowAlloc();
  *v17 = 136446466;
  OUTLINED_FUNCTION_1_2();
  if (v7 >> 14 >= sub_252F539DC() >> 14)
  {
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_252F34010()
{
  v0 = sub_252F5316C();
  __swift_allocate_value_buffer(v0, qword_27F57B800);
  __swift_project_value_buffer(v0, qword_27F57B800);
  if (qword_27F575E18 != -1)
  {
    swift_once();
  }

  v1 = qword_27F57B818;
  return sub_252F5317C();
}

uint64_t sub_252F3409C()
{
  sub_252F34F18();
  result = sub_252F53B4C();
  qword_27F57B818 = result;
  return result;
}

Swift::Void __swiftcall Logger.info(output:addToSummary:test:caller:)(Swift::String output, Swift::Bool addToSummary, Swift::Bool test, Swift::String caller)
{
  countAndFlagsBits = caller._countAndFlagsBits;
  object = output._object;
  v6 = 0x65725F7261646172;
  v35 = 46;
  v36 = 0xE100000000000000;
  if (addToSummary)
  {
    v7 = 0xEF202D2074726F70;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  v34 = &v35;
  if (!addToSummary)
  {
    v6 = 0;
  }

  v31 = output._countAndFlagsBits;
  v32 = v6;
  v8 = sub_252F34D68(sub_252F34FC0, v33, caller._countAndFlagsBits, caller._object);
  if (v9)
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_1_2();
    v8 = sub_252F539DC();
  }

  v10 = v8;
  v35 = 47;
  v36 = 0xE100000000000000;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_2();
  sub_252F34D68(v11, v12, v13, v14);
  v16 = v15;

  v17 = sub_252F5315C();
  v18 = sub_252F53A9C();

  v19 = os_log_type_enabled(v17, v18);
  if (v16)
  {
    if (v19)
    {
      v20 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v20 = 136315650;
      v21 = sub_252F347B4(v32, v7, &v35);

      *(v20 + 4) = v21;
      *(v20 + 12) = 2082;
      OUTLINED_FUNCTION_1_2();
      v22 = sub_252F53A4C();
      MEMORY[0x2530AF850](v22);
      OUTLINED_FUNCTION_5_4();
      v23 = sub_252F347B4(countAndFlagsBits, v7, &v35);

      *(v20 + 14) = v23;
      *(v20 + 22) = 2080;
      *(v20 + 24) = sub_252F347B4(v31, object, &v35);
      _os_log_impl(&dword_252F17000, v17, v18, "%s%{public}s: %s", v20, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_4();
LABEL_14:
      OUTLINED_FUNCTION_4_4();
LABEL_16:

      return;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (!v19)
  {
    goto LABEL_15;
  }

  v24 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  *v24 = 136315650;
  v25 = sub_252F347B4(v32, v7, &v35);

  *(v24 + 4) = v25;
  *(v24 + 12) = 2082;
  OUTLINED_FUNCTION_1_2();
  if (v10 >> 14 >= sub_252F539DC() >> 14)
  {
    OUTLINED_FUNCTION_1_2();
    v26 = sub_252F53A4C();
    v27 = MEMORY[0x2530AF850](v26);
    v29 = v28;

    v30 = sub_252F347B4(v27, v29, &v35);

    *(v24 + 14) = v30;
    *(v24 + 22) = 2080;
    *(v24 + 24) = sub_252F347B4(v31, object, &v35);
    _os_log_impl(&dword_252F17000, v17, v18, "%s%{public}s: %s", v24, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_4();
    goto LABEL_14;
  }

  __break(1u);
}

Swift::Void __swiftcall Logger.error(output:test:file:function:line:)(Swift::String output, Swift::Bool test, Swift::String file, Swift::String function, Swift::Int line)
{
  object = file._object;
  countAndFlagsBits = file._countAndFlagsBits;
  v8 = output._object;
  v98[0] = 47;
  v98[1] = 0xE100000000000000;
  v97 = v98;
  sub_252F34D68(sub_252F34FC0, v96, file._countAndFlagsBits, file._object);
  v10 = v9;

  v11 = sub_252F5315C();
  v12 = sub_252F53ABC();

  v13 = os_log_type_enabled(v11, v12);
  if (v10)
  {
    if (v13)
    {
      v14 = swift_slowAlloc();
      v98[0] = swift_slowAlloc();
      v22 = OUTLINED_FUNCTION_2_5(4.8154e-34, v98[0], v15, v16, v17, v18, v19, v20, v21);
      *(v14 + 4) = v22;
      v30 = OUTLINED_FUNCTION_6_3(v22, v23, v24, v25, v26, v27, v28, v29);
      *(v14 + 24) = OUTLINED_FUNCTION_3_6(v30, v31, v32, v33, v34, v35, v36, v37, v91);
      *(v14 + 32) = line;
      OUTLINED_FUNCTION_0_3();
      OUTLINED_FUNCTION_1_2();
      v38 = sub_252F53A4C();
      MEMORY[0x2530AF850](v38);
      OUTLINED_FUNCTION_5_4();
      v39 = sub_252F347B4(countAndFlagsBits, v8, v98);

      *(v14 + 34) = v39;
      OUTLINED_FUNCTION_7_4(v40, v41, v42, v43, v44, v45, v46, v47, v92, v94, line);
      OUTLINED_FUNCTION_8_3(&dword_252F17000, v48, v49, "%s\n%{public}s: %s\n    at %{public}s:%{public}ld");
      swift_arrayDestroy();
LABEL_9:
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_4_4();
    }

LABEL_10:

    return;
  }

  if (!v13)
  {
    goto LABEL_10;
  }

  v50 = swift_slowAlloc();
  v95 = swift_slowAlloc();
  v98[0] = v95;
  v58 = OUTLINED_FUNCTION_2_5(4.8154e-34, v95, v51, v52, v53, v54, v55, v56, v57);
  *(v50 + 4) = v58;
  v66 = OUTLINED_FUNCTION_6_3(v58, v59, v60, v61, v62, v63, v64, v65);
  *(v50 + 24) = OUTLINED_FUNCTION_3_6(v66, v67, v68, v69, v70, v71, v72, v73, v91);
  *(v50 + 32) = line;
  OUTLINED_FUNCTION_1_2();
  v74 = sub_252F539DC();
  v75 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v75 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v75 >= v74 >> 14)
  {
    OUTLINED_FUNCTION_1_2();
    v76 = sub_252F53A4C();
    v77 = MEMORY[0x2530AF850](v76);
    v79 = v78;

    v80 = sub_252F347B4(v77, v79, v98);

    *(v50 + 34) = v80;
    OUTLINED_FUNCTION_7_4(v81, v82, v83, v84, v85, v86, v87, v88, v93, v95, line);
    OUTLINED_FUNCTION_8_3(&dword_252F17000, v89, v90, "%s\n%{public}s: %s\n    at %{public}s:%{public}ld");
    swift_arrayDestroy();
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_252F347B4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_252F34878(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_252F34EB8(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_252F34878(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_252F34978(a5, a6);
    *a1 = v9;
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
    result = sub_252F53BBC();
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

uint64_t sub_252F34978(uint64_t a1, unint64_t a2)
{
  v4 = sub_252F349C4(a1, a2);
  sub_252F34ADC(&unk_2864D6D88);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_252F349C4(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_252F53A0C())
  {
    result = sub_252F34BC0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_252F53B7C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_252F53BBC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252F34ADC(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_252F34C30(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_252F34BC0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5765A8, &qword_252F55308);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_252F34C30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5765A8, &qword_252F55308);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_252F34D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_252F53CAC() & 1;
  }
}

unint64_t sub_252F34D68(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_252F539CC();
    v13[0] = sub_252F53A3C();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_252F34EB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_252F34F18()
{
  result = qword_27F5765B0;
  if (!qword_27F5765B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5765B0);
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

uint64_t OUTLINED_FUNCTION_2_5(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  *v9 = a1;

  return sub_252F347B4(0x65725F7261646172, 0xEF202D2074726F70, va);
}

uint64_t OUTLINED_FUNCTION_3_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  *(v9 + 14) = a1;
  *(v9 + 22) = 2080;

  return sub_252F347B4(a5, v10, va);
}

void OUTLINED_FUNCTION_4_4()
{

  JUMPOUT(0x2530AFFE0);
}

uint64_t OUTLINED_FUNCTION_5_4()
{
}

uint64_t OUTLINED_FUNCTION_6_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  *(v8 + 12) = 2082;

  return sub_252F347B4(v10, v9, va);
}

void OUTLINED_FUNCTION_8_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x34u);
}

uint64_t IconConfiguration.description.getter()
{
  v1 = v0;
  sub_252F53B8C();
  MEMORY[0x2530AF890](0xD000000000000014, 0x8000000252F58430);
  v2 = type metadata accessor for IconConfiguration();
  v3 = v2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  sub_252F530BC();
  if (v13)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v13)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x2530AF890](v4, v5);

  MEMORY[0x2530AF890](0x614E6E6F6369202CLL, 0xEC000000203A656DLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  MEMORY[0x2530AF890]();

  MEMORY[0x2530AF890](0x6F436E6F6369202CLL, 0xED0000203A726F6CLL);
  v6 = v2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  sub_252F530BC();
  if (v14)
  {
    v7 = v13;
  }

  else
  {
    v7 = 7104878;
  }

  if (v14)
  {
    v8 = v14;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  MEMORY[0x2530AF890](v7, v8);

  MEMORY[0x2530AF890](0xD000000000000010, 0x8000000252F58450);
  v9 = v1 + v2[10];
  sub_252F530BC();
  if (v14)
  {
    v10 = v13;
  }

  else
  {
    v10 = 7104878;
  }

  if (v14)
  {
    v11 = v14;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x2530AF890](v10, v11);

  return 0;
}

uint64_t IconConfiguration.iconName.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  return v1;
}

uint64_t IconConfiguration.iconColor.getter()
{
  v0 = *(type metadata accessor for IconConfiguration() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_29();
  return v2;
}

uint64_t IconConfiguration.init(iconName:iconColor:circleColor:onStateIconName:offStateIconName:action:rgbIconColor:deviceType:onStateMode:offStateMode:)@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, unsigned __int8 *a7, unsigned __int8 *a8)
{
  v29 = *a7;
  v30 = *a8;
  v31 = *a6;
  v9 = type metadata accessor for IconConfiguration();
  v27 = v9[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B8, &qword_252F55E20);
  OUTLINED_FUNCTION_12_2();
  sub_252F5309C();
  v25 = v9[6];
  OUTLINED_FUNCTION_13_3();
  sub_252F5309C();
  v28 = v9[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5765B8, &qword_252F55310);
  sub_252F5309C();
  v10 = v9[10];
  OUTLINED_FUNCTION_12_2();
  sub_252F5309C();
  v26 = v9[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5765C0, &qword_252F55318);
  sub_252F5309C();
  v11 = v9[12];
  OUTLINED_FUNCTION_12_2();
  sub_252F5309C();
  v24 = v9[13];
  OUTLINED_FUNCTION_12_2();
  sub_252F5309C();
  v12 = v9[14];
  v13 = type metadata accessor for DirectInvocationConfig();
  __swift_storeEnumTagSinglePayload(a1 + v12, 1, 1, v13);

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_1(v14);
  v16 = *(v15 + 8);
  v16(a1 + v10, v14);
  OUTLINED_FUNCTION_12_2();
  sub_252F5309C();

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  OUTLINED_FUNCTION_0_1(v17);
  (*(v18 + 8))(a1 + v25);
  sub_252F5309C();
  sub_252F361F0(a4, a1 + v12);
  sub_252F5309C();
  v16(a1 + v27, v14);
  OUTLINED_FUNCTION_12_2();
  sub_252F5309C();
  v16(a1 + v11, v14);
  OUTLINED_FUNCTION_12_2();
  sub_252F5309C();
  v16(a1 + v24, v14);
  OUTLINED_FUNCTION_12_2();
  sub_252F5309C();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
  OUTLINED_FUNCTION_0_1(v19);
  (*(v20 + 8))(a1 + v26);
  sub_252F5309C();
  v21 = v9[7];
  OUTLINED_FUNCTION_13_3();
  sub_252F5309C();
  v22 = v9[8];
  OUTLINED_FUNCTION_13_3();
  sub_252F5309C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
  sub_252F530CC();
  return sub_252F36260(a4);
}

uint64_t IconConfiguration.rgbIconColor.getter()
{
  v0 = *(type metadata accessor for IconConfiguration() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
  sub_252F530BC();
  return v2;
}

uint64_t static IconConfiguration.== infix(_:_:)()
{
  v0 = IconConfiguration.description.getter();
  v2 = v1;
  if (v0 == IconConfiguration.description.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_252F53CAC();
  }

  return v5 & 1;
}

uint64_t IconConfiguration.circleColor.setter()
{
  v0 = *(OUTLINED_FUNCTION_30() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  return OUTLINED_FUNCTION_16_1();
}

uint64_t IconConfiguration.shouldRenderCircle.setter()
{
  v0 = *(type metadata accessor for IconConfiguration() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  return OUTLINED_FUNCTION_17_0();
}

uint64_t IconConfiguration.iconColor.setter()
{
  v0 = *(OUTLINED_FUNCTION_30() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  return OUTLINED_FUNCTION_16_1();
}

uint64_t IconConfiguration.onStateIconName.setter()
{
  v0 = *(OUTLINED_FUNCTION_30() + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  return OUTLINED_FUNCTION_16_1();
}

uint64_t IconConfiguration.offStateIconName.setter()
{
  v0 = *(OUTLINED_FUNCTION_30() + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  return OUTLINED_FUNCTION_16_1();
}

uint64_t IconConfiguration.rgbIconColor.setter()
{
  v0 = *(type metadata accessor for IconConfiguration() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
  return sub_252F530CC();
}

uint64_t IconConfiguration.onStateMode.setter(char *a1)
{
  v1 = *(OUTLINED_FUNCTION_23(a1) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
  return OUTLINED_FUNCTION_17_0();
}

uint64_t IconConfiguration.offStateMode.setter(char *a1)
{
  v1 = *(OUTLINED_FUNCTION_23(a1) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
  return OUTLINED_FUNCTION_17_0();
}

uint64_t IconConfiguration.deviceType.setter(char *a1)
{
  v1 = *(OUTLINED_FUNCTION_23(a1) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
  return OUTLINED_FUNCTION_17_0();
}

uint64_t IconConfiguration.id.getter()
{
  v0 = sub_252F52FEC();
  v1 = OUTLINED_FUNCTION_16(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252F52FDC();
  v8 = sub_252F52FCC();
  (*(v3 + 8))(v7, v0);
  return v8;
}

uint64_t sub_252F35BF4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return IconConfiguration.iconName.setter();
}

uint64_t (*IconConfiguration.iconName.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  v2[4] = sub_252F530AC();
  return sub_252F20BA0;
}

uint64_t (*IconConfiguration.iconColor.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_3_7(v2) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0();
  return sub_252F20BA0;
}

uint64_t IconConfiguration.shouldRenderCircle.getter()
{
  v0 = *(type metadata accessor for IconConfiguration() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  sub_252F530BC();
  return v2;
}

uint64_t type metadata accessor for IconConfiguration()
{
  result = qword_27F576640;
  if (!qword_27F576640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*IconConfiguration.shouldRenderCircle.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_3_7(v2) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0();
  return sub_252F20BA0;
}

uint64_t IconConfiguration.onStateMode.getter()
{
  v0 = *(OUTLINED_FUNCTION_28() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
  return sub_252F530BC();
}

uint64_t sub_252F35E6C@<X0>(_BYTE *a1@<X8>)
{
  result = IconConfiguration.onStateMode.getter();
  *a1 = v3;
  return result;
}

uint64_t (*IconConfiguration.onStateMode.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_3_7(v2) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0();
  return sub_252F20BA0;
}

uint64_t IconConfiguration.offStateMode.getter()
{
  v0 = *(OUTLINED_FUNCTION_28() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
  return sub_252F530BC();
}

uint64_t sub_252F35F98@<X0>(_BYTE *a1@<X8>)
{
  result = IconConfiguration.offStateMode.getter();
  *a1 = v3;
  return result;
}

uint64_t (*IconConfiguration.offStateMode.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_3_7(v2) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0();
  return sub_252F20BA0;
}

uint64_t IconConfiguration.deviceType.getter()
{
  v0 = *(OUTLINED_FUNCTION_28() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
  return sub_252F530BC();
}

uint64_t sub_252F360C4@<X0>(_BYTE *a1@<X8>)
{
  result = IconConfiguration.deviceType.getter();
  *a1 = v3;
  return result;
}

uint64_t (*IconConfiguration.deviceType.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_3_7(v2) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0();
  return sub_252F20BA0;
}

uint64_t IconConfiguration.circleColor.getter()
{
  v0 = *(type metadata accessor for IconConfiguration() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_29();
  return v2;
}

uint64_t sub_252F361F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576460, &qword_252F54F60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F36260(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576460, &qword_252F54F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*IconConfiguration.circleColor.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_3_7(v2) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0();
  return sub_252F20BA0;
}

uint64_t sub_252F36334(uint64_t *a1)
{
  v1 = *a1;

  return IconConfiguration.rgbIconColor.setter();
}

uint64_t (*IconConfiguration.rgbIconColor.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_3_7(v2) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0();
  return sub_252F1EBA8;
}

uint64_t IconConfiguration.onStateIconName.getter()
{
  v0 = *(type metadata accessor for IconConfiguration() + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_29();
  return v2;
}

uint64_t (*IconConfiguration.onStateIconName.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_3_7(v2) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0();
  return sub_252F20BA0;
}

uint64_t IconConfiguration.offStateIconName.getter()
{
  v0 = *(type metadata accessor for IconConfiguration() + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_29();
  return v2;
}

uint64_t sub_252F364D0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t (*IconConfiguration.offStateIconName.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_3_7(v2) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0();
  return sub_252F20BA0;
}

uint64_t IconConfiguration.action.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_28() + 56);

  return sub_252F30B54(v2, v0);
}

uint64_t IconConfiguration.action.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IconConfiguration() + 56);

  return sub_252F36604(a1, v3);
}

uint64_t sub_252F36604(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576460, &qword_252F54F60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F366BC()
{
  v0 = sub_252F53BDC();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_252F36718(char a1)
{
  result = 0x4965746174536E6FLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x4D65746174536E6FLL;
      break;
    case 3:
      result = 0x657461745366666FLL;
      break;
    case 4:
      result = 0x7954656369766564;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x6F43656C63726963;
      break;
    case 7:
      result = 0x6E6F69746361;
      break;
    case 8:
      result = 0x656D614E6E6F6369;
      break;
    case 9:
      result = 0x6F6C6F436E6F6369;
      break;
    case 10:
      result = 0x436E6F6349626772;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_252F368A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252F366BC();
  *a2 = result;
  return result;
}

unint64_t sub_252F368D4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_252F36718(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_252F3691C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252F36708();
  *a1 = result;
  return result;
}

uint64_t sub_252F36944@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252F3670C();
  *a1 = result;
  return result;
}

uint64_t sub_252F3696C(uint64_t a1)
{
  v2 = sub_252F3743C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F369A8(uint64_t a1)
{
  v2 = sub_252F3743C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IconConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576460, &qword_252F54F60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v84 = v80 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5765C8, &qword_252F55320);
  v86 = OUTLINED_FUNCTION_16(v6);
  v87 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v86);
  v11 = v80 - v10;
  v12 = type metadata accessor for IconConfiguration();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 20);
  v100 = 0;
  v101 = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B8, &qword_252F55E20);
  v99 = v19;
  sub_252F5309C();
  v21 = v12[6];
  LOBYTE(v100) = 0;
  v92 = v21;
  OUTLINED_FUNCTION_13_3();
  sub_252F5309C();
  v22 = v12[9];
  LOBYTE(v100) = 48;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5765B8, &qword_252F55310);
  v98 = v22;
  v85 = v23;
  sub_252F5309C();
  v24 = v12[10];
  v100 = 0;
  v101 = 0;
  v96 = v24;
  OUTLINED_FUNCTION_13_3();
  sub_252F5309C();
  v25 = v12[11];
  v100 = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5765C0, &qword_252F55318);
  v97 = v25;
  sub_252F5309C();
  v27 = v12[12];
  v100 = 0;
  v101 = 0;
  v95 = v27;
  OUTLINED_FUNCTION_13_3();
  sub_252F5309C();
  v28 = v12[13];
  v100 = 0;
  v101 = 0;
  v94 = v28;
  OUTLINED_FUNCTION_13_3();
  sub_252F5309C();
  v88 = v12;
  v29 = v12[14];
  v30 = type metadata accessor for DirectInvocationConfig();
  v93 = v29;
  v89 = v18;
  __swift_storeEnumTagSinglePayload(&v18[v29], 1, 1, v30);
  v32 = a1[3];
  v31 = a1[4];
  v91 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_252F3743C();
  v33 = v90;
  sub_252F53CFC();
  if (v33)
  {
    v34 = v89;
    __swift_destroy_boxed_opaque_existential_1(v91);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    OUTLINED_FUNCTION_1(v35);
    v37 = *(v36 + 8);
    v38 = OUTLINED_FUNCTION_26(v99);
    v37(v38);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
    OUTLINED_FUNCTION_0_1(v39);
    (*(v40 + 8))(&v34[v92]);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
    OUTLINED_FUNCTION_0_1(v41);
    (*(v42 + 8))(&v34[v98]);
    v43 = OUTLINED_FUNCTION_26(v96);
    v37(v43);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
    OUTLINED_FUNCTION_0_1(v44);
    (*(v45 + 8))(&v34[v97]);
    v46 = OUTLINED_FUNCTION_26(v95);
    v37(v46);
    v47 = OUTLINED_FUNCTION_26(v94);
    v37(v47);
    return sub_252F36260(&v34[v93]);
  }

  else
  {
    v81 = v30;
    v82 = v26;
    OUTLINED_FUNCTION_21(8);
    v100 = sub_252F53C0C();
    v101 = v48;
    v49 = v89;
    sub_252F5309C();
    OUTLINED_FUNCTION_21(9);
    v90 = v11;
    sub_252F53C0C();
    OUTLINED_FUNCTION_27();
    v50 = v20;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    OUTLINED_FUNCTION_1(v51);
    v53 = *(v52 + 8);
    v54 = v52 + 8;
    v53(v49 + v99, v51);
    OUTLINED_FUNCTION_8_4();
    sub_252F5309C();
    OUTLINED_FUNCTION_21(5);
    v55 = v86;
    OUTLINED_FUNCTION_24();
    v56 = sub_252F53C1C();
    v57 = v50;
    LOBYTE(v50) = v56;
    v80[1] = v54;
    v80[2] = v57;
    v80[3] = v53;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
    OUTLINED_FUNCTION_0_1(v58);
    (*(v59 + 8))(v49 + v92);
    LOBYTE(v100) = v50 & 1;
    sub_252F5309C();
    LOBYTE(v100) = 6;
    OUTLINED_FUNCTION_12_2();
    sub_252F53C0C();
    v60 = v55;
    OUTLINED_FUNCTION_27();
    v61 = v84;
    v62 = OUTLINED_FUNCTION_9_3();
    v63(v62);
    OUTLINED_FUNCTION_8_4();
    sub_252F5309C();
    LOBYTE(v100) = 0;
    OUTLINED_FUNCTION_24();
    sub_252F53C0C();
    OUTLINED_FUNCTION_27();
    v64 = OUTLINED_FUNCTION_9_3();
    v65(v64);
    OUTLINED_FUNCTION_8_4();
    sub_252F5309C();
    OUTLINED_FUNCTION_21(1);
    OUTLINED_FUNCTION_24();
    sub_252F53C0C();
    OUTLINED_FUNCTION_27();
    v66 = OUTLINED_FUNCTION_9_3();
    v67(v66);
    OUTLINED_FUNCTION_8_4();
    sub_252F5309C();
    LOBYTE(v100) = 7;
    sub_252F37B74(&qword_27F5765D8);
    v68 = v81;
    OUTLINED_FUNCTION_24();
    sub_252F53C2C();
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v68);
    sub_252F36604(v61, v49 + v93);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5765E0, &qword_252F55328);
    v102 = 10;
    sub_252F37C68(&qword_27F5765E8);
    OUTLINED_FUNCTION_19_0();
    sub_252F53C2C();
    v69 = v100;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
    OUTLINED_FUNCTION_0_1(v70);
    (*(v71 + 8))(v49 + v97);
    v100 = v69;
    sub_252F5309C();
    v102 = 4;
    sub_252F37490();
    OUTLINED_FUNCTION_25();
    sub_252F53C2C();
    LOBYTE(v69) = v100;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
    OUTLINED_FUNCTION_0_1(v72);
    (*(v73 + 8))(v49 + v98);
    LOBYTE(v100) = v69;
    sub_252F5309C();
    v102 = 2;
    sub_252F374E4();
    OUTLINED_FUNCTION_25();
    sub_252F53C2C();
    v74 = v88;
    v75 = v88[7];
    v102 = v100;
    sub_252F5309C();
    v102 = 3;
    OUTLINED_FUNCTION_19_0();
    sub_252F53C2C();
    v76 = v74[8];
    v102 = v100;
    sub_252F5309C();
    v77 = OUTLINED_FUNCTION_7_5();
    v78(v77, v60);
    sub_252F37538(v49, v83);
    __swift_destroy_boxed_opaque_existential_1(v91);
    return sub_252F3759C(v49);
  }
}

unint64_t sub_252F3743C()
{
  result = qword_27F5765D0;
  if (!qword_27F5765D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5765D0);
  }

  return result;
}

unint64_t sub_252F37490()
{
  result = qword_27F5765F0;
  if (!qword_27F5765F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5765F0);
  }

  return result;
}

unint64_t sub_252F374E4()
{
  result = qword_27F5765F8;
  if (!qword_27F5765F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5765F8);
  }

  return result;
}

uint64_t sub_252F37538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F3759C(uint64_t a1)
{
  v2 = type metadata accessor for IconConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t IconConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576600, &qword_252F55330);
  v6 = OUTLINED_FUNCTION_16(v5);
  v29 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v28 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F3743C();
  sub_252F53D0C();
  v13 = type metadata accessor for IconConfiguration();
  v14 = v13[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_20_0();
  v31 = v15;
  sub_252F530BC();
  v34 = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B8, &qword_252F55E20);
  sub_252F29F68();
  v30 = v16;
  sub_252F53C7C();
  if (v2)
  {
  }

  v17 = v13[13];
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_2_6(1);
  v18 = v2;
  if (v2)
  {

    v18 = 0;
  }

  v19 = v13[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  OUTLINED_FUNCTION_20_0();
  sub_252F530BC();
  LOBYTE(v32) = 5;
  sub_252F53C6C();
  if (v18)
  {
  }

  v20 = v13[10];
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_2_6(6);
  if (v18)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  LOBYTE(v32) = 8;
  sub_252F53C5C();

  v21 = v13[5];
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_2_6(9);

  v22 = v13[14];
  LOBYTE(v32) = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576460, &qword_252F54F60);
  sub_252F37AD4();
  OUTLINED_FUNCTION_15_1();
  v23 = v13[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
  OUTLINED_FUNCTION_20_0();
  sub_252F530BC();
  v34 = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5765C0, &qword_252F55318);
  sub_252F37BB8();
  OUTLINED_FUNCTION_15_1();

  v24 = v13[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
  OUTLINED_FUNCTION_20_0();
  sub_252F530BC();
  v34 = v32;
  v33 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5765B8, &qword_252F55310);
  sub_252F37CD8();
  OUTLINED_FUNCTION_15_1();
  v25 = v13[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
  OUTLINED_FUNCTION_20_0();
  sub_252F530BC();
  v34 = v32;
  v33 = 2;
  sub_252F37DB0();
  OUTLINED_FUNCTION_18_0();
  v26 = v3 + v13[8];
  sub_252F530BC();
  v34 = v32;
  v33 = 3;
  OUTLINED_FUNCTION_18_0();
  return (*(v29 + 8))(v11, v5);
}

unint64_t sub_252F37AD4()
{
  result = qword_27F576608;
  if (!qword_27F576608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576460, &qword_252F54F60);
    sub_252F37B74(&qword_27F576610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576608);
  }

  return result;
}

uint64_t sub_252F37B74(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DirectInvocationConfig();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252F37BB8()
{
  result = qword_27F576618;
  if (!qword_27F576618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5765C0, &qword_252F55318);
    sub_252F37C68(&qword_27F576620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576618);
  }

  return result;
}

uint64_t sub_252F37C68(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5765E0, &qword_252F55328);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252F37CD8()
{
  result = qword_27F576628;
  if (!qword_27F576628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5765B8, &qword_252F55310);
    sub_252F37D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576628);
  }

  return result;
}

unint64_t sub_252F37D5C()
{
  result = qword_27F576630;
  if (!qword_27F576630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576630);
  }

  return result;
}

unint64_t sub_252F37DB0()
{
  result = qword_27F576638;
  if (!qword_27F576638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576638);
  }

  return result;
}

uint64_t sub_252F37E40@<X0>(uint64_t *a1@<X8>)
{
  result = IconConfiguration.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252F37E94()
{
  sub_252F208D4(319, &qword_27F575F18);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_252F2800C(319, &qword_27F576228, &qword_27F5761B8, &qword_252F55E20);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_252F208D4(319, &qword_27F575F30);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_252F208D4(319, &qword_27F576650);
      if (v7 > 0x3F)
      {
        return v5;
      }

      sub_252F2800C(319, &qword_27F576658, &qword_27F5765B8, &qword_252F55310);
      if (v8 > 0x3F)
      {
        return v5;
      }

      sub_252F2800C(319, &qword_27F576660, &qword_27F5765C0, &qword_252F55318);
      if (v9 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_252F3802C();
        v1 = v10;
        if (v11 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_252F3802C()
{
  if (!qword_27F576668)
  {
    type metadata accessor for DirectInvocationConfig();
    v0 = sub_252F53B5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F576668);
    }
  }
}

uint64_t getEnumTagSinglePayload for IconConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for IconConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_252F381EC()
{
  result = qword_27F576670;
  if (!qword_27F576670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576670);
  }

  return result;
}

unint64_t sub_252F38244()
{
  result = qword_27F576678;
  if (!qword_27F576678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576678);
  }

  return result;
}

unint64_t sub_252F3829C()
{
  result = qword_27F576680;
  if (!qword_27F576680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576680);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_6@<X0>(char a1@<W8>)
{
  *(v1 - 65) = a1;
  v3 = *(v1 - 112);

  return sub_252F53C7C();
}

uint64_t OUTLINED_FUNCTION_3_7(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for IconConfiguration();
}

uint64_t OUTLINED_FUNCTION_8_4()
{
  *(v2 - 104) = v0;
  *(v2 - 96) = v1;
  return v2 - 104;
}

uint64_t OUTLINED_FUNCTION_9_3()
{
  result = v0 + v1;
  v4 = *(v2 - 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_1()
{

  return sub_252F53C7C();
}

uint64_t OUTLINED_FUNCTION_16_1()
{

  return sub_252F530CC();
}

uint64_t OUTLINED_FUNCTION_17_0()
{

  return sub_252F530CC();
}

uint64_t OUTLINED_FUNCTION_18_0()
{

  return sub_252F53C7C();
}

uint64_t OUTLINED_FUNCTION_22()
{
  v2 = *(v0 - 104);

  return sub_252F530BC();
}

uint64_t OUTLINED_FUNCTION_23(char *a1)
{
  v3 = *a1;

  return type metadata accessor for IconConfiguration();
}

uint64_t OUTLINED_FUNCTION_28()
{

  return type metadata accessor for IconConfiguration();
}

uint64_t OUTLINED_FUNCTION_29()
{

  return sub_252F530BC();
}

uint64_t OUTLINED_FUNCTION_30()
{

  return type metadata accessor for IconConfiguration();
}

uint64_t DisambiguationOption.action.setter()
{
  v0 = OUTLINED_FUNCTION_12_3();
  v1 = *(type metadata accessor for DisambiguationOption(v0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  return sub_252F5303C();
}

uint64_t DisambiguationOption.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_3_1();
}

uint64_t DisambiguationOption.label.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DisambiguationOption.speechLabel.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_3_1();
}

uint64_t DisambiguationOption.speechLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t (*DisambiguationOption.iconConfig.modify())()
{
  v0 = OUTLINED_FUNCTION_12_3();
  v1 = *(type metadata accessor for DisambiguationOption(v0) + 24);
  return nullsub_1;
}

uint64_t DisambiguationOption.action.getter()
{
  v0 = *(type metadata accessor for DisambiguationOption(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  return sub_252F5302C();
}

uint64_t (*DisambiguationOption.action.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v3 = *(type metadata accessor for DisambiguationOption(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  v2[4] = sub_252F5301C();
  return sub_252F1EBA8;
}

uint64_t sub_252F38834@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252F1B4A8();
  *a2 = result;
  return result;
}

uint64_t sub_252F38864@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252F1B4F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_252F38898@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252F1B4A8();
  *a1 = result;
  return result;
}

uint64_t sub_252F388C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252F38808();
  *a1 = result;
  return result;
}

uint64_t sub_252F388E8(uint64_t a1)
{
  v2 = sub_252F38E14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F38924(uint64_t a1)
{
  v2 = sub_252F38E14();

  return MEMORY[0x2821FE720](a1, v2);
}

void DisambiguationOption.init(from:)()
{
  OUTLINED_FUNCTION_20_1();
  v58 = v0;
  v3 = v2;
  v53 = v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  OUTLINED_FUNCTION_16(v56);
  v54 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  OUTLINED_FUNCTION_10(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - v13;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576688, &qword_252F55560);
  OUTLINED_FUNCTION_16(v57);
  v55 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  v21 = type metadata accessor for DisambiguationOption(0);
  v22 = OUTLINED_FUNCTION_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5_0();
  v27 = (v26 - v25);
  v29 = *(v28 + 24);
  v30 = type metadata accessor for IconConfiguration();
  v59 = v29;
  v60 = v27;
  __swift_storeEnumTagSinglePayload(v27 + v29, 1, 1, v30);
  v31 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_252F38E14();
  v32 = v58;
  sub_252F53CFC();
  if (v32)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_252F2E3C4(v60 + v59, &qword_27F576260, &qword_252F54AA0);
  }

  else
  {
    v52 = v21;
    v58 = v1;
    v33 = v55;
    v34 = v56;
    v35 = sub_252F53C0C();
    v36 = v20;
    v37 = v60;
    *v60 = v35;
    v37[1] = v38;
    v51 = v38;
    v37[2] = sub_252F53C0C();
    v37[3] = v39;
    sub_252F39128(&qword_27F575EC8, type metadata accessor for IconConfiguration);
    v49 = 0;
    v50 = v36;
    sub_252F53C2C();
    v40 = v3;
    v41 = v34;
    v42 = v58;
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v30);
    sub_252F39550(v14, v60 + v59, &qword_27F576260, &qword_252F54AA0);
    sub_252F2A098(&qword_27F576280);
    v43 = v57;
    v44 = v50;
    sub_252F53C2C();
    v45 = v54;
    sub_252F5302C();
    (*(v45 + 8))(v42, v41);
    v46 = *(v52 + 28);
    sub_252F290F0();
    v47 = v60;
    sub_252F5300C();
    (*(v33 + 8))(v44, v43);
    OUTLINED_FUNCTION_2_7();
    sub_252F39C2C(v47, v53, v48);
    __swift_destroy_boxed_opaque_existential_1(v40);
    OUTLINED_FUNCTION_0_4();
    sub_252F39C88();
  }

  OUTLINED_FUNCTION_21_0();
}

unint64_t sub_252F38E14()
{
  result = qword_27F576690;
  if (!qword_27F576690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576690);
  }

  return result;
}

void DisambiguationOption.encode(to:)()
{
  OUTLINED_FUNCTION_20_1();
  v4 = v0;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  OUTLINED_FUNCTION_16(v7);
  v26 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576698, &unk_252F55568);
  OUTLINED_FUNCTION_16(v12);
  v25 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18_1();
  v17 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_252F38E14();
  sub_252F53D0C();
  v18 = *v4;
  v19 = v4[1];
  sub_252F53C5C();
  if (v1)
  {
  }

  v20 = v4[2];
  v21 = v4[3];
  sub_252F53C5C();
  v22 = type metadata accessor for DisambiguationOption(0);
  v23 = *(v22 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  sub_252F29FE4();
  sub_252F53C7C();
  v24 = v4 + *(v22 + 28);
  sub_252F5302C();
  sub_252F290F0();
  sub_252F5300C();
  sub_252F2A098(&qword_27F576298);
  sub_252F53C7C();
  (*(v26 + 8))(v2, v7);
  (*(v25 + 8))(v3, v12);
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_252F39128(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252F391A0@<X0>(uint64_t *a1@<X8>)
{
  result = DisambiguationOption.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t DisambiguationSnippetModel.displayText.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  return v1;
}

uint64_t sub_252F39244(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return DisambiguationSnippetModel.displayText.setter();
}

uint64_t (*DisambiguationSnippetModel.displayText.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  v2[4] = sub_252F530AC();
  return sub_252F20BA0;
}

uint64_t DisambiguationSnippetModel.options.getter()
{
  v1 = *(v0 + *(type metadata accessor for DisambiguationSnippetModel(0) + 20));
}

uint64_t sub_252F39350(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DisambiguationSnippetModel.options.setter()
{
  v2 = OUTLINED_FUNCTION_12_3();
  v3 = *(type metadata accessor for DisambiguationSnippetModel(v2) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t (*DisambiguationSnippetModel.options.modify())()
{
  v0 = OUTLINED_FUNCTION_12_3();
  v1 = *(type metadata accessor for DisambiguationSnippetModel(v0) + 20);
  return nullsub_1;
}

uint64_t sub_252F39488(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_31(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_3_1();
  v9(v8);
  return v4;
}

uint64_t sub_252F39550(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_31(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_3_1();
  v9(v8);
  return v4;
}

uint64_t (*DisambiguationSnippetModel.defaultOption.modify())()
{
  v0 = OUTLINED_FUNCTION_12_3();
  v1 = *(type metadata accessor for DisambiguationSnippetModel(v0) + 24);
  return nullsub_1;
}

uint64_t sub_252F395E8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_252F4CE24();
}

uint64_t sub_252F3960C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252F1B58C();
  *a2 = result;
  return result;
}

uint64_t sub_252F3963C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252F1B5D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_252F39670@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252F1B58C();
  *a1 = result;
  return result;
}

uint64_t sub_252F39698@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252F395E0();
  *a1 = result;
  return result;
}

uint64_t sub_252F396C0(uint64_t a1)
{
  v2 = sub_252F39B24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F396FC(uint64_t a1)
{
  v2 = sub_252F39B24();

  return MEMORY[0x2821FE720](a1, v2);
}

void DisambiguationSnippetModel.init(from:)()
{
  OUTLINED_FUNCTION_20_1();
  v2 = v1;
  v35 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5766A0, &qword_252F55578);
  OUTLINED_FUNCTION_10(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5766A8, &unk_252F55580);
  v11 = OUTLINED_FUNCTION_16(v10);
  v36 = v12;
  v37 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17_1();
  v16 = type metadata accessor for DisambiguationSnippetModel(0);
  v17 = OUTLINED_FUNCTION_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_0();
  v22 = v21 - v20;
  v24 = *(v23 + 24);
  v25 = type metadata accessor for DisambiguationOption(0);
  v38 = v24;
  v39 = v22;
  __swift_storeEnumTagSinglePayload(v22 + v24, 1, 1, v25);
  v26 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_252F39B24();
  sub_252F53CFC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_252F2E3C4(v39 + v38, &qword_27F5766A0, &qword_252F55578);
  }

  else
  {
    v34 = v25;
    LOBYTE(v40) = 0;
    v40 = sub_252F53C0C();
    v41 = v27;
    v28 = v39;
    sub_252F5309C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5766B8, &qword_252F56900);
    sub_252F39B78();
    sub_252F53C2C();
    *(v28 + *(v16 + 20)) = v40;
    LOBYTE(v40) = 2;
    sub_252F39128(&qword_27F5766C8, type metadata accessor for DisambiguationOption);
    v29 = v34;
    sub_252F53C2C();
    v30 = OUTLINED_FUNCTION_9_4();
    v31(v30);
    v32 = v35;
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v29);
    v33 = v39;
    sub_252F39550(v9, v39 + v38, &qword_27F5766A0, &qword_252F55578);
    sub_252F39C2C(v33, v32, type metadata accessor for DisambiguationSnippetModel);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_252F39C88();
  }

  OUTLINED_FUNCTION_21_0();
}

unint64_t sub_252F39B24()
{
  result = qword_27F5766B0;
  if (!qword_27F5766B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5766B0);
  }

  return result;
}

unint64_t sub_252F39B78()
{
  result = qword_27F5766C0;
  if (!qword_27F5766C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5766B8, &qword_252F56900);
    sub_252F39128(&qword_27F5766C8, type metadata accessor for DisambiguationOption);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5766C0);
  }

  return result;
}

uint64_t sub_252F39C2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_3_1();
  v8(v7);
  return a2;
}

uint64_t sub_252F39C88()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v3 = v2(v1);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t DisambiguationSnippetModel.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5766D0, &qword_252F55590);
  OUTLINED_FUNCTION_16(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19_1();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F39B24();
  sub_252F53D0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  sub_252F53C5C();
  if (v2)
  {
    (*(v8 + 8))(v3, v6);
  }

  else
  {

    v14 = type metadata accessor for DisambiguationSnippetModel(0);
    v16 = *(v4 + *(v14 + 20));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5766B8, &qword_252F56900);
    sub_252F39EF4();
    OUTLINED_FUNCTION_30_0();
    v15 = *(v14 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5766A0, &qword_252F55578);
    sub_252F39FA8();
    OUTLINED_FUNCTION_30_0();
    return (*(v8 + 8))(v3, v6);
  }
}

unint64_t sub_252F39EF4()
{
  result = qword_27F5766D8;
  if (!qword_27F5766D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5766B8, &qword_252F56900);
    sub_252F39128(&qword_27F5766E0, type metadata accessor for DisambiguationOption);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5766D8);
  }

  return result;
}

unint64_t sub_252F39FA8()
{
  result = qword_27F5766E8;
  if (!qword_27F5766E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5766A0, &qword_252F55578);
    sub_252F39128(&qword_27F5766E0, type metadata accessor for DisambiguationOption);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5766E8);
  }

  return result;
}

uint64_t sub_252F3A05C()
{
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  OUTLINED_FUNCTION_10(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_1();
  v42 = type metadata accessor for DisambiguationOption(0);
  v8 = OUTLINED_FUNCTION_16(v42);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_0();
  v15 = (v14 - v13);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5766A0, &qword_252F55578);
  OUTLINED_FUNCTION_10(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_19_1();
  sub_252F53B8C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  OUTLINED_FUNCTION_16_2();

  MEMORY[0x2530AF890](0x6E6F6974706F202CLL, 0xEB00000000203A73);
  v20 = type metadata accessor for DisambiguationSnippetModel(0);
  v44 = *(v0 + *(v20 + 20));

  sub_252F3AB9C();
  v39 = v20;
  v40 = v1;
  v21 = *(v44 + 16);
  if (v21)
  {
    OUTLINED_FUNCTION_25_0(MEMORY[0x277D84F90]);
    v22 = v43;
    v23 = v44 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v41 = *(v10 + 72);
    do
    {
      OUTLINED_FUNCTION_2_7();
      sub_252F39C2C(v23, v15, v24);
      sub_252F53B8C();

      OUTLINED_FUNCTION_28_0();
      v45 = v25;
      MEMORY[0x2530AF890](*v15, v15[1]);
      OUTLINED_FUNCTION_13_4();
      MEMORY[0x2530AF890](v15[2], v15[3]);
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_24_0(v42);
      v26 = type metadata accessor for IconConfiguration();
      if (__swift_getEnumTagSinglePayload(v2, 1, v26) == 1)
      {
        sub_252F2E3C4(v2, &qword_27F576260, &qword_252F54AA0);
        v27 = 0xE300000000000000;
        v28 = 7104878;
      }

      else
      {
        v28 = IconConfiguration.description.getter();
        v27 = v29;
        OUTLINED_FUNCTION_7_6();
      }

      MEMORY[0x2530AF890](v28, v27);

      OUTLINED_FUNCTION_0_4();
      sub_252F39C88();
      v31 = *(v43 + 16);
      v30 = *(v43 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_252F3BEDC((v30 > 1), v31 + 1, 1);
      }

      *(v43 + 16) = v31 + 1;
      v32 = v43 + 16 * v31;
      *(v32 + 32) = v45;
      *(v32 + 40) = 0xE700000000000000;
      v23 += v41;
      --v21;
    }

    while (v21);

    v3 = v0;
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v33 = MEMORY[0x2530AF920](v22, MEMORY[0x277D837D0]);
  v35 = v34;

  MEMORY[0x2530AF890](v33, v35);

  MEMORY[0x2530AF890](0xD000000000000011, 0x8000000252F584B0);
  sub_252F39488(v3 + *(v39 + 24), v40, &qword_27F5766A0, &qword_252F55578);
  if (__swift_getEnumTagSinglePayload(v40, 1, v42) == 1)
  {
    sub_252F2E3C4(v40, &qword_27F5766A0, &qword_252F55578);
    v36 = 0xE300000000000000;
    v37 = 7104878;
  }

  else
  {
    v37 = *v40;
    v36 = v40[1];

    OUTLINED_FUNCTION_0_4();
    sub_252F39C88();
  }

  MEMORY[0x2530AF890](v37, v36);

  return 0x5379616C70736964;
}

unint64_t DisambiguationSnippetModel.stringId.getter()
{
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  OUTLINED_FUNCTION_10(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_1();
  v42 = type metadata accessor for DisambiguationOption(0);
  v8 = OUTLINED_FUNCTION_16(v42);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_0();
  v15 = (v14 - v13);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5766A0, &qword_252F55578);
  OUTLINED_FUNCTION_10(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17_1();
  sub_252F53B8C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  OUTLINED_FUNCTION_16_2();

  v20 = type metadata accessor for DisambiguationSnippetModel(0);
  v43 = *(v0 + *(v20 + 20));

  sub_252F3AB9C();
  v40 = v20;
  v21 = *(v43 + 16);
  if (v21)
  {
    v39 = v2;
    OUTLINED_FUNCTION_25_0(MEMORY[0x277D84F90]);
    v22 = v45;
    v23 = v43 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v41 = *(v10 + 72);
    do
    {
      OUTLINED_FUNCTION_2_7();
      sub_252F39C2C(v23, v15, v24);
      sub_252F53B8C();

      OUTLINED_FUNCTION_28_0();
      v44 = v25;
      MEMORY[0x2530AF890](*v15, v15[1]);
      OUTLINED_FUNCTION_13_4();
      MEMORY[0x2530AF890](v15[2], v15[3]);
      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_24_0(v42);
      v26 = type metadata accessor for IconConfiguration();
      if (__swift_getEnumTagSinglePayload(v1, 1, v26) == 1)
      {
        sub_252F2E3C4(v1, &qword_27F576260, &qword_252F54AA0);
        v27 = 0xE300000000000000;
        v28 = 7104878;
      }

      else
      {
        v28 = IconConfiguration.description.getter();
        v27 = v29;
        OUTLINED_FUNCTION_7_6();
      }

      MEMORY[0x2530AF890](v28, v27);

      OUTLINED_FUNCTION_0_4();
      sub_252F39C88();
      v31 = *(v45 + 16);
      v30 = *(v45 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_252F3BEDC((v30 > 1), v31 + 1, 1);
      }

      *(v45 + 16) = v31 + 1;
      v32 = v45 + 16 * v31;
      *(v32 + 32) = v44;
      *(v32 + 40) = 0xE700000000000000;
      v23 += v41;
      --v21;
    }

    while (v21);

    v2 = v39;
    v3 = v0;
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v33 = MEMORY[0x2530AF920](v22, MEMORY[0x277D837D0]);
  v35 = v34;

  MEMORY[0x2530AF890](v33, v35);

  OUTLINED_FUNCTION_16_2();

  sub_252F53B8C();

  sub_252F39488(v3 + *(v40 + 24), v2, &qword_27F5766A0, &qword_252F55578);
  if (__swift_getEnumTagSinglePayload(v2, 1, v42) == 1)
  {
    sub_252F2E3C4(v2, &qword_27F5766A0, &qword_252F55578);
    v36 = 0xE300000000000000;
    v37 = 7104878;
  }

  else
  {
    v37 = *v2;
    v36 = v2[1];

    OUTLINED_FUNCTION_0_4();
    sub_252F39C88();
  }

  MEMORY[0x2530AF890](v37, v36);

  OUTLINED_FUNCTION_16_2();

  return 0xD000000000000010;
}

char *sub_252F3A9C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576768, &qword_252F559A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_252F3AAC8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for DisambiguationOption(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    type metadata accessor for DisambiguationOption(0);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_252F3AB9C()
{
  v1 = OUTLINED_FUNCTION_12_3();
  v2 = type metadata accessor for DisambiguationOption(v1);
  OUTLINED_FUNCTION_10(v2);
  v4 = v3;
  v5 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_252F3C9C4(v5);
  }

  v6 = *(v5 + 16);
  v7[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v7[1] = v6;
  sub_252F3AC3C(v7);
  *v0 = v5;
}

void sub_252F3AC3C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (sub_252F53C8C() < v1)
  {
    if (v1 >= -1)
    {
      v2 = v1 / 2;
      if (v1 <= 1)
      {
        v3 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for DisambiguationOption(0);
        v3 = sub_252F53A8C();
        *(v3 + 16) = v2;
      }

      v4 = type metadata accessor for DisambiguationOption(0);
      OUTLINED_FUNCTION_10(v4);
      v6 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      sub_252F3AFB4();
      *(v3 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v1 < 0)
  {
    goto LABEL_12;
  }

  if (v1)
  {
    sub_252F3AD68();
  }
}

void sub_252F3AD68()
{
  OUTLINED_FUNCTION_20_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v35 = type metadata accessor for DisambiguationOption(0);
  v8 = *(*(v35 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v35);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v27 - v13);
  MEMORY[0x28223BE20](v12);
  v17 = (&v27 - v16);
  v29 = v5;
  if (v3 != v5)
  {
    v18 = *v1;
    v19 = *(v15 + 72);
    v20 = *v1 + v19 * (v3 - 1);
    v21 = -v19;
    v22 = v7 - v3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * v3;
    while (2)
    {
      v32 = v20;
      v33 = v3;
      v30 = v23;
      v31 = v22;
      while (1)
      {
        sub_252F39C2C(v23, v17, type metadata accessor for DisambiguationOption);
        sub_252F39C2C(v20, v14, type metadata accessor for DisambiguationOption);
        if (*v17 == *v14 && v17[1] == v14[1])
        {
          break;
        }

        v25 = sub_252F53CAC();
        OUTLINED_FUNCTION_5_5();
        sub_252F39C88();
        sub_252F39C88();
        if (v25)
        {
          if (!v34)
          {
            __break(1u);
            return;
          }

          sub_252F3C9D8(v23, v11);
          swift_arrayInitWithTakeFrontToBack();
          sub_252F3C9D8(v11, v20);
          v20 += v21;
          v23 += v21;
          if (!__CFADD__(v22++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_252F39C88();
      sub_252F39C88();
LABEL_14:
      v3 = v33 + 1;
      v20 = v32 + v28;
      v22 = v31 - 1;
      v23 = v30 + v28;
      if (v33 + 1 != v29)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_21_0();
}

void sub_252F3AFB4()
{
  OUTLINED_FUNCTION_20_1();
  v145 = v0;
  v2 = v1;
  v4 = v3;
  v131 = v5;
  v147 = type metadata accessor for DisambiguationOption(0);
  v6 = OUTLINED_FUNCTION_16(v147);
  v138 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v135 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23_0();
  v146 = v12;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_23_0();
  v148 = v14;
  OUTLINED_FUNCTION_13();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = (&v127 - v17);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_23_0();
  v144 = v19;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_23_0();
  v143 = v21;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_23_0();
  v130 = v23;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v24);
  v129 = (&v127 - v25);
  v141 = v4;
  v26 = v4[1];
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_112:
    v27 = *v131;
    if (!*v131)
    {
      goto LABEL_152;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_114:
      v119 = (v28 + 16);
      for (i = *(v28 + 16); i >= 2; *v119 = i)
      {
        if (!*v141)
        {
          goto LABEL_149;
        }

        v121 = (v28 + 16 * i);
        v122 = *v121;
        v123 = &v119[2 * i];
        v124 = v123[1];
        v125 = v145;
        sub_252F3B8EC(*v141 + *(v138 + 72) * *v121, *v141 + *(v138 + 72) * *v123, *v141 + *(v138 + 72) * v124, v27, v115, v116, v117, v118, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138);
        v145 = v125;
        if (v125)
        {
          break;
        }

        if (v124 < v122)
        {
          goto LABEL_137;
        }

        if (i - 2 >= *v119)
        {
          goto LABEL_138;
        }

        *v121 = v122;
        v121[1] = v124;
        v126 = *v119 - i;
        if (*v119 < i)
        {
          goto LABEL_139;
        }

        i = *v119 - 1;
        memmove(v123, v123 + 2, 16 * v126);
      }

LABEL_110:

      OUTLINED_FUNCTION_21_0();
      return;
    }

LABEL_146:
    v28 = sub_252F3BDE8(v28);
    goto LABEL_114;
  }

  v127 = v2;
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v140 = v18;
  while (1)
  {
    v29 = v27++;
    v134 = v29;
    if (v27 < v26)
    {
      v136 = v26;
      v30 = *v141;
      v31 = *(v138 + 72);
      v32 = v129;
      sub_252F39C2C(*v141 + v31 * v27, v129, type metadata accessor for DisambiguationOption);
      v139 = v31;
      v33 = v30 + v31 * v29;
      v34 = v130;
      sub_252F39C2C(v33, v130, type metadata accessor for DisambiguationOption);
      if (*v32 == *v34 && v32[1] == v34[1])
      {
        LODWORD(v137) = 0;
      }

      else
      {
        LODWORD(v137) = sub_252F53CAC();
      }

      v128 = v28;
      OUTLINED_FUNCTION_5_5();
      sub_252F39C88();
      sub_252F39C88();
      v36 = v134 + 2;
      v37 = v139 * (v134 + 2);
      v38 = v30 + v37;
      v39 = v27;
      v40 = v139 * v27;
      v41 = v30 + v139 * v27;
      do
      {
        v42 = v36;
        v43 = v39;
        v27 = v40;
        v28 = v37;
        if (v36 >= v136)
        {
          break;
        }

        v142 = v36;
        v44 = v143;
        sub_252F39C2C(v38, v143, type metadata accessor for DisambiguationOption);
        v45 = v144;
        sub_252F39C2C(v41, v144, type metadata accessor for DisambiguationOption);
        v46 = *v44 == *v45 && v44[1] == v45[1];
        v47 = v46 ? 0 : sub_252F53CAC();
        v42 = v142;
        OUTLINED_FUNCTION_6_4();
        sub_252F39C88();
        sub_252F39C88();
        v36 = v42 + 1;
        v18 = v140;
        v38 += v139;
        v41 += v139;
        v39 = v43 + 1;
        v40 = v27 + v139;
        v37 = v28 + v139;
      }

      while (((v137 ^ v47) & 1) == 0);
      if (v137)
      {
        v29 = v134;
        if (v42 < v134)
        {
          goto LABEL_143;
        }

        if (v134 < v42)
        {
          v48 = v134 * v139;
          v49 = v134;
          do
          {
            if (v49 != v43)
            {
              v50 = *v141;
              if (!*v141)
              {
                goto LABEL_150;
              }

              sub_252F3C9D8(v50 + v48, v135);
              v51 = v48 < v27 || v50 + v48 >= (v50 + v28);
              if (v51)
              {
                OUTLINED_FUNCTION_26_0();
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v48 != v27)
              {
                OUTLINED_FUNCTION_26_0();
                swift_arrayInitWithTakeBackToFront();
              }

              sub_252F3C9D8(v135, v50 + v27);
              v29 = v134;
            }

            ++v49;
            v27 -= v139;
            v28 -= v139;
            v48 += v139;
            v52 = v49 < v43--;
          }

          while (v52);
        }

        v27 = v42;
        v28 = v128;
      }

      else
      {
        v27 = v42;
        v28 = v128;
        v29 = v134;
      }
    }

    v53 = v141[1];
    if (v27 < v53)
    {
      if (__OFSUB__(v27, v29))
      {
        goto LABEL_142;
      }

      if (v27 - v29 < v127)
      {
        break;
      }
    }

LABEL_59:
    if (v27 < v29)
    {
      goto LABEL_141;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_252F3A9C8(0, *(v28 + 16) + 1, 1, v28);
    }

    v71 = *(v28 + 16);
    v70 = *(v28 + 24);
    v72 = v71 + 1;
    if (v71 >= v70 >> 1)
    {
      v28 = sub_252F3A9C8((v70 > 1), v71 + 1, 1, v28);
    }

    *(v28 + 16) = v72;
    v73 = v28 + 32;
    v74 = (v28 + 32 + 16 * v71);
    *v74 = v29;
    v74[1] = v27;
    v142 = *v131;
    if (!v142)
    {
      goto LABEL_151;
    }

    if (v71)
    {
      while (1)
      {
        v75 = v72 - 1;
        v76 = (v73 + 16 * (v72 - 1));
        v77 = (v28 + 16 * v72);
        if (v72 >= 4)
        {
          break;
        }

        if (v72 == 3)
        {
          v78 = *(v28 + 32);
          v79 = *(v28 + 40);
          v88 = __OFSUB__(v79, v78);
          v80 = v79 - v78;
          v81 = v88;
LABEL_79:
          if (v81)
          {
            goto LABEL_128;
          }

          v93 = *v77;
          v92 = v77[1];
          v94 = __OFSUB__(v92, v93);
          v95 = v92 - v93;
          v96 = v94;
          if (v94)
          {
            goto LABEL_131;
          }

          v97 = v76[1];
          v98 = v97 - *v76;
          if (__OFSUB__(v97, *v76))
          {
            goto LABEL_134;
          }

          if (__OFADD__(v95, v98))
          {
            goto LABEL_136;
          }

          if (v95 + v98 >= v80)
          {
            if (v80 < v98)
            {
              v75 = v72 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        if (v72 < 2)
        {
          goto LABEL_130;
        }

        v100 = *v77;
        v99 = v77[1];
        v88 = __OFSUB__(v99, v100);
        v95 = v99 - v100;
        v96 = v88;
LABEL_94:
        if (v96)
        {
          goto LABEL_133;
        }

        v102 = *v76;
        v101 = v76[1];
        v88 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v88)
        {
          goto LABEL_135;
        }

        if (v103 < v95)
        {
          goto LABEL_108;
        }

LABEL_101:
        if (v75 - 1 >= v72)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
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
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (!*v141)
        {
          goto LABEL_148;
        }

        v107 = v27;
        v108 = v28;
        v109 = (v73 + 16 * (v75 - 1));
        v110 = *v109;
        v111 = v73;
        v112 = v75;
        v113 = (v73 + 16 * v75);
        v28 = v113[1];
        v114 = v145;
        sub_252F3B8EC(*v141 + *(v138 + 72) * *v109, *v141 + *(v138 + 72) * *v113, *v141 + *(v138 + 72) * v28, v142, v66, v67, v68, v69, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138);
        v145 = v114;
        if (v114)
        {
          goto LABEL_110;
        }

        if (v28 < v110)
        {
          goto LABEL_123;
        }

        v27 = *(v108 + 16);
        if (v112 > v27)
        {
          goto LABEL_124;
        }

        *v109 = v110;
        v109[1] = v28;
        if (v112 >= v27)
        {
          goto LABEL_125;
        }

        v72 = v27 - 1;
        memmove(v113, v113 + 2, 16 * (v27 - 1 - v112));
        v28 = v108;
        *(v108 + 16) = v27 - 1;
        v52 = v27 > 2;
        v27 = v107;
        v73 = v111;
        v18 = v140;
        if (!v52)
        {
          goto LABEL_108;
        }
      }

      v82 = v73 + 16 * v72;
      v83 = *(v82 - 64);
      v84 = *(v82 - 56);
      v88 = __OFSUB__(v84, v83);
      v85 = v84 - v83;
      if (v88)
      {
        goto LABEL_126;
      }

      v87 = *(v82 - 48);
      v86 = *(v82 - 40);
      v88 = __OFSUB__(v86, v87);
      v80 = v86 - v87;
      v81 = v88;
      if (v88)
      {
        goto LABEL_127;
      }

      v89 = v77[1];
      v90 = v89 - *v77;
      if (__OFSUB__(v89, *v77))
      {
        goto LABEL_129;
      }

      v88 = __OFADD__(v80, v90);
      v91 = v80 + v90;
      if (v88)
      {
        goto LABEL_132;
      }

      if (v91 >= v85)
      {
        v105 = *v76;
        v104 = v76[1];
        v88 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v88)
        {
          goto LABEL_140;
        }

        if (v80 < v106)
        {
          v75 = v72 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_79;
    }

LABEL_108:
    v26 = v141[1];
    if (v27 >= v26)
    {
      goto LABEL_112;
    }
  }

  v54 = v29 + v127;
  if (__OFADD__(v29, v127))
  {
    goto LABEL_144;
  }

  if (v54 >= v53)
  {
    v54 = v141[1];
  }

  if (v54 < v29)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (v27 == v54)
  {
    goto LABEL_59;
  }

  v128 = v28;
  v55 = *v141;
  v56 = *(v138 + 72);
  v57 = *v141 + v56 * (v27 - 1);
  v58 = -v56;
  v59 = v29 - v27;
  v132 = v56;
  v133 = v54;
  v60 = v55 + v27 * v56;
LABEL_46:
  v142 = v27;
  v136 = v60;
  v137 = v59;
  v61 = v60;
  v139 = v57;
  v62 = v57;
  while (1)
  {
    sub_252F39C2C(v61, v18, type metadata accessor for DisambiguationOption);
    sub_252F39C2C(v62, v148, type metadata accessor for DisambiguationOption);
    if (*v18 == *v148 && v18[1] == v148[1])
    {
      sub_252F39C88();
      sub_252F39C88();
LABEL_57:
      v27 = v142 + 1;
      v57 = v139 + v132;
      v59 = v137 - 1;
      v60 = v136 + v132;
      if (v142 + 1 == v133)
      {
        v27 = v133;
        v28 = v128;
        v29 = v134;
        goto LABEL_59;
      }

      goto LABEL_46;
    }

    v64 = sub_252F53CAC();
    OUTLINED_FUNCTION_6_4();
    sub_252F39C88();
    sub_252F39C88();
    if ((v64 & 1) == 0)
    {
      goto LABEL_57;
    }

    if (!v55)
    {
      break;
    }

    v65 = v146;
    sub_252F3C9D8(v61, v146);
    swift_arrayInitWithTakeFrontToBack();
    sub_252F3C9D8(v65, v62);
    v62 += v58;
    v61 += v58;
    v51 = __CFADD__(v59++, 1);
    if (v51)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
}

void sub_252F3B8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_1();
  a19 = v21;
  a20 = v22;
  v72 = v20;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v78 = type metadata accessor for DisambiguationOption(0);
  v31 = *(*(v78 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v78);
  v77 = &v71 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v76 = (&v71 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = (&v71 - v37);
  MEMORY[0x28223BE20](v36);
  v40 = (&v71 - v39);
  v42 = *(v41 + 72);
  if (!v42)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  v43 = v28 - v30;
  v44 = v28 - v30 == 0x8000000000000000 && v42 == -1;
  if (v44)
  {
    goto LABEL_72;
  }

  v45 = v26 - v28;
  if (v26 - v28 == 0x8000000000000000 && v42 == -1)
  {
    goto LABEL_73;
  }

  v47 = v43 / v42;
  a10 = v30;
  v80 = v24;
  v48 = v45 / v42;
  if (v43 / v42 < v45 / v42)
  {
    sub_252F3AAC8(v30, v43 / v42, v24);
    v49 = v24 + v47 * v42;
    v79 = v49;
    while (1)
    {
      if (v24 >= v49 || v28 >= v26)
      {
        goto LABEL_70;
      }

      sub_252F39C2C(v28, v40, type metadata accessor for DisambiguationOption);
      sub_252F39C2C(v24, v38, type metadata accessor for DisambiguationOption);
      if (*v40 == *v38 && v40[1] == v38[1])
      {
        sub_252F39C88();
        sub_252F39C88();
      }

      else
      {
        LODWORD(v77) = sub_252F53CAC();
        sub_252F39C88();
        sub_252F39C88();
        if (v77)
        {
          if (v30 < v28 || v30 >= v28 + v42)
          {
            OUTLINED_FUNCTION_10_3();
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v30 != v28)
          {
            OUTLINED_FUNCTION_10_3();
            swift_arrayInitWithTakeBackToFront();
          }

          v28 += v42;
          goto LABEL_40;
        }
      }

      if (v30 < v24 || v30 >= v24 + v42)
      {
        OUTLINED_FUNCTION_10_3();
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v30 != v24)
      {
        OUTLINED_FUNCTION_10_3();
        swift_arrayInitWithTakeBackToFront();
      }

      v80 = v24 + v42;
      v24 += v42;
LABEL_40:
      v30 += v42;
      a10 = v30;
    }
  }

  sub_252F3AAC8(v28, v45 / v42, v24);
  v54 = v28;
  v55 = v24 + v48 * v42;
  v56 = -v42;
  v57 = v55;
  v75 = -v42;
LABEL_42:
  v74 = v54;
  v58 = v54 + v56;
  v59 = v26;
  v71 = v57;
  while (1)
  {
    if (v55 <= v24)
    {
      a10 = v74;
      v79 = v57;
      goto LABEL_70;
    }

    if (v74 <= v30)
    {
      break;
    }

    v73 = v57;
    v60 = v55 + v56;
    v61 = v76;
    sub_252F39C2C(v55 + v56, v76, type metadata accessor for DisambiguationOption);
    v62 = v58;
    v63 = v58;
    v64 = v77;
    sub_252F39C2C(v63, v77, type metadata accessor for DisambiguationOption);
    if (*v61 == *v64 && v61[1] == v64[1])
    {
      v66 = 0;
    }

    else
    {
      v66 = sub_252F53CAC();
    }

    v26 = v59 + v75;
    sub_252F39C88();
    sub_252F39C88();
    if (v66)
    {
      v68 = v59 < v74 || v26 >= v74;
      v69 = v62;
      if (v68)
      {
        OUTLINED_FUNCTION_10_3();
        swift_arrayInitWithTakeFrontToBack();
        v54 = v62;
        v57 = v73;
        v56 = v75;
      }

      else
      {
        v70 = v73;
        v57 = v73;
        v54 = v69;
        v56 = v75;
        if (v59 != v74)
        {
          OUTLINED_FUNCTION_10_3();
          swift_arrayInitWithTakeBackToFront();
          v54 = v69;
          v57 = v70;
        }
      }

      goto LABEL_42;
    }

    v67 = v59 < v55 || v26 >= v55;
    v58 = v62;
    if (v67)
    {
      OUTLINED_FUNCTION_10_3();
      swift_arrayInitWithTakeFrontToBack();
      v59 = v26;
      v55 = v60;
      v57 = v60;
      v56 = v75;
    }

    else
    {
      v57 = v60;
      v44 = v55 == v59;
      v59 = v26;
      v55 = v60;
      v56 = v75;
      if (!v44)
      {
        OUTLINED_FUNCTION_10_3();
        swift_arrayInitWithTakeBackToFront();
        v59 = v26;
        v55 = v60;
        v57 = v60;
      }
    }
  }

  a10 = v74;
  v79 = v71;
LABEL_70:
  sub_252F3BDFC(&a10, &v80, &v79);
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_252F3BDFC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for DisambiguationOption(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_252F3BEDC(char *a1, int64_t a2, char a3)
{
  result = sub_252F3C708(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_252F3BFB4()
{
  sub_252F3C0A8(319, &qword_27F5762D0, type metadata accessor for IconConfiguration, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_252F3C0A8(319, &qword_27F5762C8, sub_252F290F0, MEMORY[0x277D63220]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_252F3C0A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_252F3C134()
{
  sub_252F27FBC();
  if (v0 <= 0x3F)
  {
    sub_252F3C0A8(319, &qword_27F576720, type metadata accessor for DisambiguationOption, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_252F3C0A8(319, &qword_27F576728, type metadata accessor for DisambiguationOption, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for DisambiguationSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DisambiguationSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DisambiguationOption.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DisambiguationOption.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_252F3C4FC()
{
  result = qword_27F576730;
  if (!qword_27F576730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576730);
  }

  return result;
}

unint64_t sub_252F3C554()
{
  result = qword_27F576738;
  if (!qword_27F576738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576738);
  }

  return result;
}

unint64_t sub_252F3C5AC()
{
  result = qword_27F576740;
  if (!qword_27F576740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576740);
  }

  return result;
}

unint64_t sub_252F3C604()
{
  result = qword_27F576748;
  if (!qword_27F576748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576748);
  }

  return result;
}

unint64_t sub_252F3C65C()
{
  result = qword_27F576750;
  if (!qword_27F576750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576750);
  }

  return result;
}

unint64_t sub_252F3C6B4()
{
  result = qword_27F576758;
  if (!qword_27F576758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576758);
  }

  return result;
}

char *sub_252F3C708(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576760, &qword_252F55998);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_252F3C810(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576770, &unk_252F559A8);
  v10 = *(type metadata accessor for DisambiguationOption(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for DisambiguationOption(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_252F3AAC8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_252F3C9D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisambiguationOption(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_7_6()
{

  return sub_252F39C88();
}

void OUTLINED_FUNCTION_13_4()
{

  JUMPOUT(0x2530AF890);
}

void OUTLINED_FUNCTION_14_2()
{

  JUMPOUT(0x2530AF890);
}

void OUTLINED_FUNCTION_16_2()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  JUMPOUT(0x2530AF890);
}

uint64_t OUTLINED_FUNCTION_24_0@<X0>(uint64_t a1@<X8>)
{
  v6 = v4 + *(a1 + 24);

  return sub_252F39488(v6, v3, v1, v2);
}

char *OUTLINED_FUNCTION_25_0@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 128) = a1;

  return sub_252F3BEDC(0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_26_0()
{
  result = v0;
  v3 = *(v1 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_27_0@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_30_0()
{

  return sub_252F53C7C();
}

uint64_t OUTLINED_FUNCTION_31(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t DirectInvocationConfig.action.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);

  return sub_252F5302C();
}

uint64_t DirectInvocationConfig.action.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);

  return sub_252F5303C();
}

void (*DirectInvocationConfig.action.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  v2[4] = sub_252F5301C();
  return sub_252F1EBAC;
}

uint64_t DirectInvocationConfig.id.getter()
{
  v0 = sub_252F52FEC();
  v1 = OUTLINED_FUNCTION_16(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252F52FDC();
  v8 = sub_252F52FCC();
  (*(v3 + 8))(v7, v0);
  return v8;
}

BOOL sub_252F3CEC4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252F1BA5C();
  *a2 = result;
  return result;
}

uint64_t sub_252F3CEF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252F3CEA0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_252F3CF24@<W0>(_BYTE *a1@<X8>)
{
  result = sub_252F1BA5C();
  *a1 = result;
  return result;
}

uint64_t sub_252F3CF6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252F3CE98();
  *a1 = result & 1;
  return result;
}

uint64_t sub_252F3CF98(uint64_t a1)
{
  v2 = sub_252F3D2F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F3CFD4(uint64_t a1)
{
  v2 = sub_252F3D2F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DirectInvocationConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  OUTLINED_FUNCTION_16(v3);
  v26 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576778, &qword_252F559B8);
  OUTLINED_FUNCTION_16(v10);
  v28 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  v17 = type metadata accessor for DirectInvocationConfig();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F3D2F0();
  v22 = v29;
  sub_252F53CFC();
  if (!v22)
  {
    v23 = v28;
    sub_252F2A098(&qword_27F576280);
    sub_252F53C2C();
    sub_252F5302C();
    (*(v26 + 8))(v9, v3);
    sub_252F290F0();
    sub_252F5300C();
    (*(v23 + 8))(v16, v10);
    sub_252F3D344(v20, v27);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for DirectInvocationConfig()
{
  result = qword_27F576790;
  if (!qword_27F576790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_252F3D2F0()
{
  result = qword_27F576780;
  if (!qword_27F576780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576780);
  }

  return result;
}

uint64_t sub_252F3D344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DirectInvocationConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DirectInvocationConfig.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  OUTLINED_FUNCTION_16(v2);
  v20 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576788, &qword_252F559C0);
  OUTLINED_FUNCTION_16(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v14);
  v16 = &v19 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252F3D2F0();
  sub_252F53D0C();
  sub_252F5302C();
  sub_252F290F0();
  sub_252F5300C();
  sub_252F2A098(&qword_27F576298);
  sub_252F53C7C();
  (*(v20 + 8))(v8, v2);
  return (*(v11 + 8))(v16, v9);
}

uint64_t DirectInvocationConfig.Builder.build()()
{
  v1 = *v0;
  sub_252F290F0();
  v2 = v1;

  return sub_252F5300C();
}

uint64_t sub_252F3D644@<X0>(uint64_t *a1@<X8>)
{
  result = DirectInvocationConfig.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_252F3D694()
{
  sub_252F3D700();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_252F3D700()
{
  if (!qword_27F5762C8)
  {
    sub_252F290F0();
    v0 = sub_252F5304C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5762C8);
    }
  }
}

uint64_t sub_252F3D764(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_252F3D7A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DirectInvocationConfig.CodingKeys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for DirectInvocationConfig.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_252F3D8FC()
{
  result = qword_27F5767A0;
  if (!qword_27F5767A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5767A0);
  }

  return result;
}

unint64_t sub_252F3D954()
{
  result = qword_27F5767A8;
  if (!qword_27F5767A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5767A8);
  }

  return result;
}

unint64_t sub_252F3D9AC()
{
  result = qword_27F5767B0;
  if (!qword_27F5767B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5767B0);
  }

  return result;
}

HomeAutomationUIFramework::SnippetState_optional __swiftcall SnippetState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252F53BDC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SnippetState.rawValue.getter()
{
  v1 = 6710895;
  if (*v0 != 1)
  {
    v1 = 0x64656C696166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28271;
  }
}

uint64_t sub_252F3DAD0@<X0>(uint64_t *a1@<X8>)
{
  result = SnippetState.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252F3DAF8(uint64_t a1, char *a2, char a3, char a4)
{
  v7 = *a2;
  sub_252F3EAE4(a1, v4 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_iconConfig);
  *(v4 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_state) = v7;
  *(v4 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_inProgress) = a3;
  *(v4 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_noCircle) = a4;
  return v4;
}

uint64_t sub_252F3DB60@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_state))
  {
    if (*(v1 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_state) == 1)
    {
      OUTLINED_FUNCTION_3_8();
    }

    else
    {
      OUTLINED_FUNCTION_5_6();
    }

    v3 = OUTLINED_FUNCTION_2_8();

    if ((v3 & 1) == 0)
    {
      v5 = "";
      v6 = MEMORY[0x277CDF3C0];
      v7 = 0xD00000000000001ALL;
      v4 = 0xD00000000000001ALL;
      if (qword_27F575E10 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  v4 = 0xD00000000000001BLL;
  v5 = "ionStyleSettings.swift";
  v6 = MEMORY[0x277CDF3D0];
  if (qword_27F575E10 == -1)
  {
    goto LABEL_10;
  }

  v7 = 0xD00000000000001BLL;
LABEL_13:
  OUTLINED_FUNCTION_3();
  v4 = v7;
LABEL_10:
  v8 = sub_252F5316C();
  __swift_project_value_buffer(v8, qword_27F57B800);
  v9._object = (v5 | 0x8000000000000000);
  v10._countAndFlagsBits = 0xD000000000000076;
  v10._object = 0x8000000252F58550;
  v9._countAndFlagsBits = v4;
  Logger.debug(output:test:caller:)(v9, 0, v10);
  v11 = *v6;
  v12 = sub_252F531EC();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = *(v14 + 104);

  return v15(a1, v11, v13);
}

uint64_t sub_252F3DCD8@<X0>(uint64_t *a1@<X8>)
{
  if (!*(v1 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_state))
  {

LABEL_7:
    if (qword_27F575E10 != -1)
    {
      OUTLINED_FUNCTION_3();
    }

    v4 = sub_252F5316C();
    __swift_project_value_buffer(v4, qword_27F57B800);
    OUTLINED_FUNCTION_6_5("rk material for background.", 0xD000000000000023);
    *a1 = sub_252F5369C();
    v5 = MEMORY[0x277D63BB0];
    goto LABEL_13;
  }

  if (*(v1 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_state) == 1)
  {
    OUTLINED_FUNCTION_3_8();
  }

  else
  {
    OUTLINED_FUNCTION_5_6();
  }

  v3 = OUTLINED_FUNCTION_2_8();

  if (v3)
  {
    goto LABEL_7;
  }

  if (qword_27F575E10 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v6 = sub_252F5316C();
  __swift_project_value_buffer(v6, qword_27F57B800);
  OUTLINED_FUNCTION_6_5("Picking light color scheme.", 0xD00000000000002BLL);
  v7 = *MEMORY[0x277D63BA0];
  v8 = sub_252F5382C();
  OUTLINED_FUNCTION_1(v8);
  (*(v9 + 104))(a1, v7);
  v5 = MEMORY[0x277D63BC0];
LABEL_13:
  v10 = *v5;
  v11 = sub_252F5383C();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = *(v13 + 104);

  return v14(a1, v10, v12);
}

uint64_t sub_252F3DEA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for IconConfiguration();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_0();
  v12 = v11 - v10;
  sub_252F37538(v3 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_iconConfig, v11 - v10);
  v13 = *(v8 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
  sub_252F530BC();
  sub_252F3759C(v12);
  if (v20 == 48)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_252F4D94C();
  }

  v15 = sub_252F52FFC();
  OUTLINED_FUNCTION_1(v15);
  v17 = *(v16 + 104);
  if (a3 == 1)
  {
    v17(a1, *MEMORY[0x277D62B38], v15);
    if (v14)
    {
      v18 = MEMORY[0x277D62B30];
    }

    else
    {
      v18 = MEMORY[0x277D62B28];
    }
  }

  else if (a3 == 4)
  {
    v17(a1, *MEMORY[0x277D62AA8], v15);
    v18 = MEMORY[0x277D62A90];
  }

  else
  {
    v17(a1, *MEMORY[0x277D62B30], v15);
    v18 = MEMORY[0x277D62B18];
  }

  return (v17)(a2, *v18, v15);
}

uint64_t sub_252F3E064()
{
  if (*(v0 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_noCircle))
  {
    result = 2;
  }

  else
  {
    result = 1;
  }

  *(v0 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_noCircle);
  return result;
}

uint64_t sub_252F3E088(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  switch(v3)
  {
    case 18:
      v4 = sub_252F5362C();
      sub_252F5367C();
      v5 = sub_252F5362C();
LABEL_7:
      v6 = v5;
      if (*(v2 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_noCircle) == 1)
      {
      }

      else
      {

        return v4;
      }

      return v6;
    case 35:
      v4 = sub_252F5369C();
      sub_252F5364C();
      v5 = sub_252F5364C();
      goto LABEL_7;
    case 39:
      v4 = sub_252F5361C();
      sub_252F5367C();
      v5 = sub_252F5361C();
      goto LABEL_7;
  }

  v6 = a2;
  if (*(v2 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_noCircle) == 1)
  {
  }

  else
  {
    v8 = *(v2 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_inProgress);
    v9 = sub_252F5369C();
    if (v8 == 1)
    {
      v10 = sub_252F536EC();

      v9 = v10;
    }

    return v9;
  }

  return v6;
}

uint64_t sub_252F3E1C0()
{
  v1 = v0;
  v2 = type metadata accessor for IconConfiguration();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_0();
  v8 = v7 - v6;
  v9 = OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_iconConfig;
  sub_252F37538(v0 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_iconConfig, v7 - v6);
  v10 = v2[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576488, &qword_252F55140);
  sub_252F530BC();
  sub_252F3759C(v8);
  sub_252F37538(v1 + v9, v8);
  v11 = v2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  sub_252F530BC();
  sub_252F3759C(v8);
  v12 = OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_state;
  if (*(v1 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_state))
  {
    if (*(v1 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_state) != 1)
    {

LABEL_9:

      if (*(v1 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_noCircle))
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    v20 = v21[0];
    OUTLINED_FUNCTION_3_8();
  }

  else
  {
    v20 = v21[0];
  }

  v13 = sub_252F53CAC();

  if (v13)
  {
    goto LABEL_9;
  }

  sub_252F37538(v1 + v9, v8);
  v14 = v2[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
  sub_252F530BC();
  sub_252F3759C(v8);
  v15 = static ColorUtils.getColor(colorString:colorDict:)(v20, v21[1], v21[0]);

  if (!*(v1 + v12))
  {

LABEL_14:
    v16 = sub_252F3E088(v21, v15);
LABEL_24:

    return v16;
  }

  v17 = OUTLINED_FUNCTION_2_8();

  if (v17)
  {
    goto LABEL_14;
  }

  switch(LOBYTE(v21[0]))
  {
    case 0x12u:
      v16 = sub_252F5362C();
      sub_252F5367C();
      sub_252F5362C();
      goto LABEL_23;
    case 0x23u:
      v16 = sub_252F5369C();
      if (qword_27F575E28 != -1)
      {
        swift_once();
      }

      sub_252F5361C();
      goto LABEL_23;
    case 0x27u:
      sub_252F5369C();
      v16 = sub_252F536EC();

      sub_252F5367C();
      sub_252F5369C();
      sub_252F536EC();

LABEL_23:

      goto LABEL_24;
  }

  if (*(v1 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_noCircle) != 1 && *(v1 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_inProgress) == 1)
  {
    v19 = sub_252F5369C();

    return v19;
  }

  return v15;
}

uint64_t sub_252F3E55C@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for IconConfiguration();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  v10 = v9 - v8;
  v11 = OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_iconConfig;
  sub_252F37538(v1 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_iconConfig, v9 - v8);
  v12 = v4[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576480, &unk_252F55020);
  sub_252F530BC();
  sub_252F3759C(v10);
  v13 = OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_state;
  if (*(v2 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_state))
  {
    if (*(v2 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_state) == 1)
    {
      OUTLINED_FUNCTION_3_8();
    }

    else
    {
      OUTLINED_FUNCTION_5_6();
    }

    v15 = OUTLINED_FUNCTION_2_8();

    if ((v15 & 1) == 0)
    {
      if ((v22 | 4) != 0x27)
      {
LABEL_12:
        if (*(v2 + v13))
        {
          v17 = OUTLINED_FUNCTION_2_8();

          if ((v17 & 1) == 0)
          {
            sub_252F37538(v2 + v11, v10);
            v18 = v4[8];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
            sub_252F530BC();
            result = sub_252F3759C(v10);
            v16 = v21;
            goto LABEL_17;
          }
        }

        else
        {
        }

        sub_252F37538(v2 + v11, v10);
        v19 = v4[7];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576478, &unk_252F55130);
        sub_252F530BC();
        result = sub_252F3759C(v10);
        v16 = v20;
        goto LABEL_17;
      }

LABEL_11:
      v16 = 0;
      goto LABEL_17;
    }
  }

  else
  {
  }

  if (v22 == 39)
  {
    goto LABEL_11;
  }

  if (v22 != 35)
  {
    goto LABEL_12;
  }

  v16 = 2;
LABEL_17:
  *a1 = v16;
  return result;
}

uint64_t sub_252F3E764()
{
  v1 = type metadata accessor for IconConfiguration();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_5_0();
  v5 = v4 - v3;
  sub_252F37538(v0 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_iconConfig, v4 - v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  sub_252F3759C(v5);
  return v7;
}

uint64_t CompletionStyleSettings.__deallocating_deinit()
{
  sub_252F3759C(v0 + OBJC_IVAR____TtC25HomeAutomationUIFramework23CompletionStyleSettings_iconConfig);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_252F3E8A4()
{
  result = qword_27F5767B8;
  if (!qword_27F5767B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5767B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SnippetState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for CompletionStyleSettings()
{
  result = qword_27F5767C0;
  if (!qword_27F5767C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252F3EA28()
{
  result = type metadata accessor for IconConfiguration();
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

uint64_t sub_252F3EAE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_8()
{

  return sub_252F53CAC();
}

uint64_t CallToActionView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CallToActionView();
  v5 = (a2 + *(v4 + 20));
  sub_252F5394C();
  sub_252F3FB08(&qword_27F575E48, MEMORY[0x277D63F60]);
  *v5 = sub_252F5326C();
  v5[1] = v6;
  sub_252F3F804(a1, a2, type metadata accessor for CallToActionSnippetModel);
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v7 = sub_252F5316C();
  __swift_project_value_buffer(v7, qword_27F57B800);
  sub_252F53B8C();
  MEMORY[0x2530AF890](0xD000000000000033, 0x8000000252F57A40);
  v8 = CallToActionSnippetModel.description.getter();
  MEMORY[0x2530AF890](v8);

  v9._countAndFlagsBits = 0;
  v10._countAndFlagsBits = 0xD000000000000069;
  v10._object = 0x8000000252F57A80;
  v9._object = 0xE000000000000000;
  Logger.debug(output:test:caller:)(v9, 0, v10);

  if (qword_27F575E18 != -1)
  {
    swift_once();
  }

  v11 = *(v4 + 24);
  v12 = qword_27F57B818;
  sub_252F5313C();
  sub_252F53ADC();
  sub_252F5312C();

  return sub_252F3F7A8(a1);
}

uint64_t type metadata accessor for CallToActionView()
{
  result = qword_27F576800;
  if (!qword_27F576800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CallToActionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CallToActionView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_252F3F804(v1, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CallToActionView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_252F3F864(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5767D0, &qword_252F55D50);
  sub_252F3F938();
  sub_252F5381C();
  sub_252F3F804(v1, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CallToActionView);
  v8 = swift_allocObject();
  sub_252F3F864(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5767F8, &qword_252F55D68);
  v10 = (a1 + *(result + 36));
  *v10 = sub_252F3FB50;
  v10[1] = v8;
  v10[2] = 0;
  v10[3] = 0;
  return result;
}

uint64_t sub_252F3EFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_252F5380C();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CallToActionView();
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576560, &qword_252F55D60);
  v38 = *(v10 - 8);
  v11 = *(v38 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576828, &qword_252F55DF0);
  v42 = *(v14 - 8);
  v43 = v14;
  v15 = *(v42 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5767E8, &qword_252F55D58);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v41 = &v35 - v23;
  if (*(a1 + *(type metadata accessor for CallToActionSnippetModel() + 24)) == 1)
  {
    v36 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
    sub_252F530BC();
    sub_252F3F804(a1, &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CallToActionView);
    v24 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v25 = swift_allocObject();
    sub_252F3F864(&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
    sub_252F30A14();
    sub_252F5379C();
    sub_252F533FC();
    sub_252F25B24(&qword_27F576568, &qword_27F576560, &qword_252F55D60);
    sub_252F3FB08(&qword_27F5767F0, MEMORY[0x277D63B78]);
    v26 = v40;
    sub_252F5357C();
    (*(v39 + 8))(v7, v26);
    (*(v38 + 8))(v13, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576830, &qword_252F55DF8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252F55D40;
    v28 = sub_252F5343C();
    *(inited + 32) = v28;
    v29 = sub_252F5345C();
    *(inited + 33) = v29;
    v30 = sub_252F5344C();
    sub_252F5344C();
    if (sub_252F5344C() != v28)
    {
      v30 = sub_252F5344C();
    }

    sub_252F5344C();
    if (sub_252F5344C() != v29)
    {
      v30 = sub_252F5344C();
    }

    v31 = v36;
    (*(v42 + 32))(v22, v17, v43);
    v32 = &v22[*(v18 + 36)];
    *v32 = v30;
    *(v32 + 8) = 0u;
    *(v32 + 24) = 0u;
    v32[40] = 1;
    v33 = v41;
    sub_252F1BD80(v22, v41);
    sub_252F1BD80(v33, v31);
    return __swift_storeEnumTagSinglePayload(v31, 0, 1, v18);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v18);
  }
}

void sub_252F3F568(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for CallToActionView() + 20);
  v2 = *v1;
  if (*v1)
  {
    v3 = *(type metadata accessor for CallToActionSnippetModel() + 20);
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
    v6 = sub_252F5302C();
    sub_252F5393C();
  }

  else
  {
    v5 = *(v1 + 8);
    sub_252F5394C();
    sub_252F3FB08(&qword_27F575E48, MEMORY[0x277D63F60]);
    sub_252F5325C();
    __break(1u);
  }
}

void sub_252F3F660()
{
  if (qword_27F575E18 != -1)
  {
    swift_once();
  }

  v0 = *(type metadata accessor for CallToActionView() + 24);
  sub_252F53ACC();
  sub_252F5311C();
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v1 = sub_252F5316C();
  __swift_project_value_buffer(v1, qword_27F57B800);
  v2._object = 0x8000000252F58650;
  v3._countAndFlagsBits = 0xD000000000000069;
  v3._object = 0x8000000252F57A80;
  v2._countAndFlagsBits = 0xD00000000000002BLL;
  Logger.debug(output:test:caller:)(v2, 0, v3);
}

uint64_t sub_252F3F7A8(uint64_t a1)
{
  v2 = type metadata accessor for CallToActionSnippetModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252F3F804(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_252F3F864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallToActionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252F3F8C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CallToActionView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_252F3EFD8(v4, a1);
}

unint64_t sub_252F3F938()
{
  result = qword_27F5767D8;
  if (!qword_27F5767D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5767D0, &qword_252F55D50);
    sub_252F3F9BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5767D8);
  }

  return result;
}

unint64_t sub_252F3F9BC()
{
  result = qword_27F5767E0;
  if (!qword_27F5767E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5767E8, &qword_252F55D58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576560, &qword_252F55D60);
    sub_252F5380C();
    sub_252F25B24(&qword_27F576568, &qword_27F576560, &qword_252F55D60);
    sub_252F3FB08(&qword_27F5767F0, MEMORY[0x277D63B78]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5767E0);
  }

  return result;
}

uint64_t sub_252F3FB08(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_252F3FBAC()
{
  type metadata accessor for CallToActionSnippetModel();
  if (v0 <= 0x3F)
  {
    sub_252F252C8();
    if (v1 <= 0x3F)
    {
      sub_252F5314C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_252F3FC48()
{
  result = qword_27F576810;
  if (!qword_27F576810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5767F8, &qword_252F55D68);
    sub_252F25B24(&qword_27F576818, &qword_27F576820, "vL");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576810);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for CallToActionView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 8))(v0 + v3);
  v7 = *(type metadata accessor for CallToActionSnippetModel() + 20);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576258, &unk_252F55030);
  OUTLINED_FUNCTION_1(v8);
  (*(v9 + 8))(v0 + v3 + v7);

  v10 = v1[8];
  v11 = sub_252F5314C();
  OUTLINED_FUNCTION_1(v11);
  (*(v12 + 8))(v0 + v3 + v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252F3FE88(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CallToActionView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t static ColorUtils.fromString(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_252F5399C();
  v6 = v5;
  if (qword_27F575E20 != -1)
  {
    OUTLINED_FUNCTION_1_3();
  }

  v7 = sub_252F408DC(v4, v6, qword_27F57B840);
  if (!v7)
  {
    v7 = sub_252F40984();
  }

  v8 = v7;

  if (qword_27F575E10 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v9 = sub_252F5316C();
  __swift_project_value_buffer(v9, qword_27F57B800);
  sub_252F53B8C();

  MEMORY[0x2530AF890](a1, a2);
  MEMORY[0x2530AF890](540945696, 0xE400000000000000);
  v10 = sub_252F535CC();
  MEMORY[0x2530AF890](v10);

  MEMORY[0x2530AF890](46, 0xE100000000000000);
  v11._countAndFlagsBits = 0xD00000000000001ALL;
  v12._countAndFlagsBits = 0xD000000000000069;
  v12._object = 0x8000000252F586A0;
  v11._object = 0x8000000252F58680;
  Logger.debug(output:test:caller:)(v11, 0, v12);

  return v8;
}

uint64_t sub_252F40088(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      sub_252F5367C();
      break;
    case 1:
      sub_252F5369C();
      break;
    case 2:
      sub_252F5369C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5764F8, &unk_252F55120);
      sub_252F40E38();
      break;
    case 3:
      if (qword_27F575E28 != -1)
      {
        OUTLINED_FUNCTION_2_9();
      }

      goto LABEL_6;
    default:
LABEL_6:

      break;
  }

  return sub_252F5323C();
}

uint64_t SnippetRenderingMode.toUIMode()()
{
  switch(*v0)
  {
    case 1:
      result = sub_252F533AC();
      break;
    case 2:
      result = sub_252F5339C();
      break;
    case 3:
      result = sub_252F533CC();
      break;
    default:
      result = sub_252F533BC();
      break;
  }

  return result;
}

uint64_t static ColorUtils.getColor(colorString:colorDict:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27F575E10 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v6 = sub_252F5316C();
  __swift_project_value_buffer(v6, qword_27F57B800);
  sub_252F53B8C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B8, &qword_252F55E20);
  v7 = sub_252F5398C();
  MEMORY[0x2530AF890](v7);

  MEMORY[0x2530AF890](46, 0xE100000000000000);
  OUTLINED_FUNCTION_7_7(0xD000000000000015, 0x8000000252F58710);

  if (a2)
  {

    if (sub_252F53A1C())
    {
      v8 = sub_252F535BC();
      if (v8)
      {
        v9 = v8;
        sub_252F53B8C();

        v10 = sub_252F535CC();
        MEMORY[0x2530AF890](v10);

        MEMORY[0x2530AF890](46, 0xE100000000000000);
        OUTLINED_FUNCTION_7_7(0xD000000000000013, 0x8000000252F58730);

        return v9;
      }
    }

    else
    {
    }
  }

  v11 = static ColorUtils.fromRGBDictionary(_:)(a3);
  if (!v11)
  {
    if (a2)
    {
      return static ColorUtils.fromString(_:)(a1, a2);
    }

    else
    {
      return sub_252F536BC();
    }
  }

  return v11;
}

uint64_t SnippetHomeDeviceType.onStateColorOverride.getter()
{
  v1 = *v0;
  switch(v1)
  {
    case 18:
      v2 = sub_252F5362C();
      sub_252F5367C();
      sub_252F5362C();
      break;
    case 35:
      v2 = sub_252F5369C();
      sub_252F5364C();
      sub_252F5364C();
      break;
    case 39:
      v2 = sub_252F5361C();
      sub_252F5367C();
      sub_252F5361C();
      break;
    default:
      return 0;
  }

  return v2;
}

uint64_t SnippetHomeDeviceType.offStateColorOverride.getter()
{
  v1 = *v0;
  switch(v1)
  {
    case 18:
      v2 = sub_252F5362C();
      sub_252F5367C();
      sub_252F5362C();
      break;
    case 35:
      v2 = sub_252F5369C();
      if (qword_27F575E28 != -1)
      {
        OUTLINED_FUNCTION_2_9();
      }

      sub_252F5361C();
      break;
    case 39:
      sub_252F5369C();
      v2 = sub_252F536EC();

      sub_252F5367C();
      sub_252F5369C();
      sub_252F536EC();

      break;
    default:
      return 0;
  }

  return v2;
}

void SnippetHomeDeviceType.onStateModeOverride.getter(char *a1@<X8>)
{
  v2 = *v1;
  if (v2 == 35)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 == 39)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *a1 = v4;
}

uint64_t sub_252F4059C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576838, "xL");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252F55E10;
  *(inited + 32) = 0x6B63616C62;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = sub_252F5365C();
  *(inited + 56) = 1702194274;
  *(inited + 64) = 0xE400000000000000;
  *(inited + 72) = sub_252F535FC();
  *(inited + 80) = 0x6E776F7262;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = sub_252F5366C();
  *(inited + 104) = 0x7261656C63;
  *(inited + 112) = 0xE500000000000000;
  *(inited + 120) = sub_252F5367C();
  *(inited + 128) = 1851881827;
  *(inited + 136) = 0xE400000000000000;
  *(inited + 144) = sub_252F5360C();
  *(inited + 152) = 2036429415;
  *(inited + 160) = 0xE400000000000000;
  *(inited + 168) = sub_252F5361C();
  *(inited + 176) = 0x6E65657267;
  *(inited + 184) = 0xE500000000000000;
  *(inited + 192) = sub_252F5368C();
  *(inited + 200) = 0x6F6769646E69;
  *(inited + 208) = 0xE600000000000000;
  *(inited + 216) = sub_252F536AC();
  *(inited + 224) = 1953393005;
  *(inited + 232) = 0xE400000000000000;
  *(inited + 240) = sub_252F5362C();
  *(inited + 248) = 0x65676E61726FLL;
  *(inited + 256) = 0xE600000000000000;
  *(inited + 264) = sub_252F536BC();
  *(inited + 272) = 1802398064;
  *(inited + 280) = 0xE400000000000000;
  *(inited + 288) = sub_252F5363C();
  *(inited + 296) = 0x7972616D697270;
  *(inited + 304) = 0xE700000000000000;
  *(inited + 312) = sub_252F536FC();
  *(inited + 320) = 0x656C70727570;
  *(inited + 328) = 0xE600000000000000;
  *(inited + 336) = sub_252F536CC();
  *(inited + 344) = 6579570;
  *(inited + 352) = 0xE300000000000000;
  *(inited + 360) = sub_252F535EC();
  *(inited + 368) = 1818322292;
  *(inited + 376) = 0xE400000000000000;
  *(inited + 384) = sub_252F5364C();
  *(inited + 392) = 0x7261646E6F636573;
  *(inited + 400) = 0xE900000000000079;
  *(inited + 408) = sub_252F5370C();
  *(inited + 416) = 0x6574696877;
  *(inited + 424) = 0xE500000000000000;
  *(inited + 432) = sub_252F5369C();
  *(inited + 440) = 0x776F6C6C6579;
  *(inited + 448) = 0xE600000000000000;
  *(inited + 456) = sub_252F536DC();
  result = sub_252F5395C();
  qword_27F57B840 = result;
  return result;
}

uint64_t static ColorUtils.fromRGBDictionary(_:)(uint64_t a1)
{
  v4 = sub_252F535DC();
  v5 = OUTLINED_FUNCTION_3_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_5();
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v10 = sub_252F40C60(114, 0xE100000000000000);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_7(v10);
  if (v12)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_5();
  if (v13)
  {
    return 0;
  }

  v15.n128_f64[0] = (*(v7 + 104))(v2, *MEMORY[0x277CE0EE0], v1);
  return OUTLINED_FUNCTION_6_6(v15, v16, v17, v18);
}

uint64_t sub_252F408DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_252F40C60(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_252F4092C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_252F40C60(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_252F40984()
{
  if (qword_27F575E20 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v0 = qword_27F57B840;
    v1 = qword_27F57B840 + 64;
    v2 = 1 << *(qword_27F57B840 + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    v4 = v3 & *(qword_27F57B840 + 64);
    v5 = (v2 + 63) >> 6;

    v6 = 0;
    if (v4)
    {
      break;
    }

LABEL_6:
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v5)
      {

        return sub_252F5365C();
      }

      v4 = *(v1 + 8 * v7);
      ++v6;
      if (v4)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_16:
    OUTLINED_FUNCTION_1_3();
  }

  while (1)
  {
    v7 = v6;
LABEL_9:
    v8 = __clz(__rbit64(v4)) | (v7 << 6);
    v9 = (*(v0 + 48) + 16 * v8);
    v10 = *(*(v0 + 56) + 8 * v8);
    v12 = *v9;
    v13 = v9[1];
    sub_252F30A14();

    if (sub_252F53B6C())
    {
      break;
    }

    v4 &= v4 - 1;

    v6 = v7;
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  return v10;
}

uint64_t Color.init(_:)(uint64_t a1)
{
  v4 = sub_252F535DC();
  v5 = OUTLINED_FUNCTION_3_9(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_5();
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 16) || (v10 = sub_252F40C60(114, 0xE100000000000000), (v11 & 1) == 0) || (OUTLINED_FUNCTION_5_7(v10), (v12 & 1) != 0))
  {

    return 0;
  }

  OUTLINED_FUNCTION_8_5();
  v15 = v14;

  if (v15)
  {
    return 0;
  }

  v16.n128_f64[0] = (*(v7 + 104))(v2, *MEMORY[0x277CE0EE0], v1);
  return OUTLINED_FUNCTION_6_6(v16, v17, v18, v19);
}

uint64_t sub_252F40C1C()
{
  sub_252F5365C();
  v0 = sub_252F536EC();

  qword_27F57B848 = v0;
  return result;
}

unint64_t sub_252F40C60(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_252F53CCC();
  sub_252F539BC();
  v6 = sub_252F53CEC();

  return sub_252F40D84(a1, a2, v6);
}

_BYTE *storeEnumTagSinglePayload for ColorUtils(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_252F40D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_252F53CAC() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_252F40E38()
{
  result = qword_27F576500;
  if (!qword_27F576500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5764F8, &unk_252F55120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576500);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_7(uint64_t a1)
{
  v3 = *(*(v1 + 56) + 8 * a1);

  return sub_252F4092C(103, 0xE100000000000000, v1);
}

uint64_t OUTLINED_FUNCTION_6_6(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  a4.n128_u64[0] = 1.0;
  a1.n128_u64[0] = v6;
  a2.n128_u64[0] = v7;
  a3.n128_u64[0] = v8;

  return MEMORY[0x282133528](v4, a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_8_5()
{

  return sub_252F4092C(98, 0xE100000000000000, v0);
}

uint64_t CompletionView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CompletionView();
  v5 = (a2 + v4[5]);
  sub_252F5394C();
  OUTLINED_FUNCTION_2_10();
  sub_252F42B28(v6, v7);
  *v5 = sub_252F5326C();
  v5[1] = v8;
  v9 = v4[8];
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576328, &qword_252F54D50);
  swift_storeEnumTagMultiPayload();
  sub_252F42BCC(a1, a2);
  v10 = type metadata accessor for CompletionSnippetModel();
  v11 = *(v10 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  sub_252F530BC();
  v12 = a2 + v4[6];
  *v12 = v22;
  *(v12 + 8) = 0;
  v13 = *(v10 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  sub_252F530BC();
  v14 = a2 + v4[7];
  *v14 = (v22 == 2) | v22 & 1;
  *(v14 + 8) = 0;
  if (qword_27F575E18 != -1)
  {
    swift_once();
  }

  v15 = v4[9];
  v16 = qword_27F57B818;
  sub_252F5313C();
  sub_252F53ADC();
  sub_252F5312C();
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v17 = sub_252F5316C();
  __swift_project_value_buffer(v17, qword_27F57B800);
  sub_252F53B8C();

  v18 = CompletionSnippetModel.description.getter();
  MEMORY[0x2530AF890](v18);

  v19._countAndFlagsBits = 0xD00000000000002FLL;
  v20._countAndFlagsBits = 0xD000000000000067;
  v20._object = 0x8000000252F587A0;
  v19._object = 0x8000000252F58770;
  Logger.debug(output:test:caller:)(v19, 0, v20);

  return sub_252F42C40(a1, type metadata accessor for CompletionSnippetModel);
}

uint64_t type metadata accessor for CompletionView()
{
  result = qword_27F5768B0;
  if (!qword_27F5768B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252F412D4(uint64_t a1)
{
  v2 = sub_252F531EC();
  v3 = OUTLINED_FUNCTION_16(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_252F532BC();
}

uint64_t CompletionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v141 = a1;
  v127 = sub_252F538EC();
  v3 = OUTLINED_FUNCTION_16(v127);
  v126 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_8(&v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576840, &qword_252F55E98);
  OUTLINED_FUNCTION_1(v130);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_7_8(v11);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576848, &qword_252F55EA0);
  OUTLINED_FUNCTION_16(v132);
  v131 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_7_8(v16);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576850, &qword_252F55EA8);
  OUTLINED_FUNCTION_1(v139);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_7_8(v20);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576858, &qword_252F55EB0);
  OUTLINED_FUNCTION_1(v136);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_7_8(v24);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576860, &qword_252F55EB8);
  OUTLINED_FUNCTION_1(v134);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_7_8(v28);
  v124 = type metadata accessor for CompletionView();
  v29 = OUTLINED_FUNCTION_16(v124);
  v137 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576868, &qword_252F55EC0);
  OUTLINED_FUNCTION_1(v133);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_7_8(v36);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576870, &qword_252F55EC8);
  OUTLINED_FUNCTION_1(v138);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_7_8(v40);
  v41 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880) - 8) + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v42);
  v44 = &v121 - v43;
  v45 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0) - 8) + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v46);
  v48 = &v121 - v47;
  v49 = type metadata accessor for IconConfiguration();
  v50 = OUTLINED_FUNCTION_1(v49);
  v52 = *(v51 + 64);
  v53 = MEMORY[0x28223BE20](v50);
  v55 = &v121 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v57 = &v121 - v56;
  v58 = type metadata accessor for CompletionSnippetModel();
  v59 = v58[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E0, "nR");
  sub_252F530BC();
  if (__swift_getEnumTagSinglePayload(v48, 1, v49) == 1)
  {
    sub_252F25CDC(v48, &qword_27F576260, &qword_252F54AA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
    sub_252F530BC();
    v60 = MEMORY[0x277D837D0];
    v61 = MEMORY[0x277D63F80];
    v157 = MEMORY[0x277D837D0];
    v158 = MEMORY[0x277D63F80];
    v62 = v58[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    sub_252F530BC();
    v63 = v151;
    v64 = v152;
    v153 = v60;
    v154 = v61;
    if (!v152)
    {
      v63 = 0;
      v64 = 0xE000000000000000;
    }

    v151 = v63;
    v152 = v64;
    v150 = 0;
    v148 = 0u;
    v149 = 0u;
    v147 = 0;
    v145 = 0u;
    v146 = 0u;
    v144 = 0;
    v143 = 0u;
    v142 = 0u;
    v65 = v125;
    sub_252F538DC();
    sub_252F42BCC(v2, &v121 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
    v66 = (*(v137 + 80) + 16) & ~*(v137 + 80);
    v67 = swift_allocObject();
    sub_252F42B70(&v121 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v67 + v66);
    v68 = v128;
    (*(v126 + 32))(v128, v65, v127);
    v69 = v130;
    v70 = (v68 + *(v130 + 9));
    *v70 = sub_252F42838;
    v70[1] = v67;
    v70[2] = 0;
    v70[3] = 0;
    sub_252F42BCC(v2, &v121 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
    v71 = swift_allocObject();
    sub_252F42B70(&v121 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v71 + v66);
    v72 = sub_252F42868();
    v73 = v129;
    sub_252F5351C();

    sub_252F25CDC(v68, &qword_27F576840, &qword_252F55E98);
    v155 = v69;
    v156 = v72;
    swift_getOpaqueTypeConformance2();
    v74 = v132;
    v75 = sub_252F534EC();
    (*(v131 + 8))(v73, v74);
    *v140 = v75;
    swift_storeEnumTagMultiPayload();
    sub_252F42924();
    return sub_252F533EC();
  }

  else
  {
    v131 = v32;
    v132 = &v121 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_252F42B70(v48, v57);
    v130 = v57;
    sub_252F42BCC(v57, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
    sub_252F530BC();
    v77 = v155;
    v129 = v156;
    v78 = v58[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    sub_252F530BC();
    v79 = v155;
    if (!v156)
    {
      v79 = 0;
    }

    v128 = v79;
    v80 = 0xE000000000000000;
    if (v156)
    {
      v80 = v156;
    }

    v127 = v80;
    v81 = v58[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
    sub_252F530BC();
    LOBYTE(v81) = v155;
    v82 = v58[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
    sub_252F530BC();
    v83 = v155;
    v84 = v2 + v58[8];
    sub_252F530BC();
    v85 = v155;
    v86 = v58[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
    sub_252F530BC();
    v87 = v2 + v58[11];
    sub_252F530BC();
    v88 = v155;
    v89 = type metadata accessor for SnippetDetailsModel();
    v90 = *(v89 + 48);
    v91 = *(v89 + 52);
    swift_allocObject();
    v92 = sub_252F43314(v55, v77, v129, v128, v127, v81 & 1, v83, v85, v44, v88);
    v93 = v2 + *(v124 + 20);
    if (*v93)
    {
      v94 = v92;
      v95 = *v93;
      sub_252F5391C();

      v96 = sub_252F53B0C();
      v97 = v140;
      v98 = v137;
      if (v96)
      {
        swift_getKeyPath();
        OUTLINED_FUNCTION_9_5();
        v99 = type metadata accessor for CompletionSnippetViewTVOS();
        v100 = v123;
        *(v123 + *(v99 + 24)) = v95;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576328, &qword_252F54D50);
        swift_storeEnumTagMultiPayload();
        *v100 = sub_252F2DDFC;
        *(v100 + 8) = v94;
        *(v100 + 16) = 0;
        sub_252F5394C();
        OUTLINED_FUNCTION_2_10();
        sub_252F42B28(v101, v102);

        *(v100 + 24) = sub_252F5326C();
        *(v100 + 32) = v103;
        v104 = v100 + *(v99 + 28);
        LOBYTE(v151) = 0;
        sub_252F5374C();
        v105 = v156;
        *v104 = v155;
        *(v104 + 8) = v105;
        OUTLINED_FUNCTION_4_6();
        v106 = (*(v98 + 80) + 16) & ~*(v98 + 80);
        v107 = OUTLINED_FUNCTION_12_4();
        OUTLINED_FUNCTION_5_8(v107);
        v108 = (v100 + *(v133 + 36));
        *v108 = sub_252F42FC4;
        v108[1] = v104;
        v108[2] = 0;
        v108[3] = 0;
        v109 = &qword_27F576868;
        v110 = &qword_252F55EC0;
        sub_252F43050(v100, v135, &qword_27F576868, &qword_252F55EC0);
        swift_storeEnumTagMultiPayload();
        sub_252F429B0();
        sub_252F42A6C();
        OUTLINED_FUNCTION_10_4();
        sub_252F533EC();
        v111 = v100;
      }

      else
      {

        v113 = v122;
        sub_252F2AD70(v112, v122);
        OUTLINED_FUNCTION_4_6();
        v114 = (*(v98 + 80) + 16) & ~*(v98 + 80);
        v115 = OUTLINED_FUNCTION_12_4();
        OUTLINED_FUNCTION_5_8(v115);
        v116 = (v113 + *(v136 + 36));
        *v116 = sub_252F42C28;
        v116[1] = v95;
        v116[2] = 0;
        v116[3] = 0;
        v109 = &qword_27F576858;
        v110 = &qword_252F55EB0;
        sub_252F43050(v113, v135, &qword_27F576858, &qword_252F55EB0);
        swift_storeEnumTagMultiPayload();
        sub_252F429B0();
        sub_252F42A6C();
        OUTLINED_FUNCTION_10_4();
        sub_252F533EC();
        v111 = v113;
      }

      sub_252F25CDC(v111, v109, v110);
      v117 = v130;
      sub_252F43050(v98, v97, &qword_27F576870, &qword_252F55EC8);
      swift_storeEnumTagMultiPayload();
      sub_252F42924();
      sub_252F533EC();

      sub_252F25CDC(v98, &qword_27F576870, &qword_252F55EC8);
      return sub_252F42C40(v117, type metadata accessor for IconConfiguration);
    }

    else
    {
      v118 = *(v93 + 8);
      sub_252F5394C();
      OUTLINED_FUNCTION_2_10();
      sub_252F42B28(v119, v120);
      result = sub_252F5325C();
      __break(1u);
    }
  }

  return result;
}

void sub_252F420C0()
{
  if (qword_27F575E18 != -1)
  {
    swift_once();
  }

  v0 = *(type metadata accessor for CompletionView() + 36);
  sub_252F53ACC();
  sub_252F5311C();
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v1 = sub_252F5316C();
  __swift_project_value_buffer(v1, qword_27F57B800);
  v2._object = 0x8000000252F58810;
  v3._countAndFlagsBits = 0xD000000000000067;
  v3._object = 0x8000000252F587A0;
  v2._countAndFlagsBits = 0xD00000000000002CLL;
  Logger.debug(output:test:caller:)(v2, 0, v3);
}

uint64_t sub_252F42204()
{
  if (qword_27F575E18 != -1)
  {
    swift_once();
  }

  v0 = *(type metadata accessor for CompletionView() + 36);
  sub_252F53ACC();
  sub_252F5311C();
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v1 = sub_252F5316C();
  __swift_project_value_buffer(v1, qword_27F57B800);
  sub_252F53B8C();

  v2 = CompletionSnippetModel.description.getter();
  MEMORY[0x2530AF890](v2);

  v3._countAndFlagsBits = 0xD000000000000030;
  v4._countAndFlagsBits = 0xD000000000000067;
  v4._object = 0x8000000252F587A0;
  v3._object = 0x8000000252F58840;
  Logger.debug(output:test:caller:)(v3, 0, v4);
}

uint64_t sub_252F4239C()
{
  if (qword_27F575E18 != -1)
  {
    swift_once();
  }

  v0 = *(type metadata accessor for CompletionView() + 36);
  sub_252F53ACC();
  sub_252F5311C();
  if (qword_27F575E10 != -1)
  {
    swift_once();
  }

  v1 = sub_252F5316C();
  __swift_project_value_buffer(v1, qword_27F57B800);
  sub_252F53B8C();

  v2 = CompletionSnippetModel.description.getter();
  MEMORY[0x2530AF890](v2);

  v3._countAndFlagsBits = 0xD000000000000030;
  v4._countAndFlagsBits = 0xD000000000000067;
  v4._object = 0x8000000252F587A0;
  v3._object = 0x8000000252F58880;
  Logger.debug(output:test:caller:)(v3, 0, v4);
}

uint64_t sub_252F42534(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - v7;
  v9 = sub_252F52FBC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(type metadata accessor for CompletionSnippetModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
  sub_252F530BC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v9) == 1)
  {
    sub_252F25CDC(v6, &qword_27F576050, &unk_252F54880);
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
    return sub_252F25CDC(v8, &qword_27F576050, &unk_252F54880);
  }

  sub_252F52F6C();
  v15 = *(v10 + 8);
  v15(v6, v9);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_252F25CDC(v8, &qword_27F576050, &unk_252F54880);
  }

  (*(v10 + 32))(v13, v8, v9);
  v17 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  v18 = sub_252F52F8C();
  [v17 setPunchOutUri_];

  v19 = a1 + *(type metadata accessor for CompletionView() + 20);
  if (*v19)
  {
    v20 = *v19;
    v21 = v17;
    sub_252F5392C();

    return (v15)(v13, v9);
  }

  else
  {
    v22 = *(v19 + 8);
    sub_252F5394C();
    sub_252F42B28(&qword_27F575E48, MEMORY[0x277D63F60]);
    result = sub_252F5325C();
    __break(1u);
  }

  return result;
}

unint64_t sub_252F42868()
{
  result = qword_27F576878;
  if (!qword_27F576878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576840, &qword_252F55E98);
    sub_252F42B28(&qword_27F576880, MEMORY[0x277D63D90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576878);
  }

  return result;
}

unint64_t sub_252F42924()
{
  result = qword_27F576888;
  if (!qword_27F576888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576870, &qword_252F55EC8);
    sub_252F429B0();
    sub_252F42A6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576888);
  }

  return result;
}

unint64_t sub_252F429B0()
{
  result = qword_27F576890;
  if (!qword_27F576890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576868, &qword_252F55EC0);
    sub_252F42B28(&qword_27F576898, type metadata accessor for CompletionSnippetViewTVOS);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576890);
  }

  return result;
}

unint64_t sub_252F42A6C()
{
  result = qword_27F5768A0;
  if (!qword_27F5768A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576858, &qword_252F55EB0);
    sub_252F42B28(&qword_27F5768A8, type metadata accessor for CompletionSnippetView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5768A0);
  }

  return result;
}

uint64_t sub_252F42B28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252F42B70(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_9_5();
  v6 = v5(v4);
  OUTLINED_FUNCTION_1(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_252F42BCC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_9_5();
  v6 = v5(v4);
  OUTLINED_FUNCTION_1(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_252F42C40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for CompletionView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v34 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  OUTLINED_FUNCTION_0_1(v5);
  (*(v6 + 8))(v0 + v3);
  v7 = type metadata accessor for CompletionSnippetModel();
  v8 = v7[5];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_0_1(v9);
  (*(v10 + 8))(v0 + v3 + v8);
  v11 = v7[6];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  OUTLINED_FUNCTION_0_1(v12);
  (*(v13 + 8))(v0 + v3 + v11);
  v14 = v7[7];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  OUTLINED_FUNCTION_1(v15);
  v17 = *(v16 + 8);
  v17(v0 + v3 + v14, v15);
  v17(v0 + v3 + v7[8], v15);
  v18 = v7[9];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E0, "nR");
  OUTLINED_FUNCTION_0_1(v19);
  (*(v20 + 8))(v0 + v3 + v18);
  v21 = v7[10];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
  OUTLINED_FUNCTION_0_1(v22);
  (*(v23 + 8))(v0 + v3 + v21);
  v17(v0 + v3 + v7[11], v15);

  v24 = *(v0 + v3 + v1[6] + 8);

  v25 = *(v0 + v3 + v1[7] + 8);

  v26 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576328, &qword_252F54D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = sub_252F531EC();
    OUTLINED_FUNCTION_0_1(v27);
    (*(v28 + 8))(v4 + v26);
  }

  else
  {
    v29 = *(v4 + v26);
  }

  v30 = v1[9];
  v31 = sub_252F5314C();
  OUTLINED_FUNCTION_0_1(v31);
  (*(v32 + 8))(v4 + v30);

  return MEMORY[0x2821FE8E8](v0, v3 + v34, v2 | 7);
}

uint64_t sub_252F42FDC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CompletionView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_252F43050(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_1(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

void sub_252F430F4()
{
  type metadata accessor for CompletionSnippetModel();
  if (v0 <= 0x3F)
  {
    sub_252F252C8();
    if (v1 <= 0x3F)
    {
      sub_252F2DCBC();
      if (v2 <= 0x3F)
      {
        sub_252F307F8();
        if (v3 <= 0x3F)
        {
          sub_252F5314C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_252F431C0()
{
  result = qword_27F5768C0;
  if (!qword_27F5768C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5768C8, "vL");
    sub_252F42924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5768C0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_6()
{
  v3 = *(v1 - 392);

  return sub_252F42BCC(v0, v3);
}

uint64_t OUTLINED_FUNCTION_5_8(uint64_t a1)
{

  return sub_252F42B70(v2, a1 + v1);
}

uint64_t OUTLINED_FUNCTION_12_4()
{
  v3 = v0 + *(v1 - 400);

  return swift_allocObject();
}

uint64_t sub_252F43314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, unsigned __int8 a10)
{
  v43 = a7;
  v44 = a8;
  v42 = a6;
  v40 = a4;
  v41 = a5;
  v36 = a2;
  v37 = a3;
  v47 = a1;
  v46 = a10;
  v45 = a9;
  v35 = type metadata accessor for IconConfiguration();
  v11 = OUTLINED_FUNCTION_1(v35);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576920, &qword_252F55F68);
  v38 = *(v19 - 8);
  v20 = v38;
  v21 = *(v38 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v34 - v22;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  v24 = *(*(v39 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v39);
  v27 = &v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v34 - v28;
  v30 = OBJC_IVAR____TtC25HomeAutomationUIFramework19SnippetDetailsModel__punchout;
  v31 = sub_252F52FBC();
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v31);
  sub_252F26494(v29, v27);
  sub_252F5319C();
  sub_252F26504(v29);
  (*(v20 + 32))(v10 + v30, v23, v19);
  sub_252F37538(v47, v18);
  swift_beginAccess();
  sub_252F37538(v18, v16);
  sub_252F5319C();
  sub_252F3759C(v18);
  swift_endAccess();
  OUTLINED_FUNCTION_0_5();
  v48 = v36;
  v49 = v37;
  OUTLINED_FUNCTION_2_11();
  swift_endAccess();
  OUTLINED_FUNCTION_0_5();
  v48 = v40;
  v49 = v41;
  OUTLINED_FUNCTION_2_11();
  swift_endAccess();
  OUTLINED_FUNCTION_0_5();
  LOBYTE(v48) = v42;
  OUTLINED_FUNCTION_2_11();
  swift_endAccess();
  OUTLINED_FUNCTION_0_5();
  LOBYTE(v48) = v43;
  OUTLINED_FUNCTION_2_11();
  swift_endAccess();
  OUTLINED_FUNCTION_0_5();
  LOBYTE(v48) = v44;
  OUTLINED_FUNCTION_2_11();
  swift_endAccess();
  v32 = v45;
  sub_252F26494(v45, v29);
  swift_beginAccess();
  (*(v38 + 8))(v10 + v30, v19);
  sub_252F26494(v29, v27);
  sub_252F5319C();
  sub_252F26504(v29);
  swift_endAccess();
  OUTLINED_FUNCTION_0_5();
  LOBYTE(v48) = v46;
  OUTLINED_FUNCTION_2_11();
  swift_endAccess();
  sub_252F26504(v32);
  sub_252F3759C(v47);
  return v10;
}

uint64_t sub_252F436E8(uint64_t a1)
{
  v2 = type metadata accessor for IconConfiguration();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252F37538(a1, v5);

  OUTLINED_FUNCTION_7_9();
  return sub_252F3759C(a1);
}

uint64_t sub_252F437C8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_252F531BC();
}

uint64_t sub_252F4387C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252F26494(a1, v5);

  OUTLINED_FUNCTION_7_9();
  return sub_252F26504(a1);
}

uint64_t sub_252F43950()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_252F531BC();
}

uint64_t sub_252F439F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252F531AC();

  return v1;
}

uint64_t sub_252F43AB4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252F531AC();
}

uint64_t sub_252F43B38()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_252F531AC();

  return v1;
}

uint64_t sub_252F43BC8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_252F26494(a1, &v10 - v6);
  v8 = *a2;
  return sub_252F4387C(v7);
}

uint64_t SnippetDetailsModel.deinit()
{
  v1 = OBJC_IVAR____TtC25HomeAutomationUIFramework19SnippetDetailsModel__iconConfigs;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5768D8, &qword_252F55F50);
  OUTLINED_FUNCTION_1(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtC25HomeAutomationUIFramework19SnippetDetailsModel__primaryText;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5768E8, &qword_252F55F58);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 8);
  v7(v0 + v4, v5);
  v8 = OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC25HomeAutomationUIFramework19SnippetDetailsModel__secondaryText);
  (v7)(v8);
  v9 = OBJC_IVAR____TtC25HomeAutomationUIFramework19SnippetDetailsModel__isBooleanTrueResponse;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576900, &qword_252F55F60);
  OUTLINED_FUNCTION_1(v10);
  v12 = *(v11 + 8);
  v12(v0 + v9, v10);
  v13 = OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC25HomeAutomationUIFramework19SnippetDetailsModel__isSuccess);
  (v12)(v13);
  v14 = OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC25HomeAutomationUIFramework19SnippetDetailsModel__inProgress);
  (v12)(v14);
  v15 = OBJC_IVAR____TtC25HomeAutomationUIFramework19SnippetDetailsModel__punchout;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576920, &qword_252F55F68);
  OUTLINED_FUNCTION_1(v16);
  (*(v17 + 8))(v0 + v15);
  v18 = OUTLINED_FUNCTION_6_7(OBJC_IVAR____TtC25HomeAutomationUIFramework19SnippetDetailsModel__toggleEnabled);
  (v12)(v18);
  return v0;
}

uint64_t SnippetDetailsModel.__deallocating_deinit()
{
  SnippetDetailsModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_252F43E68@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SnippetDetailsModel();
  result = sub_252F5318C();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for SnippetDetailsModel()
{
  result = qword_27F576930;
  if (!qword_27F576930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252F43EFC()
{
  sub_252F44078();
  if (v1 <= 0x3F)
  {
    v9 = *(v0 - 8) + 64;
    sub_252F440D0(319, &qword_27F576948);
    if (v3 <= 0x3F)
    {
      v10 = *(v2 - 8) + 64;
      sub_252F440D0(319, &qword_27F576950);
      if (v5 <= 0x3F)
      {
        v6 = *(v4 - 8) + 64;
        sub_252F4411C();
        if (v8 <= 0x3F)
        {
          v11 = *(v7 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_252F44078()
{
  if (!qword_27F576940)
  {
    type metadata accessor for IconConfiguration();
    v0 = sub_252F531CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F576940);
    }
  }
}

void sub_252F440D0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_252F531CC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_252F4411C()
{
  if (!qword_27F576958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F576050, &unk_252F54880);
    v0 = sub_252F531CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F576958);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_11()
{

  return sub_252F5319C();
}

uint64_t OUTLINED_FUNCTION_3_10(unsigned __int8 *a1, uint64_t *a2)
{
  result = *a1;
  v3 = *a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_9()
{

  return sub_252F531BC();
}

unint64_t CompletionSnippetModel.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v5);
  v36 = &v35 - v6;
  v40 = 0xD000000000000017;
  v41 = 0x8000000252F58970;
  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_252F53B8C();

  strcpy(v39, "primaryText: ");
  HIWORD(v39[1]) = -4864;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  MEMORY[0x2530AF890](v37, v38);

  OUTLINED_FUNCTION_30_1();
  MEMORY[0x2530AF890](v39[0], v39[1]);

  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_252F53B8C();
  MEMORY[0x2530AF890](0xD000000000000017, 0x8000000252F58990);
  v7 = type metadata accessor for CompletionSnippetModel();
  v8 = v7[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  sub_252F530BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761C0, &qword_252F54890);
  sub_252F53BCC();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_6_1();

  strcpy(v39, "isSuccess: ");
  HIDWORD(v39[1]) = -352321536;
  v9 = v7[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  sub_252F530BC();
  OUTLINED_FUNCTION_13_5();
  if (v10)
  {
    v11 = 0x65736C6166;
  }

  else
  {
    v11 = 1702195828;
  }

  if (v10)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  MEMORY[0x2530AF890](v11, v12);

  OUTLINED_FUNCTION_30_1();
  MEMORY[0x2530AF890](v39[0], v39[1]);

  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_252F53B8C();

  OUTLINED_FUNCTION_18_2(0x6572676F72506E69);
  v13 = v1 + v7[8];
  sub_252F530BC();
  OUTLINED_FUNCTION_13_5();
  if (v14)
  {
    v15 = 0x65736C6166;
  }

  else
  {
    v15 = 1702195828;
  }

  if (v14)
  {
    v16 = 0xE500000000000000;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  MEMORY[0x2530AF890](v15, v16);

  OUTLINED_FUNCTION_30_1();
  MEMORY[0x2530AF890](v39[0], v39[1]);

  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_252F53B8C();

  v39[0] = 0x6E45656C67676F74;
  v39[1] = 0xEF203A64656C6261;
  v17 = v1 + v7[11];
  sub_252F530BC();
  OUTLINED_FUNCTION_13_5();
  if (v18)
  {
    v19 = 0x65736C6166;
  }

  else
  {
    v19 = 1702195828;
  }

  if (v18)
  {
    v20 = 0xE500000000000000;
  }

  else
  {
    v20 = 0xE400000000000000;
  }

  MEMORY[0x2530AF890](v19, v20);

  OUTLINED_FUNCTION_6_1();

  v21 = v7[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  sub_252F530BC();
  v22 = v39[1];
  if (v39[1])
  {
    v23 = v39[0];
    v39[0] = 0;
    v39[1] = 0xE000000000000000;
    sub_252F53B8C();

    OUTLINED_FUNCTION_23_1();
    v39[0] = v25 - 6;
    v39[1] = v24;
    MEMORY[0x2530AF890](v23, v22);

    OUTLINED_FUNCTION_6_1();
  }

  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_252F53B8C();

  OUTLINED_FUNCTION_23_1();
  v39[0] = v27 - 2;
  v39[1] = v26;
  v28 = v7[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E0, "nR");
  v29 = v36;
  sub_252F530BC();
  v30 = type metadata accessor for IconConfiguration();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v30);
  sub_252F25CDC(v29, &qword_27F576260, &qword_252F54AA0);
  if (EnumTagSinglePayload == 1)
  {
    v32 = 0x65736C6166;
  }

  else
  {
    v32 = 1702195828;
  }

  if (EnumTagSinglePayload == 1)
  {
    v33 = 0xE500000000000000;
  }

  else
  {
    v33 = 0xE400000000000000;
  }

  MEMORY[0x2530AF890](v32, v33);

  MEMORY[0x2530AF890](v39[0], v39[1]);

  MEMORY[0x2530AF890](41, 0xE100000000000000);
  return v40;
}

uint64_t CompletionSnippetModel.secondaryText.getter()
{
  v0 = *(type metadata accessor for CompletionSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  sub_252F530BC();
  return v2;
}

uint64_t CompletionSnippetModel.iconConfiguration.getter()
{
  v0 = *(type metadata accessor for CompletionSnippetModel() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E0, "nR");
  return sub_252F530BC();
}

uint64_t CompletionSnippetModel.isBooleanTrueResponse.getter()
{
  v0 = *(type metadata accessor for CompletionSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  OUTLINED_FUNCTION_29_0();
  return v2;
}

uint64_t CompletionSnippetModel.isSuccess.getter()
{
  v0 = *(type metadata accessor for CompletionSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  OUTLINED_FUNCTION_29_0();
  return v2;
}

uint64_t CompletionSnippetModel.inProgress.getter()
{
  v0 = *(type metadata accessor for CompletionSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  OUTLINED_FUNCTION_29_0();
  return v2;
}

uint64_t CompletionSnippetModel.toggleEnabled.getter()
{
  v0 = *(type metadata accessor for CompletionSnippetModel() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  OUTLINED_FUNCTION_29_0();
  return v2;
}

uint64_t CompletionSnippetModel.primaryText.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  return v1;
}

uint64_t type metadata accessor for CompletionSnippetModel()
{
  result = qword_27F576978;
  if (!qword_27F576978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CompletionSnippetModel.punchOut.getter()
{
  v0 = *(type metadata accessor for CompletionSnippetModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
  return sub_252F530BC();
}

uint64_t CompletionSnippetModel.init(primaryText:secondaryText:isBooleanTrueResponse:iconConfiguration:isSuccess:punchOut:inProgress:toggleEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, unsigned __int8 a11)
{
  v64 = a8;
  v62 = a5;
  v63 = a7;
  v60 = a4;
  v61 = a6;
  v59 = a3;
  v57 = a2;
  v55 = a1;
  v65 = a10;
  v66 = a11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  v12 = OUTLINED_FUNCTION_1(v68);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v67 = v15 - v16;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  v20 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_5();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v51 - v25;
  v27 = type metadata accessor for CompletionSnippetModel();
  v28 = v27[5];
  v69 = 0;
  v70 = 0;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B8, &qword_252F55E20);
  sub_252F5309C();
  v56 = v27[6];
  LOBYTE(v69) = 2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761C0, &qword_252F54890);
  sub_252F5309C();
  v51 = v27[9];
  type metadata accessor for IconConfiguration();
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  sub_252F43050(v26, v23, &qword_27F576260, &qword_252F54AA0);
  sub_252F5309C();
  sub_252F25CDC(v26, &qword_27F576260, &qword_252F54AA0);
  v54 = v27[10];
  sub_252F52FBC();
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  sub_252F43050(v19, v67, &qword_27F576050, &unk_252F54880);
  sub_252F5309C();
  sub_252F25CDC(v19, &qword_27F576050, &unk_252F54880);
  v69 = v55;
  v70 = v57;
  sub_252F5309C();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  OUTLINED_FUNCTION_0_1(v37);
  (*(v38 + 8))(a9 + v28);
  v69 = v59;
  v70 = v60;
  sub_252F5309C();
  v39 = v61;
  sub_252F43050(v61, v26, &qword_27F576260, &qword_252F54AA0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E0, "nR");
  OUTLINED_FUNCTION_0_1(v40);
  (*(v41 + 8))(a9 + v51);
  sub_252F43050(v26, v23, &qword_27F576260, &qword_252F54AA0);
  sub_252F5309C();
  sub_252F25CDC(v26, &qword_27F576260, &qword_252F54AA0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  OUTLINED_FUNCTION_0_1(v42);
  (*(v43 + 8))(a9 + v56);
  LOBYTE(v69) = v62;
  sub_252F5309C();
  v44 = v27[7];
  LOBYTE(v69) = v63;
  OUTLINED_FUNCTION_17_2();
  v45 = v64;
  sub_252F43050(v64, v19, &qword_27F576050, &unk_252F54880);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
  OUTLINED_FUNCTION_0_1(v46);
  (*(v47 + 8))(a9 + v54);
  sub_252F43050(v19, v67, &qword_27F576050, &unk_252F54880);
  sub_252F5309C();
  sub_252F25CDC(v19, &qword_27F576050, &unk_252F54880);
  v48 = v27[8];
  LOBYTE(v69) = v65;
  OUTLINED_FUNCTION_17_2();
  v49 = v27[11];
  LOBYTE(v69) = v66;
  OUTLINED_FUNCTION_17_2();
  sub_252F25CDC(v45, &qword_27F576050, &unk_252F54880);
  return sub_252F25CDC(v39, &qword_27F576260, &qword_252F54AA0);
}

uint64_t sub_252F44E8C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CompletionSnippetModel.primaryText.setter();
}

uint64_t (*CompletionSnippetModel.primaryText.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  v2[4] = sub_252F530AC();
  return sub_252F20BA0;
}

uint64_t sub_252F44F80(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return CompletionSnippetModel.secondaryText.setter();
}

uint64_t CompletionSnippetModel.secondaryText.setter()
{
  v0 = *(type metadata accessor for CompletionSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  return sub_252F530CC();
}

uint64_t (*CompletionSnippetModel.secondaryText.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_2_12(v2) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0();
  return sub_252F20BA0;
}

uint64_t CompletionSnippetModel.isBooleanTrueResponse.setter()
{
  v0 = *(OUTLINED_FUNCTION_28_1() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  return OUTLINED_FUNCTION_17_0();
}

uint64_t (*CompletionSnippetModel.isBooleanTrueResponse.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_2_12(v2) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0();
  return sub_252F20BA0;
}

uint64_t CompletionSnippetModel.isSuccess.setter()
{
  v0 = *(OUTLINED_FUNCTION_28_1() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  return OUTLINED_FUNCTION_17_0();
}

uint64_t (*CompletionSnippetModel.isSuccess.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_2_12(v2) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0();
  return sub_252F20BA0;
}

uint64_t CompletionSnippetModel.inProgress.setter()
{
  v0 = *(OUTLINED_FUNCTION_28_1() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  return OUTLINED_FUNCTION_17_0();
}

uint64_t (*CompletionSnippetModel.inProgress.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_2_12(v2) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0();
  return sub_252F1EBA8;
}

uint64_t CompletionSnippetModel.iconConfiguration.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_10_5(v5, v8);
  v6 = *(type metadata accessor for CompletionSnippetModel() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E0, "nR");
  sub_252F530CC();
  return sub_252F25CDC(a1, &qword_27F576260, &qword_252F54AA0);
}

uint64_t (*CompletionSnippetModel.iconConfiguration.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_2_12(v2) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E0, "nR");
  *(v0 + 32) = OUTLINED_FUNCTION_9_0();
  return sub_252F20BA0;
}

uint64_t sub_252F453B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_10(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20]();
  v15 = &v17 - v14;
  sub_252F43050(a1, &v17 - v14, a5, a6);
  return a7(v15);
}

uint64_t CompletionSnippetModel.punchOut.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_10_5(v5, v8);
  v6 = *(type metadata accessor for CompletionSnippetModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
  sub_252F530CC();
  return sub_252F25CDC(a1, &qword_27F576050, &unk_252F54880);
}

uint64_t (*CompletionSnippetModel.punchOut.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_2_12(v2) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0();
  return sub_252F20BA0;
}

uint64_t CompletionSnippetModel.toggleEnabled.setter()
{
  v0 = *(OUTLINED_FUNCTION_28_1() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  return OUTLINED_FUNCTION_17_0();
}

uint64_t (*CompletionSnippetModel.toggleEnabled.modify())()
{
  v1 = OUTLINED_FUNCTION_11_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_2_12(v2) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  *(v0 + 32) = OUTLINED_FUNCTION_9_0();
  return sub_252F20BA0;
}

uint64_t sub_252F45630()
{
  v0 = sub_252F53BDC();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_252F4568C(char a1)
{
  result = 0x547972616D697270;
  switch(a1)
  {
    case 1:
      result = 0x7261646E6F636573;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x7365636375537369;
      break;
    case 5:
      result = 0x74754F68636E7570;
      break;
    case 6:
      result = 0x6572676F72506E69;
      break;
    case 7:
      result = 0x6E45656C67676F74;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_252F457A4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_252F4D18C();
}

uint64_t sub_252F457C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252F45630();
  *a2 = result;
  return result;
}

unint64_t sub_252F457F8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_252F4568C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_252F45840@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252F4567C();
  *a1 = result;
  return result;
}

uint64_t sub_252F45868@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252F45680();
  *a1 = result;
  return result;
}

uint64_t sub_252F45890(uint64_t a1)
{
  v2 = sub_252F46330();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252F458CC(uint64_t a1)
{
  v2 = sub_252F46330();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::String __swiftcall CompletionSnippetModel.responseViewId()()
{
  v0 = 0x8000000252F57F60;
  v1 = 0xD000000000000019;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t CompletionSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a1;
  v91 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576960, &qword_252F56220);
  v94 = OUTLINED_FUNCTION_16(v2);
  v95 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_1(v7, v87);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  v8 = OUTLINED_FUNCTION_1(v97);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v90 = v11 - v12;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v13);
  v96 = &v87 - v14;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v15);
  v17 = &v87 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  v19 = OUTLINED_FUNCTION_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5();
  v89 = v22 - v23;
  OUTLINED_FUNCTION_13();
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v87 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v87 - v28;
  v30 = type metadata accessor for CompletionSnippetModel();
  v31 = OUTLINED_FUNCTION_1(v30);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v87 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v34 + 20);
  v106 = 0;
  v107 = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B8, &qword_252F55E20);
  v102 = v37;
  v92 = v38;
  sub_252F5309C();
  v39 = v30[6];
  LOBYTE(v106) = 2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761C0, &qword_252F54890);
  v103 = v39;
  v93 = v40;
  sub_252F5309C();
  v41 = v30[9];
  type metadata accessor for IconConfiguration();
  OUTLINED_FUNCTION_26_1();
  v88 = v42;
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
  sub_252F43050(v29, v27, &qword_27F576260, &qword_252F54AA0);
  v101 = v41;
  sub_252F5309C();
  v46 = v108;
  sub_252F25CDC(v29, &qword_27F576260, &qword_252F54AA0);
  v98 = v30;
  v47 = v30[10];
  v48 = sub_252F52FBC();
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v48);
  sub_252F43050(v17, v96, &qword_27F576050, &unk_252F54880);
  v104 = v36;
  v100 = v47;
  sub_252F5309C();
  sub_252F25CDC(v17, &qword_27F576050, &unk_252F54880);
  v52 = v46[4];
  __swift_project_boxed_opaque_existential_1(v46, v46[3]);
  sub_252F46330();
  v53 = v99;
  sub_252F53CFC();
  if (v53)
  {
    __swift_destroy_boxed_opaque_existential_1(v108);
    v54 = v104;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    OUTLINED_FUNCTION_0_1(v55);
    (*(v56 + 8))(&v54[v102]);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
    OUTLINED_FUNCTION_0_1(v57);
    (*(v58 + 8))(&v54[v103]);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E0, "nR");
    OUTLINED_FUNCTION_0_1(v59);
    (*(v60 + 8))(&v54[v101]);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
    OUTLINED_FUNCTION_0_1(v61);
    return (*(v62 + 8))(&v54[v100]);
  }

  else
  {
    v99 = v17;
    LOBYTE(v106) = 0;
    v106 = sub_252F53C0C();
    v107 = v63;
    sub_252F5309C();
    OUTLINED_FUNCTION_21(1);
    v64 = sub_252F53C0C();
    v65 = v98;
    v66 = v64;
    v68 = v67;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    OUTLINED_FUNCTION_0_1(v69);
    v71 = v104;
    (*(v70 + 8))(&v104[v102]);
    v106 = v66;
    v107 = v68;
    sub_252F5309C();
    OUTLINED_FUNCTION_21(2);
    LOBYTE(v68) = sub_252F53C1C() & 1;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
    OUTLINED_FUNCTION_0_1(v72);
    (*(v73 + 8))(&v71[v103]);
    LOBYTE(v106) = v68;
    sub_252F5309C();
    OUTLINED_FUNCTION_21(4);
    v74 = sub_252F53C1C();
    v75 = v65[7];
    LOBYTE(v106) = v74 & 1;
    sub_252F5309C();
    OUTLINED_FUNCTION_21(7);
    v76 = sub_252F53C1C();
    v77 = v65[11];
    LOBYTE(v106) = v76 & 1;
    sub_252F5309C();
    OUTLINED_FUNCTION_21(6);
    v78 = sub_252F53C1C();
    v79 = v65[8];
    LOBYTE(v106) = v78 & 1;
    sub_252F5309C();
    LOBYTE(v106) = 3;
    sub_252F46D68(&qword_27F575EC8, type metadata accessor for IconConfiguration);
    v81 = v88;
    v80 = v89;
    sub_252F53C2C();
    __swift_storeEnumTagSinglePayload(v80, 0, 1, v81);
    sub_252F43050(v80, v29, &qword_27F576260, &qword_252F54AA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E0, "nR");
    sub_252F530CC();
    sub_252F25CDC(v80, &qword_27F576260, &qword_252F54AA0);
    LOBYTE(v106) = 5;
    sub_252F46D68(&qword_27F5761D8, MEMORY[0x277CC9260]);
    v82 = v90;
    sub_252F53C2C();
    v83 = v99;
    __swift_storeEnumTagSinglePayload(v82, 0, 1, v48);
    sub_252F43050(v82, v83, &qword_27F576050, &unk_252F54880);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
    v84 = v104;
    sub_252F530CC();
    sub_252F25CDC(v82, &qword_27F576050, &unk_252F54880);
    OUTLINED_FUNCTION_21_1();
    v85(v105, 0);
    sub_252F46384(v84, v91);
    __swift_destroy_boxed_opaque_existential_1(v108);
    return sub_252F42C40(v84, type metadata accessor for CompletionSnippetModel);
  }
}

unint64_t sub_252F46330()
{
  result = qword_27F576968;
  if (!qword_27F576968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576968);
  }

  return result;
}

uint64_t sub_252F46384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompletionSnippetModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CompletionSnippetModel.encode(to:)(uint64_t a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576050, &unk_252F54880);
  OUTLINED_FUNCTION_1(v42);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_24_1(v5, v40[0]);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  OUTLINED_FUNCTION_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v9);
  v11 = v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576970, &qword_252F56228);
  OUTLINED_FUNCTION_16(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v17);
  v19 = v40 - v18;
  v20 = *(a1 + 24);
  v21 = *(a1 + 32);
  v22 = OUTLINED_FUNCTION_25_1();
  __swift_project_boxed_opaque_existential_1(v22, v23);
  sub_252F46330();
  sub_252F53D0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  LOBYTE(v45) = 0;
  v24 = v44;
  sub_252F53C5C();
  if (v24)
  {
    (*(v14 + 8))(v19, v12);
  }

  else
  {
    v40[1] = v6;
    v41 = v11;
    v44 = v14;

    v26 = type metadata accessor for CompletionSnippetModel();
    v27 = v26[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576048, &unk_252F54710);
    sub_252F530BC();
    v46 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B8, &qword_252F55E20);
    sub_252F2750C(&qword_27F5761E8, &qword_27F5761B8, &qword_252F55E20);
    OUTLINED_FUNCTION_19_2();
    OUTLINED_FUNCTION_9_6();
    sub_252F53C7C();

    v28 = v26[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
    sub_252F530BC();
    v46 = 2;
    v29 = OUTLINED_FUNCTION_25_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
    sub_252F2750C(&qword_27F5761F0, &qword_27F5761C0, &qword_252F54890);
    OUTLINED_FUNCTION_19_2();
    OUTLINED_FUNCTION_9_6();
    sub_252F53C7C();
    v31 = v43;
    v32 = v26[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
    sub_252F530BC();
    OUTLINED_FUNCTION_7_10(4);
    v33 = v26[11];
    sub_252F530BC();
    OUTLINED_FUNCTION_7_10(7);
    v34 = v26[8];
    sub_252F530BC();
    OUTLINED_FUNCTION_7_10(6);
    v35 = v26;
    v36 = v26[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E0, "nR");
    v37 = v41;
    sub_252F530BC();
    LOBYTE(v45) = 3;
    sub_252F29FE4();
    OUTLINED_FUNCTION_9_6();
    sub_252F53C7C();
    sub_252F25CDC(v37, &qword_27F576260, &qword_252F54AA0);
    v38 = v35[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761B0, &qword_252F54878);
    sub_252F530BC();
    LOBYTE(v45) = 5;
    sub_252F27574();
    OUTLINED_FUNCTION_9_6();
    sub_252F53C7C();
    v39 = v44;
    sub_252F25CDC(v31, &qword_27F576050, &unk_252F54880);
    return (*(v39 + 8))(v19, v12);
  }
}

uint64_t CompletionSnippetModel.stringId.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F576260, &qword_252F54AA0);
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7_1();
  MEMORY[0x28223BE20](v5);
  v7 = v25 - v6;
  v27 = type metadata accessor for IconConfiguration();
  v8 = OUTLINED_FUNCTION_1(v27);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v26 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  sub_252F53B8C();

  strcpy(v31, "#primaryText: ");
  HIBYTE(v31[1]) = -18;
  v25[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575E88, &qword_252F542B0);
  sub_252F530BC();
  MEMORY[0x2530AF890](v30[0], v30[1]);

  OUTLINED_FUNCTION_18_2(0x6563637553736923);
  v12 = type metadata accessor for CompletionSnippetModel();
  v13 = v12[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F575EA0, &qword_252F54510);
  sub_252F530BC();
  OUTLINED_FUNCTION_13_5();
  if (v14)
  {
    v15 = 0x65736C6166;
  }

  else
  {
    v15 = 1702195828;
  }

  if (v14)
  {
    v16 = 0xE500000000000000;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  MEMORY[0x2530AF890](v15, v16);

  MEMORY[0x2530AF890](v30[0], v30[1]);

  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_252F53B8C();
  MEMORY[0x2530AF890](0xD000000000000018, 0x8000000252F589B0);
  v17 = v12[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761A8, &qword_252F54870);
  sub_252F530BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5761C0, &qword_252F54890);
  sub_252F53BCC();
  MEMORY[0x2530AF890](v30[0], v30[1]);

  strcpy(v30, "#inProgress: ");
  HIWORD(v30[1]) = -4864;
  v18 = v1 + v12[8];
  sub_252F530BC();
  OUTLINED_FUNCTION_13_5();
  if (v19)
  {
    v20 = 0x65736C6166;
  }

  else
  {
    v20 = 1702195828;
  }

  if (v19)
  {
    v21 = 0xE500000000000000;
  }

  else
  {
    v21 = 0xE400000000000000;
  }

  MEMORY[0x2530AF890](v20, v21);

  MEMORY[0x2530AF890](v30[0], v30[1]);

  v22 = v12[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5763E0, "nR");
  sub_252F530BC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v27) == 1)
  {
    sub_252F25CDC(v7, &qword_27F576260, &qword_252F54AA0);
  }

  else
  {
    v23 = v26;
    sub_252F3EAE4(v7, v26);
    strcpy(v30, "#iconName: ");
    HIDWORD(v30[1]) = -352321536;
    sub_252F530BC();
    MEMORY[0x2530AF890](v28, v29);

    MEMORY[0x2530AF890](v30[0], v30[1]);

    sub_252F42C40(v23, type metadata accessor for IconConfiguration);
  }

  return v31[0];
}

uint64_t sub_252F46D68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252F46DB0()
{
  sub_252F46D68(&qword_27F576370, type metadata accessor for CompletionSnippetModel);
  sub_252F46D68(&qword_27F576378, type metadata accessor for CompletionSnippetModel);
  return sub_252F5306C();
}

uint64_t sub_252F46E78()
{
  sub_252F46D68(&qword_27F576370, type metadata accessor for CompletionSnippetModel);
  sub_252F46D68(&qword_27F576378, type metadata accessor for CompletionSnippetModel);
  return sub_252F5305C();
}

uint64_t sub_252F46F80()
{
  sub_252F208D4(319, &qword_27F575F18);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_252F2800C(319, &qword_27F576228, &qword_27F5761B8, &qword_252F55E20);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_252F2800C(319, &qword_27F576230, &qword_27F5761C0, &qword_252F54890);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_252F208D4(319, &qword_27F575F30);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_252F2800C(319, &qword_27F576988, &qword_27F576260, &qword_252F54AA0);
          if (v10 > 0x3F)
          {
            return v9;
          }

          sub_252F2800C(319, &qword_27F576238, &qword_27F576050, &unk_252F54880);
          if (v11 > 0x3F)
          {
            return v9;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t getEnumTagSinglePayload for CompletionSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CompletionSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_252F4726C()
{
  result = qword_27F576990;
  if (!qword_27F576990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576990);
  }

  return result;
}

unint64_t sub_252F472C4()
{
  result = qword_27F576998;
  if (!qword_27F576998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F576998);
  }

  return result;
}

unint64_t sub_252F4731C()
{
  result = qword_27F5769A0;
  if (!qword_27F5769A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5769A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_12(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for CompletionSnippetModel();
}

uint64_t OUTLINED_FUNCTION_7_10@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;

  return sub_252F53C6C();
}

uint64_t OUTLINED_FUNCTION_10_5@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_252F43050(v2, &a2 - a1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_17_2()
{

  return sub_252F5309C();
}

uint64_t OUTLINED_FUNCTION_28_1()
{

  return type metadata accessor for CompletionSnippetModel();
}

uint64_t OUTLINED_FUNCTION_29_0()
{

  return sub_252F530BC();
}

void OUTLINED_FUNCTION_30_1()
{

  JUMPOUT(0x2530AF890);
}

HomeAutomationUIFramework::SnippetRenderingMode_optional __swiftcall SnippetRenderingMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252F53BDC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SnippetRenderingMode.rawValue.getter()
{
  result = 0x6863726172656968;
  switch(*v0)
  {
    case 1:
      result = 0x6C6F6369746C756DLL;
      break;
    case 2:
      result = 0x6F7268636F6E6F6DLL;
      break;
    case 3:
      result = 0x657474656C6170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_252F475F8@<X0>(uint64_t *a1@<X8>)
{
  result = SnippetRenderingMode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

HomeAutomationUIFramework::SnippetHomeDeviceType_optional __swiftcall SnippetHomeDeviceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252F53CBC();

  v5 = 0;
  v6 = 30;
  switch(v3)
  {
    case 0:
      goto LABEL_47;
    case 1:
      v5 = 1;
      goto LABEL_47;
    case 2:
      v5 = 2;
      goto LABEL_47;
    case 3:
      v5 = 3;
      goto LABEL_47;
    case 4:
      v5 = 4;
      goto LABEL_47;
    case 5:
      v5 = 5;
      goto LABEL_47;
    case 6:
      v5 = 6;
      goto LABEL_47;
    case 7:
      v5 = 7;
      goto LABEL_47;
    case 8:
      v5 = 8;
      goto LABEL_47;
    case 9:
      v5 = 9;
      goto LABEL_47;
    case 10:
      v5 = 10;
      goto LABEL_47;
    case 11:
      v5 = 11;
      goto LABEL_47;
    case 12:
      v5 = 12;
      goto LABEL_47;
    case 13:
      v5 = 13;
      goto LABEL_47;
    case 14:
      v5 = 14;
      goto LABEL_47;
    case 15:
      v5 = 15;
      goto LABEL_47;
    case 16:
      v5 = 16;
      goto LABEL_47;
    case 17:
      v5 = 17;
      goto LABEL_47;
    case 18:
      v5 = 18;
      goto LABEL_47;
    case 19:
      v5 = 19;
      goto LABEL_47;
    case 20:
      v5 = 20;
      goto LABEL_47;
    case 21:
      v5 = 21;
      goto LABEL_47;
    case 22:
      v5 = 22;
      goto LABEL_47;
    case 23:
      v5 = 23;
      goto LABEL_47;
    case 24:
      v5 = 24;
      goto LABEL_47;
    case 25:
      v5 = 25;
      goto LABEL_47;
    case 26:
      v5 = 26;
      goto LABEL_47;
    case 27:
      v5 = 27;
      goto LABEL_47;
    case 28:
      v5 = 28;
      goto LABEL_47;
    case 29:
      v5 = 29;
LABEL_47:
      v6 = v5;
      break;
    case 30:
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    case 45:
      v6 = 45;
      break;
    case 46:
      v6 = 46;
      break;
    case 47:
      v6 = 47;
      break;
    default:
      v6 = 48;
      break;
  }

  *v2 = v6;
  return result;
}