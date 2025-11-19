char *ControlSessionViewModel.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  sub_1D92933A0(&v0[OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__cachedTemplate], &qword_1ECAFC4F0, &qword_1D932CC18);
  v4 = *&v0[OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration + 32];

  v5 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__colorScheme;
  v6 = sub_1D9326D04();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__rawEnvironmentValues;
  v8 = sub_1D9327034();
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  v9 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__logger;
  v10 = sub_1D9326BE4();
  (*(*(v10 - 8) + 8))(&v0[v9], v10);
  v11 = *&v0[OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__logIdentifier + 8];

  v12 = *&v0[OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__archiveEntry];

  v13 = *&v0[OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__subscriptions];

  return v0;
}

uint64_t ControlSessionViewModel.__deallocating_deinit()
{
  ControlSessionViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for ControlSessionViewModel()
{
  result = qword_1EDE3C7E0;
  if (!qword_1EDE3C7E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D92C926C()
{
  sub_1D92C95D4();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = sub_1D9326D04();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = sub_1D9327034();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_1D9326BE4();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1D92C95D4()
{
  if (!qword_1EDE3BC80)
  {
    sub_1D9327B44();
    v0 = sub_1D9328374();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE3BC80);
    }
  }
}

uint64_t sub_1D92C962C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4F0, &qword_1D932CC18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D92C969C()
{
  result = qword_1EDE3BC68;
  if (!qword_1EDE3BC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BC68);
  }

  return result;
}

uint64_t sub_1D92C96F0(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1D92C9740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t *a6)
{
  v7 = v6;
  v123 = a6;
  v98 = a4;
  v107 = a3;
  v99 = a2;
  v124 = a1;
  v120 = sub_1D9326A44();
  v118 = *(v120 - 8);
  v9 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v116 = v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1D9326A64();
  v117 = *(v119 - 8);
  v11 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v115 = v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC528, &qword_1D932CEF0);
  v114 = *(v113 - 8);
  v13 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v110 = v90 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC530, &qword_1D932CEF8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v101 = v90 - v17;
  v104 = sub_1D9328354();
  v103 = *(v104 - 8);
  v18 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v100 = v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC538, &unk_1D932CF00);
  v106 = *(v105 - 8);
  v20 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v102 = v90 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC540, &qword_1D932E450);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v121 = v90 - v24;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC548, &qword_1D932CF10);
  v93 = *(v92 - 8);
  v25 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v91 = v90 - v26;
  v27 = sub_1D9327034();
  v108 = v27;
  v109 = *(v27 - 8);
  v28 = v109;
  v29 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v122 = v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a5;
  LODWORD(v97) = a5[1];
  v32 = *(a5 + 1);
  v33 = a5[16];
  v34 = *(a5 + 3);
  v35 = *(a5 + 4);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC830, &qword_1D932CC10);
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v39 = sub_1D9326C44();
  *(v7 + 3) = 0;
  *(v7 + 4) = 0;
  *(v7 + 2) = v39;
  v40 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__cachedTemplate;
  v41 = sub_1D9327B44();
  (*(*(v41 - 8) + 56))(&v7[v40], 1, 1, v41);
  v7[OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__isPasscodeLocked] = 1;
  *&v7[OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__subscriptions] = MEMORY[0x1E69E7CD0];
  *&v7[OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__archiveEntry] = v98;
  v42 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__logger;
  v111 = sub_1D9326BE4();
  v112 = *(v111 - 8);
  (*(v112 + 16))(&v7[v42], v124, v111);
  v43 = &v7[OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__logIdentifier];
  v44 = v107;
  *v43 = v99;
  *(v43 + 1) = v44;
  v45 = &v7[OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__configuration];
  *v45 = v31;
  v45[1] = v97;
  *(v45 + 1) = v32;
  v45[16] = v33;
  *(v45 + 3) = v34;
  *(v45 + 4) = v35;
  v46 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__colorScheme;
  v47 = *MEMORY[0x1E697DBA8];
  v48 = sub_1D9326D04();
  (*(*(v48 - 8) + 104))(&v7[v46], v47, v48);

  v49 = v122;
  sub_1D9327024();
  v107 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__rawEnvironmentValues;
  (*(v28 + 32))(&v7[OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__rawEnvironmentValues], v49, v27);
  v50 = v123[4];
  __swift_project_boxed_opaque_existential_1(v123, v123[3]);
  v127 = sub_1D9326AF4();
  v94 = sub_1D9296448(0, &qword_1EDE3BC10, 0x1E69E9610);
  v51 = sub_1D93282A4();
  v129 = v51;
  v98 = sub_1D9328284();
  v52 = *(v98 - 8);
  v97 = *(v52 + 56);
  v99 = v52 + 56;
  v53 = v121;
  v97(v121, 1, 1, v98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC550, &qword_1D932CF18);
  v90[1] = MEMORY[0x1E695BED8];
  sub_1D9290D60(&qword_1EDE3BF38, &qword_1ECAFC550, &qword_1D932CF18);
  v95 = sub_1D92CA7C0(&qword_1EDE3BC18, &qword_1EDE3BC10, 0x1E69E9610);
  v54 = v91;
  sub_1D9326C74();
  sub_1D92933A0(v53, &qword_1ECAFC540, &qword_1D932E450);

  swift_allocObject();
  swift_weakInit();
  v96 = MEMORY[0x1E695BE98];
  sub_1D9290D60(&qword_1EDE3BF48, &qword_1ECAFC548, &qword_1D932CF10);

  v55 = v92;
  sub_1D9326C94();

  (*(v93 + 8))(v54, v55);
  v92 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__subscriptions;
  swift_beginAccess();
  sub_1D9326C04();
  swift_endAccess();

  v93 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__archiveEntry;
  v56 = *&v7[OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__archiveEntry];
  v57 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry;
  swift_beginAccess();
  v58 = *(v56 + v57);

  sub_1D9327684();

  __swift_project_boxed_opaque_existential_1(&v127, v128);
  v90[0] = sub_1D9327894();
  v126 = v90[0];
  v59 = v100;
  sub_1D9328344();
  v60 = [objc_opt_self() mainRunLoop];
  v125 = v60;
  v61 = sub_1D9328334();
  v62 = v101;
  (*(*(v61 - 8) + 56))(v101, 1, 1, v61);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC558, &qword_1D932CF20);
  sub_1D9296448(0, &qword_1EDE3BBE8, 0x1E695DFD0);
  sub_1D9290D60(&qword_1EDE3BF20, &qword_1ECAFC558, &qword_1D932CF20);
  sub_1D92CA7C0(&qword_1EDE3BBF0, &qword_1EDE3BBE8, 0x1E695DFD0);
  v63 = v102;
  sub_1D9326C84();
  sub_1D92933A0(v62, &qword_1ECAFC530, &qword_1D932CEF8);

  (*(v103 + 8))(v59, v104);

  __swift_destroy_boxed_opaque_existential_1Tm(&v127);
  v64 = swift_allocObject();
  swift_weakInit();
  v65 = swift_allocObject();
  *(v65 + 16) = sub_1D92CA80C;
  *(v65 + 24) = v64;
  sub_1D9290D60(&qword_1EDE3BF50, &qword_1ECAFC538, &unk_1D932CF00);
  v66 = v105;
  sub_1D9326C94();

  (*(v106 + 8))(v63, v66);
  swift_beginAccess();
  sub_1D9326C04();
  swift_endAccess();

  v67 = v93;
  v68 = *&v7[v93];
  v69 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry;
  swift_beginAccess();
  v70 = *(v68 + v69);

  v71 = sub_1D9327694();

  v127 = v71;
  v72 = sub_1D93282A4();
  v125 = v72;
  v73 = v121;
  v97(v121, 1, 1, v98);
  v74 = v110;
  sub_1D9326C74();
  sub_1D92933A0(v73, &qword_1ECAFC540, &qword_1D932E450);

  v75 = swift_allocObject();
  swift_weakInit();

  v76 = swift_allocObject();
  *(v76 + 16) = sub_1D92CA81C;
  *(v76 + 24) = v75;
  sub_1D9290D60(&qword_1EDE3BF40, &qword_1ECAFC528, &qword_1D932CEF0);
  v77 = v113;
  sub_1D9326C94();

  (*(v114 + 8))(v74, v77);
  swift_beginAccess();
  sub_1D9326C04();
  swift_endAccess();

  v78 = *&v7[v67];
  v79 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry;
  swift_beginAccess();
  v80 = *(v78 + v79);

  sub_1D9327684();

  __swift_project_boxed_opaque_existential_1(&v127, v128);
  v81 = v122;
  sub_1D9327884();
  v82 = v107;
  swift_beginAccess();
  (*(v109 + 40))(&v7[v82], v81, v108);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(&v127);
  v83 = v123;
  v84 = v123[4];
  __swift_project_boxed_opaque_existential_1(v123, v123[3]);
  v85 = v115;
  sub_1D9326AE4();
  v86 = v118;
  v87 = v116;
  v88 = v120;
  (*(v118 + 104))(v116, *MEMORY[0x1E6994040], v120);
  LOBYTE(v82) = sub_1D9326A54();
  (*(v86 + 8))(v87, v88);
  (*(v117 + 8))(v85, v119);
  v7[OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__isPasscodeLocked] = v82 & 1;
  sub_1D92C7C70();
  sub_1D92C80B8(0x696C616974696E49, 0xEE006E6F6974617ALL);
  (*(v112 + 8))(v124, v111);
  __swift_destroy_boxed_opaque_existential_1Tm(v83);
  return v7;
}

uint64_t sub_1D92CA7C0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D9296448(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D92CA874()
{
  v0 = sub_1D9326BE4();
  __swift_allocate_value_buffer(v0, qword_1EDE40088);
  __swift_project_value_buffer(v0, qword_1EDE40088);
  return sub_1D9326BD4();
}

uint64_t sub_1D92CA920(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1D9326BE4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1D9326BD4();
}

uint64_t sub_1D92CA998(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = sub_1D9328634();
  if (v7)
  {
    v8 = v7;
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v2 + 32))(v9, v5, a1);
  }

  v10 = sub_1D93267C4();

  v11 = [v10 debugDescription];
  v12 = sub_1D9327F84();

  return v12;
}

uint64_t CHUISControlInstanceConfiguration.preferredColorScheme.getter()
{
  if (*(v0 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 16))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 8);
  }
}

id CHUISControlInstanceConfiguration.init()()
{
  v1 = v0 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  v3.super_class = CHUISControlInstanceConfiguration;
  return objc_msgSendSuper2(&v3, sel_init);
}

id CHUISControlInstanceConfiguration.copy(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for CHUISControlInstanceConfiguration(a1);
  *a2 = v4;

  return v4;
}

uint64_t CHUISControlInstanceConfiguration.mutableCopy(with:)@<X0>(char **a1@<X8>)
{
  v3 = [objc_allocWithZone(CHUISMutableControlInstanceConfiguration) init];
  v4 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration);
  v5 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 1);
  v6 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 8);
  v7 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 16);
  v8 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 24);
  v9 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 32);
  v10 = &v3[OBJC_IVAR___CHUISControlInstanceConfiguration__configuration];
  v11 = *&v3[OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 32];
  *v10 = v4;
  v10[1] = v5;
  *(v10 + 1) = v6;
  v10[16] = v7;
  *(v10 + 3) = v8;
  *(v10 + 4) = v9;
  v12 = v3;

  result = type metadata accessor for CHUISMutableControlInstanceConfiguration(v13);
  a1[3] = result;
  *a1 = v12;
  return result;
}

id _sSo33CHUISControlInstanceConfigurationC16ChronoUIServicesEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t CHUISControlInstanceConfiguration.isEqual(_:)(uint64_t a1)
{
  v2 = sub_1D92CAF48(a1, v20);
  if (!v23)
  {
    sub_1D92CAFB8(v20);
    goto LABEL_5;
  }

  type metadata accessor for CHUISControlInstanceConfiguration(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v14 = 0;
    return v14 & 1;
  }

  v3 = v16[0];
  v4 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration);
  v5 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 1);
  v6 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 8);
  v7 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 16);
  v8 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 24);
  v9 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 32);
  v20[0] = v4;
  v20[1] = v5;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v24 = v9;
  v10 = *(v16[0] + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 1);
  v11 = *(v16[0] + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 8);
  LOBYTE(v6) = *(v16[0] + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 16);
  v12 = *(v16[0] + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 24);
  v13 = *(v16[0] + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 32);
  LOBYTE(v16[0]) = *(v16[0] + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration);
  BYTE1(v16[0]) = v10;
  v16[1] = v11;
  v17 = v6;
  v18 = v12;
  v19 = v13;
  v14 = _s16ChronoUIServices28ControlInstanceConfigurationV2eeoiySbAC_ACtFZ_0(v20, v16);

  return v14 & 1;
}

uint64_t sub_1D92CAF48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC580, &qword_1D932CF48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D92CAFB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC580, &qword_1D932CF48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CHUISControlInstanceConfiguration.hash.getter()
{
  v3 = *(v0 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration);
  v4 = *(v0 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 1);
  v5 = *(v0 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 8);
  v6 = *(v0 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 16);
  v7 = *(v0 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 24);
  v8 = *(v0 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 32);
  sub_1D9328724();

  ControlInstanceConfiguration.hash(into:)();
  v1 = sub_1D9328764();

  return v1;
}

id CHUISControlInstanceConfiguration.description.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E698E680]) initWithObject_];
  if (!v1)
  {
    return 0xD00000000000002BLL;
  }

  v2 = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1D92CB9A4;
  *(v4 + 24) = v3;
  v11[4] = sub_1D92CB9AC;
  v11[5] = v4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D92CB5E4;
  v11[3] = &block_descriptor;
  v5 = _Block_copy(v11);
  v6 = v0;

  v7 = v2;

  [v7 appendProem:0 block:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    result = [v7 build];
    if (result)
    {
      v9 = result;
      v10 = sub_1D9327F84();

      return v10;
    }
  }

  __break(1u);
  return result;
}

void sub_1D92CB414(void *a1, id a2)
{
  v4 = [a2 canAppearInSecureEnvironment];
  v5 = sub_1D9327F74();

  v6 = [a2 supportsLowLuminance];
  v7 = sub_1D9327F74();

  [a2 preferredColorScheme];
  type metadata accessor for CHSColorScheme(0);
  v8 = sub_1D9328684();
  v9 = sub_1D9327F74();

  swift_unknownObjectRelease();
  v10 = [a2 launchOrigin];
  v11 = sub_1D9327F74();
  [a1 appendString:v10 withName:v11];
}

uint64_t CHUISMutableControlInstanceConfiguration.copy(with:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration);
  v4 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 1);
  v5 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 8);
  v6 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 16);
  v8 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 24);
  v7 = *(v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 32);
  v9 = objc_allocWithZone(CHUISControlInstanceConfiguration);

  v10 = [v9 init];
  v11 = &v10[OBJC_IVAR___CHUISControlInstanceConfiguration__configuration];
  v12 = *&v10[OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 32];
  *v11 = v3;
  v11[1] = v4;
  *(v11 + 1) = v5;
  v11[16] = v6;
  *(v11 + 3) = v8;
  *(v11 + 4) = v7;

  result = type metadata accessor for CHUISControlInstanceConfiguration(v13);
  a1[3] = result;
  *a1 = v10;
  return result;
}

uint64_t CHUISMutableControlInstanceConfiguration.preferredColorScheme.setter(uint64_t result)
{
  v2 = v1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration;
  *(v2 + 8) = result;
  *(v2 + 16) = result == 0;
  return result;
}

id sub_1D92CB87C(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 32))
  {
    v1 = *(a1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 24);
    v2 = *(a1 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 32);

    v3 = sub_1D9327F74();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t _sSo33CHUISControlInstanceConfigurationC16ChronoUIServicesE12launchOriginSSSgvg_0()
{
  v1 = *(v0 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 24);
  v2 = *(v0 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 32);

  return v1;
}

uint64_t CHUISMutableControlInstanceConfiguration.launchOrigin.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration;
  v4 = *(v2 + OBJC_IVAR___CHUISControlInstanceConfiguration__configuration + 32);
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
}

uint64_t sub_1D92CB9AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1D92CBA28()
{
  result = sub_1D9326814();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D92CBAD0()
{
  result = type metadata accessor for RemoteWidgetLaunchRequest.LaunchType(319);
  if (v1 <= 0x3F)
  {
    result = sub_1D9296448(319, &qword_1EDE3B220, 0x1E6994370);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D92CBB7C(uint64_t a1)
{
  v2 = sub_1D92CDB60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D92CBBB8(uint64_t a1)
{
  v2 = sub_1D92CDB60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D92CBC08()
{
  v1 = *v0;
  sub_1D9328724();
  MEMORY[0x1DA72ECE0](v1);
  return sub_1D9328764();
}

uint64_t sub_1D92CBC7C()
{
  v1 = *v0;
  sub_1D9328724();
  MEMORY[0x1DA72ECE0](v1);
  return sub_1D9328764();
}

uint64_t sub_1D92CBCC0(void *a1)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC628, &qword_1D932D0D8);
  v50 = *(v52 - 8);
  v2 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v48 = &v41 - v3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC630, &qword_1D932D0E0);
  v44 = *(v46 - 8);
  v4 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v42 = &v41 - v5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC638, &qword_1D932D0E8);
  v49 = *(v51 - 8);
  v6 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v47 = &v41 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC640, &qword_1D932D0F0);
  v43 = *(v45 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v10 = &v41 - v9;
  v11 = sub_1D9326814();
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = *(v53 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v41 - v16;
  v18 = type metadata accessor for RemoteWidgetLaunchRequest.LaunchType(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC648, &qword_1D932D0F8);
  v56 = *(v22 - 8);
  v57 = v22;
  v23 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v41 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D92CDA54();
  sub_1D9328784();
  sub_1D92CDCA4(v55, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v28 = v53;
      v35 = v21;
      v30 = v54;
      (*(v53 + 32))(v15, v35, v54);
      v60 = 1;
      sub_1D92CDBB4();
      v36 = v47;
      v31 = v57;
      sub_1D93285E4();
      sub_1D92CDC08(&qword_1ECAFC650, MEMORY[0x1E6968FB0]);
      v37 = v51;
      v38 = v58;
      sub_1D9328604();
      if (!v38)
      {
        (*(v49 + 8))(v36, v37);
        (*(v28 + 8))(v15, v30);
        return (*(v56 + 8))(v25, v31);
      }

      (*(v49 + 8))(v36, v37);
      v17 = v15;
    }

    else
    {
      v28 = v53;
      v29 = v21;
      v30 = v54;
      (*(v53 + 32))(v17, v29, v54);
      v59 = 0;
      sub_1D92CDC50();
      v31 = v57;
      sub_1D93285E4();
      sub_1D92CDC08(&qword_1ECAFC650, MEMORY[0x1E6968FB0]);
      v32 = v45;
      sub_1D9328604();
      (*(v43 + 8))(v10, v32);
    }

    (*(v28 + 8))(v17, v30);
    return (*(v56 + 8))(v25, v31);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v61 = 2;
    sub_1D92CDB60();
    v33 = v42;
    v34 = v57;
    sub_1D93285E4();
    (*(v44 + 8))(v33, v46);
  }

  else
  {
    v62 = 3;
    sub_1D92CDAA8();
    v40 = v48;
    v34 = v57;
    sub_1D93285E4();
    (*(v50 + 8))(v40, v52);
  }

  return (*(v56 + 8))(v25, v34);
}

uint64_t sub_1D92CC3AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC5C8, &qword_1D932D0A8);
  v61 = *(v65 - 8);
  v3 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v72 = &v55 - v4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC5D0, &qword_1D932D0B0);
  v60 = *(v62 - 8);
  v5 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v71 = &v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC5D8, &qword_1D932D0B8);
  v63 = *(v7 - 8);
  v64 = v7;
  v8 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v55 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC5E0, &qword_1D932D0C0);
  v59 = *(v70 - 8);
  v10 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v66 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC5E8, &qword_1D932D0C8);
  v69 = *(v12 - 8);
  v13 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v55 - v14;
  v16 = type metadata accessor for RemoteWidgetLaunchRequest.LaunchType(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v55 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v55 - v24;
  v27 = a1[3];
  v26 = a1[4];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1D92CDA54();
  v28 = v73;
  sub_1D9328774();
  if (!v28)
  {
    v56 = v23;
    v57 = v20;
    v30 = v70;
    v29 = v71;
    v31 = v72;
    v58 = v25;
    v73 = v16;
    v32 = v69;
    v33 = sub_1D93285D4();
    v34 = v33;
    v35 = *(v33 + 16);
    if (!v35 || ((v36 = *(v33 + 32), v35 == 1) ? (v37 = v36 == 4) : (v37 = 1), v37))
    {
      v38 = v15;
      v39 = v12;
      v40 = sub_1D9328484();
      swift_allocError();
      v42 = v41;
      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC5F8, &qword_1D932D0D0) + 48);
      *v42 = v73;
      sub_1D93285A4();
      sub_1D9328474();
      (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
      swift_willThrow();
      (*(v32 + 8))(v38, v39);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v33 + 32) > 1u)
      {
        if (v36 == 2)
        {
          v77 = 2;
          sub_1D92CDB60();
          sub_1D9328594();
          v49 = v68;
          (*(v60 + 8))(v29, v62);
        }

        else
        {
          v78 = 3;
          sub_1D92CDAA8();
          sub_1D9328594();
          v49 = v68;
          (*(v61 + 8))(v31, v65);
        }

        (*(v32 + 8))(v15, v12);
        swift_unknownObjectRelease();
        v54 = v58;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        if (*(v33 + 32))
        {
          v76 = 1;
          sub_1D92CDBB4();
          v50 = v67;
          sub_1D9328594();
          sub_1D9326814();
          v72 = v34;
          sub_1D92CDC08(&qword_1ECAFC618, MEMORY[0x1E6968FB0]);
          v52 = v57;
          v53 = v64;
          sub_1D93285C4();
          (*(v63 + 8))(v50, v53);
          (*(v32 + 8))(v15, v12);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v48 = v52;
        }

        else
        {
          v75 = 0;
          sub_1D92CDC50();
          v44 = v66;
          sub_1D9328594();
          sub_1D9326814();
          v45 = v44;
          v46 = v15;
          v72 = v12;
          sub_1D92CDC08(&qword_1ECAFC618, MEMORY[0x1E6968FB0]);
          v47 = v56;
          sub_1D93285C4();
          (*(v59 + 8))(v45, v30);
          (*(v32 + 8))(v46, v72);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v48 = v47;
        }

        v54 = v58;
        sub_1D92CDAFC(v48, v58);
        v49 = v68;
      }

      sub_1D92CDAFC(v54, v49);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v74);
}

uint64_t sub_1D92CCC3C()
{
  v1 = 7107189;
  v2 = 0x7974697669746361;
  if (*v0 != 2)
  {
    v2 = 1701736302;
  }

  if (*v0)
  {
    v1 = 0x64656C7469746E65;
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

uint64_t sub_1D92CCCB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D92CEAC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D92CCCE4(uint64_t a1)
{
  v2 = sub_1D92CDA54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D92CCD20(uint64_t a1)
{
  v2 = sub_1D92CDA54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D92CCD70(uint64_t a1)
{
  v2 = sub_1D92CDBB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D92CCDAC(uint64_t a1)
{
  v2 = sub_1D92CDBB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D92CCDE8(uint64_t a1)
{
  v2 = sub_1D92CDAA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D92CCE24(uint64_t a1)
{
  v2 = sub_1D92CDAA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D92CCE60()
{
  sub_1D9328724();
  MEMORY[0x1DA72ECE0](0);
  return sub_1D9328764();
}

uint64_t sub_1D92CCEA4()
{
  sub_1D9328724();
  MEMORY[0x1DA72ECE0](0);
  return sub_1D9328764();
}

uint64_t sub_1D92CCEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9328654();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D92CCF64(uint64_t a1)
{
  v2 = sub_1D92CDC50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D92CCFA0(uint64_t a1)
{
  v2 = sub_1D92CDC50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D92CD010(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x746567646977;
  }

  else
  {
    v4 = 0x795468636E75616CLL;
  }

  if (v3)
  {
    v5 = 0xEA00000000006570;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x746567646977;
  }

  else
  {
    v6 = 0x795468636E75616CLL;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xEA00000000006570;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D9328654();
  }

  return v9 & 1;
}

uint64_t sub_1D92CD0B8()
{
  v1 = *v0;
  sub_1D9328724();
  sub_1D9327FB4();

  return sub_1D9328764();
}

uint64_t sub_1D92CD13C()
{
  *v0;
  sub_1D9327FB4();
}

uint64_t sub_1D92CD1AC()
{
  v1 = *v0;
  sub_1D9328724();
  sub_1D9327FB4();

  return sub_1D9328764();
}

uint64_t sub_1D92CD22C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D9328584();

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

void sub_1D92CD28C(uint64_t *a1@<X8>)
{
  v2 = 0x795468636E75616CLL;
  if (*v1)
  {
    v2 = 0x746567646977;
  }

  v3 = 0xEA00000000006570;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D92CD2CC()
{
  if (*v0)
  {
    result = 0x746567646977;
  }

  else
  {
    result = 0x795468636E75616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1D92CD308@<X0>(char *a1@<X8>)
{
  v2 = sub_1D9328584();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D92CD378(uint64_t a1)
{
  v2 = sub_1D92CD9AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D92CD3B4(uint64_t a1)
{
  v2 = sub_1D92CD9AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D92CD3F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for RemoteWidgetLaunchRequest.LaunchType(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC660, &qword_1D932D108);
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D92CD9AC();
  sub_1D9328774();
  if (!v2)
  {
    v14 = v21;
    v13 = v22;
    LOBYTE(v23) = 0;
    sub_1D92CDC08(&qword_1ECAFC668, type metadata accessor for RemoteWidgetLaunchRequest.LaunchType);
    sub_1D93285C4();
    v25 = 1;
    sub_1D92CE114();
    sub_1D93285C4();
    v17 = v23;
    v16 = v24;
    sub_1D9296448(0, &qword_1EDE3B220, 0x1E6994370);
    v20 = v16;
    v18 = sub_1D9328254();
    (*(v14 + 8))(v11, v8);
    sub_1D92C5F98(v17, v20);
    sub_1D92CDAFC(v7, v13);
    *(v13 + *(type metadata accessor for RemoteWidgetLaunchRequest(0) + 20)) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D92CD6E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC5A8, &qword_1D932D0A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D92CD9AC();
  sub_1D9328784();
  LOBYTE(v17) = 0;
  type metadata accessor for RemoteWidgetLaunchRequest.LaunchType(0);
  sub_1D92CDC08(&qword_1ECAFC5B8, type metadata accessor for RemoteWidgetLaunchRequest.LaunchType);
  sub_1D9328604();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = *(v3 + *(type metadata accessor for RemoteWidgetLaunchRequest(0) + 20));
  sub_1D9296448(0, &qword_1EDE3B220, 0x1E6994370);
  v17 = sub_1D9328244();
  v18 = v12;
  v16[15] = 1;
  v13 = v17;
  v14 = v12;
  sub_1D92CDA00();
  sub_1D9328604();
  (*(v6 + 8))(v9, v5);
  return sub_1D92C5F98(v13, v14);
}

uint64_t sub_1D92CD938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1D92CDD08(a1, a2) & 1) == 0)
  {
    return 0;
  }

  sub_1D9296448(0, &qword_1ECAFC678, 0x1E69E58C0);
  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  return sub_1D9328314() & 1;
}

unint64_t sub_1D92CD9AC()
{
  result = qword_1ECAFC5B0;
  if (!qword_1ECAFC5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC5B0);
  }

  return result;
}

unint64_t sub_1D92CDA00()
{
  result = qword_1ECAFC5C0;
  if (!qword_1ECAFC5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC5C0);
  }

  return result;
}

unint64_t sub_1D92CDA54()
{
  result = qword_1ECAFC5F0;
  if (!qword_1ECAFC5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC5F0);
  }

  return result;
}

unint64_t sub_1D92CDAA8()
{
  result = qword_1ECAFC600;
  if (!qword_1ECAFC600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC600);
  }

  return result;
}

uint64_t sub_1D92CDAFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteWidgetLaunchRequest.LaunchType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D92CDB60()
{
  result = qword_1ECAFC608;
  if (!qword_1ECAFC608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC608);
  }

  return result;
}

unint64_t sub_1D92CDBB4()
{
  result = qword_1ECAFC610;
  if (!qword_1ECAFC610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC610);
  }

  return result;
}

uint64_t sub_1D92CDC08(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D92CDC50()
{
  result = qword_1ECAFC620;
  if (!qword_1ECAFC620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC620);
  }

  return result;
}

uint64_t sub_1D92CDCA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteWidgetLaunchRequest.LaunchType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D92CDD08(uint64_t a1, uint64_t a2)
{
  v33 = sub_1D9326814();
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v33);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v32 - v9;
  v11 = type metadata accessor for RemoteWidgetLaunchRequest.LaunchType(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC658, &qword_1D932D100);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v32 - v21;
  v23 = *(v20 + 56);
  sub_1D92CDCA4(a1, &v32 - v21);
  sub_1D92CDCA4(a2, &v22[v23]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D92CDCA4(v22, v15);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_10;
      }

      v25 = v33;
      (*(v4 + 32))(v8, &v22[v23], v33);
      v26 = sub_1D93267F4();
      v27 = *(v4 + 8);
      v27(v8, v25);
      v28 = v15;
      v29 = v25;
    }

    else
    {
      sub_1D92CDCA4(v22, v17);
      if (swift_getEnumCaseMultiPayload())
      {
        v15 = v17;
LABEL_10:
        (*(v4 + 8))(v15, v33);
LABEL_13:
        sub_1D92CE050(v22);
        v26 = 0;
        return v26 & 1;
      }

      v30 = v33;
      (*(v4 + 32))(v10, &v22[v23], v33);
      v26 = sub_1D93267F4();
      v27 = *(v4 + 8);
      v27(v10, v30);
      v28 = v17;
      v29 = v30;
    }

    v27(v28, v29);
    sub_1D92CE0B8(v22);
    return v26 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_13;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_13;
  }

  sub_1D92CE0B8(v22);
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_1D92CE050(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC658, &qword_1D932D100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D92CE0B8(uint64_t a1)
{
  v2 = type metadata accessor for RemoteWidgetLaunchRequest.LaunchType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D92CE114()
{
  result = qword_1ECAFC670;
  if (!qword_1ECAFC670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC670);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteWidgetLaunchRequest.LaunchType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RemoteWidgetLaunchRequest.LaunchType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ControlInstanceFactory(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ControlInstanceFactory(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for RemoteWidgetLaunchRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RemoteWidgetLaunchRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D92CE54C()
{
  result = qword_1ECAFC680;
  if (!qword_1ECAFC680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC680);
  }

  return result;
}

unint64_t sub_1D92CE5A4()
{
  result = qword_1ECAFC688;
  if (!qword_1ECAFC688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC688);
  }

  return result;
}

unint64_t sub_1D92CE5FC()
{
  result = qword_1ECAFC690;
  if (!qword_1ECAFC690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC690);
  }

  return result;
}

unint64_t sub_1D92CE654()
{
  result = qword_1ECAFC698;
  if (!qword_1ECAFC698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC698);
  }

  return result;
}

unint64_t sub_1D92CE6AC()
{
  result = qword_1ECAFC6A0;
  if (!qword_1ECAFC6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC6A0);
  }

  return result;
}

unint64_t sub_1D92CE704()
{
  result = qword_1ECAFC6A8;
  if (!qword_1ECAFC6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC6A8);
  }

  return result;
}

unint64_t sub_1D92CE75C()
{
  result = qword_1ECAFC6B0;
  if (!qword_1ECAFC6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC6B0);
  }

  return result;
}

unint64_t sub_1D92CE7B4()
{
  result = qword_1ECAFC6B8;
  if (!qword_1ECAFC6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC6B8);
  }

  return result;
}

unint64_t sub_1D92CE80C()
{
  result = qword_1ECAFC6C0;
  if (!qword_1ECAFC6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC6C0);
  }

  return result;
}

unint64_t sub_1D92CE864()
{
  result = qword_1ECAFC6C8;
  if (!qword_1ECAFC6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC6C8);
  }

  return result;
}

unint64_t sub_1D92CE8BC()
{
  result = qword_1ECAFC6D0;
  if (!qword_1ECAFC6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC6D0);
  }

  return result;
}

unint64_t sub_1D92CE914()
{
  result = qword_1ECAFC6D8;
  if (!qword_1ECAFC6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC6D8);
  }

  return result;
}

unint64_t sub_1D92CE96C()
{
  result = qword_1ECAFC6E0;
  if (!qword_1ECAFC6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC6E0);
  }

  return result;
}

unint64_t sub_1D92CE9C4()
{
  result = qword_1ECAFC6E8;
  if (!qword_1ECAFC6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC6E8);
  }

  return result;
}

unint64_t sub_1D92CEA1C()
{
  result = qword_1ECAFC6F0;
  if (!qword_1ECAFC6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC6F0);
  }

  return result;
}

unint64_t sub_1D92CEA74()
{
  result = qword_1ECAFC6F8;
  if (!qword_1ECAFC6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC6F8);
  }

  return result;
}

uint64_t sub_1D92CEAC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D9328654() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C7469746E65 && a2 == 0xEB000000004C5255 || (sub_1D9328654() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xE800000000000000 || (sub_1D9328654() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9328654();

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

uint64_t WidgetIdentity.hostID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetIdentity() + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC700, &qword_1D932D740);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WidgetIdentity()
{
  result = qword_1ECAFC730;
  if (!qword_1ECAFC730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WidgetIdentity.hostID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetIdentity() + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC700, &qword_1D932D740);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetIdentity.configurationID.getter()
{
  v1 = (v0 + *(type metadata accessor for WidgetIdentity() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t WidgetIdentity.configurationID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for WidgetIdentity() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t WidgetIdentity.contentType.setter(uint64_t a1)
{
  result = type metadata accessor for WidgetIdentity();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t WidgetIdentity.entryKey.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC708, &qword_1D932D748);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v13 - v3;
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(type metadata accessor for WidgetIdentity() + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC700, &qword_1D932D740);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v4, v0 + v7, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  v10 = v5;
  v11 = v6;
  return sub_1D9327724();
}

uint64_t WidgetIdentity.init(widget:metrics:hostID:configurationID:contentType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = type metadata accessor for WidgetIdentity();
  v15 = &a7[v14[7]];
  *a7 = a1;
  *(a7 + 1) = a2;
  v16 = v14[6];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC700, &qword_1D932D740);
  result = (*(*(v17 - 8) + 32))(&a7[v16], a3, v17);
  *v15 = a4;
  *(v15 + 1) = a5;
  *&a7[v14[8]] = a6;
  return result;
}

uint64_t WidgetIdentity.init(widget:metrics:hostID:configurationID:contentType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X6>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC710, &qword_1D932D750);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);

  v10 = type metadata accessor for WidgetIdentity();
  v11 = (a4 + v10[7]);
  sub_1D9326A74();
  v12 = a4 + v10[6];
  result = sub_1D9326B14();
  *a4 = a1;
  a4[1] = a2;
  *v11 = 0;
  v11[1] = 0;
  *(a4 + v10[8]) = a3;
  return result;
}

uint64_t WidgetIdentity.description.getter()
{
  v1 = v0;
  sub_1D9328444();
  MEMORY[0x1DA72E570](0xD000000000000018, 0x80000001D9336460);
  v2 = type metadata accessor for WidgetIdentity();
  v3 = v2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC700, &qword_1D932D740);
  sub_1D9290D60(&qword_1ECAFC718, &qword_1ECAFC700, &qword_1D932D740);
  v4 = sub_1D9328614();
  MEMORY[0x1DA72E570](v4);

  MEMORY[0x1DA72E570](0xD000000000000011, 0x80000001D9336480);
  v5 = (v0 + v2[7]);
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    v7 = 0xE300000000000000;
    v6 = 7104878;
  }

  MEMORY[0x1DA72E570](v6, v7);

  MEMORY[0x1DA72E570](0x6E65746E6F63202CLL, 0xEE003D6570795474);
  v8 = *(v0 + v2[8]);
  v9 = NSStringFromCHSWidgetContentType();
  v10 = sub_1D9327F84();
  v12 = v11;

  MEMORY[0x1DA72E570](v10, v12);

  MEMORY[0x1DA72E570](0x746567646977202CLL, 0xE90000000000003DLL);
  v13 = [*v1 description];
  v14 = sub_1D9327F84();
  v16 = v15;

  MEMORY[0x1DA72E570](v14, v16);

  MEMORY[0x1DA72E570](0x63697274656D202CLL, 0xEA00000000003D73);
  v17 = [v1[1] description];
  v18 = sub_1D9327F84();
  v20 = v19;

  MEMORY[0x1DA72E570](v18, v20);

  MEMORY[0x1DA72E570](62, 0xE100000000000000);
  return 0;
}

uint64_t WidgetIdentity.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  sub_1D9328324();
  v3 = v1[1];
  sub_1D9328324();
  v4 = type metadata accessor for WidgetIdentity();
  v5 = v4[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC700, &qword_1D932D740);
  sub_1D9290D60(&qword_1ECAFC720, &qword_1ECAFC700, &qword_1D932D740);
  sub_1D9327F24();
  v6 = (v1 + v4[7]);
  if (v6[1])
  {
    v7 = *v6;
    sub_1D9328744();
    sub_1D9327FB4();
  }

  else
  {
    sub_1D9328744();
  }

  return MEMORY[0x1DA72ECE0](*(v1 + v4[8]));
}

uint64_t WidgetIdentity.hashValue.getter()
{
  v1 = v0;
  sub_1D9328724();
  v2 = *v0;
  sub_1D9328324();
  v3 = v1[1];
  sub_1D9328324();
  v4 = type metadata accessor for WidgetIdentity();
  v5 = v4[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC700, &qword_1D932D740);
  sub_1D9290D60(&qword_1ECAFC720, &qword_1ECAFC700, &qword_1D932D740);
  sub_1D9327F24();
  v6 = (v1 + v4[7]);
  if (v6[1])
  {
    v7 = *v6;
    sub_1D9328744();
    sub_1D9327FB4();
  }

  else
  {
    sub_1D9328744();
  }

  MEMORY[0x1DA72ECE0](*(v1 + v4[8]));
  return sub_1D9328764();
}

uint64_t sub_1D92CFC64(int *a1)
{
  v3 = v1;
  sub_1D9328724();
  v4 = *v1;
  sub_1D9328324();
  v5 = v3[1];
  sub_1D9328324();
  v6 = a1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC700, &qword_1D932D740);
  sub_1D9290D60(&qword_1ECAFC720, &qword_1ECAFC700, &qword_1D932D740);
  sub_1D9327F24();
  v7 = (v3 + a1[7]);
  if (v7[1])
  {
    v8 = *v7;
    sub_1D9328744();
    sub_1D9327FB4();
  }

  else
  {
    sub_1D9328744();
  }

  MEMORY[0x1DA72ECE0](*(v3 + a1[8]));
  return sub_1D9328764();
}

uint64_t sub_1D92CFD7C(uint64_t a1, int *a2)
{
  v4 = v2;
  v5 = *v2;
  sub_1D9328324();
  v6 = v4[1];
  sub_1D9328324();
  v7 = a2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC700, &qword_1D932D740);
  sub_1D9290D60(&qword_1ECAFC720, &qword_1ECAFC700, &qword_1D932D740);
  sub_1D9327F24();
  v8 = (v4 + a2[7]);
  if (v8[1])
  {
    v9 = *v8;
    sub_1D9328744();
    sub_1D9327FB4();
  }

  else
  {
    sub_1D9328744();
  }

  return MEMORY[0x1DA72ECE0](*(v4 + a2[8]));
}

uint64_t sub_1D92CFE80(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_1D9328724();
  v5 = *v2;
  sub_1D9328324();
  v6 = v4[1];
  sub_1D9328324();
  v7 = a2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC700, &qword_1D932D740);
  sub_1D9290D60(&qword_1ECAFC720, &qword_1ECAFC700, &qword_1D932D740);
  sub_1D9327F24();
  v8 = (v4 + a2[7]);
  if (v8[1])
  {
    v9 = *v8;
    sub_1D9328744();
    sub_1D9327FB4();
  }

  else
  {
    sub_1D9328744();
  }

  MEMORY[0x1DA72ECE0](*(v4 + a2[8]));
  return sub_1D9328764();
}

BOOL _s16ChronoUIServices14WidgetIdentityV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  sub_1D9296448(0, &qword_1ECAFC678, 0x1E69E58C0);
  v4 = *a1;
  v5 = *a2;
  if ((sub_1D9328314() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1];
  v7 = a2[1];
  if ((sub_1D9328314() & 1) == 0)
  {
    return 0;
  }

  v8 = type metadata accessor for WidgetIdentity();
  v9 = v8[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC700, &qword_1D932D740);
  sub_1D9290D60(&qword_1ECAFC770, &qword_1ECAFC700, &qword_1D932D740);
  sub_1D9327FF4();
  sub_1D9327FF4();
  if (v19 == v17 && v20 == v18)
  {
  }

  else
  {
    v10 = sub_1D9328654();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = v8[7];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v14[1];
  if (v13)
  {
    if (v15 && (*v12 == *v14 && v13 == v15 || (sub_1D9328654() & 1) != 0))
    {
      return *(a1 + v8[8]) == *(a2 + v8[8]);
    }
  }

  else if (!v15)
  {
    return *(a1 + v8[8]) == *(a2 + v8[8]);
  }

  return 0;
}

unint64_t sub_1D92D0158()
{
  result = qword_1ECAFC728;
  if (!qword_1ECAFC728)
  {
    type metadata accessor for WidgetIdentity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC728);
  }

  return result;
}

void sub_1D92D01D8()
{
  sub_1D9296448(319, &qword_1EDE3B220, 0x1E6994370);
  if (v0 <= 0x3F)
  {
    sub_1D9296448(319, &qword_1ECAFC740, 0x1E69943F0);
    if (v1 <= 0x3F)
    {
      sub_1D92D02C4();
      if (v2 <= 0x3F)
      {
        sub_1D92D040C();
        if (v3 <= 0x3F)
        {
          type metadata accessor for CHSWidgetContentType(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D92D02C4()
{
  if (!qword_1ECAFC748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFC710, &qword_1D932D750);
    sub_1D9290D60(&qword_1ECAFC750, &qword_1ECAFC710, &qword_1D932D750);
    sub_1D9290D60(&qword_1ECAFC758, &qword_1ECAFC710, &qword_1D932D750);
    sub_1D9290D60(&qword_1ECAFC760, &qword_1ECAFC710, &qword_1D932D750);
    sub_1D9290D60(&qword_1ECAFC768, &qword_1ECAFC710, &qword_1D932D750);
    v0 = sub_1D9326B34();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECAFC748);
    }
  }
}

void sub_1D92D040C()
{
  if (!qword_1EDE3DA78)
  {
    v0 = sub_1D9328374();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE3DA78);
    }
  }
}

uint64_t sub_1D92D045C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v52 - v4;
  v54 = 538976288;
  v55 = 0xE400000000000000;
  v6 = type metadata accessor for WidgetInstanceConfiguration();
  if (*(v0 + v6[13]))
  {
    v7 = 0xD00000000000001BLL;
  }

  else
  {
    v7 = 0;
  }

  if (*(v0 + v6[13]))
  {
    v8 = 0x80000001D9336570;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  MEMORY[0x1DA72E570](v7, v8);

  if (*(v0 + v6[12]) == 1)
  {
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_1D9328444();
    MEMORY[0x1DA72E570](0xD000000000000032, 0x80000001D93360D0);
    MEMORY[0x1DA72E570](1702195828, 0xE400000000000000);
    MEMORY[0x1DA72E570](8236, 0xE200000000000000);
    v9 = v52;
    v10 = v53;
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  MEMORY[0x1DA72E570](v9, v10);

  v12 = v54;
  v11 = v55;
  v54 = 0;
  v55 = 0xE000000000000000;
  sub_1D9328444();
  MEMORY[0x1DA72E570](0xD00000000000002ALL, 0x80000001D9335FC0);
  sub_1D92D0D30(v0 + v6[6], v5);
  v13 = sub_1D9327F94();
  MEMORY[0x1DA72E570](v13);

  MEMORY[0x1DA72E570](0x7265646E6572202CLL, 0xEF3D656D65686353);
  v14 = [*(v0 + v6[15]) description];
  v15 = sub_1D9327F84();
  v17 = v16;

  MEMORY[0x1DA72E570](v15, v17);

  MEMORY[0x1DA72E570](0xD000000000000015, 0x80000001D9335FF0);
  if (*v1)
  {
    v18 = [*v1 description];
    v19 = sub_1D9327F84();
    v21 = v20;
  }

  else
  {
    v21 = 0xE300000000000000;
    v19 = 7104878;
  }

  MEMORY[0x1DA72E570](v19, v21);

  MEMORY[0x1DA72E570](44, 0xE100000000000000);
  v22 = *(v1 + v6[9]);
  v23 = 0xE000000000000000;
  if (v22)
  {
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_1D9328444();

    v52 = 0x61726150746E6974;
    v53 = 0xEF3D73726574656DLL;
    v24 = [v22 description];
    v25 = sub_1D9327F84();
    v27 = v26;

    MEMORY[0x1DA72E570](v25, v27);

    MEMORY[0x1DA72E570](8236, 0xE200000000000000);
    v28 = v52;
    v23 = v53;
  }

  else
  {
    v28 = 0;
  }

  MEMORY[0x1DA72E570](v28, v23);

  v29 = *(v1 + v6[10]);
  if (v29)
  {
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_1D9328444();

    v52 = 0xD000000000000015;
    v53 = 0x80000001D93360B0;
    v30 = [v29 description];
    v31 = sub_1D9327F84();
    v33 = v32;

    MEMORY[0x1DA72E570](v31, v33);

    MEMORY[0x1DA72E570](8236, 0xE200000000000000);
    v34 = v52;
    v35 = v53;
  }

  else
  {
    v34 = 0;
    v35 = 0xE000000000000000;
  }

  MEMORY[0x1DA72E570](v34, v35);

  if (*(v1 + v6[18]))
  {
    v36 = 0xD000000000000016;
  }

  else
  {
    v36 = 0;
  }

  if (*(v1 + v6[18]))
  {
    v37 = 0x80000001D9336550;
  }

  else
  {
    v37 = 0xE000000000000000;
  }

  MEMORY[0x1DA72E570](v36, v37);

  if (*(v1 + v6[17]))
  {
    v38 = 0xD00000000000001ALL;
  }

  else
  {
    v38 = 0;
  }

  if (*(v1 + v6[17]))
  {
    v39 = 0x80000001D9336530;
  }

  else
  {
    v39 = 0xE000000000000000;
  }

  MEMORY[0x1DA72E570](v38, v39);

  if (*(v1 + v6[16]))
  {
    v40 = 0xD00000000000001CLL;
  }

  else
  {
    v40 = 0;
  }

  if (*(v1 + v6[16]))
  {
    v41 = 0x80000001D9336510;
  }

  else
  {
    v41 = 0xE000000000000000;
  }

  MEMORY[0x1DA72E570](v40, v41);

  if (*(v1 + v6[11]))
  {
    v42 = 0xD000000000000017;
  }

  else
  {
    v42 = 0;
  }

  if (*(v1 + v6[11]))
  {
    v43 = 0x80000001D93364F0;
  }

  else
  {
    v43 = 0xE000000000000000;
  }

  MEMORY[0x1DA72E570](v42, v43);

  if (*(v1 + 8))
  {
    v44 = 0xD000000000000023;
  }

  else
  {
    v44 = 0;
  }

  if (*(v1 + 8))
  {
    v45 = 0x80000001D93364C0;
  }

  else
  {
    v45 = 0xE000000000000000;
  }

  MEMORY[0x1DA72E570](v44, v45);

  MEMORY[0x1DA72E570](v12, v11);

  MEMORY[0x1DA72E570](0x69786F727022202CLL, 0xED00003D7974696DLL);
  v46 = *(v1 + v6[19]);
  v47 = NSStringFromCHSWidgetProximity();
  v48 = sub_1D9327F84();
  v50 = v49;

  MEMORY[0x1DA72E570](v48, v50);

  MEMORY[0x1DA72E570](15906, 0xE200000000000000);
  return v54;
}

unint64_t WidgetInstance.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetInstanceConfiguration();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WidgetIdentity();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1D9328444();

  v15 = 0xD00000000000001ALL;
  v16 = 0x80000001D93364A0;
  (*(a2 + 16))(a1, a2);
  v12 = WidgetIdentity.description.getter();
  MEMORY[0x1DA72E570](v12);

  sub_1D92D0C08(v11, type metadata accessor for WidgetIdentity);
  MEMORY[0x1DA72E570](0x6769666E6F63202CLL, 0xEF3D6E6F74617275);
  (*(a2 + 32))(a1, a2);
  v13 = sub_1D92D045C();
  MEMORY[0x1DA72E570](v13);

  sub_1D92D0C08(v7, type metadata accessor for WidgetInstanceConfiguration);
  MEMORY[0x1DA72E570](62, 0xE100000000000000);
  return v15;
}

uint64_t sub_1D92D0C08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D92D0D30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC438, &qword_1D932CA10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SetControlStateRequest.sessionKey.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SetControlStateRequest.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SetControlStateRequest() + 20);
  v4 = sub_1D9327A94();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SetControlStateRequest()
{
  result = qword_1ECAFC7B8;
  if (!qword_1ECAFC7B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SetControlStateRequest.action.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SetControlStateRequest() + 20);
  v4 = sub_1D9327A94();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SetControlStateRequest.state.getter()
{
  v1 = *(v0 + *(type metadata accessor for SetControlStateRequest() + 24));
}

uint64_t SetControlStateRequest.state.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SetControlStateRequest() + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SetControlStateRequest.init(sessionKey:state:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for SetControlStateRequest();
  *&a4[*(v7 + 24)] = a2;
  v8 = *(v7 + 20);
  v9 = sub_1D9327A94();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a4[v8], a3, v9);
}

unint64_t SetControlStateRequest.description.getter()
{
  sub_1D9328444();

  v7 = *v0;
  sub_1D9326AD4();
  sub_1D92D1AF0(&qword_1ECAFC778, MEMORY[0x1E69940F8]);
  v1 = sub_1D9328614();
  MEMORY[0x1DA72E570](v1);

  MEMORY[0x1DA72E570](0x3D6574617473202CLL, 0xE800000000000000);
  v2 = type metadata accessor for SetControlStateRequest();
  v8 = *(v0 + *(v2 + 24));
  sub_1D9326A34();
  sub_1D92D1AF0(&qword_1ECAFC780, MEMORY[0x1E6994010]);
  v3 = sub_1D9328614();
  MEMORY[0x1DA72E570](v3);

  MEMORY[0x1DA72E570](0x6F69746361202C3ELL, 0xEA00000000003D6ELL);
  v4 = *(v2 + 20);
  sub_1D9327A94();
  sub_1D92D1AF0(&qword_1ECAFC788, MEMORY[0x1E69858A8]);
  v5 = sub_1D9328614();
  MEMORY[0x1DA72E570](v5);

  return 0xD000000000000024;
}

uint64_t sub_1D92D12C4()
{
  v1 = 0x6E6F69746361;
  if (*v0 != 1)
  {
    v1 = 0x6574617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4B6E6F6973736573;
  }
}

uint64_t sub_1D92D131C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D92D1F48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D92D1350(uint64_t a1)
{
  v2 = sub_1D92D1650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D92D138C(uint64_t a1)
{
  v2 = sub_1D92D1650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SetControlStateRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC790, &qword_1D932D860);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D92D1650();
  sub_1D9328784();
  v15 = *v3;
  HIBYTE(v14) = 0;
  sub_1D9326AD4();
  sub_1D92D1AF0(&qword_1EDE3BAD8, MEMORY[0x1E69940F8]);
  sub_1D9328604();
  if (!v2)
  {
    v11 = type metadata accessor for SetControlStateRequest();
    v12 = *(v11 + 20);
    LOBYTE(v15) = 1;
    sub_1D9327A94();
    sub_1D92D1AF0(&qword_1EDE3B270, MEMORY[0x1E69858A8]);
    sub_1D9328604();
    v15 = *(v3 + *(v11 + 24));
    HIBYTE(v14) = 2;
    sub_1D9326A34();
    sub_1D92D1AF0(&qword_1ECAFC7A0, MEMORY[0x1E6994010]);
    sub_1D9328604();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D92D1650()
{
  result = qword_1ECAFC798;
  if (!qword_1ECAFC798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC798);
  }

  return result;
}

uint64_t SetControlStateRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1D9327A94();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC7A8, &qword_1D932D868);
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for SetControlStateRequest();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D92D1650();
  sub_1D9328774();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }

  v18 = v28;
  v19 = v15;
  sub_1D9326AD4();
  v31 = 0;
  sub_1D92D1AF0(&qword_1EDE3BAD0, MEMORY[0x1E69940F8]);
  v20 = v29;
  sub_1D93285C4();
  v24 = v32;
  v25 = v19;
  *v19 = v32;
  LOBYTE(v32) = 1;
  sub_1D92D1AF0(&qword_1EDE3B268, MEMORY[0x1E69858A8]);
  sub_1D93285C4();
  (*(v27 + 32))(&v25[*(v12 + 20)], v7, v4);
  sub_1D9326A34();
  v31 = 2;
  sub_1D92D1AF0(&qword_1ECAFC7B0, MEMORY[0x1E6994010]);
  sub_1D93285C4();
  (*(v18 + 8))(v11, v20);
  v22 = v25;
  v21 = v26;
  *&v25[*(v12 + 24)] = v32;
  sub_1D92D1B38(v22, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  return sub_1D92D1B9C(v22);
}

uint64_t sub_1D92D1AF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D92D1B38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SetControlStateRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D92D1B9C(uint64_t a1)
{
  v2 = type metadata accessor for SetControlStateRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D92D1C54()
{
  result = sub_1D9326AD4();
  if (v1 <= 0x3F)
  {
    result = sub_1D9327A94();
    if (v2 <= 0x3F)
    {
      result = sub_1D9326A34();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SetControlStateRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SetControlStateRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D92D1E44()
{
  result = qword_1ECAFC7C8;
  if (!qword_1ECAFC7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC7C8);
  }

  return result;
}

unint64_t sub_1D92D1E9C()
{
  result = qword_1ECAFC7D0;
  if (!qword_1ECAFC7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC7D0);
  }

  return result;
}

unint64_t sub_1D92D1EF4()
{
  result = qword_1ECAFC7D8;
  if (!qword_1ECAFC7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC7D8);
  }

  return result;
}

uint64_t sub_1D92D1F48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4B6E6F6973736573 && a2 == 0xEA00000000007965;
  if (v4 || (sub_1D9328654() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_1D9328654() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9328654();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void *CHUISControlIconView.font.getter()
{
  v1 = OBJC_IVAR___CHUISControlIconView_font;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CHUISControlIconView.font.setter(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ControlIconView(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC7E8, &qword_1D932DA50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = OBJC_IVAR___CHUISControlIconView_font;
  swift_beginAccess();
  v11 = *&v2[v10];
  *&v2[v10] = a1;
  v12 = a1;

  v13 = *&v2[OBJC_IVAR___CHUISControlIconView__hostingView];
  v14 = OBJC_IVAR___CHUISControlIconView__controlIconView;
  swift_beginAccess();
  sub_1D92936FC(&v2[v14], v18);
  v15 = v13;
  swift_dynamicCast();
  v16 = [v2 font];
  sub_1D92D2CE0(v16);

  sub_1D92D2EB0(v7);
  sub_1D92D2F0C();
  v18[0] = sub_1D93274F4();
  sub_1D9326DE4();
}

uint64_t CHUISControlIconView.style.getter()
{
  v1 = type metadata accessor for ControlIconView(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v5 = OBJC_IVAR___CHUISControlIconView__controlIconView;
  swift_beginAccess();
  sub_1D92936FC(v0 + v5, v9);
  swift_dynamicCast();
  v6 = *&v4[*(v1 + 20)];
  sub_1D92D2EB0(v4);
  return v6;
}

uint64_t CHUISControlIconView.style.setter(uint64_t a1)
{
  v3 = type metadata accessor for ControlIconView(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v7 = OBJC_IVAR___CHUISControlIconView__controlIconView;
  swift_beginAccess();
  sub_1D92936FC(v1 + v7, v10);
  swift_dynamicCast();
  *&v6[*(v3 + 20)] = a1;
  return sub_1D92D2694(v6);
}

uint64_t sub_1D92D2694(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ControlIconView(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC7E8, &qword_1D932DA50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v18 = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v17);
  sub_1D92D30E0(a1, boxed_opaque_existential_0);
  v11 = OBJC_IVAR___CHUISControlIconView__controlIconView;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(&v2[v11]);
  sub_1D92C6364(&v17, &v2[v11]);
  swift_endAccess();
  v12 = *&v2[OBJC_IVAR___CHUISControlIconView__hostingView];
  sub_1D92936FC(&v2[v11], &v17);
  v13 = v12;
  swift_dynamicCast();
  v14 = [v2 font];
  sub_1D92D2CE0(v14);

  sub_1D92D2EB0(v7);
  sub_1D92D2F0C();
  *&v17 = sub_1D93274F4();
  sub_1D9326DE4();

  return sub_1D92D2EB0(a1);
}

void __swiftcall CHUISControlIconView.init(frame:)(CHUISControlIconView *__return_ptr retstr, __C::CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

char *CHUISControlIconView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for ControlIconView(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - v15;
  *&v5[OBJC_IVAR___CHUISControlIconView_font] = 0;
  sub_1D92F06E8(&v25 - v15);
  v17 = &v5[OBJC_IVAR___CHUISControlIconView__controlIconView];
  v17[3] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  sub_1D92D30E0(v16, boxed_opaque_existential_0);
  sub_1D92D30E0(v16, v14);
  sub_1D92D3024();
  v27 = sub_1D93274F4();
  v19 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC810, &qword_1D932DA68));
  v20 = sub_1D9326DD4();
  [v20 setBackgroundColor_];
  sub_1D9326DF4();
  *&v5[OBJC_IVAR___CHUISControlIconView__hostingView] = v20;
  v26.receiver = v5;
  v26.super_class = CHUISControlIconView;
  v21 = objc_msgSendSuper2(&v26, sel_initWithFrame_, a1, a2, a3, a4);
  v22 = *&v21[OBJC_IVAR___CHUISControlIconView__hostingView];
  v23 = v21;
  [v23 addSubview_];
  [v23 setBackgroundColor_];

  sub_1D92D2EB0(v16);
  return v23;
}

void CHUISControlIconView.init(coder:)()
{
  *(v0 + OBJC_IVAR___CHUISControlIconView_font) = 0;
  sub_1D9328534();
  __break(1u);
}

Swift::Void __swiftcall CHUISControlIconView.layoutSubviews()()
{
  v2.super_class = CHUISControlIconView;
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR___CHUISControlIconView__hostingView];
  [v0 bounds];
  [v1 setFrame_];
}

uint64_t sub_1D92D2CE0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC820, &qword_1D932DA70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC800, &qword_1D932DA58);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  if (a1)
  {
    v12 = a1;
    v13 = sub_1D9327294();
    KeyPath = swift_getKeyPath();
    sub_1D92D30E0(v2, v11);
    v15 = &v11[*(v8 + 36)];
    *v15 = KeyPath;
    v15[1] = v13;
    sub_1D92D3234(v11, v7);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ControlIconView(0);
    sub_1D92D2F98();
    sub_1D92D3024();
    sub_1D9327104();
    return sub_1D92D32A4(v11);
  }

  else
  {
    sub_1D92D30E0(v2, v7);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ControlIconView(0);
    sub_1D92D2F98();
    sub_1D92D3024();
    return sub_1D9327104();
  }
}

uint64_t sub_1D92D2EB0(uint64_t a1)
{
  v2 = type metadata accessor for ControlIconView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D92D2F0C()
{
  result = qword_1EDE3BDF0;
  if (!qword_1EDE3BDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFC7E8, &qword_1D932DA50);
    sub_1D92D2F98();
    sub_1D92D3024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BDF0);
  }

  return result;
}

unint64_t sub_1D92D2F98()
{
  result = qword_1EDE3BEE8;
  if (!qword_1EDE3BEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFC800, &qword_1D932DA58);
    sub_1D92D3024();
    sub_1D92D307C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BEE8);
  }

  return result;
}

unint64_t sub_1D92D3024()
{
  result = qword_1EDE3D458[0];
  if (!qword_1EDE3D458[0])
  {
    type metadata accessor for ControlIconView(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE3D458);
  }

  return result;
}

unint64_t sub_1D92D307C()
{
  result = qword_1EDE3BD28;
  if (!qword_1EDE3BD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFC808, &qword_1D932DA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BD28);
  }

  return result;
}

uint64_t sub_1D92D30E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlIconView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

CGSize __swiftcall CHUISControlIconView.sizeThatFits(_:)(CGSize a1)
{
  [*(v1 + OBJC_IVAR___CHUISControlIconView__hostingView) sizeThatFits_];
  result.height = v3;
  result.width = v2;
  return result;
}

unint64_t type metadata accessor for CHUISControlIconView()
{
  result = qword_1ECAFC818;
  if (!qword_1ECAFC818)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAFC818);
  }

  return result;
}

uint64_t sub_1D92D3234(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC800, &qword_1D932DA58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D92D32A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC800, &qword_1D932DA58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D92D3334()
{
  v0 = sub_1D9326BE4();
  __swift_allocate_value_buffer(v0, qword_1EDE400B8);
  __swift_project_value_buffer(v0, qword_1EDE400B8);
  return sub_1D9326BD4();
}

id sub_1D92D33D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);

  v2 = sub_1D9326AC4();

  v3 = [v2 control];

  return v3;
}

id sub_1D92D3434()
{
  v1 = *(v0 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);

  v2 = sub_1D9326AC4();

  v3 = [v2 contentType];

  return v3;
}

void sub_1D92D3490(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
  v5 = v2;
  sub_1D92D34F0(v4);
}

void sub_1D92D34F0(void *a1)
{
  v2 = v1;
  BSDispatchQueueAssertMain();
  if ((*(v2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__invalidated) & 1) == 0)
  {
    swift_beginAccess();
    v4 = *(v2 + 32);
    if (a1)
    {
      if (v4)
      {
        sub_1D92DA0B0();
        v5 = v4;
        v6 = a1;
        v7 = sub_1D9328314();

        if (v7)
        {
          return;
        }
      }
    }

    else if (!v4)
    {
      return;
    }

    if (qword_1EDE3BF70 != -1)
    {
      swift_once();
    }

    v8 = sub_1D9326BE4();
    __swift_project_value_buffer(v8, qword_1EDE400B8);
    swift_retain_n();
    v9 = sub_1D9326BC4();
    v10 = sub_1D9328234();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136446466;
      v13 = *(v2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);

      v14 = sub_1D9326AA4();
      v16 = v15;

      v17 = sub_1D9293524(v14, v16, &v20);

      *(v11 + 4) = v17;
      *(v11 + 12) = 1026;
      v18 = *(v2 + 32);

      *(v11 + 14) = v18 != 0;

      _os_log_impl(&dword_1D928E000, v9, v10, "[%{public}s] Descriptor changed - has descriptor? %{BOOL,public}d", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1DA72F920](v12, -1, -1);
      MEMORY[0x1DA72F920](v11, -1, -1);
    }

    else
    {
    }

    v19 = *(v2 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC830, &qword_1D932CC10);
    sub_1D9290D60(&qword_1EDE3DA98, &unk_1ECAFC830, &qword_1D932CC10);
    sub_1D9326C54();
  }
}

void *sub_1D92D3778()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t ControlSession.contentUpdateStream.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_contentUpdateStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC840, &qword_1D932DAB8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D92D3840()
{
  v1 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession____lazy_storage___contentDidChangePublisher;
  if (*(v0 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession____lazy_storage___contentDidChangePublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession____lazy_storage___contentDidChangePublisher);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__contentDidChangePublisher);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC830, &qword_1D932CC10);
    sub_1D9290D60(&qword_1EDE3DA90, &unk_1ECAFC830, &qword_1D932CC10);
    v3 = v0;
    v2 = sub_1D9326C64();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1D92D391C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession____lazy_storage___contentDidChangePublisher);
  *(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession____lazy_storage___contentDidChangePublisher) = a1;
}

uint64_t (*sub_1D92D3934(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1D92D3840();
  return sub_1D92D397C;
}

uint64_t sub_1D92D397C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession____lazy_storage___contentDidChangePublisher);
  *(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession____lazy_storage___contentDidChangePublisher) = v2;
}

double sub_1D92D3994@<D0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__entryAssertion;
  swift_beginAccess();
  sub_1D92973DC(v1 + v3, v17, &qword_1ECAFC850, &unk_1D932DAC0);
  v4 = v18;
  if (v18)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v6 = *(v4 - 8);
    v7 = *(v6 + 64);
    MEMORY[0x1EEE9AC00](v5);
    v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
    (*(v6 + 16))(v9);
    sub_1D92933A0(v17, &qword_1ECAFC850, &unk_1D932DAC0);
    v10 = *(*v9 + 24);
    v11 = *(v6 + 8);

    v11(v9, v4);
    v12 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry;
    swift_beginAccess();
    v13 = *(v10 + v12);

    v14 = sub_1D93276C4();

    if (v14)
    {
      sub_1D93277D4();

      return result;
    }
  }

  else
  {
    sub_1D92933A0(v17, &qword_1ECAFC850, &unk_1D932DAC0);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1D92D3B80(uint64_t a1)
{
  v2 = v1;
  sub_1D92973DC(a1, &v29, &qword_1ECAFC858, &unk_1D932FC60);
  if (v30)
  {
    sub_1D92A87A4(&v29, v31);
    v4 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__entryAssertion;
    swift_beginAccess();
    sub_1D92973DC(v2 + v4, &v29, &qword_1ECAFC850, &unk_1D932DAC0);
    v5 = v30;
    if (v30)
    {
      v6 = __swift_project_boxed_opaque_existential_1(&v29, v30);
      v7 = *(v5 - 8);
      v8 = *(v7 + 64);
      MEMORY[0x1EEE9AC00](v6);
      v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v7 + 16))(v10);
      sub_1D92933A0(&v29, &qword_1ECAFC850, &unk_1D932DAC0);
      v11 = *(*v10 + 24);
      v12 = *(v7 + 8);

      v12(v10, v5);
      v13 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry;
      swift_beginAccess();
      v14 = *(v11 + v13);

      v15 = sub_1D93276C4();

      sub_1D929CF00(v31, &v29);
      if (v15)
      {

        sub_1D93277C4();
      }
    }

    else
    {
      sub_1D92933A0(&v29, &qword_1ECAFC850, &unk_1D932DAC0);
      sub_1D929CF00(v31, &v29);
    }

    sub_1D9327804();
    sub_1D93277F4();

    __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  else
  {
    sub_1D92933A0(&v29, &qword_1ECAFC858, &unk_1D932FC60);
  }

  v16 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__entryAssertion;
  swift_beginAccess();
  sub_1D92973DC(v2 + v16, v31, &qword_1ECAFC850, &unk_1D932DAC0);
  v17 = v32;
  if (v32)
  {
    v18 = __swift_project_boxed_opaque_existential_1(v31, v32);
    v19 = *(v17 - 8);
    v20 = *(v19 + 64);
    MEMORY[0x1EEE9AC00](v18);
    v22 = &v28[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v19 + 16))(v22);
    sub_1D92933A0(v31, &qword_1ECAFC850, &unk_1D932DAC0);
    v23 = *(*v22 + 24);
    v24 = *(v19 + 8);

    v24(v22, v17);
    v25 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry;
    swift_beginAccess();
    v26 = *(v23 + v25);

    sub_1D93276D4();

    return sub_1D92933A0(a1, &qword_1ECAFC858, &unk_1D932FC60);
  }

  else
  {
    sub_1D92933A0(a1, &qword_1ECAFC858, &unk_1D932FC60);

    return sub_1D92933A0(v31, &qword_1ECAFC850, &unk_1D932DAC0);
  }
}

void (*sub_1D92D3FC4(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  sub_1D92D3994(v3);
  return sub_1D92D403C;
}

void sub_1D92D403C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    sub_1D92973DC(*a1, v2 + 40, &qword_1ECAFC858, &unk_1D932FC60);
    sub_1D92D3B80(v2 + 40);
    sub_1D92933A0(v2, &qword_1ECAFC858, &unk_1D932FC60);
  }

  else
  {
    sub_1D92D3B80(*a1);
  }

  free(v2);
}

uint64_t sub_1D92D40CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession_configuration;
  swift_beginAccess();
  v4 = *(v3 + 1);
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v8 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a2 = *v3;
  *(a2 + 1) = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v7;
}

uint64_t sub_1D92D4144(char *a1, void *a2)
{
  v14 = a1[1];
  v15 = *a1;
  v13 = *(a1 + 1);
  v12 = a1[16];
  v3 = *(a1 + 3);
  v2 = *(a1 + 4);
  v4 = *a2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession_configuration;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 1);
  v7 = *(v4 + 8);
  v8 = *(v4 + 16);
  v10 = *(v4 + 24);
  v9 = *(v4 + 32);
  *v4 = v15;
  *(v4 + 1) = v14;
  *(v4 + 8) = v13;
  *(v4 + 16) = v12;
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;

  v16[0] = v5;
  v16[1] = v6;
  v17 = v7;
  v18 = v8;
  v19 = v10;
  v20 = v9;
  sub_1D92D422C(v16);
}

uint64_t sub_1D92D422C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D9327874();
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = *(v54 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v51[-v9];
  v11 = *a1;
  v12 = *(a1 + 1);
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v16 = *(a1 + 24);
  v15 = *(a1 + 32);
  result = BSDispatchQueueAssertMain();
  v18 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__invalidated;
  if ((*(v2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__invalidated) & 1) == 0)
  {
    v60 = v11;
    v61 = v12;
    v62 = v13;
    v63 = v14;
    v64 = v16;
    v65 = v15;
    v19 = (v2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession_configuration);
    swift_beginAccess();
    v20 = v19[1];
    v21 = *(v19 + 1);
    v22 = v19[16];
    v23 = *(v19 + 3);
    v24 = *(v19 + 4);
    LOBYTE(v56[0]) = *v19;
    BYTE1(v56[0]) = v20;
    v56[1] = v21;
    v57 = v22;
    v58 = v23;
    v59 = v24;
    v25 = _s16ChronoUIServices28ControlInstanceConfigurationV2eeoiySbAC_ACtFZ_0(&v60, v56);

    if ((v25 & 1) == 0)
    {
      if (qword_1EDE3BF70 != -1)
      {
        swift_once();
      }

      v26 = sub_1D9326BE4();
      __swift_project_value_buffer(v26, qword_1EDE400B8);

      v27 = sub_1D9326BC4();
      v28 = sub_1D9328234();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v56[0] = v53;
        *v29 = 136446466;
        v52 = v28;
        v30 = *(v2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);

        v31 = sub_1D9326AA4();
        v33 = v32;

        v34 = sub_1D9293524(v31, v33, v56);

        *(v29 + 4) = v34;
        *(v29 + 12) = 2082;
        v35 = v19[1];
        v36 = *(v19 + 1);
        v37 = v19[16];
        v39 = *(v19 + 3);
        v38 = *(v19 + 4);
        v60 = *v19;
        v61 = v35;
        v62 = v36;
        v63 = v37;
        v64 = v39;
        v65 = v38;

        v40 = ControlInstanceConfiguration.description.getter();
        v42 = v41;

        v43 = sub_1D9293524(v40, v42, v56);

        *(v29 + 14) = v43;
        _os_log_impl(&dword_1D928E000, v27, v52, "[%{public}s] Configuration did change: %{public}s", v29, 0x16u);
        v44 = v53;
        swift_arrayDestroy();
        MEMORY[0x1DA72F920](v44, -1, -1);
        MEMORY[0x1DA72F920](v29, -1, -1);
      }

      result = BSDispatchQueueAssertMain();
      if ((*(v2 + v18) & 1) == 0)
      {
        v45 = *v19;
        v46 = v19[1];
        v47 = *(v19 + 1);
        v48 = v19[16];
        sub_1D9327864();
        sub_1D9327834();
        sub_1D9327854();
        sub_1D9327844();
        v50 = v54;
        v49 = v55;
        (*(v54 + 16))(v8, v10, v55);
        sub_1D92D4F98(v8);
        return (*(v50 + 8))(v10, v49);
      }
    }
  }

  return result;
}

uint64_t sub_1D92D4620@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession_configuration;
  swift_beginAccess();
  v4 = *(v3 + 1);
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v8 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 1) = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
}

uint64_t sub_1D92D4694(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 1);
  v5 = a1[16];
  v6 = *(a1 + 3);
  v7 = *(a1 + 4);
  v8 = (v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession_configuration);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 1);
  v12 = v8[16];
  v13 = *(v8 + 3);
  v14 = *(v8 + 4);
  *v8 = v2;
  v8[1] = v3;
  *(v8 + 1) = v4;
  v8[16] = v5;
  *(v8 + 3) = v6;
  *(v8 + 4) = v7;
  v16[0] = v9;
  v16[1] = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  sub_1D92D422C(v16);
}

void (*sub_1D92D4758(uint64_t *a1))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_configuration;
  *(v3 + 64) = v1;
  *(v3 + 72) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 1);
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v11 = *(v6 + 24);
  v10 = *(v6 + 32);
  *v4 = *v6;
  *(v4 + 1) = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v9;
  *(v4 + 24) = v11;
  *(v4 + 32) = v10;

  return sub_1D92D4818;
}

void sub_1D92D4818(char **a1, char a2)
{
  v2 = *a1;
  v3 = (*(*a1 + 8) + *(*a1 + 9));
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = *(*a1 + 1);
  v7 = (*a1)[16];
  v9 = *(*a1 + 3);
  v8 = *(*a1 + 4);
  v10 = *v3;
  v11 = v3[1];
  v12 = *(v3 + 1);
  v13 = v3[16];
  v15 = *(v3 + 3);
  v14 = *(v3 + 4);
  *v3 = v4;
  v3[1] = v5;
  *(v3 + 1) = v6;
  v3[16] = v7;
  *(v3 + 3) = v9;
  *(v3 + 4) = v8;
  v16 = *(v2 + 8);
  if (a2)
  {

    v18 = v10;
    v19 = v11;
    v20 = v12;
    v21 = v13;
    v22 = v15;
    v23 = v14;
    sub_1D92D422C(&v18);

    v17 = *(v2 + 4);
  }

  else
  {
    v18 = v10;
    v19 = v11;
    v20 = v12;
    v21 = v13;
    v22 = v15;
    v23 = v14;
    sub_1D92D422C(&v18);
  }

  free(v2);
}

void sub_1D92D490C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D9326944();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v50 - v10;
  BSDispatchQueueAssertMain();
  if ((*(v2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__invalidated) & 1) == 0)
  {
    v12 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_visibility;
    swift_beginAccess();
    if (*(v2 + v12) != a1)
    {
      if (qword_1EDE3BF70 != -1)
      {
        swift_once();
      }

      v13 = sub_1D9326BE4();
      __swift_project_value_buffer(v13, qword_1EDE400B8);

      v14 = sub_1D9326BC4();
      v15 = sub_1D9328234();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v55 = v5;
        v17 = v16;
        v54 = swift_slowAlloc();
        v56[0] = v54;
        *v17 = 136446466;
        v18 = *(v2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);

        v19 = sub_1D9326AA4();
        LODWORD(v53) = v15;
        v20 = v12;
        v21 = v9;
        v22 = v19;
        v24 = v23;

        v25 = v22;
        v9 = v21;
        v12 = v20;
        v26 = sub_1D9293524(v25, v24, v56);

        *(v17 + 4) = v26;
        *(v17 + 12) = 2082;
        v27 = *(v2 + v20);
        v28 = sub_1D93282E4();
        v30 = sub_1D9293524(v28, v29, v56);

        *(v17 + 14) = v30;
        _os_log_impl(&dword_1D928E000, v14, v53, "[%{public}s] Visibility did change: %{public}s", v17, 0x16u);
        v31 = v54;
        swift_arrayDestroy();
        MEMORY[0x1DA72F920](v31, -1, -1);
        v32 = v17;
        v5 = v55;
        MEMORY[0x1DA72F920](v32, -1, -1);
      }

      if (*(v2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__started) == 1)
      {
        v55 = v11;
        v51 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__client;
        v52 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__started;
        sub_1D929CF00(v2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__client, v56);
        v54 = v9;
        v33 = v57;
        v34 = v58;
        __swift_project_boxed_opaque_existential_1(v56, v57);
        v35 = *(v2 + v12);
        v53 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey;
        v36 = *(v2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);
        v37 = v5;
        v50 = v12;
        v38 = v4;
        v39 = *(v34 + 48);

        v40 = v34;
        v41 = v54;
        v39(v35, v36, v33, v40);
        v42 = v38;
        v43 = v5;

        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        sub_1D929CF00(v2 + v51, v56);
        v44 = v57;
        v45 = v58;
        __swift_project_boxed_opaque_existential_1(v56, v57);
        BSDispatchQueueAssertMain();
        v46 = *(v43 + 13);
        v46(v41, *MEMORY[0x1E6993F90], v42);
        if (*(v2 + v52) == 1 && *(v2 + v50) == 2)
        {
          (*(v37 + 1))(v41, v42);
          v46(v41, *MEMORY[0x1E6993FA0], v42);
        }

        v47 = v55;
        (*(v37 + 4))(v55, v41, v42);
        v48 = *(v2 + v53);
        v49 = *(v45 + 56);

        v49(v47, v48, v44, v45);

        (*(v43 + 1))(v47, v42);
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
      }
    }
  }
}

uint64_t sub_1D92D4DAC()
{
  v1 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_visibility;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1D92D4DF0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_visibility;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_1D92D490C(v4);
}

void (*sub_1D92D4E48(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_visibility;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1D92D4EDC;
}

void sub_1D92D4EDC(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 32);
  v2 = *(*a1 + 40);
  v4 = *(*a1 + 24);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  sub_1D92D490C(v5);

  free(v1);
}

uint64_t sub_1D92D4F3C(uint64_t (*a1)(uint64_t))
{
  v3 = *(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);

  v5 = a1(v4);

  return v5;
}

uint64_t sub_1D92D4F98(uint64_t a1)
{
  v3 = sub_1D9327874();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__environmentModifiers;
  swift_beginAccess();
  (*(v4 + 24))(v1 + v8, a1, v3);
  swift_endAccess();
  BSDispatchQueueAssertMain();
  if (*(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__started) != 1)
  {
    return (*(v4 + 8))(a1, v3);
  }

  sub_1D929CF00(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__client, v16);
  v9 = v17;
  v10 = v18;
  v15 = __swift_project_boxed_opaque_existential_1(v16, v17);
  (*(v4 + 16))(v7, v1 + v8, v3);
  v11 = *(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);
  v12 = *(v10 + 64);

  v12(v7, v11, v9, v10);

  v13 = *(v4 + 8);
  v13(a1, v3);
  v13(v7, v3);
  return __swift_destroy_boxed_opaque_existential_1Tm(v16);
}

uint64_t sub_1D92D5190@<X0>(uint64_t a1@<X8>)
{
  sub_1D92973DC(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__testArchiveService, &v8, &unk_1ECAFC870, qword_1D932DAD8);
  if (v9)
  {
    return sub_1D92A87A4(&v8, a1);
  }

  sub_1D92933A0(&v8, &unk_1ECAFC870, qword_1D932DAD8);
  v4 = *(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);

  v5 = sub_1D9326AC4();

  v6 = [v5 contentType];

  if (v6 == 1)
  {
    if (qword_1EDE3CDA8 != -1)
    {
LABEL_12:
      swift_once();
    }
  }

  else
  {
    if (!v6)
    {
      if (qword_1EDE3CDA8 != -1)
      {
        swift_once();
      }

      v7 = qword_1EDE40128 + 16;
      return sub_1D929CF00(v7, a1);
    }

    if (qword_1EDE3CDA8 != -1)
    {
      goto LABEL_12;
    }
  }

  v7 = qword_1EDE40128 + 56;
  return sub_1D929CF00(v7, a1);
}

void *ControlSession.__allocating_init(sessionKey:controlsClient:configuration:keybagStateProvider:)(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  v11 = sub_1D92D8EF4(a1, a2, a3, a4);

  return v11;
}

void *ControlSession.init(sessionKey:controlsClient:configuration:keybagStateProvider:)(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4)
{
  v4 = sub_1D92D8EF4(a1, a2, a3, a4);

  return v4;
}

void sub_1D92D5384(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__descriptorProvider);
  v3 = *(v2 + 72);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  [*(v2 + 80) addObject_];
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v15[4] = sub_1D92DA160;
  v15[5] = v5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1D9290DB0;
  v15[3] = &block_descriptor_99;
  v6 = _Block_copy(v15);

  BSDispatchMain();
  _Block_release(v6);
  os_unfair_lock_unlock(*(v3 + 16));

  if (qword_1EDE3BF70 != -1)
  {
    swift_once();
  }

  v7 = sub_1D9326BE4();
  __swift_project_value_buffer(v7, qword_1EDE400B8);

  v8 = sub_1D9326BC4();
  v9 = sub_1D9328234();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15[0] = v11;
    *v10 = 136446210;
    v12 = sub_1D9326AA4();
    v14 = sub_1D9293524(v12, v13, v15);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1D928E000, v8, v9, "[%{public}s] Created", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1DA72F920](v11, -1, -1);
    MEMORY[0x1DA72F920](v10, -1, -1);
  }
}

uint64_t ControlSession.deinit()
{
  if (*(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__invalidated) == 1)
  {
    v0 = v1;
    if (qword_1EDE3BF70 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v2 = sub_1D9326BE4();
  __swift_project_value_buffer(v2, qword_1EDE400B8);

  v3 = sub_1D9326BC4();
  v4 = sub_1D9328204();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25 = v6;
    *v5 = 136446210;
    v7 = *(v0 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);

    v8 = sub_1D9326AA4();
    v10 = v9;

    v11 = sub_1D9293524(v8, v10, &v25);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_1D928E000, v3, v4, "[%{public}s] Destroyed", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1DA72F920](v6, -1, -1);
    MEMORY[0x1DA72F920](v5, -1, -1);
  }

  v12 = *(v0 + 16);

  v13 = *(v0 + 24);

  v14 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_contentUpdateStream;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC840, &qword_1D932DAB8);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  sub_1D92933A0(v0 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__contentUpdateStreamContinuation, &unk_1ECAFC860, &qword_1D932DAD0);
  v16 = *(v0 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__contentDidChangePublisher);

  v17 = *(v0 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession____lazy_storage___contentDidChangePublisher);

  v18 = *(v0 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession_configuration + 32);

  v19 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__environmentModifiers;
  v20 = sub_1D9327874();
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  sub_1D92933A0(v0 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__testArchiveService, &unk_1ECAFC870, qword_1D932DAD8);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__client));
  v21 = *(v0 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);

  v22 = *(v0 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__cancellables);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__keybagStateProvider));
  v23 = *(v0 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__descriptorProvider);

  sub_1D92933A0(v0 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__entryAssertion, &qword_1ECAFC850, &unk_1D932DAC0);
  return v0;
}

uint64_t ControlSession.__deallocating_deinit()
{
  ControlSession.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1D92D594C()
{
  v1 = v0;
  v2 = sub_1D9326BE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v32[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__entryAssertion;
  swift_beginAccess();
  sub_1D92973DC(v0 + v7, v37, &qword_1ECAFC850, &unk_1D932DAC0);
  v8 = v38;
  sub_1D92933A0(v37, &qword_1ECAFC850, &unk_1D932DAC0);
  if (!v8)
  {
    sub_1D92D5190(v33);
    v9 = __swift_project_boxed_opaque_existential_1(v33, v35);
    v10 = *(v0 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);

    v11 = sub_1D9326AB4();

    v12 = *v9;
    v13 = *(v12 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__lock);
    v14 = *(v13 + 16);

    os_unfair_lock_lock(v14);
    sub_1D930C294(v11, v12, v37);
    os_unfair_lock_unlock(*(v13 + 16));

    swift_beginAccess();
    sub_1D92C3C20(v37, v1 + v7, &qword_1ECAFC850, &unk_1D932DAC0);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
  }

  if (qword_1EDE3BF70 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v2, qword_1EDE400B8);
  (*(v3 + 16))(v6, v15, v2);
  v16 = *(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);

  v17 = sub_1D9326AA4();
  v19 = v18;

  sub_1D92973DC(v1 + v7, v37, &qword_1ECAFC850, &unk_1D932DAC0);
  if (v38)
  {
    v20 = *(*__swift_project_boxed_opaque_existential_1(v37, v38) + 24);
    v21 = (v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession_configuration);
    swift_beginAccess();
    v22 = *v21;
    v23 = v21[1];
    v24 = *(v21 + 1);
    v25 = v21[16];
    v26 = *(v21 + 3);
    v27 = *(v21 + 4);
    LOBYTE(v33[0]) = v22;
    BYTE1(v33[0]) = v23;
    v33[1] = v24;
    v34 = v25;
    v35 = v26;
    v36 = v27;
    sub_1D929CF00(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__keybagStateProvider, v32);
    v28 = type metadata accessor for ControlSessionViewModel();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();

    sub_1D92C9740(v6, v17, v19, v20, v33, v32);

    __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  else
  {
    __break(1u);

    os_unfair_lock_unlock(*(v17 + 16));
    __break(1u);
  }
}

uint64_t sub_1D92D5CC0()
{
  v1 = v0;
  v2 = sub_1D9326944();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v86 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v79 - v7;
  v9 = sub_1D9327874();
  v87 = *(v9 - 8);
  v10 = *(v87 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v79 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v79 - v17;
  result = BSDispatchQueueAssertMain();
  v20 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__invalidated;
  if ((*(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__invalidated) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__started) & 1) == 0)
  {
    v80 = v3;
    v85 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__started;
    v82 = v9;
    if (qword_1EDE3BF70 != -1)
    {
      swift_once();
    }

    v21 = sub_1D9326BE4();
    __swift_project_value_buffer(v21, qword_1EDE400B8);

    v22 = sub_1D9326BC4();
    v23 = sub_1D9328234();

    v24 = os_log_type_enabled(v22, v23);
    v84 = v13;
    v83 = v8;
    v81 = v2;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v89[0] = v79;
      *v25 = 136446210;
      v26 = *(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);

      v27 = v23;
      v28 = sub_1D9326AA4();
      v30 = v29;

      v31 = sub_1D9293524(v28, v30, v89);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_1D928E000, v22, v27, "[%{public}s] Subscribing", v25, 0xCu);
      v32 = v79;
      __swift_destroy_boxed_opaque_existential_1Tm(v79);
      MEMORY[0x1DA72F920](v32, -1, -1);
      MEMORY[0x1DA72F920](v25, -1, -1);
    }

    BSDispatchQueueAssertMain();
    v33 = v82;
    if ((*(v1 + v20) & 1) == 0)
    {
      v34 = (v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession_configuration);
      swift_beginAccess();
      v35 = *v34;
      v36 = v34[1];
      v37 = *(v34 + 1);
      v38 = v34[16];
      sub_1D9327864();
      sub_1D9327834();
      sub_1D9327854();
      sub_1D9327844();
      v39 = v87;
      (*(v87 + 16))(v16, v18, v33);
      sub_1D92D4F98(v16);
      (*(v39 + 8))(v18, v33);
    }

    v40 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__entryAssertion;
    swift_beginAccess();
    sub_1D92973DC(v1 + v40, v89, &qword_1ECAFC850, &unk_1D932DAC0);
    v41 = v90;
    sub_1D92933A0(v89, &qword_1ECAFC850, &unk_1D932DAC0);
    if (v41)
    {
      v79 = 0;
    }

    else
    {
      sub_1D92D5190(v88);
      v42 = __swift_project_boxed_opaque_existential_1(v88, v88[3]);
      v43 = *(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);

      v44 = sub_1D9326AB4();

      v45 = *v42;
      v46 = *(v45 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__lock);
      v47 = *(v46 + 16);

      os_unfair_lock_lock(v47);
      sub_1D930C294(v44, v45, v89);
      v79 = 0;
      os_unfair_lock_unlock(*(v46 + 16));

      swift_beginAccess();
      sub_1D92C3C20(v89, v1 + v40, &qword_1ECAFC850, &unk_1D932DAC0);
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1Tm(v88);
    }

    v48 = v33;
    sub_1D92973DC(v1 + v40, v89, &qword_1ECAFC850, &unk_1D932DAC0);
    v49 = v90;
    if (v90)
    {
      v50 = __swift_project_boxed_opaque_existential_1(v89, v90);
      v51 = *(v49 - 8);
      v52 = *(v51 + 64);
      MEMORY[0x1EEE9AC00](v50);
      v54 = &v79 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v51 + 16))(v54);
      sub_1D92933A0(v89, &qword_1ECAFC850, &unk_1D932DAC0);
      v55 = *(*v54 + 24);
      v56 = *(v51 + 8);

      v56(v54, v49);
      v57 = OBJC_IVAR____TtC16ChronoUIServices19ControlArchiveEntry_entry;
      swift_beginAccess();
      v58 = *(v55 + v57);

      v59 = sub_1D9327694();

      v88[0] = v59;
      v60 = swift_allocObject();
      swift_weakInit();
      v61 = swift_allocObject();
      *(v61 + 16) = sub_1D92D9534;
      *(v61 + 24) = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC558, &qword_1D932CF20);
      sub_1D9290D60(&qword_1EDE3BF20, &qword_1ECAFC558, &qword_1D932CF20);
      sub_1D9326C94();

      swift_beginAccess();
      sub_1D9326C04();
      swift_endAccess();
    }

    else
    {
      sub_1D92933A0(v89, &qword_1ECAFC850, &unk_1D932DAC0);
    }

    v62 = v84;
    v63 = *(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);

    BSDispatchQueueAssertMain();
    v64 = v80;
    v65 = *(v80 + 104);
    v66 = v86;
    v67 = v81;
    v65(v86, *MEMORY[0x1E6993F90], v81);
    if (*(v1 + v85) == 1)
    {
      v68 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_visibility;
      swift_beginAccess();
      v69 = *(v1 + v68);
      v62 = v84;
      if (v69 == 2)
      {
        (*(v64 + 8))(v66, v67);
        v65(v66, *MEMORY[0x1E6993FA0], v67);
      }
    }

    (*(v64 + 32))(v83, v66, v67);
    v70 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_visibility;
    swift_beginAccess();
    v71 = *(v1 + v70);
    v72 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__environmentModifiers;
    swift_beginAccess();
    v73 = v48;
    (*(v87 + 16))(v62, v1 + v72, v48);
    sub_1D92D959C(&qword_1EDE3BCC0, MEMORY[0x1E6993E88]);
    v74 = v79;
    sub_1D9327F04();
    if (v74)
    {
    }

    sub_1D9326BA4();
    (*(v87 + 8))(v62, v73);
    v75 = sub_1D9326B94();
    *(v1 + v85) = 1;
    sub_1D929CF00(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__client, v89);
    v76 = v90;
    v77 = v91;
    __swift_project_boxed_opaque_existential_1(v89, v90);
    v78 = *(v77 + 32);

    v78(v75, sub_1D92D952C, v1, v76, v77);

    return __swift_destroy_boxed_opaque_existential_1Tm(v89);
  }

  return result;
}

uint64_t sub_1D92D6748()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC890, &qword_1D932DB80);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v19[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC860, &qword_1D932DAD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC928, &qword_1D932DC60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v19[-v11];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__invalidated))
    {
    }

    else
    {
      v14 = *(result + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__contentDidChangePublisher);
      v15 = result;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC830, &qword_1D932CC10);
      sub_1D9290D60(&qword_1EDE3DA98, &unk_1ECAFC830, &qword_1D932CC10);
      sub_1D9326C54();

      v16 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__contentUpdateStreamContinuation;
      swift_beginAccess();
      sub_1D92973DC(v15 + v16, v8, &unk_1ECAFC860, &qword_1D932DAD0);
      if ((*(v1 + 48))(v8, 1, v0))
      {

        sub_1D92933A0(v8, &unk_1ECAFC860, &qword_1D932DAD0);
        v17 = 1;
      }

      else
      {
        (*(v1 + 16))(v4, v8, v0);
        sub_1D92933A0(v8, &unk_1ECAFC860, &qword_1D932DAD0);
        v19[15] = 1;
        sub_1D9328114();

        (*(v1 + 8))(v4, v0);
        v17 = 0;
      }

      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC930, &unk_1D932DC68);
      (*(*(v18 - 8) + 56))(v12, v17, 1, v18);
      return sub_1D92933A0(v12, &qword_1ECAFC928, &qword_1D932DC60);
    }
  }

  return result;
}

void sub_1D92D6AB8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a2;
  v8[4] = sub_1D92DA0FC;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1D9290DB0;
  v8[3] = &block_descriptor_93;
  v6 = _Block_copy(v8);

  v7 = a2;

  BSDispatchMain();
  _Block_release(v6);
}

void sub_1D92D6B94(uint64_t a1, NSObject *a2)
{
  if (*(a1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__invalidated) == 1)
  {
    if (qword_1EDE3BF70 != -1)
    {
      swift_once();
    }

    v3 = sub_1D9326BE4();
    __swift_project_value_buffer(v3, qword_1EDE400B8);

    oslog = sub_1D9326BC4();
    v4 = sub_1D9328234();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v37 = v6;
      *v5 = 136446210;
      v7 = *(a1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);

      v8 = sub_1D9326AA4();
      v10 = v9;

      v11 = sub_1D9293524(v8, v10, &v37);

      *(v5 + 4) = v11;
      v12 = "[%{public}s] Ignoring subscription result; we were invalidated while subscribing.";
LABEL_15:
      _os_log_impl(&dword_1D928E000, oslog, v4, v12, v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x1DA72F920](v6, -1, -1);
      MEMORY[0x1DA72F920](v5, -1, -1);

      return;
    }
  }

  else
  {
    if (a2)
    {
      *(a1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__started) = 0;
      v14 = a2;
      if (qword_1EDE3BF70 != -1)
      {
        swift_once();
      }

      v15 = sub_1D9326BE4();
      __swift_project_value_buffer(v15, qword_1EDE400B8);

      v16 = a2;
      v17 = sub_1D9326BC4();
      v18 = sub_1D9328214();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v37 = v21;
        *v19 = 136446466;
        v22 = *(a1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);

        v23 = sub_1D9326AA4();
        v25 = v24;

        v26 = sub_1D9293524(v23, v25, &v37);

        *(v19 + 4) = v26;
        *(v19 + 12) = 2114;
        v27 = a2;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 14) = v28;
        *v20 = v28;
        _os_log_impl(&dword_1D928E000, v17, v18, "[%{public}s] Error subscribing to session: %{public}@", v19, 0x16u);
        sub_1D92933A0(v20, &qword_1ECAFC510, &qword_1D932CEE0);
        MEMORY[0x1DA72F920](v20, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        MEMORY[0x1DA72F920](v21, -1, -1);
        MEMORY[0x1DA72F920](v19, -1, -1);

        return;
      }

      v35 = a2;

      goto LABEL_18;
    }

    if (qword_1EDE3BF70 != -1)
    {
      swift_once();
    }

    v29 = sub_1D9326BE4();
    __swift_project_value_buffer(v29, qword_1EDE400B8);

    oslog = sub_1D9326BC4();
    v4 = sub_1D9328234();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v37 = v6;
      *v5 = 136446210;
      v30 = *(a1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);

      v31 = sub_1D9326AA4();
      v33 = v32;

      v34 = sub_1D9293524(v31, v33, &v37);

      *(v5 + 4) = v34;
      v12 = "[%{public}s] Subscribed";
      goto LABEL_15;
    }
  }

  v35 = oslog;

LABEL_18:
}

uint64_t sub_1D92D7074(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for SetControlStateRequest();
  v3[10] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D92D710C, 0, 0);
}

uint64_t sub_1D92D710C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = *(v4 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);
  v7 = *(v2 + 20);
  v8 = sub_1D9327A94();
  (*(*(v8 - 8) + 16))(&v1[v7], v3, v8);
  *v1 = v6;
  *&v1[*(v2 + 24)] = v5;
  sub_1D929CF00(v4 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__client, (v0 + 2));
  v9 = v0[5];
  v10 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v9);
  v11 = *(v10 + 72);

  v16 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_1D92D72D4;
  v14 = v0[11];

  return v16(v14, v9, v10);
}

uint64_t sub_1D92D72D4()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1D92D7474;
  }

  else
  {
    v3 = sub_1D92D73E8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D92D73E8()
{
  sub_1D92D953C(v0[11], type metadata accessor for SetControlStateRequest);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D92D7474()
{
  sub_1D92D953C(v0[11], type metadata accessor for SetControlStateRequest);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = v0[1];
  v2 = v0[13];

  return v1();
}

uint64_t sub_1D92D7500(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = type metadata accessor for PerformControlActionRequest();
  v2[12] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D92D7594, 0, 0);
}

uint64_t sub_1D92D7594()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = *(v4 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);
  v6 = *(v2 + 20);
  v7 = sub_1D9327A94();
  (*(*(v7 - 8) + 16))(&v1[v6], v3, v7);
  v8 = v4 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession_configuration;
  swift_beginAccess();
  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  v11 = &v1[*(v2 + 24)];
  *v1 = v5;
  *v11 = v9;
  *(v11 + 1) = v10;
  sub_1D929CF00(v4 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__client, (v0 + 2));
  v12 = v0[5];
  v13 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v12);
  v14 = *(v13 + 80);

  v19 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v0[14] = v16;
  *v16 = v0;
  v16[1] = sub_1D92D7784;
  v17 = v0[13];

  return v19(v17, v12, v13);
}

uint64_t sub_1D92D7784()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1D92D7924;
  }

  else
  {
    v3 = sub_1D92D7898;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D92D7898()
{
  sub_1D92D953C(v0[13], type metadata accessor for PerformControlActionRequest);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D92D7924()
{
  sub_1D92D953C(v0[13], type metadata accessor for PerformControlActionRequest);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = v0[1];
  v2 = v0[15];

  return v1();
}

uint64_t sub_1D92D79B0()
{
  v1 = v0;
  result = BSDispatchQueueAssertMain();
  v3 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__invalidated;
  if ((*(v0 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__invalidated) & 1) == 0)
  {
    if (qword_1EDE3BF70 == -1)
    {
      goto LABEL_3;
    }

    while (1)
    {
      swift_once();
LABEL_3:
      v4 = sub_1D9326BE4();
      __swift_project_value_buffer(v4, qword_1EDE400B8);

      v5 = sub_1D9326BC4();
      v6 = sub_1D9328234();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *&v44 = v8;
        *v7 = 136446210;
        v9 = *(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);

        v10 = sub_1D9326AA4();
        v12 = v11;

        v13 = sub_1D9293524(v10, v12, &v44);

        *(v7 + 4) = v13;
        _os_log_impl(&dword_1D928E000, v5, v6, "[%{public}s] Invalidated", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v8);
        MEMORY[0x1DA72F920](v8, -1, -1);
        MEMORY[0x1DA72F920](v7, -1, -1);
      }

      v46 = 0;
      v44 = 0u;
      v45 = 0u;
      v14 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__entryAssertion;
      swift_beginAccess();
      sub_1D92C3C20(&v44, v1 + v14, &qword_1ECAFC850, &unk_1D932DAC0);
      swift_endAccess();
      *(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__started) = 0;
      *(v1 + v3) = 1;
      v15 = *(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__descriptorProvider);
      v16 = *(v15 + 72);
      v17 = *(v16 + 16);

      os_unfair_lock_lock(v17);
      [*(v15 + 80) removeObject_];
      os_unfair_lock_unlock(*(v16 + 16));

      v18 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__cancellables;
      swift_beginAccess();
      v40 = v18;
      v19 = *(v1 + v18);
      if ((v19 & 0xC000000000000001) != 0)
      {
        if (v19 < 0)
        {
          v20 = *(v1 + v18);
        }

        swift_unknownObjectRetain();
        sub_1D93283E4();
        sub_1D9326C24();
        sub_1D92D959C(&qword_1ECAFC520, MEMORY[0x1E695BF10]);
        sub_1D93281E4();
        v21 = *(&v44 + 1);
        v22 = v44;
        v24 = *(&v45 + 1);
        v23 = v45;
        v3 = v46;
      }

      else
      {
        v25 = -1 << *(v19 + 32);
        v21 = v19 + 56;
        v23 = ~v25;
        v26 = -v25;
        v27 = v26 < 64 ? ~(-1 << v26) : -1;
        v3 = v27 & *(v19 + 56);
        swift_bridgeObjectRetain_n();
        v24 = 0;
        v22 = v19;
      }

      v28 = (v23 + 64) >> 6;
      if (v22 < 0)
      {
        break;
      }

LABEL_14:
      v29 = v24;
      v30 = v3;
      v31 = v24;
      if (v3)
      {
LABEL_18:
        v32 = (v30 - 1) & v30;
        v33 = *(*(v22 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v30)))));

        if (v33)
        {
          goto LABEL_22;
        }

        goto LABEL_24;
      }

      while (1)
      {
        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v31 >= v28)
        {
          goto LABEL_24;
        }

        v30 = *(v21 + 8 * v31);
        ++v29;
        if (v30)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    while (sub_1D93283F4())
    {
      sub_1D9326C24();
      swift_dynamicCast();
      v31 = v24;
      v32 = v3;
      if (!v41[0])
      {
        break;
      }

LABEL_22:
      sub_1D9326C14();

      v24 = v31;
      v3 = v32;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_14;
      }
    }

LABEL_24:
    sub_1D92C9738();

    v34 = *(v1 + v40);
    *(v1 + v40) = MEMORY[0x1E69E7CD0];

    sub_1D929CF00(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__client, v41);
    v35 = v42;
    v36 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v37 = *(v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);
    v38 = *(v36 + 40);

    v38(v39, v35, v36);

    return __swift_destroy_boxed_opaque_existential_1Tm(v41);
  }

  return result;
}

id sub_1D92D7F30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ControlSessionDescriptorProvider._ExtensionObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D92D7F78()
{
  sub_1D9326B54();
  sub_1D9326B44();
  type metadata accessor for ControlSessionDescriptorProvider();
  swift_allocObject();
  result = sub_1D92D7FDC(v1, 1);
  qword_1EDE3C080 = result;
  return result;
}

uint64_t sub_1D92D7FDC(uint64_t *a1, char a2)
{
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *v6 = 0;
  *(v5 + 16) = v6;
  *(v2 + 72) = v5;
  *(v2 + 80) = [objc_opt_self() weakObjectsHashTable];
  sub_1D929CF00(a1, v2 + 32);
  v7 = [objc_allocWithZone(MEMORY[0x1E6994250]) initIncludingVisible:1 hidden:0];
  v8 = v7;
  if (a2)
  {
    [v7 setIncludeRemote_];
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E69943D0]) initWithWidgetsPredicate:0 controlsPredicate:v8 includeIntents:1];
  *(v2 + 16) = [objc_allocWithZone(MEMORY[0x1E69943C0]) initWithOptions_];
  v10 = [objc_allocWithZone(type metadata accessor for ControlSessionDescriptorProvider._ExtensionObserver()) init];
  *(v2 + 24) = v10;
  [*(v2 + 16) registerObserver_];

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

void sub_1D92D8130()
{
  v1 = *(v0 + 72);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = [*(v0 + 80) allObjects];
  type metadata accessor for ControlSession();
  v3 = sub_1D9328024();

  os_unfair_lock_unlock(*(v1 + 16));
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v0;
  v6[4] = sub_1D92DA0A8;
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1D9290DB0;
  v6[3] = &block_descriptor_87;
  v5 = _Block_copy(v6);

  BSDispatchMain();

  _Block_release(v5);
}

void sub_1D92D8258(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v13 = a2;
    v14 = sub_1D9328544();
    a2 = v13;
    v3 = v14;
    if (!v14)
    {
      return;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    v5 = *(a2 + 16);
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1DA72EA00](v4, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v4 + 32);
      }

      BSDispatchQueueAssertMain();
      v9 = *(v8 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);

      v10 = sub_1D9326AC4();

      v11 = [v10 control];

      v12 = [v5 controlDescriptorForControl_];
      if (v12)
      {
        swift_beginAccess();
        v6 = *(v8 + 32);
        *(v8 + 32) = v12;
        v7 = v12;
        sub_1D92D34F0(v6);
      }

      else
      {
      }

      ++v4;
    }

    while (v3 != v4);
  }
}

void sub_1D92D83E8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC910, &qword_1D932E360);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - v8;
  BSDispatchQueueAssertMain();
  v10 = *(v2 + 16);
  v11 = *(a1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);

  v12 = sub_1D9326AC4();

  v13 = [v12 control];

  v14 = [v10 controlDescriptorForControl_];
  if (v14)
  {
    swift_beginAccess();
    v15 = *(a1 + 32);
    *(a1 + 32) = v14;
    v16 = v14;
    sub_1D92D34F0(v15);
  }

  else if (a2)
  {
    v17 = sub_1D93280D4();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v3;
    v18[5] = a1;

    sub_1D92F08E8(0, 0, v9, &unk_1D932DC58, v18);
  }
}

uint64_t sub_1D92D85D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D92D85F4, 0, 0);
}

uint64_t sub_1D92D85F4()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v1[7];
  v4 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v3);
  v5 = *(v2 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey);

  v6 = sub_1D9326AC4();

  v7 = [v6 control];
  v0[10] = v7;

  v8 = *(MEMORY[0x1E6994168] + 4);
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_1D92D8704;

  return MEMORY[0x1EEDF3B90](v7, v3, v4);
}

uint64_t sub_1D92D8704(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *v2;
  *(*v2 + 96) = a1;

  v6 = *(v3 + 80);
  if (v1)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D92D8874, 0, 0);
  }
}

uint64_t sub_1D92D8874()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[9];
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v0[6] = sub_1D92DA0A0;
    v0[7] = v3;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1D9290DB0;
    v0[5] = &block_descriptor_0;
    v4 = _Block_copy(v0 + 2);
    v5 = v0[7];

    v6 = v1;

    BSDispatchMain();
    _Block_release(v4);
  }

  v7 = v0[1];

  return v7();
}

void sub_1D92D898C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 32);
  *(a1 + 32) = a2;
  v5 = a2;
  sub_1D92D34F0(v4);
}

uint64_t sub_1D92D89EC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v1 = *(v0 + 72);

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t sub_1D92D8A44(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1D92D8AB8(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1D9293524(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1D92D8B14(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D92D8B60(a1, a2);
  sub_1D92D8C90(&unk_1F54C0250);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1D92D8B60(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D92D8D7C(v5, 0);
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

  result = sub_1D9328494();
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
        v10 = sub_1D9327FD4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D92D8D7C(v10, 0);
        result = sub_1D9328434();
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

uint64_t sub_1D92D8C90(uint64_t result)
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

  result = sub_1D92D8DF0(result, v12, 1, v3);
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

void *sub_1D92D8D7C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC940, &qword_1D932DC78);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1D92D8DF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC940, &qword_1D932DC78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

_BYTE **sub_1D92D8EE4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_1D92D8EF4(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v70 = a4;
  v71 = a2;
  v60 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC860, &qword_1D932DAD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v69 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC948, &unk_1D932DC80);
  v67 = *(v10 - 8);
  v68 = v10;
  v11 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC890, &qword_1D932DB80);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v53 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC840, &qword_1D932DAB8);
  v62 = *(v17 - 8);
  v63 = v17;
  v18 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v58 = &v53 - v19;
  v20 = sub_1D9327874();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a3;
  v26 = a3[1];
  v56 = *(a3 + 1);
  v55 = a3[16];
  v27 = *(a3 + 4);
  v54 = *(a3 + 3);
  v53 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC830, &qword_1D932CC10);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_1D9326C44();
  v5[3] = 0;
  v5[4] = 0;
  v5[2] = v31;
  v64 = v14;
  v32 = *(v14 + 56);
  v59 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__contentUpdateStreamContinuation;
  v66 = v13;
  v57 = v32;
  v32(v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__contentUpdateStreamContinuation, 1, 1, v13);
  v33 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession__contentDidChangePublisher;
  v34 = *(v28 + 48);
  v35 = *(v28 + 52);
  swift_allocObject();
  *(v5 + v33) = sub_1D9326C44();
  *(v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession____lazy_storage___contentDidChangePublisher) = 0;
  *(v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession_visibility) = 0;
  v36 = v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__testArchiveService;
  *v36 = 0u;
  *(v36 + 1) = 0u;
  *(v36 + 4) = 0;
  *(v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__invalidated) = 0;
  *(v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__started) = 0;
  *(v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__cancellables) = MEMORY[0x1E69E7CD0];
  v37 = v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__entryAssertion;
  *v37 = 0u;
  *(v37 + 1) = 0u;
  *(v37 + 4) = 0;
  v38 = v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession_configuration;
  *v38 = v25;
  v38[1] = v26;
  v39 = v60;
  *(v38 + 1) = v56;
  v38[16] = v55;
  v40 = v53;
  *(v38 + 3) = v54;
  *(v38 + 4) = v40;
  *(v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__sessionKey) = v39;
  sub_1D929CF00(v71, v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__client);
  v41 = qword_1EDE3C070;

  if (v41 != -1)
  {
    swift_once();
  }

  *(v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__descriptorProvider) = qword_1EDE3C080;
  v42 = v70;
  sub_1D929CF00(v70, v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__keybagStateProvider);
  swift_beginAccess();
  v43 = v5[4];
  v5[4] = 0;

  sub_1D9327864();
  (*(v21 + 32))(v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__environmentModifiers, v24, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC880, &qword_1D932DB78);
  v45 = v67;
  v44 = v68;
  v46 = v65;
  (*(v67 + 104))(v65, *MEMORY[0x1E69E8650], v68);
  v47 = v58;
  v48 = v61;
  sub_1D93280E4();
  (*(v45 + 8))(v46, v44);
  v49 = v69;
  v50 = v66;
  (*(v64 + 32))(v69, v48, v66);
  v57(v49, 0, 1, v50);
  (*(v62 + 32))(v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession_contentUpdateStream, v47, v63);
  v51 = v59;
  swift_beginAccess();
  sub_1D92C3C20(v49, v5 + v51, &unk_1ECAFC860, &qword_1D932DAD0);
  swift_endAccess();
  sub_1D92D5384(v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  __swift_destroy_boxed_opaque_existential_1Tm(v71);
  return v5;
}

uint64_t sub_1D92D953C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D92D959C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ControlSession()
{
  result = qword_1EDE3D848;
  if (!qword_1EDE3D848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D92D9638()
{
  sub_1D92D9F34(319, &qword_1EDE3BC28, &unk_1ECAFC880, &qword_1D932DB78, MEMORY[0x1E69E8698]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1D92D9F34(319, &qword_1EDE3BC38, &unk_1ECAFC890, &qword_1D932DB80, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_1D9327874();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of ControlSession.setControlState(_:action:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 728);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D92D9CEC;

  return v10(a1, a2);
}

uint64_t sub_1D92D9CEC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of ControlSession.performControlAction(_:)(uint64_t a1)
{
  v4 = *(*v1 + 736);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D92DA198;

  return v8(a1);
}

void sub_1D92D9F34(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_1D92D9FE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D92D9CEC;

  return sub_1D92D85D4(a1, v4, v5, v7, v6);
}

unint64_t sub_1D92DA0B0()
{
  result = qword_1ECAFC920;
  if (!qword_1ECAFC920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAFC920);
  }

  return result;
}

uint64_t objectdestroy_83Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x1EEE6BDD0](v2, 32, 7);
}

void sub_1D92DA160()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_1D92D83E8(v1, 1);
}

double WidgetVisibility.bounds.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  return result;
}

void WidgetVisibility.bounds.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

void __swiftcall WidgetVisibility.init(isSettled:bounds:)(ChronoUIServices::WidgetVisibility *__return_ptr retstr, Swift::Bool isSettled, __C::CGRect bounds)
{
  retstr->isSettled = isSettled;
  retstr->isFocal = 0;
  retstr->bounds = bounds;
}

void __swiftcall WidgetVisibility.init(isSettled:isFocal:bounds:)(ChronoUIServices::WidgetVisibility *__return_ptr retstr, Swift::Bool isSettled, Swift::Bool isFocal, __C::CGRect bounds)
{
  retstr->isSettled = isSettled;
  retstr->isFocal = isFocal;
  retstr->bounds = bounds;
}

uint64_t WidgetVisibility.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  sub_1D9328744();
  sub_1D9328744();
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x1DA72ED00](*&v7);
  if (v4 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v4;
  }

  MEMORY[0x1DA72ED00](*&v8);
  v12.origin.x = v3;
  v12.origin.y = v4;
  v12.size.width = v5;
  v12.size.height = v6;
  Width = CGRectGetWidth(v12);
  if (Width == 0.0)
  {
    Width = 0.0;
  }

  MEMORY[0x1DA72ED00](*&Width);
  v13.origin.x = v3;
  v13.origin.y = v4;
  v13.size.width = v5;
  v13.size.height = v6;
  Height = CGRectGetHeight(v13);
  if (Height == 0.0)
  {
    Height = 0.0;
  }

  return MEMORY[0x1DA72ED00](*&Height);
}

uint64_t WidgetVisibility.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = *(v0 + 4);
  sub_1D9328444();
  MEMORY[0x1DA72E570](0xD00000000000001DLL, 0x80000001D93369F0);
  if (v1)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v1)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1DA72E570](v7, v8);

  MEMORY[0x1DA72E570](0x61636F467369202CLL, 0xEA00000000003D6CLL);
  if (v2)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v2)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1DA72E570](v9, v10);

  MEMORY[0x1DA72E570](0x73646E756F62202CLL, 0xE90000000000003DLL);
  v11 = sub_1D9328304();
  MEMORY[0x1DA72E570](v11);

  MEMORY[0x1DA72E570](62, 0xE100000000000000);
  return 0;
}

BOOL static WidgetVisibility.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    return CGRectEqualToRect(*(a1 + 8), *(a2 + 8));
  }

  return v2;
}

uint64_t WidgetVisibility.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 8);
  v5 = *(v0 + 24);
  sub_1D9328724();
  WidgetVisibility.hash(into:)();
  return sub_1D9328764();
}

uint64_t sub_1D92DA558()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 8);
  v5 = *(v0 + 24);
  sub_1D9328724();
  WidgetVisibility.hash(into:)();
  return sub_1D9328764();
}

uint64_t sub_1D92DA5BC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 8);
  v5 = *(v0 + 24);
  sub_1D9328724();
  WidgetVisibility.hash(into:)();
  return sub_1D9328764();
}

unint64_t sub_1D92DA61C()
{
  result = qword_1ECAFC9B0;
  if (!qword_1ECAFC9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFC9B0);
  }

  return result;
}

BOOL sub_1D92DA674(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    return CGRectEqualToRect(*(a1 + 8), *(a2 + 8));
  }

  return v2;
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

uint64_t sub_1D92DA708()
{
  type metadata accessor for ControlArchiveService();
  swift_allocObject();
  result = sub_1D92DA744();
  qword_1EDE40128 = result;
  return result;
}

uint64_t sub_1D92DA744()
{
  v146 = sub_1D9328274();
  v1 = *(*(v146 - 8) + 64);
  MEMORY[0x1EEE9AC00](v146);
  v145 = &v111 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_1D9328294();
  v153 = *(v143 - 8);
  v3 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v144 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9327654();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v142 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_1D9326BE4();
  v156 = *(v154 - 8);
  v8 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v154);
  v157 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9327B64();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE3C588 != -1)
  {
    swift_once();
  }

  v147 = v0;
  sub_1D929CF00(&qword_1EDE400D0, &v169);
  sub_1D9326B84();
  sub_1D9326B74();
  v15 = sub_1D93278B4();
  sub_1D929CF00(&v168, &v165);
  v138 = v15;
  v149 = sub_1D93278A4();
  v16 = sub_1D9327924();
  (*(v11 + 104))(v14, *MEMORY[0x1E6985998], v10);
  v167 = 0;
  v165 = 0u;
  v166 = 0u;
  v17 = sub_1D9327914();
  v18 = sub_1D9327964();
  v19 = sub_1D9327954();
  v20 = type metadata accessor for ClientEnvironmentProviderFactory();
  v140 = v10;
  v151 = v11;
  v21 = v170;
  v22 = v171;
  v23 = __swift_project_boxed_opaque_existential_1(&v169, v170);
  v24 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v139 = v14;
  v26 = &v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26);
  v28 = *(v22 + 8);
  v136 = v20;
  v152 = sub_1D929C790(v26, v20, v21, v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9B8, &qword_1D932DDF8);
  *(&v166 + 1) = v18;
  v167 = MEMORY[0x1E6993F48];
  *&v165 = v19;
  sub_1D9327774();
  sub_1D9327734();
  sub_1D92DBC88(&qword_1EDE3BCD0, MEMORY[0x1E6993DC8]);
  v132 = v19;

  v30 = sub_1D9327944();
  v31 = MEMORY[0x1DA72DEE0](0xD000000000000010, 0x80000001D9336280, &v165, v30);
  v32 = sub_1D9327824();
  v131 = v29;
  *(&v166 + 1) = v29;
  v128 = sub_1D9290D60(&unk_1EDE3BCB0, &qword_1ECAFC9B8, &qword_1D932DDF8);
  v167 = v128;
  v164 = MEMORY[0x1E6993F30];
  *&v165 = v31;
  v150 = v16;
  v163 = v16;
  v162 = v17;
  v33 = objc_opt_self();
  v141 = v31;

  v155 = v17;

  v129 = v33;
  v34 = [v33 defaultManager];
  v130 = v32;
  v148 = sub_1D9327814();
  if (qword_1EDE3BF68 != -1)
  {
    swift_once();
  }

  v35 = v154;
  v36 = __swift_project_value_buffer(v154, qword_1EDE400A0);
  v38 = v156 + 16;
  v37 = *(v156 + 16);
  v37(v157, v36, v35);
  v39 = v170;
  v40 = v171;
  __swift_project_boxed_opaque_existential_1(&v169, v170);
  v41 = *(v40 + 24);
  v42 = v155;
  swift_retain_n();
  v43 = v149;
  swift_retain_n();
  v44 = v152;

  v133 = v41(v39, v40);
  *(&v166 + 1) = v150;
  v167 = MEMORY[0x1E6993F30];
  *&v165 = v42;
  v163 = v138;
  v164 = MEMORY[0x1E6993EA8];
  v162 = v43;
  v160 = v136;
  v127 = sub_1D92DBC88(qword_1EDE3C088, type metadata accessor for ClientEnvironmentProviderFactory);
  v161 = v127;
  v159 = v44;
  v137 = type metadata accessor for ControlArchiveServiceStore();
  v45 = *(v137 + 48);
  v46 = *(v137 + 52);
  v47 = swift_allocObject();
  v48 = MEMORY[0x1E69E7CC0];
  *(v47 + 16) = sub_1D92C617C(MEMORY[0x1E69E7CC0]);
  v49 = OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__lock;
  v125 = type metadata accessor for UnfairLock();
  v50 = swift_allocObject();
  v51 = swift_slowAlloc();
  *v51 = 0;
  *(v50 + 16) = v51;
  *(v47 + v49) = v50;
  *(v47 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__subscriptions) = MEMORY[0x1E69E7CD0];
  v52 = v154;
  v135 = v38;
  v134 = v37;
  v37((v47 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__logger), v157, v154);
  sub_1D929CF00(&v165, v47 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionProvider);
  sub_1D929CF00(&v162, v47 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor);
  sub_1D929CF00(&v159, v47 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__environmentFactory);
  v53 = (v47 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__cacheReader);
  v54 = sub_1D92DBC88(&qword_1EDE3BCC8, MEMORY[0x1E6993E80]);
  *v53 = v148;
  v53[1] = v54;
  v123 = v54;
  v55 = (v47 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__placeholderCacheReader);
  v56 = sub_1D92DBC3C();
  *v55 = 0;
  v55[1] = 0;
  sub_1D9327644();
  v57 = *(v153 + 104);
  v122 = *MEMORY[0x1E69E8098];
  v153 += 104;
  v121 = v57;
  v57(v144);
  v158 = v48;
  v58 = sub_1D92DBC88(&qword_1EDE3BC20, MEMORY[0x1E69E8030]);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9C0, &qword_1D932DE00);
  v60 = sub_1D9290D60(&qword_1EDE3BC48, &qword_1ECAFC9C0, &qword_1D932DE00);
  v119 = v59;
  v118 = v60;
  v120 = v58;
  sub_1D93283C4();
  v124 = "veService";
  v126 = v56;
  *(v47 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__queue) = sub_1D93282C4();
  v61 = (v47 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor);
  v62 = *(v47 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor + 32);
  v63 = v52;
  __swift_project_boxed_opaque_existential_1((v47 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor), *(v47 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor + 24));
  v64 = v139;
  sub_1D93278D4();
  v65 = *(v151 + 32);
  v151 += 32;
  v117 = v65;
  v65(v47 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__lock_currentDataProtectionLevel, v64, v140);
  v66 = v61[4];
  __swift_project_boxed_opaque_existential_1(v61, v61[3]);
  v158 = sub_1D93278C4();
  swift_allocObject();
  v67 = v156;
  swift_weakInit();

  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9C8, &qword_1D932DE08);
  v69 = sub_1D9290D60(&qword_1EDE3BF30, &qword_1ECAFC9C8, &qword_1D932DE08);
  v116 = v68;
  v115 = v69;
  sub_1D9326C94();

  swift_beginAccess();
  sub_1D9326C04();
  swift_endAccess();

  v158 = v133;
  swift_allocObject();
  swift_weakInit();

  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9D0, &qword_1D932DE10);
  v71 = v63;
  v72 = sub_1D9290D60(&qword_1EDE3BF28, &qword_1ECAFC9D0, &qword_1D932DE10);
  v114 = v70;
  v113 = v72;
  sub_1D9326C94();

  swift_beginAccess();
  sub_1D9326C04();
  swift_endAccess();

  v73 = *(v67 + 8);
  v156 = v67 + 8;
  v112 = v73;
  v73(v157, v63);
  __swift_destroy_boxed_opaque_existential_1Tm(&v159);
  __swift_destroy_boxed_opaque_existential_1Tm(&v162);
  __swift_destroy_boxed_opaque_existential_1Tm(&v165);
  v74 = v155;

  v75 = v149;

  v76 = v147;
  *(v147 + 80) = v137;
  *(v76 + 88) = &off_1F54C2278;
  *(v76 + 56) = v47;
  v77 = v128;
  v78 = v131;
  *(&v166 + 1) = v131;
  v167 = v128;
  v79 = v141;
  *&v165 = v141;
  v80 = MEMORY[0x1E6993F30];
  v81 = v150;
  v163 = v150;
  v164 = MEMORY[0x1E6993F30];
  v162 = v74;

  v82 = v129;
  v83 = [v129 defaultManager];
  v133 = sub_1D9327814();
  *(&v166 + 1) = v78;
  v167 = v77;
  v164 = v80;
  *&v165 = v79;
  v163 = v81;
  v162 = v74;

  v84 = [v82 defaultManager];
  v85 = sub_1D9327814();
  if (qword_1EDE3BF58 != -1)
  {
    swift_once();
  }

  v86 = __swift_project_value_buffer(v71, qword_1EDE40070);
  v134(v157, v86, v71);
  v87 = v170;
  v88 = v171;
  __swift_project_boxed_opaque_existential_1(&v169, v170);
  v89 = *(v88 + 16);
  v90 = v155;

  v91 = v152;

  v92 = v133;

  v131 = v89(v87, v88);
  *(&v166 + 1) = v150;
  v167 = MEMORY[0x1E6993F30];
  *&v165 = v90;
  v163 = v138;
  v164 = MEMORY[0x1E6993EA8];
  v161 = v127;
  v162 = v75;
  v160 = v136;
  v159 = v91;
  v93 = v137;
  v94 = *(v137 + 48);
  v95 = *(v137 + 52);
  v96 = swift_allocObject();
  v97 = MEMORY[0x1E69E7CC0];
  *(v96 + 16) = sub_1D92C617C(MEMORY[0x1E69E7CC0]);
  v98 = OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__lock;
  v99 = swift_allocObject();
  v100 = swift_slowAlloc();
  *v100 = 0;
  *(v99 + 16) = v100;
  *(v96 + v98) = v99;
  *(v96 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__subscriptions) = MEMORY[0x1E69E7CD0];
  v101 = v157;
  v134((v96 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__logger), v157, v154);
  sub_1D929CF00(&v165, v96 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionProvider);
  sub_1D929CF00(&v162, v96 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor);
  sub_1D929CF00(&v159, v96 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__environmentFactory);
  v102 = (v96 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__cacheReader);
  v103 = v123;
  *v102 = v92;
  v102[1] = v103;
  v104 = (v96 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__placeholderCacheReader);
  v130 = v85;
  *v104 = v85;
  v104[1] = v103;

  sub_1D9327644();
  v121(v144, v122, v143);
  v158 = v97;
  sub_1D93283C4();
  *(v96 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__queue) = sub_1D93282C4();
  v105 = (v96 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor);
  v106 = *(v96 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor + 32);
  __swift_project_boxed_opaque_existential_1((v96 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor), *(v96 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__dataProtectionMonitor + 24));
  v107 = v139;
  sub_1D93278D4();
  v117(v96 + OBJC_IVAR____TtC16ChronoUIServices26ControlArchiveServiceStore__lock_currentDataProtectionLevel, v107, v140);
  v108 = v105[4];
  __swift_project_boxed_opaque_existential_1(v105, v105[3]);
  v158 = sub_1D93278C4();
  swift_allocObject();
  swift_weakInit();

  sub_1D9326C94();

  swift_beginAccess();
  sub_1D9326C04();
  swift_endAccess();

  v158 = v131;
  swift_allocObject();
  swift_weakInit();

  sub_1D9326C94();

  swift_beginAccess();
  sub_1D9326C04();
  swift_endAccess();

  v112(v101, v154);
  __swift_destroy_boxed_opaque_existential_1Tm(&v159);
  __swift_destroy_boxed_opaque_existential_1Tm(&v162);
  __swift_destroy_boxed_opaque_existential_1Tm(&v165);
  *(&v166 + 1) = v93;
  v167 = &off_1F54C2278;

  *&v165 = v96;

  __swift_destroy_boxed_opaque_existential_1Tm(&v168);
  v109 = v147;
  sub_1D92DA1A8(&v165, v147 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(&v169);
  return v109;
}

uint64_t sub_1D92DBBD8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

unint64_t sub_1D92DBC3C()
{
  result = qword_1EDE3BC10;
  if (!qword_1EDE3BC10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE3BC10);
  }

  return result;
}

uint64_t sub_1D92DBC88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D92DBCDC()
{
  sub_1D9326B54();
  sub_1D9326B44();
  v0 = type metadata accessor for ControlsUIClient();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1D92DBE60(v4);
  qword_1EDE400E8 = v0;
  unk_1EDE400F0 = &off_1F54C0D48;
  qword_1EDE400D0 = result;
  return result;
}

uint64_t sub_1D92DBD84()
{
  v1 = OBJC_IVAR____TtC16ChronoUIServicesP33_9C5D490F554C1DF35FE4BAD1CD7D6C7D16ControlsUIClient____lazy_storage___systemEnvironmentDidChangePublisher;
  if (*(v0 + OBJC_IVAR____TtC16ChronoUIServicesP33_9C5D490F554C1DF35FE4BAD1CD7D6C7D16ControlsUIClient____lazy_storage___systemEnvironmentDidChangePublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16ChronoUIServicesP33_9C5D490F554C1DF35FE4BAD1CD7D6C7D16ControlsUIClient____lazy_storage___systemEnvironmentDidChangePublisher);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC16ChronoUIServicesP33_9C5D490F554C1DF35FE4BAD1CD7D6C7D16ControlsUIClient__calloutQueue_systemEnvironmentDidChangePublisher);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9F8, &unk_1D932FA80);
    sub_1D9290D60(&unk_1EDE3BF10, &qword_1ECAFC9F8, &unk_1D932FA80);
    v3 = v0;
    v2 = sub_1D9326C64();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1D92DBE60(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1D9327034();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for UnfairLock();
  v9 = swift_allocObject();
  v10 = swift_slowAlloc();
  *v10 = 0;
  *(v9 + 16) = v10;
  *(v2 + 24) = v9;
  v11 = OBJC_IVAR____TtC16ChronoUIServicesP33_9C5D490F554C1DF35FE4BAD1CD7D6C7D16ControlsUIClient__calloutQueue_systemEnvironmentDidChangePublisher;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9F8, &unk_1D932FA80);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v2 + v11) = sub_1D9326C44();
  *(v2 + OBJC_IVAR____TtC16ChronoUIServicesP33_9C5D490F554C1DF35FE4BAD1CD7D6C7D16ControlsUIClient____lazy_storage___systemEnvironmentDidChangePublisher) = 0;
  sub_1D929CF00(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA00, &qword_1D932DF00);
  sub_1D93269E4();
  swift_dynamicCast();
  *(v2 + 16) = v17;
  sub_1D9327024();
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC16ChronoUIServicesP33_9C5D490F554C1DF35FE4BAD1CD7D6C7D16ControlsUIClient__lock_systemEnvironment, v8, v4);
  v15 = *(v2 + 16);
  swift_allocObject();
  swift_weakInit();

  sub_1D93269D4();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  return v2;
}

uint64_t sub_1D92DC064(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D92DCE80(a1, a2);
  }

  return result;
}

uint64_t sub_1D92DC0D8()
{
  v1 = sub_1D9327874();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1D92DDF58(&qword_1EDE3BCC0, MEMORY[0x1E6993E88]);
  v3 = sub_1D9327F04();
  v4 = *(v0 + 16);
  v5 = v3;
  v7 = v6;
  sub_1D93269C4();

  return sub_1D92C5F98(v5, v7);
}

uint64_t sub_1D92DC45C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SetControlStateRequest();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D92DC4F0, 0, 0);
}

uint64_t sub_1D92DC4F0()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_1D92DDF58(&qword_1ECAFC9E8, type metadata accessor for SetControlStateRequest);
  v3 = sub_1D9327F04();
  v0[6] = v3;
  v0[7] = v4;
  v5 = *(v0[3] + 16);
  v6 = *(MEMORY[0x1E6993FD8] + 4);
  v11 = (*MEMORY[0x1E6993FD8] + MEMORY[0x1E6993FD8]);
  v7 = v3;
  v8 = v4;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_1D92DC7EC;

  return v11(v7, v8);
}

uint64_t sub_1D92DC7EC()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1D92DC96C;
  }

  else
  {
    v3 = sub_1D92DC900;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D92DC900()
{
  sub_1D92C5F98(v0[6], v0[7]);
  v1 = v0[5];

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D92DC96C()
{
  v1 = v0[5];
  sub_1D92C5F98(v0[6], v0[7]);

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1D92DC9DC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for PerformControlActionRequest();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D92DCA70, 0, 0);
}

uint64_t sub_1D92DCA70()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_1D92DDF58(qword_1EDE3B2E8, type metadata accessor for PerformControlActionRequest);
  v3 = sub_1D9327F04();
  v0[6] = v3;
  v0[7] = v4;
  v5 = *(v0[3] + 16);
  v6 = *(MEMORY[0x1E6993FE0] + 4);
  v11 = (*MEMORY[0x1E6993FE0] + MEMORY[0x1E6993FE0]);
  v7 = v3;
  v8 = v4;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_1D92DCD6C;

  return v11(v7, v8);
}

uint64_t sub_1D92DCD6C()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1D92DDFAC;
  }

  else
  {
    v3 = sub_1D92DDFA8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D92DCE80(uint64_t a1, uint64_t a2)
{
  v84 = a2;
  v73 = sub_1D9327614();
  v80 = *(v73 - 8);
  v2 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1D9327654();
  v70 = *(v72 - 8);
  v4 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v69 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9327974();
  v77 = *(v6 - 8);
  v78 = v6;
  v7 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9327984();
  v75 = *(v10 - 8);
  v76 = v10;
  v11 = *(v75 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v64 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9D8, &unk_1D932DEE0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v81 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v74 = &v64 - v21;
  v22 = sub_1D9327034();
  v23 = *(v22 - 8);
  v82 = v22;
  v83 = v23;
  v24 = v23[8];
  v25 = MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v64 - v26;
  v28 = sub_1D9327A04();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D92DDF58(&qword_1EDE3BC98, MEMORY[0x1E6985700]);
  sub_1D93281D4();
  v68 = v27;
  v67 = v29;
  v84 = v28;
  sub_1D9327024();
  sub_1D93279C4();
  v33 = v83[1];
  v65 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v82;
  v66 = v33;
  v64 = v83 + 1;
  v33(v65, v82);
  v35 = v75;
  v36 = v76;
  (*(v75 + 16))(v14, v16, v76);
  sub_1D92DDF58(&qword_1EDE3BCA0, MEMORY[0x1E69856E8]);
  sub_1D9327FE4();
  sub_1D92DDF58(&qword_1EDE3BCA8, MEMORY[0x1E69856D8]);
  v37 = v81;
  v38 = v78;
  sub_1D9328384();
  (*(v77 + 8))(v9, v38);
  (*(v35 + 8))(v16, v36);
  v39 = v83;
  v40 = v83[6];
  v41 = 1;
  v42 = v40(v37, 1, v34);
  v43 = v32;
  v44 = v74;
  if (v42 != 1)
  {
    (v39[4])(v74, v81, v34);
    v41 = 0;
  }

  (v39[7])(v44, v41, 1, v34);
  v45 = v40(v44, 1, v34);
  v47 = v79;
  v46 = v80;
  v48 = v68;
  if (v45 == 1)
  {
    (*(v67 + 8))(v43, v84);
    return sub_1D92933A0(v44, &qword_1ECAFC9D8, &unk_1D932DEE0);
  }

  else
  {
    v50 = v83;
    v51 = v83[4];
    v81 = v43;
    v52 = v82;
    v51(v68, v44, v82);
    v53 = *(v47 + 24);
    os_unfair_lock_lock(*(v53 + 16));
    v54 = OBJC_IVAR____TtC16ChronoUIServicesP33_9C5D490F554C1DF35FE4BAD1CD7D6C7D16ControlsUIClient__lock_systemEnvironment;
    swift_beginAccess();
    (v50[3])(v47 + v54, v48, v52);
    swift_endAccess();
    os_unfair_lock_unlock(*(v53 + 16));
    v55 = *(v47 + 16);
    v78 = sub_1D9326984();
    v56 = v65;
    (v50[2])(v65, v48, v52);
    v57 = (*(v50 + 80) + 24) & ~*(v50 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = v47;
    v51((v58 + v57), v56, v52);
    aBlock[4] = sub_1D92DDE2C;
    aBlock[5] = v58;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D9290DB0;
    aBlock[3] = &block_descriptor_1;
    v59 = _Block_copy(aBlock);

    v60 = v69;
    sub_1D9327634();
    v85 = MEMORY[0x1E69E7CC0];
    sub_1D92DDF58(&qword_1EDE3BCE8, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9E0, &unk_1D932DEF0);
    sub_1D9290D60(&qword_1EDE3BC58, &qword_1ECAFC9E0, &unk_1D932DEF0);
    v61 = v71;
    v62 = v73;
    sub_1D93283C4();
    v63 = v78;
    MEMORY[0x1DA72E860](0, v60, v61, v59);
    _Block_release(v59);

    (*(v46 + 8))(v61, v62);
    (*(v70 + 8))(v60, v72);
    v66(v68, v52);
    (*(v67 + 8))(v81, v84);
  }
}

uint64_t sub_1D92DD8FC(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC16ChronoUIServicesP33_9C5D490F554C1DF35FE4BAD1CD7D6C7D16ControlsUIClient__calloutQueue_systemEnvironmentDidChangePublisher);

  sub_1D9326C34();
}

uint64_t sub_1D92DD94C()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC16ChronoUIServicesP33_9C5D490F554C1DF35FE4BAD1CD7D6C7D16ControlsUIClient__lock_systemEnvironment;
  v3 = sub_1D9327034();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC16ChronoUIServicesP33_9C5D490F554C1DF35FE4BAD1CD7D6C7D16ControlsUIClient__calloutQueue_systemEnvironmentDidChangePublisher);

  v5 = *(v0 + OBJC_IVAR____TtC16ChronoUIServicesP33_9C5D490F554C1DF35FE4BAD1CD7D6C7D16ControlsUIClient____lazy_storage___systemEnvironmentDidChangePublisher);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v6, v7);
}

uint64_t type metadata accessor for ControlsUIClient()
{
  result = qword_1EDE3D2F8;
  if (!qword_1EDE3D2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D92DDA6C()
{
  result = sub_1D9327034();
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

uint64_t sub_1D92DDC38(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D92D9CEC;

  return sub_1D92DC45C(a1);
}

uint64_t sub_1D92DDCD0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D92DA198;

  return sub_1D92DC9DC(a1);
}

void sub_1D92DDD68(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + 24);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = OBJC_IVAR____TtC16ChronoUIServicesP33_9C5D490F554C1DF35FE4BAD1CD7D6C7D16ControlsUIClient__lock_systemEnvironment;
  swift_beginAccess();
  v6 = sub_1D9327034();
  (*(*(v6 - 8) + 16))(a1, v3 + v5, v6);
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t sub_1D92DDE2C()
{
  v1 = *(*(sub_1D9327034() - 8) + 80);
  v2 = *(v0 + 16);

  return sub_1D92DD8FC(v2);
}

uint64_t sub_1D92DDE90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D92DDEF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D92DDF58(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1D92DE060(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for RemoteWidgetLaunchRequest.LaunchType(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LaunchType(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v39 = (v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA20, &qword_1D932DF08);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v36 - v14;
  v16 = type metadata accessor for RemoteWidgetLaunchRequest(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = OBJC_IVAR___CHUISRemoteWidgetLaunchRequest_action;
  *&v2[OBJC_IVAR___CHUISRemoteWidgetLaunchRequest_action] = 0;
  if (a2 >> 60 == 15)
  {

    type metadata accessor for CHUISRemoteWidgetLaunchRequest();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v36[1] = v9;
    v37 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = v2;
    sub_1D92C5EDC(a1, a2);
    sub_1D92DE608();
    v21 = a2;
    v22 = a1;
    sub_1D93281D4();
    (*(v17 + 56))(v15, 0, 1, v16);
    v24 = v37;
    sub_1D92DE6DC(v15, v37);
    sub_1D92CDCA4(v24, v8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      v26 = v39;
      if (EnumCaseMultiPayload == 2)
      {
        *v26 = _s16ChronoUIServices13LaunchRequestV12userActivity3forSo06NSUserF0CSo9CHSWidgetC_tFZ_0(*(v37 + *(v16 + 20)));
      }
    }

    else
    {
      v26 = v39;
      v27 = sub_1D9326814();
      (*(*(v27 - 8) + 32))(v26, v8, v27);
    }

    swift_storeEnumTagMultiPayload();
    LaunchType.bsAction()(v28);
    if (v30)
    {

      v29 = 0;
    }

    v31 = v38;
    v32 = *&v38[v20];
    *&v38[v20] = v29;

    v33 = v37;
    v34 = [*(v37 + *(v16 + 20)) extensionIdentity];
    sub_1D92DE660(v22, v21);
    sub_1D92DE740(v26, type metadata accessor for LaunchType);
    sub_1D92DE740(v33, type metadata accessor for RemoteWidgetLaunchRequest);
    *&v31[OBJC_IVAR___CHUISRemoteWidgetLaunchRequest_extensionIdentity] = v34;
    v40.receiver = v31;
    v40.super_class = CHUISRemoteWidgetLaunchRequest;
    v35 = objc_msgSendSuper2(&v40, sel_init);
    sub_1D92DE660(v22, v21);
    return v35;
  }
}

CHUISRemoteWidgetLaunchRequest __swiftcall CHUISRemoteWidgetLaunchRequest.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.action = v3;
  result.extensionIdentity = v2;
  result.super.isa = v1;
  return result;
}

unint64_t type metadata accessor for CHUISRemoteWidgetLaunchRequest()
{
  result = qword_1ECAFCA18;
  if (!qword_1ECAFCA18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAFCA18);
  }

  return result;
}

unint64_t sub_1D92DE608()
{
  result = qword_1ECAFCA28;
  if (!qword_1ECAFCA28)
  {
    type metadata accessor for RemoteWidgetLaunchRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCA28);
  }

  return result;
}

uint64_t sub_1D92DE660(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D92C5F98(a1, a2);
  }

  return a1;
}

uint64_t sub_1D92DE674(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA20, &qword_1D932DF08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D92DE6DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteWidgetLaunchRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D92DE740(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D92DE7A0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ControlIconView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v45 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v46 = &v43 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v43 - v17;
  [v2 setIsAnimating_];
  if (*(a1 + 16))
  {
    v19 = *(a1 + 8);
    v20 = sub_1D9327F74();
  }

  else
  {
    v20 = 0;
  }

  [v2 setTitle_];

  if (*(a1 + 32))
  {
    v21 = *(a1 + 24);
    v22 = sub_1D9327F74();
  }

  else
  {
    v22 = 0;
  }

  [v2 setSubtitle_];

  v23 = type metadata accessor for ControlInstanceButton.ViewModel(0);
  if (*(a1 + v23[9]) && (v24 = sub_1D9327344()) != 0)
  {
    v25 = v24;
    v26 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
  }

  else
  {
    v26 = 0;
  }

  [v2 setTint_];

  v27 = v23[8];
  sub_1D92E11F4(a1 + v27, v18);
  v28 = *(v5 + 48);
  if (v28(v18, 1, v4) == 1)
  {
    sub_1D92933A0(v18, &qword_1ECAFCA50, &unk_1D932DF60);
    v29 = 0;
  }

  else
  {
    v29 = sub_1D92F656C();
    sub_1D92D2EB0(v18);
  }

  [v2 setIcon_];

  sub_1D92E11F4(a1 + v27, v16);
  if (v28(v16, 1, v4) == 1)
  {
    sub_1D92933A0(v16, &qword_1ECAFCA50, &unk_1D932DF60);
  }

  else
  {
    v30 = v44;
    sub_1D92E1264(v16, v44);
    v31 = [v2 iconView];
    v32 = v46;
    sub_1D92D30E0(v30, v46);
    *(v32 + *(v4 + 20)) = [v31 style];
    v33 = v45;
    sub_1D92D30E0(v32, v45);
    sub_1D92D2694(v33);

    sub_1D92D2EB0(v32);
    sub_1D92D2EB0(v30);
  }

  [v2 setRedacted_];
  [v2 setDisabled_];
  [v2 setHasError_];
  v34 = (a1 + v23[10]);
  if (v34[1])
  {
    v35 = *v34;
    v36 = sub_1D9327F74();
  }

  else
  {
    v36 = 0;
  }

  [v2 setStatus_];

  v37 = (a1 + v23[11]);
  if (v37[1])
  {
    v38 = *v37;
    v39 = sub_1D9327F74();
  }

  else
  {
    v39 = 0;
  }

  [v2 setActionHint_];

  [v2 setLauncher_];
  v40 = (a1 + v23[16]);
  if (v40[1])
  {
    v41 = *v40;
    v42 = sub_1D9327F74();
  }

  else
  {
    v42 = 0;
  }

  [v2 setAccessibilityIdentifier_];
}

void sub_1D92DEC5C(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIconView_];

  *a2 = v4;
}

uint64_t CHUISControlInstanceButton.title.getter()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA38, qword_1D932DF18);
  swift_dynamicCast();
  swift_beginAccess();
  v2 = *(v7 + 16);
  if (v2)
  {
    v3 = v2;

    v4 = [v3 title];

    if (v4)
    {
      v5 = sub_1D9327F84();

      return v5;
    }
  }

  else
  {
  }

  return 0;
}

id CHUISControlInstanceButton.iconView.getter()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA38, qword_1D932DF18);
  swift_dynamicCast();
  v2 = *(v4 + 24);

  return v2;
}

id CHUISControlInstanceButton.tintColor.getter()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA38, qword_1D932DF18);
  swift_dynamicCast();
  swift_beginAccess();
  v2 = *(v6 + 16);
  if (v2)
  {
    v3 = v2;

    v4 = [v3 tint];
  }

  else
  {

    return 0;
  }

  return v4;
}

void *CHUISControlInstanceButton.viewModel.getter()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA38, qword_1D932DF18);
  swift_dynamicCast();
  swift_beginAccess();
  v2 = *(v5 + 16);
  v3 = v2;

  return v2;
}

id CHUISControlInstanceButton.init(control:contentType:)(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithControl:a1 contentType:a2];

  return v3;
}

{
  v4 = [objc_allocWithZone(MEMORY[0x1E6994270]) initWithControl:a1 contentType:a2 hostIdentifier:0 configurationIdentifier:0];
  v5 = [v2 initWithInstanceIdentity_];

  return v5;
}

char *CHUISControlInstanceButton.init(instanceIdentity:)(void *a1)
{
  BSDispatchQueueAssertMain();
  v22.receiver = v1;
  v22.super_class = CHUISControlInstanceButton;
  v3 = objc_msgSendSuper2(&v22, sel_initWithInstanceIdentity_, a1);
  v4 = qword_1EDE3C588;
  v5 = v3;
  v6 = a1;
  if (v4 != -1)
  {
    swift_once();
  }

  sub_1D929CF00(&qword_1EDE400D0, v21);
  v7 = type metadata accessor for ControlInstanceButton(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  *(v10 + qword_1EDE3CCC0) = 0;
  *(v10 + qword_1EDE3CCB0) = 0;
  *(v10 + qword_1EDE3CCC8) = 0;
  *(v10 + qword_1EDE3CCB8) = 0;
  sub_1D929CF00(v21, v18);
  v11 = sub_1D92E141C(v6, v18, &qword_1ECAFCAC8, &unk_1D932E7D0, &qword_1ECAFCAD0, &qword_1D932E030, &qword_1ECAFCAD8, &qword_1D932E038, &qword_1ECAFCAE0, &unk_1D932E040, type metadata accessor for ControlInstanceButton.ViewModel, sub_1D92E96D0);

  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA38, qword_1D932DF18);
  swift_allocObject();
  v13 = sub_1D92DF7D0(v11);
  swift_unknownObjectWeakAssign();
  v21[3] = v12;
  v21[4] = &off_1F54C1D40;
  v21[0] = v13;
  v14 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(&v5[v14], v18);
  v15 = v19;
  v16 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v16 + 120))(v15, v16);

  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&v5[v14], v21);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  return v5;
}

id sub_1D92DF6F8(void *a1, SEL *a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) *a2];

  return v3;
}

uint64_t sub_1D92DF7D0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC910, &qword_1D932E360);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  *(v1 + 16) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = a1;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  v7 = objc_opt_self();

  *(v1 + 64) = [v7 weakObjectsHashTable];
  swift_beginAccess();
  v8 = *(v1 + 16);
  *(v1 + 16) = 0;

  *(v1 + 24) = [objc_allocWithZone(CHUISControlIconView) initWithFrame_];
  v9 = sub_1D93280D4();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  v12 = sub_1D9328194();
  sub_1D92933A0(v6, &unk_1ECAFC910, &qword_1D932E360);
  v13 = *(v1 + 80);
  *(v1 + 80) = v12;

  return v1;
}

uint64_t sub_1D92DF9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA58, &qword_1D932DF88);
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = sub_1D93280A4();
  v3[12] = sub_1D9328094();
  v8 = sub_1D9328064();
  v3[13] = v8;
  v3[14] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D92DFAFC, v8, v7);
}

uint64_t sub_1D92DFAFC()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 80);
    v4 = *(**(v0 + 56) + 128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA60, &unk_1D932DF90);
    sub_1D9328144();
    v5 = *(v0 + 88);
    v6 = sub_1D9328094();
    *(v0 + 128) = v6;
    v7 = *(MEMORY[0x1E69E8678] + 4);
    v8 = swift_task_alloc();
    *(v0 + 136) = v8;
    *v8 = v0;
    v8[1] = sub_1D92DFC6C;
    v9 = *(v0 + 80);
    v10 = *(v0 + 64);
    v11 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D9C8](v0 + 40, v6, v11, v10);
  }

  else
  {
    v12 = *(v0 + 96);
    v13 = *(v0 + 80);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1D92DFC6C()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v7 = *v0;

  v4 = *(v1 + 112);
  v5 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1D92DFDB0, v5, v4);
}

uint64_t sub_1D92DFDB0()
{
  v1 = v0[5];
  if (v1 != 1)
  {
    sub_1D92E1380(v1);
    if ((sub_1D93281A4() & 1) != 0 || (v7 = v0[15], BSDispatchQueueAssertMain(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
    {
LABEL_19:
      v19 = v0[11];
      v20 = sub_1D9328094();
      v0[16] = v20;
      v21 = *(MEMORY[0x1E69E8678] + 4);
      v22 = swift_task_alloc();
      v0[17] = v22;
      *v22 = v0;
      v22[1] = sub_1D92DFC6C;
      v23 = v0[10];
      v15 = v0[8];
      v14 = MEMORY[0x1E69E85E0];
      v12 = (v0 + 5);
      v13 = v20;

      return MEMORY[0x1EEE6D9C8](v12, v13, v14, v15);
    }

    v9 = Strong;
    v10 = [*(v0[15] + 64) allObjects];
    v11 = sub_1D9328024();

    if (v11 >> 62)
    {
      v12 = sub_1D9328544();
      v16 = v12;
      if (v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
LABEL_9:
        if (v16 < 1)
        {
          __break(1u);
          return MEMORY[0x1EEE6D9C8](v12, v13, v14, v15);
        }

        for (i = 0; i != v16; ++i)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x1DA72EA00](i, v11);
          }

          else
          {
            v18 = *(v11 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          if ([v18 respondsToSelector_])
          {
            [v18 controlInstanceDescriptorDidChange_];
          }

          swift_unknownObjectRelease();
        }
      }
    }

    goto LABEL_19;
  }

  v2 = v0[15];
  (*(v0[9] + 8))(v0[10], v0[8]);

  v3 = v0[12];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D92E002C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA58, &qword_1D932DF88);
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = sub_1D93280A4();
  v3[12] = sub_1D9328094();
  v8 = sub_1D9328064();
  v3[13] = v8;
  v3[14] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D92E0130, v8, v7);
}

uint64_t sub_1D92E0130()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 80);
    v4 = *(**(v0 + 56) + 128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA60, &unk_1D932DF90);
    sub_1D9328144();
    v5 = *(v0 + 88);
    v6 = sub_1D9328094();
    *(v0 + 128) = v6;
    v7 = *(MEMORY[0x1E69E8678] + 4);
    v8 = swift_task_alloc();
    *(v0 + 136) = v8;
    *v8 = v0;
    v8[1] = sub_1D92E02A0;
    v9 = *(v0 + 80);
    v10 = *(v0 + 64);
    v11 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D9C8](v0 + 40, v6, v11, v10);
  }

  else
  {
    v12 = *(v0 + 96);
    v13 = *(v0 + 80);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1D92E02A0()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v7 = *v0;

  v4 = *(v1 + 112);
  v5 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1D92E03E4, v5, v4);
}

uint64_t sub_1D92E03E4()
{
  v1 = v0[5];
  if (v1 != 1)
  {
    sub_1D92E1380(v1);
    if ((sub_1D93281A4() & 1) != 0 || (v7 = v0[15], BSDispatchQueueAssertMain(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
    {
LABEL_19:
      v19 = v0[11];
      v20 = sub_1D9328094();
      v0[16] = v20;
      v21 = *(MEMORY[0x1E69E8678] + 4);
      v22 = swift_task_alloc();
      v0[17] = v22;
      *v22 = v0;
      v22[1] = sub_1D92E02A0;
      v23 = v0[10];
      v15 = v0[8];
      v14 = MEMORY[0x1E69E85E0];
      v12 = (v0 + 5);
      v13 = v20;

      return MEMORY[0x1EEE6D9C8](v12, v13, v14, v15);
    }

    v9 = Strong;
    v10 = [*(v0[15] + 64) allObjects];
    v11 = sub_1D9328024();

    if (v11 >> 62)
    {
      v12 = sub_1D9328544();
      v16 = v12;
      if (v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
LABEL_9:
        if (v16 < 1)
        {
          __break(1u);
          return MEMORY[0x1EEE6D9C8](v12, v13, v14, v15);
        }

        for (i = 0; i != v16; ++i)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x1DA72EA00](i, v11);
          }

          else
          {
            v18 = *(v11 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          if ([v18 respondsToSelector_])
          {
            [v18 controlInstanceDescriptorDidChange_];
          }

          swift_unknownObjectRelease();
        }
      }
    }

    goto LABEL_19;
  }

  v2 = v0[15];
  (*(v0[9] + 8))(v0[10], v0[8]);

  v3 = v0[12];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D92E0660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA58, &qword_1D932DF88);
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = sub_1D93280A4();
  v3[12] = sub_1D9328094();
  v8 = sub_1D9328064();
  v3[13] = v8;
  v3[14] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D92E0764, v8, v7);
}

uint64_t sub_1D92E0764()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 80);
    v4 = *(**(v0 + 56) + 128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA60, &unk_1D932DF90);
    sub_1D9328144();
    v5 = *(v0 + 88);
    v6 = sub_1D9328094();
    *(v0 + 128) = v6;
    v7 = *(MEMORY[0x1E69E8678] + 4);
    v8 = swift_task_alloc();
    *(v0 + 136) = v8;
    *v8 = v0;
    v8[1] = sub_1D92E08D4;
    v9 = *(v0 + 80);
    v10 = *(v0 + 64);
    v11 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D9C8](v0 + 40, v6, v11, v10);
  }

  else
  {
    v12 = *(v0 + 96);
    v13 = *(v0 + 80);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1D92E08D4()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v7 = *v0;

  v4 = *(v1 + 112);
  v5 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1D92E0A18, v5, v4);
}

uint64_t sub_1D92E0A18()
{
  v1 = v0[5];
  if (v1 != 1)
  {
    sub_1D92E1380(v1);
    if ((sub_1D93281A4() & 1) != 0 || (v7 = v0[15], BSDispatchQueueAssertMain(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
    {
LABEL_19:
      v19 = v0[11];
      v20 = sub_1D9328094();
      v0[16] = v20;
      v21 = *(MEMORY[0x1E69E8678] + 4);
      v22 = swift_task_alloc();
      v0[17] = v22;
      *v22 = v0;
      v22[1] = sub_1D92E08D4;
      v23 = v0[10];
      v15 = v0[8];
      v14 = MEMORY[0x1E69E85E0];
      v12 = (v0 + 5);
      v13 = v20;

      return MEMORY[0x1EEE6D9C8](v12, v13, v14, v15);
    }

    v9 = Strong;
    v10 = [*(v0[15] + 64) allObjects];
    v11 = sub_1D9328024();

    if (v11 >> 62)
    {
      v12 = sub_1D9328544();
      v16 = v12;
      if (v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
LABEL_9:
        if (v16 < 1)
        {
          __break(1u);
          return MEMORY[0x1EEE6D9C8](v12, v13, v14, v15);
        }

        for (i = 0; i != v16; ++i)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x1DA72EA00](i, v11);
          }

          else
          {
            v18 = *(v11 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          if ([v18 respondsToSelector_])
          {
            [v18 controlInstanceDescriptorDidChange_];
          }

          swift_unknownObjectRelease();
        }
      }
    }

    goto LABEL_19;
  }

  v2 = v0[15];
  (*(v0[9] + 8))(v0[10], v0[8]);

  v3 = v0[12];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D92E0C94(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D92D9CEC;

  return sub_1D92DF9F8(a1, a2, v6);
}

uint64_t sub_1D92E0D44(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D92DA198;

  return sub_1D92E002C(a1, a2, v6);
}

uint64_t sub_1D92E0DF4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D92DA198;

  return sub_1D92E0660(a1, a2, v6);
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

unint64_t sub_1D92E1150()
{
  result = qword_1ECAFCA40;
  if (!qword_1ECAFCA40)
  {
    type metadata accessor for ControlInstanceButton.ViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCA40);
  }

  return result;
}

unint64_t type metadata accessor for CHUISControlInstanceButton()
{
  result = qword_1ECAFCA48;
  if (!qword_1ECAFCA48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAFCA48);
  }

  return result;
}

uint64_t sub_1D92E11F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D92E1264(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlIconView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D92E12C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D92DA198;

  return sub_1D92E0DF4(a1, v4, (v1 + 24));
}

void sub_1D92E1380(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1D92E141C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t (*a11)(uint64_t), uint64_t (*a12)(uint64_t))
{
  v19 = v12;
  v155 = a2;
  v142 = a1;
  v151 = a11;
  v141 = a10;
  v152 = sub_1D9326BE4();
  v154 = *(v152 - 8);
  v20 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v152);
  v153 = v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_1D93268B4();
  v149 = *(v150 - 8);
  v22 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v148 = v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA68, &qword_1D932FE90);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v147 = v120 - v26;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA70, &unk_1D932DFA0);
  v143 = *(v144 - 8);
  v27 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v140 = v120 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA78, &qword_1D932E600);
  v30 = *(v29 - 1);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v136 = v120 - v32;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA60, &unk_1D932DF90);
  v137 = *(v138 - 8);
  v33 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v135 = v120 - v34;
  v145 = a3;
  v146 = a4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v134 = v120 - v37;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v131 = *(v132 - 8);
  v38 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v40 = v120 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v124 = v120 - v44;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(a9, v141);
  v125 = *(v127 - 8);
  v45 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v47 = v120 - v46;
  v48 = v19 + *(*v19 + 104);
  v123 = v42;
  v49 = *(v42 + 56);
  v126 = v48;
  v130 = v41;
  v122 = v49;
  v49();
  v50 = *(*v19 + 112);
  v51 = v151(0);
  (*(*(v51 - 8) + 56))(v19 + v50, 1, 1, v51);
  v52 = v19 + *(*v19 + 136);
  v139 = v30;
  v53 = *(v30 + 56);
  v133 = v52;
  v141 = v29;
  v129 = v30 + 56;
  v128 = v53;
  v53();
  *(v19 + *(*v19 + 152)) = 0;
  *(v19 + *(*v19 + 160)) = 0;
  *(v19 + *(*v19 + 168)) = 0;
  *(v19 + *(*v19 + 208)) = 0;
  *(v19 + *(*v19 + 216)) = 0;
  *(v19 + *(*v19 + 224)) = MEMORY[0x1E69E7CD0];
  if (qword_1EDE3C840 != -1)
  {
    swift_once();
  }

  v151 = a12;
  sub_1D929CF00(&unk_1EDE40100, v19 + *(*v19 + 200));
  v54 = v142;
  *(v19 + *(*v19 + 120)) = v142;
  v55 = v54;
  v56 = [v55 control];
  v57 = [v56 _loggingIdentifier];

  v58 = sub_1D9327F84();
  v60 = v59;

  v161 = 58;
  v162 = 0xE100000000000000;
  v142 = v55;
  [v55 contentType];
  v61 = sub_1D93282F4();
  MEMORY[0x1DA72E570](v61);

  v63 = v161;
  v62 = v162;
  v161 = v58;
  v162 = v60;

  MEMORY[0x1DA72E570](v63, v62);

  v64 = v162;
  v65 = (v19 + *(*v19 + 184));
  *v65 = v161;
  v65[1] = v64;
  v66 = v19 + *(*v19 + 144);
  *v66 = 0;
  *(v66 + 8) = 0;
  *(v66 + 16) = 1;
  *(v66 + 24) = 0;
  *(v66 + 32) = 0;
  *(v19 + *(*v19 + 232)) = 0;
  if (qword_1EDE3BF60 != -1)
  {
    swift_once();
  }

  v67 = v152;
  v68 = __swift_project_value_buffer(v152, qword_1EDE40088);
  v69 = *(*v19 + 176);
  v70 = *(v154 + 16);
  v120[1] = v154 + 16;
  v121 = v70;
  v70((v19 + v69), v68, v67);
  sub_1D929CF00(v155, v19 + *(*v19 + 192));
  v71 = *MEMORY[0x1E69E8650];
  v72 = v131;
  v73 = v132;
  (*(v131 + 104))(v40, v71, v132);
  v74 = v124;
  sub_1D93280E4();
  (*(v72 + 8))(v40, v73);
  v75 = v134;
  v76 = v130;
  (*(v123 + 32))(v134, v74, v130);
  (v122)(v75, 0, 1, v76);
  (*(v125 + 32))(v19 + *(*v19 + 96), v47, v127);
  v77 = v126;
  swift_beginAccess();
  sub_1D92C3C20(v75, v77, v145, v146);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCAA0, &qword_1D932DFD0);
  v78 = v143;
  v79 = v140;
  v80 = v71;
  v81 = v144;
  (*(v143 + 104))(v140, v80, v144);
  v82 = v135;
  v83 = v136;
  sub_1D93280E4();
  (*(v78 + 8))(v79, v81);
  v84 = v147;
  v85 = v141;
  (*(v139 + 32))(v147, v83, v141);
  (v128)(v84, 0, 1, v85);
  v86 = v82;
  v87 = v67;
  (*(v137 + 32))(v19 + *(*v19 + 128), v86, v138);
  v88 = v133;
  swift_beginAccess();
  sub_1D92C3C20(v84, v88, &qword_1ECAFCA68, &qword_1D932FE90);
  swift_endAccess();
  v161 = 0;
  v162 = 0xE000000000000000;
  sub_1D9328444();

  v161 = 0x536C6F72746E6F43;
  v162 = 0xEF2D6E6F69737365;
  v89 = v148;
  sub_1D93268A4();
  v90 = sub_1D9326894();
  (*(v149 + 8))(v89, v150);
  v157[0] = v90;
  v91 = sub_1D9328614();
  MEMORY[0x1DA72E570](v91);

  sub_1D9326AD4();
  v92 = v142;
  sub_1D9326A94();
  sub_1D929CF00(v19 + *(*v19 + 192), &v161);
  v93 = (v19 + *(*v19 + 144));
  swift_beginAccess();
  v94 = *v93;
  v95 = v93[1];
  v96 = *(v93 + 1);
  v97 = v93[16];
  v98 = *(v93 + 3);
  v99 = *(v93 + 4);
  LOBYTE(v157[0]) = v94;
  BYTE1(v157[0]) = v95;
  v157[1] = v96;
  v158 = v97;
  v159 = v98;
  v160 = v99;
  sub_1D929CF00(v19 + *(*v19 + 200), v156);
  v100 = type metadata accessor for ControlSession();
  v101 = *(v100 + 48);
  v102 = *(v100 + 52);
  swift_allocObject();

  v104 = sub_1D92D8EF4(v103, &v161, v157, v156);

  v105 = v153;
  v121(v153, v19 + *(*v19 + 176), v67);

  v106 = sub_1D9326BC4();
  v107 = sub_1D9328204();

  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v161 = v109;
    *v108 = 136446466;
    v110 = (v19 + *(*v19 + 184));
    v111 = *v110;
    v112 = v110[1];

    v113 = sub_1D9293524(v111, v112, &v161);

    *(v108 + 4) = v113;
    *(v108 + 12) = 2082;
    v114 = sub_1D9327F54();
    v116 = sub_1D9293524(v114, v115, &v161);

    *(v108 + 14) = v116;
    _os_log_impl(&dword_1D928E000, v106, v107, "[%{public}s] created new ControlInstance:%{public}s", v108, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72F920](v109, -1, -1);
    MEMORY[0x1DA72F920](v108, -1, -1);

    (*(v154 + 8))(v153, v87);
  }

  else
  {

    (*(v154 + 8))(v105, v67);
  }

  v117 = *(*v19 + 168);
  v118 = *(v19 + v117);
  *(v19 + v117) = v104;

  v151(v118);

  __swift_destroy_boxed_opaque_existential_1Tm(v155);
  return v19;
}

uint64_t sub_1D92E2484(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D92DA198;

  return sub_1D92E0D44(a1, v4, (v1 + 24));
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D92E257C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D92D9CEC;

  return sub_1D92E0C94(a1, v4, (v1 + 24));
}

void sub_1D92E2634()
{
  v0 = sub_1D93268E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  sub_1D93268D4();
  v6 = sub_1D93268C4();
  (*(v1 + 8))(v4, v0);
  [v5 setTimeZone_];

  qword_1ECAFCAE8 = v5;
}

void ControlInstanceConfiguration.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
}

uint64_t ControlInstanceConfiguration.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = v0[16];
  v6 = *(v0 + 24);
  sub_1D9328724();
  ControlInstanceConfiguration.hash(into:)();
  return sub_1D9328764();
}

uint64_t ControlInstanceConfiguration.preferredColorScheme.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t ControlInstanceConfiguration.preferredColorScheme.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t ControlInstanceConfiguration.launchOrigin.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ControlInstanceConfiguration.launchOrigin.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ControlInstanceConfiguration.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = v0[16];
  sub_1D9328444();
  MEMORY[0x1DA72E570](60, 0xE100000000000000);
  MEMORY[0x1DA72E570](0xD00000000000001CLL, 0x80000001D932E030);
  MEMORY[0x1DA72E570](0xD000000000000021, 0x80000001D9336DD0);
  if (v1)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1DA72E570](v5, v6);

  MEMORY[0x1DA72E570](0xD000000000000019, 0x80000001D9336E00);
  if (v2)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1DA72E570](v7, v8);

  MEMORY[0x1DA72E570](0xD000000000000017, 0x80000001D9336E20);
  v9 = NSStringFromCHSColorScheme();
  v10 = sub_1D9327F84();
  v12 = v11;

  MEMORY[0x1DA72E570](v10, v12);

  MEMORY[0x1DA72E570](62, 0xE100000000000000);
  return 0;
}

uint64_t ControlInstanceConfiguration.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = v0[16];
  v5 = *(v0 + 3);
  v6 = *(v0 + 4);
  sub_1D9328744();
  sub_1D9328744();
  if (v4 != 1)
  {
    sub_1D9328744();
    MEMORY[0x1DA72ECE0](v3);
    if (v6)
    {
      goto LABEL_3;
    }

    return sub_1D9328744();
  }

  sub_1D9328744();
  if (!v6)
  {
    return sub_1D9328744();
  }

LABEL_3:
  sub_1D9328744();

  return sub_1D9327FB4();
}

uint64_t sub_1D92E2B54()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = v0[16];
  v6 = *(v0 + 24);
  sub_1D9328724();
  ControlInstanceConfiguration.hash(into:)();
  return sub_1D9328764();
}

uint64_t sub_1D92E2BC4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = v0[16];
  v6 = *(v0 + 24);
  sub_1D9328724();
  ControlInstanceConfiguration.hash(into:)();
  return sub_1D9328764();
}

uint64_t _s16ChronoUIServices28ControlInstanceConfigurationV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    v5 = *(a1 + 4);
    v6 = *(a2 + 3);
    v7 = *(a2 + 4);
    if (a1[16])
    {
      if (!a2[16])
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 1) == *(a2 + 1))
      {
        v8 = a2[16];
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        return 0;
      }
    }

    if (v5)
    {
      if (!v7 || (*(a1 + 3) != v6 || v5 != v7) && (sub_1D9328654() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v7)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

unint64_t sub_1D92E2CE0()
{
  result = qword_1ECAFCAF0;
  if (!qword_1ECAFCAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCAF0);
  }

  return result;
}

uint64_t sub_1D92E2D34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1D92E2D90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t PerformControlActionRequest.init(sessionKey:action:launchOrigin:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for PerformControlActionRequest();
  v11 = &a5[*(v10 + 24)];
  *a5 = a1;
  v12 = *(v10 + 20);
  v13 = sub_1D9327A94();
  result = (*(*(v13 - 8) + 32))(&a5[v12], a2, v13);
  *v11 = a3;
  *(v11 + 1) = a4;
  return result;
}

uint64_t type metadata accessor for PerformControlActionRequest()
{
  result = qword_1EDE3C208;
  if (!qword_1EDE3C208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PerformControlActionRequest.sessionKey.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t PerformControlActionRequest.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PerformControlActionRequest() + 20);
  v4 = sub_1D9327A94();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PerformControlActionRequest.action.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PerformControlActionRequest() + 20);
  v4 = sub_1D9327A94();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PerformControlActionRequest.launchOrigin.getter()
{
  v1 = (v0 + *(type metadata accessor for PerformControlActionRequest() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PerformControlActionRequest.launchOrigin.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PerformControlActionRequest() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

unint64_t PerformControlActionRequest.description.getter()
{
  v1 = v0;
  sub_1D9328444();

  v10 = *v0;
  sub_1D9326AD4();
  sub_1D92E3ADC(&qword_1ECAFC778, MEMORY[0x1E69940F8]);
  v2 = sub_1D9328614();
  MEMORY[0x1DA72E570](v2);

  MEMORY[0x1DA72E570](0x6E6F69746361202CLL, 0xE90000000000003DLL);
  v3 = type metadata accessor for PerformControlActionRequest();
  v4 = *(v3 + 20);
  sub_1D9327A94();
  sub_1D92E3ADC(&qword_1ECAFC788, MEMORY[0x1E69858A8]);
  v5 = sub_1D9328614();
  MEMORY[0x1DA72E570](v5);

  MEMORY[0x1DA72E570](0x4F68636E75616C20, 0xEE003D6E69676972);
  v6 = (v1 + *(v3 + 24));
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v8 = 0xE300000000000000;
    v7 = 7104878;
  }

  MEMORY[0x1DA72E570](v7, v8);

  MEMORY[0x1DA72E570](62, 0xE100000000000000);
  return 0xD000000000000029;
}

uint64_t sub_1D92E332C()
{
  v1 = 0x6E6F69746361;
  if (*v0 != 1)
  {
    v1 = 0x724F68636E75616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4B6E6F6973736573;
  }
}

uint64_t sub_1D92E3390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D92E3DF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D92E33B8(uint64_t a1)
{
  v2 = sub_1D92E366C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D92E33F4(uint64_t a1)
{
  v2 = sub_1D92E366C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PerformControlActionRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCAF8, &qword_1D932E160);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D92E366C();
  sub_1D9328784();
  v18 = *v3;
  v17[7] = 0;
  sub_1D9326AD4();
  sub_1D92E3ADC(&qword_1EDE3BAD8, MEMORY[0x1E69940F8]);
  sub_1D9328604();
  if (!v2)
  {
    v11 = type metadata accessor for PerformControlActionRequest();
    v12 = *(v11 + 20);
    v17[6] = 1;
    sub_1D9327A94();
    sub_1D92E3ADC(&qword_1EDE3B270, MEMORY[0x1E69858A8]);
    sub_1D9328604();
    v13 = (v3 + *(v11 + 24));
    v14 = *v13;
    v15 = v13[1];
    v17[5] = 2;
    sub_1D93285F4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D92E366C()
{
  result = qword_1EDE3C228[0];
  if (!qword_1EDE3C228[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE3C228);
  }

  return result;
}

uint64_t PerformControlActionRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_1D9327A94();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB00, &qword_1D932E168);
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - v9;
  v11 = type metadata accessor for PerformControlActionRequest();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D92E366C();
  v29 = v10;
  v16 = v30;
  sub_1D9328774();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v30 = v11;
  v17 = v27;
  sub_1D9326AD4();
  v33 = 0;
  sub_1D92E3ADC(&qword_1EDE3BAD0, MEMORY[0x1E69940F8]);
  sub_1D93285C4();
  v24[2] = v34;
  *v14 = v34;
  v32 = 1;
  sub_1D92E3ADC(&qword_1EDE3B268, MEMORY[0x1E69858A8]);
  sub_1D93285C4();
  (*(v26 + 32))(&v14[*(v30 + 20)], v6, v3);
  v31 = 2;
  v24[1] = 0;
  v18 = sub_1D93285B4();
  v24[0] = v19;
  v20 = v18;
  v21 = &v14[*(v30 + 24)];
  (*(v17 + 8))(v29, v28);
  v22 = v24[0];
  *v21 = v20;
  v21[1] = v22;
  sub_1D92E3B24(v14, v25);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1D92E3B88(v14);
}

uint64_t sub_1D92E3ADC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D92E3B24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PerformControlActionRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D92E3B88(uint64_t a1)
{
  v2 = type metadata accessor for PerformControlActionRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D92E3C40()
{
  sub_1D9326AD4();
  if (v0 <= 0x3F)
  {
    sub_1D9327A94();
    if (v1 <= 0x3F)
    {
      sub_1D92D040C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D92E3CF0()
{
  result = qword_1ECAFCB08;
  if (!qword_1ECAFCB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCB08);
  }

  return result;
}

unint64_t sub_1D92E3D48()
{
  result = qword_1EDE3C218;
  if (!qword_1EDE3C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3C218);
  }

  return result;
}

unint64_t sub_1D92E3DA0()
{
  result = qword_1EDE3C220;
  if (!qword_1EDE3C220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3C220);
  }

  return result;
}

uint64_t sub_1D92E3DF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4B6E6F6973736573 && a2 == 0xEA00000000007965;
  if (v4 || (sub_1D9328654() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_1D9328654() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x724F68636E75616CLL && a2 == 0xEC0000006E696769)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9328654();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}