void sub_22615E570(char *a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = sub_22616F668();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0A0, &unk_226170E80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v45 - v10;
  v12 = [objc_opt_self() clientWithIdentifier_];
  v13 = *(v2 + 56);
  v14 = *(v2 + 64);
  v15 = sub_22616F7F8();
  v16 = *(v2 + 40);
  v46 = *(v2 + 48);
  v47 = v16;
  v17 = sub_22616F7F8();
  v48 = v12;
  v18 = [v12 levelForFactor:v15 withNamespaceName:v17];

  if (!v18)
  {
    if (qword_28136C3D8 != -1)
    {
      swift_once();
    }

    v25 = sub_22616F788();
    __swift_project_value_buffer(v25, qword_28136D4A0);

    v26 = sub_22616F768();
    v27 = sub_22616FA98();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v50 = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_2261555F8(v13, v14, &v50);
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_2261555F8(v47, v46, &v50);
      _os_log_impl(&dword_22614A000, v26, v27, "Failed to retrieve factor: %s in namespace: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA77C50](v29, -1, -1);
      MEMORY[0x22AA77C50](v28, -1, -1);
    }

    goto LABEL_20;
  }

  if ([v18 levelOneOfCase] == 100)
  {
    v19 = [v18 fileValue];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 path];

      if (v21)
      {
        sub_22616F828();

        v22 = sub_22616F6F8();
        v23 = *(*(v22 - 8) + 56);
        v23(v11, 1, 1, v22);
        (*(v4 + 104))(v7, *MEMORY[0x277CC91D8], v3);
        v24 = v49;
        sub_22616F6D8();

        v23(v24, 0, 1, v22);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  if ([v18 levelOneOfCase] != 101)
  {
    if (qword_28136C3D8 != -1)
    {
      swift_once();
    }

    v39 = sub_22616F788();
    __swift_project_value_buffer(v39, qword_28136D4A0);

    v40 = sub_22616F768();
    v41 = sub_22616FA98();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v50 = v43;
      *v42 = 136315394;
      *(v42 + 4) = sub_2261555F8(v13, v14, &v50);
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_2261555F8(v47, v46, &v50);
      _os_log_impl(&dword_22614A000, v40, v41, "Factor: %s in namespace: %s in not a file nor a directory", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA77C50](v43, -1, -1);
      MEMORY[0x22AA77C50](v42, -1, -1);
    }

LABEL_20:
    v44 = sub_22616F6F8();
    v35 = *(*(v44 - 8) + 56);
    v36 = v44;
    v37 = v49;
    v38 = 1;
    goto LABEL_21;
  }

  v30 = [v18 directoryValue];
  if (!v30)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v31 = v30;
  v32 = [v30 path];

  if (!v32)
  {
LABEL_27:
    __break(1u);
    return;
  }

  sub_22616F828();

  v33 = v49;
  sub_22616F678();

  v34 = sub_22616F6F8();
  v35 = *(*(v34 - 8) + 56);
  v36 = v34;
  v37 = v33;
  v38 = 0;
LABEL_21:

  v35(v37, v38, 1, v36);
}

void sub_22615EBDC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0A0, &unk_226170E80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v82 - v4;
  v6 = sub_22616F6F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v82 - v12;
  v14 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceTrialModel__modelURL;
  swift_beginAccess();
  sub_226150DB0(v1 + v14, v5, &qword_27D78D0A0, &unk_226170E80);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_22614E1F4(v5, &qword_27D78D0A0, &unk_226170E80);
    sub_226154868(0, &qword_28136C3A0, 0x277CBEAC0);
    v15 = sub_22616FA58();
    v16 = *(v1 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceTrialModel__metaData);
    *(v1 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceTrialModel__metaData) = v15;
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    sub_226154868(0, &qword_28136C388, 0x277CBFF20);
    (*(v7 + 16))(v11, v13, v6);
    v17 = sub_226163960(v11);
    v87 = v1;
    v89 = v13;
    v84 = v7;
    v85 = v6;
    v28 = v17;
    sub_226159CF0(MEMORY[0x277D84F90]);
    v29 = objc_allocWithZone(MEMORY[0x277CBEB38]);
    v30 = MEMORY[0x277D84F70];
    v31 = sub_22616F798();

    v91 = [v29 initWithDictionary_];

    v83 = v28;
    v32 = [v28 modelDescription];
    v33 = [v32 metadata];

    type metadata accessor for MLModelMetadataKey(0);
    v35 = v34;
    sub_22615FD18(&qword_27D78CEA0, type metadata accessor for MLModelMetadataKey);
    v88 = v35;
    v36 = sub_22616F7B8();

    v37 = v36 + 64;
    v38 = 1 << *(v36 + 32);
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v40 = v39 & *(v36 + 64);
    v41 = (v38 + 63) >> 6;
    v90 = v36;

    v42 = 0;
    while (v40)
    {
LABEL_16:
      v46 = __clz(__rbit64(v40)) | (v42 << 6);
      v47 = *(v90[6] + 8 * v46);
      sub_22614D234(v90[7] + 32 * v46, v102);
      v101 = v47;
      sub_22614D234(v102, &v96);
      v48 = v47;
      if (swift_dynamicCast())
      {
        v43 = sub_22616F7F8();

        *&v96 = v48;
        v44 = v48;
        [v91 __swift_setObject_forKeyedSubscript_];

        swift_unknownObjectRelease();
      }

      else
      {
        sub_22614D234(v102, &v96);
        sub_226154868(0, &qword_28136C3A0, 0x277CBEAC0);
        if (swift_dynamicCast())
        {
          v86 = v93;
          v100 = sub_22616FA48();
          sub_22616FA68();
          sub_22615FD18(&qword_27D78D0B0, MEMORY[0x277CC9CC0]);
          while (1)
          {
            sub_22616FAF8();
            if (!*(&v97 + 1))
            {
              break;
            }

            v93 = v96;
            v94 = v97;
            v95[0] = v98;
            v95[1] = v99;
            sub_22614D234(v95, &v92);
            if (swift_dynamicCast())
            {
              v49 = v30;
              v50 = sub_22616F7F8();

              __swift_project_boxed_opaque_existential_1(&v93, *(&v94 + 1));
              [v91 __swift_setObject_forKeyedSubscript_];

              v30 = v49;
              swift_unknownObjectRelease();
            }

            sub_22614E1F4(&v93, &qword_27D78D0B8, &qword_226170E90);
          }
        }
      }

      v40 &= v40 - 1;
      sub_22614E1F4(&v101, &qword_27D78D0A8, &unk_226170F60);
    }

    while (1)
    {
      v45 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
        swift_once();
        v18 = sub_22616F788();
        __swift_project_value_buffer(v18, qword_28136D470);
        v19 = &v101;
        v20 = sub_22616F768();
        v21 = sub_22616FA98();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v89 = v41;
          v24 = v23;
          *&v96 = v23;
          *v22 = 136315138;
          swift_getErrorValue();
          v25 = sub_22616FCA8();
          v27 = sub_2261555F8(v25, v26, &v96);

          *(v22 + 4) = v27;
          _os_log_impl(&dword_22614A000, v20, v21, "Error making initial meta data: %s", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v24);
          MEMORY[0x22AA77C50](v24, -1, -1);
          MEMORY[0x22AA77C50](v22, -1, -1);

          (*(&v93 + 1))(v89, v37);
        }

        else
        {

          (*(&v93 + 1))(v41, v37);
        }

        return;
      }

      if (v45 >= v41)
      {
        break;
      }

      v40 = *(v37 + 8 * v45);
      ++v42;
      if (v40)
      {
        v42 = v45;
        goto LABEL_16;
      }
    }

    v51 = v87;
    v52 = [objc_opt_self() clientWithIdentifier_];
    v53 = *(v51 + 40);
    v54 = *(v51 + 48);
    v55 = sub_22616F7F8();
    v90 = v52;
    v56 = [v52 rolloutIdentifiersWithNamespaceName_];

    if (v56)
    {
      v57 = [v56 rolloutId];
      sub_22616F828();
    }

    v58 = sub_22616F7F8();

    strcpy(&v96, "TrialRolloutID");
    HIBYTE(v96) = -18;
    v59 = MEMORY[0x277D837D0];
    [v91 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    v60 = MEMORY[0x277D849A8];
    if (v56)
    {
      v61 = [v56 deploymentId];
      *(&v94 + 1) = v60;
      LODWORD(v93) = v61;
      sub_22614C5B0(&v93, &v96);
      v59 = *(&v97 + 1);
    }

    else
    {
      *(&v97 + 1) = v59;
      strcpy(&v96, "Unknown");
      *(&v96 + 1) = 0xE700000000000000;
    }

    __swift_project_boxed_opaque_existential_1(&v96, v59);
    v62 = sub_22616FC58();
    __swift_destroy_boxed_opaque_existential_1(&v96);
    *&v96 = 0xD000000000000018;
    *(&v96 + 1) = 0x8000000226171F30;
    [v91 __swift_setObject_forKeyedSubscript_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v56)
    {
      v63 = [v56 factorPackId];
      sub_22616F828();
    }

    v64 = sub_22616F7F8();

    *&v96 = 0xD000000000000011;
    *(&v96 + 1) = 0x8000000226171F50;
    [v91 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    if (v56)
    {
      v65 = [v56 rampId];
      if (v65)
      {
        v66 = v65;
        sub_22616F828();
      }
    }

    v67 = sub_22616F7F8();

    strcpy(&v96, "TrialRampID");
    HIDWORD(v96) = -352321536;
    [v91 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    v68 = sub_22616F7F8();
    v69 = [v90 experimentIdentifiersWithNamespaceName_];

    if (v69)
    {
      v70 = [v69 experimentId];
      sub_22616F828();
    }

    v72 = v84;
    v71 = v85;
    v73 = sub_22616F7F8();

    *&v96 = 0xD000000000000011;
    *(&v96 + 1) = 0x8000000226171F70;
    [v91 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    if (v69)
    {
      v74 = [v69 treatmentId];
      sub_22616F828();
    }

    v75 = sub_22616F7F8();

    *&v96 = 0xD000000000000010;
    *(&v96 + 1) = 0x8000000226171F90;
    v76 = MEMORY[0x277D837D0];
    [v91 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    if (v69)
    {
      v77 = [v69 deploymentId];
      *(&v94 + 1) = MEMORY[0x277D849A8];
      LODWORD(v93) = v77;
      sub_22614C5B0(&v93, &v96);
      v76 = *(&v97 + 1);
    }

    else
    {
      *(&v97 + 1) = v76;
      strcpy(&v96, "Unknown");
      *(&v96 + 1) = 0xE700000000000000;
    }

    v78 = v83;
    __swift_project_boxed_opaque_existential_1(&v96, v76);
    v79 = sub_22616FC58();
    __swift_destroy_boxed_opaque_existential_1(&v96);
    *&v96 = 0xD00000000000001BLL;
    *(&v96 + 1) = 0x8000000226171FB0;
    v80 = sub_22616FC78();
    v81 = v91;
    [v91 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v72 + 8))(v89, v71);
    v16 = *(v87 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceTrialModel__metaData);
    *(v87 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceTrialModel__metaData) = v81;
  }
}

uint64_t sub_22615F96C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  sub_22614E1F4(v0 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceTrialModel__modelURL, &qword_27D78D0A0, &unk_226170E80);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MapsIntelligenceTrialModel()
{
  result = qword_28136D220;
  if (!qword_28136D220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22615FA64()
{
  sub_22615FB28();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_22615FB28()
{
  if (!qword_28136D468)
  {
    sub_22616F6F8();
    v0 = sub_22616FAD8();
    if (!v1)
    {
      atomic_store(v0, &qword_28136D468);
    }
  }
}

void *sub_22615FBA4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceTrialModel__metaData);
  v2 = v1;
  return v1;
}

uint64_t sub_22615FBD8()
{
  v0 = sub_22616F788();
  __swift_allocate_value_buffer(v0, qword_28136D4A0);
  __swift_project_value_buffer(v0, qword_28136D4A0);
  return sub_22616F778();
}

unint64_t sub_22615FC54()
{
  result = qword_28136C3A8;
  if (!qword_28136C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136C3A8);
  }

  return result;
}

uint64_t sub_22615FCA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0A0, &unk_226170E80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22615FD18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22615FD60(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_22615B410(a1);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *sub_22615FDAC(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__filePath);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v1 + OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__lookupLabel);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v1 + OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__returnLabel);
  *v5 = 0;
  v5[1] = 0;

  v7 = sub_22614C76C(v6);
  if (!v7)
  {
    goto LABEL_8;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_8;
  }

  v8 = sub_226155B2C(0x726F66736E617274, 0xEB0000000072656DLL);
  if ((v9 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_22614D234(*(a1 + 56) + 32 * v8, v45);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0D0, qword_226170F00);
  if (swift_dynamicCast())
  {
    if (*(v44 + 16) && (v10 = sub_226155B2C(0x616C70756B6F6F6CLL, 0xEB000000006C6562), (v11 & 1) != 0))
    {
      v12 = (*(v44 + 56) + 16 * v10);
      v14 = *v12;
      v13 = v12[1];
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    v17 = (v7 + OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__lookupLabel);
    v18 = *(v7 + OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__lookupLabel + 8);
    *v17 = v14;
    v17[1] = v15;

    if (*(v44 + 16) && (v19 = sub_226155B2C(0x616C74757074756FLL, 0xEB000000006C6562), (v20 & 1) != 0))
    {
      v21 = (*(v44 + 56) + 16 * v19);
      v23 = *v21;
      v22 = v21[1];
    }

    else
    {
      v23 = 0;
      v24 = 0;
    }

    v25 = (v7 + OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__returnLabel);
    v26 = *(v7 + OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__returnLabel + 8);
    *v25 = v23;
    v25[1] = v24;

    if (!*(v44 + 16) || (v27 = sub_226155B2C(0x4449656C6966, 0xE600000000000000), (v28 & 1) == 0))
    {

      return 0;
    }

    v29 = (*(v44 + 56) + 16 * v27);
    v30 = *v29;
    v31 = v29[1];

    v32 = [objc_opt_self() clientWithIdentifier_];
    v33 = sub_22616F7F8();

    v34 = sub_22616F7F8();
    v35 = [v32 levelForFactor:v33 withNamespaceName:v34];

    if (v35)
    {
      v36 = [v35 fileValue];
      if (v36)
      {
        v37 = v36;
        v38 = [v36 path];

        if (v38)
        {
          v39 = sub_22616F828();
          v41 = v40;

LABEL_25:
          v42 = (v7 + OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__filePath);
          v43 = *(v7 + OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__filePath + 8);
          *v42 = v39;
          v42[1] = v41;
LABEL_8:

          return v7;
        }
      }
    }

    else
    {
    }

    v39 = 0;
    v41 = 0;
    goto LABEL_25;
  }

  return v7;
}

ssize_t sub_2261600E8(uint64_t a1, unint64_t a2)
{
  v173 = a1;
  __linep[1] = *MEMORY[0x277D85DE8];
  v172 = sub_22616F648();
  v4 = *(v172 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v172);
  v171 = &v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v2 + OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__filePath);
  if (*(v2 + OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__filePath + 8))
  {
    v8 = *v7;
    v9 = (sub_22616F888() + 32);
  }

  else
  {
    v9 = 0;
  }

  v10 = fopen(v9, "r");
  swift_unknownObjectRelease();
  if (!v10)
  {
    if (qword_28136C3F0 != -1)
    {
LABEL_104:
      swift_once();
    }

    v42 = sub_22616F788();
    __swift_project_value_buffer(v42, qword_28136C3F8);
    v43 = sub_22616F768();
    v44 = sub_22616FA98();
    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_22;
    }

    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_22614A000, v43, v44, "Could not open file ", v45, 2u);
    goto LABEL_21;
  }

  v174 = v2;
  __linep[0] = 0;
  __linecapp = 0;
  result = getline(__linep, &__linecapp, v10);
  v12 = v7[1];
  if (!v12)
  {
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v13 = result;
  v14 = *v7;
  v15 = qword_28136C3F0;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_22616F788();
  v17 = __swift_project_value_buffer(v16, qword_28136C3F8);

  v170 = v17;
  v18 = sub_22616F768();
  v19 = sub_22616FA88();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v181 = v21;
    *v20 = 134218242;
    *(v20 + 4) = v13;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_2261555F8(v14, v12, &v181);
    _os_log_impl(&dword_22614A000, v18, v19, "Bytes read: %ld from %s", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x22AA77C50](v21, -1, -1);
    MEMORY[0x22AA77C50](v20, -1, -1);
  }

  if (v13 <= 0)
  {

    goto LABEL_39;
  }

  result = __linep[0];
  if (!__linep[0])
  {
    goto LABEL_109;
  }

  v168 = v4;
  v161 = v12;
  v165 = a2;
  v181 = sub_22616F8F8();
  v182 = v22;
  v178 = 606826076;
  v179 = 0xE400000000000000;
  v176 = 0;
  v177 = 0xE000000000000000;
  v155 = sub_22615FC54();
  v169 = v155;
  v152 = MEMORY[0x277D837D0];
  v153 = v155;
  v23 = sub_22616FB18();
  v25 = v24;

  v181 = 44;
  v182 = 0xE100000000000000;
  MEMORY[0x28223BE20](v26);
  v154 = &v181;

  v160 = v25;
  v27 = sub_226161F74(0x7FFFFFFFFFFFFFFFLL, 1, sub_226162F44, &v152, v23, v25, &v184);
  v175 = 0;
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = v10;
    v181 = MEMORY[0x277D84F90];
    sub_226162418(0, v28, 0);
    v30 = v181;
    v31 = (v27 + 56);
    do
    {
      v32 = *(v31 - 3);
      v33 = *(v31 - 2);
      v34 = *(v31 - 1);
      v35 = *v31;

      v36 = MEMORY[0x22AA77220](v32, v33, v34, v35);
      v38 = v37;

      v181 = v30;
      v40 = *(v30 + 16);
      v39 = *(v30 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_226162418((v39 > 1), v40 + 1, 1);
        v30 = v181;
      }

      *(v30 + 16) = v40 + 1;
      v41 = v30 + 16 * v40;
      *(v41 + 32) = v36;
      *(v41 + 40) = v38;
      v31 += 4;
      --v28;
    }

    while (v28);

    v10 = v29;
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  v46 = v174;
  v47 = (v174 + OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__lookupLabel);
  v48 = *(v174 + OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__lookupLabel + 8);
  if (!v48)
  {
    goto LABEL_110;
  }

  v49 = *(v30 + 16);
  if (!v49)
  {
LABEL_34:

    v54 = sub_22616F768();
    v55 = sub_22616FA98();

    if (!os_log_type_enabled(v54, v55))
    {
      goto LABEL_38;
    }

    v56 = swift_slowAlloc();
    result = swift_slowAlloc();
    v181 = result;
    *v56 = 136315138;
    v57 = v47[1];
    if (v57)
    {
      v58 = result;
      v59 = *v47;
      v60 = v47[1];

      v61 = sub_2261555F8(v59, v57, &v181);

      *(v56 + 4) = v61;
      v62 = "Lookup column not found in CSV:%s";
      goto LABEL_37;
    }

    goto LABEL_112;
  }

  v50 = 0;
  v51 = 0;
  v52 = *v47;
  while (1)
  {
    result = *(v30 + v50 + 32);
    if (result == v52 && v48 == *(v30 + v50 + 40))
    {
      break;
    }

    result = sub_22616FC68();
    if (result)
    {
      break;
    }

    ++v51;
    v50 += 16;
    if (v49 == v51)
    {
      goto LABEL_34;
    }
  }

  v64 = (v46 + OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__returnLabel);
  v65 = *(v46 + OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__returnLabel + 8);
  if (!v65)
  {
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v66 = 0;
  v67 = 0;
  v164 = v64;
  v68 = *v64;
  while (1)
  {
    v69 = *(v30 + v66 + 32) == v68 && v65 == *(v30 + v66 + 40);
    if (v69 || (sub_22616FC68() & 1) != 0)
    {
      break;
    }

    ++v67;
    v66 += 16;
    if (v49 == v67)
    {

      v54 = sub_22616F768();
      v55 = sub_22616FA98();

      if (!os_log_type_enabled(v54, v55))
      {
        goto LABEL_38;
      }

      v56 = swift_slowAlloc();
      result = swift_slowAlloc();
      v181 = result;
      *v56 = 136315138;
      v70 = v164[1];
      if (v70)
      {
        v58 = result;
        v71 = *v164;
        v72 = v164[1];

        v73 = sub_2261555F8(v71, v70, &v181);

        *(v56 + 4) = v73;
        v62 = "Result column not found in CSV:%s";
LABEL_37:
        _os_log_impl(&dword_22614A000, v54, v55, v62, v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v58);
        MEMORY[0x22AA77C50](v58, -1, -1);
        MEMORY[0x22AA77C50](v56, -1, -1);
LABEL_38:

LABEL_39:
        fclose(v10);
        if (__linep[0])
        {
          MEMORY[0x22AA77C50](__linep[0], -1, -1);
        }

LABEL_41:
        result = 0;
        goto LABEL_42;
      }

LABEL_115:
      __break(1u);
      return result;
    }
  }

  v74 = sub_22616F768();
  v75 = sub_22616FA88();

  v76 = os_log_type_enabled(v74, v75);
  v166 = v67;
  v167 = v51;
  v157 = v66;
  v159 = v50;
  if (v76)
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v181 = v78;
    *v77 = 136315138;
    v79 = MEMORY[0x22AA77340](v30, MEMORY[0x277D837D0]);
    v81 = v10;
    v82 = sub_2261555F8(v79, v80, &v181);

    *(v77 + 4) = v82;
    v10 = v81;
    _os_log_impl(&dword_22614A000, v74, v75, "Colums: %s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v78);
    MEMORY[0x22AA77C50](v78, -1, -1);
    MEMORY[0x22AA77C50](v77, -1, -1);
  }

  v83 = sub_22616F768();
  v84 = sub_22616FA88();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = v10;
    v86 = swift_slowAlloc();
    result = swift_slowAlloc();
    v181 = result;
    *v86 = 136315394;
    v87 = v47[1];
    if (v87)
    {
      v88 = result;
      v89 = *v47;
      v90 = v47[1];

      v91 = sub_2261555F8(v89, v87, &v181);

      *(v86 + 4) = v91;
      *(v86 + 12) = 2048;
      *(v86 + 14) = v167;
      _os_log_impl(&dword_22614A000, v83, v84, "lookup: %s: %ld", v86, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v88);
      MEMORY[0x22AA77C50](v88, -1, -1);
      MEMORY[0x22AA77C50](v86, -1, -1);

      v10 = v85;
      goto LABEL_60;
    }

LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

LABEL_60:

  v92 = sub_22616F768();
  v93 = sub_22616FA88();

  v94 = os_log_type_enabled(v92, v93);
  v95 = v165;
  if (v94)
  {
    v96 = swift_slowAlloc();
    result = swift_slowAlloc();
    v181 = result;
    *v96 = 136315394;
    v97 = v164[1];
    if (v97)
    {
      v98 = result;
      v99 = *v164;
      v100 = v164[1];

      v101 = sub_2261555F8(v99, v97, &v181);

      *(v96 + 4) = v101;
      *(v96 + 12) = 2048;
      v102 = v166;
      *(v96 + 14) = v166;
      _os_log_impl(&dword_22614A000, v92, v93, "result: %s: %ld", v96, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v98);
      MEMORY[0x22AA77C50](v98, -1, -1);
      MEMORY[0x22AA77C50](v96, -1, -1);

      goto LABEL_64;
    }

LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v102 = v166;
LABEL_64:
  v103 = sub_22616F768();
  v104 = sub_22616FA88();
  v105 = os_log_type_enabled(v103, v104);
  v106 = v167;
  if (v105)
  {
    v107 = swift_slowAlloc();
    *v107 = 134218240;
    *(v107 + 4) = v106;
    *(v107 + 12) = 2048;
    *(v107 + 14) = v102;
    _os_log_impl(&dword_22614A000, v103, v104, "Going to search column: %ld fetching from column: %ld", v107, 0x16u);
    MEMORY[0x22AA77C50](v107, -1, -1);
  }

  if (getline(__linep, &__linecapp, v10) < 1)
  {
LABEL_91:

    fclose(v10);
    if (__linep[0])
    {
      MEMORY[0x22AA77C50](__linep[0], -1, -1);
    }

    v43 = sub_22616F768();
    v140 = sub_22616FA98();

    if (!os_log_type_enabled(v43, v140))
    {
      goto LABEL_22;
    }

    v45 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    v181 = v141;
    *v45 = 136315138;
    *(v45 + 4) = sub_2261555F8(v173, v95, &v181);
    _os_log_impl(&dword_22614A000, v43, v140, "found no match: .%s.", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v141);
    MEMORY[0x22AA77C50](v141, -1, -1);
LABEL_21:
    MEMORY[0x22AA77C50](v45, -1, -1);
LABEL_22:

    goto LABEL_41;
  }

  v164 = (v168 + 8);
  if (v102 <= v106)
  {
    v109 = v106;
  }

  else
  {
    v109 = v102;
  }

  v163 = v109;
  *&v108 = 136315138;
  v158 = v108;
  v162 = v10;
  while (1)
  {
    if (!__linep[0])
    {
      goto LABEL_107;
    }

    v181 = sub_22616F8F8();
    v182 = v110;
    v111 = v171;
    sub_22616F638();
    v112 = sub_22616FB08();
    v114 = v113;
    (*v164)(v111, v172);

    v181 = 44;
    v182 = 0xE100000000000000;
    MEMORY[0x28223BE20](v115);
    v154 = &v181;

    v168 = v112;
    v174 = v114;
    v116 = v175;
    v118 = sub_226161F74(0x7FFFFFFFFFFFFFFFLL, 1, sub_226162FB8, &v152, v112, v114, v117);
    v175 = v116;
    v119 = *(v118 + 16);
    if (v119)
    {
      v181 = MEMORY[0x277D84F90];
      sub_226162418(0, v119, 0);
      v120 = v181;
      v121 = (v118 + 56);
      do
      {
        v122 = *(v121 - 3);
        v123 = *(v121 - 2);
        v125 = *(v121 - 1);
        v124 = *v121;

        v126 = MEMORY[0x22AA77220](v122, v123, v125, v124);
        v128 = v127;

        v181 = v120;
        v130 = *(v120 + 16);
        v129 = *(v120 + 24);
        if (v130 >= v129 >> 1)
        {
          sub_226162418((v129 > 1), v130 + 1, 1);
          v120 = v181;
        }

        *(v120 + 16) = v130 + 1;
        v131 = v120 + 16 * v130;
        *(v131 + 32) = v126;
        *(v131 + 40) = v128;
        v121 += 4;
        --v119;
      }

      while (v119);

      v10 = v162;
      v95 = v165;
      v102 = v166;
      v106 = v167;
    }

    else
    {

      v120 = MEMORY[0x277D84F90];
    }

    v132 = getline(__linep, &__linecapp, v10);
    v133 = v174;
    if (*(v120 + 16) < v163)
    {

      v134 = sub_22616F768();
      v135 = sub_22616FA98();

      if (os_log_type_enabled(v134, v135))
      {
        v136 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v181 = v137;
        *v136 = v158;
        v138 = sub_2261555F8(v168, v133, &v181);

        *(v136 + 4) = v138;
        v106 = v167;
        _os_log_impl(&dword_22614A000, v134, v135, "Invalid row format: %s", v136, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v137);
        v139 = v137;
        v102 = v166;
        MEMORY[0x22AA77C50](v139, -1, -1);
        MEMORY[0x22AA77C50](v136, -1, -1);
      }

      else
      {
      }

      if (__linep[0])
      {
        MEMORY[0x22AA77C50](__linep[0], -1, -1);
      }

      goto LABEL_71;
    }

    if (v106 >= *(v120 + 16))
    {
      __break(1u);
      goto LABEL_104;
    }

    if (*(v120 + v159 + 32) == v173 && *(v120 + v159 + 40) == v95 || (sub_22616FC68() & 1) != 0)
    {
      break;
    }

LABEL_71:
    if (v132 <= 0)
    {
      goto LABEL_91;
    }
  }

  v142 = sub_22616F768();
  v143 = sub_22616FA88();

  if (os_log_type_enabled(v142, v143))
  {
    v144 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v181 = v145;
    *v144 = 136315394;
    *(v144 + 4) = sub_2261555F8(v173, v95, &v181);
    *(v144 + 12) = 2080;
    if (v102 < *(v120 + 16))
    {
      v146 = *(v120 + v157 + 32);
      v147 = *(v120 + v157 + 40);

      v148 = sub_2261555F8(v146, v147, &v181);

      *(v144 + 14) = v148;
      _os_log_impl(&dword_22614A000, v142, v143, "found match: .%s. -- %s", v144, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA77C50](v145, -1, -1);
      MEMORY[0x22AA77C50](v144, -1, -1);

      v102 = v166;
      goto LABEL_99;
    }

LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
  }

LABEL_99:
  fclose(v10);
  if (__linep[0])
  {
    MEMORY[0x22AA77C50](__linep[0], -1, -1);
  }

  if (v102 >= *(v120 + 16))
  {
    __break(1u);
    goto LABEL_106;
  }

  v150 = *(v120 + v157 + 32);
  v149 = *(v120 + v157 + 40);

  v181 = v150;
  v182 = v149;
  v178 = 606826076;
  v179 = 0xE400000000000000;
  v176 = 0;
  v177 = 0xE000000000000000;
  v154 = v169;
  v155 = v169;
  v153 = v169;
  v152 = MEMORY[0x277D837D0];
  v151 = sub_22616FB18();

  result = v151;
LABEL_42:
  v63 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2261613A4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for MapsIntelligenceClientSignalType();
  Description = v4[-1].Description;
  v6 = Description[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  dispatch thunk of MapsIntelligenceClientSignal.type()(v9, v10);
  v11 = (Description[11])(v8, v4);
  if (!v11)
  {
    return [objc_allocWithZone(MEMORY[0x277CBFEF8]) init];
  }

  if (v11 != 1)
  {
    if (v11 != 2)
    {
      if (v11 == 3)
      {
        return [objc_opt_self() undefinedFeatureValueWithType_];
      }

      goto LABEL_108;
    }

    sub_22614E190(a1, v67);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CEF0, &qword_226170C40);
    type metadata accessor for MapsIntelligenceStringSignal(0);
    swift_dynamicCast();
    v16 = v66;
    v17 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value;
    swift_beginAccess();
    sub_2261623A8(v16 + v17, v62);

    if (v63)
    {
      if (swift_dynamicCast())
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_22614D2DC(v62);
    }

    return [objc_allocWithZone(MEMORY[0x277CBFEF8]) init];
  }

  sub_22614E190(a1, v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CEF0, &qword_226170C40);
  type metadata accessor for MapsIntelligenceDoubleSignal(0);
  swift_dynamicCast();
  v13 = v66;
  v64 = 0;
  v65 = 0xE000000000000000;
  v14 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value;
  swift_beginAccess();
  sub_2261623A8(v13 + v14, v62);
  if (v63)
  {
    sub_22614C5C0();
    if (swift_dynamicCast())
    {
      v15 = v61;
      [v61 doubleValue];
    }
  }

  else
  {
    sub_22614D2DC(v62);
  }

  sub_22616FA18();

LABEL_15:
  v18 = sub_2261600E8(v64, v65);
  if (!v19)
  {

    return 0;
  }

  v20 = v19;
  v21 = *(v2 + OBJC_IVAR____TtC16MapsIntelligence31MapsIntelligenceBaseTransformer__outputType);
  v22 = *(v2 + OBJC_IVAR____TtC16MapsIntelligence31MapsIntelligenceBaseTransformer__outputType + 8);
  if (v21 != 7630409 || v22 != 0xE300000000000000)
  {
    v23 = v18;
    v24 = *(v2 + OBJC_IVAR____TtC16MapsIntelligence31MapsIntelligenceBaseTransformer__outputType);
    v25 = *(v2 + OBJC_IVAR____TtC16MapsIntelligence31MapsIntelligenceBaseTransformer__outputType + 8);
    v26 = sub_22616FC68();
    v18 = v23;
    if ((v26 & 1) == 0)
    {
      if (v21 == 0x656C62756F44 && v22 == 0xE600000000000000 || (v39 = sub_22616FC68(), v18 = v23, (v39 & 1) != 0))
      {
        v67[0] = 0;
        if (sub_22614DFC0(v18, v20))
        {

          return [objc_opt_self() featureValueWithDouble_];
        }

        goto LABEL_107;
      }

      if (v21 == 0x676E69727453 && v22 == 0xE600000000000000 || (sub_22616FC68() & 1) != 0)
      {
        v51 = sub_22616F7F8();

        v52 = [objc_opt_self() featureValueWithString_];

        return v52;
      }

      if (qword_28136C3F0 == -1)
      {
LABEL_94:
        v53 = sub_22616F788();
        __swift_project_value_buffer(v53, qword_28136C3F8);

        v54 = sub_22616F768();
        v55 = sub_22616FA78();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v67[0] = v57;
          *v56 = 136315138;
          *(v56 + 4) = sub_2261555F8(v21, v22, v67);
          _os_log_impl(&dword_22614A000, v54, v55, "Unsupported output type: %s", v56, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v57);
          MEMORY[0x22AA77C50](v57, -1, -1);
          MEMORY[0x22AA77C50](v56, -1, -1);
        }

        return [objc_allocWithZone(MEMORY[0x277CBFEF8]) init];
      }

LABEL_105:
      swift_once();
      goto LABEL_94;
    }
  }

  v27 = HIBYTE(v20) & 0xF;
  v28 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v29 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v29 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {
    __break(1u);
LABEL_98:
    v58 = sub_226162544(v18, v20, 10);
    if ((v59 & 1) == 0)
    {
      v32 = v58;
      goto LABEL_88;
    }

    goto LABEL_106;
  }

  if ((v20 & 0x1000000000000000) != 0)
  {
    goto LABEL_98;
  }

  if ((v20 & 0x2000000000000000) != 0)
  {
    v67[0] = v18;
    v67[1] = v20 & 0xFFFFFFFFFFFFFFLL;
    if (v18 == 43)
    {
      if (v27)
      {
        if (--v27)
        {
          v32 = 0;
          v43 = v67 + 1;
          while (1)
          {
            v44 = *v43 - 48;
            if (v44 > 9)
            {
              break;
            }

            v45 = 10 * v32;
            if ((v32 * 10) >> 64 != (10 * v32) >> 63)
            {
              break;
            }

            v32 = v45 + v44;
            if (__OFADD__(v45, v44))
            {
              break;
            }

            ++v43;
            if (!--v27)
            {
              goto LABEL_87;
            }
          }
        }

        goto LABEL_86;
      }

      goto LABEL_104;
    }

    if (v18 != 45)
    {
      if (v27)
      {
        v32 = 0;
        v48 = v67;
        while (1)
        {
          v49 = *v48 - 48;
          if (v49 > 9)
          {
            break;
          }

          v50 = 10 * v32;
          if ((v32 * 10) >> 64 != (10 * v32) >> 63)
          {
            break;
          }

          v32 = v50 + v49;
          if (__OFADD__(v50, v49))
          {
            break;
          }

          v48 = (v48 + 1);
          if (!--v27)
          {
            goto LABEL_87;
          }
        }
      }

      goto LABEL_86;
    }

    if (v27)
    {
      if (--v27)
      {
        v32 = 0;
        v36 = v67 + 1;
        while (1)
        {
          v37 = *v36 - 48;
          if (v37 > 9)
          {
            break;
          }

          v38 = 10 * v32;
          if ((v32 * 10) >> 64 != (10 * v32) >> 63)
          {
            break;
          }

          v32 = v38 - v37;
          if (__OFSUB__(v38, v37))
          {
            break;
          }

          ++v36;
          if (!--v27)
          {
            goto LABEL_87;
          }
        }
      }

      goto LABEL_86;
    }

    goto LABEL_102;
  }

  if ((v18 & 0x1000000000000000) != 0)
  {
    v30 = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v30 = sub_22616FBB8();
  }

  v31 = *v30;
  if (v31 == 43)
  {
    if (v28 >= 1)
    {
      v27 = v28 - 1;
      if (v28 != 1)
      {
        v32 = 0;
        if (v30)
        {
          v40 = v30 + 1;
          while (1)
          {
            v41 = *v40 - 48;
            if (v41 > 9)
            {
              goto LABEL_86;
            }

            v42 = 10 * v32;
            if ((v32 * 10) >> 64 != (10 * v32) >> 63)
            {
              goto LABEL_86;
            }

            v32 = v42 + v41;
            if (__OFADD__(v42, v41))
            {
              goto LABEL_86;
            }

            ++v40;
            if (!--v27)
            {
              goto LABEL_87;
            }
          }
        }

        goto LABEL_78;
      }

      goto LABEL_86;
    }

    goto LABEL_103;
  }

  if (v31 == 45)
  {
    if (v28 >= 1)
    {
      v27 = v28 - 1;
      if (v28 != 1)
      {
        v32 = 0;
        if (v30)
        {
          v33 = v30 + 1;
          while (1)
          {
            v34 = *v33 - 48;
            if (v34 > 9)
            {
              goto LABEL_86;
            }

            v35 = 10 * v32;
            if ((v32 * 10) >> 64 != (10 * v32) >> 63)
            {
              goto LABEL_86;
            }

            v32 = v35 - v34;
            if (__OFSUB__(v35, v34))
            {
              goto LABEL_86;
            }

            ++v33;
            if (!--v27)
            {
              goto LABEL_87;
            }
          }
        }

LABEL_78:
        LOBYTE(v27) = 0;
        goto LABEL_87;
      }

      goto LABEL_86;
    }

    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (v28)
  {
    v32 = 0;
    if (v30)
    {
      while (1)
      {
        v46 = *v30 - 48;
        if (v46 > 9)
        {
          goto LABEL_86;
        }

        v47 = 10 * v32;
        if ((v32 * 10) >> 64 != (10 * v32) >> 63)
        {
          goto LABEL_86;
        }

        v32 = v47 + v46;
        if (__OFADD__(v47, v46))
        {
          goto LABEL_86;
        }

        ++v30;
        if (!--v28)
        {
          goto LABEL_78;
        }
      }
    }

    goto LABEL_78;
  }

LABEL_86:
  v32 = 0;
  LOBYTE(v27) = 1;
LABEL_87:
  v62[0] = v27;
  if ((v27 & 1) == 0)
  {
LABEL_88:

    return [objc_opt_self() featureValueWithInt64_];
  }

LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  result = sub_22616FBD8();
  __break(1u);
  return result;
}

uint64_t sub_226161CE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__filePath + 8);

  v2 = *(v0 + OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__lookupLabel + 8);

  v3 = *(v0 + OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__returnLabel + 8);
}

uint64_t sub_226161D3C()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = OBJC_IVAR____TtC16MapsIntelligence31MapsIntelligenceBaseTransformer__signalType;
  v4 = type metadata accessor for MapsIntelligenceClientSignalType();
  (*(v4[-1].Description + 1))(&v0[v3], v4);
  v5 = *&v0[OBJC_IVAR____TtC16MapsIntelligence31MapsIntelligenceBaseTransformer__outputType + 8];

  v6 = *&v0[OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__filePath + 8];

  v7 = *&v0[OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__lookupLabel + 8];

  v8 = *&v0[OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__returnLabel + 8];

  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MapsIntelligenceFileLookupTransformer()
{
  result = qword_28136C978;
  if (!qword_28136C978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226161EF4()
{
  v0 = sub_22616F788();
  __swift_allocate_value_buffer(v0, qword_28136C3F8);
  __swift_project_value_buffer(v0, qword_28136C3F8);
  return sub_22616F778();
}

unint64_t sub_226161F74@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_22616F988();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_22616B160(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_22616B160((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_22616F968();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_22616F8C8();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_22616F8C8();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_22616F988();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_22616B160(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_22616F988();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_22616B160(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_22616B160((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_22616F8C8();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void *sub_226162334(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CFD8, &qword_226170D28);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_2261623A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CEE0, &unk_226170C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_226162418(char *a1, int64_t a2, char a3)
{
  result = sub_226162438(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226162438(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CFE0, &unk_226170D30);
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

unsigned __int8 *sub_226162544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_22616F978();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_226162AD0();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22616FBB8();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_226162AD0()
{
  v0 = sub_22616F988();
  v4 = sub_226162B50(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_226162B50(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_22616F8A8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_22616FAE8();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_226162334(v9, 0);
  v12 = sub_226162CA8(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_22616F8A8();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_22616FBB8();
LABEL_4:

  return sub_22616F8A8();
}

unint64_t sub_226162CA8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_226162EC8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22616F938();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_22616FBB8();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_226162EC8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_22616F918();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_226162EC8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22616F948();
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
    v5 = MEMORY[0x22AA772B0](15, a1 >> 16);
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

uint64_t sub_226162F60(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22616FC68() & 1;
  }
}

uint64_t sub_226163020(uint64_t a1, uint64_t a2)
{
  v88[5] = *MEMORY[0x277D85DE8];
  v4 = sub_22616F6F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v72 - v10;
  v88[0] = 0x736C616E676953;
  v88[1] = 0xE700000000000000;
  *&v86 = a1;
  *(&v86 + 1) = a2;

  *&v86 = sub_22616F978();
  *(&v86 + 1) = v12;
  sub_22616F8D8();
  type metadata accessor for MapsIntelligenceSignalProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v15 = sub_22616F7F8();

  v16 = sub_22616F7F8();
  v17 = [v14 URLForResource:v15 withExtension:v16];

  if (!v17)
  {
    goto LABEL_40;
  }

  sub_22616F6A8();

  (*(v5 + 32))(v11, v9, v4);
  v18 = sub_22616F708();
  v20 = v19;
  v21 = objc_opt_self();
  v22 = sub_22616F718();
  v88[0] = 0;
  v23 = [v21 propertyListWithData:v22 options:1 format:0 error:v88];

  if (v23)
  {
    v24 = v88[0];
    sub_22616FB28();
    swift_unknownObjectRelease();
    if (swift_dynamicCast())
    {
      v76 = v18;
      v77 = v14;
      v78 = v11;
      v79 = v5;
      v25 = v86;
      type metadata accessor for MapsIntelligenceSignalPack();
      inited = swift_initStackObject();
      v27 = MEMORY[0x277D84F90];
      v28 = sub_226159E2C(MEMORY[0x277D84F90]);
      v80 = inited;
      *(inited + 16) = v28;
      v29 = swift_allocObject();
      v30 = sub_226159E2C(v27);
      v75 = v29;
      *(v29 + 16) = v30;
      v31 = (v29 + 16);
      v32 = *(v25 + 16);
      if (v32)
      {
        v33 = 0;
        v34 = v25 + 32;
        v74 = v4;
        v73 = v20;
        v82 = v25;
        v81 = v25 + 32;
        do
        {
          if (v33 >= *(v25 + 16))
          {
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
          }

          v35 = *(v34 + 8 * v33);
          if (*(v35 + 16))
          {
            v36 = *(v34 + 8 * v33);

            v37 = sub_226155B2C(1701667182, 0xE400000000000000);
            if (v38)
            {
              v39 = (*(v35 + 56) + 16 * v37);
              v40 = *v39;
              v41 = v39[1];

              if (!*(v28 + 16))
              {
                goto LABEL_22;
              }

              v42 = sub_226155B2C(v40, v41);
              if ((v43 & 1) == 0)
              {

LABEL_22:

                memset(v88, 0, 40);
LABEL_23:
                sub_226163888(v88);
                v25 = v82;
                v34 = v81;
                goto LABEL_7;
              }

              sub_22614E190(*(v28 + 56) + 40 * v42, v88);

              sub_226163888(v88);
              sub_226154CAC(v40, v41, 1, v88);
              v44 = HIBYTE(v41) & 0xF;
              if ((v41 & 0x2000000000000000) == 0)
              {
                v44 = v40 & 0xFFFFFFFFFFFFLL;
              }

              if (!v44)
              {

                goto LABEL_23;
              }

              sub_2261638F0(v88, &v86);
              swift_beginAccess();
              if (v87)
              {
                sub_226150EFC(&v86, v84);
                v45 = *v31;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v83 = *v31;
                v47 = v83;
                v49 = sub_226155B2C(v40, v41);
                v50 = v47[2];
                v51 = (v48 & 1) == 0;
                v52 = v50 + v51;
                if (__OFADD__(v50, v51))
                {
                  goto LABEL_44;
                }

                v53 = v48;
                if (v47[3] >= v52)
                {
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_22614FDFC();
                  }
                }

                else
                {
                  sub_226150400(v52, isUniquelyReferenced_nonNull_native);
                  v54 = sub_226155B2C(v40, v41);
                  if ((v53 & 1) != (v55 & 1))
                  {
                    goto LABEL_47;
                  }

                  v49 = v54;
                }

                v63 = v83;
                if (v53)
                {
                  v64 = (v83[7] + 40 * v49);
                  __swift_destroy_boxed_opaque_existential_1(v64);
                  sub_226150EFC(v84, v64);
                }

                else
                {
                  v83[(v49 >> 6) + 8] |= 1 << v49;
                  v65 = (v63[6] + 16 * v49);
                  *v65 = v40;
                  v65[1] = v41;
                  sub_226150EFC(v84, v63[7] + 40 * v49);
                  v66 = v63[2];
                  v67 = __OFADD__(v66, 1);
                  v68 = v66 + 1;
                  if (v67)
                  {
                    goto LABEL_45;
                  }

                  v63[2] = v68;
                }

                *v31 = v63;
                v4 = v74;
                v20 = v73;
              }

              else
              {
                sub_226163888(&v86);
                v56 = sub_226155B2C(v40, v41);
                if (v57)
                {
                  v58 = v56;
                  v59 = *v31;
                  v60 = swift_isUniquelyReferenced_nonNull_native();
                  v61 = *v31;
                  v83 = *v31;
                  if (!v60)
                  {
                    sub_22614FDFC();
                    v61 = v83;
                  }

                  v62 = *(*(v61 + 48) + 16 * v58 + 8);

                  sub_226150EFC((*(v61 + 56) + 40 * v58), v84);
                  sub_22616B788(v58, v61);
                  *v31 = v61;
                }

                else
                {
                  v85 = 0;
                  memset(v84, 0, sizeof(v84));
                }

                sub_226163888(v84);
              }

              v34 = v81;
              swift_endAccess();

              sub_226163888(v88);
              v25 = v82;
            }

            else
            {
            }
          }

LABEL_7:
          ++v33;
        }

        while (v32 != v33);
      }

      sub_226163834(v76, v20);

      (*(v79 + 8))(v78, v4);
      result = v75;
      goto LABEL_42;
    }

    (*(v5 + 8))(v11, v4);
    sub_226163834(v18, v20);
LABEL_40:

    result = 0;
LABEL_42:
    v70 = *MEMORY[0x277D85DE8];
    return result;
  }

  v71 = v88[0];
  sub_22616F658();

  swift_willThrow();
  swift_unexpectedError();
  __break(1u);
LABEL_47:
  result = sub_22616FC98();
  __break(1u);
  return result;
}

uint64_t sub_226163834(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_226163888(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CFB0, &unk_226170C10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2261638F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CFB0, &unk_226170C10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_226163960(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22616F688();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_22616F6F8();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_22616F658();

    swift_willThrow();
    v9 = sub_22616F6F8();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t MapsIntelligenceLoadedModel.init(path:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_22616F6F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - v9;
  if (a2)
  {
    v41 = v8;
    v11 = swift_allocBox();
    v13 = v12;
    sub_22616F678();

    if (qword_28136C3C8 != -1)
    {
      swift_once();
    }

    v42 = v2;
    v14 = sub_22616F788();
    v15 = __swift_project_value_buffer(v14, qword_28136D470);

    v40 = v15;
    v16 = sub_22616F768();
    v17 = sub_22616FA88();
    v43 = v11;

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v44 = v19;
      *v18 = 136315138;
      swift_beginAccess();
      (*(v5 + 16))(v10, v13, v4);
      sub_226164C98(&qword_27D78D0E0, MEMORY[0x277CC9260]);
      v20 = sub_22616FC48();
      v22 = v21;
      (*(v5 + 8))(v10, v4);
      v23 = sub_2261555F8(v20, v22, &v44);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_22614A000, v16, v17, "loading model from URL: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x22AA77C50](v19, -1, -1);
      MEMORY[0x22AA77C50](v18, -1, -1);
    }

    v24 = dispatch_semaphore_create(0);
    sub_226154868(0, &qword_28136C388, 0x277CBFF20);
    swift_beginAccess();
    v25 = *(v5 + 16);
    v25(v10, v13, v4);
    v26 = swift_allocObject();
    *(v26 + 16) = v43;
    *(v26 + 24) = v24;

    v27 = v24;
    sub_22616FAC8();

    (*(v5 + 8))(v10, v4);
    sub_22616FAA8();
    v28 = v41;
    v25(v41, v13, v4);
    v29 = sub_226163960(v28);
    v34 = v42;
    *(v42 + 16) = v29;
    v35 = sub_22616F768();
    v36 = sub_22616FA88();
    if (os_log_type_enabled(v35, v36))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_22614A000, v35, v36, "Loaded model successfully", v38, 2u);
      MEMORY[0x22AA77C50](v38, -1, -1);
    }

    return v34;
  }

  else
  {
    if (qword_28136C3C8 != -1)
    {
      swift_once();
    }

    v30 = sub_22616F788();
    __swift_project_value_buffer(v30, qword_28136D470);
    v31 = sub_22616F768();
    v32 = sub_22616FA98();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_22614A000, v31, v32, "Error loading model: Empty path", v33, 2u);
      MEMORY[0x22AA77C50](v33, -1, -1);
    }

    type metadata accessor for MapsIntelligenceLoadedModel();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t sub_22616416C(uint64_t a1)
{
  v2 = sub_22616F6F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0C8, &unk_226170FD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v23 - v9);
  v11 = swift_projectBox();
  sub_226164D54(a1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v10;
    if (qword_28136C3C8 != -1)
    {
      swift_once();
    }

    v13 = sub_22616F788();
    __swift_project_value_buffer(v13, qword_28136D470);
    v14 = v12;
    v15 = sub_22616F768();
    v16 = sub_22616FA98();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = sub_22616FCA8();
      v21 = sub_2261555F8(v19, v20, &v24);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_22614A000, v15, v16, "Error Compiling model: %s, lets just load it", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x22AA77C50](v18, -1, -1);
      MEMORY[0x22AA77C50](v17, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    swift_beginAccess();
    (*(v3 + 40))(v11, v6, v2);
  }

  return sub_22616FAB8();
}

id sub_226164454(uint64_t a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  v19[0] = 0;
  v4 = [v3 predictionFromFeatures:a1 error:v19];
  v5 = v19[0];
  if (!v4)
  {
    v6 = v5;
    v7 = sub_22616F658();

    swift_willThrow();
    if (qword_28136C3C8 != -1)
    {
      swift_once();
    }

    v8 = sub_22616F788();
    __swift_project_value_buffer(v8, qword_28136D470);
    v9 = v7;
    v10 = sub_22616F768();
    v11 = sub_22616FA98();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19[0] = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_22616FCA8();
      v16 = sub_2261555F8(v14, v15, v19);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_22614A000, v10, v11, "Error making prediction: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x22AA77C50](v13, -1, -1);
      MEMORY[0x22AA77C50](v12, -1, -1);
    }

    else
    {
    }

    v4 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v4;
}

id sub_226164658()
{
  v27 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v1 = [*(v0 + 16) modelDescription];
  v2 = [v1 metadata];

  type metadata accessor for MLModelMetadataKey(0);
  sub_226164C98(&qword_27D78CEA0, type metadata accessor for MLModelMetadataKey);
  v3 = sub_22616F7B8();

  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v26 = v3;

  v9 = 0;
  while (v7)
  {
LABEL_11:
    v13 = __clz(__rbit64(v7)) | (v9 << 6);
    v14 = *(*(v26 + 48) + 8 * v13);
    sub_22614D234(*(v26 + 56) + 32 * v13, v38);
    v37 = v14;
    sub_22614D234(v38, &v32);
    v15 = v14;
    if (swift_dynamicCast())
    {
      v10 = sub_22616F7F8();

      *&v32 = v15;
      v11 = v15;
      [v27 __swift_setObject_forKeyedSubscript_];

      swift_unknownObjectRelease();
    }

    else
    {
      sub_22614D234(v38, &v32);
      sub_226154868(0, &qword_28136C3A0, 0x277CBEAC0);
      if (swift_dynamicCast())
      {
        v25 = v29;
        v36 = sub_22616FA48();
        sub_22616FA68();
        sub_226164C98(&qword_27D78D0B0, MEMORY[0x277CC9CC0]);
        while (1)
        {
          sub_22616FAF8();
          if (!*(&v33 + 1))
          {
            break;
          }

          v29 = v32;
          v30 = v33;
          v31[0] = v34;
          v31[1] = v35;
          sub_22614D234(v31, v28);
          if (swift_dynamicCast())
          {
            v16 = sub_22616F7F8();

            __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
            [v27 __swift_setObject_forKeyedSubscript_];

            swift_unknownObjectRelease();
          }

          sub_22614E1F4(&v29, &qword_27D78D0B8, &qword_226170E90);
        }
      }
    }

    v7 &= v7 - 1;
    sub_22614E1F4(&v37, &qword_27D78D0A8, &unk_226170F60);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v12 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
    if (v7)
    {
      v9 = v12;
      goto LABEL_11;
    }
  }

  if (qword_28136C3C8 == -1)
  {
    goto LABEL_20;
  }

LABEL_24:
  swift_once();
LABEL_20:
  v17 = sub_22616F788();
  __swift_project_value_buffer(v17, qword_28136D470);
  v18 = v27;
  v19 = sub_22616F768();
  v20 = sub_22616FA88();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&dword_22614A000, v19, v20, "metaData:%@", v21, 0xCu);
    sub_22614E1F4(v22, &qword_27D78D0E8, &qword_226170F70);
    MEMORY[0x22AA77C50](v22, -1, -1);
    MEMORY[0x22AA77C50](v21, -1, -1);
  }

  return v18;
}

uint64_t MapsIntelligenceLoadedModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_226164BEC()
{
  v0 = sub_22616F788();
  __swift_allocate_value_buffer(v0, qword_28136D470);
  __swift_project_value_buffer(v0, qword_28136D470);
  return sub_22616F778();
}

uint64_t sub_226164C90(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_22616416C(a1);
}

uint64_t sub_226164C98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226164D54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0C8, &unk_226170FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MapsIntelligenceDoubleSignal.__allocating_init(_:expiration:)(uint64_t a1, double a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  MapsIntelligenceDoubleSignal.init(_:expiration:)(a1, a2);
  return v7;
}

MapsIntelligenceClientInterface::MapsIntelligenceClientSignalType __swiftcall GetMapsIntelligenceClientSignalType(from:)(Swift::String_optional from)
{
  v2 = v1;
  v3 = &enum case for MapsIntelligenceClientSignalType.unknown(_:);
  if (from.value._object)
  {
    v5 = sub_22616F878();
    v6 = v4;
    if (v5 == 0x6E776F6E6B6E75 && v4 == 0xE700000000000000 || (sub_22616FC68() & 1) != 0)
    {
    }

    else if (v5 == 0x656C62756F64 && v6 == 0xE600000000000000 || (sub_22616FC68() & 1) != 0)
    {

      v3 = &enum case for MapsIntelligenceClientSignalType.double(_:);
    }

    else if (v5 == 0x676E69727473 && v6 == 0xE600000000000000 || (sub_22616FC68() & 1) != 0)
    {

      v3 = &enum case for MapsIntelligenceClientSignalType.string(_:);
    }

    else if (v5 == 0x3436746E69 && v6 == 0xE500000000000000)
    {

      v3 = &enum case for MapsIntelligenceClientSignalType.int64(_:);
    }

    else
    {
      v11 = sub_22616FC68();

      if (v11)
      {
        v3 = &enum case for MapsIntelligenceClientSignalType.int64(_:);
      }
    }
  }

  v7 = *v3;
  v8 = type metadata accessor for MapsIntelligenceClientSignalType();
  v9 = *(v8[-1].Description + 13);

  return v9(v2, v7, v8);
}

uint64_t MapsIntelligenceBaseSignal.__allocating_init(type:expiration:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = (v7 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value);
  *v8 = 0u;
  v8[1] = 0u;
  v9 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_expirationDate;
  v10 = sub_22616F758();
  (*(*(v10 - 8) + 56))(v7 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal__type;
  v12 = type metadata accessor for MapsIntelligenceClientSignalType();
  Description = v12[-1].Description;
  Description[2](v7 + v11, a1, v12);
  sub_22616F748();
  (Description[1])(a1, v12);
  swift_beginAccess();
  sub_226157F18(a2, v7 + v9, &qword_27D78CFE8, "6)");
  swift_endAccess();
  return v7;
}

uint64_t MapsIntelligenceBaseSignal.init(type:expiration:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_22616F758();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v2 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value);
  *v10 = 0u;
  v10[1] = 0u;
  v11 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_expirationDate;
  (*(v6 + 56))(v2 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_expirationDate, 1, 1, v5);
  v12 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal__type;
  v13 = type metadata accessor for MapsIntelligenceClientSignalType();
  Description = v13[-1].Description;
  Description[2](v2 + v12, a1, v13);
  sub_22616F748();
  (Description[1])(a1, v13);
  (*(v6 + 32))(v2 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_creationDate, v9, v5);
  swift_beginAccess();
  sub_226157F18(a2, v2 + v11, &qword_27D78CFE8, "6)");
  swift_endAccess();
  return v2;
}

uint64_t sub_226165510(unsigned __int8 *a1)
{
  v3 = type metadata accessor for MapsIntelligenceClientSignalType();
  Description = v3[-1].Description;
  v5 = Description[8];
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (Description[2])(v7, v1 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal__type, v3);
  LOBYTE(a1) = static MapsIntelligenceClientSignalType.== infix(_:_:)(v7, a1);
  (Description[1])(v7, v3);
  return a1 & 1;
}

double sub_226165610@<D0>(unsigned __int8 *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = type metadata accessor for MapsIntelligenceClientSignalType();
  Description = v5[-1].Description;
  v7 = Description[8];
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (Description[2])(v9, v2 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal__type, v5);
  LOBYTE(a1) = static MapsIntelligenceClientSignalType.== infix(_:_:)(v9, a1);
  (Description[1])(v9, v5);
  if (a1)
  {
    v10 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value;
    swift_beginAccess();
    sub_226150DB0(v2 + v10, a2, &qword_27D78CEE0, &unk_226170C20);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_22616575C()
{
  v1 = sub_22616F758();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CFE8, "6)");
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_expirationDate;
  swift_beginAccess();
  sub_226150DB0(v0 + v13, v12, &qword_27D78CFE8, "6)");
  v14 = v2[6];
  v15 = v14(v12, 1, v1);
  sub_22614E1F4(v12, &qword_27D78CFE8, "6)");
  if (v15 == 1)
  {
    v16 = 0;
    return v16 & 1;
  }

  sub_226150DB0(v0 + v13, v10, &qword_27D78CFE8, "6)");
  result = v14(v10, 1, v1);
  if (result != 1)
  {
    sub_22616F748();
    v16 = sub_22616F738();
    v18 = v2[1];
    v18(v5, v1);
    v18(v10, v1);
    return v16 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_226165994@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal__type;
  v4 = type metadata accessor for MapsIntelligenceClientSignalType();
  v5 = *(v4[-1].Description + 2);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_226165A38(unsigned __int8 *a1)
{
  v3 = type metadata accessor for MapsIntelligenceClientSignalType();
  Description = v3[-1].Description;
  v5 = Description[8];
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (Description[2])(v7, *v1 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal__type, v3);
  LOBYTE(a1) = static MapsIntelligenceClientSignalType.== infix(_:_:)(v7, a1);
  (Description[1])(v7, v3);
  return a1 & 1;
}

double sub_226165B3C@<D0>(unsigned __int8 *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = type metadata accessor for MapsIntelligenceClientSignalType();
  Description = v5[-1].Description;
  v7 = Description[8];
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  (Description[2])(v9, *v2 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal__type, v5);
  v11 = static MapsIntelligenceClientSignalType.== infix(_:_:)(v9, a1);
  (Description[1])(v9, v5);
  if (v11)
  {
    v12 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value;
    swift_beginAccess();
    sub_226150DB0(v10 + v12, a2, &qword_27D78CEE0, &unk_226170C20);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_226165CBC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal__type;
  v5 = type metadata accessor for MapsIntelligenceClientSignalType();
  v6 = *(v5[-1].Description + 2);

  return v6(a1, v3 + v4, v5);
}

void sub_226165D38()
{
  v1 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value;
  swift_beginAccess();
  sub_226150DB0(v0 + v1, v3, &qword_27D78CEE0, &unk_226170C20);
  if (v4)
  {
    sub_22614C5C0();
    if (swift_dynamicCast())
    {
      [v2 doubleValue];
    }
  }

  else
  {
    sub_22614E1F4(v3, &qword_27D78CEE0, &unk_226170C20);
  }
}

uint64_t MapsIntelligenceDoubleSignal.init(_:expiration:)(uint64_t a1, double a2)
{
  v24 = a1;
  v5 = sub_22616F758();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CFE8, "6)");
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v25 - v12 + 16;
  v14 = type metadata accessor for MapsIntelligenceClientSignalType();
  Description = v14[-1].Description;
  v16 = Description[8];
  MEMORY[0x28223BE20](v14);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  (Description[13])(v18, 1, v14);
  sub_226150DB0(a1, v13, &qword_27D78CFE8, "6)");
  v19 = (v2 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value);
  *v19 = 0u;
  v19[1] = 0u;
  v20 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_expirationDate;
  (*(v6 + 56))(v2 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_expirationDate, 1, 1, v5);
  (Description[2])(v2 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal__type, v18, v14);
  sub_22616F748();
  (Description[1])(v18, v14);
  (*(v6 + 32))(v2 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_creationDate, v9, v5);
  swift_beginAccess();
  sub_226157F18(v13, v2 + v20, &qword_27D78CFE8, "6)");
  swift_endAccess();
  v21 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  v22 = [v21 initWithDouble_];
  v25[3] = sub_22614C5C0();
  v25[0] = v22;
  sub_22614E1F4(v24, &qword_27D78CFE8, "6)");
  swift_beginAccess();
  sub_226157F18(v25, v19, &qword_27D78CEE0, &unk_226170C20);
  swift_endAccess();

  return v2;
}

uint64_t sub_226166168()
{
  v6 = 0;
  v7 = 0xE000000000000000;
  v1 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value;
  swift_beginAccess();
  sub_226150DB0(v0 + v1, v4, &qword_27D78CEE0, &unk_226170C20);
  if (v5)
  {
    sub_22614C5C0();
    if (swift_dynamicCast())
    {
      [v3 doubleValue];
    }
  }

  else
  {
    sub_22614E1F4(v4, &qword_27D78CEE0, &unk_226170C20);
  }

  sub_22616FA18();
  return v6;
}

uint64_t _s16MapsIntelligence0aB10BaseSignalCfd_0()
{
  v1 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal__type;
  v2 = type metadata accessor for MapsIntelligenceClientSignalType();
  (*(v2[-1].Description + 1))(v0 + v1, v2);
  sub_22614E1F4(v0 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value, &qword_27D78CEE0, &unk_226170C20);
  v3 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_creationDate;
  v4 = sub_22616F758();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_22614E1F4(v0 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_expirationDate, &qword_27D78CFE8, "6)");
  return v0;
}

uint64_t _s16MapsIntelligence0aB10BaseSignalCfD_0()
{
  v1 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal__type;
  v2 = type metadata accessor for MapsIntelligenceClientSignalType();
  (*(v2[-1].Description + 1))(v0 + v1, v2);
  sub_22614E1F4(v0 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value, &qword_27D78CEE0, &unk_226170C20);
  v3 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_creationDate;
  v4 = sub_22616F758();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_22614E1F4(v0 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_expirationDate, &qword_27D78CFE8, "6)");
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_226166490@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for MapsIntelligenceDoubleSignal(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  result = MapsIntelligenceDoubleSignal.init(_:expiration:)(a1, a3);
  *a2 = v9;
  return result;
}

uint64_t MapsIntelligenceStringSignal.__allocating_init(_:expiration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return MapsIntelligenceStringSignal.init(_:expiration:)(a1, a2, a3);
}

uint64_t MapsIntelligenceStringSignal.init(_:expiration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v6 = sub_22616F758();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CFE8, "6)");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v25 - v13;
  v15 = type metadata accessor for MapsIntelligenceClientSignalType();
  Description = v15[-1].Description;
  v17 = Description[8];
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (Description[13])(v19, 2, v15);
    sub_226150DB0(a3, v14, &qword_27D78CFE8, "6)");
    v25 = a2;
    v26 = a3;
    v20 = (v3 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value);
    *v20 = 0u;
    v20[1] = 0u;
    v21 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_expirationDate;
    (*(v7 + 56))(v3 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_expirationDate, 1, 1, v6);
    (Description[2])(v3 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal__type, v19, v15);
    sub_22616F748();
    (Description[1])(v19, v15);
    (*(v7 + 32))(v3 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_creationDate, v10, v6);
    swift_beginAccess();
    sub_226157F18(v14, v3 + v21, &qword_27D78CFE8, "6)");
    swift_endAccess();
    v28[3] = MEMORY[0x277D837D0];
    v28[0] = v27;
    v28[1] = v25;

    sub_22614E1F4(v26, &qword_27D78CFE8, "6)");
    swift_beginAccess();
    sub_226157F18(v28, v20, &qword_27D78CEE0, &unk_226170C20);
    swift_endAccess();
  }

  else
  {
    sub_22614E1F4(a3, &qword_27D78CFE8, "6)");
    type metadata accessor for MapsIntelligenceStringSignal(0);
    v22 = *(*v3 + 48);
    v23 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

uint64_t sub_226166920()
{
  v1 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value;
  swift_beginAccess();
  sub_226150DB0(v0 + v1, v4, &qword_27D78CEE0, &unk_226170C20);
  if (v5)
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22614E1F4(v4, &qword_27D78CEE0, &unk_226170C20);
    return 0;
  }
}

unint64_t sub_226166A10()
{
  result = qword_28136CFF8[0];
  if (!qword_28136CFF8[0])
  {
    type metadata accessor for MapsIntelligenceDoubleSignal(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_28136CFF8);
  }

  return result;
}

uint64_t sub_226166AB0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226166AE8()
{
  v0 = type metadata accessor for MapsIntelligenceClientSignalType();
  if (v1 <= 0x3F)
  {
    v6 = v0[-1].Description + 64;
    v2 = sub_22616F758();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_226166CD4();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_226166CD4()
{
  if (!qword_28136D460)
  {
    sub_22616F758();
    v0 = sub_22616FAD8();
    if (!v1)
    {
      atomic_store(v0, &qword_28136D460);
    }
  }
}

id sub_226166E2C()
{
  v1 = OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__model;
  swift_beginAccess();
  sub_226150DB0(v0 + v1, v4, &qword_27D78CF88, &unk_226170B00);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0F0, &unk_226171148);
    type metadata accessor for MapsIntelligenceTrialModel();
    if (swift_dynamicCast())
    {

      v2 = sub_22615A83C();

      return v2;
    }
  }

  else
  {
    sub_22614E1F4(v4, &qword_27D78CF88, &unk_226170B00);
  }

  return 0;
}

uint64_t sub_226166F14(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  v3 = sub_22616F858();
  v2[27] = v3;
  v4 = *(v3 - 8);
  v2[28] = v4;
  v5 = *(v4 + 64) + 15;
  v2[29] = swift_task_alloc();
  v6 = type metadata accessor for AutocompleteRankerRequest();
  v2[30] = v6;
  Description = v6[-1].Description;
  v2[31] = Description;
  v8 = Description[8] + 15;
  v2[32] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0F8, &qword_226171158) - 8) + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226167080, 0, 0);
}

uint64_t sub_226167080()
{
  v1 = *(v0 + 208);
  v3 = *(v1 + OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__signalResource);
  v2 = *(v1 + OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__signalResource + 8);

  v4 = sub_226163020(v3, v2);

  v5 = OBJC_IVAR____TtC16MapsIntelligence33MapsIntelligenceSearchRankManager__autocompleteRanker;
  swift_beginAccess();
  sub_226150DB0(v1 + v5, v0 + 56, &qword_27D78D108, &qword_226171160);
  if (*(v0 + 80))
  {
    v6 = *(v0 + 280);
    v7 = *(v0 + 256);
    v8 = *(v0 + 200);
    v9 = *(v0 + 208);
    sub_22614B9FC((v0 + 56), v0 + 16);
    v10 = type metadata accessor for AutocompleteRankerResponse();
    *(v0 + 288) = v10;
    Description = v10[-1].Description;
    *(v0 + 296) = Description;
    v12 = Description[7];
    *(v0 + 304) = v12;
    *(v0 + 312) = (Description + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v6, 1, 1, v10);
    v13 = [v8 serializedData];
    v14 = sub_22616F728();
    v16 = v15;

    AutocompleteRankerRequest.init(serializedRequest:)(v14, v16, v7);
    v17 = *(v0 + 40);
    v18 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v17);
    *(v0 + 120) = type metadata accessor for MapsIntelligenceSearchRankManager();
    *(v0 + 128) = sub_2261686C8(&qword_27D78D110, v19, type metadata accessor for MapsIntelligenceSearchRankManager);
    *(v0 + 96) = v9;
    if (v4)
    {
      v20 = type metadata accessor for MapsIntelligenceSignalPack();
      v21 = sub_2261686C8(&qword_27D78D120, 255, type metadata accessor for MapsIntelligenceSignalPack);
    }

    else
    {
      v20 = 0;
      v21 = 0;
      *(v0 + 144) = 0;
      *(v0 + 152) = 0;
    }

    *(v0 + 320) = v4;
    v38 = *(v0 + 208);
    *(v0 + 136) = v4;
    *(v0 + 160) = v20;
    *(v0 + 168) = v21;
    v39 = v38;

    v40 = swift_task_alloc();
    *(v0 + 328) = v40;
    *v40 = v0;
    v40[1] = sub_22616746C;
    v41 = *(v0 + 272);
    v42 = *(v0 + 256);

    return dispatch thunk of AutocompleteRanker.rank(requestData:manager:signals:)(v41, v42, v0 + 96, v0 + 136, v17, v18);
  }

  else
  {
    v23 = *(v0 + 224);
    v22 = *(v0 + 232);
    v24 = *(v0 + 216);
    sub_22614E1F4(v0 + 56, &qword_27D78D108, &qword_226171160);
    sub_22616F848();
    v25 = sub_22616F838();
    v27 = v26;
    result = (*(v23 + 8))(v22, v24);
    if (v27 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      v29 = objc_allocWithZone(MEMORY[0x277D0EB90]);
      v30 = sub_22616F718();
      v31 = [v29 initWithSerializedResponseData_];

      sub_226168620(v25, v27);

      v33 = *(v0 + 272);
      v32 = *(v0 + 280);
      v35 = *(v0 + 256);
      v34 = *(v0 + 264);
      v36 = *(v0 + 232);

      v37 = *(v0 + 8);

      return v37(v31);
    }
  }

  return result;
}

uint64_t sub_22616746C()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v6 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = sub_2261677A0;
  }

  else
  {
    sub_22614E1F4(v2 + 136, &qword_27D78D118, &qword_226171168);
    __swift_destroy_boxed_opaque_existential_1((v2 + 96));
    v4 = sub_2261675A0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2261675A0()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[36];
  v4 = v0[37];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[33];
  sub_22614E1F4(v5, &qword_27D78D0F8, &qword_226171158);
  v2(v6, 0, 1, v3);
  sub_226168658(v6, v5);
  sub_226150DB0(v5, v7, &qword_27D78D0F8, &qword_226171158);
  result = (*(v4 + 48))(v7, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[40];
    v11 = v0[36];
    v10 = v0[37];
    v28 = v0[35];
    v13 = v0[32];
    v12 = v0[33];
    v14 = v0[30];
    v15 = v0[31];
    v16 = AutocompleteRankerResponse.serializedResponse.getter();
    v18 = v17;
    (*(v10 + 8))(v12, v11);
    v19 = objc_allocWithZone(MEMORY[0x277D0EB90]);
    v20 = sub_22616F718();
    v21 = [v19 initWithSerializedResponseData_];

    sub_226163834(v16, v18);

    (*(v15 + 8))(v13, v14);
    sub_22614E1F4(v28, &qword_27D78D0F8, &qword_226171158);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v23 = v0[34];
    v22 = v0[35];
    v25 = v0[32];
    v24 = v0[33];
    v26 = v0[29];

    v27 = v0[1];

    return v27(v21);
  }

  return result;
}

uint64_t sub_2261677A0()
{
  v1 = v0[40];
  v2 = v0[34];
  v3 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[30];
  v7 = v0[31];
  v8 = v0[29];

  (*(v7 + 8))(v5, v6);
  sub_22614E1F4(v3, &qword_27D78D0F8, &qword_226171158);
  sub_22614E1F4((v0 + 17), &qword_27D78D118, &qword_226171168);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v9 = v0[1];
  v10 = v0[42];

  return v9();
}

uint64_t sub_2261678AC(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_226151E50(a1, v1);

  return v3;
}

void *MapsIntelligenceSearchRankManager.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D128, &qword_226171170);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - v4;
  v6 = v1 + OBJC_IVAR____TtC16MapsIntelligence33MapsIntelligenceSearchRankManager__autocompleteRanker;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0;
  v7 = dispatch_semaphore_create(0);
  v8 = swift_allocObject();
  v9 = sub_22616F9F8();
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  *(v8 + 16) = 0u;
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;
  v10[5] = v7;

  v11 = v7;
  sub_226167FD8(0, 0, v5, &unk_226171180, v10);

  sub_22616FAA8();
  swift_beginAccess();
  sub_226150DB0(v8 + 16, &v28, &qword_27D78D108, &qword_226171160);
  if (v29)
  {
    sub_22614B9FC(&v28, &v30);
    sub_22614E190(&v30, &v28);
    swift_beginAccess();
    sub_2261688C4(&v28, v6);
    swift_endAccess();
    v13 = *(&v31 + 1);
    v12 = v32;
    __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
    LODWORD(v13) = dispatch thunk of ModuleProviding.projectId()(v13, *(v12 + 8));
    v15 = *(&v31 + 1);
    v14 = v32;
    __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
    v16 = dispatch thunk of ModuleProviding.namespace()(v15, *(v14 + 8));
    v18 = v17;
    v20 = *(&v31 + 1);
    v19 = v32;
    __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
    v21 = dispatch thunk of ModuleProviding.modelFactor()(v20, *(v19 + 8));
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_1(&v30);
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    LOBYTE(v28) = 0;
    v24 = MapsIntelligenceBaseManager.init(trialProjectId:trialNamespaceName:modelFactor:defaultModel:signalResource:)(v13, v16, v18, v21, v23, &v30, 0xD000000000000019, 0x8000000226172310);
    v25 = v24;

    if (v24)
    {
    }
  }

  else
  {

    sub_22614E1F4(&v28, &qword_27D78D108, &qword_226171160);

    sub_22614E1F4(v6, &qword_27D78D108, &qword_226171160);
    type metadata accessor for MapsIntelligenceSearchRankManager();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v24;
}

uint64_t sub_226167C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v6 = type metadata accessor for ModuleType();
  v5[17] = v6;
  Description = v6[-1].Description;
  v5[18] = Description;
  v8 = Description[8] + 15;
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226167D1C, 0, 0);
}

uint64_t sub_226167D1C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = type metadata accessor for ModuleRegistry();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  v0[20] = v7;
  swift_defaultActor_initialize();
  sub_22616F778();
  *(v7 + OBJC_IVAR____TtC16MapsIntelligence14ModuleRegistry____lazy_storage___availableModuleBundles) = 0;
  (*(v2 + 104))(v1, 0, v3);

  return MEMORY[0x2822009F8](sub_226167E24, v7, 0);
}

uint64_t sub_226167E24()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[18];
  sub_22614EAF0(v1, (v0 + 7));
  (*(v3 + 8))(v1, v2);

  return MEMORY[0x2822009F8](sub_226167EB8, 0, 0);
}

uint64_t sub_226167EB8()
{
  if (*(v0 + 80))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D130, &qword_226171220);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D138, qword_226171228);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }
  }

  else
  {
    sub_22614E1F4(v0 + 56, &qword_27D78CF08, &qword_226170A10);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
  }

  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  swift_beginAccess();
  sub_2261688C4(v0 + 16, v4 + 16);
  sub_22616FAB8();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226167FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D128, &qword_226171170);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_226150DB0(a3, v27 - v11, &qword_27D78D128, &qword_226171170);
  v13 = sub_22616F9F8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_22614E1F4(v12, &qword_27D78D128, &qword_226171170);
  }

  else
  {
    sub_22616F9E8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22616F9D8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22616F888() + 32;
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

      sub_22614E1F4(a3, &qword_27D78D128, &qword_226171170);

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

  sub_22614E1F4(a3, &qword_27D78D128, &qword_226171170);
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

id MapsIntelligenceSearchRankManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsIntelligenceSearchRankManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2261683A4(uint64_t a1)
{
  v3 = *v1;
  swift_getObjectType();
  v4 = sub_226151E50(a1, v3);

  return v4;
}

uint64_t sub_226168430(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226168528;

  return v7(a1);
}

uint64_t sub_226168528()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_226168620(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_226163834(a1, a2);
  }

  return a1;
}

uint64_t sub_226168658(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0F8, &qword_226171158);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2261686C8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_226168710(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2261687D0;

  return sub_226167C5C(a1, v4, v5, v7, v6);
}

uint64_t sub_2261687D0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2261688C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D108, &qword_226171160);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of MapsIntelligenceSearchRankManager.rank(requestData:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x138);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226168AC0;

  return v8(a1);
}

uint64_t sub_226168AC0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_226168C0C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226168D7C;

  return sub_226168430(a1, v5);
}

uint64_t sub_226168CC4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2261687D0;

  return sub_226168430(a1, v5);
}

uint64_t dispatch thunk of MIFAutocompleteRanker.rank(_:useClientEchoRanker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_226168AC0;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_226168EE0()
{
  if (qword_27D78CE78 != -1)
  {
    swift_once();
  }

  v1 = sub_22616F788();
  __swift_project_value_buffer(v1, qword_27D78DCC8);
  v2 = sub_22616F768();
  v3 = sub_22616FA78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22614A000, v2, v3, "Framework ranker is being called, no ranking logic implemented. Response will be empty.", v4, 2u);
    MEMORY[0x22AA77C50](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  AutocompleteRankerResponse.init(serializedResponse:)(0, 0xC000000000000000);
  v6 = *(v0 + 8);

  return v6();
}

unint64_t sub_226169034()
{
  result = qword_28136C4D8[0];
  if (!qword_28136C4D8[0])
  {
    type metadata accessor for MIFPersonalizedAutocompleteRankerModule();
    result = swift_getWitnessTable();
    atomic_store(result, qword_28136C4D8);
  }

  return result;
}

uint64_t sub_226169088@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ModuleType();
  v3 = *(v2[-1].Description + 13);

  return v3(a1, 0, v2);
}

uint64_t sub_226169124(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2261687D0;

  return sub_226168EC0(a1);
}

void *MapsIntelligenceTransportModePredictionManager.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D128, &qword_226171170);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v30[-v4];
  v6 = OBJC_IVAR____TtC16MapsIntelligence46MapsIntelligenceTransportModePredictionManager__predictor;
  *(v1 + OBJC_IVAR____TtC16MapsIntelligence46MapsIntelligenceTransportModePredictionManager__predictor) = 0;
  v7 = OBJC_IVAR____TtC16MapsIntelligence46MapsIntelligenceTransportModePredictionManager__transformers;
  *(v1 + OBJC_IVAR____TtC16MapsIntelligence46MapsIntelligenceTransportModePredictionManager__transformers) = 0;
  v8 = OBJC_IVAR____TtC16MapsIntelligence46MapsIntelligenceTransportModePredictionManager__transformersSemaphore;
  *(v1 + v8) = dispatch_semaphore_create(1);
  v9 = dispatch_semaphore_create(0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = sub_22616F9F8();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  v12[5] = v9;

  v13 = v9;
  sub_226167FD8(0, 0, v5, &unk_226171300, v12);

  sub_22616FAA8();
  swift_beginAccess();
  v14 = *(v10 + 16);
  if (v14)
  {
    v15 = type metadata accessor for MapsIntelligenceHandWrittenTMPModel();
    v16 = swift_allocObject();
    v31[3] = v15;
    v31[4] = &off_283959120;
    v31[0] = v16;

    v30[12] = 0;
    v17 = MapsIntelligenceBaseManager.init(trialProjectId:trialNamespaceName:modelFactor:defaultModel:signalResource:)(325, 0xD000000000000010, 0x8000000226171C50, 0xD000000000000012, 0x8000000226171C30, v31, 0xD000000000000017, 0x8000000226172470);
    if (v17)
    {
      v18 = *(v17 + OBJC_IVAR____TtC16MapsIntelligence46MapsIntelligenceTransportModePredictionManager__predictor);
      *(v17 + OBJC_IVAR____TtC16MapsIntelligence46MapsIntelligenceTransportModePredictionManager__predictor) = v14;
      v19 = v17;

      v20 = v19;

      v21 = sub_22616AAE8();

      v22 = *&v20[OBJC_IVAR____TtC16MapsIntelligence46MapsIntelligenceTransportModePredictionManager__transformers];
      *&v20[OBJC_IVAR____TtC16MapsIntelligence46MapsIntelligenceTransportModePredictionManager__transformers] = v21;

      return v19;
    }
  }

  else
  {
    if (qword_28136C3E0 != -1)
    {
      swift_once();
    }

    v24 = sub_22616F788();
    __swift_project_value_buffer(v24, qword_28136D4B8);
    v25 = sub_22616F768();
    v26 = sub_22616FA98();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22614A000, v25, v26, "Unable to load TransportModePredictonModule", v27, 2u);
      MEMORY[0x22AA77C50](v27, -1, -1);
    }

    v28 = *(v1 + v6);

    v29 = *(v1 + v7);

    type metadata accessor for MapsIntelligenceTransportModePredictionManager();
    swift_deallocPartialClassInstance();
  }

  return 0;
}

uint64_t sub_2261695A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = type metadata accessor for ModuleType();
  v5[13] = v6;
  Description = v6[-1].Description;
  v5[14] = Description;
  v8 = Description[8] + 15;
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226169660, 0, 0);
}

uint64_t sub_226169660()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = type metadata accessor for ModuleRegistry();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  v0[16] = v7;
  swift_defaultActor_initialize();
  sub_22616F778();
  *(v7 + OBJC_IVAR____TtC16MapsIntelligence14ModuleRegistry____lazy_storage___availableModuleBundles) = 0;
  (*(v2 + 104))(v1, 1, v3);

  return MEMORY[0x2822009F8](sub_226169768, v7, 0);
}

uint64_t sub_226169768()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];
  sub_22614EAF0(v1, (v0 + 2));
  (*(v3 + 8))(v1, v2);

  return MEMORY[0x2822009F8](sub_2261697FC, 0, 0);
}

uint64_t sub_2261697FC()
{
  if (v0[5])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D130, &qword_226171220);
    type metadata accessor for MIFTransportModePredictonModule();
    v1 = swift_dynamicCast();
    v2 = v0[10];
    if (v1)
    {
      v3 = v0[10];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    sub_22614E1F4((v0 + 2), &qword_27D78CF08, &qword_226170A10);
    v3 = 0;
  }

  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[11];
  v6 = v0[12];
  swift_beginAccess();
  v8 = *(v7 + 16);
  *(v7 + 16) = v3;

  sub_22616FAB8();

  v9 = v0[1];

  return v9();
}

uint64_t sub_22616990C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2261687D0;

  return sub_2261695A0(a1, v4, v5, v7, v6);
}

uint64_t sub_2261699CC()
{
  sub_226151694();
  v1 = *(v0 + OBJC_IVAR____TtC16MapsIntelligence46MapsIntelligenceTransportModePredictionManager__transformersSemaphore);
  sub_22616FAA8();
  v2 = sub_22616AAE8();
  v3 = *(v0 + OBJC_IVAR____TtC16MapsIntelligence46MapsIntelligenceTransportModePredictionManager__transformers);
  *(v0 + OBJC_IVAR____TtC16MapsIntelligence46MapsIntelligenceTransportModePredictionManager__transformers) = v2;

  return sub_22616FAB8();
}

__CFString *sub_226169A34(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CFE8, "6)");
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v62 - v18;
  *&v68 = 0x6570795470614DLL;
  *(&v68 + 1) = 0xE700000000000000;
  v20 = [a1 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (!v20)
  {
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  sub_22616FB28();
  swift_unknownObjectRelease();
  sub_22614C5B0(v67, &v68);
  swift_dynamicCast();
  v22 = v66;
  if (!*(v8 + OBJC_IVAR____TtC16MapsIntelligence46MapsIntelligenceTransportModePredictionManager__predictor))
  {
    if (qword_28136C3E0 != -1)
    {
      swift_once();
    }

    v30 = sub_22616F788();
    __swift_project_value_buffer(v30, qword_28136D4B8);
    v31 = sub_22616F768();
    v32 = sub_22616FA98();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_22614A000, v31, v32, "No module loaded, Falling back to default model", v33, 2u);
      MEMORY[0x22AA77C50](v33, -1, -1);
    }

    return sub_22616A234(v22, a4, a5, a6, a7);
  }

  *&v68 = 0;

  sub_22616F7A8();
  result = v68;
  if (!v68)
  {
    goto LABEL_43;
  }

  v23 = _s16MapsIntelligence0aB10SignalPackC10dictionaryACSDySSSdG_tcfC_0(v68);
  v24 = sub_22616F758();
  (*(*(v24 - 8) + 56))(v19, 1, 1, v24);
  v25 = type metadata accessor for MapsIntelligenceStringSignal(0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  v28 = MapsIntelligenceStringSignal.init(_:expiration:)(a2, a3, v19);
  v29 = v28;
  if (v28)
  {
    v28 = sub_22616DDA4(qword_28136CE90, type metadata accessor for MapsIntelligenceStringSignal);
  }

  else
  {
    v25 = 0;
    *(&v68 + 1) = 0;
    v69 = 0;
  }

  *&v68 = v29;
  v70 = v25;
  v71 = v28;
  sub_226150DB0(&v68, v67, &qword_27D78CFB0, &unk_226170C10);
  swift_beginAccess();
  sub_226154920(v67, 0x34687361486F6547, 0xE800000000000000);
  swift_endAccess();
  sub_22614E1F4(&v68, &qword_27D78CFB0, &unk_226170C10);
  sub_226154ED8();
  sub_22616BF80(v23);
  sub_226154ED8();
  v35 = *(v8 + OBJC_IVAR____TtC16MapsIntelligence46MapsIntelligenceTransportModePredictionManager__transformersSemaphore);
  sub_22616FAA8();
  v36 = *(v8 + OBJC_IVAR____TtC16MapsIntelligence46MapsIntelligenceTransportModePredictionManager__transformers);

  sub_22616FAB8();

  sub_226153DCC(v36, v23, v8);
  v34 = v37;
  v39 = v38;

  if ((v34 & 0x100000000) != 0)
  {
    if (qword_28136C3E0 != -1)
    {
      swift_once();
    }

    v48 = sub_22616F788();
    __swift_project_value_buffer(v48, qword_28136D4B8);
    v49 = sub_22616F768();
    v50 = sub_22616FA98();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_22614A000, v49, v50, "Prediction failed, trying default model", v51, 2u);
      MEMORY[0x22AA77C50](v51, -1, -1);
    }

    v34 = sub_22616A234(v22, a4, a5, a6, a7);

    return v34;
  }

  if (qword_28136C3E0 != -1)
  {
    swift_once();
  }

  v40 = sub_22616F788();
  __swift_project_value_buffer(v40, qword_28136D4B8);
  v41 = v39;
  v42 = sub_22616F768();
  v43 = sub_22616FA78();

  v65 = v42;
  if (!os_log_type_enabled(v42, v43))
  {

    return v34;
  }

  v44 = swift_slowAlloc();
  v45 = swift_slowAlloc();
  v46 = swift_slowAlloc();
  *&v68 = v46;
  *v44 = 136315394;
  v64 = v43;
  v62 = v45;
  v63 = v46;
  if (v34 > 2)
  {
    if (v34 <= 4)
    {
      if (v34 == 3)
      {
        v47 = @"BICYCLE";
      }

      else
      {
        v47 = @"UNKNOWN_TRANSPORT_TYPE";
      }

      goto LABEL_38;
    }

    if (v34 == 5)
    {
      v47 = @"FERRY";
      goto LABEL_38;
    }

    if (v34 == 6)
    {
      v47 = @"RIDESHARE";
      goto LABEL_38;
    }

LABEL_34:
    v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v34];
    goto LABEL_39;
  }

  if (!v34)
  {
    v47 = @"AUTOMOBILE";
    goto LABEL_38;
  }

  if (v34 == 1)
  {
    v47 = @"TRANSIT";
    goto LABEL_38;
  }

  if (v34 != 2)
  {
    goto LABEL_34;
  }

  v47 = @"WALKING";
LABEL_38:
  v52 = v47;
LABEL_39:
  result = v47;
  if (result)
  {
    v53 = result;
    v54 = sub_22616F828();
    v56 = v55;

    v57 = sub_2261555F8(v54, v56, &v68);

    *(v44 + 4) = v57;
    *(v44 + 12) = 2112;
    *(v44 + 14) = v41;
    v58 = v62;
    *v62 = v39;
    v59 = v41;
    v60 = v65;
    _os_log_impl(&dword_22614A000, v65, v64, "Predicted %s with :%@", v44, 0x16u);
    sub_22614E1F4(v58, &qword_27D78D0E8, &qword_226170F70);
    MEMORY[0x22AA77C50](v58, -1, -1);
    v61 = v63;
    __swift_destroy_boxed_opaque_existential_1(v63);
    MEMORY[0x22AA77C50](v61, -1, -1);
    MEMORY[0x22AA77C50](v44, -1, -1);

    return v34;
  }

LABEL_44:
  __break(1u);
  return result;
}

__CFString *sub_22616A234(int a1, double a2, double a3, double a4, double a5)
{
  v6 = sub_22616DDF8(a1, a2, a3, a4, a5);
  v7 = OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__defaultModel;
  swift_beginAccess();
  sub_226150DB0(v5 + v7, &v32, &qword_27D78CF88, &unk_226170B00);
  if (v33)
  {
    sub_22614B9FC(&v32, v34);
    v8 = v35;
    v9 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    v10 = (*(v9 + 8))(v6, v8, v9);
    v11 = v35;
    v12 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    v13 = (*(v12 + 16))(v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    sub_22614E1F4(&v32, &qword_27D78CF88, &unk_226170B00);
    v10 = 0;
    v13 = 0;
  }

  v14 = sub_22616BE00(v10);
  if (qword_28136C3E0 != -1)
  {
    swift_once();
  }

  v15 = sub_22616F788();
  __swift_project_value_buffer(v15, qword_28136D4B8);
  v16 = v13;
  v17 = sub_22616F768();
  v18 = sub_22616FA78();

  if (!os_log_type_enabled(v17, v18))
  {

LABEL_27:
    swift_unknownObjectRelease();
    return v14;
  }

  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v34[0] = v21;
  *v19 = 136315394;
  v31 = v21;
  if (v14 > 2)
  {
    if (v14 <= 4)
    {
      if (v14 == 3)
      {
        v22 = @"BICYCLE";
      }

      else
      {
        v22 = @"UNKNOWN_TRANSPORT_TYPE";
      }

      goto LABEL_24;
    }

    if (v14 == 5)
    {
      v22 = @"FERRY";
      goto LABEL_24;
    }

    if (v14 == 6)
    {
      v22 = @"RIDESHARE";
      goto LABEL_24;
    }

LABEL_20:
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v14];
    goto LABEL_25;
  }

  if (!v14)
  {
    v22 = @"AUTOMOBILE";
    goto LABEL_24;
  }

  if (v14 == 1)
  {
    v22 = @"TRANSIT";
    goto LABEL_24;
  }

  if (v14 != 2)
  {
    goto LABEL_20;
  }

  v22 = @"WALKING";
LABEL_24:
  v23 = v22;
LABEL_25:
  result = v22;
  if (result)
  {
    v25 = result;
    v26 = sub_22616F828();
    v28 = v27;

    v29 = sub_2261555F8(v26, v28, v34);

    *(v19 + 4) = v29;
    *(v19 + 12) = 2112;
    *(v19 + 14) = v16;
    *v20 = v13;
    v30 = v16;
    _os_log_impl(&dword_22614A000, v17, v18, "Predicted %s with :%@", v19, 0x16u);
    sub_22614E1F4(v20, &qword_27D78D0E8, &qword_226170F70);
    MEMORY[0x22AA77C50](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x22AA77C50](v31, -1, -1);
    MEMORY[0x22AA77C50](v19, -1, -1);

    goto LABEL_27;
  }

  __break(1u);
  return result;
}

void *sub_22616A5F8()
{
  v39 = *MEMORY[0x277D85DE8];
  v0 = sub_22616F6F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22616F678();
  v8 = sub_22616F708();
  v10 = v9;
  (*(v1 + 8))(v4, v0);
  v11 = objc_opt_self();
  v12 = sub_22616F718();
  *&v35 = 0;
  v13 = [v11 JSONObjectWithData:v12 options:0 error:&v35];

  if (!v13)
  {
    v22 = v35;
    v23 = sub_22616F658();

    swift_willThrow();
    if (qword_28136C3E0 != -1)
    {
      swift_once();
    }

    v24 = sub_22616F788();
    __swift_project_value_buffer(v24, qword_28136D4B8);
    v25 = v23;
    v26 = sub_22616F768();
    v27 = sub_22616FA98();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = v23;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_22614A000, v26, v27, "Error parsing JSON: %@", v28, 0xCu);
      sub_22614E1F4(v29, &qword_27D78D0E8, &qword_226170F70);
      MEMORY[0x22AA77C50](v29, -1, -1);
      MEMORY[0x22AA77C50](v28, -1, -1);
      sub_226163834(v8, v10);
    }

    else
    {
      sub_226163834(v8, v10);
    }

    goto LABEL_2;
  }

  v14 = v35;
  sub_22616FB28();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D160, &unk_226171358);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_226163834(v8, v10);
LABEL_2:
    v5 = 0;
    goto LABEL_3;
  }

  v15 = *&v38[0];
  v16 = *(*&v38[0] + 16);
  if (!v16)
  {
    sub_226163834(v8, v10);
LABEL_25:

    goto LABEL_2;
  }

  v33 = v8;
  v34 = v10;
  v5 = MEMORY[0x277D84F90];
  v17 = 32;
  do
  {
    v18 = *(v15 + v17);

    sub_22616AD28(v19, &v35);

    if (v36)
    {
      sub_22614C5B0(&v35, v38);
      sub_22614D234(v38, v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D168, &qword_226171368);
      swift_dynamicCast();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_22616B594(0, v5[2] + 1, 1, v5);
      }

      v21 = v5[2];
      v20 = v5[3];
      if (v21 >= v20 >> 1)
      {
        v5 = sub_22616B594((v20 > 1), v21 + 1, 1, v5);
      }

      __swift_destroy_boxed_opaque_existential_1(v38);
      v5[2] = v21 + 1;
      sub_22614B9FC(&v35, &v5[5 * v21 + 4]);
    }

    else
    {
      sub_22614E1F4(&v35, &qword_27D78CEE0, &unk_226170C20);
    }

    v17 += 8;
    --v16;
  }

  while (v16);
  sub_226163834(v33, v34);

  if (!v5[2])
  {
    goto LABEL_25;
  }

LABEL_3:
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void *sub_22616AAE8()
{
  if (*(v0 + OBJC_IVAR____TtC16MapsIntelligence46MapsIntelligenceTransportModePredictionManager__predictor))
  {
    v1 = objc_opt_self();

    v2 = [v1 clientWithIdentifier_];
    v3 = sub_22616F7F8();
    v4 = sub_22616F7F8();
    v5 = [v2 levelForFactor:v3 withNamespaceName:v4];

    v6 = [v5 fileValue];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 path];
      if (v8)
      {
        v9 = v8;
        sub_22616F828();

        v10 = sub_22616A5F8();

        return v10;
      }
    }

    if (qword_28136C3E0 != -1)
    {
      swift_once();
    }

    v12 = sub_22616F788();
    __swift_project_value_buffer(v12, qword_28136D4B8);
    v13 = sub_22616F768();
    v14 = sub_22616FA98();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22614A000, v13, v14, "Unable to find transformer file path", v15, 2u);
      MEMORY[0x22AA77C50](v15, -1, -1);
    }
  }

  return 0;
}

unint64_t sub_22616AD28@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 16))
  {
    v3 = result;
    result = sub_226155B2C(0x726F66736E617274, 0xEB0000000072656DLL);
    if (v4)
    {
      sub_22614D234(*(v3 + 56) + 32 * result, v18);
      sub_22614C5B0(v18, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D158, &qword_226171350);
      swift_dynamicCast();
      if (*(v17 + 16) && (v5 = sub_226155B2C(1701869940, 0xE400000000000000), (v6 & 1) != 0))
      {
        sub_22614D234(*(v17 + 56) + 32 * v5, v19);

        result = swift_dynamicCast();
        if (result)
        {
          v7 = v18[0];
          if (v18[0] == __PAIR128__(0xE800000000000000, 0x7572687473736170) || (sub_22616FC68() & 1) != 0)
          {

            v8 = type metadata accessor for MapsIntelligencePassThruTransformer();
            v9 = *(v8 + 48);
            v10 = *(v8 + 52);
            swift_allocObject();

            result = sub_22614C76C(v11);
            if (result)
            {
LABEL_9:
              *(a2 + 24) = v8;
              *a2 = result;
              return result;
            }

            goto LABEL_11;
          }

          if (v7 != __PAIR128__(0xE500000000000000, 0x686374616DLL) && (sub_22616FC68() & 1) == 0)
          {
            if (v7 == __PAIR128__(0xE600000000000000, 0x70756B6F6F6CLL))
            {
            }

            else
            {
              v13 = sub_22616FC68();

              if ((v13 & 1) == 0)
              {
                goto LABEL_11;
              }
            }

            v8 = type metadata accessor for MapsIntelligenceFileLookupTransformer();
            v14 = *(v8 + 48);
            v15 = *(v8 + 52);
            swift_allocObject();

            result = sub_22615FDAC(v16);
            if (result)
            {
              goto LABEL_9;
            }

            goto LABEL_11;
          }

          result = sub_22614DDD8(v3);
          if (result)
          {
            v12 = result;
            result = type metadata accessor for MapsIntelligenceBaseTransformer();
            *(a2 + 24) = result;
            *a2 = v12;
            return result;
          }
        }
      }

      else
      {
      }

LABEL_11:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_22616AFDC()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MapsIntelligence46MapsIntelligenceTransportModePredictionManager__predictor);

  v2 = *(v0 + OBJC_IVAR____TtC16MapsIntelligence46MapsIntelligenceTransportModePredictionManager__transformers);

  v3 = *(v0 + OBJC_IVAR____TtC16MapsIntelligence46MapsIntelligenceTransportModePredictionManager__transformersSemaphore);
}

id MapsIntelligenceTransportModePredictionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsIntelligenceTransportModePredictionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22616B0BC()
{
  v0 = sub_22616F788();
  __swift_allocate_value_buffer(v0, qword_28136D4B8);
  __swift_project_value_buffer(v0, qword_28136D4B8);
  return sub_22616F778();
}

char *sub_22616B160(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D178, &qword_226171378);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_22616B26C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D188, &unk_226171390);
  Description = type metadata accessor for ModuleType()[-1].Description;
  v11 = Description[9];
  v12 = (*(Description + 80) + 32) & ~*(Description + 80);
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
  v15 = type metadata accessor for ModuleType()[-1].Description;
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + v15[9] * v8))
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

void *sub_22616B444(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D180, &unk_226171380);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF48, &qword_226170A58);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22616B594(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D170, &qword_226171370);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D168, &qword_226171368);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_22616B6DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_226155B2C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22614FDFC();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_22614B9FC((*(v12 + 56) + 40 * v9), a3);
    sub_22616B788(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_22616B788(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22616FB38() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_22616FCB8();

      sub_22616F8B8();
      v15 = sub_22616FCD8();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22616B944(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22616FB38() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22616FCB8();

      sub_22616F8B8();
      v13 = sub_22616FCD8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22616BAF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v37 = a6;
  v38 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v15 = *a5;
  v17 = sub_226155B2C(a2, a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = (v23[7] + 40 * v17);
      __swift_destroy_boxed_opaque_existential_1(v24);
      return sub_22614B9FC(&v36, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    sub_22614FDFC();
    goto LABEL_7;
  }

  sub_226150400(v20, a4 & 1);
  v26 = *a5;
  v27 = sub_226155B2C(a2, a3);
  if ((v21 & 1) != (v28 & 1))
  {
LABEL_14:
    result = sub_22616FC98();
    __break(1u);
    return result;
  }

  v17 = v27;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29 = v37;
  v30 = __swift_mutable_project_boxed_opaque_existential_1(&v36, v37);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v35 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33);
  sub_22616BD28(v17, a2, a3, v33, v23, a6, a7);

  return __swift_destroy_boxed_opaque_existential_1(&v36);
}

uint64_t sub_22616BD28(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_22614B9FC(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

unint64_t sub_22616BE00(void *a1)
{
  if (a1)
  {
    swift_unknownObjectRetain();
    v2 = sub_22616F7F8();
    v3 = [a1 featureValueForName_];

    if (v3)
    {
      result = sub_22614D5C0([v3 int64Value]);
      if (result == 4)
      {
        __break(1u);
      }

      else
      {
        v5 = result;
        swift_unknownObjectRelease();

        return dword_2261713A0[v5];
      }

      return result;
    }

    swift_unknownObjectRelease();
  }

  if (qword_28136C3E0 != -1)
  {
    swift_once();
  }

  v6 = sub_22616F788();
  __swift_project_value_buffer(v6, qword_28136D4B8);
  v7 = sub_22616F768();
  v8 = sub_22616FA98();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22614A000, v7, v8, "Prediction failed, falling back to unknown transport type", v9, 2u);
    MEMORY[0x22AA77C50](v9, -1, -1);
  }

  return 4;
}

void sub_22616BF80(uint64_t a1)
{
  v210 = sub_22616F758();
  v2 = *(v210 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v210);
  v207 = &v187 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for MapsIntelligenceClientSignalType();
  Description = v206[-1].Description;
  v6 = *(Description + 8);
  MEMORY[0x28223BE20](v206);
  v205 = &v187 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CFE8, "6)");
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v204 = &v187 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v217 = &v187 - v12;
  type metadata accessor for MapsIntelligenceSignalPack();
  v13 = swift_allocObject();
  v14 = sub_226159E2C(MEMORY[0x277D84F90]);
  v192 = v13;
  *(v13 + 16) = v14;
  v15 = (v13 + 16);
  swift_beginAccess();
  v16 = *(a1 + 16);
  v17 = v16 + 64;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v16 + 64);
  v21 = (v18 + 63) >> 6;
  v211 = 0x8000000226172580;
  v194 = 0x80000002261725C0;
  v195 = 0x80000002261725A0;
  v193 = 0x80000002261725E0;
  v190 = 0x8000000226172620;
  v191 = 0x8000000226172600;
  v188 = 0x8000000226172660;
  v189 = 0x8000000226172640;
  v187 = 0x8000000226172680;
  v209 = (v2 + 56);
  v202 = 1;
  v200 = (Description + 16);
  v201 = (Description + 104);
  v198 = (v2 + 32);
  v199 = (Description + 8);
  v197 = v16;

  v22 = 0;
  v196 = v15;
  v208 = v21;
  v203 = v17;
  while (v20)
  {
    v23 = v22;
LABEL_13:
    v26 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v27 = v26 | (v23 << 6);
    v28 = (*(v197 + 48) + 16 * v27);
    v30 = *v28;
    v29 = v28[1];
    sub_22614E190(*(v197 + 56) + 40 * v27, &v225);
    *&v228 = v30;
    *(&v228 + 1) = v29;
    sub_22614B9FC(&v225, &v229);

LABEL_14:
    v232 = v228;
    v233[0] = v229;
    v233[1] = v230;
    v234 = v231;
    v31 = *(&v228 + 1);
    if (!*(&v228 + 1))
    {

      return;
    }

    v32 = v232;
    sub_22614B9FC(v233, &v228);
    v218 = v31;
    v215 = v20;
    v216 = v22;
    if ((v32 != 0xD000000000000016 || v211 != v31) && (sub_22616FC68() & 1) == 0 && (v32 != 0xD00000000000001FLL || v195 != v31) && (sub_22616FC68() & 1) == 0 && (v32 != 0xD000000000000018 || v194 != v31))
    {
      v68 = sub_22616FC68();
      v69 = v32 == 0xD000000000000016 && v193 == v31;
      v70 = v69;
      if ((v68 & 1) == 0 && !v70 && (sub_22616FC68() & 1) == 0 && (v32 != 0xD00000000000001DLL || v191 != v31) && (sub_22616FC68() & 1) == 0)
      {
        if (v32 != 0xD000000000000019 || v190 != v31)
        {
          v76 = sub_22616FC68();
          v77 = v32 == 0xD000000000000019 && v189 == v31;
          v78 = v77;
          if ((v76 & 1) == 0 && !v78 && (sub_22616FC68() & 1) == 0)
          {
            if (v32 == 0xD000000000000010 && v188 == v31 || (sub_22616FC68() & 1) != 0)
            {
              sub_22614E190(&v228, &v225);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CEF0, &qword_226170C40);
              v213 = type metadata accessor for MapsIntelligenceDoubleSignal(0);
              swift_dynamicCast();
              v79 = v223;
              v80 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value;
              swift_beginAccess();
              v214 = v79;
              sub_226150DB0(v79 + v80, &v225, &qword_27D78CEE0, &unk_226170C20);
              if (v226)
              {
                sub_22614C5C0();
                if (swift_dynamicCast())
                {
                  v81 = v223;
                  [v223 doubleValue];
                  v83 = v82;

                  goto LABEL_98;
                }
              }

              else
              {
                sub_22614E1F4(&v225, &qword_27D78CEE0, &unk_226170C20);
              }

              v83 = 0.0;
LABEL_98:
              v104 = v83 / 1800.0;
              if (COERCE__INT64(fabs(v83 / 1800.0)) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_178;
              }

              if (v104 <= -9.22337204e18)
              {
                goto LABEL_179;
              }

              if (v104 >= 9.22337204e18)
              {
                goto LABEL_180;
              }

              v105 = v104 * 1800.0 / 3600.0;
              v106 = v217;
              (*v209)(v217, 1, 1, v210);
              v107 = v213;
              v108 = *(v213 + 12);
              v109 = *(v213 + 26);
              swift_allocObject();
              v110 = MapsIntelligenceDoubleSignal.init(_:expiration:)(v106, v105);
              v226 = v107;
              v227 = sub_22616DDA4(qword_28136CFF8, type metadata accessor for MapsIntelligenceDoubleSignal);
              *&v225 = v110;
              v111 = HIBYTE(v218) & 0xF;
              if ((v218 & 0x2000000000000000) == 0)
              {
                v111 = v32 & 0xFFFFFFFFFFFFLL;
              }

              if (!v111)
              {
LABEL_134:

                __swift_destroy_boxed_opaque_existential_1(&v228);
                goto LABEL_48;
              }

              sub_226150DB0(&v225, &v223, &qword_27D78CFB0, &unk_226170C10);
              v112 = v196;
              swift_beginAccess();
              v212 = v110;
              if (v224)
              {
                sub_22614B9FC(&v223, v220);

                v113 = v218;

                v114 = *v112;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v219 = *v112;
                v116 = v221;
                v117 = v222;
                v118 = __swift_mutable_project_boxed_opaque_existential_1(v220, v221);
                v213 = &v187;
                v119 = *(*(v116 - 8) + 64);
                MEMORY[0x28223BE20](v118);
                v121 = v20;
                v122 = &v187 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v123 + 16))(v122);
                v124 = v122;
                v20 = v121;
                v125 = v117;
                v21 = v208;
                sub_22616BAF4(v124, v32, v113, isUniquelyReferenced_nonNull_native, &v219, v116, v125);
                __swift_destroy_boxed_opaque_existential_1(v220);

                v22 = v216;
                *v112 = v219;
              }

              else
              {

                v132 = v218;

                sub_22614E1F4(&v223, &qword_27D78CFB0, &unk_226170C10);
                sub_22616B6DC(v32, v132, v220);

                sub_22614E1F4(v220, &qword_27D78CFB0, &unk_226170C10);
              }

LABEL_136:
              swift_endAccess();

LABEL_47:

              __swift_destroy_boxed_opaque_existential_1(&v228);
              goto LABEL_48;
            }

            if ((v32 != 0x664F65636E616843 || v31 != 0xEC000000776F6E53) && (sub_22616FC68() & 1) == 0 && (v32 != 0xD000000000000015 || v187 != v31))
            {
              v157 = sub_22616FC68();
              v158 = v32 == 0x664F65636E616843 && v31 == 0xEC0000006E696152;
              v159 = v158;
              if ((v157 & 1) == 0 && !v159 && (sub_22616FC68() & 1) == 0)
              {
                v160 = v32;
                if (v32 == 0x74617265706D6554 && v31 == 0xEB00000000657275 || (sub_22616FC68() & 1) != 0)
                {
                  sub_22614E190(&v228, &v225);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CEF0, &qword_226170C40);
                  v161 = type metadata accessor for MapsIntelligenceDoubleSignal(0);
                  swift_dynamicCast();
                  v162 = v223;
                  v163 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value;
                  swift_beginAccess();
                  sub_226150DB0(v162 + v163, &v225, &qword_27D78CEE0, &unk_226170C20);
                  if (v226)
                  {
                    sub_22614C5C0();
                    if (swift_dynamicCast())
                    {
                      v164 = v223;
                      [v223 doubleValue];
                      v166 = v165;

LABEL_154:
                      if ((~*&v166 & 0x7FF0000000000000) != 0 || (*&v166 & 0xFFFFFFFFFFFFFLL) == 0)
                      {
                        v167 = v166 - fmod(v166, 5.0);
                      }

                      else
                      {
                        v167 = NAN;
                      }

                      v168 = v217;
                      (*v209)(v217, 1, 1, v210);
                      v169 = *(v161 + 48);
                      v170 = *(v161 + 52);
                      swift_allocObject();
                      v171 = MapsIntelligenceDoubleSignal.init(_:expiration:)(v168, v167);
                      v226 = v161;
                      v227 = sub_22616DDA4(qword_28136CFF8, type metadata accessor for MapsIntelligenceDoubleSignal);
                      *&v225 = v171;
                      v172 = HIBYTE(v218) & 0xF;
                      if ((v218 & 0x2000000000000000) == 0)
                      {
                        v172 = v32 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v172)
                      {
                        sub_226150DB0(&v225, &v223, &qword_27D78CFB0, &unk_226170C10);
                        swift_beginAccess();
                        v173 = v218;

                        sub_226154920(&v223, v160, v173);
                        swift_endAccess();
                      }

                      else
                      {
                      }

                      __swift_destroy_boxed_opaque_existential_1(&v228);
                      sub_22614E1F4(&v225, &qword_27D78CFB0, &unk_226170C10);
LABEL_172:
                      v21 = v208;
                      v20 = v215;
                      v22 = v216;
                      continue;
                    }
                  }

                  else
                  {
                    sub_22614E1F4(&v225, &qword_27D78CEE0, &unk_226170C20);
                  }

                  v166 = 0.0;
                  goto LABEL_154;
                }

                sub_22614E190(&v228, &v225);
                v174 = HIBYTE(v31) & 0xF;
                if ((v31 & 0x2000000000000000) == 0)
                {
                  v174 = v32 & 0xFFFFFFFFFFFFLL;
                }

                if (v174)
                {
                  sub_226150DB0(&v225, &v223, &qword_27D78CFB0, &unk_226170C10);
                  swift_beginAccess();
                  if (v224)
                  {
                    sub_22614B9FC(&v223, v220);
                    v175 = v218;

                    v176 = v196;
                    v177 = *v196;
                    v178 = swift_isUniquelyReferenced_nonNull_native();
                    v219 = *v176;
                    v179 = v221;
                    v180 = v222;
                    v181 = __swift_mutable_project_boxed_opaque_existential_1(v220, v221);
                    v182 = *(*(v179 - 8) + 64);
                    MEMORY[0x28223BE20](v181);
                    v184 = &v187 - ((v183 + 15) & 0xFFFFFFFFFFFFFFF0);
                    (*(v185 + 16))(v184);
                    sub_22616BAF4(v184, v160, v175, v178, &v219, v179, v180);
                    __swift_destroy_boxed_opaque_existential_1(v220);

                    *v176 = v219;
                  }

                  else
                  {
                    v186 = v218;

                    sub_22614E1F4(&v223, &qword_27D78CFB0, &unk_226170C10);
                    sub_22616B6DC(v32, v186, v220);

                    sub_22614E1F4(v220, &qword_27D78CFB0, &unk_226170C10);
                  }

                  swift_endAccess();
                }

                sub_22614E1F4(&v225, &qword_27D78CFB0, &unk_226170C10);
                __swift_destroy_boxed_opaque_existential_1(&v228);
                goto LABEL_172;
              }
            }

            sub_22614E190(&v228, &v225);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CEF0, &qword_226170C40);
            v126 = type metadata accessor for MapsIntelligenceDoubleSignal(0);
            swift_dynamicCast();
            v127 = v223;
            v128 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value;
            swift_beginAccess();
            sub_226150DB0(v127 + v128, &v225, &qword_27D78CEE0, &unk_226170C20);
            if (v226)
            {
              sub_22614C5C0();
              if (swift_dynamicCast())
              {
                v129 = v223;
                [v223 doubleValue];
                v131 = v130;

                goto LABEL_117;
              }
            }

            else
            {
              sub_22614E1F4(&v225, &qword_27D78CEE0, &unk_226170C20);
            }

            v131 = 0.0;
LABEL_117:
            v214 = v127;
            if ((~*&v131 & 0x7FF0000000000000) != 0 || (*&v131 & 0xFFFFFFFFFFFFFLL) == 0)
            {
              v133 = 0.0;
              if (v131 >= 25.0)
              {
                v133 = 25.0;
                if (v131 >= 50.0)
                {
                  v133 = 50.0;
                  if (v131 >= 75.0)
                  {
                    if (v131 >= 100.0 || v131 < 75.0)
                    {
                      v133 = 100.0;
                    }

                    else
                    {
                      v133 = 75.0;
                    }
                  }
                }
              }
            }

            else
            {
              v133 = NAN;
            }

            v135 = v217;
            (*v209)(v217, 1, 1, v210);
            v136 = *(v126 + 48);
            v137 = *(v126 + 52);
            swift_allocObject();
            v138 = MapsIntelligenceDoubleSignal.init(_:expiration:)(v135, v133);
            v226 = v126;
            v227 = sub_22616DDA4(qword_28136CFF8, type metadata accessor for MapsIntelligenceDoubleSignal);
            *&v225 = v138;
            v139 = HIBYTE(v218) & 0xF;
            if ((v218 & 0x2000000000000000) == 0)
            {
              v139 = v32 & 0xFFFFFFFFFFFFLL;
            }

            if (!v139)
            {
              goto LABEL_134;
            }

            v140 = v138;
            sub_226150DB0(&v225, &v223, &qword_27D78CFB0, &unk_226170C10);
            v141 = v196;
            swift_beginAccess();
            v213 = v140;
            if (v224)
            {
              sub_22614B9FC(&v223, v220);
              v142 = v218;

              v143 = v141;
              v144 = *v141;
              v145 = swift_isUniquelyReferenced_nonNull_native();
              v219 = *v143;
              v146 = v221;
              v147 = v222;
              v148 = __swift_mutable_project_boxed_opaque_existential_1(v220, v221);
              v212 = &v187;
              v149 = *(*(v146 - 8) + 64);
              MEMORY[0x28223BE20](v148);
              v151 = v20;
              v152 = &v187 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v153 + 16))(v152);
              v154 = v152;
              v20 = v151;
              v155 = v147;
              v21 = v208;
              sub_22616BAF4(v154, v32, v142, v145, &v219, v146, v155);
              __swift_destroy_boxed_opaque_existential_1(v220);

              v22 = v216;
              *v143 = v219;
            }

            else
            {
              v156 = v218;

              sub_22614E1F4(&v223, &qword_27D78CFB0, &unk_226170C10);
              sub_22616B6DC(v32, v156, v220);

              sub_22614E1F4(v220, &qword_27D78CFB0, &unk_226170C10);
            }

            goto LABEL_136;
          }
        }

        sub_22614E190(&v228, &v225);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CEF0, &qword_226170C40);
        v213 = type metadata accessor for MapsIntelligenceDoubleSignal(0);
        swift_dynamicCast();
        v71 = v223;
        v72 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value;
        swift_beginAccess();
        v214 = v71;
        sub_226150DB0(v71 + v72, &v225, &qword_27D78CEE0, &unk_226170C20);
        if (v226)
        {
          sub_22614C5C0();
          if (swift_dynamicCast())
          {
            v73 = v223;
            [v223 doubleValue];
            v75 = v74;

            goto LABEL_86;
          }
        }

        else
        {
          sub_22614E1F4(&v225, &qword_27D78CEE0, &unk_226170C20);
        }

        v75 = 0.0;
LABEL_86:
        v84 = v75 / 60.0;
        if (COERCE__INT64(fabs(v75 / 60.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_175;
        }

        if (v84 <= -9.22337204e18)
        {
          goto LABEL_176;
        }

        if (v84 >= 9.22337204e18)
        {
          goto LABEL_177;
        }

        v85 = v84 * 60.0 / 3600.0;
        v86 = v217;
        (*v209)(v217, 1, 1, v210);
        v87 = v213;
        v88 = *(v213 + 12);
        v89 = *(v213 + 26);
        swift_allocObject();
        v90 = MapsIntelligenceDoubleSignal.init(_:expiration:)(v86, v85);
        v226 = v87;
        v227 = sub_22616DDA4(qword_28136CFF8, type metadata accessor for MapsIntelligenceDoubleSignal);
        *&v225 = v90;
        v91 = HIBYTE(v218) & 0xF;
        if ((v218 & 0x2000000000000000) == 0)
        {
          v91 = v32 & 0xFFFFFFFFFFFFLL;
        }

        if (!v91)
        {
          goto LABEL_134;
        }

        sub_226150DB0(&v225, &v223, &qword_27D78CFB0, &unk_226170C10);
        v92 = v196;
        swift_beginAccess();
        if (v224)
        {
          sub_22614B9FC(&v223, v220);

          v93 = *v92;
          LODWORD(v213) = swift_isUniquelyReferenced_nonNull_native();
          v219 = *v92;
          v94 = v221;
          v95 = v222;
          v96 = __swift_mutable_project_boxed_opaque_existential_1(v220, v221);
          v97 = *(*(v94 - 8) + 64);
          MEMORY[0x28223BE20](v96);
          v99 = v20;
          v100 = &v187 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v101 + 16))(v100);
          v102 = v100;
          v20 = v99;
          v103 = v95;
          v21 = v208;
          sub_22616BAF4(v102, v32, v218, v213, &v219, v94, v103);
          __swift_destroy_boxed_opaque_existential_1(v220);
          v22 = v216;
          *v92 = v219;
        }

        else
        {

          sub_22614E1F4(&v223, &qword_27D78CFB0, &unk_226170C10);
          sub_22616B6DC(v32, v218, v220);
          sub_22614E1F4(v220, &qword_27D78CFB0, &unk_226170C10);
        }

        swift_endAccess();

LABEL_46:

        goto LABEL_47;
      }
    }

    v33 = v32;
    sub_22614E190(&v228, &v225);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CEF0, &qword_226170C40);
    v34 = type metadata accessor for MapsIntelligenceDoubleSignal(0);
    swift_dynamicCast();
    v35 = v223;
    v36 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value;
    swift_beginAccess();
    v213 = v35;
    sub_226150DB0(v35 + v36, &v225, &qword_27D78CEE0, &unk_226170C20);
    if (v226)
    {
      sub_22614C5C0();
      if (swift_dynamicCast())
      {
        v37 = v223;
        [v223 doubleValue];
        v39 = v38;

        goto LABEL_28;
      }
    }

    else
    {
      sub_22614E1F4(&v225, &qword_27D78CEE0, &unk_226170C20);
    }

    v39 = 0.0;
LABEL_28:
    v214 = v33;
    if ((~*&v39 & 0x7FF0000000000000) != 0 || (v40 = 0.0, (*&v39 & 0xFFFFFFFFFFFFFLL) == 0))
    {
      if (v39 < 0.0 || (v40 = 1.0, v39 >= 500.0))
      {
        if (v39 >= 4000.0 || v39 < 500.0)
        {
          v40 = 3.0;
        }

        else
        {
          v40 = 2.0;
        }
      }
    }

    v42 = v210;
    v43 = *v209;
    v44 = v217;
    (*v209)(v217, 1, 1, v210);
    v212 = v34;
    v45 = *(v34 + 48);
    v46 = *(v34 + 52);
    v47 = swift_allocObject();
    v48 = v205;
    v49 = v206;
    (*v201)(v205, v202, v206);
    v50 = v204;
    sub_226150DB0(v44, v204, &qword_27D78CFE8, "6)");
    v51 = (v47 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value);
    *v51 = 0u;
    v51[1] = 0u;
    v52 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_expirationDate;
    v43(v47 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_expirationDate, 1, 1, v42);
    (*v200)(v47 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal__type, v48, v49);
    v53 = v207;
    sub_22616F748();
    (*v199)(v48, v49);
    (*v198)(v47 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_creationDate, v53, v42);
    swift_beginAccess();
    sub_226157F18(v50, v47 + v52, &qword_27D78CFE8, "6)");
    swift_endAccess();
    v54 = objc_allocWithZone(MEMORY[0x277CCABB0]);

    v55 = [v54 initWithDouble_];
    v226 = sub_22614C5C0();
    *&v225 = v55;
    sub_22614E1F4(v217, &qword_27D78CFE8, "6)");
    swift_beginAccess();
    sub_226157F18(&v225, v51, &qword_27D78CEE0, &unk_226170C20);
    swift_endAccess();

    v226 = v212;
    v227 = sub_22616DDA4(qword_28136CFF8, type metadata accessor for MapsIntelligenceDoubleSignal);
    *&v225 = v47;
    v56 = HIBYTE(v218) & 0xF;
    v57 = v214;
    if ((v218 & 0x2000000000000000) == 0)
    {
      v56 = v214 & 0xFFFFFFFFFFFFLL;
    }

    if (v56)
    {
      sub_226150DB0(&v225, &v223, &qword_27D78CFB0, &unk_226170C10);
      v58 = v196;
      swift_beginAccess();
      if (v224)
      {
        sub_22614B9FC(&v223, v220);

        v59 = *v58;
        v60 = swift_isUniquelyReferenced_nonNull_native();
        v219 = *v58;
        v61 = v221;
        v62 = v222;
        v63 = __swift_mutable_project_boxed_opaque_existential_1(v220, v221);
        v64 = *(*(v61 - 8) + 64);
        MEMORY[0x28223BE20](v63);
        v66 = &v187 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v67 + 16))(v66);
        sub_22616BAF4(v66, v57, v218, v60, &v219, v61, v62);
        __swift_destroy_boxed_opaque_existential_1(v220);
        *v58 = v219;
      }

      else
      {

        sub_22614E1F4(&v223, &qword_27D78CFB0, &unk_226170C10);
        sub_22616B6DC(v57, v218, v220);
        sub_22614E1F4(v220, &qword_27D78CFB0, &unk_226170C10);
      }

      v17 = v203;
      v21 = v208;
      v20 = v215;
      v22 = v216;
      swift_endAccess();

      goto LABEL_46;
    }

    __swift_destroy_boxed_opaque_existential_1(&v228);
    v17 = v203;
    v21 = v208;
    v20 = v215;
    v22 = v216;
LABEL_48:
    sub_22614E1F4(&v225, &qword_27D78CFB0, &unk_226170C10);
  }

  if (v21 <= v22 + 1)
  {
    v24 = v22 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v21)
    {
      v20 = 0;
      v231 = 0;
      v229 = 0u;
      v230 = 0u;
      v22 = v25;
      v228 = 0u;
      goto LABEL_14;
    }

    v20 = *(v17 + 8 * v23);
    ++v22;
    if (v20)
    {
      v22 = v23;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
}

uint64_t sub_22616DDA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22616DDF8(int a1, double a2, double a3, double a4, double a5)
{
  type metadata accessor for MapsIntelligenceFeatureProvider();
  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x277D84FA0];
  *(v10 + 24) = sub_22615A090(MEMORY[0x277D84F90]);
  v11 = objc_opt_self();
  v12 = [v11 featureValueWithDouble_];
  swift_beginAccess();
  v13 = v12;
  v14 = *(v10 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(v10 + 24);
  sub_2261589A4(v13, 0x614C6E696769724FLL, 0xEE00656475746974, isUniquelyReferenced_nonNull_native);
  *(v10 + 24) = v33;
  swift_endAccess();
  swift_beginAccess();
  sub_226158CC0(&v33, 0x614C6E696769724FLL, 0xEE00656475746974);
  swift_endAccess();

  v16 = [v11 featureValueWithDouble_];
  swift_beginAccess();
  v17 = v16;
  v18 = *(v10 + 24);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(v10 + 24);
  sub_2261589A4(v17, 0x6F4C6E696769724FLL, 0xEF6564757469676ELL, v19);
  *(v10 + 24) = v33;
  swift_endAccess();
  swift_beginAccess();
  sub_226158CC0(&v33, 0x6F4C6E696769724FLL, 0xEF6564757469676ELL);
  swift_endAccess();

  v20 = [v11 featureValueWithDouble_];
  swift_beginAccess();
  v21 = v20;
  v22 = *(v10 + 24);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(v10 + 24);
  sub_2261589A4(v21, 0xD000000000000013, 0x80000002261726A0, v23);
  *(v10 + 24) = v33;
  swift_endAccess();
  swift_beginAccess();
  sub_226158CC0(&v33, 0xD000000000000013, 0x80000002261726A0);
  swift_endAccess();

  v24 = [v11 featureValueWithDouble_];
  swift_beginAccess();
  v25 = v24;
  v26 = *(v10 + 24);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(v10 + 24);
  sub_2261589A4(v25, 0xD000000000000014, 0x80000002261726C0, v27);
  *(v10 + 24) = v33;
  swift_endAccess();
  swift_beginAccess();
  sub_226158CC0(&v33, 0xD000000000000014, 0x80000002261726C0);
  swift_endAccess();

  v28 = [v11 featureValueWithInt64_];
  swift_beginAccess();
  v29 = v28;
  v30 = *(v10 + 24);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(v10 + 24);
  sub_2261589A4(v29, 0x6570795470614DLL, 0xE700000000000000, v31);
  *(v10 + 24) = v33;
  swift_endAccess();
  swift_beginAccess();
  sub_226158CC0(&v33, 0x6570795470614DLL, 0xE700000000000000);
  swift_endAccess();

  return v10;
}

id sub_22616E2D4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v1 = sub_22616F7F8();
  v2 = sub_22616F7F8();
  [v0 setValue:v1 forKey:v2];

  return v0;
}

id sub_22616E364()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_22616F798();

  v7[0] = 0;
  v2 = [v0 initWithDictionary:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_22616F658();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_22616E44C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D190, &qword_2261713E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226170920;
  strcpy((inited + 32), "transportType");
  *(inited + 46) = -4864;
  v3 = objc_opt_self();
  v4 = [v3 featureValueWithInt64_];
  v5 = sub_22616E8B0();
  *(inited + 72) = v5;
  *(inited + 48) = v4;
  sub_226159F60(inited);
  swift_setDeallocating();
  sub_22616E8FC(inited + 32);
  v6 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v30 = sub_22616E364();
  v7 = sub_22616F7F8();
  v8 = [a1 featureValueForName_];

  if (v8)
  {
    [v8 doubleValue];
    v10 = v9;
    v11 = sub_22616F7F8();
    v12 = [a1 featureValueForName_];

    if (!v12)
    {
LABEL_9:

      return;
    }

    [v12 doubleValue];
    v14 = v13;
    v15 = sub_22616F7F8();
    v16 = [a1 featureValueForName_];

    if (!v16)
    {

      return;
    }

    [v16 doubleValue];
    v18 = v17;
    v19 = sub_22616F7F8();
    v20 = [a1 featureValueForName_];

    if (v20)
    {
      [v20 doubleValue];
      v22 = v21;
      v23 = sub_22616F7F8();
      v24 = [a1 featureValueForName_];

      if (!v24)
      {
        v25 = 0;
LABEL_14:
        v26 = [objc_opt_self() idealTransportTypeForOrigin:v25 destination:v10 mapType:{v14, v18, v22}];
        v27 = swift_initStackObject();
        *(v27 + 16) = xmmword_226170920;
        *(v27 + 32) = 0xD000000000000016;
        *(v27 + 40) = 0x8000000226171CA0;
        v28 = [v3 featureValueWithInt64_];
        *(v27 + 72) = v5;
        *(v27 + 48) = v28;
        sub_226159F60(v27);
        swift_setDeallocating();
        sub_22616E8FC(v27 + 32);
        v29 = objc_allocWithZone(MEMORY[0x277CBFED0]);
        sub_22616E364();

        return;
      }

      v25 = [v24 int64Value];

      if (v25 >= 0xFFFFFFFF80000000)
      {
        if (v25 > 0x7FFFFFFF)
        {
          __break(1u);
          goto LABEL_9;
        }

        goto LABEL_14;
      }

      __break(1u);
    }

    else
    {
    }
  }
}

unint64_t sub_22616E8B0()
{
  result = qword_28136C398;
  if (!qword_28136C398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28136C398);
  }

  return result;
}

uint64_t sub_22616E8FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D058, &unk_2261713F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AutocompleteRankerRequest.serializedRequest.getter()
{
  v1 = *v0;
  sub_22616E998(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_22616E998(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t AutocompleteRankerRequest.init(serializedRequest:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22616EA70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22616EAC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t dispatch thunk of AutocompleteRanker.rank(requestData:manager:signals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 16);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_2261687D0;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t MapsIntelligenceClientSignalType.hashValue.getter()
{
  v1 = *v0;
  sub_22616FCB8();
  MEMORY[0x22AA77650](v1);
  return sub_22616FCD8();
}

uint64_t sub_22616ED18()
{
  v1 = *v0;
  sub_22616FCB8();
  MEMORY[0x22AA77650](v1);
  return sub_22616FCD8();
}

uint64_t sub_22616ED8C()
{
  v1 = *v0;
  sub_22616FCB8();
  MEMORY[0x22AA77650](v1);
  return sub_22616FCD8();
}

uint64_t getEnumTagSinglePayload for MapsIntelligenceClientSignalType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MapsIntelligenceClientSignalType(uint64_t result, unsigned int a2, unsigned int a3)
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

MapsIntelligenceClientInterface::ModuleType_optional __swiftcall ModuleType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22616FC28();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t ModuleType.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000017;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

unint64_t sub_22616F0E4()
{
  result = qword_28136C3B0;
  if (!qword_28136C3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136C3B0);
  }

  return result;
}

uint64_t sub_22616F138()
{
  v1 = *v0;
  sub_22616FCB8();
  sub_22616F8B8();

  return sub_22616FCD8();
}

uint64_t sub_22616F1B8()
{
  *v0;
  sub_22616F8B8();
}

uint64_t sub_22616F224()
{
  v1 = *v0;
  sub_22616FCB8();
  sub_22616F8B8();

  return sub_22616FCD8();
}

uint64_t sub_22616F2A0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22616FC28();

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

void sub_22616F300(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000017;
  }

  else
  {
    v2 = 0xD000000000000013;
  }

  if (*v1)
  {
    v3 = "autocompleteRanking";
  }

  else
  {
    v3 = "lligenceHandWrittenTMPModel";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_22616F344()
{
  result = qword_27D78D198;
  if (!qword_27D78D198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D78D1A0, &qword_226171738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78D198);
  }

  return result;
}

uint64_t sub_22616F3B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000017;
  }

  else
  {
    v4 = 0xD000000000000013;
  }

  if (v3)
  {
    v5 = "lligenceHandWrittenTMPModel";
  }

  else
  {
    v5 = "autocompleteRanking";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000017;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (*a2)
  {
    v8 = "autocompleteRanking";
  }

  else
  {
    v8 = "lligenceHandWrittenTMPModel";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_22616FC68();
  }

  return v10 & 1;
}

uint64_t getEnumTagSinglePayload for ModuleType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ModuleType(uint64_t result, unsigned int a2, unsigned int a3)
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