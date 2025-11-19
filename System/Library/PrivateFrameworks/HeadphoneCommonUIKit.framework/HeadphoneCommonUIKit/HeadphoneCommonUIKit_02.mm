uint64_t sub_1AC399EA8()
{
  result = sub_1AC3B7F54();
  qword_1EB555218 = result;
  qword_1EB555220 = v1;
  return result;
}

uint64_t *sub_1AC399EEC()
{
  if (qword_1EB554398 != -1)
  {
    swift_once();
  }

  return &qword_1EB555218;
}

uint64_t static SwiftUIKitCell.swiftUIHostKey.getter()
{
  v1 = *sub_1AC399EEC();

  return v1;
}

id sub_1AC399FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = 0;
  v16 = a1;
  v14 = a2;
  v15 = a3;
  v13 = a4;

  if (a3)
  {
    v7 = sub_1AC3B7EE4();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v12.receiver = 0;
  v12.super_class = type metadata accessor for SwiftUIKitCell();
  v6 = objc_msgSendSuper2(&v12, sel_initWithStyle_reuseIdentifier_specifier_, a1, v8, a4);
  MEMORY[0x1E69E5920](v8);
  if (v6)
  {
    MEMORY[0x1E69E5928](v6);
    v17 = v6;
    [v6 setAccessoryType_];
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](a4);

    MEMORY[0x1E69E5920](v17);
    return v6;
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    MEMORY[0x1E69E5920](a4);

    return 0;
  }
}

id sub_1AC39A2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v12 = a1;
  v10 = a2;
  v11 = a3;

  if (a3)
  {
    v5 = sub_1AC3B7EE4();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = 0;
  v9.super_class = type metadata accessor for SwiftUIKitCell();
  v4 = objc_msgSendSuper2(&v9, sel_initWithStyle_reuseIdentifier_, a1, v6);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5928](v4);
  v13 = v4;
  [v4 setAccessoryType_];
  MEMORY[0x1E69E5920](v4);

  MEMORY[0x1E69E5920](v13);
  return v4;
}

id SwiftUIKitCell.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

void SwiftUIKitCell.init(coder:)()
{
  sub_1AC3B7F54();
  sub_1AC3B84A4();
  __break(1u);
}

uint64_t sub_1AC39A600(void *a1)
{
  v106 = a1;
  v126 = 0;
  v125 = 0;
  v96 = 0;
  v115 = 0;
  v110 = 0;
  v97 = sub_1AC3B7524();
  v98 = *(v97 - 8);
  v99 = v98;
  MEMORY[0x1EEE9AC00](v97 - 8);
  v100 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555318);
  v102 = *(v101 - 8);
  v103 = v102;
  v104 = (*(v102 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v27 - v104;
  v126 = v3;
  v125 = v1;
  v4 = v3;
  if (v106)
  {
    v94 = v106;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v92 = v94;
  v93 = [v94 userInfo];
  if (v93)
  {
    v91 = v93;
    v90 = v93;
    v89 = v107;
    sub_1AC3B8384();
    sub_1AC377D20(v89, &v121);
    swift_unknownObjectRelease();
  }

  else
  {
    v121 = 0uLL;
    v122 = 0uLL;
  }

  v124 = v122;
  v123 = v121;

  if (*(&v124 + 1))
  {
    sub_1AC39B678();
    if (swift_dynamicCast())
    {
      v88 = v107[4];
    }

    else
    {
      v88 = 0;
    }

    v87 = v88;
  }

  else
  {
    sub_1AC38FF40(&v123);
    v87 = 0;
  }

  v86 = v87;
  if (v87)
  {
    v85 = v86;
    v81 = v86;
    v115 = v86;
    v5 = sub_1AC399EEC();
    v74 = *v5;
    v75 = v5[1];

    v113[3] = MEMORY[0x1E69E6158];
    v113[0] = v74;
    v113[1] = v75;
    v78 = MEMORY[0x1E69E6158];
    __swift_project_boxed_opaque_existential_0(v113, MEMORY[0x1E69E6158]);
    v76 = *(v78 - 8);
    v77 = v76;
    v80 = &v27;
    v6 = MEMORY[0x1EEE9AC00](&v27);
    v79 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v77 + 16))(v6);
    v82 = sub_1AC3B8584();
    (*(v77 + 8))(v79, v78);
    v84 = [v81 __swift_objectForKeyedSubscript_];
    v83 = v84;
    swift_unknownObjectRelease();
    if (v84)
    {
      v73 = v83;
      v72 = v83;
      v71 = v108;
      sub_1AC3B8384();
      sub_1AC377D20(v71, &v111);
      swift_unknownObjectRelease();
    }

    else
    {
      v111 = 0uLL;
      v112 = 0uLL;
    }

    v114[1] = v112;
    v114[0] = v111;
    if (*(&v112 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555328);
      if (swift_dynamicCast())
      {
        v70 = v108[4];
      }

      else
      {
        v70 = 0;
      }

      v68 = v70;
      __swift_destroy_boxed_opaque_existential_1(v113);
      v69 = v68;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v113);
      sub_1AC38FF40(v114);
      v69 = 0;
    }

    v67 = v69;
    if (v69)
    {
      v66 = v67;
      v64 = v67;
      v110 = v67;
      v8 = v95;
      v9 = v64;
      v60 = &v27;
      MEMORY[0x1EEE9AC00](&v27);
      sub_1AC3B78D4();

      v61 = sub_1AC3B7914();
      v109[3] = v101;
      v109[4] = sub_1AC39C1D8();
      v62 = v109;
      __swift_allocate_boxed_opaque_existential_1(v109);
      sub_1AC3B78C4();
      (*(v103 + 8))(v105, v101);
      MEMORY[0x1AC5B25D0](v62);

      v10 = v95;
      [v95 setAccessoryType_];

      v11 = v95;
      v63 = [objc_opt_self() clearColor];
      [v95 setBackgroundColor_];

      return v96;
    }
  }

  v12 = v100;
  v13 = sub_1AC394550();
  (*(v99 + 16))(v12, v13, v97);
  v14 = v106;
  v48 = 7;
  v50 = swift_allocObject();
  *(v50 + 16) = v106;
  sub_1AC38FFE4();

  v59 = sub_1AC3B7504();
  v44 = v59;
  v58 = sub_1AC3B8254();
  v45 = v58;
  v46 = 17;
  v52 = swift_allocObject();
  v47 = v52;
  *(v52 + 16) = 64;
  v53 = swift_allocObject();
  v49 = v53;
  *(v53 + 16) = 8;
  v15 = swift_allocObject();
  v16 = v50;
  v56 = v15;
  v51 = v15;
  *(v15 + 16) = sub_1AC38FFDC;
  *(v15 + 24) = v16;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5549B0);
  v54 = sub_1AC3B8574();
  v55 = v17;

  v18 = v52;
  v19 = v55;
  *v55 = sub_1AC377AC0;
  v19[1] = v18;

  v20 = v53;
  v21 = v55;
  v55[2] = sub_1AC377AC0;
  v21[3] = v20;

  v22 = v55;
  v23 = v56;
  v55[4] = sub_1AC3936DC;
  v22[5] = v23;
  sub_1AC36EE1C();

  if (os_log_type_enabled(v59, v58))
  {
    v24 = v96;
    v37 = sub_1AC3B8334();
    v34 = v37;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F90);
    v40 = 1;
    v38 = sub_1AC374C60(1);
    v36 = v38;
    v39 = sub_1AC374C60(0);
    v120 = v37;
    v119 = v38;
    v118 = v39;
    v41 = &v120;
    sub_1AC374CB4(2, &v120);
    sub_1AC374CB4(v40, v41);
    v116 = sub_1AC377AC0;
    v117 = v47;
    sub_1AC374CC8(&v116, v41, &v119, &v118);
    v42 = v24;
    v43 = v24;
    if (v24)
    {
      v32 = 0;

      __break(1u);
    }

    else
    {
      v116 = sub_1AC377AC0;
      v117 = v49;
      sub_1AC374CC8(&v116, &v120, &v119, &v118);
      v30 = 0;
      v31 = 0;
      v116 = sub_1AC3936DC;
      v117 = v51;
      sub_1AC374CC8(&v116, &v120, &v119, &v118);
      v28 = 0;
      v29 = 0;
      _os_log_impl(&dword_1AC345000, v44, v45, "SwiftUIKitCell refreshCellContents dependencies not meet no host for %@", v34, 0xCu);
      sub_1AC374D14(v36);
      sub_1AC374D14(v39);
      sub_1AC3B8314();

      v33 = v28;
    }
  }

  else
  {
    v25 = v96;

    v33 = v25;
  }

  v27 = v33;

  (*(v99 + 8))(v100, v97);
  return v27;
}

void *sub_1AC39B1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8[0] = 0;
  v8[1] = a1;
  sub_1AC3B7894();
  v7[0] = v7[1];
  v5 = MEMORY[0x1E6981910];
  sub_1AC35745C(v7, MEMORY[0x1E6981910], v8);
  sub_1AC367428();
  v3 = v8[0];

  v6 = v3;
  sub_1AC35745C(&v6, v5, a2);
  sub_1AC367428();
  result = v8;
  sub_1AC367428();
  return result;
}

id SwiftUIKitCell.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftUIKitCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AC39B388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v5 = a1;
  v3[1] = 0;
  v11 = sub_1AC3B76A4();
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v10 = v3 - v4;
  v14 = sub_1AC3B77B4();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v6 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v15 = v3 - v6;
  (*(v12 + 16))(v3 - v6);
  sub_1AC3B7794();
  (*(v7 + 32))(v9, v10, v11);
  return (*(v12 + 8))(v15, v14);
}

uint64_t sub_1AC39B518(uint64_t a1)
{
  v3 = a1;
  v1 = sub_1AC3B76A4();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v3 - v4;
  (*(v5 + 16))(&v3 - v4);
  return sub_1AC3B77A4();
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

unint64_t sub_1AC39B678()
{
  v2 = qword_1EB555230;
  if (!qword_1EB555230)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB555230);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_1AC39B6DC(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1AC3B76A4();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1AC39B7B0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1AC3B76A4();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

void *sub_1AC39B84C(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_1AC39B7B0(a2);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555240);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_1AC3B76A4();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t type metadata accessor for ModernPlaceCard()
{
  v1 = qword_1EB555330;
  if (!qword_1EB555330)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *sub_1AC39B9AC(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1AC3B76A4();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v24 = *a1;

    *a2 = v24;
  }

  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for ModernPlaceCard();
  v9 = v17[5];
  v10 = *(a1 + v9);

  *(a2 + v9) = v10;
  v11 = (a2 + v17[6]);
  v3 = (a1 + v17[6]);
  *v11 = *v3;
  v12 = v3[1];

  v11[1] = v12;
  v13 = (a2 + v17[7]);
  v4 = (a1 + v17[7]);
  *v13 = *v4;
  v14 = v4[1];

  v13[1] = v14;
  v15 = (a2 + v17[8]);
  v5 = (a1 + v17[8]);
  *v15 = *v5;
  v16 = v5[1];

  v15[1] = v16;
  v6 = v17[9];
  v19 = (a2 + v6);
  v18 = *(a1 + v6);
  v20 = *(a1 + v6 + 8);

  *v19 = v18;
  v19[1] = v20;
  v7 = v17[10];
  v22 = (a2 + v7);
  v21 = *(a1 + v7);
  v23 = *(a1 + v7 + 8);

  result = a2;
  *v22 = v21;
  v22[1] = v23;
  return result;
}

uint64_t sub_1AC39BC04(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1AC3B76A4();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  type metadata accessor for ModernPlaceCard();

  return a1;
}

unint64_t sub_1AC39BD3C()
{
  v2 = qword_1EB555268;
  if (!qword_1EB555268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555260);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555268);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39BDC4()
{
  v2 = qword_1EB555270;
  if (!qword_1EB555270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555248);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555270);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39BE4C()
{
  v2 = qword_1EB5552C0;
  if (!qword_1EB5552C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555250);
    sub_1AC39BDC4();
    sub_1AC39BEF4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5552C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39BEF4()
{
  v2 = qword_1EB5552C8;
  if (!qword_1EB5552C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5552D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5552C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39BF7C()
{
  v2 = qword_1EB5552D8;
  if (!qword_1EB5552D8)
  {
    sub_1AC3B7754();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5552D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC39BFFC(uint64_t a1)
{
  v3 = *(sub_1AC3B7754() + 20);
  v1 = sub_1AC3B77E4();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

unint64_t sub_1AC39C078()
{
  v2 = qword_1EB5552E0;
  if (!qword_1EB5552E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555258);
    sub_1AC39BE4C();
    sub_1AC39C120();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5552E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39C120()
{
  v2 = qword_1EB5552E8;
  if (!qword_1EB5552E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5552F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5552E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39C1D8()
{
  v2 = qword_1EB555320;
  if (!qword_1EB555320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555318);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555320);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39C30C()
{
  v3 = sub_1AC39C41C();
  if (v0 <= 0x3F)
  {
    v3 = sub_1AC39C4B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1AC39C41C()
{
  v4 = qword_1EB555340;
  if (!qword_1EB555340)
  {
    sub_1AC3B76A4();
    v3 = sub_1AC3B76D4();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB555340);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1AC39C4B8()
{
  v2 = qword_1EB555348;
  if (!qword_1EB555348)
  {
    FunctionTypeMetadata0 = swift_getFunctionTypeMetadata0();
    atomic_store(FunctionTypeMetadata0, &qword_1EB555348);
    return FunctionTypeMetadata0;
  }

  return v2;
}

unint64_t sub_1AC39C52C()
{
  v2 = qword_1EB555360;
  if (!qword_1EB555360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555358);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555360);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39C5B4()
{
  v2 = qword_1EB555368;
  if (!qword_1EB555368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555350);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555368);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39C63C()
{
  v2 = qword_1EB555370;
  if (!qword_1EB555370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555310);
    sub_1AC39C5B4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555370);
    return WitnessTable;
  }

  return v2;
}

__n128 sub_1AC39C6E0(char *a1, char *a2)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1AC3B76A4();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v15 - 8) + 64));
  }

  v3 = type metadata accessor for ModernPlaceCard();
  *&a2[v3[5]] = *&a1[v3[5]];
  *&a2[v3[6]] = *&a1[v3[6]];
  *&a2[v3[7]] = *&a1[v3[7]];
  result = *&a1[v3[8]];
  *&a2[v3[8]] = result;
  v5 = &a2[v3[9]];
  v6 = &a1[v3[9]];
  v7 = *v6;
  v8 = *(v6 + 1);
  *v5 = v7;
  *(v5 + 1) = v8;
  v9 = &a2[v3[10]];
  v10 = &a1[v3[10]];
  v11 = *v10;
  v12 = *(v10 + 1);
  *v9 = v11;
  *(v9 + 1) = v12;
  return result;
}

uint64_t sub_1AC39C850()
{
  v1 = *(type metadata accessor for ModernPlaceCard() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1AC399D64(v2);
}

unint64_t sub_1AC39C8B4()
{
  v2 = qword_1EB555378;
  if (!qword_1EB555378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EB554BC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555378);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39C93C()
{
  v2 = qword_1EB555380;
  if (!qword_1EB555380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5552B8);
    sub_1AC39C8B4();
    sub_1AC39C9E4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555380);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39C9E4()
{
  v2 = qword_1EB555388;
  if (!qword_1EB555388)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555388);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC39CA5C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB554BC0);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5552B8);

  return a1;
}

uint64_t sub_1AC39CAEC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB554BC0);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5552B8) + 36);
  v7 = *(a1 + v6);

  result = a2;
  *(a2 + v6) = v7;
  return result;
}

unint64_t sub_1AC39CB9C()
{
  v2 = qword_1EB555398;
  if (!qword_1EB555398)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555398);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39CC14()
{
  v2 = qword_1EB5553A8;
  if (!qword_1EB5553A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5553A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5553A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39CCBC()
{
  v2 = qword_1EB5553B8;
  if (!qword_1EB5553B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5553B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5553B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39CD44()
{
  v2 = qword_1EB5553C8;
  if (!qword_1EB5553C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5553C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5553C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC39CDCC(uint64_t a1)
{
  sub_1AC364A88(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  sub_1AC364A88(*(a1 + 56), *(a1 + 64), *(a1 + 72) & 1);

  return a1;
}

unint64_t sub_1AC39CE38()
{
  v2 = qword_1EB5553D8;
  if (!qword_1EB5553D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5553D0);
    sub_1AC39CD44();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5553D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39CEE4()
{
  v2 = qword_1EB5553E8;
  if (!qword_1EB5553E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5553E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5553E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39CF6C()
{
  v2 = qword_1EB5553F0;
  if (!qword_1EB5553F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555390);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5553F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC39CFF4(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5552A0) + 44);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5552A8);
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

unint64_t sub_1AC39D080()
{
  v2 = qword_1EB5553F8;
  if (!qword_1EB5553F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555300);
    sub_1AC39CF6C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5553F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39D124()
{
  v2 = qword_1EB555400;
  if (!qword_1EB555400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555308);
    sub_1AC39D080();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555400);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC39D1C8(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5552A0) + 44);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5552A8);
  (*(*(v2 - 8) + 16))();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5552F8);
  v4 = a1 + v9 + *(v3 + 48);
  v5 = a2 + v9 + *(v3 + 48);
  *v5 = *v4;
  *(v5 + 8) = *(v4 + 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555300);
  memcpy((a2 + *(v6 + 36)), (a1 + *(v6 + 36)), 0x70uLL);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555308);
  memcpy((a2 + *(v7 + 36)), (a1 + *(v7 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_1AC39D338()
{
  v1 = *(type metadata accessor for ModernPlaceCard() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1AC39971C(v2);
}

unint64_t sub_1AC39D39C()
{
  v2 = qword_1EB555410;
  if (!qword_1EB555410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555408);
    sub_1AC388890();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555410);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC39D440()
{
  v2 = qword_1EB555418;
  if (!qword_1EB555418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5552A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555418);
    return WitnessTable;
  }

  return v2;
}

void *sub_1AC39D4C8(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  v5 = a1[2];

  a2[2] = v5;
  v6 = a1[3];

  a2[3] = v6;
  v8 = a1[4];

  a2[4] = v8;
  memcpy(a2 + 5, a1 + 5, 0x30uLL);
  return a2;
}

uint64_t sub_1AC39D590()
{
  v1 = sub_1AC3B7524();
  __swift_allocate_value_buffer(v1, qword_1EB555840);
  __swift_project_value_buffer(v1, qword_1EB555840);
  sub_1AC3B7F54();
  sub_1AC3B7F54();
  return sub_1AC3B7514();
}

uint64_t sub_1AC39D634()
{
  if (qword_1EB5543A0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B7524();
  return __swift_project_value_buffer(v0, qword_1EB555840);
}

uint64_t sub_1AC39D6A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC39D634();
  v1 = sub_1AC3B7524();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t AnyBindable.identity.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t AnyBindable.name.getter()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_1AC39D7BC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
    *(a2 + 24) = v2;
    (**(v2 - 8))();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return a2;
}

uint64_t AnyBindable.getAction.getter()
{
  v2 = *(v0 + 112);
  sub_1AC39D93C(v2);
  return v2;
}

uint64_t sub_1AC39D93C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t AnyBindable.setAction.getter()
{
  v2 = *(v0 + 128);
  sub_1AC39D93C(v2);
  return v2;
}

uint64_t AnyBindable.buttonTapAction.getter()
{
  v2 = *(v0 + 144);
  sub_1AC39D93C(v2);
  return v2;
}

void *AnyBindable.init(identity:name:target:getSelector:setSelector:cell:buttonAction:group:detail:getAction:setAction:buttonTapAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, __int128 a13, __int128 a14, __int128 a15)
{
  *&v18 = a6;
  *(&v18 + 1) = a7;
  memset(__b, 0, sizeof(__b));
  v34 = a1;
  v35 = a2;
  v32 = a3;
  v33 = a4;
  v31 = a5;
  v29 = *(&v18 + 1);
  v30 = v18;
  v28 = a8;
  v27 = a10;
  v26 = a11 & 1;
  v25 = a12;
  v24[4] = a13;
  v24[3] = a14;
  v24[2] = a15;

  *&__b[0] = a1;
  *(&__b[0] + 1) = a2;

  *&__b[1] = a3;
  *(&__b[1] + 1) = a4;
  sub_1AC39D7BC(a5, v24);
  __b[2] = v24[0];
  __b[3] = v24[1];
  __b[4] = v18;
  *&__b[5] = a8;
  *(&__b[5] + 1) = a10;
  LOBYTE(__b[6]) = a11;
  *(&__b[6] + 1) = a12;
  sub_1AC39D93C(a13);
  __b[7] = a13;
  sub_1AC39D93C(a14);
  __b[8] = a14;
  sub_1AC39D93C(a15);
  __b[9] = a15;
  sub_1AC39DC9C(__b, a9);
  sub_1AC39DEAC(a15);
  sub_1AC39DEAC(a14);
  sub_1AC39DEAC(a13);
  sub_1AC38FF40(a5);

  return sub_1AC39DEE0(__b);
}

uint64_t sub_1AC39DC9C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v10 = *(a1 + 8);

  *(a2 + 8) = v10;
  *(a2 + 16) = *(a1 + 16);
  v13 = *(a1 + 24);

  *(a2 + 24) = v13;
  if (*(a1 + 56))
  {
    v2 = *(a1 + 56);
    *(a2 + 56) = v2;
    (**(v2 - 8))(a2 + 32, a1 + 32);
  }

  else
  {
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 48) = *(a1 + 48);
  }

  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 104) = *(a1 + 104);
  if (*(a1 + 112))
  {
    v8 = *(a1 + 112);
    v9 = *(a1 + 120);

    *(a2 + 112) = v8;
    *(a2 + 120) = v9;
  }

  else
  {
    *(a2 + 112) = *(a1 + 112);
  }

  if (*(a1 + 128))
  {
    v6 = *(a1 + 128);
    v7 = *(a1 + 136);

    *(a2 + 128) = v6;
    *(a2 + 136) = v7;
  }

  else
  {
    *(a2 + 128) = *(a1 + 128);
  }

  if (*(a1 + 144))
  {
    v4 = *(a1 + 144);
    v5 = *(a1 + 152);

    *(a2 + 144) = v4;
    *(a2 + 152) = v5;
  }

  else
  {
    *(a2 + 144) = *(a1 + 144);
  }

  return a2;
}

uint64_t sub_1AC39DEAC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_1AC39DEE0(void *a1)
{

  if (a1[7])
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 4));
  }

  if (a1[14])
  {
  }

  if (a1[16])
  {
  }

  if (a1[18])
  {
  }

  return a1;
}

uint64_t sub_1AC39E0BC()
{
  v2 = *(v0 + 16);
  MEMORY[0x1E69E5928]();
  return v2;
}

uint64_t sub_1AC39E118()
{
  swift_beginAccess();
  v2 = *(v0 + 24);

  swift_endAccess();
  return v2;
}

uint64_t sub_1AC39E190(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 24) = a1;

  swift_endAccess();
}

uint64_t PSSpecifierGroupBuilder.init(_:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AC393AEC();
  *(v4 + 24) = sub_1AC3B8574();
  v20 = objc_opt_self();

  if (a2)
  {
    v16 = sub_1AC3B7EE4();

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (a4)
  {
    v14 = sub_1AC3B7EE4();

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v13 = [v20 groupSpecifierWithID:v17 name:?];
  MEMORY[0x1E69E5920](v15);
  MEMORY[0x1E69E5920](v17);
  if (v13)
  {
    v12 = v13;
  }

  else
  {
    LOBYTE(v6) = 2;
    v7 = 64;
    LODWORD(v8) = 0;
    sub_1AC3B8494();
    __break(1u);
  }

  *(v19 + 16) = v12;
  v11 = *(v19 + 16);
  MEMORY[0x1E69E5928](v11);

  if (a2)
  {
    v9 = sub_1AC3B7EE4();

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  [v11 setIdentifier_];
  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5920](v11);
  MEMORY[0x1E69E5928](*(v19 + 16));
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555160);
  sub_1AC3B80C4();
  swift_endAccess();

  return v19;
}

uint64_t sub_1AC39E698(void (*a1)(uint64_t))
{

  v4 = *(v1 + 16);
  MEMORY[0x1E69E5928](v4);

  a1(v4);
  MEMORY[0x1E69E5920](v4);

  return v1;
}

void *sub_1AC39E760(uint64_t a1)
{
  v48 = v1;
  v45 = a1;
  v61 = 0;
  v59 = 0;
  v56 = 0;
  v47 = *v1;
  v61 = a1;
  v49 = *(v47 + 80);
  v46 = v49;
  v60 = v49;
  v59 = v1;
  v50 = objc_opt_self();
  v51 = *(v47 + 88);
  v52 = (*(v51 + 16))(v49);
  v53 = v2;
  if (v2)
  {
    v43 = v52;
    v44 = v53;
    v40 = v53;
    v41 = sub_1AC3B7EE4();

    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  v39 = v42;
  (*(v51 + 24))(&v57, v46);
  if (v58)
  {
    v33 = v58;
    v36 = &v57;
    __swift_project_boxed_opaque_existential_0(&v57, v58);
    v31 = *(v33 - 8);
    v32 = v31;
    v35 = &v9;
    v3 = MEMORY[0x1EEE9AC00](&v9);
    v34 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v32 + 16))(v3);
    v37 = sub_1AC3B8584();
    (*(v32 + 8))(v34, v33);
    __swift_destroy_boxed_opaque_existential_1(v36);
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  v27 = v38;
  v28 = (*(v51 + 40))(v46);
  v29 = (*(v51 + 32))(v46);
  v30 = (*(v51 + 72))(v46);
  if (v30)
  {
    v26 = v30;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v22 = ObjCClassFromMetadata;
  v5 = (*(v51 + 48))(v46);
  v24 = [v50 preferenceSpecifierNamed:v39 target:v27 set:v28 get:v29 detail:v22 cell:v5 edit:0];
  v23 = v24;
  swift_unknownObjectRelease();

  if (v24)
  {
    v21 = v23;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v18 = v21;
  v56 = v21;
  v19 = (*(v51 + 8))(v46);
  v20 = v6;
  if (v6)
  {
    v16 = v19;
    v17 = v20;
    v13 = v20;
    v14 = sub_1AC3B7EE4();

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v10 = v15;
  [v18 setIdentifier_];

  v7 = v18;
  v55 = v18;
  v11 = &v54;
  v12 = sub_1AC39E224();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555160);
  sub_1AC3B80C4();
  (v12)(v11, 0);

  return v48;
}

void *sub_1AC39EDA0(uint64_t a1)
{
  v10 = 0;
  v9 = 0;
  v2 = *v1;
  v10 = a1;
  v9 = v1;
  v8 = *(v2 + 80);
  sub_1AC379150(a1, v7);
  sub_1AC393AEC();
  if (swift_dynamicCast())
  {
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    MEMORY[0x1E69E5928](v5);
    v4 = sub_1AC39E224();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555160);
    sub_1AC3B80C4();
    v4();

    MEMORY[0x1E69E5920](v5);
  }

  return v1;
}

uint64_t sub_1AC39EF44(uint64_t a1)
{

  MEMORY[0x1E69E5928](a1);
  v3 = sub_1AC39E224();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555160);
  sub_1AC3B80C4();
  v3();

  return v4;
}

uint64_t *sub_1AC39F030()
{
  v8 = *v0;
  v22 = *(*v0 + 80);
  type metadata accessor for HeadphoneSpecifier();
  v9 = *(v8 + 88);
  v18 = v9[1](v22);
  v19 = v1;
  v12 = v9[2](v22);
  v13 = v2;
  v14 = v9[11](v22);
  v15 = v3;
  v16 = v9[10](v22);
  v17 = v4;
  v10 = v9[9](v22);
  v11 = v9[6](v22);
  v5 = v9[12](v22);
  v21 = HeadphoneSpecifier.__allocating_init(identifier:name:setAction:getAction:detail:cell:edit:buttonAction:)(v18, v19, v12, v13, v14, v15, v16, v17, v10, v11, 0, v5, v6);

  MEMORY[0x1E69E5928](v21);
  v20 = sub_1AC39E224();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555160);
  sub_1AC3B80C4();
  v20();

  MEMORY[0x1E69E5920](v21);
  return v0;
}

uint64_t sub_1AC39F400(void (*a1)())
{

  sub_1AC39E118();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555160);
  sub_1AC3A19EC();
  sub_1AC3B7EA4();

  if (v4)
  {
    a1();

    (MEMORY[0x1E69E5920])();
  }

  else
  {
  }

  return v3;
}

uint64_t PSSpecifierGroupBuilder.deinit()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  sub_1AC358148();
  return v2;
}

uint64_t PSSpecifier.updateSpecifierLinkedFooter(for:linkString:linkTarget:linkSelector:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v171 = a1;
  v172 = a2;
  v183 = a3;
  v184 = a4;
  v168 = a5;
  v169 = a6;
  v147 = sub_1AC385B94;
  v148 = sub_1AC377AC8;
  v149 = sub_1AC385B94;
  v150 = sub_1AC377AC8;
  v151 = sub_1AC385B94;
  v152 = sub_1AC377AC8;
  v153 = sub_1AC377AC0;
  v154 = sub_1AC377AC0;
  v155 = sub_1AC377AD4;
  v156 = sub_1AC377AC0;
  v157 = sub_1AC377AC0;
  v158 = sub_1AC377AD4;
  v159 = sub_1AC377AC0;
  v160 = sub_1AC377AC0;
  v161 = sub_1AC377AD4;
  v213 = 0;
  v214 = 0;
  v211 = 0;
  v212 = 0;
  v210 = 0;
  v209 = 0;
  v208 = 0;
  v206 = 0;
  v207 = 0;
  v162 = 0;
  v198 = 0;
  v199 = 0;
  v186 = 0;
  v163 = sub_1AC3B7524();
  v164 = *(v163 - 8);
  v165 = v163 - 8;
  v166 = (*(v164 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v163);
  v167 = v79 - v166;
  v170 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555428) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v171);
  v190 = v79 - v170;
  v213 = v7;
  v214 = v8;
  v211 = v9;
  v212 = v10;
  v210 = v11;
  v209 = v12;
  v208 = v6;
  v187 = 1;
  v13 = sub_1AC3B7F54();
  v173 = v14;
  v174 = MEMORY[0x1AC5B22A0](v171, v172, v13);
  v175 = v15;

  v181 = MEMORY[0x1AC5B22A0](v174, v175, v183, v184);
  v182 = v16;

  v206 = v181;
  v207 = v182;

  v180 = sub_1AC3B7EE4();

  v177 = *MEMORY[0x1E69C5900];
  MEMORY[0x1E69E5928](v177);
  sub_1AC3B7EF4();
  v176 = v17;
  v179 = sub_1AC3B7EE4();

  *&v18 = MEMORY[0x1E69E5920](v177).n128_u64[0];
  [v178 setProperty:v180 forKey:{v179, v18}];
  MEMORY[0x1E69E5920](v179);
  swift_unknownObjectRelease();
  v205[2] = v181;
  v205[3] = v182;
  v189 = v205;
  v205[0] = v183;
  v205[1] = v184;
  v19 = sub_1AC3B72A4();
  (*(*(v19 - 8) + 56))(v190, v187);
  v185 = sub_1AC35FEAC();
  v188 = MEMORY[0x1E69E6158];
  sub_1AC3A0E7C();
  v191 = sub_1AC3B8374();
  v192 = v20;
  v193 = v21;
  sub_1AC3A1A74(v190);
  if (v193)
  {
    v38 = v167;
    v39 = sub_1AC39D634();
    (*(v164 + 16))(v38, v39, v163);

    v94 = 32;
    v95 = 7;
    v40 = swift_allocObject();
    v41 = v182;
    v87 = v40;
    *(v40 + 16) = v181;
    *(v40 + 24) = v41;

    v42 = swift_allocObject();
    v43 = v172;
    v89 = v42;
    *(v42 + 16) = v171;
    *(v42 + 24) = v43;

    v44 = swift_allocObject();
    v45 = v184;
    v96 = v44;
    *(v44 + 16) = v183;
    *(v44 + 24) = v45;
    v110 = sub_1AC3B7504();
    v111 = sub_1AC3B8254();
    v92 = 17;
    v98 = swift_allocObject();
    v91 = 32;
    *(v98 + 16) = 32;
    v99 = swift_allocObject();
    v93 = 8;
    *(v99 + 16) = 8;
    v46 = swift_allocObject();
    v47 = v87;
    v88 = v46;
    *(v46 + 16) = v147;
    *(v46 + 24) = v47;
    v48 = swift_allocObject();
    v49 = v88;
    v100 = v48;
    *(v48 + 16) = v148;
    *(v48 + 24) = v49;
    v101 = swift_allocObject();
    *(v101 + 16) = v91;
    v102 = swift_allocObject();
    *(v102 + 16) = v93;
    v50 = swift_allocObject();
    v51 = v89;
    v90 = v50;
    *(v50 + 16) = v149;
    *(v50 + 24) = v51;
    v52 = swift_allocObject();
    v53 = v90;
    v103 = v52;
    *(v52 + 16) = v150;
    *(v52 + 24) = v53;
    v104 = swift_allocObject();
    *(v104 + 16) = v91;
    v105 = swift_allocObject();
    *(v105 + 16) = v93;
    v54 = swift_allocObject();
    v55 = v96;
    v97 = v54;
    *(v54 + 16) = v151;
    *(v54 + 24) = v55;
    v56 = swift_allocObject();
    v57 = v97;
    v107 = v56;
    *(v56 + 16) = v152;
    *(v56 + 24) = v57;
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5549B0);
    v106 = sub_1AC3B8574();
    v108 = v58;

    v59 = v98;
    v60 = v108;
    *v108 = v153;
    v60[1] = v59;

    v61 = v99;
    v62 = v108;
    v108[2] = v154;
    v62[3] = v61;

    v63 = v100;
    v64 = v108;
    v108[4] = v155;
    v64[5] = v63;

    v65 = v101;
    v66 = v108;
    v108[6] = v156;
    v66[7] = v65;

    v67 = v102;
    v68 = v108;
    v108[8] = v157;
    v68[9] = v67;

    v69 = v103;
    v70 = v108;
    v108[10] = v158;
    v70[11] = v69;

    v71 = v104;
    v72 = v108;
    v108[12] = v159;
    v72[13] = v71;

    v73 = v105;
    v74 = v108;
    v108[14] = v160;
    v74[15] = v73;

    v75 = v107;
    v76 = v108;
    v108[16] = v161;
    v76[17] = v75;
    sub_1AC36EE1C();

    if (os_log_type_enabled(v110, v111))
    {
      v77 = v162;
      v80 = sub_1AC3B8334();
      v79[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F90);
      v81 = sub_1AC374C60(0);
      v82 = sub_1AC374C60(3);
      v83 = &v204;
      v204 = v80;
      v84 = &v203;
      v203 = v81;
      v85 = &v202;
      v202 = v82;
      sub_1AC374CB4(2, &v204);
      sub_1AC374CB4(3, v83);
      v200 = v153;
      v201 = v98;
      sub_1AC374CC8(&v200, v83, v84, v85);
      v86 = v77;
      if (v77)
      {

        __break(1u);
      }

      else
      {
        v200 = v154;
        v201 = v99;
        sub_1AC374CC8(&v200, &v204, &v203, &v202);
        v79[7] = 0;
        v200 = v155;
        v201 = v100;
        sub_1AC374CC8(&v200, &v204, &v203, &v202);
        v79[6] = 0;
        v200 = v156;
        v201 = v101;
        sub_1AC374CC8(&v200, &v204, &v203, &v202);
        v79[5] = 0;
        v200 = v157;
        v201 = v102;
        sub_1AC374CC8(&v200, &v204, &v203, &v202);
        v79[4] = 0;
        v200 = v158;
        v201 = v103;
        sub_1AC374CC8(&v200, &v204, &v203, &v202);
        v79[3] = 0;
        v200 = v159;
        v201 = v104;
        sub_1AC374CC8(&v200, &v204, &v203, &v202);
        v79[2] = 0;
        v200 = v160;
        v201 = v105;
        sub_1AC374CC8(&v200, &v204, &v203, &v202);
        v79[1] = 0;
        v200 = v161;
        v201 = v107;
        sub_1AC374CC8(&v200, &v204, &v203, &v202);
        _os_log_impl(&dword_1AC345000, v110, v111, "updateSpecifierLinkedFooter: ERROR: range not found footer.range(of: linkString) %s %s %s", v80, 0x20u);
        sub_1AC374D14(v81);
        sub_1AC374D14(v82);
        sub_1AC3B8314();
      }
    }

    else
    {
    }

    v78 = MEMORY[0x1E69E5920](v110);
    (*(v164 + 8))(v167, v163, v78);
  }

  else
  {
    v145 = v191;
    v146 = v192;
    v123 = v192;
    v122 = v191;
    v198 = v191;
    v199 = v192;
    v133 = 0;
    sub_1AC3A263C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v113 = NSStringFromClass(ObjCClassFromMetadata);
    sub_1AC3B7EF4();
    v112 = v23;
    v117 = sub_1AC3B7EE4();

    MEMORY[0x1E69E5920](v113);
    v115 = *MEMORY[0x1E69C58D8];
    MEMORY[0x1E69E5928](v115);
    sub_1AC3B7EF4();
    v114 = v24;
    v116 = sub_1AC3B7EE4();

    *&v25 = MEMORY[0x1E69E5920](v115).n128_u64[0];
    v142 = 0x1FB10D000uLL;
    [v178 0x1FB10D778];
    MEMORY[0x1E69E5920](v116);
    swift_unknownObjectRelease();

    v121 = sub_1AC3B7EE4();

    v119 = *MEMORY[0x1E69C58F8];
    MEMORY[0x1E69E5928](v119);
    sub_1AC3B7EF4();
    v118 = v26;
    v120 = sub_1AC3B7EE4();

    *&v27 = MEMORY[0x1E69E5920](v119).n128_u64[0];
    [v178 (v142 + 1912)];
    MEMORY[0x1E69E5920](v120);
    swift_unknownObjectRelease();
    v126 = v197;
    v197[0] = v122;
    v197[1] = v123;

    v124 = v196;
    v196[0] = v181;
    v196[1] = v182;
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555438);
    sub_1AC3A26A0();
    v215.location = sub_1AC3B82C4();
    v195 = v215;
    v128 = NSStringFromRange(v215);
    sub_1AC3B7EF4();
    v127 = v28;
    v132 = sub_1AC3B7EE4();

    MEMORY[0x1E69E5920](v128);
    v130 = *MEMORY[0x1E69C58E8];
    MEMORY[0x1E69E5928](v130);
    sub_1AC3B7EF4();
    v129 = v29;
    v131 = sub_1AC3B7EE4();

    *&v30 = MEMORY[0x1E69E5920](v130).n128_u64[0];
    [v178 (v142 + 1912)];
    MEMORY[0x1E69E5920](v131);
    swift_unknownObjectRelease();
    sub_1AC38D4BC();
    ObjectType = swift_getObjectType();
    v134 = v194;
    v194[3] = ObjectType;
    swift_unknownObjectRetain();
    v194[0] = v168;
    v138 = sub_1AC3A0EB4(v134);
    v136 = *MEMORY[0x1E69C58F0];
    MEMORY[0x1E69E5928](v136);
    sub_1AC3B7EF4();
    v135 = v32;
    v137 = sub_1AC3B7EE4();

    *&v33 = MEMORY[0x1E69E5920](v136).n128_u64[0];
    [v178 (v142 + 1912)];
    MEMORY[0x1E69E5920](v137);
    swift_unknownObjectRelease();
    sub_1AC3B72D4();
    v139 = v34;
    v144 = sub_1AC3B7EE4();

    v141 = *MEMORY[0x1E69C58E0];
    MEMORY[0x1E69E5928](v141);
    sub_1AC3B7EF4();
    v140 = v35;
    v143 = sub_1AC3B7EE4();

    *&v36 = MEMORY[0x1E69E5920](v141).n128_u64[0];
    [v178 (v142 + 1912)];
    MEMORY[0x1E69E5920](v143);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1AC3A0E7C()
{
  sub_1AC3A2590(0);

  return 0;
}

id sub_1AC3A0EB4(void *a1)
{
  v13 = a1;
  if (a1[3])
  {
    v8 = v13[3];
    __swift_project_boxed_opaque_existential_0(v13, v8);
    v6 = *(v8 - 8);
    v7 = v6;
    v10 = v4;
    v1 = MEMORY[0x1EEE9AC00](v4);
    v9 = v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v1);
    v11 = sub_1AC3B8584();
    (*(v7 + 8))(v9, v8);
    __swift_destroy_boxed_opaque_existential_1(v13);
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v4[1] = v12;
  v5 = [swift_getObjCClassFromMetadata() valueWithNonretainedObject_];
  swift_unknownObjectRelease();
  return v5;
}

uint64_t HeadphoneSpecifier.getAction.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit18HeadphoneSpecifier_getAction);
  sub_1AC39D93C(v2);
  return v2;
}

uint64_t HeadphoneSpecifier.setAction.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit18HeadphoneSpecifier_setAction);
  sub_1AC39D93C(v2);
  return v2;
}

uint64_t HeadphoneSpecifier.buttonTapAction.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit18HeadphoneSpecifier_buttonTapAction);
  sub_1AC39D93C(v2);
  return v2;
}

char *HeadphoneSpecifier.init(identifier:name:setAction:getAction:detail:cell:edit:buttonAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v63 = 0;
  v42 = 0;
  v41 = 0;
  v61 = a1;
  v62 = a2;
  v59 = a3;
  v60 = a4;
  v57 = a5;
  v58 = a6;
  v55 = a7;
  v56 = a8;
  v54 = a9;
  v53 = a10;
  v52 = a11;
  v50 = a12;
  v51 = a13;
  sub_1AC39D93C(a7);
  v13 = OBJC_IVAR____TtC20HeadphoneCommonUIKit18HeadphoneSpecifier_getAction;
  *OBJC_IVAR____TtC20HeadphoneCommonUIKit18HeadphoneSpecifier_getAction = a7;
  *(v13 + 8) = a8;
  sub_1AC39D93C(a5);
  v14 = &v63[OBJC_IVAR____TtC20HeadphoneCommonUIKit18HeadphoneSpecifier_setAction];
  *v14 = a5;
  v14[1] = a6;
  sub_1AC39D93C(a12);
  v15 = &v63[OBJC_IVAR____TtC20HeadphoneCommonUIKit18HeadphoneSpecifier_buttonTapAction];
  *v15 = a12;
  v15[1] = a13;
  v38 = v63;

  if (a4)
  {
    v31 = sub_1AC3B7EE4();

    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  if (a9)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  if (a11)
  {
    v29 = swift_getObjCClassFromMetadata();
  }

  else
  {
    v29 = 0;
  }

  v27 = type metadata accessor for HeadphoneSpecifier();
  v45.receiver = v38;
  v45.super_class = v27;
  v28 = objc_msgSendSuper2(&v45, sel_initWithName_target_set_get_detail_cell_edit_, v32, 0, sel_setSepcifierEnabledWithEnabled_sepcifier_, sel_specifierEnabledWithSpecifier_, ObjCClassFromMetadata, a10, v29);
  swift_unknownObjectRelease();

  if (v28)
  {
    v26 = v28;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v16 = v26;
  v63 = v26;
  v17 = v26;

  if (a2)
  {
    v24 = sub_1AC3B7EE4();

    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v44.receiver = v26;
  v44.super_class = v27;
  objc_msgSendSuper2(&v44, sel_setIdentifier_);

  v18 = v26;
  v43.receiver = v26;
  v43.super_class = v27;
  objc_msgSendSuper2(&v43, sel_setTarget_);
  swift_unknownObjectRelease();

  sub_1AC39D93C(a12);
  if (a12)
  {
    v41 = a12;
    v42 = a13;
    v23 = v63;
    v19 = v63;
    v40.receiver = v23;
    v40.super_class = v27;
    objc_msgSendSuper2(&v40, sel_setButtonAction_, sel_buttonTappedWithSender_);
  }

  v22 = v63;
  v20 = v63;
  sub_1AC39DEAC(a12);
  sub_1AC39DEAC(a7);
  sub_1AC39DEAC(a5);

  return v22;
}

unint64_t sub_1AC3A19EC()
{
  v2 = qword_1EB555420;
  if (!qword_1EB555420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555160);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555420);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC3A1A74(uint64_t a1)
{
  v3 = sub_1AC3B72A4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1AC3A1B1C()
{
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit18HeadphoneSpecifier_buttonTapAction);
  result = sub_1AC39D93C(v2);
  if (v2)
  {
    v2(result);
  }

  return result;
}

uint64_t sub_1AC3A1C34(uint64_t a1)
{
  v7 = *(v1 + OBJC_IVAR____TtC20HeadphoneCommonUIKit18HeadphoneSpecifier_getAction);
  sub_1AC39D93C(v7);
  if (!v7)
  {
    return 0;
  }

  v2 = MEMORY[0x1E69E5928](a1);
  v4 = v7(a1, v2);
  MEMORY[0x1E69E5920](a1);

  return v4;
}

uint64_t sub_1AC3A1DAC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + OBJC_IVAR____TtC20HeadphoneCommonUIKit18HeadphoneSpecifier_setAction);
  result = sub_1AC39D93C(v7);
  if (v7)
  {
    v4 = MEMORY[0x1E69E5928](a2);
    v7(a1, a2, v4);
    MEMORY[0x1E69E5920](a2);
  }

  return result;
}

id HeadphoneSpecifier.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneSpecifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id HeadphoneSpecifier.__allocating_init(name:target:set:get:detail:cell:edit:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a8;
  v32 = a7;
  v33 = a6;
  v34 = a5;
  v35 = a4;
  v36 = a3;
  v39 = a2;
  v38 = a1;
  v40 = objc_allocWithZone(v37);
  if (v39)
  {
    v29 = v38;
    v30 = v39;
    v26 = v39;
    v27 = sub_1AC3B7EE4();

    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  v25 = v28;
  if (v36[3])
  {
    v20 = v36[3];
    __swift_project_boxed_opaque_existential_0(v36, v20);
    v18 = *(v20 - 8);
    v19 = v18;
    v22 = &v11;
    v8 = MEMORY[0x1EEE9AC00](&v11);
    v21 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v8);
    v23 = sub_1AC3B8584();
    (*(v19 + 8))(v21, v20);
    __swift_destroy_boxed_opaque_existential_1(v36);
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v17 = v24;
  if (v33)
  {
    v16 = v33;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v14 = ObjCClassFromMetadata;
  if (v31)
  {
    v13 = v31;
    v12 = swift_getObjCClassFromMetadata();
  }

  else
  {
    v12 = 0;
  }

  v11 = [v40 initWithName:v25 target:v17 set:v35 get:v34 detail:v14 cell:v32 edit:v12];
  swift_unknownObjectRelease();

  return v11;
}

uint64_t sub_1AC3A2590(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for CompareOptions();
    v1 = sub_1AC3B80A4();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

unint64_t sub_1AC3A263C()
{
  v2 = qword_1EB555430;
  if (!qword_1EB555430)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB555430);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC3A26A0()
{
  v2 = qword_1EB555440;
  if (!qword_1EB555440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555438);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555440);
    return WitnessTable;
  }

  return v2;
}

void *sub_1AC3A2728(void *a1)
{
  if (*a1)
  {
  }

  return a1;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v2 = -1;
  if (*(a1 + 24) < 0x100000000uLL)
  {
    v2 = *(a1 + 24);
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_So11PSSpecifierCSgyXlIeggo_Sg(void *a1)
{
  v2 = -1;
  if (*a1 < 0x100000000uLL)
  {
    v2 = *a1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_yXlSo11PSSpecifierCSgIeggg_Sg(void *a1)
{
  v2 = -1;
  if (*a1 < 0x100000000uLL)
  {
    v2 = *a1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(void *a1)
{
  v2 = -1;
  if (*a1 < 0x100000000uLL)
  {
    v2 = *a1;
  }

  return (v2 + 1);
}

uint64_t sub_1AC3A2E68(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 160))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v4 = *(a1 + 8);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void *sub_1AC3A2F98(void *result, unsigned int a2, unsigned int a3)
{
  v3 = result + 20;
  if (a2 > 0x7FFFFFFE)
  {
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      result[1] = a2;
    }
  }

  return result;
}

uint64_t sub_1AC3A31B4()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

id sub_1AC3A34EC(double a1, double a2, double a3, double a4, double a5)
{
  v5 = [swift_getObjCClassFromMetadata() bezierPathWithRoundedRect:a1 cornerRadius:{a2, a3, a4, a5}];

  return v5;
}

uint64_t sub_1AC3A35BC()
{
  v1 = sub_1AC3B7524();
  __swift_allocate_value_buffer(v1, qword_1EB555858);
  __swift_project_value_buffer(v1, qword_1EB555858);
  sub_1AC3B7F54();
  sub_1AC3B7F54();
  return sub_1AC3B7514();
}

uint64_t sub_1AC3A3660()
{
  if (qword_1EB5543A8 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B7524();
  return __swift_project_value_buffer(v0, qword_1EB555858);
}

uint64_t sub_1AC3A36CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3A3660();
  v1 = sub_1AC3B7524();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t AAAutoANCStrength.description.getter(int a1)
{
  type metadata accessor for AAAutoANCStrength();
  if (!a1 || a1 == 1000 || a1 == 1050 || a1 == 1100)
  {
    return sub_1AC3B7F54();
  }

  sub_1AC3B85A4();
  __break(1u);
  return v2;
}

uint64_t sub_1AC3A387C(int a1)
{
  type metadata accessor for AAAutoANCStrength();
  switch(a1)
  {
    case 0:
      return 0;
    case 1000:
      return 2;
    case 1050:
      return 1;
    case 1100:
      return 0;
  }

  sub_1AC3B85A4();
  __break(1u);
  return v2;
}

id sub_1AC3A398C()
{
  v7 = (v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell____lazy_storage___slider);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x1E69E5928](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_1AC3A3A98(v6);
  MEMORY[0x1E69E5928](v4);
  v3 = (v6 + OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell____lazy_storage___slider);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x1E69E5920](v1);
  swift_endAccess();
  return v4;
}

id sub_1AC3A3A98(uint64_t a1)
{
  v25[6] = a1;
  type metadata accessor for AAAutoANCStrength();
  v1 = sub_1AC3B8574();
  *v2 = 1100;
  v2[1] = 1050;
  v2[2] = 1000;
  sub_1AC36EE1C();
  v22 = v1;
  v25[5] = v1;
  v14 = sub_1AC3AFF88();
  v23 = sub_1AC3A3F90(0.0, 0.0, 0.0, 0.0);
  v25[4] = v23;
  sub_1AC3AFFEC();
  v21 = sub_1AC3A3FE8(3, 1);
  v25[3] = v21;
  [v23 setMinimumValue_];
  LODWORD(v3) = 2.0;
  [v23 setMaximumValue_];
  sub_1AC3B0050();
  v20 = sub_1AC3A4030(4, 21.0);
  v25[2] = v20;
  sub_1AC3B00B4();
  v9 = sub_1AC3B7F54();
  v8 = v4;
  MEMORY[0x1E69E5928](v20);
  v10 = sub_1AC3A4084(v9, v8, v20);
  [v23 setMinimumValueImage_];
  MEMORY[0x1E69E5920](v10);
  v12 = sub_1AC3B7F54();
  v11 = v5;
  MEMORY[0x1E69E5928](v20);
  v13 = sub_1AC3A4084(v12, v11, v20);
  [v23 setMaximumValueImage_];
  MEMORY[0x1E69E5920](v13);
  [v23 _setSliderConfiguration_];
  swift_unknownObjectRelease();
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x1E69E5920](v23);
  type metadata accessor for Event();
  sub_1AC3B8574();
  *v6 = 64;
  v6[1] = 128;
  sub_1AC36EE1C();
  sub_1AC35CD8C();
  sub_1AC3B8394();
  CombineCompatible<>.publisher(for:)(v24[2], v14, v25);
  v24[0] = v25[0];
  v24[1] = v25[1];
  v16 = swift_allocObject();
  MEMORY[0x1E69E5928](a1);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](a1);
  v15 = swift_allocObject();
  MEMORY[0x1E69E5928](v23);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v23);

  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v15;
  v18[4] = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555738);
  sub_1AC3B0128();
  sub_1AC3B7674();

  sub_1AC35E758(v24);
  v19 = sub_1AC3A52E0();
  sub_1AC3B7624();
  v19();

  MEMORY[0x1E69E5920](v20);
  MEMORY[0x1E69E5920](v21);

  return v23;
}

id sub_1AC3A4030(uint64_t a1, double a2)
{
  v2 = [swift_getObjCClassFromMetadata() configurationWithPointSize:a1 weight:a2];

  return v2;
}

id sub_1AC3A4084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1AC3B7EE4();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v4 = [swift_getObjCClassFromMetadata() _systemImageNamed_withConfiguration_];
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](v6);
  return v4;
}

double sub_1AC3A415C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v102 = a1;
  v101 = a2;
  v98 = a3;
  v99 = a4;
  v100 = 0;
  v81 = sub_1AC3A5030;
  v82 = sub_1AC377AC8;
  v83 = sub_1AC3B01B0;
  v84 = sub_1AC378248;
  v85 = sub_1AC37827C;
  v86 = sub_1AC377AC0;
  v87 = sub_1AC377AC0;
  v88 = sub_1AC377AD4;
  v89 = sub_1AC377AC0;
  v90 = sub_1AC377AC0;
  v91 = sub_1AC3782F4;
  v92 = "Fatal error";
  v93 = "Float value cannot be converted to Int because it is either infinite or NaN";
  v94 = "Swift/IntegerTypes.swift";
  v95 = "Float value cannot be converted to Int because the result would be less than Int.min";
  v96 = "Float value cannot be converted to Int because the result would be greater than Int.max";
  v124 = 0;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v119 = 0;
  v118 = 0;
  v116 = 0;
  v97 = 0;
  v103 = sub_1AC3B7524();
  v104 = *(v103 - 8);
  v105 = v103 - 8;
  v106 = (*(v104 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v102);
  v107 = v37 - v106;
  v124 = *v4;
  v108 = v5 + 16;
  v123 = v5 + 16;
  v122 = v6 + 16;
  v121 = v7;
  v109 = &v120;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v80 = Strong;
    v78 = Strong;
    v119 = Strong;
    v9 = sub_1AC3A534C();
    v79 = v9;
    if (v9)
    {
      v77 = v79;
      v73 = v79;
      v118 = v79;
      v74 = v98 + 16;
      v75 = &v117;
      swift_beginAccess();
      v76 = swift_unknownObjectWeakLoadStrong();
      swift_endAccess();
      if (v76)
      {
        v72 = v76;
        v10 = v107;
        v52 = v76;
        v116 = v76;
        v11 = sub_1AC3A3660();
        (*(v104 + 16))(v10, v11, v103);
        MEMORY[0x1E69E5928](v52);
        v58 = 7;
        v56 = swift_allocObject();
        *(v56 + 16) = v52;
        v70 = sub_1AC3B7504();
        v71 = sub_1AC3B8264();
        v54 = 17;
        v61 = swift_allocObject();
        *(v61 + 16) = 32;
        v62 = swift_allocObject();
        v55 = 8;
        *(v62 + 16) = 8;
        v57 = 32;
        v12 = swift_allocObject();
        v53 = v12;
        *(v12 + 16) = v81;
        *(v12 + 24) = 0;
        v13 = swift_allocObject();
        v14 = v53;
        v63 = v13;
        *(v13 + 16) = v82;
        *(v13 + 24) = v14;
        v64 = swift_allocObject();
        *(v64 + 16) = 0;
        v65 = swift_allocObject();
        *(v65 + 16) = v55;
        v15 = swift_allocObject();
        v16 = v56;
        v59 = v15;
        *(v15 + 16) = v83;
        *(v15 + 24) = v16;
        v17 = swift_allocObject();
        v18 = v59;
        v60 = v17;
        *(v17 + 16) = v84;
        *(v17 + 24) = v18;
        v19 = swift_allocObject();
        v20 = v60;
        v67 = v19;
        *(v19 + 16) = v85;
        *(v19 + 24) = v20;
        v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5549B0);
        v66 = sub_1AC3B8574();
        v68 = v21;

        v22 = v61;
        v23 = v68;
        *v68 = v86;
        v23[1] = v22;

        v24 = v62;
        v25 = v68;
        v68[2] = v87;
        v25[3] = v24;

        v26 = v63;
        v27 = v68;
        v68[4] = v88;
        v27[5] = v26;

        v28 = v64;
        v29 = v68;
        v68[6] = v89;
        v29[7] = v28;

        v30 = v65;
        v31 = v68;
        v68[8] = v90;
        v31[9] = v30;

        v32 = v67;
        v33 = v68;
        v68[10] = v91;
        v33[11] = v32;
        sub_1AC36EE1C();

        if (os_log_type_enabled(v70, v71))
        {
          v34 = v97;
          v44 = sub_1AC3B8334();
          v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F90);
          v45 = sub_1AC374C60(0);
          v46 = sub_1AC374C60(1);
          v48 = &v115;
          v115 = v44;
          v49 = &v114;
          v114 = v45;
          v50 = &v113;
          v113 = v46;
          v47 = 2;
          sub_1AC374CB4(2, &v115);
          sub_1AC374CB4(v47, v48);
          v111 = v86;
          v112 = v61;
          sub_1AC374CC8(&v111, v48, v49, v50);
          v51 = v34;
          if (v34)
          {

            __break(1u);
          }

          else
          {
            v111 = v87;
            v112 = v62;
            sub_1AC374CC8(&v111, &v115, &v114, &v113);
            v42 = 0;
            v111 = v88;
            v112 = v63;
            sub_1AC374CC8(&v111, &v115, &v114, &v113);
            v41 = 0;
            v111 = v89;
            v112 = v64;
            sub_1AC374CC8(&v111, &v115, &v114, &v113);
            v40 = 0;
            v111 = v90;
            v112 = v65;
            sub_1AC374CC8(&v111, &v115, &v114, &v113);
            v39 = 0;
            v111 = v91;
            v112 = v67;
            sub_1AC374CC8(&v111, &v115, &v114, &v113);
            _os_log_impl(&dword_1AC345000, v70, v71, "%s: HPCUIAdaptiveVolumeSliderCell %f", v44, 0x16u);
            sub_1AC374D14(v45);
            sub_1AC374D14(v46);
            sub_1AC3B8314();
          }
        }

        else
        {
        }

        v35 = MEMORY[0x1E69E5920](v70);
        (*(v104 + 8))(v107, v103, v35);
        v37[2] = sub_1AC3B7424();
        [v52 value];
        v38 = v36;
        if ((LODWORD(v36) >> 23) == 255)
        {
          sub_1AC3B8494();
          __break(1u);
        }

        if (v38 <= -9.2234e18)
        {
          sub_1AC3B8494();
          __break(1u);
        }

        if (v38 >= 9.2234e18)
        {
          sub_1AC3B8494();
          __break(1u);
        }

        v37[1] = v38;
        type metadata accessor for AAAutoANCStrength();
        sub_1AC3B80F4();
        sub_1AC3B74A4();

        MEMORY[0x1E69E5920](v52);
        MEMORY[0x1E69E5920](v73);
        *&result = MEMORY[0x1E69E5920](v78).n128_u64[0];
      }

      else
      {
        MEMORY[0x1E69E5920](v73);
        *&result = MEMORY[0x1E69E5920](v78).n128_u64[0];
      }
    }

    else
    {
      *&result = MEMORY[0x1E69E5920](v78).n128_u64[0];
    }
  }

  return result;
}

double sub_1AC3A5080(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell____lazy_storage___slider);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double (*sub_1AC3A5118(id *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC3A398C();
  return sub_1AC3A5174;
}

double sub_1AC3A5174(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1AC3A5080(*a1);
  }

  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  sub_1AC3A5080(v3);
  *&result = MEMORY[0x1E69E5920](*a1).n128_u64[0];
  return result;
}

uint64_t sub_1AC3A51F4()
{
  v2 = (v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell_listeners);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC3A525C(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell_listeners);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1AC3A534C()
{
  v2 = (v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell_headphoneDevice);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1AC3A53BC(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell_headphoneDevice);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

void sub_1AC3A54C0(void *a1)
{
  v200 = a1;
  v165 = sub_1AC3AF0F4;
  v166 = "Fatal error";
  v167 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v168 = "HeadphoneCommonUIKit/SliderUI.swift";
  v169 = sub_1AC3A6AC0;
  v170 = sub_1AC377AC8;
  v171 = sub_1AC377AC0;
  v172 = sub_1AC377AC0;
  v173 = sub_1AC377AD4;
  v222 = 0;
  v221 = 0;
  v174 = 0;
  v211 = 0;
  v207 = 0;
  v182 = 0;
  v175 = sub_1AC3B7524();
  v176 = *(v175 - 8);
  v177 = v175 - 8;
  v178 = (*(v176 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v175);
  v179 = v51 - v178;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5554F8);
  v180 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v181 = v51 - v180;
  v183 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555500) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v182);
  v184 = v51 - v183;
  v185 = sub_1AC3B82F4();
  v186 = *(v185 - 8);
  v187 = v185 - 8;
  v188 = (*(v186 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v185);
  v189 = v51 - v188;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555508);
  v191 = *(v190 - 8);
  v192 = v190 - 8;
  v193 = (*(v191 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v190);
  v194 = v51 - v193;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555510);
  v196 = *(v195 - 8);
  v197 = v195 - 8;
  v198 = (*(v196 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v200);
  v199 = v51 - v198;
  v222 = v3;
  v221 = v1;
  *&v4 = MEMORY[0x1E69E5928](v3).n128_u64[0];
  if (v200)
  {
    v163 = v200;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v161 = v163;
  v162 = [v163 userInfo];
  if (v162)
  {
    v160 = v162;
    v159 = v162;
    v158 = v201;
    sub_1AC3B8384();
    sub_1AC377D20(v158, &v217);
    swift_unknownObjectRelease();
  }

  else
  {
    v217 = 0uLL;
    v218 = 0uLL;
  }

  v219 = v217;
  v220 = v218;
  MEMORY[0x1E69E5920](v161);
  if (*(&v220 + 1))
  {
    sub_1AC39B678();
    if (swift_dynamicCast())
    {
      v157 = v201[4];
    }

    else
    {
      v157 = 0;
    }

    v156 = v157;
  }

  else
  {
    sub_1AC38FF40(&v219);
    v156 = 0;
  }

  v155 = v156;
  if (v156)
  {
    v154 = v155;
    v151 = v155;
    v211 = v155;
    sub_1AC3B7F54();
    v150 = v5;
    v152 = sub_1AC3B7EE4();

    v153 = [v151 objectForKey_];
    swift_unknownObjectRelease();
    if (v153)
    {
      v149 = v153;
      v148 = v153;
      v147 = v202;
      sub_1AC3B8384();
      sub_1AC377D20(v147, &v208);
      swift_unknownObjectRelease();
    }

    else
    {
      v208 = 0uLL;
      v209 = 0uLL;
    }

    v210[0] = v208;
    v210[1] = v209;
    if (*(&v209 + 1))
    {
      sub_1AC3B7434();
      if (swift_dynamicCast())
      {
        v146 = v202[4];
      }

      else
      {
        v146 = 0;
      }

      v145 = v146;
    }

    else
    {
      sub_1AC38FF40(v210);
      v145 = 0;
    }

    v144 = v145;
    if (v145)
    {
      v143 = v144;
      v141 = v144;
      v207 = v144;
      MEMORY[0x1E69E5928](v144);
      sub_1AC3A53BC(v141);
      v6 = sub_1AC3A534C();
      v142 = v6;
      if (v6)
      {
        v140 = v142;
      }

      else
      {
        sub_1AC3B8494();
        __break(1u);
      }

      v113 = v140;
      v114 = sub_1AC3B7424();
      MEMORY[0x1E69E5920](v113);
      sub_1AC3B74B4();

      sub_1AC3B82E4();
      v7 = *(v186 + 56);
      v115 = 1;
      v7(v184, 1, 1, v185);
      v8 = [objc_opt_self() mainRunLoop];
      v116 = &v206;
      v206 = v8;
      v130 = 0;
      v9 = sub_1AC3B82D4();
      (*(*(v9 - 8) + 56))(v181, v115);
      v117 = sub_1AC3AEE38();
      v118 = sub_1AC3AEE9C();
      sub_1AC3AEF24();
      sub_1AC3B7664();
      v10 = v164;
      sub_1AC3AEFA4(v181);
      MEMORY[0x1E69E5920](v206);
      sub_1AC3AF04C(v184);
      (*(v186 + 8))(v189, v185);
      (*(v191 + 8))(v194, v190);
      v120 = 24;
      v123 = 7;
      v125 = swift_allocObject();
      v119 = v125 + 16;
      MEMORY[0x1E69E5928](v10);
      swift_unknownObjectWeakInit();
      MEMORY[0x1E69E5920](v10);
      v124 = swift_allocObject();
      v121 = v124 + 16;
      v122 = sub_1AC3A534C();
      swift_unknownObjectWeakInit();
      MEMORY[0x1E69E5920](v122);

      v11 = swift_allocObject();
      v12 = v124;
      v126 = v11;
      *(v11 + 16) = v125;
      *(v11 + 24) = v12;

      sub_1AC3AF100();
      v129 = sub_1AC3B7674();

      (*(v196 + 8))(v199, v195);
      v127 = &v205;
      v128 = sub_1AC3A52E0();
      sub_1AC3B7624();
      v13 = v164;
      v139 = 0;
      v128();

      v131 = [v13 contentView];
      *&v14 = MEMORY[0x1E69E5920](v13).n128_u64[0];
      v137 = [v131 subviews];
      sub_1AC377BD0();
      v132 = sub_1AC3B8084();
      MEMORY[0x1E69E5920](v131);
      v136 = &v204;
      v204 = v132;
      v15 = sub_1AC3A398C();
      v135 = &v203;
      v203 = v15;
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5549D8);
      v134 = sub_1AC377C34();
      sub_1AC3AF188();
      v138 = sub_1AC3B8034();
      MEMORY[0x1E69E5920](v203);
      sub_1AC358148();
      MEMORY[0x1E69E5920](v137);
      if ((v138 & 1) == (v139 & 1))
      {
        v111 = sub_1AC3A398C();
        v112 = sub_1AC3A534C();
        if (v112)
        {
          v110 = v112;
        }

        else
        {
          sub_1AC3B8494();
          __break(1u);
        }

        v73 = v110;
        v74 = sub_1AC3B7424();
        MEMORY[0x1E69E5920](v73);
        v16 = sub_1AC3B7494();
        v17 = v164;
        v75 = v16;

        *&v18 = sub_1AC3A387C(v75);
        [v111 setValue_];
        MEMORY[0x1E69E5920](v111);
        *&v19 = MEMORY[0x1E69E5928](v17).n128_u64[0];
        v97 = 0x1FB774000uLL;
        v77 = [v17 0x1FB774AF8];
        MEMORY[0x1E69E5920](v17);
        v76 = sub_1AC3A398C();
        [v77 addSubview_];
        MEMORY[0x1E69E5920](v76);
        MEMORY[0x1E69E5920](v77);
        v108 = objc_opt_self();
        v106 = sub_1AC377CBC();
        v105 = sub_1AC3B8574();
        v104 = v20;
        v21 = sub_1AC3A398C();
        v22 = v164;
        v78 = v21;
        v79 = 0x1FBBB4000uLL;
        v82 = [v21 0x1FBBB4950];
        MEMORY[0x1E69E5920](v78);
        *&v23 = MEMORY[0x1E69E5928](v22).n128_u64[0];
        v80 = [v22 (v97 + 2808)];
        *&v24 = MEMORY[0x1E69E5920](v22).n128_u64[0];
        v81 = [v80 (v79 + 2384)];
        MEMORY[0x1E69E5920](v80);
        v100 = 0x1FBB28000uLL;
        v83 = [v82 0x1FBB28F7ELL];
        MEMORY[0x1E69E5920](v81);
        MEMORY[0x1E69E5920](v82);
        *v104 = v83;
        v25 = sub_1AC3A398C();
        v26 = v164;
        v84 = v25;
        v85 = 0x1FBB5C000uLL;
        v88 = [v25 0x1FBB5C529];
        MEMORY[0x1E69E5920](v84);
        *&v27 = MEMORY[0x1E69E5928](v26).n128_u64[0];
        v86 = [v26 (v97 + 2808)];
        *&v28 = MEMORY[0x1E69E5920](v26).n128_u64[0];
        v87 = [v86 (v85 + 1321)];
        MEMORY[0x1E69E5920](v86);
        v89 = [v88 (v100 + 3966)];
        MEMORY[0x1E69E5920](v87);
        MEMORY[0x1E69E5920](v88);
        v104[1] = v89;
        v29 = sub_1AC3A398C();
        v30 = v164;
        v90 = v29;
        v91 = 0x1FBBB5000uLL;
        v94 = [v29 0x1FBBB59CCLL];
        MEMORY[0x1E69E5920](v90);
        *&v31 = MEMORY[0x1E69E5928](v30).n128_u64[0];
        v92 = [v30 (v97 + 2808)];
        *&v32 = MEMORY[0x1E69E5920](v30).n128_u64[0];
        v93 = [v92 (v91 + 2508)];
        MEMORY[0x1E69E5920](v92);
        v95 = [v94 (v100 + 3966)];
        MEMORY[0x1E69E5920](v93);
        MEMORY[0x1E69E5920](v94);
        v104[2] = v95;
        v96 = sub_1AC3A398C();
        v98 = 0x1FBB20000uLL;
        v102 = [v96 0x1FBB20D25];
        MEMORY[0x1E69E5920](v96);
        *&v33 = MEMORY[0x1E69E5928](v164).n128_u64[0];
        v99 = [v164 (v97 + 2808)];
        *&v34 = MEMORY[0x1E69E5920](v164).n128_u64[0];
        v101 = [v99 (v98 + 3365)];
        MEMORY[0x1E69E5920](v99);
        v103 = [v102 (v100 + 3966)];
        MEMORY[0x1E69E5920](v101);
        MEMORY[0x1E69E5920](v102);
        v35 = v105;
        v104[3] = v103;
        sub_1AC36EE1C();
        v107 = v35;
        v109 = sub_1AC3B8074();

        [v108 activateConstraints_];
        MEMORY[0x1E69E5920](v109);
        MEMORY[0x1E69E5920](v141);
        MEMORY[0x1E69E5920](v151);
      }

      else
      {
        v71 = sub_1AC3A398C();
        v72 = 0x1FAC9E000uLL;
        [v71 0x1FAC9E0F8];
        *&v36 = MEMORY[0x1E69E5920](v71).n128_u64[0];
        [v164 (v72 + 248)];
        MEMORY[0x1E69E5920](v141);
        MEMORY[0x1E69E5920](v151);
      }

      return;
    }

    MEMORY[0x1E69E5920](v151);
  }

  v37 = v179;
  v38 = sub_1AC3A3660();
  (*(v176 + 16))(v37, v38, v175);
  v69 = sub_1AC3B7504();
  v70 = sub_1AC3B8254();
  v59 = 17;
  v61 = 7;
  v63 = swift_allocObject();
  *(v63 + 16) = 32;
  v64 = swift_allocObject();
  *(v64 + 16) = 8;
  v60 = 32;
  v39 = swift_allocObject();
  v62 = v39;
  *(v39 + 16) = v169;
  *(v39 + 24) = 0;
  v40 = swift_allocObject();
  v41 = v62;
  v66 = v40;
  *(v40 + 16) = v170;
  *(v40 + 24) = v41;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5549B0);
  v65 = sub_1AC3B8574();
  v67 = v42;

  v43 = v63;
  v44 = v67;
  *v67 = v171;
  v44[1] = v43;

  v45 = v64;
  v46 = v67;
  v67[2] = v172;
  v46[3] = v45;

  v47 = v66;
  v48 = v67;
  v67[4] = v173;
  v48[5] = v47;
  sub_1AC36EE1C();

  if (os_log_type_enabled(v69, v70))
  {
    v49 = v174;
    v52 = sub_1AC3B8334();
    v51[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F90);
    v53 = sub_1AC374C60(0);
    v54 = sub_1AC374C60(1);
    v55 = &v216;
    v216 = v52;
    v56 = &v215;
    v215 = v53;
    v57 = &v214;
    v214 = v54;
    sub_1AC374CB4(2, &v216);
    sub_1AC374CB4(1, v55);
    v212 = v171;
    v213 = v63;
    sub_1AC374CC8(&v212, v55, v56, v57);
    v58 = v49;
    if (v49)
    {

      __break(1u);
    }

    else
    {
      v212 = v172;
      v213 = v64;
      sub_1AC374CC8(&v212, &v216, &v215, &v214);
      v51[1] = 0;
      v212 = v173;
      v213 = v66;
      sub_1AC374CC8(&v212, &v216, &v215, &v214);
      _os_log_impl(&dword_1AC345000, v69, v70, "%s HPCUIAdaptiveVolumeSliderCell Depedencies not meet, bailing out of HPCUIAdaptiveVolumeSliderCell refresh", v52, 0xCu);
      sub_1AC374D14(v53);
      sub_1AC374D14(v54);
      sub_1AC3B8314();
    }
  }

  else
  {
  }

  v50 = MEMORY[0x1E69E5920](v69);
  (*(v176 + 8))(v179, v175, v50);
}

double sub_1AC3A6AF0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    swift_endAccess();
    if (v4)
    {
      v3 = sub_1AC3A398C();
      sub_1AC3B7424();
      v2 = sub_1AC3B7494();

      *&v1 = sub_1AC3A387C(v2);
      [v3 setValue_];
      MEMORY[0x1E69E5920](v3);
      MEMORY[0x1E69E5920](v4);
    }

    *&result = MEMORY[0x1E69E5920](Strong).n128_u64[0];
  }

  return result;
}

char *sub_1AC3A6D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = 0;
  v17 = a1;
  v15 = a2;
  v16 = a3;
  v14 = a4;
  *OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell____lazy_storage___slider = 0;
  v11 = OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell_listeners;
  sub_1AC3B7634();
  sub_1AC3AF208();
  *&v18[v11] = sub_1AC3B7E54();
  *&v18[OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell_headphoneDevice] = 0;

  if (a3)
  {
    v7 = sub_1AC3B7EE4();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v13.receiver = v18;
  v13.super_class = type metadata accessor for HPCUIAdaptiveVolumeSliderCell();
  v6 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_specifier_, a1, v8, a4);
  MEMORY[0x1E69E5920](v8);
  if (v6)
  {
    MEMORY[0x1E69E5928](v6);
    v18 = v6;
    MEMORY[0x1E69E5920](a4);

    MEMORY[0x1E69E5920](v18);
    return v6;
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    MEMORY[0x1E69E5920](a4);

    return 0;
  }
}

char *sub_1AC3A6FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v13 = a1;
  v11 = a2;
  v12 = a3;
  *OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell____lazy_storage___slider = 0;
  v8 = OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell_listeners;
  sub_1AC3B7634();
  sub_1AC3AF208();
  *&v14[v8] = sub_1AC3B7E54();
  *&v14[OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell_headphoneDevice] = 0;

  if (a3)
  {
    v5 = sub_1AC3B7EE4();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = v14;
  v10.super_class = type metadata accessor for HPCUIAdaptiveVolumeSliderCell();
  v4 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_, a1, v6);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5928](v4);
  v14 = v4;

  MEMORY[0x1E69E5920](v14);
  return v4;
}

char *sub_1AC3A724C(uint64_t a1)
{
  v8 = 0;
  v7 = a1;
  *OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell____lazy_storage___slider = 0;
  v3 = OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell_listeners;
  sub_1AC3B7634();
  sub_1AC3AF208();
  *&v8[v3] = sub_1AC3B7E54();
  *&v8[OBJC_IVAR____TtC20HeadphoneCommonUIKit29HPCUIAdaptiveVolumeSliderCell_headphoneDevice] = 0;
  v6.receiver = v8;
  v6.super_class = type metadata accessor for HPCUIAdaptiveVolumeSliderCell();
  v5 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);
  if (v5)
  {
    MEMORY[0x1E69E5928](v5);
    v8 = v5;
    MEMORY[0x1E69E5920](a1);
    MEMORY[0x1E69E5920](v8);
    return v5;
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    MEMORY[0x1E69E5920](a1);
    return 0;
  }
}

id sub_1AC3A73D8()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HPCUIAdaptiveVolumeSliderCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AC3A7484()
{
  v2 = (v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit35HPCUIAdaptiveVolumeDetailController_headphoneDevice);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1AC3A74F4(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC20HeadphoneCommonUIKit35HPCUIAdaptiveVolumeDetailController_headphoneDevice);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1AC3A75F8()
{
  v2 = (v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit35HPCUIAdaptiveVolumeDetailController_listeners);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC3A7660(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC20HeadphoneCommonUIKit35HPCUIAdaptiveVolumeDetailController_listeners);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

id HPCUIAdaptiveVolumeDetailController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = sub_1AC3B7EE4();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v10 initWithNibName_bundle_];
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](v7);
  return v5;
}

char *HPCUIAdaptiveVolumeDetailController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v12 = a1;
  v13 = a2;
  v11 = a3;
  *OBJC_IVAR____TtC20HeadphoneCommonUIKit35HPCUIAdaptiveVolumeDetailController_headphoneDevice = 0;
  v8 = OBJC_IVAR____TtC20HeadphoneCommonUIKit35HPCUIAdaptiveVolumeDetailController_listeners;
  sub_1AC3B7634();
  sub_1AC3AF208();
  *&v14[v8] = sub_1AC3B7E54();
  *&v14[OBJC_IVAR____TtC20HeadphoneCommonUIKit35HPCUIAdaptiveVolumeDetailController____lazy_storage___sliderSection] = 0;

  if (a2)
  {
    v5 = sub_1AC3B7EE4();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = v14;
  v10.super_class = type metadata accessor for HPCUIAdaptiveVolumeDetailController();
  v4 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v6, a3);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5928](v4);
  v14 = v4;
  MEMORY[0x1E69E5920](a3);

  MEMORY[0x1E69E5920](v14);
  return v4;
}

void sub_1AC3A7A9C()
{
  *OBJC_IVAR____TtC20HeadphoneCommonUIKit35HPCUIAdaptiveVolumeDetailController_headphoneDevice = 0;
  v0 = OBJC_IVAR____TtC20HeadphoneCommonUIKit35HPCUIAdaptiveVolumeDetailController_listeners;
  sub_1AC3B7634();
  sub_1AC3AF208();
  *v0 = sub_1AC3B7E54();
  *OBJC_IVAR____TtC20HeadphoneCommonUIKit35HPCUIAdaptiveVolumeDetailController____lazy_storage___sliderSection = 0;
  sub_1AC3B7F54();
  sub_1AC3B84A4();
  __break(1u);
}

uint64_t sub_1AC3A7BDC()
{
  v6 = (v0 + OBJC_IVAR____TtC20HeadphoneCommonUIKit35HPCUIAdaptiveVolumeDetailController____lazy_storage___sliderSection);
  swift_beginAccess();
  v7 = *v6;

  swift_endAccess();
  if (v7)
  {
    return v7;
  }

  v3 = sub_1AC3A7CD0(v5);

  v2 = (v5 + OBJC_IVAR____TtC20HeadphoneCommonUIKit35HPCUIAdaptiveVolumeDetailController____lazy_storage___sliderSection);
  swift_beginAccess();
  *v2 = v3;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC3A7CD0(uint64_t a1)
{
  v25 = a1;
  v16 = sub_1AC3AFF78;
  v24 = sub_1AC3AFF80;
  v34 = 0;
  v21 = 0;
  v13 = sub_1AC3B7ED4();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v8 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v12 = &v7 - v8;
  v34 = v1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555700);
  v33 = v25;
  v19 = 1;
  sub_1AC3B7F54();
  sub_1AC3B7EC4();
  v18 = type metadata accessor for HPCUIAdaptiveVolumeDetailController();
  v14 = sub_1AC3873BC(v12, v18);
  v15 = v2;
  (*(v10 + 8))(v12, v13);
  v3 = sub_1AC3A3584();
  v17 = PSSpecifierGroupBuilder.__allocating_init(_:name:)(v3, v4, v14, v15);
  MEMORY[0x1E69E5928](v25);
  v30 = v25;
  v23 = sub_1AC39E698(v16);
  MEMORY[0x1E69E5920](v25);

  MEMORY[0x1E69E5928](v25);
  v20 = v31;
  v31[3] = v18;
  v31[0] = v25;
  v5 = sub_1AC3A3578();
  v22 = v32;
  AnyBindable.init(identity:name:target:getSelector:setSelector:cell:buttonAction:group:detail:getAction:setAction:buttonTapAction:)(v21, v21, v21, v21, v20, v21, v21, -1, v32, 0, v5 & v19, 0, 0, 0, 0);
  v26 = sub_1AC39E760(v22);
  sub_1AC39DEE0(v22);

  MEMORY[0x1E69E5928](v25);
  v29 = v25;
  v27 = sub_1AC39F400(v24);
  MEMORY[0x1E69E5920](v25);

  v28 = sub_1AC39F548();

  return v28;
}

uint64_t sub_1AC3A7FCC(void *a1, uint64_t a2)
{
  v20 = a1;
  v9[1] = a2;
  v25 = 0;
  v24 = 0;
  v11 = 0;
  v15 = sub_1AC3B7ED4();
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v10 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v14 = v9 - v10;
  v25 = v2;
  v24 = v3;
  v23 = v3;
  sub_1AC3B7F54();
  sub_1AC3B7EC4();
  v4 = type metadata accessor for HPCUIAdaptiveVolumeDetailController();
  v16 = sub_1AC3873BC(v14, v4);
  v17 = v5;
  (*(v12 + 8))(v14, v15);
  v22 = sub_1AC3B7EE4();

  v19 = *MEMORY[0x1E69C5900];
  MEMORY[0x1E69E5928](v19);
  sub_1AC3B7EF4();
  v18 = v6;
  v21 = sub_1AC3B7EE4();

  *&v7 = MEMORY[0x1E69E5920](v19).n128_u64[0];
  [v20 setProperty:v22 forKey:{v21, v7}];
  MEMORY[0x1E69E5920](v21);
  return swift_unknownObjectRelease();
}

uint64_t sub_1AC3A819C(void *a1)
{
  type metadata accessor for HPCUIAdaptiveVolumeSliderCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555708);
  v9 = sub_1AC3B8584();
  v6 = *MEMORY[0x1E69C5860];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C5860]);
  sub_1AC3B7EF4();
  v8 = sub_1AC3B7EE4();

  [a1 setProperty:v9 forKey:{v8, MEMORY[0x1E69E5920](v6).n128_f64[0]}];
  MEMORY[0x1E69E5920](v8);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555710);
  sub_1AC3B8574();
  v10 = v1;
  *v1 = sub_1AC3B7F54();
  v10[1] = v2;
  v11 = sub_1AC3A7484();
  if (v11)
  {
    v5 = v11;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v10[2] = v5;
  sub_1AC36EE1C();
  sub_1AC3B7434();
  sub_1AC3B7E74();
  v4 = sub_1AC3B7E64();

  [a1 setUserInfo_];
  return swift_unknownObjectRelease();
}

uint64_t sub_1AC3A8400(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC20HeadphoneCommonUIKit35HPCUIAdaptiveVolumeDetailController____lazy_storage___sliderSection);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t (*sub_1AC3A8480(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC3A7BDC();
  return sub_1AC3A84DC;
}

uint64_t sub_1AC3A84DC(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1AC3A8400(*a1);
  }

  v3 = *a1;

  sub_1AC3A8400(v3);
  result = a1;
  sub_1AC358148();
  return result;
}

void sub_1AC3A8548()
{
  v85 = sub_1AC3A9298;
  v86 = sub_1AC3A9268;
  v87 = sub_1AC377AC8;
  v88 = sub_1AC3AF2B0;
  v89 = sub_1AC377AC8;
  v90 = sub_1AC377AC0;
  v91 = sub_1AC377AC0;
  v92 = sub_1AC377AD4;
  v93 = sub_1AC377AC0;
  v94 = sub_1AC377AC0;
  v95 = sub_1AC377AD4;
  v96 = "Fatal error";
  v97 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v98 = "HeadphoneCommonUIKit/SliderUI.swift";
  v130 = 0;
  v99 = 0;
  v120 = 0;
  v116 = 0;
  v100 = 0;
  v101 = sub_1AC3B7524();
  v102 = *(v101 - 8);
  v103 = v101 - 8;
  v104 = (*(v102 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v105 = v30 - v104;
  v107 = sub_1AC3B7ED4();
  v108 = *(v107 - 8);
  v109 = v107 - 8;
  v110 = (*(v108 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x1EEE9AC00](v106);
  v111 = v30 - v110;
  v130 = v1;
  v112 = [v1 specifier];
  if (v112)
  {
    v84 = v112;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v82 = v84;
  v83 = [v84 userInfo];
  if (v83)
  {
    v81 = v83;
    v80 = v83;
    v79 = v113;
    sub_1AC3B8384();
    sub_1AC377D20(v79, &v126);
    swift_unknownObjectRelease();
  }

  else
  {
    v126 = 0uLL;
    v127 = 0uLL;
  }

  v128 = v126;
  v129 = v127;
  MEMORY[0x1E69E5920](v82);
  if (*(&v129 + 1))
  {
    sub_1AC39B678();
    if (swift_dynamicCast())
    {
      v78 = v113[4];
    }

    else
    {
      v78 = 0;
    }

    v77 = v78;
  }

  else
  {
    sub_1AC38FF40(&v128);
    v77 = 0;
  }

  v76 = v77;
  if (v77)
  {
    v75 = v76;
    v72 = v76;
    v120 = v76;
    sub_1AC3B7F54();
    v71 = v2;
    v73 = sub_1AC3B7EE4();

    v74 = [v72 objectForKey_];
    swift_unknownObjectRelease();
    if (v74)
    {
      v70 = v74;
      v69 = v74;
      v68 = v114;
      sub_1AC3B8384();
      sub_1AC377D20(v68, &v117);
      swift_unknownObjectRelease();
    }

    else
    {
      v117 = 0uLL;
      v118 = 0uLL;
    }

    v119[0] = v117;
    v119[1] = v118;
    if (*(&v118 + 1))
    {
      sub_1AC3B7434();
      if (swift_dynamicCast())
      {
        v67 = v114[4];
      }

      else
      {
        v67 = 0;
      }

      v66 = v67;
    }

    else
    {
      sub_1AC38FF40(v119);
      v66 = 0;
    }

    v65 = v66;
    if (v66)
    {
      v64 = v65;
      v63 = v65;
      v116 = v65;
      MEMORY[0x1E69E5928](v65);
      sub_1AC3A74F4(v63);
      MEMORY[0x1E69E5928](v106);
      v58 = type metadata accessor for HPCUIAdaptiveVolumeDetailController();
      v115.receiver = v106;
      v115.super_class = v58;
      objc_msgSendSuper2(&v115, sel_viewDidLoad);
      MEMORY[0x1E69E5920](v106);
      *&v3 = MEMORY[0x1E69E5928](v106).n128_u64[0];
      v62 = [v106 navigationItem];
      MEMORY[0x1E69E5920](v106);
      v114[5] = v106;
      sub_1AC3B7F54();
      sub_1AC3B7EC4();
      v59 = sub_1AC3873BC(v111, v58);
      v60 = v4;
      (*(v108 + 8))(v111, v107);
      v61 = sub_1AC3B7EE4();

      [v62 setTitle_];
      MEMORY[0x1E69E5920](v61);
      MEMORY[0x1E69E5920](v62);
      MEMORY[0x1E69E5920](v63);
      MEMORY[0x1E69E5920](v72);
      return;
    }

    MEMORY[0x1E69E5920](v72);
  }

  v5 = v105;
  v6 = sub_1AC3A3660();
  (*(v102 + 16))(v5, v6, v101);
  v43 = 32;
  v44 = 7;
  v7 = swift_allocObject();
  v45 = v7;
  *(v7 + 16) = v85;
  *(v7 + 24) = 0;
  v56 = sub_1AC3B7504();
  v57 = sub_1AC3B8254();
  v41 = 17;
  v47 = swift_allocObject();
  v40 = 32;
  *(v47 + 16) = 32;
  v48 = swift_allocObject();
  v42 = 8;
  *(v48 + 16) = 8;
  v8 = swift_allocObject();
  v39 = v8;
  *(v8 + 16) = v86;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  v10 = v39;
  v49 = v9;
  *(v9 + 16) = v87;
  *(v9 + 24) = v10;
  v50 = swift_allocObject();
  *(v50 + 16) = v40;
  v51 = swift_allocObject();
  *(v51 + 16) = v42;
  v11 = swift_allocObject();
  v12 = v45;
  v46 = v11;
  *(v11 + 16) = v88;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v46;
  v53 = v13;
  *(v13 + 16) = v89;
  *(v13 + 24) = v14;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5549B0);
  v52 = sub_1AC3B8574();
  v54 = v15;

  v16 = v47;
  v17 = v54;
  *v54 = v90;
  v17[1] = v16;

  v18 = v48;
  v19 = v54;
  v54[2] = v91;
  v19[3] = v18;

  v20 = v49;
  v21 = v54;
  v54[4] = v92;
  v21[5] = v20;

  v22 = v50;
  v23 = v54;
  v54[6] = v93;
  v23[7] = v22;

  v24 = v51;
  v25 = v54;
  v54[8] = v94;
  v25[9] = v24;

  v26 = v53;
  v27 = v54;
  v54[10] = v95;
  v27[11] = v26;
  sub_1AC36EE1C();

  if (os_log_type_enabled(v56, v57))
  {
    v28 = v99;
    v31 = sub_1AC3B8334();
    v30[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F90);
    v32 = sub_1AC374C60(0);
    v33 = sub_1AC374C60(2);
    v35 = &v125;
    v125 = v31;
    v36 = &v124;
    v124 = v32;
    v37 = &v123;
    v123 = v33;
    v34 = 2;
    sub_1AC374CB4(2, &v125);
    sub_1AC374CB4(v34, v35);
    v121 = v90;
    v122 = v47;
    sub_1AC374CC8(&v121, v35, v36, v37);
    v38 = v28;
    if (v28)
    {

      __break(1u);
    }

    else
    {
      v121 = v91;
      v122 = v48;
      sub_1AC374CC8(&v121, &v125, &v124, &v123);
      v30[3] = 0;
      v121 = v92;
      v122 = v49;
      sub_1AC374CC8(&v121, &v125, &v124, &v123);
      v30[2] = 0;
      v121 = v93;
      v122 = v50;
      sub_1AC374CC8(&v121, &v125, &v124, &v123);
      v30[1] = 0;
      v121 = v94;
      v122 = v51;
      sub_1AC374CC8(&v121, &v125, &v124, &v123);
      v30[0] = 0;
      v121 = v95;
      v122 = v53;
      sub_1AC374CC8(&v121, &v125, &v124, &v123);
      _os_log_impl(&dword_1AC345000, v56, v57, "%s: HPCUIAdaptiveVolumeDetailController Depedencies not meet! %s", v31, 0x16u);
      sub_1AC374D14(v32);
      sub_1AC374D14(v33);
      sub_1AC3B8314();
    }
  }

  else
  {
  }

  v29 = MEMORY[0x1E69E5920](v56);
  (*(v102 + 8))(v105, v101, v29);
}

uint64_t sub_1AC3A9298@<X0>(uint64_t *a1@<X8>)
{
  sub_1AC3B7464();
  v3 = sub_1AC3B7454();
  sub_1AC3B7444();
  sub_1AC3B7434();
  *a1 = sub_1AC3B7E84();
  MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1AC3A9380()
{
  v84 = sub_1AC3A9298;
  v85 = sub_1AC3AA0B0;
  v86 = sub_1AC377AC8;
  v87 = sub_1AC3AF2B0;
  v88 = sub_1AC377AC8;
  v89 = sub_1AC377AC0;
  v90 = sub_1AC377AC0;
  v91 = sub_1AC377AD4;
  v92 = sub_1AC377AC0;
  v93 = sub_1AC377AC0;
  v94 = sub_1AC377AD4;
  v95 = sub_1AC3AA0E0;
  v110 = 0;
  v109 = 0;
  v96 = 0;
  v97 = sub_1AC3B7524();
  v98 = *(v97 - 8);
  v99 = v97 - 8;
  v100 = (*(v98 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v97);
  v101 = v33 - v100;
  v110 = v0;
  v108 = sub_1AC3A7484();
  v82 = v108 != 0;
  v81 = v82;
  sub_1AC35E758(&v108);
  if (!v81)
  {
    v7 = v101;
    v42 = 0;
    v43 = sub_1AC393AEC();
    v44 = sub_1AC3B8574();

    v109 = v44;
    v47 = sub_1AC3B8074();

    sub_1AC3B7F54();
    v45 = v8;
    v46 = sub_1AC3B7EE4();

    [v83 setValue:v47 forKey:v46];
    MEMORY[0x1E69E5920](v46);
    swift_unknownObjectRelease();
    v9 = sub_1AC3A3660();
    (*(v98 + 16))(v7, v9, v97);
    v52 = 32;
    v53 = 7;
    v10 = swift_allocObject();
    v54 = v10;
    *(v10 + 16) = v84;
    *(v10 + 24) = 0;
    v65 = sub_1AC3B7504();
    v66 = sub_1AC3B8254();
    v50 = 17;
    v56 = swift_allocObject();
    v49 = 32;
    *(v56 + 16) = 32;
    v57 = swift_allocObject();
    v51 = 8;
    *(v57 + 16) = 8;
    v11 = swift_allocObject();
    v48 = v11;
    *(v11 + 16) = v85;
    *(v11 + 24) = 0;
    v12 = swift_allocObject();
    v13 = v48;
    v58 = v12;
    *(v12 + 16) = v86;
    *(v12 + 24) = v13;
    v59 = swift_allocObject();
    *(v59 + 16) = v49;
    v60 = swift_allocObject();
    *(v60 + 16) = v51;
    v14 = swift_allocObject();
    v15 = v54;
    v55 = v14;
    *(v14 + 16) = v87;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v55;
    v62 = v16;
    *(v16 + 16) = v88;
    *(v16 + 24) = v17;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5549B0);
    v61 = sub_1AC3B8574();
    v63 = v18;

    v19 = v56;
    v20 = v63;
    *v63 = v89;
    v20[1] = v19;

    v21 = v57;
    v22 = v63;
    v63[2] = v90;
    v22[3] = v21;

    v23 = v58;
    v24 = v63;
    v63[4] = v91;
    v24[5] = v23;

    v25 = v59;
    v26 = v63;
    v63[6] = v92;
    v26[7] = v25;

    v27 = v60;
    v28 = v63;
    v63[8] = v93;
    v28[9] = v27;

    v29 = v62;
    v30 = v63;
    v63[10] = v94;
    v30[11] = v29;
    sub_1AC36EE1C();

    if (os_log_type_enabled(v65, v66))
    {
      v31 = v96;
      v34 = sub_1AC3B8334();
      v33[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F90);
      v35 = sub_1AC374C60(0);
      v36 = sub_1AC374C60(2);
      v38 = &v107;
      v107 = v34;
      v39 = &v106;
      v106 = v35;
      v40 = &v105;
      v105 = v36;
      v37 = 2;
      sub_1AC374CB4(2, &v107);
      sub_1AC374CB4(v37, v38);
      v103 = v89;
      v104 = v56;
      sub_1AC374CC8(&v103, v38, v39, v40);
      v41 = v31;
      if (v31)
      {

        __break(1u);
      }

      else
      {
        v103 = v90;
        v104 = v57;
        sub_1AC374CC8(&v103, &v107, &v106, &v105);
        v33[3] = 0;
        v103 = v91;
        v104 = v58;
        sub_1AC374CC8(&v103, &v107, &v106, &v105);
        v33[2] = 0;
        v103 = v92;
        v104 = v59;
        sub_1AC374CC8(&v103, &v107, &v106, &v105);
        v33[1] = 0;
        v103 = v93;
        v104 = v60;
        sub_1AC374CC8(&v103, &v107, &v106, &v105);
        v33[0] = 0;
        v103 = v94;
        v104 = v62;
        sub_1AC374CC8(&v103, &v107, &v106, &v105);
        _os_log_impl(&dword_1AC345000, v65, v66, "%s: HPCUIAdaptiveVolumeDetailController Depedencies not meet! %s", v34, 0x16u);
        sub_1AC374D14(v35);
        sub_1AC374D14(v36);
        sub_1AC3B8314();
      }
    }

    else
    {
    }

    v32 = MEMORY[0x1E69E5920](v65);
    (*(v98 + 8))(v101, v97, v32);
    sub_1AC358148();
    return 0;
  }

  v1 = v96;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555160);
  v76 = sub_1AC3B8574();
  v75 = v2;
  v3 = sub_1AC3A7BDC();
  v4 = v76;
  *v75 = v3;
  sub_1AC36EE1C();
  v102 = v4;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555570);
  v79 = sub_1AC3AF3A0();
  sub_1AC3941C8();
  result = sub_1AC3B8004();
  v80 = result;
  if (!v1)
  {
    v71 = v80;
    sub_1AC358148();

    v72 = &v109;
    v109 = v71;
    v70 = sub_1AC393AEC();
    v69 = sub_1AC3B8074();
    sub_1AC3B7F54();
    v67 = v6;
    v68 = sub_1AC3B7EE4();

    [v83 setValue:v69 forKey:v68];
    MEMORY[0x1E69E5920](v68);
    swift_unknownObjectRelease();
    v73 = sub_1AC3B8474();

    sub_1AC358148();
    return v73;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC3AA0E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  *a2 = v4;
  return result;
}

id HPCUIAdaptiveVolumeDetailController.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HPCUIAdaptiveVolumeDetailController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AC3AA290()
{
  v2 = *(v0 + qword_1EB555580);

  return v2;
}

uint64_t sub_1AC3AA2FC()
{
  v2 = *(v0 + qword_1EB555588);

  return v2;
}

uint64_t sub_1AC3AA368()
{
  v2 = (v0 + qword_1EB555590);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC3AA400(uint64_t a1)
{

  v3 = (v1 + qword_1EB555590);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

id sub_1AC3AA550()
{
  [v0 bounds];
  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  MEMORY[0x1E69E5920](v0);
  return [v0 trackRectForBounds_];
}

uint64_t sub_1AC3AA670()
{
  [v0 maximumValue];
  MEMORY[0x1E69E5920](v0);

  v3 = sub_1AC3B80B4();

  result = v3;
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
  }

  return result;
}

void sub_1AC3AA7F8()
{
  v21 = 0;
  v14 = 0;
  v20 = *((*v0 & *MEMORY[0x1E69E7D40]) + 0x50);
  v15 = *(v0 + qword_1EB555580);

  v17 = sub_1AC3B80B4();
  v16 = v17;

  if (v17 < 0)
  {
    LODWORD(v7) = 0;
    v6 = 760;
    v5 = 2;
    sub_1AC3B8494();
    __break(1u);
  }

  v8[3] = 0;
  v18 = 0;
  v19 = v16;
  v1 = v13;
  v8[2] = v8;
  MEMORY[0x1EEE9AC00](v8);
  v9 = &v5;
  v7 = v2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554750);
  v11 = type metadata accessor for CGRect();
  v3 = sub_1AC3AF454();
  v12 = sub_1AC3904D8(sub_1AC3AF428, v9, v10, v11, MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v4);
  v8[1] = v12;
}

void sub_1AC3AA9F8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = sub_1AC3ADEF4(*a1);
  *a2 = sub_1AC3AE47C(v2);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

uint64_t sub_1AC3AAA94()
{
  [v0 value];
  v3 = v1;
  MEMORY[0x1E69E5920](v0);
  return sub_1AC3ADF68(v3);
}

void (*sub_1AC3AABA8(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1AC3AAA94();
  return sub_1AC3AAC30;
}

uint64_t sub_1AC3AAC88()
{

  sub_1AC3AAA94();
  sub_1AC3B80F4();
}

uint64_t sub_1AC3AAD14(uint64_t a1)
{
  v5 = *((*v1 & *MEMORY[0x1E69E7D40]) + 0x50);
  v2 = (*(*((*v1 & *MEMORY[0x1E69E7D40]) + 0x58) + 8))();
  sub_1AC3AAB24(v2);
  return (*(*(v5 - 8) + 8))(a1);
}

void (*sub_1AC3AADFC(void *a1))(void **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = *((*v1 & *MEMORY[0x1E69E7D40]) + 0x50);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  sub_1AC3AAC88();
  return sub_1AC3AAF38;
}

void sub_1AC3AAF38(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_1AC3AAD14(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_1AC3AAD14(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

double sub_1AC3AB034(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = sub_1AC3AB0A4();
  MEMORY[0x1E69E5920](a1);
  return v3;
}

double sub_1AC3AB0A4()
{
  v7 = 0;
  v3 = *v0 & *MEMORY[0x1E69E7D40];
  v7 = v0;
  v6 = *(v3 + 80);
  MEMORY[0x1E69E5928](v0);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for HeadphoneAccessoryLabeledSlider();
  objc_msgSendSuper2(&v5, sel_intrinsicContentSize);
  MEMORY[0x1E69E5920](v0);
  [v0 bounds];
  v4 = v1;
  MEMORY[0x1E69E5920](v0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5555B8);
  sub_1AC3AF524();
  sub_1AC3B7FF4();
  sub_1AC358148();
  return v4;
}

uint64_t sub_1AC3AB298(uint64_t a1, void **a2)
{
  v11 = *a2;
  [v11 frame];
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  MEMORY[0x1E69E5920](v11);
  sub_1AC3AB384(v7, v8, v9, v10);
  sub_1AC3AFF00();
  return sub_1AC3B85B4();
}

uint64_t sub_1AC3AB3C4()
{
  v2 = *(v0 + qword_1EB5555B0);

  return v2;
}

void sub_1AC3AB474(uint64_t a1, uint64_t a2)
{
  v95 = a2;
  v103 = a1;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v96 = 0;
  v118 = 0;
  v97 = *v2 & *MEMORY[0x1E69E7D40];
  v98 = v97;
  v99 = *(v97 + 80);
  v128 = v99;
  v126 = a1;
  v125 = a2;
  v127 = v2;
  v102 = v2;
  v101 = qword_1EB555590;
  v100 = sub_1AC377CBC();
  *&v2[v101] = sub_1AC3B7E44();
  *&v127[qword_1EB555598] = 0x4024000000000000;
  *&v127[qword_1EB5555A0] = 0x403B000000000000;

  if (sub_1AC3B80B4() <= 2)
  {
    sub_1AC3B7F54();
    LODWORD(v23) = 0;
    v22 = 240;
    sub_1AC3B84A4();
    __break(1u);
  }

  v3 = v96;

  v84 = v127;

  *&v127[qword_1EB5555B0] = v95;
  v88 = [objc_opt_self() sharedApplication];
  v87 = [v88 connectedScenes];
  v85 = v87;
  v90 = 0;
  v86 = sub_1AC3AF5AC();
  sub_1AC3AF610();
  v89 = sub_1AC3B81A4();

  v123 = v89;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5555D8);
  v92 = sub_1AC3AF690();
  sub_1AC3AF6F4();
  v93 = v3;
  v94 = sub_1AC3B7FC4();
  if (v3)
  {
    __break(1u);
    __break(1u);
    __break(1u);
    goto LABEL_24;
  }

  v81 = v94;
  sub_1AC358148();

  v122 = v94;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5555F0);
  sub_1AC3AF77C();
  sub_1AC3B8214();
  v83 = v121;
  v82 = v121;

  if (!v121)
  {
    v78 = v93;
LABEL_22:
    v65 = 0;
    v66 = 1;
    v67 = v78;
    goto LABEL_10;
  }

  v79 = v82;
  v73 = v82;
  v71 = [v82 windows];
  v70 = v71;
  v75 = 0;
  v72 = sub_1AC3AF958();
  v74 = sub_1AC3B8084();

  v104 = v74;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555618);
  sub_1AC3AF9BC();
  sub_1AC3B7FE4();
  v77 = v93;
  sub_1AC358148();

  v69 = v124;
  if (!v124)
  {
    v78 = v77;
    goto LABEL_22;
  }

  v68 = v69;
  v62 = v69;
  v63 = [v69 traitCollection];

  v64 = [v63 layoutDirection];
  v65 = v64;
  v66 = 0;
  v67 = v77;
LABEL_10:
  v61 = v67;
  v119 = v65;
  v120 = v66 & 1;
  if (v66)
  {
    v60 = 0;
  }

  else
  {
    v60 = v119;
  }

  v118 = v60;
  v58 = v127;
  v117 = v60;
  v116 = 1;
  v59 = type metadata accessor for UITraitEnvironmentLayoutDirection();
  sub_1AC37A2D8();
  if (sub_1AC3B8594())
  {

    v105 = v103;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554AA8);
    sub_1AC3938E0();
    v57 = sub_1AC3B8024();
  }

  else
  {

    v57 = v103;
  }

  v4 = v61;
  *&v58[qword_1EB555580] = v57;
  v47 = v127;
  v48 = *&v127[qword_1EB555580];

  v115 = v48;
  v49 = &v24;
  MEMORY[0x1EEE9AC00](&v24);
  v51 = v21;
  v22 = v99;
  v50 = *(v5 + 88);
  v23 = v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554AA8);
  v53 = sub_1AC3AF840();
  v6 = sub_1AC37A1D0();
  v8 = sub_1AC3904D8(sub_1AC3AF804, v51, v52, v53, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  v54 = v4;
  v55 = v8;
  v40 = v8;
  sub_1AC358148();
  *&v47[qword_1EB555588] = v40;
  v41 = v127;
  v42 = 0.0;
  v44 = type metadata accessor for HeadphoneAccessoryLabeledSlider();
  v114.receiver = v41;
  v114.super_class = v44;
  v110 = v42;
  v111 = v42;
  v112 = v42;
  v113 = v42;
  v45 = objc_msgSendSuper2(&v114, sel_initWithFrame_, v42, v42, v42, v42);
  v43 = v45;
  v9 = v45;
  v127 = v45;
  v10 = v45;
  v109.receiver = v45;
  v109.super_class = v44;
  objc_msgSendSuper2(&v109, sel__setTrackEnabled_, 1);

  v11 = v45;
  [v45 setMinimumValue_];

  v12 = v45;
  v13 = sub_1AC3B80B4();
  v15 = __OFSUB__(v13, 1);
  v46 = v13 - 1;
  if (v15)
  {
    goto LABEL_25;
  }

  v16 = v54;
  *&v14 = v46;
  [v43 setMaximumValue_];

  v34 = v127;
  v35 = *&v127[qword_1EB555588];

  v108 = v35;
  v17 = v43;
  v36 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v37 = &v21[-32];
  *&v21[-16] = v18;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5555B8);
  v19 = sub_1AC3AF8D0();
  v39 = sub_1AC3904D8(sub_1AC3AF8A4, v37, v38, v100, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);
  if (!v16)
  {
    v25 = v39;

    sub_1AC358148();
    v27 = &qword_1EB555000;
    v24 = &v34[qword_1EB555590];
    v26 = &v107;
    v28 = 0;
    swift_beginAccess();
    *v24 = v25;

    swift_endAccess();
    v32 = objc_opt_self();
    v29 = &v127[v27[178]];
    v30 = &v106;
    swift_beginAccess();
    v31 = *v29;

    swift_endAccess();
    v33 = sub_1AC3B8074();

    [v32 activateConstraints_];

    return;
  }

LABEL_24:

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1AC3ABE80(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    MEMORY[0x1E69E5920](v3);
    *a2 = 0;
  }
}

double sub_1AC3ABF54@<D0>(void *a1@<X8>)
{
  sub_1AC3AF840();
  v6 = sub_1AC3A3F90(0.0, 0.0, 0.0, 0.0);
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x1E69E5920](v6);
  type metadata accessor for HeadphoneAccessoryLabeledSlider();
  v2 = *MEMORY[0x1E69DDD28];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69DDD28]);
  v3 = sub_1AC3AC110(v2, 0, 1);
  [v6 setFont_];
  MEMORY[0x1E69E5920](v3);

  v4 = sub_1AC3B7EE4();

  [v6 setText_];
  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5928](v6);
  *a1 = v6;
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

id sub_1AC3AC110(uint64_t a1, uint64_t a2, char a3)
{
  v39[0] = 0;
  v43 = a1;
  v41 = a2;
  v42 = a3 & 1;
  v40 = v3;
  v39[1] = *(v3 + 80);
  v30 = [objc_opt_self() sharedApplication];
  v32 = [v30 preferredContentSizeCategory];
  MEMORY[0x1E69E5920](v30);
  MEMORY[0x1E69E5928](v32);
  v31 = *MEMORY[0x1E69DDC68];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69DDC68]);
  v38 = v31;
  v37[1] = v32;
  type metadata accessor for UIContentSizeCategory();
  sub_1AC35CA5C();
  v33 = sub_1AC3B7EB4();
  sub_1AC35E758(&v38);
  if (v33)
  {
    MEMORY[0x1E69E5920](v32);
    MEMORY[0x1E69E5920](v32);
LABEL_9:
    v19 = [objc_opt_self() sharedApplication];
    v20 = [v19 preferredContentSizeCategory];
    MEMORY[0x1E69E5920](v19);
    MEMORY[0x1E69E5928](v20);
    v39[0] = v20;
    v21 = v20;
    goto LABEL_11;
  }

  MEMORY[0x1E69E5920](v32);
  MEMORY[0x1E69E5928](v32);
  v26 = *MEMORY[0x1E69DDC88];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69DDC88]);
  v37[0] = v26;
  v36[1] = v32;
  v27 = sub_1AC3B7EB4();
  sub_1AC35E758(v37);
  if (v27)
  {
    MEMORY[0x1E69E5920](v32);
    MEMORY[0x1E69E5920](v32);
    goto LABEL_9;
  }

  MEMORY[0x1E69E5920](v32);
  MEMORY[0x1E69E5928](v32);
  v24 = *MEMORY[0x1E69DDC78];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69DDC78]);
  v36[0] = v24;
  v35[1] = v32;
  v25 = sub_1AC3B7EB4();
  sub_1AC35E758(v36);
  if (v25)
  {
    MEMORY[0x1E69E5920](v32);
    MEMORY[0x1E69E5920](v32);
    goto LABEL_9;
  }

  MEMORY[0x1E69E5920](v32);
  MEMORY[0x1E69E5928](v32);
  v22 = *MEMORY[0x1E69DDC70];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69DDC70]);
  v35[0] = v22;
  v23 = sub_1AC3B7EB4();
  sub_1AC35E758(v35);
  if (v23)
  {
    MEMORY[0x1E69E5920](v32);
    MEMORY[0x1E69E5920](v32);
    goto LABEL_9;
  }

  MEMORY[0x1E69E5920](v32);
  v18 = *MEMORY[0x1E69DDC70];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69DDC70]);
  MEMORY[0x1E69E5928](v18);
  v39[0] = v18;
  MEMORY[0x1E69E5920](v32);
  v21 = v18;
LABEL_11:
  sub_1AC3AFA44();
  v15 = sub_1AC3AE970(v21);
  v14 = objc_opt_self();
  v16 = [v14 preferredFontDescriptorWithTextStyle:a1 compatibleWithTraitCollection:{v15, MEMORY[0x1E69E5928](v15).n128_f64[0]}];
  MEMORY[0x1E69E5920](v15);
  sub_1AC3AFAA8();
  MEMORY[0x1E69E5928](a1);
  v17 = sub_1AC3AEA84(a1);
  if (a3)
  {
    v9 = objc_opt_self();
    [v16 pointSize];
    v10 = [v9 systemFontOfSize_];
    v4 = MEMORY[0x1E69E5928](v10).n128_u64[0];
    v34 = v10;
    v13 = v10;
  }

  else
  {
    v11 = objc_opt_self();
    [v16 pointSize];
    v12 = [v11 systemFontOfSize_weight_];
    v4 = MEMORY[0x1E69E5928](v12).n128_u64[0];
    v34 = v12;
    v13 = v12;
  }

  [v16 pointSize];
  v7 = v5;
  MEMORY[0x1E69E5928](v15);
  v8 = [v17 scaledFontForFont:v13 maximumPointSize:v15 compatibleWithTraitCollection:v7];
  MEMORY[0x1E69E5920](v15);
  MEMORY[0x1E69E5920](v13);
  MEMORY[0x1E69E5920](v34);
  MEMORY[0x1E69E5920](v17);
  MEMORY[0x1E69E5920](v16);
  MEMORY[0x1E69E5920](v15);
  sub_1AC35E758(v39);
  return v8;
}

id sub_1AC3AC7C8@<X0>(char *a1@<X1>, id *a2@<X0>, void *a3@<X8>)
{
  v12 = *a2;
  [a1 addSubview_];
  v7 = [v12 0x1FBBB4950];
  MEMORY[0x1E69E5920](v12);
  v6 = [a1 0x1FBBB4950];
  MEMORY[0x1E69E5920](a1);
  v8 = [v7 0x1FBB28F7ELL];
  MEMORY[0x1E69E5920](v6);
  [v8 0x1FB853878];
  MEMORY[0x1E69E5920](v8);
  v10 = [v12 0x1FBB20D25];
  MEMORY[0x1E69E5920](v12);
  v9 = [a1 0x1FBB20D25];
  v11 = [v10 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v9);
  [v11 0x1FB853878];
  MEMORY[0x1E69E5920](v11);
  v15 = [v12 centerXAnchor];
  MEMORY[0x1E69E5920](v12);
  v14 = [a1 leftAnchor];
  MEMORY[0x1E69E5920](a1);
  [a1 value];
  v13 = v4;
  MEMORY[0x1E69E5920](a1);
  v16 = [v15 0x1FBB28F7ELL];
  MEMORY[0x1E69E5920](v14);
  MEMORY[0x1E69E5920](v15);
  result = v16;
  *a3 = v16;
  return result;
}

id sub_1AC3ACB5C(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

void sub_1AC3ACBB0()
{
  v0 = qword_1EB555590;
  sub_1AC377CBC();
  *v0 = sub_1AC3B7E44();
  *qword_1EB555598 = 10.0;
  *qword_1EB5555A0 = 27.0;
  sub_1AC3B7F54();
  sub_1AC3B84A4();
  __break(1u);
}

void *sub_1AC3ACD0C(double a1, double a2, double a3, double a4)
{
  v29 = 0u;
  v30 = 0u;
  v28 = 0;
  v5 = *v4 & *MEMORY[0x1E69E7D40];
  *&v29 = a1;
  *(&v29 + 1) = a2;
  *&v30 = a3;
  *(&v30 + 1) = a4;
  v28 = v4;
  v27[1] = *(v5 + 80);
  sub_1AC3ADD9C();
  v18 = [objc_opt_self() systemFillColor];
  [v18 0x1FAA3E978];
  MEMORY[0x1E69E5920](v18);
  sub_1AC37B1F0();
  sub_1AC3AA550();
  v22 = v6;
  v19 = v7;
  v20 = v8;
  v21 = v9;
  sub_1AC3AA550();
  v14 = sub_1AC3ACFA4(v10, v11, v12, v13);
  v23 = sub_1AC3A34EC(v22, v19, v20, v21, v14 / 2.0);
  [v23 fill];
  MEMORY[0x1E69E5920](v23);
  v24 = [objc_opt_self() systemGray4Color];
  [v24 0x1FAA3E978];
  MEMORY[0x1E69E5920](v24);
  sub_1AC3AA7F8();
  v26[1] = v15;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555638);
  v16 = sub_1AC3AFB0C();
  MEMORY[0x1AC5B2330](v27, v25, v16);
  sub_1AC358148();
  v26[0] = v27[0];
  (MEMORY[0x1E69E5928])();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555648);
  sub_1AC3AFBC8();
  sub_1AC3B8014();
  (MEMORY[0x1E69E5920])();
  result = v26;
  sub_1AC358148();
  return result;
}

double sub_1AC3ACFE4(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v6 = sub_1AC3ADEF4(a1);
  v26 = sub_1AC3AE558(v6);
  if (a1)
  {
    v19 = v26;
  }

  else
  {

    sub_1AC3AF840();
    sub_1AC3B80F4();

    [v27 bounds];
    v18 = v7;
    (MEMORY[0x1E69E5920])();
    v19 = v18 / 2.0;
  }

  [a2 maximumValue];
  v17 = v8;
  MEMORY[0x1E69E5920](a2);
  if ((LODWORD(v17) >> 23) == 255)
  {
    sub_1AC3B8494();
    __break(1u);
  }

  if (v17 <= -9.2234e18)
  {
    sub_1AC3B8494();
    __break(1u);
  }

  if (v17 >= 9.2234e18)
  {
    sub_1AC3B8494();
    __break(1u);
  }

  if (a1 == v17)
  {
    sub_1AC3AA550();
    v15 = v9;

    sub_1AC3AF840();
    sub_1AC3B80F4();

    [v28 bounds];
    v14 = v10;
    (MEMORY[0x1E69E5920])();
    v16 = v15 - v14 / 2.0;
  }

  else
  {
    v16 = v19;
  }

  sub_1AC3AA368();
  sub_1AC377CBC();
  sub_1AC3B80F4();
  [v29 setConstant_];
  (MEMORY[0x1E69E5920])();

  sub_1AC37B1F0();
  v11 = sub_1AC3AD488(a3, a4, a5, a6);
  v13 = sub_1AC3A34EC(a3, a4, a5, a6, v11 / 2.0);
  [v13 fill];
  *&result = MEMORY[0x1E69E5920](v13).n128_u64[0];
  return result;
}

double sub_1AC3AD518(uint64_t a1, double a2, double a3, double a4, double a5)
{
  MEMORY[0x1E69E5928](a1);
  sub_1AC3ACD0C(a2, a3, a4, a5);
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double sub_1AC3AD5A8()
{
  v11 = 0;
  v4 = *v0 & *MEMORY[0x1E69E7D40];
  v11 = v0;
  v10[1] = *(v4 + 80);
  v9 = sub_1AC3AA368();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555658);
  v1 = sub_1AC3AFC50();
  MEMORY[0x1AC5B2330](v10, v5, v1);
  sub_1AC358148();
  v8 = v10[0];
  (MEMORY[0x1E69E5928])();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555668);
  sub_1AC3AFD0C();
  sub_1AC3B8014();
  (MEMORY[0x1E69E5920])();
  sub_1AC358148();
  (MEMORY[0x1E69E5928])();
  v2 = type metadata accessor for HeadphoneAccessoryLabeledSlider();
  v7.receiver = v6;
  v7.super_class = v2;
  objc_msgSendSuper2(&v7, sel_updateConstraints);
  *&result = (MEMORY[0x1E69E5920])().n128_u64[0];
  return result;
}

double sub_1AC3AD86C(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  sub_1AC3AD5A8();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double sub_1AC3AD8BC(double a1, double a2, double a3, double a4)
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0;
  v17 = 0u;
  v18 = 0u;
  v10 = *v4 & *MEMORY[0x1E69E7D40];
  *&v21 = a1;
  *(&v21 + 1) = a2;
  *&v22 = a3;
  *(&v22 + 1) = a4;
  v20 = v4;
  v19 = *(v10 + 80);
  MEMORY[0x1E69E5928](v4);
  v16.receiver = v4;
  v16.super_class = type metadata accessor for HeadphoneAccessoryLabeledSlider();
  objc_msgSendSuper2(&v16, sel_trackRectForBounds_, a1, a2, a3, a4);
  v15 = v5;
  *&v17 = v5;
  *(&v17 + 1) = v6;
  *&v18 = v7;
  *(&v18 + 1) = v8;
  MEMORY[0x1E69E5920](v4);
  return v15;
}

double sub_1AC3ADA58(uint64_t a1, double a2, double a3, double a4, double a5)
{
  MEMORY[0x1E69E5928](a1);
  v11 = sub_1AC3AD8BC(a2, a3, a4, a5);
  MEMORY[0x1E69E5920](a1);
  return v11;
}

double sub_1AC3ADBA4(uint64_t a1, float a2)
{
  MEMORY[0x1E69E5928](a1);
  sub_1AC3B72C4();
  sub_1AC3ADB28(a2);
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

void sub_1AC3ADC0C(char a1, char a2, float a3)
{
  v17 = 0.0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v12 = 0;
  v11 = 0.0;
  v6 = *v3 & *MEMORY[0x1E69E7D40];
  v17 = a3;
  v16 = a1 & 1;
  v15 = a2 & 1;
  v14 = v3;
  v13 = *(v6 + 80);
  v12 = sub_1AC3ADF68(a3);
  v11 = sub_1AC3ADEF4(v12);
  (MEMORY[0x1E69E5928])();
  v4 = type metadata accessor for HeadphoneAccessoryLabeledSlider();
  *&v5 = v11;
  v10.receiver = v8;
  v10.super_class = v4;
  objc_msgSendSuper2(&v10, sel_setValue_animated_, a1 & 1, v5);
  (MEMORY[0x1E69E5920])();
  if (a2)
  {
    swift_getWitnessTable();
    sub_1AC3B7644();
    sub_1AC3B7654();
  }
}

double sub_1AC3ADD9C()
{
  v4 = [v0 _minTrackView];
  if (v4)
  {
    v2 = [v0 _maxTrackView];
    v3 = v2;
    if (v2)
    {
      [v4 0x1FB81B678];
      [v3 0x1FB81B678];
      MEMORY[0x1E69E5920](v3);
    }

    *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  }

  return result;
}

float sub_1AC3ADEF4(uint64_t a1)
{
  v3 = a1;
  sub_1AC3AA670();
  return v3 * v1;
}

uint64_t sub_1AC3ADF68(float a1)
{
  v18 = a1;
  v8 = "Fatal error";
  v9 = "Float value cannot be converted to Int because it is either infinite or NaN";
  v10 = "Swift/IntegerTypes.swift";
  v11 = "Float value cannot be converted to Int because the result would be less than Int.min";
  v12 = "Float value cannot be converted to Int because the result would be greater than Int.max";
  v30 = 0;
  v29 = 0;
  v2 = *v1 & *MEMORY[0x1E69E7D40];
  v13 = v1;
  v17 = v2;
  v23 = sub_1AC3B8564();
  v21 = *(v23 - 8);
  v22 = v23 - 8;
  v15 = *(v21 + 64);
  v14 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v24 = &v6[-v14];
  v16 = v14;
  v3 = MEMORY[0x1EEE9AC00](&v6[-v14]);
  v20 = &v6[-v16];
  v30 = LODWORD(v3);
  v29 = v1;
  v28 = *(v17 + 80);
  sub_1AC3AA670();
  v19 = v18 / v4;
  v25 = MEMORY[0x1E69E7038];
  (*(v21 + 104))(v20, *MEMORY[0x1E69E7038], v23);
  v27 = v19;
  (*(v21 + 16))(v24, v20, v23);
  v26 = (*(v21 + 88))(v24, v23);
  if (v26 == *v25)
  {
    v27 = roundf(v19);
    goto LABEL_15;
  }

  if (v26 == *MEMORY[0x1E69E7030])
  {
    v27 = rintf(v19);
    goto LABEL_15;
  }

  if (v26 == *MEMORY[0x1E69E7040])
  {
    goto LABEL_12;
  }

  if (v26 == *MEMORY[0x1E69E7048])
  {
    goto LABEL_14;
  }

  if (v26 == *MEMORY[0x1E69E7020])
  {
    v27 = truncf(v19);
    goto LABEL_15;
  }

  if (v26 != *MEMORY[0x1E69E7028])
  {
    sub_1AC3B8174();
    (*(v21 + 8))(v24, v23);
    goto LABEL_15;
  }

  if ((sub_1AC3B8184() & 1) == 1)
  {
LABEL_14:
    v27 = floorf(v19);
  }

  else
  {
LABEL_12:
    v27 = ceilf(v19);
  }

LABEL_15:
  v7 = v27;
  (*(v21 + 8))(v20, v23);
  if ((LODWORD(v7) >> 23) == 255)
  {
    sub_1AC3B8494();
    __break(1u);
  }

  if (v7 <= -9.2234e18)
  {
    sub_1AC3B8494();
    __break(1u);
  }

  if (v7 >= 9.2234e18)
  {
    sub_1AC3B8494();
    __break(1u);
  }

  return v7;
}

double sub_1AC3AE47C(float a1)
{
  v6 = sub_1AC3AE558(a1) - 1.0;
  sub_1AC3AA550();
  sub_1AC3AE518(v1, v2, v3, v4);
  return v6;
}

double sub_1AC3AE558(float a1)
{
  [v1 maximumValue];
  v11 = v2;
  MEMORY[0x1E69E5920](v1);
  [v1 minimumValue];
  v10 = v3;
  MEMORY[0x1E69E5920](v1);
  sub_1AC3AA550();
  v13 = a1 * ((sub_1AC3AD488(v4, v5, v6, v7) - 16.0) / (v11 - v10));
  sub_1AC3AA550();
  return v8 + 8.0 + v13;
}

id sub_1AC3AE6AC(uint64_t a1)
{
  v9 = 0;
  v8 = 0;
  v4 = *v1 & *MEMORY[0x1E69E7D40];
  v9 = a1;
  v8 = v1;
  v7 = *(v4 + 80);
  MEMORY[0x1E69E5928](v1);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for HeadphoneAccessoryLabeledSlider();
  objc_msgSendSuper2(&v6, sel_traitCollectionDidChange_, a1);
  MEMORY[0x1E69E5920](v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5555B8);
  sub_1AC3AF524();
  sub_1AC3B8014();
  sub_1AC358148();
  return [v3 setNeedsDisplay];
}

double sub_1AC3AE83C(id *a1)
{
  v3 = *a1;
  type metadata accessor for HeadphoneAccessoryLabeledSlider();
  v2 = *MEMORY[0x1E69DDD28];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69DDD28]);
  v4 = sub_1AC3AC110(v2, 0, 1);
  [v3 setFont_];
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

double sub_1AC3AE8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a1);
  sub_1AC3AE6AC(a3);
  MEMORY[0x1E69E5920](a1);
  *&result = MEMORY[0x1E69E5920](a3).n128_u64[0];
  return result;
}

id sub_1AC3AE970(uint64_t a1)
{
  v3 = [swift_getObjCClassFromMetadata() traitCollectionWithPreferredContentSizeCategory_];
  MEMORY[0x1E69E5920](a1);
  return v3;
}

id sub_1AC3AEB10()
{
  v5 = 0;
  v2 = *v0 & *MEMORY[0x1E69E7D40];
  v5 = v0;
  v4 = *(v2 + 80);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for HeadphoneAccessoryLabeledSlider();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1AC3AEBA4(uint64_t a1)
{
  sub_1AC358148();
  sub_1AC358148();
  sub_1AC358148();
  result = a1 + qword_1EB5555B0;
  sub_1AC358148();
  return result;
}

uint64_t sub_1AC3AEC48@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HeadphoneAccessoryLabeledSlider();
  result = sub_1AC3B7644();
  *a1 = result;
  return result;
}

id sub_1AC3AED04(uint64_t a1)
{
  v4 = [v1 initForTextStyle_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

uint64_t sub_1AC3AED54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v8[1] = a4;
  v9 = *(a3 - 8);
  v10 = a3 - 8;
  v8[0] = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](a1);
  v11 = v8 - v8[0];
  v5(v4);
  v13 = sub_1AC3B8554();
  v14 = v6;
  (*(v9 + 8))(v11, v12);
  return v13;
}

unint64_t sub_1AC3AEE38()
{
  v2 = qword_1EB555518;
  if (!qword_1EB555518)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB555518);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC3AEE9C()
{
  v2 = qword_1EB555520;
  if (!qword_1EB555520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555508);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555520);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3AEF24()
{
  v2 = qword_1EB555528;
  if (!qword_1EB555528)
  {
    sub_1AC3AEE38();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555528);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC3AEFA4(uint64_t a1)
{
  v3 = sub_1AC3B82D4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1AC3AF04C(uint64_t a1)
{
  v3 = sub_1AC3B82F4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1AC3AF100()
{
  v2 = qword_1EB555530;
  if (!qword_1EB555530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555510);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555530);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3AF188()
{
  v2 = qword_1EB555538;
  if (!qword_1EB555538)
  {
    sub_1AC377BD0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555538);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3AF208()
{
  v2 = qword_1EB555550;
  if (!qword_1EB555550)
  {
    sub_1AC3B7634();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555550);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC3AF2B0()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555560);
  v1 = sub_1AC3AF318();

  return sub_1AC3AED54(v5, v3, v4, v1);
}

unint64_t sub_1AC3AF318()
{
  v2 = qword_1EB555568;
  if (!qword_1EB555568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555560);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555568);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3AF3A0()
{
  v2 = qword_1EB555578;
  if (!qword_1EB555578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555570);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555578);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3AF454()
{
  v2 = qword_1EB5555A8;
  if (!qword_1EB5555A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB554750);
    sub_1AC35FE34();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5555A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3AF524()
{
  v2 = qword_1EB5555C0;
  if (!qword_1EB5555C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5555B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5555C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3AF5AC()
{
  v2 = qword_1EB5555C8;
  if (!qword_1EB5555C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB5555C8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC3AF610()
{
  v2 = qword_1EB5555D0;
  if (!qword_1EB5555D0)
  {
    sub_1AC3AF5AC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5555D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3AF690()
{
  v2 = qword_1EB5555E0;
  if (!qword_1EB5555E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB5555E0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC3AF6F4()
{
  v2 = qword_1EB5555E8;
  if (!qword_1EB5555E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5555D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5555E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3AF77C()
{
  v2 = qword_1EB5555F8;
  if (!qword_1EB5555F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5555F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5555F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3AF840()
{
  v2 = qword_1EB555600;
  if (!qword_1EB555600)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB555600);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC3AF8D0()
{
  v2 = qword_1EB555608;
  if (!qword_1EB555608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5555B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555608);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3AF958()
{
  v2 = qword_1EB555610;
  if (!qword_1EB555610)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB555610);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC3AF9BC()
{
  v2 = qword_1EB555620;
  if (!qword_1EB555620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555618);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555620);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3AFA44()
{
  v2 = qword_1EB555628;
  if (!qword_1EB555628)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB555628);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC3AFAA8()
{
  v2 = qword_1EB555630;
  if (!qword_1EB555630)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB555630);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC3AFB0C()
{
  v2 = qword_1EB555640;
  if (!qword_1EB555640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555638);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555640);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3AFBC8()
{
  v2 = qword_1EB555650;
  if (!qword_1EB555650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555648);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555650);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3AFC50()
{
  v2 = qword_1EB555660;
  if (!qword_1EB555660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555658);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555660);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3AFD0C()
{
  v2 = qword_1EB555670[0];
  if (!qword_1EB555670[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555668);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EB555670);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC3AFE48()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

unint64_t sub_1AC3AFF00()
{
  v2 = qword_1EB5556F8;
  if (!qword_1EB5556F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5556F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3AFF88()
{
  v2 = qword_1EB555718;
  if (!qword_1EB555718)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB555718);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC3AFFEC()
{
  v2 = qword_1EB555720;
  if (!qword_1EB555720)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB555720);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC3B0050()
{
  v2 = qword_1EB555728;
  if (!qword_1EB555728)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB555728);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC3B00B4()
{
  v2 = qword_1EB555730;
  if (!qword_1EB555730)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB555730);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC3B0128()
{
  v2 = qword_1EB555740;
  if (!qword_1EB555740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555738);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555740);
    return WitnessTable;
  }

  return v2;
}

uint64_t *View.solariumOvalTintedButton(_:)(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  v8 = a1;
  v7 = v2;

  sub_1AC3B1030(a1, &v6);
  v5 = v6;
  MEMORY[0x1AC5B1F50]();
  result = &v5;
  sub_1AC367428();
  return result;
}

Swift::Void __swiftcall UIView.pinToOther(_:)(UIView *a1)
{
  v20 = objc_opt_self();
  sub_1AC377CBC();
  sub_1AC3B8574();
  v19 = v1;
  v6 = [v14 0x1FBB5C529];
  v5 = [a1 0x1FBB5C529];
  v7 = [v6 0x1FBB28F65];
  MEMORY[0x1E69E5920](v5);
  *&v2 = MEMORY[0x1E69E5920](v6).n128_u64[0];
  *v19 = v7;
  v9 = [v14 0x1FBBB59CCLL];
  v8 = [a1 0x1FBBB59CCLL];
  v10 = [v9 0x1FBB28F65];
  MEMORY[0x1E69E5920](v8);
  *&v3 = MEMORY[0x1E69E5920](v9).n128_u64[0];
  v19[1] = v10;
  v12 = [v14 0x1FBBB4950];
  v11 = [a1 0x1FBBB4950];
  v13 = [v12 0x1FBB28F65];
  MEMORY[0x1E69E5920](v11);
  *&v4 = MEMORY[0x1E69E5920](v12).n128_u64[0];
  v19[2] = v13;
  v17 = [v14 0x1FBB20D25];
  v16 = [a1 0x1FBB20D25];
  v18 = [v17 0x1FBB28F65];
  MEMORY[0x1E69E5920](v16);
  MEMORY[0x1E69E5920](v17);
  v19[3] = v18;
  sub_1AC36EE1C();
  v21 = sub_1AC3B8074();

  [v20 activateConstraints_];
  MEMORY[0x1E69E5920](v21);
}

double sub_1AC3B0540(uint64_t a1, uint64_t a2, UIView *a3)
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a1);
  UIView.pinToOther(_:)(a3);
  MEMORY[0x1E69E5920](a1);
  *&result = MEMORY[0x1E69E5920](a3).n128_u64[0];
  return result;
}

uint64_t ==? infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1;
  v13 = a2;
  v17 = a3;
  v14 = a4;
  v21 = 0;
  v20 = 0;
  v22 = a3;
  v15 = *(a3 - 8);
  v16 = a3 - 8;
  v10 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](a2);
  v18 = &v7 - v10;
  v21 = v5;
  v20 = v13;
  v11 = *(v15 + 16);
  v12 = v15 + 16;
  v11(v4);
  v19 = sub_1AC3B7EB4();
  (*(v15 + 8))(v18, v17);
  if (v19)
  {
    v8 = 0;
  }

  else
  {
    (v11)(v18, v13, v17);
    (*(v15 + 40))(v9, v18, v17);
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_1AC3B076C()
{
  v2 = *v0;

  return v2;
}

uint64_t SolariumOvalTintedButton.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v10[1] = a1;
  v3 = v2;
  v17 = v3;
  v33 = MEMORY[0x1E697CDB0];
  v52 = MEMORY[0x1E697CEC0];
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v10[2] = 0;
  v43 = sub_1AC3B76B4();
  v40 = *(v43 - 8);
  v41 = v43 - 8;
  v11 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v42 = v10 - v11;
  v30 = sub_1AC3B7824();
  v24 = *(v30 - 8);
  v25 = v30 - 8;
  v12 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30);
  v26 = v10 - v12;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555768);
  v13 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v27 = v10 - v13;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555770);
  v35 = *(v37 - 8);
  v36 = v37 - 8;
  v14 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37);
  v38 = v10 - v14;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555778);
  v15 = (*(*(v39 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39);
  v44 = v10 - v15;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555780);
  v16 = (*(*(v50 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50);
  v49 = v10 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555788);
  v54 = *(v60 - 8);
  v55 = v60 - 8;
  v19 = *(v54 + 64);
  v18 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v60);
  v58 = v10 - v18;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10 - v18);
  v59 = v10 - v20;
  v73 = v10 - v20;
  v72 = a1;
  v28 = *v5;
  v71 = v5;
  v21 = sub_1AC3B79D4();
  sub_1AC3B7984();
  v23 = sub_1AC3B79C4();

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555790);
  sub_1AC3B1038();
  sub_1AC3B7B84();

  sub_1AC3B1018();
  v31 = sub_1AC3B10C0();
  v32 = sub_1AC3B1168();
  sub_1AC3B7AC4();
  (*(v24 + 8))(v26, v30);
  sub_1AC3B11E8(v27);

  v34 = &v70;
  v70 = v28;
  v66 = v29;
  v67 = v30;
  v68 = v31;
  v69 = v32;
  v53 = 1;
  swift_getOpaqueTypeConformance2();
  sub_1AC3B7BA4();
  sub_1AC367428();
  (*(v35 + 8))(v38, v37);
  (*(v40 + 104))(v42, *MEMORY[0x1E697DC10], v43);
  sub_1AC3B128C();
  sub_1AC3B7AD4();
  (*(v40 + 8))(v42, v43);
  sub_1AC34D5D0(v44);
  v46 = sub_1AC3B8574();
  v45 = v6;
  v7 = sub_1AC3B7934();
  v8 = v46;
  *v45 = v7;
  sub_1AC36EE1C();
  v47 = v8;
  sub_1AC39CB9C();
  sub_1AC3B8394();
  v48 = v65;
  v51 = sub_1AC3B1434();
  sub_1AC3B7B04();
  sub_1AC34D674(v49);
  v63 = v50;
  v64 = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1AC35745C(v58, v60, v59);
  v62 = *(v54 + 8);
  v61 = v54 + 8;
  v62(v58, v60);
  (*(v54 + 16))(v58, v59, v60);
  sub_1AC35745C(v58, v60, v56);
  v62(v58, v60);
  return (v62)(v59, v60);
}

unint64_t sub_1AC3B1038()
{
  v2 = qword_1EB555798;
  if (!qword_1EB555798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555790);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB555798);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3B10C0()
{
  v2 = qword_1EB5557A0;
  if (!qword_1EB5557A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555768);
    sub_1AC3B1038();
    sub_1AC367AF4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5557A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3B1168()
{
  v2 = qword_1EB5557A8;
  if (!qword_1EB5557A8)
  {
    sub_1AC3B7824();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5557A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC3B11E8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555790);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555768);

  return a1;
}

unint64_t sub_1AC3B128C()
{
  v2 = qword_1EB5557B0;
  if (!qword_1EB5557B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555778);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555768);
    sub_1AC3B7824();
    sub_1AC3B10C0();
    sub_1AC3B1168();
    swift_getOpaqueTypeConformance2();
    sub_1AC3B13AC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5557B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3B13AC()
{
  v2 = qword_1EB5557B8;
  if (!qword_1EB5557B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5557C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5557B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3B1434()
{
  v2 = qword_1EB5557C8;
  if (!qword_1EB5557C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB555780);
    sub_1AC3B128C();
    sub_1AC3B14DC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5557C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3B14DC()
{
  v2 = qword_1EB5557D0;
  if (!qword_1EB5557D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5557D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB5557D0);
    return WitnessTable;
  }

  return v2;
}

Swift::Void __swiftcall UIView.applyMatrixBias(matrixBias:)(Swift::tuple_matrix_Float_bias_Float matrixBias)
{
  matrix = matrixBias.matrix;
  bias = matrixBias.bias;
  v23 = 0;
  v22 = 0;
  v18 = 0;
  memset(__b, 0, sizeof(__b));
  v25 = matrix;
  v26 = bias;
  v24 = v1;
  v23 = sub_1AC3B7E44();
  if (matrix != 0.0)
  {
    sub_1AC3B19B8();
    v10 = *MEMORY[0x1E6979880];
    MEMORY[0x1E69E5928](*MEMORY[0x1E6979880]);
    sub_1AC3B7EF4();
    v13 = sub_1AC3B1A1C();
    MEMORY[0x1E69E5920](v10);
    v18 = v13;
    memcpy(__dst, MEMORY[0x1E6979280], sizeof(__dst));
    memcpy(__b, __dst, sizeof(__b));
    *__b = matrix;
    *&__b[6] = matrix;
    *&__b[12] = matrix;
    sub_1AC38D4BC();
    memcpy(v27, __b, sizeof(v27));
    v12 = sub_1AC3B1A64(v27);
    sub_1AC3B7F54();
    v11 = sub_1AC3B7EE4();

    [v13 setValue:v12 forKey:v11];
    MEMORY[0x1E69E5920](v11);
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5928](v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5557E8);
    sub_1AC3B80C4();
    v2 = MEMORY[0x1E69E5920](v13);
  }

  v2.n128_f32[0] = bias;
  if (bias != 0.0)
  {
    v8 = sub_1AC3B19B8();
    v5 = *MEMORY[0x1E6979818];
    MEMORY[0x1E69E5928](*MEMORY[0x1E6979818]);
    sub_1AC3B7EF4();
    v9 = sub_1AC3B1A1C();
    MEMORY[0x1E69E5920](v5);
    v22 = v9;
    v7 = sub_1AC3B8164();
    sub_1AC3B7F54();
    v6 = sub_1AC3B7EE4();

    [v9 setValue:v7 forKey:v6];
    MEMORY[0x1E69E5920](v6);
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5928](v9);
    v21 = v8;
    v20 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5557E8);
    sub_1AC3B80C4();
    v2.n128_u64[0] = MEMORY[0x1E69E5920](v9).n128_u64[0];
  }

  v4 = [v14 layer];

  v3 = sub_1AC3B8074();

  [v4 setFilters_];
  MEMORY[0x1E69E5920](v3);
  MEMORY[0x1E69E5920](v4);
  sub_1AC358148();
}

unint64_t sub_1AC3B19B8()
{
  v2 = qword_1EB5557E0;
  if (!qword_1EB5557E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB5557E0);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_1AC3B1A64(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v6, __dst, sizeof(v6));
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  memcpy(v4, v6, sizeof(v4));
  v1 = [ObjCClassFromMetadata valueWithCAColorMatrix_];

  return v1;
}

uint64_t sub_1AC3B1B0C()
{
  result = sub_1AC3B7F54();
  qword_1EB555748 = result;
  qword_1EB555750 = v1;
  return result;
}

uint64_t *sub_1AC3B1B50()
{
  if (qword_1EB5543B0 != -1)
  {
    swift_once();
  }

  return &qword_1EB555748;
}

uint64_t static BadgedTitleCell.titleKey.getter()
{
  v1 = *sub_1AC3B1B50();

  return v1;
}

uint64_t sub_1AC3B1BF4()
{
  result = sub_1AC3B7F54();
  qword_1EB555758 = result;
  qword_1EB555760 = v1;
  return result;
}

uint64_t *sub_1AC3B1C38()
{
  if (qword_1EB5543B8 != -1)
  {
    swift_once();
  }

  return &qword_1EB555758;
}

uint64_t static BadgedTitleCell.badgeKey.getter()
{
  v1 = *sub_1AC3B1C38();

  return v1;
}

id sub_1AC3B1CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = 0;
  v16 = a1;
  v14 = a2;
  v15 = a3;
  v13 = a4;

  if (a3)
  {
    v7 = sub_1AC3B7EE4();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v12.receiver = 0;
  v12.super_class = type metadata accessor for BadgedTitleCell();
  v6 = objc_msgSendSuper2(&v12, sel_initWithStyle_reuseIdentifier_specifier_, a1, v8, a4);
  MEMORY[0x1E69E5920](v8);
  if (v6)
  {
    MEMORY[0x1E69E5928](v6);
    v17 = v6;
    [v6 setAccessoryType_];
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](a4);

    MEMORY[0x1E69E5920](v17);
    return v6;
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    MEMORY[0x1E69E5920](a4);

    return 0;
  }
}

id sub_1AC3B1FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v12 = a1;
  v10 = a2;
  v11 = a3;

  if (a3)
  {
    v5 = sub_1AC3B7EE4();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = 0;
  v9.super_class = type metadata accessor for BadgedTitleCell();
  v4 = objc_msgSendSuper2(&v9, sel_initWithStyle_reuseIdentifier_, a1, v6);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5928](v4);
  v13 = v4;
  [v4 setAccessoryType_];
  MEMORY[0x1E69E5920](v4);

  MEMORY[0x1E69E5920](v13);
  return v4;
}

id BadgedTitleCell.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

void BadgedTitleCell.init(coder:)()
{
  sub_1AC3B7F54();
  sub_1AC3B84A4();
  __break(1u);
}

uint64_t sub_1AC3B230C(void *a1)
{
  v151 = a1;
  v145 = 0;
  v181 = 0;
  v180 = 0;
  v146 = 0;
  v170 = 0;
  v165 = 0;
  v164 = 0;
  v159 = 0;
  v158 = 0;
  v155 = 0;
  v147 = sub_1AC3B7524();
  v148 = *(v147 - 8);
  v149 = v148;
  MEMORY[0x1EEE9AC00](v151);
  v150 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = v3;
  v180 = v1;
  v4 = v3;
  if (v151)
  {
    v143 = v151;
  }

  else
  {
    sub_1AC3B8494();
    __break(1u);
  }

  v141 = v143;
  v142 = [v143 userInfo];
  if (v142)
  {
    v140 = v142;
    v139 = v142;
    v138 = v152;
    sub_1AC3B8384();
    sub_1AC377D20(v138, &v176);
    swift_unknownObjectRelease();
  }

  else
  {
    v176 = 0uLL;
    v177 = 0uLL;
  }

  v179 = v177;
  v178 = v176;

  if (*(&v179 + 1))
  {
    sub_1AC39B678();
    if (swift_dynamicCast())
    {
      v137 = v152[4];
    }

    else
    {
      v137 = 0;
    }

    v136 = v137;
  }

  else
  {
    sub_1AC38FF40(&v178);
    v136 = 0;
  }

  v135 = v136;
  if (!v136)
  {
    goto LABEL_44;
  }

  v134 = v135;
  v130 = v135;
  v170 = v135;
  v5 = sub_1AC3B1B50();
  v123 = *v5;
  v124 = v5[1];

  v168[3] = MEMORY[0x1E69E6158];
  v168[0] = v123;
  v168[1] = v124;
  v127 = MEMORY[0x1E69E6158];
  __swift_project_boxed_opaque_existential_0(v168, MEMORY[0x1E69E6158]);
  v125 = *(v127 - 8);
  v126 = v125;
  v129 = &v32;
  v6 = MEMORY[0x1EEE9AC00](&v32);
  v128 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v126 + 16))(v6);
  v131 = sub_1AC3B8584();
  (*(v126 + 8))(v128, v127);
  v133 = [v130 __swift_objectForKeyedSubscript_];
  v132 = v133;
  swift_unknownObjectRelease();
  if (v133)
  {
    v122 = v132;
    v121 = v132;
    v120 = v153;
    sub_1AC3B8384();
    sub_1AC377D20(v120, &v166);
    swift_unknownObjectRelease();
  }

  else
  {
    v166 = 0uLL;
    v167 = 0uLL;
  }

  v169[1] = v167;
  v169[0] = v166;
  if (*(&v167 + 1))
  {
    if (swift_dynamicCast())
    {
      v118 = v153[4];
      v119 = v153[5];
    }

    else
    {
      v118 = 0;
      v119 = 0;
    }

    v115 = v119;
    v114 = v118;
    __swift_destroy_boxed_opaque_existential_1(v168);
    v116 = v114;
    v117 = v115;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v168);
    sub_1AC38FF40(v169);
    v116 = 0;
    v117 = 0;
  }

  v112 = v117;
  v113 = v116;
  if (!v117)
  {

LABEL_44:
    v17 = v150;
    v18 = sub_1AC394550();
    (*(v149 + 16))(v17, v18, v147);
    v19 = v151;
    v53 = 7;
    v55 = swift_allocObject();
    *(v55 + 16) = v151;
    sub_1AC38FFE4();

    v64 = sub_1AC3B7504();
    v49 = v64;
    v63 = sub_1AC3B8254();
    v50 = v63;
    v51 = 17;
    v57 = swift_allocObject();
    v52 = v57;
    *(v57 + 16) = 64;
    v58 = swift_allocObject();
    v54 = v58;
    *(v58 + 16) = 8;
    v20 = swift_allocObject();
    v21 = v55;
    v61 = v20;
    v56 = v20;
    *(v20 + 16) = sub_1AC38FFDC;
    *(v20 + 24) = v21;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5549B0);
    v59 = sub_1AC3B8574();
    v60 = v22;

    v23 = v57;
    v24 = v60;
    *v60 = sub_1AC377AC0;
    v24[1] = v23;

    v25 = v58;
    v26 = v60;
    v60[2] = sub_1AC377AC0;
    v26[3] = v25;

    v27 = v60;
    v28 = v61;
    v60[4] = sub_1AC3936DC;
    v27[5] = v28;
    sub_1AC36EE1C();

    if (os_log_type_enabled(v64, v63))
    {
      v29 = v146;
      v42 = sub_1AC3B8334();
      v39 = v42;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB554F90);
      v45 = 1;
      v43 = sub_1AC374C60(1);
      v41 = v43;
      v44 = sub_1AC374C60(0);
      v175 = v42;
      v174 = v43;
      v173 = v44;
      v46 = &v175;
      sub_1AC374CB4(2, &v175);
      sub_1AC374CB4(v45, v46);
      v171 = sub_1AC377AC0;
      v172 = v52;
      sub_1AC374CC8(&v171, v46, &v174, &v173);
      v47 = v29;
      v48 = v29;
      if (v29)
      {
        v37 = 0;

        __break(1u);
      }

      else
      {
        v171 = sub_1AC377AC0;
        v172 = v54;
        sub_1AC374CC8(&v171, &v175, &v174, &v173);
        v35 = 0;
        v36 = 0;
        v171 = sub_1AC3936DC;
        v172 = v56;
        sub_1AC374CC8(&v171, &v175, &v174, &v173);
        v33 = 0;
        v34 = 0;
        _os_log_impl(&dword_1AC345000, v49, v50, "HearingTopLevelCell refreshCellContents dependencies not meet %@", v39, 0xCu);
        sub_1AC374D14(v41);
        sub_1AC374D14(v44);
        sub_1AC3B8314();

        v38 = v33;
      }
    }

    else
    {
      v30 = v146;

      v38 = v30;
    }

    v32 = v38;

    (*(v149 + 8))(v150, v147);
    return v32;
  }

  v110 = v113;
  v111 = v112;
  v98 = v112;
  v99 = v113;
  v164 = v113;
  v165 = v112;
  v8 = sub_1AC3B1C38();
  v100 = *v8;
  v101 = v8[1];

  v162[3] = MEMORY[0x1E69E6158];
  v162[0] = v100;
  v162[1] = v101;
  v104 = MEMORY[0x1E69E6158];
  __swift_project_boxed_opaque_existential_0(v162, MEMORY[0x1E69E6158]);
  v102 = *(v104 - 8);
  v103 = v102;
  v106 = &v32;
  v9 = MEMORY[0x1EEE9AC00](&v32);
  v105 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v103 + 16))(v9);
  v107 = sub_1AC3B8584();
  (*(v103 + 8))(v105, v104);
  v109 = [v130 __swift_objectForKeyedSubscript_];
  v108 = v109;
  swift_unknownObjectRelease();
  if (v109)
  {
    v97 = v108;
    v96 = v108;
    v95 = v154;
    sub_1AC3B8384();
    sub_1AC377D20(v95, &v160);
    swift_unknownObjectRelease();
  }

  else
  {
    v160 = 0uLL;
    v161 = 0uLL;
  }

  v163[1] = v161;
  v163[0] = v160;
  if (*(&v161 + 1))
  {
    if (swift_dynamicCast())
    {
      v93 = v154[4];
      v94 = v154[5];
    }

    else
    {
      v93 = 0;
      v94 = 0;
    }

    v90 = v94;
    v89 = v93;
    __swift_destroy_boxed_opaque_existential_1(v162);
    v91 = v89;
    v92 = v90;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v162);
    sub_1AC38FF40(v163);
    v91 = 0;
    v92 = 0;
  }

  v87 = v92;
  v88 = v91;
  if (!v92)
  {

    goto LABEL_44;
  }

  v85 = v88;
  v86 = v87;
  v77 = v87;
  v78 = v88;
  v158 = v88;
  v159 = v87;
  v11 = v144;
  v79 = [v144 traitCollection];

  v80 = [v79 userInterfaceStyle];
  v157 = v80;
  v156 = 2;
  v81 = type metadata accessor for UIUserInterfaceStyle();
  sub_1AC3784C8();
  v82 = sub_1AC3B8594();
  v155 = v82 & 1;
  v12 = v144;
  [v144 setAccessoryType_];

  v13 = v144;
  v84 = [v144 textLabel];
  v83 = v84;

  if (v84)
  {
    v76 = v83;
    v75 = v83;
    type metadata accessor for PillBadgeTextAttachment();

    v66 = sub_1AC3793AC();
    v67 = sub_1AC3793FC();
    v68 = sub_1AC37943C();
    v69 = sub_1AC37948C();
    v70 = sub_1AC3794D4();
    v71 = sub_1AC379528();
    v72 = v14;
    v73 = sub_1AC37953C(v78, v77, v66, v82 & 1, v67, v68, v69, v70, 0.0, 0.0, v71, v14, v15, v16);
    v74 = sub_1AC3795E4(v99, v98, v73);

    [v75 setAttributedText_];
  }

  return v146;
}

id BadgedTitleCell.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BadgedTitleCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1AC3B32B4()
{
  v2 = sub_1AC3B7EE4();
  v3 = [v1 initWithType_];
  MEMORY[0x1E69E5920](v2);

  return v3;
}

void *__swift_initWithCopy_strong(void *a1, uint64_t *a2)
{
  v4 = *a2;

  result = a1;
  *a1 = v4;
  return result;
}

void *__swift_assignWithCopy_strong(void *a1, uint64_t *a2)
{
  v3 = *a2;

  *a1 = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for SolariumOvalTintedButton(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 8))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SolariumOvalTintedButton(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

id sub_1AC3B37DC()
{
  sub_1AC377B44();
  type metadata accessor for ResourceBundleClass();
  result = sub_1AC36A3A8();
  qword_1EB5557F0 = result;
  return result;
}

uint64_t *sub_1AC3B3824()
{
  if (qword_1EB5543C0 != -1)
  {
    swift_once();
  }

  return &qword_1EB5557F0;
}

uint64_t sub_1AC3B3884()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB555870);
  __swift_project_value_buffer(v2, qword_1EB555870);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B391C()
{
  if (qword_1EB5543C8 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB555870);
}

uint64_t sub_1AC3B3988@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B391C();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B39EC()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB555888);
  __swift_project_value_buffer(v2, qword_1EB555888);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B3A84()
{
  if (qword_1EB5543D0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB555888);
}

uint64_t sub_1AC3B3AF0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B3A84();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B3B54()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB5558A0);
  __swift_project_value_buffer(v2, qword_1EB5558A0);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B3BEC()
{
  if (qword_1EB5543D8 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB5558A0);
}

uint64_t sub_1AC3B3C58@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B3BEC();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B3CBC()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB5558B8);
  __swift_project_value_buffer(v2, qword_1EB5558B8);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B3D54()
{
  if (qword_1EB5543E0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB5558B8);
}

uint64_t sub_1AC3B3DC0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B3D54();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B3E24()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB5558D0);
  __swift_project_value_buffer(v2, qword_1EB5558D0);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B3EBC()
{
  if (qword_1EB5543E8 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB5558D0);
}

uint64_t sub_1AC3B3F28@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B3EBC();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B3F8C()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB5558E8);
  __swift_project_value_buffer(v2, qword_1EB5558E8);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B4024()
{
  if (qword_1EB5543F0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB5558E8);
}

uint64_t sub_1AC3B4090@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B4024();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B40F4()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB555900);
  __swift_project_value_buffer(v2, qword_1EB555900);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B418C()
{
  if (qword_1EB5543F8 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB555900);
}

uint64_t sub_1AC3B41F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B418C();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B425C()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB555918);
  __swift_project_value_buffer(v2, qword_1EB555918);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B42F4()
{
  if (qword_1EB554400 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB555918);
}

uint64_t sub_1AC3B4360@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B42F4();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B43C4()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB555930);
  __swift_project_value_buffer(v2, qword_1EB555930);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B445C()
{
  if (qword_1EB554408 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB555930);
}

uint64_t sub_1AC3B44C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B445C();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B452C()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB555948);
  __swift_project_value_buffer(v2, qword_1EB555948);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B45C4()
{
  if (qword_1EB554410 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB555948);
}

uint64_t sub_1AC3B4630@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B45C4();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B4694()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB555960);
  __swift_project_value_buffer(v2, qword_1EB555960);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B472C()
{
  if (qword_1EB554418 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB555960);
}

uint64_t sub_1AC3B4798@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B472C();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B47FC()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB555978);
  __swift_project_value_buffer(v2, qword_1EB555978);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B4894()
{
  if (qword_1EB554420 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB555978);
}

uint64_t sub_1AC3B4900@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B4894();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B4964()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB555990);
  __swift_project_value_buffer(v2, qword_1EB555990);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B49FC()
{
  if (qword_1EB554428 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB555990);
}

uint64_t sub_1AC3B4A68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B49FC();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B4ACC()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB5559A8);
  __swift_project_value_buffer(v2, qword_1EB5559A8);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B4B64()
{
  if (qword_1EB554430 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB5559A8);
}

uint64_t sub_1AC3B4BD0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B4B64();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B4C34()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB5559C0);
  __swift_project_value_buffer(v2, qword_1EB5559C0);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B4CCC()
{
  if (qword_1EB554438 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB5559C0);
}

uint64_t sub_1AC3B4D38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B4CCC();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B4D9C()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB5559D8);
  __swift_project_value_buffer(v2, qword_1EB5559D8);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B4E34()
{
  if (qword_1EB554440 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB5559D8);
}

uint64_t sub_1AC3B4EA0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B4E34();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B4F04()
{
  v2 = sub_1AC3B74F4();
  __swift_allocate_value_buffer(v2, qword_1EB5559F0);
  __swift_project_value_buffer(v2, qword_1EB5559F0);
  sub_1AC3B7F54();
  v0 = sub_1AC3B3824();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC3B74C4();
}

uint64_t sub_1AC3B4F9C()
{
  if (qword_1EB554448 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC3B74F4();
  return __swift_project_value_buffer(v0, qword_1EB5559F0);
}

uint64_t sub_1AC3B5008@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3B4F9C();
  v1 = sub_1AC3B74F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3B506C()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC3B74F4();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC3B00B4();
  v1 = sub_1AC3B391C();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B514C()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC3B74F4();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC3B00B4();
  v1 = sub_1AC3B3A84();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B522C()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC3B74F4();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC3B00B4();
  v1 = sub_1AC3B3BEC();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B530C()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC3B74F4();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC3B00B4();
  v1 = sub_1AC3B3D54();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B53EC()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC3B74F4();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC3B00B4();
  v1 = sub_1AC3B3EBC();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B54CC()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC3B74F4();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC3B00B4();
  v1 = sub_1AC3B4024();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B55AC()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC3B74F4();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC3B00B4();
  v1 = sub_1AC3B418C();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B568C()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC3B74F4();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC3B00B4();
  v1 = sub_1AC3B42F4();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B576C()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC3B74F4();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC3B00B4();
  v1 = sub_1AC3B445C();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B584C()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC3B74F4();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC3B00B4();
  v1 = sub_1AC3B45C4();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B592C()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC3B74F4();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC3B00B4();
  v1 = sub_1AC3B472C();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B5A0C()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC3B74F4();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC3B00B4();
  v1 = sub_1AC3B4894();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B5AEC()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC3B74F4();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC3B00B4();
  v1 = sub_1AC3B49FC();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B5BCC()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC3B74F4();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC3B00B4();
  v1 = sub_1AC3B4B64();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B5CAC()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC3B74F4();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC3B00B4();
  v1 = sub_1AC3B4CCC();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B5D8C()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC3B74F4();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC3B00B4();
  v1 = sub_1AC3B4E34();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B5E6C()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC3B74F4();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC3B00B4();
  v1 = sub_1AC3B4F9C();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC3B8294();
}

uint64_t sub_1AC3B5F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = a4;
  v24 = a1;
  v21 = a2;
  v22 = a3;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v23 = 0;
  v13 = sub_1AC3B74D4();
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v17 = *(v14 + 64);
  v16 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v18 = &v9 - v16;
  v19 = v16;
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v9 - v19;
  v29 = &v9 - v19;
  v27 = v5;
  v28 = v6;
  v26 = v7;
  sub_1AC37B254();

  MEMORY[0x1E69E5928](v22);
  v25 = sub_1AC3B6208(v24, v21, v22, v23);
  v11 = v25 != 0;
  v10 = v11;
  sub_1AC35E758(&v25);
  if (v10)
  {
    sub_1AC3B74C4();
    (*(v14 + 32))(v20, v18, v13);
    (*(v14 + 16))(v12, v20, v13);
    (*(v14 + 56))(v12, 0, 1, v13);
    return (*(v14 + 8))(v20, v13);
  }

  else
  {
    MEMORY[0x1E69E5920](v22);

    return (*(v14 + 56))(v12, 1, 1, v13);
  }
}

id sub_1AC3B6208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1AC3B7EE4();
  v8 = [swift_getObjCClassFromMetadata() colorNamed:v7 inBundle:a3 compatibleWithTraitCollection:a4];
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](v7);

  return v8;
}

uint64_t sub_1AC3B62AC(uint64_t a1)
{
  v11 = a1;
  v22 = 0;
  v20 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5557F8);
  v10 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v19 = &v8 - v10;
  v18 = sub_1AC3B74D4();
  v16 = *(v18 - 8);
  v17 = v18 - 8;
  v12 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v8 - v12;
  v14 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v15 = &v8 - v14;
  v22 = &v8 - v14;
  v20 = v4;
  sub_1AC3B6530(v4, v5);
  if ((*(v16 + 48))(v19, 1, v18) == 1)
  {
    sub_1AC3B6658(v19);
    sub_1AC3B6658(v11);
    return 0;
  }

  else
  {
    (*(v16 + 32))(v15, v19, v18);
    (*(v16 + 16))(v13, v15, v18);
    v8 = sub_1AC3B8284();
    v6 = MEMORY[0x1E69E5928](v8);
    v21 = v8;
    (*(v16 + 8))(v15, v18, v6);
    sub_1AC3B6658(v11);
    MEMORY[0x1E69E5920](v21);
    return v8;
  }
}

void *sub_1AC3B6530(const void *a1, void *a2)
{
  v6 = sub_1AC3B74D4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5557F8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1AC3B6658(uint64_t a1)
{
  v3 = sub_1AC3B74D4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1AC3B6700(uint64_t a1)
{
  v11 = a1;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5557F8);
  v10 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v19 = &v7 - v10;
  v18 = sub_1AC3B74D4();
  v16 = *(v18 - 8);
  v17 = v18 - 8;
  v12 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v7 - v12;
  v14 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v15 = &v7 - v14;
  v22 = &v7 - v14;
  v20 = v4;
  sub_1AC3B6530(v4, v5);
  if ((*(v16 + 48))(v19, 1, v18) == 1)
  {
    sub_1AC3B6658(v19);
    sub_1AC3B6658(v11);
    return 0;
  }

  else
  {
    (*(v16 + 32))(v15, v19, v18);
    (*(v16 + 16))(v13, v15, v18);
    v8 = sub_1AC3B7C64();

    v7 = &v21;
    v21 = v8;
    (*(v16 + 8))(v15, v18);
    sub_1AC3B6658(v11);
    sub_1AC367428();
    return v8;
  }
}

uint64_t sub_1AC3B6970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = a4;
  v24 = a1;
  v21 = a2;
  v22 = a3;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v23 = 0;
  v13 = sub_1AC3B74F4();
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v17 = *(v14 + 64);
  v16 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v18 = &v9 - v16;
  v19 = v16;
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v9 - v19;
  v29 = &v9 - v19;
  v27 = v5;
  v28 = v6;
  v26 = v7;
  sub_1AC3B00B4();

  MEMORY[0x1E69E5928](v22);
  v25 = sub_1AC3B6C2C(v24, v21, v22, v23);
  v11 = v25 != 0;
  v10 = v11;
  sub_1AC35E758(&v25);
  if (v10)
  {
    sub_1AC3B74C4();
    (*(v14 + 32))(v20, v18, v13);
    (*(v14 + 16))(v12, v20, v13);
    (*(v14 + 56))(v12, 0, 1, v13);
    return (*(v14 + 8))(v20, v13);
  }

  else
  {
    MEMORY[0x1E69E5920](v22);

    return (*(v14 + 56))(v12, 1, 1, v13);
  }
}

id sub_1AC3B6C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1AC3B7EE4();
  v8 = [swift_getObjCClassFromMetadata() imageNamed:v7 inBundle:a3 compatibleWithTraitCollection:a4];
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](v7);

  return v8;
}

uint64_t sub_1AC3B6CD0(uint64_t a1)
{
  v11 = a1;
  v22 = 0;
  v20 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555800);
  v10 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v19 = &v8 - v10;
  v18 = sub_1AC3B74F4();
  v16 = *(v18 - 8);
  v17 = v18 - 8;
  v12 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v8 - v12;
  v14 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v15 = &v8 - v14;
  v22 = &v8 - v14;
  v20 = v4;
  sub_1AC3B6F54(v4, v5);
  if ((*(v16 + 48))(v19, 1, v18) == 1)
  {
    sub_1AC3B707C(v19);
    sub_1AC3B707C(v11);
    return 0;
  }

  else
  {
    (*(v16 + 32))(v15, v19, v18);
    (*(v16 + 16))(v13, v15, v18);
    v8 = sub_1AC3B8294();
    v6 = MEMORY[0x1E69E5928](v8);
    v21 = v8;
    (*(v16 + 8))(v15, v18, v6);
    sub_1AC3B707C(v11);
    MEMORY[0x1E69E5920](v21);
    return v8;
  }
}

void *sub_1AC3B6F54(const void *a1, void *a2)
{
  v6 = sub_1AC3B74F4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB555800);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1AC3B707C(uint64_t a1)
{
  v3 = sub_1AC3B74F4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

NSRange NSRangeFromString(NSString *aString)
{
  v1 = MEMORY[0x1EEDC70A0](aString);
  result.length = v2;
  result.location = v1;
  return result;
}