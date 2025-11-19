uint64_t sub_1AC223A54(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 8);

  result = a2;
  *(a2 + 8) = v4;
  *(a2 + 16) = *(a1 + 16);
  return result;
}

uint64_t sub_1AC223AA4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  sub_1AC2239D4();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = *(a1 + 24);
  v7 = a1[4];

  result = a2;
  *(a2 + 32) = v7;
  *(a2 + 40) = *(a1 + 40);
  return result;
}

unint64_t sub_1AC223B48()
{
  v2 = qword_1EB54BE88;
  if (!qword_1EB54BE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54BE80);
    sub_1AC223BF4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54BE88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC223BF4()
{
  v2 = qword_1EB54BE90;
  if (!qword_1EB54BE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54BE98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54BEA0);
    sub_1AC223CE8();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54BE90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC223CE8()
{
  v2 = qword_1EB54BEA8;
  if (!qword_1EB54BEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54BEA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54BEA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC223DC0()
{
  v2 = qword_1EB54BEB0;
  if (!qword_1EB54BEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54BE68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54BEB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC223EA4()
{
  updated = sub_1AC223FF8();
  if (v0 <= 0x3F)
  {
    updated = sub_1AC22408C();
    if (v1 <= 0x3F)
    {
      updated = swift_updateClassMetadata2();
      if (!updated)
      {
        return 0;
      }
    }
  }

  return updated;
}

uint64_t sub_1AC223FF8()
{
  v4 = qword_1EB54BEB8;
  if (!qword_1EB54BEB8)
  {
    v3 = sub_1AC309F3C();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB54BEB8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1AC22408C()
{
  v4 = qword_1EB54BEC0;
  if (!qword_1EB54BEC0)
  {
    v3 = sub_1AC309F3C();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB54BEC0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1AC22415C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 41))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (!HIDWORD(*(a1 + 32)))
      {
        v4 = *(a1 + 32);
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

uint64_t sub_1AC22428C(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 41);
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 32) = 0;
    *(result + 40) = 0;
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
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_1AC224474()
{
  v2 = qword_1EB54BED0;
  if (!qword_1EB54BED0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54BED0);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_1AC2244D8(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AC224548()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t static SleepDetectionFeature.supported(_:host:)(uint64_t a1, uint64_t a2)
{
  v111 = a1;
  v101 = a2;
  v100 = v2;
  v85 = sub_1AC225570;
  v86 = sub_1AC226634;
  v87 = sub_1AC226640;
  v88 = sub_1AC22664C;
  v89 = sub_1AC2255A8;
  v90 = sub_1AC226634;
  v91 = sub_1AC226640;
  v92 = sub_1AC22664C;
  v93 = sub_1AC215C90;
  v94 = sub_1AC215C90;
  v95 = sub_1AC226658;
  v96 = sub_1AC215C90;
  v97 = sub_1AC215C90;
  v98 = sub_1AC226658;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v121 = 0;
  v99 = 0;
  v102 = sub_1AC309E6C();
  v103 = *(v102 - 8);
  v104 = v102 - 8;
  v105 = (*(v103 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v102);
  v106 = v44 - v105;
  v127 = v111;
  v126 = v3;
  v125 = v4;
  v107 = sub_1AC30917C();
  v108 = [v107 productID];
  MEMORY[0x1E69E5920](v107);
  v109 = CBProductIDIsBeats(v108) == 0;
  v110 = &v122;
  v123 = &type metadata for AAFeatures;
  v124 = sub_1AC2254E0();
  v112 = sub_1AC30911C();
  __swift_destroy_boxed_opaque_existential_1(v110);
  MEMORY[0x1E69E5928](v111);
  if (v112)
  {
    v79 = sub_1AC30915C();
    v80 = sub_1AC30997C();

    v83 = &v114;
    v114 = v80;
    v81 = &v113;
    v113 = 2;
    v82 = type metadata accessor for AAFeatureCapability();
    sub_1AC212BF0();
    v84 = sub_1AC30B1BC();
  }

  else
  {
    v84 = 0;
  }

  v5 = v106;
  v55 = v84;
  MEMORY[0x1E69E5920](v111);
  LOBYTE(v121) = v109;
  v54 = 1;
  HIBYTE(v121) = v55 & 1;
  v6 = sub_1AC29DCC0();
  (*(v103 + 16))(v5, v6, v102);
  v53 = 18;
  v65 = 7;
  v7 = swift_allocObject();
  v8 = v54;
  v9 = v55;
  v56 = v7;
  *(v7 + 16) = v109;
  *(v7 + 17) = v9 & v8;
  v10 = swift_allocObject();
  v11 = v54;
  v12 = v55;
  v62 = v10;
  *(v10 + 16) = v109;
  *(v10 + 17) = v12 & v11;
  v77 = sub_1AC309E4C();
  v78 = sub_1AC30AD2C();
  v60 = 17;
  v68 = swift_allocObject();
  *(v68 + 16) = 0;
  v69 = swift_allocObject();
  v61 = 4;
  *(v69 + 16) = 4;
  v64 = 32;
  v13 = swift_allocObject();
  v14 = v56;
  v57 = v13;
  *(v13 + 16) = v85;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v57;
  v58 = v15;
  *(v15 + 16) = v86;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v58;
  v59 = v17;
  *(v17 + 16) = v87;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v59;
  v70 = v19;
  *(v19 + 16) = v88;
  *(v19 + 24) = v20;
  v71 = swift_allocObject();
  *(v71 + 16) = 0;
  v72 = swift_allocObject();
  *(v72 + 16) = v61;
  v21 = swift_allocObject();
  v22 = v62;
  v63 = v21;
  *(v21 + 16) = v89;
  *(v21 + 24) = v22;
  v23 = swift_allocObject();
  v24 = v63;
  v66 = v23;
  *(v23 + 16) = v90;
  *(v23 + 24) = v24;
  v25 = swift_allocObject();
  v26 = v66;
  v67 = v25;
  *(v25 + 16) = v91;
  *(v25 + 24) = v26;
  v27 = swift_allocObject();
  v28 = v67;
  v74 = v27;
  *(v27 + 16) = v92;
  *(v27 + 24) = v28;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
  v73 = sub_1AC30B18C();
  v75 = v29;

  v30 = v68;
  v31 = v75;
  *v75 = v93;
  v31[1] = v30;

  v32 = v69;
  v33 = v75;
  v75[2] = v94;
  v33[3] = v32;

  v34 = v70;
  v35 = v75;
  v75[4] = v95;
  v35[5] = v34;

  v36 = v71;
  v37 = v75;
  v75[6] = v96;
  v37[7] = v36;

  v38 = v72;
  v39 = v75;
  v75[8] = v97;
  v39[9] = v38;

  v40 = v74;
  v41 = v75;
  v75[10] = v98;
  v41[11] = v40;
  sub_1AC206300();

  if (os_log_type_enabled(v77, v78))
  {
    v42 = v99;
    v46 = sub_1AC30AE6C();
    v44[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
    v45 = 0;
    v47 = sub_1AC213EE4(0);
    v48 = sub_1AC213EE4(v45);
    v49 = &v119;
    v119 = v46;
    v50 = &v118;
    v118 = v47;
    v51 = &v117;
    v117 = v48;
    sub_1AC213F38(0, &v119);
    sub_1AC213F38(2, v49);
    v115 = v93;
    v116 = v68;
    sub_1AC213F4C(&v115, v49, v50, v51);
    v52 = v42;
    if (v42)
    {

      __break(1u);
    }

    else
    {
      v115 = v94;
      v116 = v69;
      sub_1AC213F4C(&v115, &v119, &v118, &v117);
      v44[5] = 0;
      v115 = v95;
      v116 = v70;
      sub_1AC213F4C(&v115, &v119, &v118, &v117);
      v44[4] = 0;
      v115 = v96;
      v116 = v71;
      sub_1AC213F4C(&v115, &v119, &v118, &v117);
      v44[3] = 0;
      v115 = v97;
      v116 = v72;
      sub_1AC213F4C(&v115, &v119, &v118, &v117);
      v44[2] = 0;
      v115 = v98;
      v116 = v74;
      sub_1AC213F4C(&v115, &v119, &v118, &v117);
      _os_log_impl(&dword_1AC1C3000, v77, v78, "SleepDetectionFeature supported: hasContent:%{BOOL}d capable: %{BOOL}d", v46, 0xEu);
      v44[1] = 0;
      sub_1AC213F98(v47);
      sub_1AC213F98(v48);
      sub_1AC30AE4C();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v77);
  (*(v103 + 8))(v106, v102);
  LOBYTE(v120) = v109;
  HIBYTE(v120) = v55 & 1;
  return v120;
}

uint64_t CBProductIDIsBeats(int a1)
{
  switch(a1)
  {
    case 8195:
      v2 = 1;
      break;
    case 8197:
      v2 = 1;
      break;
    case 8198:
      v2 = 1;
      break;
    case 8201:
      v2 = 1;
      break;
    case 8203:
      v2 = 1;
      break;
    case 8204:
      v2 = 1;
      break;
    case 8205:
      v2 = 1;
      break;
    case 8208:
      v2 = 1;
      break;
    case 8209:
      v2 = 1;
      break;
    case 8210:
      v2 = 1;
      break;
    case 8214:
      v2 = 1;
      break;
    case 8215:
      v2 = 1;
      break;
    case 8218:
      v2 = 1;
      break;
    case 8221:
      v2 = 1;
      break;
    case 8229:
      v2 = 1;
      break;
    case 8230:
      v2 = 1;
      break;
    case 8239:
      v2 = 1;
      break;
    default:
      v2 = 0;
      break;
  }

  return v2 & 1;
}

unint64_t sub_1AC2254E0()
{
  v2 = qword_1EB54BED8;
  if (!qword_1EB54BED8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54BED8);
    return WitnessTable;
  }

  return v2;
}

uint64_t static SleepDetectionFeature.specifiers(_:host:)(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v12[1] = a2;
  v17 = sub_1AC226744;
  v27 = sub_1AC226774;
  v29 = sub_1AC22677C;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v33 = 0;
  v22 = sub_1AC30A90C();
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v12[0] = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v21 = v12 - v12[0];
  v37 = sub_1AC309AAC();
  v35 = *(v37 - 8);
  v36 = v37 - 8;
  v13 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v25);
  v38 = v12 - v13;
  v46 = v3;
  v45 = v4;
  v44 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
  v14 = MEMORY[0x1E69A2B08];
  v15 = sub_1AC205220();
  v16 = v5;
  sub_1AC205220();
  v18 = sub_1AC309D3C();
  MEMORY[0x1E69E5928](v25);
  v42 = v25;
  v39 = sub_1AC309CDC();
  MEMORY[0x1E69E5920](v25);

  v26 = 1;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v6 = type metadata accessor for SleepDetectionFeature();
  v30 = sub_1AC215DE8(v21, v6);
  v31 = v7;
  (*(v19 + 8))(v21, v22);
  v32 = v43;
  memset(v43, 0, sizeof(v43));
  MEMORY[0x1E69E5928](v25);
  v23 = 24;
  v24 = 7;
  v8 = swift_allocObject();
  v9 = v25;
  *(v8 + 16) = v25;
  v28 = v8;
  MEMORY[0x1E69E5928](v9);
  v10 = swift_allocObject();
  *(v10 + 16) = v25;
  v34 = v10;
  sub_1AC20599C();
  sub_1AC309A9C();
  v40 = sub_1AC309D1C();
  (*(v35 + 8))(v38, v37);

  v41 = sub_1AC309D2C();

  return v41;
}

uint64_t sub_1AC225AB8()
{
  v4 = sub_1AC3091BC();
  v5 = [v4 productName];
  if (v5)
  {
    sub_1AC30A92C();
    v2 = v0;
    MEMORY[0x1E69E5920](v5);
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E5920](v4);
  }

  MEMORY[0x1E69E5920](v4);
}

id sub_1AC225BF0()
{
  sub_1AC30915C();
  sub_1AC3098DC();

  type metadata accessor for AAMultiState();
  sub_1AC21B624();
  if (sub_1AC30B1BC())
  {
    sub_1AC2068B8();
    return sub_1AC225CE4(1);
  }

  else
  {
    sub_1AC2068B8();
    return sub_1AC225CE4(0);
  }
}

uint64_t sub_1AC225D24(void *a1)
{
  sub_1AC30915C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v3 = [a1 BOOLValue];
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 2;
  }

  if (v3 == 2)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  swift_unknownObjectRelease();
  sub_1AC3098EC();
}

uint64_t sub_1AC225FD8()
{
  v0 = sub_1AC30A9DC();
  result = v3;
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_1AC2261F4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1AC226230(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v23 = a6;
  v25 = a1;
  v19 = 0;
  v29 = a6;
  v20 = *(a6 - 8);
  v21 = v20;
  MEMORY[0x1EEE9AC00](0);
  v22 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8();
  v26 = sub_1AC30B04C() >> 3;
  v27 = *v25;
  v28 = v27;
  if (v26 < 0)
  {
    result = sub_1AC30B07C();
    __break(1u);
  }

  else
  {
    v18 = v27 + v26;
    v17 = &v17;
    v9 = MEMORY[0x1EEE9AC00](v22);
    v15 = v28;
    v16 = v10;
    sub_1AC22646C(v9, sub_1AC2267B0, v14, v11, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v12, MEMORY[0x1E69E7CA8]);
    (*(v21 + 8))(v22, v23);
    result = v17;
    *v25 = v18;
  }

  return result;
}

uint64_t sub_1AC22646C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = sub_1AC30B07C();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

uint64_t sub_1AC226658(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1AC2266CC();
  v5 = MEMORY[0x1E69E72F0];

  return sub_1AC226230(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_1AC2266CC()
{
  v2 = qword_1EB54BEE0;
  if (!qword_1EB54BEE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54BEE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t DefaultFeatureContent.marketingName.getter()
{
  v14 = 0;
  v6 = 0;
  v10 = sub_1AC30A90C();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v4 - v5;
  v14 = v0;
  v13 = v0;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v1 = sub_1AC30984C();
  v11 = sub_1AC215DE8(v9, v1);
  v12 = v2;
  (*(v7 + 8))(v9, v10);
  return v11;
}

uint64_t DefaultFeatureContent.singularName.getter()
{
  v14 = 0;
  v6 = 0;
  v10 = sub_1AC30A90C();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v4 - v5;
  v14 = v0;
  v13 = v0;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v1 = sub_1AC30984C();
  v11 = sub_1AC215DE8(v9, v1);
  v12 = v2;
  (*(v7 + 8))(v9, v10);
  return v11;
}

uint64_t DefaultFeatureContent.platformName.getter()
{
  v14 = 0;
  v6 = 0;
  v10 = sub_1AC30A90C();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v4 - v5;
  v14 = v0;
  v13 = v0;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v1 = sub_1AC30984C();
  v11 = sub_1AC215DE8(v9, v1);
  v12 = v2;
  (*(v7 + 8))(v9, v10);
  return v11;
}

id DefaultFeatureContent.devImage.getter()
{
  v3 = objc_opt_self();
  v4 = *MEMORY[0x1E69DDD58];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69DDD58]);
  v5 = [v3 preferredFontForTextStyle_];
  MEMORY[0x1E69E5920](v4);
  sub_1AC226DB0();
  MEMORY[0x1E69E5928](v5);
  v7 = sub_1AC226E14(v5, 3);
  sub_1AC20D404();
  v8 = sub_1AC30A9DC();
  v6 = v0;
  MEMORY[0x1E69E5928](v7);
  v9 = sub_1AC226E78(v8, v6, v7);
  if (v9)
  {
    v2 = v9;
  }

  else
  {
    sub_1AC30B05C();
    __break(1u);
  }

  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v5);
  return v2;
}

unint64_t sub_1AC226DB0()
{
  v2 = qword_1EB54BEE8;
  if (!qword_1EB54BEE8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54BEE8);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_1AC226E14(uint64_t a1, uint64_t a2)
{
  v4 = [swift_getObjCClassFromMetadata() configurationWithFont:a1 scale:a2];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

id sub_1AC226E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AC30A91C();
  v6 = [swift_getObjCClassFromMetadata() systemImageNamed:v5 withConfiguration:a3];
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](v5);

  return v6;
}

id sub_1AC226F04()
{
  sub_1AC20BE24();
  type metadata accessor for HeadphoneSettingsController();
  result = sub_1AC20BE88();
  qword_1EB553CC0 = result;
  return result;
}

uint64_t *sub_1AC226F4C()
{
  if (qword_1EB54DD10 != -1)
  {
    swift_once();
  }

  return &qword_1EB553CC0;
}

uint64_t sub_1AC226FAC()
{
  v1 = sub_1AC226F4C();
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x1E69E5928](*v1);
  swift_endAccess();
  return v2;
}

uint64_t sub_1AC22700C(uint64_t a1)
{
  v3 = sub_1AC226F4C();
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v1 = *v3;
  *v3 = a1;
  MEMORY[0x1E69E5920](v1);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t (*sub_1AC227098())()
{
  sub_1AC226F4C();
  swift_beginAccess();
  return sub_1AC20949C;
}

void *sub_1AC2270F4@<X0>(void *a1@<X8>)
{
  v11 = sub_1AC30A9DC();
  v6 = v1;
  v7 = sub_1AC227218();
  v8 = sub_1AC30A9DC();
  v9 = v2;
  v10 = DefaultFeatureContent.devImage.getter();
  v5 = DefaultFeatureContent.devImage.getter();
  v3 = DefaultFeatureContent.devImage.getter();
  sub_1AC216510(v11, v6, v7, v8, v9, 0, 0, v10, v13, 0, v5, v3, sub_1AC20D540, 0);
  return memcpy(a1, v13, 0x60uLL);
}

id sub_1AC227218()
{
  v136 = 0;
  sub_1AC20D5F4();
  v114 = sub_1AC20D658();
  v135 = v114;
  v103 = 1;
  v0 = sub_1AC30A9DC();
  v38 = v133;
  v104 = MEMORY[0x1E69E6158];
  v134 = MEMORY[0x1E69E6158];
  v133[0] = v0;
  v133[1] = v1;
  v37 = sub_1AC30AC3C();
  v34 = v134;
  v2 = __swift_project_boxed_opaque_existential_1(v133, v134);
  v32 = *(v34 - 8);
  v33 = v34 - 8;
  v31 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v35 = &v31 - v31;
  (*(v32 + 16))();
  v36 = sub_1AC30B19C();
  (*(v32 + 8))(v35, v34);
  v110 = 0x1FB921000uLL;
  [v114 0x1FB921E28];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v38);
  v3 = sub_1AC30A9DC();
  v46 = v131;
  v132 = v104;
  v131[0] = v3;
  v131[1] = v4;
  v45 = sub_1AC30AC3C();
  v42 = v132;
  v5 = __swift_project_boxed_opaque_existential_1(v46, v132);
  v40 = *(v42 - 8);
  v41 = v42 - 8;
  v39 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v31 - v39;
  (*(v40 + 16))();
  v44 = sub_1AC30B19C();
  (*(v40 + 8))(v43, v42);
  [v114 (v110 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v46);
  v6 = sub_1AC30A9DC();
  v54 = v129;
  v130 = v104;
  v129[0] = v6;
  v129[1] = v7;
  v53 = sub_1AC30AC3C();
  v50 = v130;
  v8 = __swift_project_boxed_opaque_existential_1(v54, v130);
  v48 = *(v50 - 8);
  v49 = v50 - 8;
  v47 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v31 - v47;
  (*(v48 + 16))();
  v52 = sub_1AC30B19C();
  (*(v48 + 8))(v51, v50);
  [v114 (v110 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v54);
  v9 = sub_1AC30A9DC();
  v62 = v127;
  v128 = v104;
  v127[0] = v9;
  v127[1] = v10;
  v61 = sub_1AC30AC3C();
  v58 = v128;
  v11 = __swift_project_boxed_opaque_existential_1(v62, v128);
  v56 = *(v58 - 8);
  v57 = v58 - 8;
  v55 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v31 - v55;
  (*(v56 + 16))();
  v60 = sub_1AC30B19C();
  (*(v56 + 8))(v59, v58);
  [v114 (v110 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v62);
  v12 = sub_1AC30A9DC();
  v70 = v125;
  v126 = v104;
  v125[0] = v12;
  v125[1] = v13;
  v69 = sub_1AC30AC3C();
  v66 = v126;
  v14 = __swift_project_boxed_opaque_existential_1(v70, v126);
  v64 = *(v66 - 8);
  v65 = v66 - 8;
  v63 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v67 = &v31 - v63;
  (*(v64 + 16))();
  v68 = sub_1AC30B19C();
  (*(v64 + 8))(v67, v66);
  [v114 (v110 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v70);
  v15 = sub_1AC30A9DC();
  v78 = v123;
  v124 = v104;
  v123[0] = v15;
  v123[1] = v16;
  v77 = sub_1AC30AC3C();
  v74 = v124;
  v17 = __swift_project_boxed_opaque_existential_1(v78, v124);
  v72 = *(v74 - 8);
  v73 = v74 - 8;
  v71 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v75 = &v31 - v71;
  (*(v72 + 16))();
  v76 = sub_1AC30B19C();
  (*(v72 + 8))(v75, v74);
  [v114 (v110 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v78);
  v18 = sub_1AC30A9DC();
  v86 = v121;
  v122 = v104;
  v121[0] = v18;
  v121[1] = v19;
  v85 = sub_1AC30ABEC();
  v82 = v122;
  v20 = __swift_project_boxed_opaque_existential_1(v86, v122);
  v80 = *(v82 - 8);
  v81 = v82 - 8;
  v79 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v83 = &v31 - v79;
  (*(v80 + 16))();
  v84 = sub_1AC30B19C();
  (*(v80 + 8))(v83, v82);
  [v114 (v110 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v86);
  v21 = sub_1AC30A9DC();
  v94 = v119;
  v120 = v104;
  v119[0] = v21;
  v119[1] = v22;
  v93 = sub_1AC30ABEC();
  v90 = v120;
  v23 = __swift_project_boxed_opaque_existential_1(v94, v120);
  v88 = *(v90 - 8);
  v89 = v90 - 8;
  v87 = (*(v88 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v91 = &v31 - v87;
  (*(v88 + 16))();
  v92 = sub_1AC30B19C();
  (*(v88 + 8))(v91, v90);
  [v114 (v110 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v94);
  v24 = sub_1AC30A9DC();
  v102 = v117;
  v118 = v104;
  v117[0] = v24;
  v117[1] = v25;
  v101 = sub_1AC30ABEC();
  v98 = v118;
  v26 = __swift_project_boxed_opaque_existential_1(v102, v118);
  v96 = *(v98 - 8);
  v97 = v98 - 8;
  v95 = (*(v96 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v99 = &v31 - v95;
  (*(v96 + 16))();
  v100 = sub_1AC30B19C();
  (*(v96 + 8))(v99, v98);
  [v114 (v110 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v102);
  v27 = sub_1AC30A9DC();
  v113 = v115;
  v116 = v104;
  v115[0] = v27;
  v115[1] = v28;
  v112 = sub_1AC30ABEC();
  v108 = v116;
  v29 = __swift_project_boxed_opaque_existential_1(v113, v116);
  v106 = *(v108 - 8);
  v107 = v108 - 8;
  v105 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v109 = &v31 - v105;
  (*(v106 + 16))();
  v111 = sub_1AC30B19C();
  (*(v106 + 8))(v109, v108);
  [v114 (v110 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v113);
  return v114;
}

void *sub_1AC227FC4@<X0>(void *a1@<X8>)
{
  v60 = a1;
  v67 = 0;
  v64 = 0;
  v65 = 0;
  v19 = 0;
  v54 = sub_1AC30A90C();
  v28 = *(v54 - 8);
  v29 = v54 - 8;
  v15 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v53 = &v14 - v15;
  v44 = sub_1AC30A8EC();
  v26 = *(v44 - 8);
  v27 = v44 - 8;
  v16 = (v26[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v14 - v16;
  v17 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v14 - v16);
  v41 = &v14 - v17;
  v18 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v14 - v17);
  v47 = &v14 - v18;
  v67 = v1;

  v49 = sub_1AC30984C();
  v22 = v66;
  v66[3] = v49;
  v66[4] = &protocol witness table for DefaultFeatureContent;
  v66[0] = v1;
  v21 = v49;
  v20 = &protocol witness table for DefaultFeatureContent;
  __swift_project_boxed_opaque_existential_1(v66, v49);
  v35 = (v20[1])(v21);
  v59 = v4;
  v64 = v35;
  v65 = v4;
  __swift_destroy_boxed_opaque_existential_1(v22);
  v24 = &v63;
  v63 = v30;
  v31 = 1;
  sub_1AC30A8DC();
  v32 = "Place ";
  v33 = 6;
  v36 = 1;
  sub_1AC30A9DC();
  v23 = v5;
  sub_1AC30A8CC();

  sub_1AC30A8BC();
  sub_1AC30A9DC();
  v25 = v6;
  sub_1AC30A8CC();

  v40 = v26[2];
  v39 = v26 + 2;
  v40(v41, v47, v44);
  v43 = v26[4];
  v42 = v26 + 4;
  v43(v48, v41, v44);
  v46 = v26[1];
  v45 = v26 + 1;
  v46(v47, v44);
  sub_1AC30A8FC();
  v50 = &off_1F20F2688;
  v57 = sub_1AC215DE8(v53, v49);
  v58 = v7;
  v52 = *(v28 + 8);
  v51 = v28 + 8;
  v52(v53, v54);
  v37 = &v62;
  v62 = v30;
  sub_1AC30A8DC();
  sub_1AC30A9DC();
  v34 = v8;
  sub_1AC30A8CC();

  sub_1AC30A8BC();
  sub_1AC30A9DC();
  v38 = v9;
  sub_1AC30A8CC();

  v40(v41, v47, v44);
  v43(v48, v41, v44);
  v46(v47, v44);
  sub_1AC30A8FC();
  v55 = sub_1AC215DE8(v53, v49);
  v56 = v10;
  v52(v53, v54);
  v11 = sub_1AC20DD78();
  v61 = &v68;
  sub_1AC236A90(v57, v58, v55, v56, v11, v12, &v68);

  return memcpy(v60, v61, 0x30uLL);
}

uint64_t DefaultFeatureContent.deviceGenerationSpecificName.getter()
{
  v14 = 0;
  v6 = 0;
  v10 = sub_1AC30A90C();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v4 - v5;
  v14 = v0;
  v13 = v0;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v1 = sub_1AC30984C();
  v11 = sub_1AC215DE8(v9, v1);
  v12 = v2;
  (*(v7 + 8))(v9, v10);
  return v11;
}

unint64_t DefaultFeatureContent.hearingFeatureContent.getter@<X0>(void *a1@<X8>)
{

  a1[3] = sub_1AC30984C();
  result = sub_1AC22885C();
  a1[4] = result;
  *a1 = v1;
  return result;
}

unint64_t sub_1AC22885C()
{
  v2 = qword_1EB54BEF0;
  if (!qword_1EB54BEF0)
  {
    sub_1AC30984C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54BEF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t DefaultFeatureContent.deviceMarketingName.getter()
{
  v6 = v0;

  v4 = sub_1AC30984C();
  v5 = &protocol witness table for DefaultFeatureContent;
  v3[0] = v0;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v2 = off_1F20F2670[0]();
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v2;
}

uint64_t DefaultFeatureContent.devicePlatformName.getter()
{
  v6 = v0;

  v4 = sub_1AC30984C();
  v5 = &protocol witness table for DefaultFeatureContent;
  v3[0] = v0;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v2 = off_1F20F2680();
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v2;
}

uint64_t DefaultFeatureContent.singleDeviceName.getter()
{
  v6 = v0;

  v4 = sub_1AC30984C();
  v5 = &protocol witness table for DefaultFeatureContent;
  v3[0] = v0;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v2 = off_1F20F2678[0]();
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v2;
}

uint64_t DefaultFeatureContent.suggestionFitSymbols.getter@<X0>(uint64_t *a1@<X8>)
{
  v5 = sub_1AC30A9DC();
  v6 = v1;
  v7 = sub_1AC30A9DC();
  v8 = v2;
  result = sub_1AC30A9DC();
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = result;
  a1[5] = v4;
  return result;
}

uint64_t DefaultFeatureContent.videoAirPodAdjustBundle.getter()
{
  v1 = sub_1AC226F4C();
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x1E69E5928](*v1);
  swift_endAccess();
  return v2;
}

uint64_t DefaultFeatureContent.videoAirPodLeftRightBundle.getter()
{
  v1 = sub_1AC226F4C();
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x1E69E5928](*v1);
  swift_endAccess();
  return v2;
}

uint64_t sub_1AC228EF4@<X0>(void *a1@<X8>)
{
  result = DefaultFeatureContent.suggestionFitSymbols.getter(v8);
  v2 = v8[1];
  v3 = v8[2];
  v4 = v8[3];
  v5 = v8[4];
  v6 = v8[5];
  *a1 = v8[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  return result;
}

uint64_t DefaultFeatureContent.getAssetsDictionary.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BC98);
  sub_1AC30B18C();
  return sub_1AC30A83C();
}

uint64_t DefaultFeatureContent.deviceColor.getter()
{
  v1 = sub_1AC30983C();
  v2 = sub_1AC30919C();
  MEMORY[0x1E69E5920](v1);
  return v2;
}

uint64_t DefaultFeatureContent.featureTitleSettings.getter()
{
  v14 = 0;
  v6 = 0;
  v10 = sub_1AC30A90C();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v4 - v5;
  v14 = v0;
  v13 = v0;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v1 = sub_1AC30984C();
  v11 = sub_1AC215DE8(v9, v1);
  v12 = v2;
  (*(v7 + 8))(v9, v10);
  return v11;
}

uint64_t DefaultFeatureContent.featureFooterSettings.getter()
{
  v31 = 0;
  v23 = 0;
  v27 = sub_1AC30A90C();
  v24 = *(v27 - 8);
  v25 = v27 - 8;
  v7 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v26 = &v7 - v7;
  v20 = sub_1AC30A8EC();
  v18 = *(v20 - 8);
  v19 = v20 - 8;
  v10 = *(v18 + 64);
  v8 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v7 - v8;
  v9 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v7 - v8);
  v17 = &v7 - v9;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v7 - v9);
  v21 = &v7 - v11;
  v31 = v0;
  v15 = &v30;
  v30 = v0;
  sub_1AC30A8DC();
  v14 = 1;
  sub_1AC30A9DC();
  v12 = v1;
  sub_1AC30A8CC();

  DefaultFeatureContent.platformName.getter();
  v13 = v2;
  sub_1AC30A8BC();

  sub_1AC30A9DC();
  v16 = v3;
  sub_1AC30A8CC();

  (*(v18 + 16))(v17, v21, v20);
  (*(v18 + 32))(v22, v17, v20);
  (*(v18 + 8))(v21, v20);
  sub_1AC30A8FC();
  v4 = sub_1AC30984C();
  v28 = sub_1AC215DE8(v26, v4);
  v29 = v5;
  (*(v24 + 8))(v26, v27);
  return v28;
}

uint64_t sub_1AC229838()
{
  v55 = 0;
  v52 = 0;
  v53 = 0;
  v22 = 0;
  v40 = sub_1AC30A90C();
  v31 = *(v40 - 8);
  v32 = v40 - 8;
  v12 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v39 = &v12 - v12;
  v28 = sub_1AC30A8EC();
  v26 = *(v28 - 8);
  v27 = v28 - 8;
  v13 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v12 - v13;
  v14 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v12 - v13);
  v25 = &v12 - v14;
  v15 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v12 - v14);
  v29 = &v12 - v15;
  v55 = v0;

  v35 = sub_1AC30984C();
  v18 = v54;
  v54[3] = v35;
  v54[4] = &protocol witness table for DefaultFeatureContent;
  v54[0] = v0;
  v17 = v35;
  v16 = &protocol witness table for DefaultFeatureContent;
  __swift_project_boxed_opaque_existential_1(v54, v35);
  v21 = (v16[3])(v17);
  v45 = v3;
  v52 = v21;
  v53 = v3;
  __swift_destroy_boxed_opaque_existential_1(v18);
  v23 = &v51;
  v51 = v33;
  v19 = 15;
  sub_1AC30A8DC();
  v34 = 1;
  sub_1AC30A9DC();
  v20 = v4;
  sub_1AC30A8CC();

  sub_1AC30A8BC();
  sub_1AC30A9DC();
  v24 = v5;
  sub_1AC30A8CC();

  (*(v26 + 16))(v25, v29, v28);
  (*(v26 + 32))(v30, v25, v28);
  (*(v26 + 8))(v29, v28);
  sub_1AC30A8FC();
  v36 = &off_1F20F2688;
  v41 = sub_1AC215DE8(v39, v35);
  v42 = v6;
  v38 = *(v31 + 8);
  v37 = v31 + 8;
  v38(v39, v40);
  v50 = v33;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v43 = sub_1AC215DE8(v39, v35);
  v44 = v7;
  v38(v39, v40);
  v46 = nullsub_1(v41);
  v47 = v8;
  v48 = v9;
  v49 = v10;

  return v46;
}

uint64_t sub_1AC229D5C()
{
  v7 = v0;

  v5 = sub_1AC30984C();
  v6 = &protocol witness table for DefaultFeatureContent;
  v4[0] = v0;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v1 = off_1F20F2680();
  v3 = nullsub_1(v1);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v3;
}

_BYTE *sub_1AC229E34()
{
  v62 = 0;
  v59 = 0;
  v60 = 0;
  v19 = 0;
  v50 = sub_1AC30A90C();
  v25 = *(v50 - 8);
  v26 = v50 - 8;
  v12 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v49 = &v11 - v12;
  v39 = sub_1AC30A8EC();
  v23 = *(v39 - 8);
  v24 = v39 - 8;
  v13 = (v23[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v11 - v13;
  v14 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v11 - v13);
  v36 = &v11 - v14;
  v15 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v11 - v14);
  v42 = &v11 - v15;
  v62 = v0;

  v44 = sub_1AC30984C();
  v18 = v61;
  v61[3] = v44;
  v61[4] = &protocol witness table for DefaultFeatureContent;
  v61[0] = v0;
  v17 = v44;
  v16 = &protocol witness table for DefaultFeatureContent;
  __swift_project_boxed_opaque_existential_1(v61, v44);
  v30 = (v16[3])(v17);
  v55 = v3;
  v59 = v30;
  v60 = v3;
  __swift_destroy_boxed_opaque_existential_1(v18);
  v46 = type metadata accessor for SpatialFeatureContent();
  v21 = &v58;
  v58 = v27;
  v28 = 1;
  sub_1AC30A8DC();
  v31 = 1;
  sub_1AC30A9DC();
  v20 = v4;
  sub_1AC30A8CC();

  sub_1AC30A8BC();
  sub_1AC30A9DC();
  v22 = v5;
  sub_1AC30A8CC();

  v35 = v23[2];
  v34 = v23 + 2;
  v35(v36, v42, v39);
  v38 = v23[4];
  v37 = v23 + 4;
  v38(v43, v36, v39);
  v41 = v23[1];
  v40 = v23 + 1;
  v41(v42, v39);
  sub_1AC30A8FC();
  v45 = &off_1F20F2688;
  v51 = sub_1AC215DE8(v49, v44);
  v52 = v6;
  v48 = *(v25 + 8);
  v47 = v25 + 8;
  v48(v49, v50);
  v32 = &v57;
  v57 = v27;
  sub_1AC30A8DC();
  sub_1AC30A9DC();
  v29 = v7;
  sub_1AC30A8CC();

  sub_1AC30A8BC();
  sub_1AC30A9DC();
  v33 = v8;
  sub_1AC30A8CC();

  v35(v36, v42, v39);
  v38(v43, v36, v39);
  v41(v42, v39);
  sub_1AC30A8FC();
  v53 = sub_1AC215DE8(v49, v44);
  v54 = v9;
  v48(v49, v50);
  v56 = SpatialFeatureContent.__allocating_init(removeString:putInEarString:forceFitTest:)(v51, v52, v53, v54, 0);

  return v56;
}

uint64_t sub_1AC22A4CC@<X0>(uint64_t a1@<X8>)
{
  v5[0] = a1;
  v5[1] = "Fatal error";
  v5[2] = "Unexpectedly found nil while unwrapping an Optional value";
  v5[3] = "HeadphoneSettingsUI/DevelopmentAccessoryFeatureProviding.swift";
  v13 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCA0);
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v9 = v5 - v6;
  v13 = v1;
  v8 = 1;
  sub_1AC30A9DC();
  v7 = v3;
  sub_1AC30900C();

  v10 = sub_1AC30901C();
  v11 = *(v10 - 8);
  v12 = v10 - 8;
  if ((*(v11 + 48))(v9, v8) == 1)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  return (*(v11 + 32))(v5[0], v9, v10);
}

uint64_t sub_1AC22A740()
{
  v51[5] = 0;
  v19 = sub_1AC30B18C();
  v18 = v0;
  v51[3] = type metadata accessor for YodelOcclusionDetectionFeature();
  v51[4] = &off_1F20F2AE8;
  v51[0] = sub_1AC236740();
  sub_1AC29F3A0(v51, v18);
  v50[3] = type metadata accessor for CounterfitDetectionFeature();
  v50[4] = &off_1F20F8128;
  v50[0] = sub_1AC2B095C();
  sub_1AC29F3A0(v50, v18 + 40);
  v16 = sub_1AC207218();
  v49[3] = type metadata accessor for LiveTranslationPlaceCardFeature();
  v49[4] = &off_1F20F97D0;
  v49[0] = v16;
  sub_1AC29F3A0(v49, v18 + 80);
  v48[3] = type metadata accessor for FirmwareSeedingFeature();
  v48[4] = &off_1F20FA548;
  v48[0] = sub_1AC2EDE18();
  sub_1AC29F3A0(v48, v18 + 120);
  v47[3] = type metadata accessor for TempPairingFeature();
  v47[4] = &off_1F20FA730;
  v47[0] = sub_1AC2F7130();
  sub_1AC29F3A0(v47, v18 + 160);
  v46[3] = &unk_1F20FA0B0;
  v46[4] = &off_1F20FA020;
  v46[0] = sub_1AC2E0244();
  v46[1] = v1;
  sub_1AC29F3A0(v46, v18 + 200);
  v45[3] = &unk_1F20F2C30;
  v45[4] = &off_1F20F2B18;
  v45[0] = sub_1AC2373A0();
  v45[1] = v2;
  sub_1AC29F3A0(v45, v18 + 240);
  v44[3] = type metadata accessor for YodelFeature();
  v44[4] = &off_1F20F2AC0;
  v44[0] = sub_1AC23624C();
  sub_1AC29F3A0(v44, v18 + 280);
  v43[3] = &unk_1F20F9F68;
  v43[4] = &off_1F20F9E58;
  v43[0] = sub_1AC2DF418();
  v43[1] = v3;
  sub_1AC29F3A0(v43, v18 + 320);
  v42[3] = type metadata accessor for PressHoldFeature();
  v42[4] = &off_1F20F6D08;
  v42[0] = sub_1AC28F88C();
  sub_1AC29F3A0(v42, v18 + 360);
  v41[3] = &unk_1F20F3D88;
  v41[4] = &off_1F20F3CF8;
  v41[0] = sub_1AC24FC24();
  v41[1] = v4;
  sub_1AC29F3A0(v41, v18 + 400);
  v40[3] = &unk_1F20F1DD8;
  v40[4] = &off_1F20F1D48;
  v40[0] = sub_1AC213D44();
  v40[1] = v5;
  sub_1AC29F3A0(v40, v18 + 440);
  v39[3] = type metadata accessor for AudioFeatureGroup();
  v39[4] = &off_1F20F9890;
  v39[0] = sub_1AC2D29B0();
  sub_1AC29F3A0(v39, v18 + 480);
  v38[3] = &unk_1F20F1948;
  v38[4] = &off_1F20F1830;
  v38[0] = sub_1AC206378();
  v38[1] = v6;
  sub_1AC29F3A0(v38, v18 + 520);
  v37[3] = &unk_1F20F82F0;
  v37[4] = &off_1F20F8260;
  v37[0] = sub_1AC2B47DC();
  v37[1] = v7;
  sub_1AC29F3A0(v37, v18 + 560);
  v17 = sub_1AC207244();
  v36[3] = type metadata accessor for LiveTranslationFeature();
  v36[4] = &off_1F20F9788;
  v36[0] = v17;
  sub_1AC29F3A0(v36, v18 + 600);
  v35[3] = &unk_1F20F74C8;
  v35[4] = &off_1F20F7438;
  v35[0] = sub_1AC299620();
  v35[1] = v8;
  sub_1AC29F3A0(v35, v18 + 640);
  v34[3] = type metadata accessor for SleepDetectionFeature();
  v34[4] = &off_1F20F2628;
  v34[0] = sub_1AC225F9C();
  sub_1AC29F3A0(v34, v18 + 680);
  v33[3] = &unk_1F20F4968;
  v33[4] = &off_1F20F48B8;
  v33[0] = sub_1AC25B2F0();
  v33[1] = v9;
  sub_1AC29F3A0(v33, v18 + 720);
  v31 = &type metadata for BatteryChargingFeature;
  v32 = &off_1F20F4658;
  sub_1AC2589D4(&v30);
  sub_1AC29F3A0(&v30, v18 + 760);
  v29[3] = type metadata accessor for CharginCaseSoundFeature();
  v29[4] = &off_1F20F6C90;
  v29[0] = sub_1AC28EB2C();
  sub_1AC29F3A0(v29, v18 + 800);
  v28[3] = &unk_1F20F33C8;
  v28[4] = &off_1F20F3330;
  v28[0] = sub_1AC246D88();
  v28[1] = v10;
  sub_1AC29F3A0(v28, v18 + 840);
  v27[3] = &unk_1F20F4EE8;
  v27[4] = &off_1F20F4E58;
  v27[0] = sub_1AC264F00();
  v27[1] = v11;
  sub_1AC29F3A0(v27, v18 + 880);
  v26[3] = type metadata accessor for FitFeatureGroup();
  v26[4] = &off_1F20F6E70;
  v26[0] = sub_1AC291544();
  sub_1AC29F3A0(v26, v18 + 920);
  v25[3] = &unk_1F20F9A10;
  v25[4] = &off_1F20F9980;
  v25[0] = sub_1AC2D6938();
  v25[1] = v12;
  sub_1AC29F3A0(v25, v18 + 960);
  v24[3] = &unk_1F20F5818;
  v24[4] = &off_1F20F5788;
  v24[0] = sub_1AC270E44();
  v24[1] = v13;
  sub_1AC29F3A0(v24, v18 + 1000);
  v23[3] = type metadata accessor for AboutFeature();
  v23[4] = &off_1F20FA300;
  v23[0] = sub_1AC2E6C54();
  sub_1AC29F3A0(v23, v18 + 1040);
  v22[3] = type metadata accessor for FirmwareUpdateFeature();
  v22[4] = &off_1F20F54A8;
  v22[0] = sub_1AC26C2F4();
  sub_1AC29F3A0(v22, v18 + 1080);
  v21[3] = type metadata accessor for AppleCareCoverageFeature();
  v21[4] = &off_1F20F38B8;
  v21[0] = sub_1AC24D228();
  sub_1AC29F3A0(v21, v18 + 1120);
  v20[3] = &unk_1F20F21D8;
  v20[4] = &off_1F20F2140;
  v20[0] = sub_1AC21E7B4();
  v20[1] = v14;
  sub_1AC29F3A0(v20, v18 + 1160);
  result = v19;
  sub_1AC206300();
  return result;
}

unint64_t sub_1AC22AF10()
{
  v2 = qword_1EB54BEF8;
  if (!qword_1EB54BEF8)
  {
    sub_1AC30984C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54BEF8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC22AF90(unsigned int a1)
{
  v11 = a1;
  v21 = 0;
  v12 = sub_1AC30A90C();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v7 - v15;
  v21 = MEMORY[0x1EEE9AC00](v11);
  if (v21 == 2)
  {
    v17 = v11;
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v1 = type metadata accessor for CBPeerCallConfig();
    v9 = sub_1AC215DE8(v16, v1);
    v10 = v2;
    (*(v13 + 8))(v16, v12);
    v19 = v9;
    v20 = v10;
  }

  else if (v11 == 3)
  {
    v18 = v11;
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v3 = type metadata accessor for CBPeerCallConfig();
    v7 = sub_1AC215DE8(v16, v3);
    v8 = v4;
    (*(v13 + 8))(v16, v12);
    v19 = v7;
    v20 = v8;
  }

  else
  {
    v19 = sub_1AC30A9DC();
    v20 = v5;
  }

  return v19;
}

uint64_t type metadata accessor for CBPeerCallConfig()
{
  v4 = qword_1EB54BF40;
  if (!qword_1EB54BF40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54BF40);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1AC22B320(__int16 a1)
{
  v31 = 0;
  v32 = a1;
  v18 = a1;
  v13 = HIBYTE(a1);
  v20 = 0;
  v14 = sub_1AC30A90C();
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  v17 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v6 - v17;
  LOBYTE(v31) = v18;
  HIBYTE(v31) = v1 & 1;
  LOBYTE(v30) = v18;
  HIBYTE(v30) = v1 & 1;
  v2 = sub_1AC22B250(v30);
  v23 = &v29;
  v29 = v2;
  v21 = &v28;
  v28 = 2;
  v22 = type metadata accessor for CBPeerCallConfig();
  sub_1AC22B5B0();
  if (sub_1AC30B1BC())
  {
    v24 = v18;
    v25 = v13 & 1;
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v9 = sub_1AC215DE8(v19, &unk_1F20F2910);
    v10 = v3;
    (*(v15 + 8))(v19, v14);
    v11 = v9;
    v12 = v10;
  }

  else
  {
    v26 = v18;
    v27 = v13 & 1;
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v7 = sub_1AC215DE8(v19, &unk_1F20F2910);
    v8 = v4;
    (*(v15 + 8))(v19, v14);
    v11 = v7;
    v12 = v8;
  }

  return v11;
}

unint64_t sub_1AC22B5B0()
{
  v2 = qword_1EB54BF00;
  if (!qword_1EB54BF00)
  {
    type metadata accessor for CBPeerCallConfig();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54BF00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC22B664@<X0>(uint64_t a1@<X8>)
{
  sub_1AC30A77C();
  v4 = MEMORY[0x1E6981E70];
  sub_1AC207B58(v3, MEMORY[0x1E6981E70], v3);
  return sub_1AC207B58(v3, v4, a1);
}

uint64_t sub_1AC22B6E0(uint64_t a1, __int16 a2)
{
  v4 = HIBYTE(a2);
  v5 = sub_1AC22B250(a2 & 0x1FF);
  if (v4)
  {
    if (v5 != 2 && v5 != 3)
    {
      goto LABEL_12;
    }

    sub_1AC3093EC();
    type metadata accessor for CBPeerCallConfig();
    sub_1AC22B5B0();
    v3 = sub_1AC30B1BC();
  }

  else
  {
    if (v5 != 2 && v5 != 3)
    {
LABEL_12:
      v3 = 0;
      return v3 & 1;
    }

    sub_1AC30927C();
    type metadata accessor for CBPeerCallConfig();
    sub_1AC22B5B0();
    v3 = sub_1AC30B1BC();
  }

  return v3 & 1;
}

uint64_t sub_1AC22B934(uint64_t a1, char a2, __int16 a3)
{
  if (a2)
  {
    if ((a3 & 0x100) != 0)
    {
      sub_1AC3093FC();
      type metadata accessor for CBPeerCallConfig();
      sub_1AC22B5B0();
      sub_1AC30B1BC();
      sub_1AC30928C();
    }

    else
    {
      sub_1AC30928C();
      type metadata accessor for CBPeerCallConfig();
      sub_1AC22B5B0();
      sub_1AC30B1BC();
      sub_1AC3093FC();
    }
  }

  return sub_1AC30942C();
}

BOOL sub_1AC22BB0C(__int16 a1, __int16 a2)
{
  if ((a1 & 0x100) != 0)
  {
    if ((a2 & 0x100) != 0)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if ((a2 & 0x100) != 0)
  {
    return 0;
  }

LABEL_3:
  type metadata accessor for CBPeerCallConfig();
  sub_1AC22B5B0();
  return (sub_1AC30B1BC() & 1) != 0;
}

uint64_t sub_1AC22BCCC()
{
  sub_1AC30B23C();
  type metadata accessor for CBPeerCallConfig();
  sub_1AC22BE0C();
  return sub_1AC30B23C();
}

unint64_t sub_1AC22BE0C()
{
  v2 = qword_1EB54BF08;
  if (!qword_1EB54BF08)
  {
    type metadata accessor for CBPeerCallConfig();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54BF08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC22BF00()
{
  v2 = qword_1EB54BF10;
  if (!qword_1EB54BF10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54BF10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC22BF7C()
{
  LOBYTE(v2) = *v0;
  HIBYTE(v2) = v0[1] & 1;
  return sub_1AC22B320(v2);
}

uint64_t sub_1AC22C070(uint64_t a1)
{
  LOBYTE(v3) = *v1;
  HIBYTE(v3) = v1[1] & 1;
  return sub_1AC22B6E0(a1, v3) & 1;
}

uint64_t sub_1AC22C0B0(uint64_t a1, char a2)
{
  LOBYTE(v4) = *v2;
  HIBYTE(v4) = v2[1] & 1;
  return sub_1AC22B934(a1, a2 & 1, v4);
}

BOOL sub_1AC22C0F0(_BYTE *a1, _BYTE *a2)
{
  LOBYTE(v4) = *a1;
  HIBYTE(v4) = a1[1] & 1;
  LOBYTE(v3) = *a2;
  HIBYTE(v3) = a2[1] & 1;
  return sub_1AC22BB0C(v4, v3);
}

uint64_t sub_1AC22C214(uint64_t a1, __int16 a2)
{
  if ((a2 & 0x100) != 0)
  {
    v2 = sub_1AC3093EC();
  }

  else
  {
    v2 = sub_1AC30927C();
  }

  return sub_1AC22AF90(v2);
}

uint64_t sub_1AC22C308(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BF18);
  *(v2 + 16) = sub_1AC30B18C();
  *(v2 + 24) = sub_1AC30B18C();

  swift_beginAccess();
  *(v2 + 16) = a1;

  swift_endAccess();

  swift_beginAccess();
  *(v2 + 24) = a1;

  swift_endAccess();
  MEMORY[0x1E69E5920](a2);

  return v6;
}

uint64_t sub_1AC22C428()
{
  v16 = "Fatal error";
  v17 = "Unexpectedly found nil while unwrapping an Optional value";
  v18 = "HeadphoneSettingsUI/CallManagementDataSource.swift";
  v38 = 0;
  v32 = 0;
  v26 = 0;
  v19 = sub_1AC30A90C();
  v20 = *(v19 - 8);
  v21 = v19 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v6 - v22;
  v38 = v0;
  v24 = &v37;
  swift_beginAccess();
  v25 = *(v0 + 16);

  swift_endAccess();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BF18);
  sub_1AC30AB7C();
  v28 = v36;
  v35 = v36;
  sub_1AC22C79C();
  sub_1AC30AC9C();
  v29 = v34;

  if (v29)
  {
    v14 = v29;
  }

  else
  {
    sub_1AC30B05C();
    __break(1u);
  }

  v12 = v14;
  sub_1AC309C2C();
  v13 = HIBYTE(v33);
  v32 = v33 & 0x1FF;

  if (v13)
  {
    v31 = v15;
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v3 = type metadata accessor for CallManagementDataSource();
    v6 = sub_1AC215DE8(v23, v3);
    v7 = v4;
    (*(v20 + 8))(v23, v19);
    v10 = v6;
    v11 = v7;
  }

  else
  {
    v30 = v15;
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v1 = type metadata accessor for CallManagementDataSource();
    v8 = sub_1AC215DE8(v23, v1);
    v9 = v2;
    (*(v20 + 8))(v23, v19);
    v10 = v8;
    v11 = v9;
  }

  return v10;
}

unint64_t sub_1AC22C79C()
{
  v2 = qword_1EB54BF20;
  if (!qword_1EB54BF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54BF18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54BF20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC22C84C()
{
  sub_1AC309C2C();
  sub_1AC22B250(v2 & 0x1FF);
  swift_beginAccess();

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BF18);
  sub_1AC30AB7C();
  sub_1AC22CAE8();
  sub_1AC30AA6C();
  sub_1AC209190();

  if (v1)
  {
    sub_1AC309C4C();
  }

  return sub_1AC309C4C();
}

uint64_t sub_1AC22C9F8()
{
  sub_1AC309C2C();
  sub_1AC22B250(v1 & 0x1FF);
  type metadata accessor for CBPeerCallConfig();
  sub_1AC22D518();
  return (sub_1AC30A89C() ^ 1) & 1;
}

unint64_t sub_1AC22CAE8()
{
  v2 = qword_1EB54BF28;
  if (!qword_1EB54BF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54BF18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54BF28);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC22CB70(uint64_t a1, uint64_t a2)
{
  (*(*v2 + 176))();
  sub_1AC309C2C();
  v3 = sub_1AC309C3C();
  return sub_1AC22B934(a2, v3 & 1, v6 & 0x1FF);
}

unint64_t sub_1AC22CEC0()
{
  v2 = qword_1EB54BF30;
  if (!qword_1EB54BF30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54BF30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC22CF54()
{
  v2 = qword_1EB54BF38;
  if (!qword_1EB54BF38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54BF38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC22D048(unsigned __int16 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 65281) >> 16) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = *(a1 + 2);
    }

    else
    {
      v6 = v8 == 2 ? a1[1] : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 16)) + 254;
    }

    else
    {
LABEL_15:
      v3 = 255 - *(a1 + 1);
      if (v3 >= 0xFE)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AC22D1B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 65281) >> 16) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v7)
    {
      if (v7 == 1)
      {
        *(result + 2) = v4;
      }

      else if (v7 == 2)
      {
        *(result + 2) = v4;
      }

      else
      {
        *(result + 2) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        *(result + 2) = 0;
      }

      else if (v7 == 2)
      {
        *(result + 2) = 0;
      }

      else
      {
        *(result + 2) = 0;
      }
    }

    if (a2)
    {
      *(result + 1) = ~(a2 - 1);
    }
  }

  return result;
}

unint64_t sub_1AC22D518()
{
  v2 = qword_1EB54BF48;
  if (!qword_1EB54BF48)
  {
    type metadata accessor for CBPeerCallConfig();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54BF48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC22D598()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI17BatteryStatusView_listeners);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC22D600(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI17BatteryStatusView_listeners);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1AC22D768(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 8);

  *(a2 + 8) = v3;
  v4 = *(a1 + 16);
  MEMORY[0x1E69E5928](v4);
  *(a2 + 16) = v4;
  *(a2 + 24) = *(a1 + 24);
  v5 = *(a1 + 32);

  *(a2 + 32) = v5;
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 44) = *(a1 + 44);
  v6 = *(a1 + 48);
  MEMORY[0x1E69E5928](v6);
  *(a2 + 48) = v6;
  v7 = *(a1 + 56);
  MEMORY[0x1E69E5928](v7);
  *(a2 + 56) = v7;
  v8 = *(a1 + 64);
  MEMORY[0x1E69E5928](v8);
  *(a2 + 64) = v8;
  v9 = *(a1 + 72);
  MEMORY[0x1E69E5928](v9);
  *(a2 + 72) = v9;
  v12 = *(a1 + 80);
  v13 = *(a1 + 88);

  result = a2;
  *(a2 + 80) = v12;
  *(a2 + 88) = v13;
  return result;
}

uint64_t sub_1AC22D8C0()
{
  v2 = *(v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI17BatteryStatusView_hpDevice);
  MEMORY[0x1E69E5928]();
  return v2;
}

uint64_t sub_1AC22D908()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI17BatteryStatusView_currentBatteryLRValid);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1AC22D970(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI17BatteryStatusView_currentBatteryLRValid);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

char *sub_1AC22DAA0(uint64_t a1, void *a2, char a3)
{
  v22 = 0;
  v37 = a1;
  v36 = a2;
  v35 = a3 & 1;
  v38 = v3;
  v20 = OBJC_IVAR____TtC19HeadphoneSettingsUI17BatteryStatusView_listeners;
  sub_1AC309EAC();
  sub_1AC223158();
  *&v3[v20] = sub_1AC30A80C();
  sub_1AC30929C();
  if (v26)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD18);
    v4 = swift_dynamicCast();
    if ((v4 & 1) == 0)
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
    }
  }

  else
  {
    v4 = sub_1AC204664(v25);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
  }

  if (v30)
  {
    sub_1AC2051E4(&v27, __dst);
  }

  else
  {
    nullsub_1(v4);
    v33 = &unk_1F20F1EF0;
    v34 = &off_1F20F1E10;
    if (v30)
    {
      sub_1AC204664(&v27);
    }
  }

  v9 = v38;
  v8 = v33;
  v7 = v34;
  __swift_project_boxed_opaque_existential_1(__dst, v33);
  (v7[1])(v8);
  memcpy(&v9[OBJC_IVAR____TtC19HeadphoneSettingsUI17BatteryStatusView_featureContent], v39, 0x60uLL);
  v10 = v38;
  MEMORY[0x1E69E5928](a1);
  *&v10[OBJC_IVAR____TtC19HeadphoneSettingsUI17BatteryStatusView_hpDevice] = a1;
  v13 = v38;
  sub_1AC30915C();
  sub_1AC30985C();

  v11 = sub_1AC30976C();

  v12 = [v11 type];
  MEMORY[0x1E69E5920](v11);
  v24 = v12;
  v23 = 0;
  type metadata accessor for AABatteryType();
  sub_1AC22DF74();
  v13[OBJC_IVAR____TtC19HeadphoneSettingsUI17BatteryStatusView_currentBatteryLRValid] = (sub_1AC30A89C() ^ 1) & 1;
  v14 = type metadata accessor for BatteryStatusView();
  v15 = [swift_getObjCClassFromMetadata() hpsDeviceForHeadphoneDevice_];
  v22 = v15;
  v21.receiver = v38;
  v21.super_class = v14;
  v16 = objc_msgSendSuper2(&v21, sel_initWithFrame_device_darkMode_, v15, a3 & 1, 0.0, 0.0, 0.0, 0.0);
  MEMORY[0x1E69E5928](v16);
  v38 = v16;
  v5 = MEMORY[0x1E69E5928](a1);
  (*((*v16 & *MEMORY[0x1E69E7D40]) + 0xB8))(a1, v5);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v15);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  sub_1AC22E01C(a2);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v38);
  return v16;
}

uint64_t type metadata accessor for AABatteryType()
{
  v4 = qword_1EB54C028;
  if (!qword_1EB54C028)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54C028);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1AC22DF74()
{
  v2 = qword_1EB54BF70;
  if (!qword_1EB54BF70)
  {
    type metadata accessor for AABatteryType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54BF70);
    return WitnessTable;
  }

  return v2;
}

void *sub_1AC22E01C(void *a1)
{

  MEMORY[0x1E69E5920](a1[2]);

  MEMORY[0x1E69E5920](a1[6]);
  MEMORY[0x1E69E5920](a1[7]);
  MEMORY[0x1E69E5920](a1[8]);
  MEMORY[0x1E69E5920](a1[9]);

  return a1;
}

uint64_t sub_1AC22E0C4()
{
  v8 = 0;
  v2[1] = 0;
  v6 = sub_1AC309B0C();
  v4 = *(v6 - 8);
  v5 = v6 - 8;
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v7 = v2 - v3;
  v8 = v0;
  sub_1AC309B2C();
  (*(v4 + 104))(v7, *MEMORY[0x1E69A2B20], v6);
  return sub_1AC309B3C();
}

void *sub_1AC22E21C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v41 = 0;
  memset(__b, 0, sizeof(__b));
  v43 = a1;
  v42 = v2;
  (*((*v2 & *MEMORY[0x1E69E7D40]) + 0xB0))();
  v33 = *(v32 + OBJC_IVAR____TtC19HeadphoneSettingsUI17BatteryStatusView_hpDevice);
  MEMORY[0x1E69E5928](v33);
  sub_1AC30915C();
  MEMORY[0x1E69E5920](v33);
  v41 = sub_1AC30985C();

  memset(v44, 0, sizeof(v44));
  memcpy(__dst, v44, sizeof(__dst));
  memcpy(v45, __dst, sizeof(v45));
  memcpy(__b, v45, sizeof(__b));
  v34 = sub_1AC3096EC();
  [v34 level];
  MEMORY[0x1E69E5920](v34);
  sub_1AC30ABFC();
  v35 = v3 * 100.0;
  if ((COERCE_UNSIGNED_INT(v3 * 100.0) >> 23) == 255)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  if (v35 <= -1.0)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  if (v35 >= 256.0)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  LOBYTE(__b[6]) = v35;
  v28 = sub_1AC3096FC();
  [v28 level];
  MEMORY[0x1E69E5920](v28);
  sub_1AC30ABFC();
  v29 = v4 * 100.0;
  if ((COERCE_UNSIGNED_INT(v4 * 100.0) >> 23) == 255)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  if (v29 <= -1.0)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  if (v29 >= 256.0)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  LOBYTE(__b[4]) = v29;
  v26 = sub_1AC30974C();
  [v26 level];
  MEMORY[0x1E69E5920](v26);
  sub_1AC30ABFC();
  v27 = v5 * 100.0;
  if ((COERCE_UNSIGNED_INT(v5 * 100.0) >> 23) == 255)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  if (v27 <= -1.0)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  if (v27 >= 256.0)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  LOBYTE(__b[2]) = v27;
  v24 = sub_1AC30976C();
  v25 = [v24 type];
  MEMORY[0x1E69E5920](v24);
  v38 = v25;
  v37 = 0;
  type metadata accessor for AABatteryType();
  sub_1AC22DF74();
  if ((sub_1AC30A89C() & 1) == 0)
  {
    v22 = sub_1AC30976C();
    [v22 level];
    MEMORY[0x1E69E5920](v22);
    sub_1AC30ABFC();
    v23 = v6 * 100.0;
    if ((COERCE_UNSIGNED_INT(v6 * 100.0) >> 23) == 255)
    {
      sub_1AC30B05C();
      __break(1u);
    }

    if (v23 <= -1.0)
    {
      sub_1AC30B05C();
      __break(1u);
    }

    if (v23 >= 256.0)
    {
      sub_1AC30B05C();
      __break(1u);
    }

    LOBYTE(__b[4]) = v23;
    v20 = sub_1AC30976C();
    [v20 level];
    MEMORY[0x1E69E5920](v20);
    sub_1AC30ABFC();
    v21 = v7 * 100.0;
    if ((COERCE_UNSIGNED_INT(v7 * 100.0) >> 23) == 255)
    {
      sub_1AC30B05C();
      __break(1u);
    }

    if (v21 <= -1.0)
    {
      sub_1AC30B05C();
      __break(1u);
    }

    if (v21 >= 256.0)
    {
      sub_1AC30B05C();
      __break(1u);
    }

    LOBYTE(__b[2]) = v21;
  }

  v18 = sub_1AC30970C();
  [v18 level];
  MEMORY[0x1E69E5920](v18);
  sub_1AC30ABFC();
  v19 = v8 * 100.0;
  if ((COERCE_UNSIGNED_INT(v8 * 100.0) >> 23) == 255)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  if (v19 <= -1.0)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  if (v19 >= 256.0)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  LOBYTE(__b[0]) = v19;
  v17 = sub_1AC3096EC();
  [v17 state];
  MEMORY[0x1E69E5920](v17);
  v36[47] = sub_1AC30AD3C();
  v36[46] = 1;
  type metadata accessor for CBBatteryState();
  sub_1AC22F040();
  if (sub_1AC30B1BC())
  {
    v16 = -1;
  }

  else
  {
    v16 = 0;
  }

  __b[7] = v16;
  v15 = sub_1AC3096FC();
  [v15 state];
  MEMORY[0x1E69E5920](v15);
  v36[45] = sub_1AC30AD3C();
  v36[44] = 1;
  if (sub_1AC30B1BC())
  {
    v14 = -1;
  }

  else
  {
    v14 = 0;
  }

  __b[5] = v14;
  v13 = sub_1AC30974C();
  [v13 state];
  MEMORY[0x1E69E5920](v13);
  v36[43] = sub_1AC30AD3C();
  v36[42] = 1;
  if (sub_1AC30B1BC())
  {
    v12 = -1;
  }

  else
  {
    v12 = 0;
  }

  __b[3] = v12;
  v11 = sub_1AC30976C();
  [v11 state];
  MEMORY[0x1E69E5920](v11);
  v36[41] = sub_1AC30AD3C();
  v36[40] = 1;
  if (sub_1AC30B1BC())
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  __b[1] = v10;
  memcpy(v36, __b, 0x28uLL);

  return memcpy(a2, v36, 0x28uLL);
}

uint64_t type metadata accessor for CBBatteryState()
{
  v4 = qword_1EB54C020;
  if (!qword_1EB54C020)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54C020);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1AC22F040()
{
  v2 = qword_1EB54BF78;
  if (!qword_1EB54BF78)
  {
    type metadata accessor for CBBatteryState();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54BF78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC22F0C0()
{
  v247 = 0;
  v281 = 0;
  v280 = 0;
  v279 = 0;
  v225 = 0;
  v274 = 0;
  v269 = 0;
  v264 = 0;
  v259 = 0;
  v226 = sub_1AC309B0C();
  v227 = *(v226 - 8);
  v228 = v227;
  MEMORY[0x1EEE9AC00](0);
  v229 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = sub_1AC309E6C();
  v231 = *(v230 - 8);
  v232 = v231;
  v237 = *(v231 + 64);
  MEMORY[0x1EEE9AC00](v230 - 8);
  v239 = (v237 + 15) & 0xFFFFFFFFFFFFFFF0;
  v233 = &v27 - v239;
  MEMORY[0x1EEE9AC00](&v27 - v239);
  v234 = &v27 - v239;
  MEMORY[0x1EEE9AC00](&v27 - v239);
  v235 = &v27 - v239;
  MEMORY[0x1EEE9AC00](&v27 - v239);
  v236 = &v27 - v239;
  MEMORY[0x1EEE9AC00](&v27 - v239);
  v238 = &v27 - v239;
  MEMORY[0x1EEE9AC00](&v27 - v239);
  v242 = &v27 - v239;
  v240 = &v27 - v239;
  v281 = v0;
  v241 = *(v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI17BatteryStatusView_hpDevice);
  v2 = v241;
  v243 = sub_1AC30915C();

  v244 = sub_1AC30985C();
  v280 = v244;

  sub_1AC309E3C();
  v250 = sub_1AC309E4C();
  v245 = v250;
  v249 = sub_1AC30AD0C();
  v246 = v249;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
  v251 = sub_1AC30B18C();
  if (os_log_type_enabled(v250, v249))
  {
    v3 = v225;
    v215 = sub_1AC30AE6C();
    v211 = v215;
    v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
    v213 = 0;
    v216 = sub_1AC213EE4(0);
    v214 = v216;
    v217 = sub_1AC213EE4(v213);
    v255[0] = v215;
    v254 = v216;
    v253 = v217;
    v218 = 0;
    v219 = v255;
    sub_1AC213F38(0, v255);
    sub_1AC213F38(v218, v219);
    v252 = v251;
    v220 = &v27;
    MEMORY[0x1EEE9AC00](&v27);
    v221 = &v27 - 6;
    *(&v27 - 4) = v4;
    *(&v27 - 3) = &v254;
    *(&v27 - 2) = &v253;
    v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
    sub_1AC218014();
    sub_1AC30AAAC();
    v223 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1AC1C3000, v245, v246, "Battery view decorateBatteryIcon called", v211, 2u);
      v209 = 0;
      sub_1AC213F98(v214);
      sub_1AC213F98(v217);
      sub_1AC30AE4C();

      v210 = v223;
    }
  }

  else
  {

    v210 = v225;
  }

  v205 = v210;

  v206 = *(v232 + 8);
  v207 = (v232 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v206(v240, v230);
  v5 = v224;
  v208 = [v224 untethered];

  if (v208)
  {
    v201 = sub_1AC3096FC();
    sub_1AC30AE3C();

    v204 = sub_1AC309AFC();
    v202 = *(v228 + 8);
    v203 = (v228 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v202(v229, v226);
    if (v204)
    {
      v192 = v205;
    }

    else
    {
      v6 = v224;
      v196 = [v224 deviceBatteryLevelLeftView];

      v198 = [v196 batteryIconView];
      v197 = v198;

      v199 = sub_1AC309B2C();
      v200 = swift_dynamicCastClass();
      if (v200)
      {
        v195 = v200;
      }

      else
      {

        v195 = 0;
      }

      v194 = v195;
      if (v195)
      {
        v193 = v194;
        v186 = v194;
        v259 = v194;
        sub_1AC309E3C();
        v190 = sub_1AC309E4C();
        v187 = v190;
        v189 = sub_1AC30AD0C();
        v188 = v189;
        v191 = sub_1AC30B18C();
        if (os_log_type_enabled(v190, v189))
        {
          v8 = v205;
          v177 = sub_1AC30AE6C();
          v173 = v177;
          v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
          v175 = 0;
          v178 = sub_1AC213EE4(0);
          v176 = v178;
          v179 = sub_1AC213EE4(v175);
          v258 = v177;
          v257 = v178;
          v256 = v179;
          v180 = 0;
          v181 = &v258;
          sub_1AC213F38(0, &v258);
          sub_1AC213F38(v180, v181);
          v255[1] = v191;
          v182 = &v27;
          MEMORY[0x1EEE9AC00](&v27);
          v183 = &v27 - 6;
          *(&v27 - 4) = v9;
          *(&v27 - 3) = &v257;
          *(&v27 - 2) = &v256;
          v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
          sub_1AC218014();
          sub_1AC30AAAC();
          v185 = v8;
          if (v8)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_1AC1C3000, v187, v188, "Battery view decorateBatteryIcon left", v173, 2u);
            v171 = 0;
            sub_1AC213F98(v176);
            sub_1AC213F98(v179);
            sub_1AC30AE4C();

            v172 = v185;
          }
        }

        else
        {

          v172 = v205;
        }

        v170 = v172;

        v206(v238, v230);
        v169 = sub_1AC3096FC();
        sub_1AC30AE3C();

        sub_1AC309B1C();
        v202(v229, v226);

        v192 = v170;
      }

      else
      {
        v192 = v205;
      }
    }

    v166 = v192;
    v167 = sub_1AC30974C();
    sub_1AC30AE3C();

    v168 = sub_1AC309AFC();
    v202(v229, v226);
    if (v168)
    {
      v157 = v166;
    }

    else
    {
      v10 = v224;
      v161 = [v224 deviceBatteryLevelRightView];

      v163 = [v161 batteryIconView];
      v162 = v163;

      v164 = sub_1AC309B2C();
      v165 = swift_dynamicCastClass();
      if (v165)
      {
        v160 = v165;
      }

      else
      {

        v160 = 0;
      }

      v159 = v160;
      if (v160)
      {
        v158 = v159;
        v151 = v159;
        v264 = v159;
        sub_1AC309E3C();
        v155 = sub_1AC309E4C();
        v152 = v155;
        v154 = sub_1AC30AD0C();
        v153 = v154;
        v156 = sub_1AC30B18C();
        if (os_log_type_enabled(v155, v154))
        {
          v12 = v166;
          v142 = sub_1AC30AE6C();
          v138 = v142;
          v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
          v140 = 0;
          v143 = sub_1AC213EE4(0);
          v141 = v143;
          v144 = sub_1AC213EE4(v140);
          v263 = v142;
          v262 = v143;
          v261 = v144;
          v145 = 0;
          v146 = &v263;
          sub_1AC213F38(0, &v263);
          sub_1AC213F38(v145, v146);
          v260 = v156;
          v147 = &v27;
          MEMORY[0x1EEE9AC00](&v27);
          v148 = &v27 - 6;
          *(&v27 - 4) = v13;
          *(&v27 - 3) = &v262;
          *(&v27 - 2) = &v261;
          v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
          sub_1AC218014();
          sub_1AC30AAAC();
          v150 = v12;
          if (v12)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_1AC1C3000, v152, v153, "Battery view decorateBatteryIcon right", v138, 2u);
            v136 = 0;
            sub_1AC213F98(v141);
            sub_1AC213F98(v144);
            sub_1AC30AE4C();

            v137 = v150;
          }
        }

        else
        {

          v137 = v166;
        }

        v135 = v137;

        v206(v236, v230);
        v134 = sub_1AC30974C();
        sub_1AC30AE3C();

        sub_1AC309B1C();
        v202(v229, v226);

        v157 = v135;
      }

      else
      {
        v157 = v166;
      }
    }

    v131 = v157;
    v132 = sub_1AC3096EC();
    sub_1AC30AE3C();

    v133 = sub_1AC309AFC();
    v202(v229, v226);
    if (v133)
    {
      v122 = v131;
    }

    else
    {
      v14 = v224;
      v126 = [v224 deviceBatteryLevelCaseView];

      v128 = [v126 batteryIconView];
      v127 = v128;

      v129 = sub_1AC309B2C();
      v130 = swift_dynamicCastClass();
      if (v130)
      {
        v125 = v130;
      }

      else
      {

        v125 = 0;
      }

      v124 = v125;
      if (v125)
      {
        v123 = v124;
        v116 = v124;
        v269 = v124;
        sub_1AC309E3C();
        v120 = sub_1AC309E4C();
        v117 = v120;
        v119 = sub_1AC30AD0C();
        v118 = v119;
        v121 = sub_1AC30B18C();
        if (os_log_type_enabled(v120, v119))
        {
          v16 = v131;
          v107 = sub_1AC30AE6C();
          v103 = v107;
          v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
          v105 = 0;
          v108 = sub_1AC213EE4(0);
          v106 = v108;
          v109 = sub_1AC213EE4(v105);
          v268 = v107;
          v267 = v108;
          v266 = v109;
          v110 = 0;
          v111 = &v268;
          sub_1AC213F38(0, &v268);
          sub_1AC213F38(v110, v111);
          v265 = v121;
          v112 = &v27;
          MEMORY[0x1EEE9AC00](&v27);
          v113 = &v27 - 6;
          *(&v27 - 4) = v17;
          *(&v27 - 3) = &v267;
          *(&v27 - 2) = &v266;
          v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
          sub_1AC218014();
          sub_1AC30AAAC();
          v115 = v16;
          if (v16)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_1AC1C3000, v117, v118, "Battery view decorateBatteryIcon case", v103, 2u);
            v101 = 0;
            sub_1AC213F98(v106);
            sub_1AC213F98(v109);
            sub_1AC30AE4C();

            v102 = v115;
          }
        }

        else
        {

          v102 = v131;
        }

        v100 = v102;

        v206(v235, v230);
        v99 = sub_1AC3096EC();
        sub_1AC30AE3C();

        sub_1AC309B1C();
        v202(v229, v226);

        v122 = v100;
      }

      else
      {
        v122 = v131;
      }
    }

    v96 = v122;
    v97 = sub_1AC30976C();
    sub_1AC30AE3C();

    v98 = sub_1AC309AFC();
    v202(v229, v226);
    if (v98)
    {
      v87 = v96;
    }

    else
    {
      v18 = v224;
      v91 = [v224 deviceBatteryLevelSingleView];

      v93 = [v91 batteryIconView];
      v92 = v93;

      v94 = sub_1AC309B2C();
      v95 = swift_dynamicCastClass();
      if (v95)
      {
        v90 = v95;
      }

      else
      {

        v90 = 0;
      }

      v89 = v90;
      if (v90)
      {
        v88 = v89;
        v81 = v89;
        v274 = v89;
        sub_1AC309E3C();
        v85 = sub_1AC309E4C();
        v82 = v85;
        v84 = sub_1AC30AD0C();
        v83 = v84;
        v86 = sub_1AC30B18C();
        if (os_log_type_enabled(v85, v84))
        {
          v20 = v96;
          v72 = sub_1AC30AE6C();
          v68 = v72;
          v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
          v70 = 0;
          v73 = sub_1AC213EE4(0);
          v71 = v73;
          v74 = sub_1AC213EE4(v70);
          v273 = v72;
          v272 = v73;
          v271 = v74;
          v75 = 0;
          v76 = &v273;
          sub_1AC213F38(0, &v273);
          sub_1AC213F38(v75, v76);
          v270 = v86;
          v77 = &v27;
          MEMORY[0x1EEE9AC00](&v27);
          v78 = &v27 - 6;
          *(&v27 - 4) = v21;
          *(&v27 - 3) = &v272;
          *(&v27 - 2) = &v271;
          v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
          sub_1AC218014();
          sub_1AC30AAAC();
          v80 = v20;
          if (v20)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_1AC1C3000, v82, v83, "Battery view decorateBatteryIcon combined", v68, 2u);
            v66 = 0;
            sub_1AC213F98(v71);
            sub_1AC213F98(v74);
            sub_1AC30AE4C();

            v67 = v80;
          }
        }

        else
        {

          v67 = v96;
        }

        v65 = v67;

        v206(v234, v230);
        v64 = sub_1AC30976C();
        sub_1AC30AE3C();

        sub_1AC309B1C();
        v202(v229, v226);

        v87 = v65;
      }

      else
      {
        v87 = v96;
      }
    }

    v63 = v87;
  }

  else
  {
    v59 = sub_1AC30970C();
    sub_1AC30AE3C();

    v62 = sub_1AC309AFC();
    v60 = *(v228 + 8);
    v61 = (v228 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v60(v229, v226);
    if (v62)
    {
      v50 = v205;
    }

    else
    {
      v22 = v224;
      v54 = [v224 deviceBatteryLevelSingleView];

      v56 = [v54 batteryIconView];
      v55 = v56;

      v57 = sub_1AC309B2C();
      v58 = swift_dynamicCastClass();
      if (v58)
      {
        v53 = v58;
      }

      else
      {

        v53 = 0;
      }

      v52 = v53;
      if (v53)
      {
        v51 = v52;
        v44 = v52;
        v279 = v52;
        sub_1AC309E3C();
        v48 = sub_1AC309E4C();
        v45 = v48;
        v47 = sub_1AC30AD0C();
        v46 = v47;
        v49 = sub_1AC30B18C();
        if (os_log_type_enabled(v48, v47))
        {
          v24 = v205;
          v35 = sub_1AC30AE6C();
          v31 = v35;
          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
          v33 = 0;
          v36 = sub_1AC213EE4(0);
          v34 = v36;
          v37 = sub_1AC213EE4(v33);
          v278 = v35;
          v277 = v36;
          v276 = v37;
          v38 = 0;
          v39 = &v278;
          sub_1AC213F38(0, &v278);
          sub_1AC213F38(v38, v39);
          v275 = v49;
          v40 = &v27;
          MEMORY[0x1EEE9AC00](&v27);
          v41 = &v27 - 6;
          *(&v27 - 4) = v25;
          *(&v27 - 3) = &v277;
          *(&v27 - 2) = &v276;
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
          sub_1AC218014();
          sub_1AC30AAAC();
          v43 = v24;
          if (v24)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_1AC1C3000, v45, v46, "Battery view decorateBatteryIcon main", v31, 2u);
            v29 = 0;
            sub_1AC213F98(v34);
            sub_1AC213F98(v37);
            sub_1AC30AE4C();

            v30 = v43;
          }
        }

        else
        {

          v30 = v205;
        }

        v28 = v30;

        v206(v233, v230);
        v27 = sub_1AC30970C();
        sub_1AC30AE3C();

        sub_1AC309B1C();
        v60(v229, v226);

        v50 = v28;
      }

      else
      {
        v50 = v205;
      }
    }

    v63 = v50;
  }
}

uint64_t sub_1AC230A18(uint64_t a1)
{
  v141 = a1;
  v97 = sub_1AC2354BC;
  v98 = sub_1AC23567C;
  v99 = sub_1AC235798;
  v160 = 0;
  v159 = 0;
  v158 = 0;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BF80);
  v101 = *(v100 - 8);
  v102 = v100 - 8;
  v103 = (*(v101 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v100);
  v104 = v18 - v103;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BF88);
  v106 = *(v105 - 8);
  v107 = v105 - 8;
  v108 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v105);
  v109 = v18 - v108;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BF90);
  v111 = *(v110 - 8);
  v112 = v110 - 8;
  v113 = (*(v111 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v110);
  v114 = v18 - v113;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BF98);
  v116 = *(v115 - 8);
  v117 = v115 - 8;
  v118 = (*(v116 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v115);
  v119 = v18 - v118;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BDC0);
  v120 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v121 = v18 - v120;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BFA0);
  v123 = *(v122 - 8);
  v124 = v122 - 8;
  v125 = (*(v123 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v122);
  v126 = v18 - v125;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BFA8);
  v128 = *(v127 - 8);
  v129 = v127 - 8;
  v130 = (*(v128 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v127);
  v131 = v18 - v130;
  v132 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18 - v130);
  v133 = v18 - v132;
  v134 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18 - v132);
  v135 = v18 - v134;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BFB0);
  v137 = *(v136 - 8);
  v138 = v136 - 8;
  v139 = (*(v137 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v141);
  v140 = v18 - v139;
  v160 = v5;
  v159 = v1;
  MEMORY[0x1E69E5928](v5);
  result = v141;
  if (v141)
  {
    v95 = v141;
    v91 = v141;
    v158 = v141;
    v93 = sub_1AC22D598();
    v92 = sub_1AC309EAC();
    sub_1AC223158();
    v94 = sub_1AC30AC0C();

    if (v94)
    {
      return MEMORY[0x1E69E5920](v91);
    }

    else
    {
      MEMORY[0x1E69E5928](v96);
      v90 = [v96 untethered];
      MEMORY[0x1E69E5920](v96);
      if (v90)
      {
        v38 = sub_1AC30915C();
        v39 = sub_1AC30985C();

        sub_1AC30977C();

        v40 = sub_1AC309F2C();
        v60 = *(v123 + 8);
        v59 = v123 + 8;
        v60(v126, v122);
        v41 = &v152;
        v152 = v40;
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BFB8);
        v63 = sub_1AC2352C8();
        v64 = sub_1AC235350();
        sub_1AC309FAC();
        sub_1AC20BCE0();
        v66 = sub_1AC235434();
        v42 = sub_1AC309F4C();
        (*(v128 + 8))(v135, v127);
        v44 = &v151;
        v151 = v42;
        v81 = 0;
        v73 = sub_1AC223480();
        v7 = sub_1AC30AD7C();
        v43 = &v150;
        v150 = v7;
        v69 = sub_1AC30AD4C();
        v8 = *(v69 - 8);
        v71 = *(v8 + 56);
        v70 = v8 + 56;
        v68 = 1;
        v71(v121, 1);
        v74 = sub_1AC22356C();
        sub_1AC309F7C();
        sub_1AC2235EC(v121);
        MEMORY[0x1E69E5920](v150);
        sub_1AC20BCE0();
        MEMORY[0x1E69E5928](v91);
        MEMORY[0x1E69E5928](v96);
        v78 = 32;
        v79 = 7;
        v9 = swift_allocObject();
        v10 = v96;
        v45 = v9;
        *(v9 + 16) = v91;
        *(v9 + 24) = v10;
        sub_1AC235560();
        v48 = sub_1AC309FBC();

        (*(v137 + 8))(v140, v136);
        v46 = &v149;
        v47 = sub_1AC22D684();
        sub_1AC309E9C();
        v87 = 0;
        v47();

        v49 = sub_1AC30915C();
        v50 = sub_1AC30985C();

        sub_1AC30971C();

        v51 = sub_1AC309F2C();
        v60(v126, v122);
        v52 = &v148;
        v148 = v51;
        sub_1AC309FAC();
        sub_1AC20BCE0();
        v53 = sub_1AC30915C();
        v54 = sub_1AC30985C();

        sub_1AC30972C();

        v55 = sub_1AC309F2C();
        v60(v126, v122);
        v56 = &v147;
        v147 = v55;
        sub_1AC309FAC();
        sub_1AC20BCE0();
        v57 = sub_1AC30915C();
        v58 = sub_1AC30985C();

        sub_1AC30975C();

        v61 = sub_1AC309F2C();
        v60(v126, v122);
        v65 = &v146;
        v146 = v61;
        sub_1AC309FAC();
        sub_1AC20BCE0();
        sub_1AC309E8C();
        sub_1AC235688();
        v67 = sub_1AC309F4C();
        (*(v106 + 8))(v109, v105);
        v76 = &v145;
        v145 = v67;
        v11 = sub_1AC30AD7C();
        v75 = &v144;
        v144 = v11;
        (v71)(v121, v68, v68, v69);
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BFF8);
        sub_1AC235710();
        sub_1AC309F7C();
        sub_1AC2235EC(v121);
        MEMORY[0x1E69E5920](v144);
        sub_1AC20BCE0();
        v80 = swift_allocObject();
        v77 = v80 + 16;
        MEMORY[0x1E69E5928](v96);
        swift_unknownObjectWeakInit();
        MEMORY[0x1E69E5920](v96);

        MEMORY[0x1E69E5928](v91);
        v12 = swift_allocObject();
        v13 = v91;
        v83 = v12;
        *(v12 + 16) = v80;
        *(v12 + 24) = v13;

        v82 = type metadata accessor for BTDeviceBatteryStatus();
        sub_1AC2357A4();
        sub_1AC309F5C();

        (*(v111 + 8))(v114, v110);
        KeyPath = swift_getKeyPath();
        v84 = &v143;
        v143 = v96;
        sub_1AC23582C();
        v89 = sub_1AC309FCC();

        (*(v116 + 8))(v119, v115);
        v86 = &v142;
        v88 = sub_1AC22D684();
        sub_1AC309E9C();
        v88();
      }

      else
      {
        v18[0] = sub_1AC30915C();
        v18[1] = sub_1AC30985C();

        sub_1AC30973C();

        v19 = sub_1AC309F2C();
        (*(v123 + 8))(v126, v122);
        v20 = &v157;
        v157 = v19;
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BFB8);
        v24 = sub_1AC2352C8();
        sub_1AC235350();
        sub_1AC309FAC();
        sub_1AC20BCE0();
        sub_1AC235434();
        v21 = sub_1AC309F4C();
        (*(v128 + 8))(v135, v127);
        v26 = &v156;
        v156 = v21;
        v30 = 0;
        v23 = sub_1AC223480();
        v14 = sub_1AC30AD7C();
        v25 = &v155;
        v155 = v14;
        v15 = sub_1AC30AD4C();
        (*(*(v15 - 8) + 56))(v121, 1);
        sub_1AC22356C();
        sub_1AC309F7C();
        sub_1AC2235EC(v121);
        MEMORY[0x1E69E5920](v155);
        sub_1AC20BCE0();
        v28 = 7;
        v29 = swift_allocObject();
        v27 = v29 + 16;
        MEMORY[0x1E69E5928](v96);
        swift_unknownObjectWeakInit();
        MEMORY[0x1E69E5920](v96);

        MEMORY[0x1E69E5928](v91);
        v16 = swift_allocObject();
        v17 = v91;
        v32 = v16;
        *(v16 + 16) = v29;
        *(v16 + 24) = v17;

        v31 = type metadata accessor for BTDeviceBatteryStatus();
        sub_1AC235560();
        sub_1AC309F5C();

        (*(v137 + 8))(v140, v136);
        v34 = swift_getKeyPath();
        v33 = &v154;
        v154 = v96;
        sub_1AC2355F4();
        v37 = sub_1AC309FCC();

        (*(v101 + 8))(v104, v100);
        v35 = &v153;
        v36 = sub_1AC22D684();
        sub_1AC309E9C();
        v36();
      }

      return MEMORY[0x1E69E5920](v91);
    }
  }

  return result;
}

uint64_t sub_1AC232090(uint64_t a1, uint64_t a2, void *a3)
{
  v49 = a3;
  v36 = a2;
  v38 = a1;
  v47 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v61 = 0;
  v37 = 0;
  v39 = sub_1AC309E6C();
  v40 = *(v39 - 8);
  v41 = v40;
  v4 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *v4;
  v65 = a2;
  v64 = v6;
  v43 = sub_1AC30915C();
  v44 = sub_1AC30985C();

  v45 = sub_1AC30976C();

  v46 = [v45 type];

  v63 = v46;
  v62 = v47;
  v48 = type metadata accessor for AABatteryType();
  sub_1AC22DF74();
  v7 = sub_1AC30A89C();
  v51 = (v7 ^ 1) & 1;
  v50 = v7 ^ 1;
  v61 = (v7 ^ 1) & 1;
  if (v51 == (sub_1AC22D908() & 1))
  {
    return v37;
  }

  sub_1AC22D970(v50 & 1);
  sub_1AC309E3C();
  v34 = sub_1AC309E4C();
  v31 = v34;
  v33 = sub_1AC30AD0C();
  v32 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
  v35 = sub_1AC30B18C();
  if (os_log_type_enabled(v34, v33))
  {
    v8 = v37;
    v22 = sub_1AC30AE6C();
    v18 = v22;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
    v20 = 0;
    v23 = sub_1AC213EE4(0);
    v21 = v23;
    v24 = sub_1AC213EE4(v20);
    v55 = v22;
    v54 = v23;
    v53 = v24;
    v25 = 0;
    v26 = &v55;
    sub_1AC213F38(0, &v55);
    sub_1AC213F38(v25, v26);
    v52 = v35;
    v27 = &v13;
    MEMORY[0x1EEE9AC00](&v13);
    v28 = &v13 - 6;
    *(&v13 - 4) = v9;
    *(&v13 - 3) = &v54;
    *(&v13 - 2) = &v53;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
    sub_1AC218014();
    sub_1AC30AAAC();
    v30 = v8;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1AC1C3000, v31, v32, "Battery view combinedLR tearDown rebuild UI", v18, 2u);
      v16 = 0;
      sub_1AC213F98(v21);
      sub_1AC213F98(v24);
      sub_1AC30AE4C();

      v17 = v30;
    }
  }

  else
  {

    v17 = v37;
  }

  v10 = v49;
  v14 = v17;

  (*(v41 + 8))(v42, v39);
  v11 = v10;
  (*((*v10 & *MEMORY[0x1E69E7D40]) + 0xA8))(&v67, v36);
  v60 = v69;
  v59 = v68;
  v58 = v67;
  v57 = v69;
  v56[1] = v68;
  v56[0] = v67;
  [v49 setStatus_];

  [v49 setupViews];
  return v14;
}

uint64_t sub_1AC2326F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = v79;
  v47 = a3;
  v50 = a2;
  v49 = a1;
  v45 = a4;
  v48 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v63 = 0;
  v46 = 0;
  v51 = sub_1AC309E6C();
  v52 = *(v51 - 8);
  v53 = v52;
  v4 = MEMORY[0x1EEE9AC00](v49);
  v54 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v4[1];
  v7 = v4[2];
  v76 = *v4;
  v77 = v6;
  v78 = v7;
  v55 = v8 + 16;
  v75 = v8 + 16;
  v74 = v9;
  v56 = &v73;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v57 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v43 = v57;
    v36 = v57;
    v63 = v57;
    sub_1AC309E3C();
    v40 = sub_1AC309E4C();
    v37 = v40;
    v39 = sub_1AC30AD2C();
    v38 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
    v41 = sub_1AC30B18C();
    if (os_log_type_enabled(v40, v39))
    {
      v13 = v46;
      v27 = sub_1AC30AE6C();
      v23 = v27;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
      v25 = 0;
      v28 = sub_1AC213EE4(0);
      v26 = v28;
      v29 = sub_1AC213EE4(v25);
      v62 = v27;
      v61 = v28;
      v60 = v29;
      v30 = 0;
      v31 = &v62;
      sub_1AC213F38(0, &v62);
      sub_1AC213F38(v30, v31);
      v59 = v41;
      v32 = v21;
      MEMORY[0x1EEE9AC00](v21);
      v33 = &v21[-6];
      v21[-4] = v14;
      v21[-3] = &v61;
      v21[-2] = &v60;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
      sub_1AC218014();
      sub_1AC30AAAC();
      v35 = v13;
      if (v13)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1AC1C3000, v37, v38, "Battery view levelPublisher triggered", v23, 2u);
        v21[1] = 0;
        sub_1AC213F98(v26);
        sub_1AC213F98(v29);
        sub_1AC30AE4C();

        v22 = v35;
      }
    }

    else
    {

      v22 = v46;
    }

    v15 = v36;
    v21[0] = v22;

    (*(v53 + 8))(v54, v51);
    (*((*v15 & *MEMORY[0x1E69E7D40]) + 0xA8))(v79, v47);
    v16 = v45;
    v17 = v36;
    v18 = *v44;
    v19 = v44[1];
    *(v45 + 32) = v79[4];
    v16[1] = v19;
    *v16 = v18;

    return v21[0];
  }

  else
  {
    v10 = v46;
    v11 = v45;
    v69 = 0;
    v68 = 0u;
    v67 = 0u;
    v66 = 0;
    v65 = 0u;
    v64 = 0u;
    v72 = 0;
    v71 = 0u;
    v70 = 0u;
    *(v45 + 32) = 0;
    v11[1] = 0u;
    *v11 = 0u;
    return v10;
  }
}

uint64_t sub_1AC232BD8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v6 = v3;
  [v3 status];
  memcpy(__dst, v5, sizeof(__dst));
  memcpy(a2, __dst, 0x28uLL);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1AC232C6C(const void *a1, void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  v6 = v4;
  memcpy(v5, __dst, sizeof(v5));
  [v4 setStatus_];
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1AC232D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = v75;
  v45 = a3;
  v48 = a2;
  v47 = a1;
  v43 = a4;
  v46 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v61 = 0;
  v44 = 0;
  v49 = sub_1AC309E6C();
  v50 = *(v49 - 8);
  v51 = v50;
  v4 = MEMORY[0x1EEE9AC00](v47);
  v52 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *v4;
  v53 = v6 + 16;
  v73 = v6 + 16;
  v72 = v7;
  v54 = &v71;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v55 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v41 = v55;
    v34 = v55;
    v61 = v55;
    sub_1AC309E3C();
    v38 = sub_1AC309E4C();
    v35 = v38;
    v37 = sub_1AC30AD2C();
    v36 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
    v39 = sub_1AC30B18C();
    if (os_log_type_enabled(v38, v37))
    {
      v11 = v44;
      v25 = sub_1AC30AE6C();
      v21 = v25;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
      v23 = 0;
      v26 = sub_1AC213EE4(0);
      v24 = v26;
      v27 = sub_1AC213EE4(v23);
      v60 = v25;
      v59 = v26;
      v58 = v27;
      v28 = 0;
      v29 = &v60;
      sub_1AC213F38(0, &v60);
      sub_1AC213F38(v28, v29);
      v57 = v39;
      v30 = v19;
      MEMORY[0x1EEE9AC00](v19);
      v31 = &v19[-6];
      v19[-4] = v12;
      v19[-3] = &v59;
      v19[-2] = &v58;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
      sub_1AC218014();
      sub_1AC30AAAC();
      v33 = v11;
      if (v11)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1AC1C3000, v35, v36, "Battery view levelPublisher triggered", v21, 2u);
        v19[1] = 0;
        sub_1AC213F98(v24);
        sub_1AC213F98(v27);
        sub_1AC30AE4C();

        v20 = v33;
      }
    }

    else
    {

      v20 = v44;
    }

    v13 = v34;
    v19[0] = v20;

    (*(v51 + 8))(v52, v49);
    (*((*v13 & *MEMORY[0x1E69E7D40]) + 0xA8))(v75, v45);
    v14 = v43;
    v15 = v34;
    v16 = *v42;
    v17 = v42[1];
    *(v43 + 32) = v75[4];
    v14[1] = v17;
    *v14 = v16;

    return v19[0];
  }

  else
  {
    v8 = v44;
    v9 = v43;
    v67 = 0;
    v66 = 0u;
    v65 = 0u;
    v64 = 0;
    v63 = 0u;
    v62 = 0u;
    v70 = 0;
    v69 = 0u;
    v68 = 0u;
    *(v43 + 32) = 0;
    v9[1] = 0u;
    *v9 = 0u;
    return v8;
  }
}

uint64_t sub_1AC233258()
{
  v4 = v0;
  MEMORY[0x1E69E5928](v0);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for BatteryStatusView();
  objc_msgSendSuper2(&v3, sel_setupViews);
  v1 = MEMORY[0x1E69E5920](v0);
  return (*((*v0 & *MEMORY[0x1E69E7D40]) + 0xB0))(v1);
}

id sub_1AC233350(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

void sub_1AC2333A4()
{
  v0 = OBJC_IVAR____TtC19HeadphoneSettingsUI17BatteryStatusView_listeners;
  sub_1AC309EAC();
  sub_1AC223158();
  *v0 = sub_1AC30A80C();
  sub_1AC30A9DC();
  sub_1AC30B06C();
  __break(1u);
}

id sub_1AC2334BC(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  v9 = [objc_allocWithZone(v6) initWithFrame:a1 device:a2 & 1 darkMode:{a3, a4, a5, a6}];
  MEMORY[0x1E69E5920](a1);
  return v9;
}

id sub_1AC2337D4()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BatteryStatusView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AC23388C()
{
  v2 = *(v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI17BatteryStatusView_featureContent);

  return v2;
}

uint64_t sub_1AC233974()
{
  v2 = *(v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI17BatteryStatusView_featureContent + 16);
  MEMORY[0x1E69E5928]();
  return v2;
}

uint64_t sub_1AC233A38()
{
  v2 = *(v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI17BatteryStatusView_featureContent + 24);

  return v2;
}

uint64_t sub_1AC233C20(unsigned int a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI17BatteryStatusView_featureContent + 80);

  v5 = v4(a1);

  return v5;
}

uint64_t sub_1AC233D18()
{
  v2 = *(v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI17BatteryStatusView_featureContent + 48);
  MEMORY[0x1E69E5928]();
  return v2;
}

uint64_t sub_1AC233DCC()
{
  v2 = *(v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI17BatteryStatusView_featureContent + 56);
  MEMORY[0x1E69E5928]();
  return v2;
}

uint64_t sub_1AC233E80()
{
  v2 = *(v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI17BatteryStatusView_featureContent + 64);
  MEMORY[0x1E69E5928]();
  return v2;
}

uint64_t sub_1AC233F34()
{
  v2 = *(v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI17BatteryStatusView_featureContent + 72);
  MEMORY[0x1E69E5928]();
  return v2;
}

BOOL sub_1AC23402C(char a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
    case 3:
      return 0;
    case 4:
      return 1;
  }

  return a1 == 5;
}

uint64_t sub_1AC234258(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  sub_1AC30AC4C();
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  sub_1AC30B07C();
  __break(1u);
LABEL_12:
  result = sub_1AC30B05C();
  __break(1u);
  return result;
}

uint64_t sub_1AC234584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        MEMORY[0x1EEE9AC00](v17);
        v15 = sub_1AC235BF8;
        v16 = &v37;
        sub_1AC234258(sub_1AC235C14, v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      v13[0] = 2;
      sub_1AC30B05C();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    v13[0] = 2;
    sub_1AC30B05C();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        v13[0] = 2;
        sub_1AC30B05C();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            v13[0] = 2;
            sub_1AC30B05C();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    v13[0] = 2;
                    sub_1AC30B05C();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  v13[0] = 2;
                  sub_1AC30B05C();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                v13[0] = 2;
                sub_1AC30B05C();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              v13[0] = 2;
              sub_1AC30B05C();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            v13[0] = 2;
            sub_1AC30B05C();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          v13[0] = 2;
          sub_1AC30B05C();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        v13[0] = 2;
        sub_1AC30B05C();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      v13[0] = 2;
      sub_1AC30B05C();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    v13[0] = 2;
    sub_1AC30B07C();
    __break(1u);
  }

  result = sub_1AC30B05C();
  __break(1u);
  return result;
}

uint64_t sub_1AC234DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        sub_1AC30B05C();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            sub_1AC30B05C();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                sub_1AC30B05C();
                __break(1u);
              }

              sub_1AC30B05C();
              __break(1u);
            }

            sub_1AC30B05C();
            __break(1u);
          }

          sub_1AC30B05C();
          __break(1u);
        }

        sub_1AC30B05C();
        __break(1u);
      }

      sub_1AC30B05C();
      __break(1u);
    }

    sub_1AC30B05C();
    __break(1u);
  }

  result = sub_1AC30B05C();
  __break(1u);
  return result;
}

unint64_t sub_1AC2352C8()
{
  v2 = qword_1EB54BFC0;
  if (!qword_1EB54BFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54BFB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54BFC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC235350()
{
  v2 = qword_1EB54BFC8;
  if (!qword_1EB54BFC8)
  {
    sub_1AC2353D0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54BFC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2353D0()
{
  v2 = qword_1EB54BFD0;
  if (!qword_1EB54BFD0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54BFD0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC235434()
{
  v2 = qword_1EB54BFD8;
  if (!qword_1EB54BFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54BFA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54BFD8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for BTDeviceBatteryStatus()
{
  v4 = qword_1EB54C018;
  if (!qword_1EB54C018)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54C018);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1AC235560()
{
  v2 = qword_1EB54BFE0;
  if (!qword_1EB54BFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54BFB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54BFE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2355F4()
{
  v2 = qword_1EB54BFE8;
  if (!qword_1EB54BFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54BF80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54BFE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC235688()
{
  v2 = qword_1EB54BFF0;
  if (!qword_1EB54BFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54BF88);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54BFF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC235710()
{
  v2 = qword_1EB54C000;
  if (!qword_1EB54C000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54BFF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C000);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2357A4()
{
  v2 = qword_1EB54C008;
  if (!qword_1EB54C008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54BF90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C008);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC23582C()
{
  v2 = qword_1EB54C010;
  if (!qword_1EB54C010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54BF98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C010);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2358E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 40))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1AC2359C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3)
    {
      *(result + 40) = 1;
    }
  }

  else if (a3)
  {
    *(result + 40) = 0;
  }

  return result;
}

unint64_t sub_1AC235B78()
{
  v2 = qword_1EB54C030;
  if (!qword_1EB54C030)
  {
    type metadata accessor for AABatteryType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C030);
    return WitnessTable;
  }

  return v2;
}

Swift::Void __swiftcall HeadphoneSettingsController.present(_:)(UIViewController *a1)
{
  v5 = a1;
  v4 = v1;
  (MEMORY[0x1E69E5928])();
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HeadphoneSettingsController();
  [(UIViewController *)&v3 presentViewController:a1 animated:1 completion:0];
  (MEMORY[0x1E69E5920])();
}

uint64_t sub_1AC235D74()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_1AC235DAC(uint64_t a1, void *a2)
{
  v21 = a1;
  v20 = a2;
  v19 = v2;
  sub_1AC30929C();
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C048);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }
  }

  else
  {
    sub_1AC204664(v12);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  v8 = v17 != 0;
  v11 = (*((*a2 & *MEMORY[0x1E69E7D40]) + 0xB0))();
  if (v11)
  {
    v5 = v11;
    MEMORY[0x1E69E5928](v11);
    sub_1AC206988(&v11);
    v6 = [v5 featureCapable];
    MEMORY[0x1E69E5920](v5);
    v7 = v6;
  }

  else
  {
    sub_1AC206988(&v11);
    v7 = 2;
  }

  if (v7 == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v7;
  }

  sub_1AC204664(&v14);
  LOBYTE(v10) = v8;
  HIBYTE(v10) = v4 & 1;
  return v10;
}

uint64_t sub_1AC235FDC(uint64_t a1, void *a2)
{
  v14 = a1;
  v13 = a2;
  v12 = v2;
  v10 = (*((*a2 & *MEMORY[0x1E69E7D40]) + 0xB0))();
  if (v10)
  {
    v6 = v10;
    MEMORY[0x1E69E5928](v10);
    sub_1AC206988(&v10);
    v7 = [v6 specifiers];
    MEMORY[0x1E69E5920](v6);
    v8 = sub_1AC30AB0C();
    MEMORY[0x1E69E5920](v7);
    v9 = v8;
  }

  else
  {
    sub_1AC206988(&v10);
    v9 = 0;
  }

  if (v9)
  {
    sub_1AC215CB0();
    v4 = sub_1AC30B10C();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    return v5;
  }

  sub_1AC215CB0();
  return sub_1AC30B18C();
}

uint64_t sub_1AC236288()
{
  v0 = sub_1AC30A9DC();
  result = v3;
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_1AC2363E0(uint64_t a1, void *a2)
{
  v12 = a1;
  v11 = a2;
  v10 = v2;
  v9 = (*((*a2 & *MEMORY[0x1E69E7D40]) + 0xB0))();
  if (v9)
  {
    v5 = v9;
    MEMORY[0x1E69E5928](v9);
    sub_1AC206988(&v9);
    v6 = [v5 featureCapable];
    MEMORY[0x1E69E5920](v5);
    v7 = v6;
  }

  else
  {
    sub_1AC206988(&v9);
    v7 = 2;
  }

  if (v7 == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v7;
  }

  LOBYTE(v8) = 1;
  HIBYTE(v8) = v4 & 1;
  return v8;
}

uint64_t sub_1AC236544(uint64_t a1, void *a2)
{
  v14 = a1;
  v13 = a2;
  v12 = v2;
  v10 = (*((*a2 & *MEMORY[0x1E69E7D40]) + 0xB0))();
  if (v10)
  {
    v6 = v10;
    MEMORY[0x1E69E5928](v10);
    sub_1AC206988(&v10);
    v7 = [v6 occlusionDetectionSpecifiers];
    MEMORY[0x1E69E5920](v6);
    v8 = sub_1AC30AB0C();
    MEMORY[0x1E69E5920](v7);
    v9 = v8;
  }

  else
  {
    sub_1AC206988(&v10);
    v9 = 0;
  }

  if (v9)
  {
    sub_1AC215CB0();
    v4 = sub_1AC30B10C();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    return v5;
  }

  sub_1AC215CB0();
  return sub_1AC30B18C();
}

uint64_t sub_1AC23677C()
{
  v0 = sub_1AC30A9DC();
  result = v3;
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_1AC2368D0()
{
  v7 = sub_1AC30A90C();
  v4 = *(v7 - 8);
  v5 = v7 - 8;
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v6 = &v2 - v3;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v8 = sub_1AC215DE8(v6, &unk_1F20F2BA8);
  v9 = v0;
  (*(v4 + 8))(v6, v7);
  result = v8;
  qword_1EB553CC8 = v8;
  qword_1EB553CD0 = v9;
  return result;
}

uint64_t *sub_1AC2369F4()
{
  if (qword_1EB54E3B0 != -1)
  {
    swift_once();
  }

  return &qword_1EB553CC8;
}

uint64_t sub_1AC236A54()
{
  v1 = *sub_1AC2369F4();

  return v1;
}

uint64_t sub_1AC236A90@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_1AC236ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = 0;
  v25 = a1;
  v24 = a2;
  v22 = a3;
  v23 = a4;
  v7 = sub_1AC30917C();
  v8 = [v7 autoAncCapability];
  MEMORY[0x1E69E5920](v7);
  v21 = v8;
  v20 = 1;
  type metadata accessor for CBPeerAutoAncCapability();
  sub_1AC236D88();
  v10 = sub_1AC30B1BC();
  MEMORY[0x1E69E5928](a1);
  if (v10)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1AC3092FC();
  }

  MEMORY[0x1E69E5920](a1);
  v19 = v6 & 1;
  sub_1AC30929C();
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C128);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }
  }

  else
  {
    sub_1AC204664(v12);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  v5 = v17 != 0;
  sub_1AC204664(&v14);
  LOBYTE(v11) = v5;
  HIBYTE(v11) = v6 & 1;
  return v11;
}

uint64_t type metadata accessor for CBPeerAutoAncCapability()
{
  v4 = qword_1EB54C130;
  if (!qword_1EB54C130)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54C130);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1AC236D88()
{
  v2 = qword_1EB54C120;
  if (!qword_1EB54C120)
  {
    type metadata accessor for CBPeerAutoAncCapability();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C120);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC236E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a1;
  v10[1] = a2;
  v20 = a3;
  v21 = a4;
  v30 = sub_1AC237398;
  v40 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v24 = 0;
  v27 = sub_1AC309AAC();
  v25 = *(v27 - 8);
  v26 = v27 - 8;
  v10[0] = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v28 = v10 - v10[0];
  v16 = sub_1AC30A90C();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v11 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v31);
  v15 = v10 - v11;
  v40 = v4;
  v39 = v5;
  v37 = v6;
  v38 = v7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
  v36[4] = v20;
  v36[5] = v21;
  v22 = 1;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v19 = &unk_1F20F2C30;
  v17 = sub_1AC215DE8(v15, &unk_1F20F2C30);
  v18 = v8;
  (*(v13 + 8))(v15, v16);
  sub_1AC205220();
  v29 = sub_1AC309D3C();

  v23 = v36;
  v36[3] = v19;
  v36[0] = v20;
  v36[1] = v21;
  sub_1AC20599C();
  sub_1AC309A9C();
  v32 = sub_1AC309D1C();
  (*(v25 + 8))(v28, v27);

  MEMORY[0x1E69E5928](v31);
  v35 = v31;
  v33 = sub_1AC309D0C();
  MEMORY[0x1E69E5920](v31);

  v34 = sub_1AC309D2C();

  return v34;
}

uint64_t sub_1AC2371B0(void *a1, uint64_t a2)
{
  type metadata accessor for ListeningModeControl();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C138);
  v7 = sub_1AC30B19C();
  v5 = *MEMORY[0x1E69C5860];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C5860]);
  sub_1AC30A92C();
  v6 = sub_1AC30A91C();

  MEMORY[0x1E69E5920](v5);
  [a1 setProperty:v7 forKey:v6];
  MEMORY[0x1E69E5920](v6);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C140);
  sub_1AC30B18C();
  v9 = v2;
  *v2 = sub_1AC30A9DC();
  v9[1] = v3;
  MEMORY[0x1E69E5928](a2);
  v9[2] = a2;
  sub_1AC206300();
  sub_1AC3095DC();
  sub_1AC30A83C();
  v11 = sub_1AC30A81C();

  [a1 setUserInfo_];
  return swift_unknownObjectRelease();
}

uint64_t sub_1AC2373A0()
{
  v1 = sub_1AC30A9DC();

  sub_1AC2063F0();
  return v1;
}

uint64_t sub_1AC2374D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
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

uint64_t sub_1AC2375E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1AC2377E8()
{
  v2 = *v0;
  MEMORY[0x1E69E5928]();
  return v2;
}

uint64_t sub_1AC23781C(uint64_t a1)
{
  MEMORY[0x1E69E5928]();
  v2 = *v1;
  *v1 = a1;
  MEMORY[0x1E69E5920](v2);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1AC237870()
{
  v2 = *(v0 + 8);
  MEMORY[0x1E69E5928]();
  return v2;
}

uint64_t sub_1AC2378A4(uint64_t a1)
{
  MEMORY[0x1E69E5928]();
  v2 = *(v1 + 8);
  *(v1 + 8) = a1;
  MEMORY[0x1E69E5920](v2);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1AC2378F8@<X0>(uint64_t a1@<X8>)
{
  v5[2] = a1;
  v8 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C148);
  v5[0] = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v1 = (v5 - v5[0]);
  v7 = v5 - v5[0];
  v8 = v2;
  v3 = type metadata accessor for LoopingVideoPlayer();
  sub_1AC237A38((v5[1] + *(v3 + 24)), v1);
  sub_1AC30A05C();
  return sub_1AC237B0C(v7);
}

uint64_t type metadata accessor for LoopingVideoPlayer()
{
  v1 = qword_1EB54E550;
  if (!qword_1EB54E550)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *sub_1AC237A38(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1AC30A02C();
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

uint64_t sub_1AC237B0C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1AC30A02C();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1AC237BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v5 = a1;
  v3[1] = 0;
  v11 = sub_1AC30A02C();
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v4 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v10 = v3 - v4;
  v14 = sub_1AC30A18C();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v6 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v15 = v3 - v6;
  (*(v12 + 16))(v3 - v6);
  sub_1AC30A14C();
  (*(v7 + 32))(v9, v10, v11);
  return (*(v12 + 8))(v15, v14);
}

uint64_t sub_1AC237D6C(uint64_t a1)
{
  v3 = a1;
  v1 = sub_1AC30A02C();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v3 - v4;
  (*(v5 + 16))(&v3 - v4);
  return sub_1AC30A15C();
}

uint64_t sub_1AC237E5C(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C148) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  sub_1AC237A38(v2, (&v5 - v6));
  v3 = type metadata accessor for LoopingVideoPlayer();
  sub_1AC237F0C(v7, (v1 + *(v3 + 24)));
  return sub_1AC237B0C(v8);
}

void *sub_1AC237F0C(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_1AC237B0C(a2);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C150);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_1AC30A02C();
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

float sub_1AC238024(float a1, float a2)
{
  v3 = type metadata accessor for LoopingVideoPlayer();
  result = a1;
  v5 = (v2 + *(v3 + 28));
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1AC238068@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v19 = sub_1AC238A84;
  v27 = sub_1AC238C1C;
  v39 = sub_1AC239034;
  v49 = MEMORY[0x1E6981440];
  v79 = 0;
  v78 = 0;
  v7 = 0;
  v46 = sub_1AC30A02C();
  v41 = *(v46 - 8);
  v42 = v46 - 8;
  v8 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v43 = &v7 - v8;
  v13 = type metadata accessor for LoopingVideoPlayer();
  v9 = *(v13 - 8);
  v16 = v9;
  v35 = *(v9 + 64);
  v10 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v38 = (&v7 - v10);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C158);
  v50 = *(v56 - 8);
  v51 = v56 - 8;
  v11 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v7 - v11;
  v12 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v7 - v11);
  v55 = &v7 - v12;
  v79 = &v7 - v12;
  v78 = v1;
  v14 = *v1;
  MEMORY[0x1E69E5928](v14);
  v3 = nullsub_1(v14);
  v15 = &v69;
  v69 = v3;
  v70 = v4;
  v71 = v5;
  sub_1AC2386F8();
  sub_1AC30A52C();
  sub_1AC206988(v15);
  v21 = &v65;
  v65 = v72;
  v66 = v73;
  v67 = v74;
  v68 = v75;
  sub_1AC2387CC(v33, v38);
  v34 = *(v16 + 80);
  v17 = (v34 + 16) & ~v34;
  v36 = 7;
  v20 = swift_allocObject();
  sub_1AC238940(v38, (v20 + v17));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C168);
  sub_1AC238AE8();
  v22 = &v76;
  sub_1AC30A5DC();
  sub_1AC238B8C(v19);
  sub_1AC206988(v21);
  v23 = __dst;
  v24 = 56;
  memcpy(__dst, v22, sizeof(__dst));
  v29 = v64;
  memcpy(v64, __dst, sizeof(v64));
  sub_1AC2387CC(v33, v38);
  v25 = (v34 + 16) & ~v34;
  v28 = swift_allocObject();
  sub_1AC238940(v38, (v28 + v25));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C178);
  sub_1AC238C80();
  v30 = &v77;
  sub_1AC30A4BC();
  sub_1AC238B8C(v27);
  sub_1AC238D24(v29);
  v31 = v81;
  v32 = 88;
  memcpy(v81, v30, sizeof(v81));
  v44 = v63;
  memcpy(v63, v81, sizeof(v63));
  sub_1AC2378F8(v43);
  sub_1AC2387CC(v33, v38);
  v37 = (v34 + 16) & ~v34;
  v40 = swift_allocObject();
  sub_1AC238940(v38, (v40 + v37));
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C188);
  v47 = sub_1AC2390B4();
  v48 = sub_1AC239158();
  sub_1AC222FE4();
  sub_1AC30A5EC();

  (*(v41 + 8))(v43, v46);
  sub_1AC2391D8(v44);
  v59 = v45;
  v60 = v46;
  v61 = v47;
  v62 = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1AC207B58(v54, v56, v55);
  v58 = *(v50 + 8);
  v57 = v50 + 8;
  v58(v54, v56);
  (*(v50 + 16))(v54, v55, v56);
  sub_1AC207B58(v54, v56, v52);
  v58(v54, v56);
  return (v58)(v55, v56);
}

unint64_t sub_1AC2386F8()
{
  v2 = qword_1EB54C160;
  if (!qword_1EB54C160)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C160);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC238770(void *a1)
{
  v2 = *a1;
  MEMORY[0x1E69E5928](*a1);
  [v2 play];
  return MEMORY[0x1E69E5920](v2);
}

void *sub_1AC2387CC(void *a1, void *a2)
{
  v5 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = v5;
  v7 = a1[1];
  MEMORY[0x1E69E5928](v7);
  a2[1] = v7;
  v8 = type metadata accessor for LoopingVideoPlayer();
  v9 = *(v8 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1AC30A02C();
    (*(*(v2 - 8) + 16))();
  }

  else
  {
    v4 = *(a1 + v9);

    *(a2 + v9) = v4;
  }

  swift_storeEnumTagMultiPayload();
  result = a2;
  *(a2 + *(v8 + 28)) = *(a1 + *(v8 + 28));
  return result;
}

void *sub_1AC238940(void *a1, void *a2)
{
  *a2 = *a1;
  a2[1] = a1[1];
  v5 = type metadata accessor for LoopingVideoPlayer();
  v6 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1AC30A02C();
    (*(*(v2 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2 + v6, a1 + v6, *(*(v8 - 8) + 64));
  }

  result = a2;
  *(a2 + *(v5 + 28)) = *(a1 + *(v5 + 28));
  return result;
}

uint64_t sub_1AC238A84()
{
  v1 = *(type metadata accessor for LoopingVideoPlayer() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1AC238770(v2);
}

unint64_t sub_1AC238AE8()
{
  v2 = qword_1EB54C170;
  if (!qword_1EB54C170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C168);
    sub_1AC2386F8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C170);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC238B8C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AC238BC0(void *a1)
{
  v2 = *a1;
  MEMORY[0x1E69E5928](*a1);
  [v2 pause];
  return MEMORY[0x1E69E5920](v2);
}

uint64_t sub_1AC238C1C()
{
  v1 = *(type metadata accessor for LoopingVideoPlayer() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1AC238BC0(v2);
}

unint64_t sub_1AC238C80()
{
  v2 = qword_1EB54C180;
  if (!qword_1EB54C180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C178);
    sub_1AC238AE8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C180);
    return WitnessTable;
  }

  return v2;
}

void *sub_1AC238D24(void *a1)
{
  MEMORY[0x1E69E5920](*a1);
  if (a1[3])
  {
  }

  if (a1[5])
  {
  }

  return a1;
}

uint64_t sub_1AC238D98(uint64_t a1, uint64_t a2, id *a3)
{
  v12 = a1;
  v16 = a2;
  v13 = a3;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v19 = sub_1AC30A02C();
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19);
  v20 = &v6 - v3;
  v26 = v12;
  v25 = v4;
  v24 = v13;
  v14 = *(v17 + 104);
  v15 = v17 + 104;
  v14();
  v23 = sub_1AC30A01C();
  v21 = *(v17 + 8);
  v22 = v17 + 8;
  v21(v20, v19);
  if (v23)
  {
    v11 = *v13;
    MEMORY[0x1E69E5928](v11);
    [v11 play];
    return MEMORY[0x1E69E5920](v11);
  }

  else
  {
    (v14)(v20, *MEMORY[0x1E697BE40], v19);
    v10 = sub_1AC30A01C();
    v21(v20, v19);
    if (v10)
    {
      result = 1;
      v9 = 1;
    }

    else
    {
      (v14)(v20, *MEMORY[0x1E697BE30], v19);
      v8 = sub_1AC30A01C();
      v21(v20, v19);
      result = v8;
      v9 = v8;
    }

    if (v9)
    {
      v7 = *v13;
      MEMORY[0x1E69E5928](v7);
      [v7 pause];
      return MEMORY[0x1E69E5920](v7);
    }
  }

  return result;
}

uint64_t sub_1AC239034(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LoopingVideoPlayer();
  v4 = (v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)));

  return sub_1AC238D98(a1, a2, v4);
}

unint64_t sub_1AC2390B4()
{
  v2 = qword_1EB54C190;
  if (!qword_1EB54C190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C188);
    sub_1AC238C80();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C190);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC239158()
{
  v2 = qword_1EB54C198;
  if (!qword_1EB54C198)
  {
    sub_1AC30A02C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C198);
    return WitnessTable;
  }

  return v2;
}

void *sub_1AC2391D8(void *a1)
{
  MEMORY[0x1E69E5920](*a1);
  if (a1[3])
  {
  }

  if (a1[5])
  {
  }

  if (a1[7])
  {
  }

  if (a1[9])
  {
  }

  return a1;
}

char *sub_1AC23928C@<X0>(uint64_t a1@<X0>, void *a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  v28 = a2;
  v32 = a1;
  v24 = a3;
  v25 = a4;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v21 = 0;
  v31 = sub_1AC30901C();
  v29 = *(v31 - 8);
  v30 = v31 - 8;
  v17 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v20 = &v17 - v17;
  v23 = type metadata accessor for LoopingVideoPlayer();
  v18 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v23);
  v33 = &v17 - v18;
  v38 = &v17 - v18;
  v37 = v5;
  v36 = __PAIR64__(v7, v6);
  v19 = *(v4 + 24);
  swift_getKeyPath();
  sub_1AC30A07C();
  sub_1AC239550();
  (*(v29 + 16))(v20, v32, v31);
  v27 = sub_1AC2395B4(v20);
  v35 = v27;
  sub_1AC239664();
  MEMORY[0x1E69E5928](v27);
  v26 = sub_1AC2396C8(v27);
  v34 = v26;
  sub_1AC239754();
  MEMORY[0x1E69E5928](v26);
  v22 = sub_1AC2397B8(v26);
  MEMORY[0x1E69E5928](v22);
  *v33 = v22;
  sub_1AC2397F8();
  MEMORY[0x1E69E5928](v26);
  v8 = sub_1AC23985C(v22, v26);
  v9 = v23;
  v10 = v24;
  v11 = v25;
  v12 = v33;
  v13 = v8;
  v14 = v26;
  *(v33 + 1) = v13;
  v15 = &v12[*(v9 + 28)];
  *v15 = v10;
  *(v15 + 1) = v11;
  MEMORY[0x1E69E5920](v14);
  MEMORY[0x1E69E5920](v27);
  sub_1AC2387CC(v33, v28);
  (*(v29 + 8))(v32, v31);
  return sub_1AC2398D0(v33);
}

unint64_t sub_1AC239550()
{
  v2 = qword_1EB54C1A0;
  if (!qword_1EB54C1A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C1A0);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_1AC2395B4(uint64_t a1)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = sub_1AC308FEC();
  v6 = [v3 initWithURL_options_];
  MEMORY[0x1E69E5920](v4);
  v1 = sub_1AC30901C();
  (*(*(v1 - 8) + 8))(a1);
  return v6;
}

unint64_t sub_1AC239664()
{
  v2 = qword_1EB54C1A8;
  if (!qword_1EB54C1A8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C1A8);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_1AC2396C8(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  MEMORY[0x1E69E5928](a1);
  swift_getObjectType();
  v4 = [v2 initWithAsset_];
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](a1);
  return v4;
}

unint64_t sub_1AC239754()
{
  v2 = qword_1EB54C1B0;
  if (!qword_1EB54C1B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C1B0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC2397F8()
{
  v2 = qword_1EB54C1B8;
  if (!qword_1EB54C1B8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C1B8);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_1AC23985C(uint64_t a1, uint64_t a2)
{
  v5 = [swift_getObjCClassFromMetadata() playerLooperWithPlayer:a1 templateItem:a2];
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  return v5;
}

char *sub_1AC2398D0(char *a1)
{
  MEMORY[0x1E69E5920](*a1);
  MEMORY[0x1E69E5920](*(a1 + 1));
  v3 = *(type metadata accessor for LoopingVideoPlayer() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1AC30A02C();
    (*(*(v1 - 8) + 8))(&a1[v3]);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1AC239A2C(uint64_t a1)
{
  v9 = a1;
  v8 = sub_1AC30901C();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4 = &v2 - v3;
  (*(v6 + 16))();
  (*(v6 + 40))(v5, v4, v8);
  return (*(v6 + 8))(v9, v8);
}

uint64_t type metadata accessor for TranslationVideoHeader()
{
  v1 = qword_1EB54E560;
  if (!qword_1EB54E560)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

float sub_1AC239BE0(float a1, float a2)
{
  v3 = type metadata accessor for TranslationVideoHeader();
  result = a1;
  v5 = (v2 + *(v3 + 20));
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1AC239C74@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v7 = sub_1AC23A470;
  v19 = 0;
  v18 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C1C0);
  v5 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v4 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v4 - v5);
  v15 = &v4 - v6;
  v19 = &v4 - v6;
  v18 = v1;
  v8 = &v16;
  v17 = v1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C1C8);
  v10 = sub_1AC23A71C();
  sub_1AC23A6F8();
  sub_1AC30A70C();
  v13 = sub_1AC23A7A4();
  sub_1AC207B58(v14, v12, v15);
  sub_1AC23A82C(v14);
  sub_1AC23A9A4(v15, v14);
  sub_1AC207B58(v14, v12, v11);
  sub_1AC23A82C(v14);
  return sub_1AC23A82C(v15);
}

char *sub_1AC239E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v25 = a1;
  v105 = 0;
  v104 = 0;
  v47 = 0;
  v20 = sub_1AC30901C();
  v24 = *(v20 - 8);
  v19 = v20 - 8;
  v17 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v26 = &v16 - v17;
  v27 = type metadata accessor for LoopingVideoPlayer();
  v18 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v2 = (&v16 - v18);
  v29 = &v16 - v18;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C1F0);
  v22 = *(*(v66 - 8) + 64);
  v21 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v26);
  v73 = &v16 - v21;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v75 = &v16 - v23;
  v105 = &v16 - v23;
  v104 = v5;
  (*(v24 + 16))(v4);
  v6 = type metadata accessor for TranslationVideoHeader();
  sub_1AC23928C(v26, v2, *(v25 + *(v6 + 20)), *(v25 + *(v6 + 20) + 4));
  v28 = sub_1AC23B1BC();
  sub_1AC23A478();
  v46 = 0x4073600000000000;
  v58 = 0;
  sub_1AC30A59C();
  sub_1AC2398D0(v29);
  v68 = sub_1AC23B23C();
  sub_1AC207B58(v73, v66, v75);
  sub_1AC2398D0(v73);
  v53 = 1;
  sub_1AC30A9DC();
  v30 = v7;
  v31 = sub_1AC2C8C0C();
  v32 = v8;

  v33 = v99;
  v99[0] = v31;
  v99[1] = v32;
  sub_1AC207FC0();
  v95 = sub_1AC30A47C();
  v96 = v9;
  v97 = v10;
  v98 = v11;
  v35 = v95;
  v36 = v9;
  v37 = v10;
  v38 = v11;
  v34 = sub_1AC30A3BC();
  v91 = v35;
  v92 = v36;
  v43 = 1;
  v93 = v37 & 1;
  v94 = v38;
  v87 = sub_1AC30A45C();
  v88 = v12;
  v89 = v13;
  v90 = v14;
  v39 = v87;
  v40 = v12;
  v41 = v13;
  v42 = v14;

  sub_1AC207F7C(v35, v36, v37 & 1);

  v48 = v84;
  v84[0] = v39;
  v84[1] = v40;
  v85 = v41 & 1 & v53;
  v86 = v42;
  v44 = MEMORY[0x1E6981148];
  v45 = MEMORY[0x1E6981138];
  sub_1AC23A478();
  v49 = &v100;
  sub_1AC30A5AC();
  sub_1AC208038(v48);
  v50 = v106;
  v51 = 144;
  memcpy(v106, v49, sizeof(v106));
  v54 = v83;
  memcpy(v83, v106, sizeof(v83));
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C218);
  sub_1AC23B2E0();
  v55 = &v101;
  sub_1AC30A57C();
  sub_1AC208038(v54);
  v56 = v107;
  v57 = 153;
  memcpy(v107, v55, 0x99uLL);
  v61 = v82;
  memcpy(v82, v107, 0x99uLL);
  v60 = sub_1AC30A36C();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C228);
  sub_1AC23B380();
  v62 = &v102;
  sub_1AC30A5CC();
  sub_1AC23B4B0(v61);
  v63 = __dst;
  v64 = 201;
  memcpy(__dst, v62, 0xC9uLL);
  v65 = v81;
  memcpy(v81, __dst, 0xC9uLL);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C248);
  v69 = sub_1AC23B504();
  v74 = v103;
  sub_1AC207B58(v65, v67, v103);
  sub_1AC23B4B0(v65);
  sub_1AC23B5A8(v75, v73);
  v71 = v80;
  v80[0] = v73;
  v72 = v79;
  sub_1AC23B75C(v74, v79);
  v80[1] = v72;
  v78[0] = v66;
  v78[1] = v67;
  v76 = v68;
  v77 = v69;
  sub_1AC23A49C(v71, 2uLL, v78, v70);
  sub_1AC23B4B0(v72);
  sub_1AC2398D0(v73);
  sub_1AC23B4B0(v74);
  return sub_1AC2398D0(v75);
}

uint64_t *sub_1AC23A49C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v25 = a2;
  v26 = a1;
  v27 = a4;
  v28 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (a2 == 1)
  {
    TupleTypeMetadata = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    v23 = 0;
  }

  else
  {
    v19 = &v9;
    MEMORY[0x1EEE9AC00](&v9);
    v20 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; ; i = v5 + 1)
    {
      v18 = i;
      if (i >= v25)
      {
        break;
      }

      v5 = v18;
      *&v20[8 * v18] = *((v24 & 0xFFFFFFFFFFFFFFFELL) + 8 * v18);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v23 = v6;
  }

  v14 = TupleTypeMetadata;
  v16 = *(*(TupleTypeMetadata - 8) + 64);
  v15 = &v9;
  MEMORY[0x1EEE9AC00](&v9);
  v17 = &v9 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {
    for (j = 0; ; j = v9)
    {
      v11 = j;
      v12 = *((v24 & 0xFFFFFFFFFFFFFFFELL) + 8 * j);
      v10 = v25 == 1 ? 0 : *(v14 + 16 * v11 + 32);
      (*(*(v12 - 8) + 16))(&v17[v10], *(v26 + 8 * v11));
      v9 = v11 + 1;
      if (v11 + 1 == v25)
      {
        break;
      }
    }
  }

  sub_1AC30A79C();
  return v15;
}

unint64_t sub_1AC23A71C()
{
  v2 = qword_1EB54C1D0;
  if (!qword_1EB54C1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C1C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C1D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC23A7A4()
{
  v2 = qword_1EB54C1D8;
  if (!qword_1EB54C1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C1C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C1D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC23A82C(uint64_t a1)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C1E0) + 44);
  MEMORY[0x1E69E5920](*(a1 + v5));
  MEMORY[0x1E69E5920](*(a1 + v5 + 8));
  v6 = *(type metadata accessor for LoopingVideoPlayer() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1AC30A02C();
    (*(*(v1 - 8) + 8))(a1 + v5 + v6);
  }

  else
  {
  }

  v3 = a1 + v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C1E8) + 48);
  sub_1AC207F7C(*v3, *(v3 + 8), *(v3 + 16) & 1);

  return a1;
}

uint64_t sub_1AC23A9A4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C1E0) + 44);
  v17 = *(a1 + v16);
  MEMORY[0x1E69E5928](v17);
  *(a2 + v16) = v17;
  v18 = *(a1 + v16 + 8);
  MEMORY[0x1E69E5928](v18);
  *(a2 + v16 + 8) = v18;
  v19 = type metadata accessor for LoopingVideoPlayer();
  v20 = *(v19 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1AC30A02C();
    (*(*(v2 - 8) + 16))();
  }

  else
  {
    v13 = *(a1 + v16 + v20);

    *(a2 + v16 + v20) = v13;
  }

  swift_storeEnumTagMultiPayload();
  *(a2 + v16 + *(v19 + 28)) = *(a1 + v16 + *(v19 + 28));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C1F0);
  memcpy((a2 + v16 + *(v3 + 36)), (a1 + v16 + *(v3 + 36)), 0x30uLL);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C1E8);
  v11 = a2 + v16 + *(v4 + 48);
  v12 = a1 + v16 + *(v4 + 48);
  v6 = *v12;
  v7 = *(v12 + 8);
  v8 = *(v12 + 16);
  sub_1AC207E00(*v12, v7, v8 & 1);
  *v11 = v6;
  *(v11 + 8) = v7;
  *(v11 + 16) = v8 & 1;
  v9 = *(v12 + 24);

  *(v11 + 24) = v9;
  memcpy((v11 + 32), (v12 + 32), 0x70uLL);
  v10 = *(v12 + 144);

  *(v11 + 144) = v10;
  *(v11 + 152) = *(v12 + 152);
  memcpy((v11 + 160), (v12 + 160), 0x29uLL);
  return a2;
}

float sub_1AC23ACC8@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  v4 = sub_1AC30901C();
  (*(*(v4 - 8) + 32))(a2, a1);
  v5 = type metadata accessor for TranslationVideoHeader();
  result = a3;
  v7 = (a2 + *(v5 + 20));
  *v7 = a3;
  v7[1] = a4;
  return result;
}

unint64_t sub_1AC23AE28()
{
  v5 = sub_1AC239754();
  if (v0 <= 0x3F)
  {
    v5 = sub_1AC2397F8();
    if (v1 <= 0x3F)
    {
      v5 = sub_1AC23AF60();
      if (v2 <= 0x3F)
      {
        v5 = sub_1AC23AFFC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_1AC23AF60()
{
  v4 = qword_1EB54C1F8;
  if (!qword_1EB54C1F8)
  {
    sub_1AC30A02C();
    v3 = sub_1AC30A06C();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB54C1F8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1AC23AFFC()
{
  v4 = qword_1EB54C200;
  if (!qword_1EB54C200)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v4 = TupleTypeMetadata2;
    if (!v0)
    {
      v1 = TupleTypeMetadata2;
      atomic_store(TupleTypeMetadata2, &qword_1EB54C200);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1AC23B0F0()
{
  v3 = sub_1AC30901C();
  if (v0 <= 0x3F)
  {
    v3 = sub_1AC23AFFC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

unint64_t sub_1AC23B1BC()
{
  v2 = qword_1EB54C208;
  if (!qword_1EB54C208)
  {
    type metadata accessor for LoopingVideoPlayer();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C208);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC23B23C()
{
  v2 = qword_1EB54C210;
  if (!qword_1EB54C210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C1F0);
    sub_1AC23B1BC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C210);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC23B2E0()
{
  v2 = qword_1EB54C220;
  if (!qword_1EB54C220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C218);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C220);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC23B380()
{
  v2 = qword_1EB54C230;
  if (!qword_1EB54C230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C228);
    sub_1AC23B2E0();
    sub_1AC23B428();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C230);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC23B428()
{
  v2 = qword_1EB54C238;
  if (!qword_1EB54C238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C240);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C238);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC23B4B0(uint64_t a1)
{
  sub_1AC207F7C(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

unint64_t sub_1AC23B504()
{
  v2 = qword_1EB54C250;
  if (!qword_1EB54C250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C248);
    sub_1AC23B380();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C250);
    return WitnessTable;
  }

  return v2;
}

void *sub_1AC23B5A8(void *a1, void *a2)
{
  v6 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = v6;
  v8 = a1[1];
  MEMORY[0x1E69E5928](v8);
  a2[1] = v8;
  v9 = type metadata accessor for LoopingVideoPlayer();
  v10 = *(v9 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1AC30A02C();
    (*(*(v2 - 8) + 16))();
  }

  else
  {
    v5 = *(a1 + v10);

    *(a2 + v10) = v5;
  }

  swift_storeEnumTagMultiPayload();
  *(a2 + *(v9 + 28)) = *(a1 + *(v9 + 28));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C1F0);
  memcpy(a2 + *(v3 + 36), a1 + *(v3 + 36), 0x30uLL);
  return a2;
}

uint64_t sub_1AC23B75C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_1AC207E00(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v6 = *(a1 + 24);

  *(a2 + 24) = v6;
  memcpy((a2 + 32), (a1 + 32), 0x70uLL);
  v8 = *(a1 + 144);

  *(a2 + 144) = v8;
  *(a2 + 152) = *(a1 + 152);
  memcpy((a2 + 160), (a1 + 160), 0x29uLL);
  return a2;
}

id sub_1AC23B83C(uint64_t a1)
{
  v4 = [v1 initWithPlayerItem_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

uint64_t sub_1AC23B88C()
{
  v1 = sub_1AC309E6C();
  __swift_allocate_value_buffer(v1, qword_1EB553CD8);
  __swift_project_value_buffer(v1, qword_1EB553CD8);
  sub_1AC30A9DC();
  sub_1AC30A9DC();
  return sub_1AC309E5C();
}

uint64_t __swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v5 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = swift_slowAlloc();
    *a2 = v2;
    return v2;
  }

  return v5;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t sub_1AC23BA24()
{
  if (qword_1EB54E570 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309E6C();
  return __swift_project_value_buffer(v0, qword_1EB553CD8);
}

uint64_t sub_1AC23BA90@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC23BA24();
  v1 = sub_1AC309E6C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC23BAF4()
{
  v3 = *v0;
  if (*v0)
  {
    switch(v3)
    {
      case 1:
        return 1;
      case 2:
        return 2;
      case 3:
        return 3;
      default:
        return 4;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t HPCUIListeningModeControl.Mode.init(rawValue:)@<X0>(char *a1@<X8>)
{
  sub_1AC30B18C();
  *v1 = "unknown";
  *(v1 + 8) = 7;
  *(v1 + 16) = 2;
  *(v1 + 24) = "off";
  *(v1 + 32) = 3;
  *(v1 + 40) = 2;
  *(v1 + 48) = "anc";
  *(v1 + 56) = 3;
  *(v1 + 64) = 2;
  *(v1 + 72) = "transparency";
  *(v1 + 80) = 12;
  *(v1 + 88) = 2;
  *(v1 + 96) = "autoAnc";
  *(v1 + 104) = 7;
  *(v1 + 112) = 2;
  sub_1AC206300();
  v4 = sub_1AC30B12C();

  if (v4)
  {
    switch(v4)
    {
      case 1:
        v5 = 1;
        break;
      case 2:
        v5 = 2;
        break;
      case 3:
        v5 = 3;
        break;
      case 4:
        v5 = 4;
        break;
      default:

        *a1 = 5;
        return result;
    }
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
}

unint64_t sub_1AC23BEF4()
{
  v2 = qword_1EB54C258;
  if (!qword_1EB54C258)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C258);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC23C064@<X0>(uint64_t *a1@<X8>)
{
  result = HPCUIListeningModeControl.Mode.rawValue.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t HPCUIListeningModeControl._modeForIndex(_:)(uint64_t a1)
{
  v47 = a1;
  v42 = 0;
  v55 = 0;
  v54 = 0;
  v37 = 0;
  v38 = sub_1AC309E6C();
  v39 = *(v38 - 8);
  v40 = v39;
  v2 = MEMORY[0x1EEE9AC00](v47);
  v41 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v2;
  v54 = v1;
  v45 = HPCUIListeningModeControl.validModes.getter();
  v43 = type metadata accessor for BTAccessoryListeningMode();
  v44 = v43;
  v46 = sub_1AC30AB4C();

  if (v47 < v46)
  {
    v33 = HPCUIListeningModeControl.validModes.getter();
    sub_1AC30AB7C();
    v34 = v48;

    v35 = v34;
    v36 = v37;
  }

  else
  {
    v4 = v41;
    v5 = sub_1AC23BA24();
    (*(v40 + 16))(v4, v5, v38);
    v31 = sub_1AC309E4C();
    v28 = v31;
    v30 = sub_1AC30AD1C();
    v29 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
    v32 = sub_1AC30B18C();
    if (os_log_type_enabled(v31, v30))
    {
      v7 = v37;
      v19 = sub_1AC30AE6C();
      v15 = v19;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
      v17 = 0;
      v20 = sub_1AC213EE4(0);
      v18 = v20;
      v21 = sub_1AC213EE4(v17);
      v52 = v19;
      v51 = v20;
      v50 = v21;
      v22 = 0;
      v23 = &v52;
      sub_1AC213F38(0, &v52);
      sub_1AC213F38(v22, v23);
      v49 = v32;
      v24 = &v10;
      MEMORY[0x1EEE9AC00](&v10);
      v25 = &v10 - 6;
      *(&v10 - 4) = v8;
      *(&v10 - 3) = &v51;
      *(&v10 - 2) = &v50;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
      sub_1AC218014();
      sub_1AC30AAAC();
      v27 = v7;
      if (v7)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1AC1C3000, v28, v29, "_modeForIndex: Index out of bounds!", v15, 2u);
        v13 = 0;
        sub_1AC213F98(v18);
        sub_1AC213F98(v21);
        sub_1AC30AE4C();

        v14 = v27;
      }
    }

    else
    {

      v14 = v37;
    }

    v12 = v14;

    (*(v40 + 8))(v41, v38);
    v10 = HPCUIListeningModeControl.validModes.getter();
    sub_1AC30AB7C();
    v11 = v53;

    v35 = v11;
    v36 = v12;
  }

  return v35;
}

uint64_t HPCUIListeningModeControl.validModes.getter()
{
  v115 = sub_1AC2414F8;
  v116 = sub_1AC2414E8;
  v117 = sub_1AC226634;
  v118 = sub_1AC226640;
  v119 = sub_1AC22664C;
  v120 = sub_1AC2414F0;
  v121 = sub_1AC226634;
  v122 = sub_1AC226640;
  v123 = sub_1AC22664C;
  v124 = sub_1AC2415E4;
  v125 = sub_1AC215C98;
  v126 = sub_1AC215C90;
  v127 = sub_1AC215C90;
  v128 = sub_1AC226658;
  v129 = sub_1AC215C90;
  v130 = sub_1AC215C90;
  v131 = sub_1AC226658;
  v132 = sub_1AC215C90;
  v133 = sub_1AC215C90;
  v134 = sub_1AC215CA4;
  v162 = 0;
  v161 = 0;
  v135 = 0;
  v136 = sub_1AC309E6C();
  v137 = *(v136 - 8);
  v138 = v136 - 8;
  v139 = (*(v137 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v140 = v59 - v139;
  v162 = MEMORY[0x1EEE9AC00](v141);
  v142 = [v162 autoANCSupported];
  v143 = [v141 modeOffSupported];
  if (v142)
  {
    if (v143)
    {
      v111 = type metadata accessor for BTAccessoryListeningMode();
      v112 = sub_1AC30B18C();
      v110 = v0;
      v147 = 1;
      *v0 = sub_1AC23BAF4();
      v146 = 3;
      v110[1] = sub_1AC23BAF4();
      v145 = 4;
      v110[2] = sub_1AC23BAF4();
      v144 = 2;
      v1 = sub_1AC23BAF4();
      v2 = v112;
      v110[3] = v1;
      sub_1AC206300();
      v113 = v2;

      v161 = v113;
      v114 = v113;
    }

    else
    {
      v107 = type metadata accessor for BTAccessoryListeningMode();
      v108 = sub_1AC30B18C();
      v106 = v3;
      v150 = 3;
      *v3 = sub_1AC23BAF4();
      v149 = 4;
      v106[1] = sub_1AC23BAF4();
      v148 = 2;
      v4 = sub_1AC23BAF4();
      v5 = v108;
      v106[2] = v4;
      sub_1AC206300();
      v109 = v5;

      v161 = v109;
      v114 = v109;
    }
  }

  else if (v143)
  {
    v103 = type metadata accessor for BTAccessoryListeningMode();
    v104 = sub_1AC30B18C();
    v102 = v6;
    v153 = 1;
    *v6 = sub_1AC23BAF4();
    v152 = 3;
    v102[1] = sub_1AC23BAF4();
    v151 = 2;
    v7 = sub_1AC23BAF4();
    v8 = v104;
    v102[2] = v7;
    sub_1AC206300();
    v105 = v8;

    v161 = v105;
    v114 = v105;
  }

  else
  {
    v99 = type metadata accessor for BTAccessoryListeningMode();
    v100 = sub_1AC30B18C();
    v98 = v9;
    v160 = 3;
    *v9 = sub_1AC23BAF4();
    v159 = 2;
    v10 = sub_1AC23BAF4();
    v11 = v100;
    v98[1] = v10;
    sub_1AC206300();
    v101 = v11;

    v161 = v101;
    v114 = v101;
  }

  v12 = v140;
  v68 = v114;
  v13 = sub_1AC23BA24();
  (*(v137 + 16))(v12, v13, v136);
  MEMORY[0x1E69E5928](v141);
  v67 = 24;
  v81 = 7;
  v14 = swift_allocObject();
  v15 = v141;
  v70 = v14;
  *(v14 + 16) = v141;
  MEMORY[0x1E69E5928](v15);
  v75 = swift_allocObject();
  *(v75 + 16) = v141;

  v69 = swift_allocObject();
  *(v69 + 16) = v68;

  v80 = 32;
  v16 = swift_allocObject();
  v17 = v69;
  v82 = v16;
  *(v16 + 16) = v115;
  *(v16 + 24) = v17;

  v96 = sub_1AC309E4C();
  v97 = sub_1AC30AD2C();
  v79 = 17;
  v84 = swift_allocObject();
  *(v84 + 16) = 0;
  v85 = swift_allocObject();
  v74 = 4;
  *(v85 + 16) = 4;
  v18 = swift_allocObject();
  v19 = v70;
  v71 = v18;
  *(v18 + 16) = v116;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v71;
  v72 = v20;
  *(v20 + 16) = v117;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  v23 = v72;
  v73 = v22;
  *(v22 + 16) = v118;
  *(v22 + 24) = v23;
  v24 = swift_allocObject();
  v25 = v73;
  v86 = v24;
  *(v24 + 16) = v119;
  *(v24 + 24) = v25;
  v87 = swift_allocObject();
  *(v87 + 16) = 0;
  v88 = swift_allocObject();
  *(v88 + 16) = v74;
  v26 = swift_allocObject();
  v27 = v75;
  v76 = v26;
  *(v26 + 16) = v120;
  *(v26 + 24) = v27;
  v28 = swift_allocObject();
  v29 = v76;
  v77 = v28;
  *(v28 + 16) = v121;
  *(v28 + 24) = v29;
  v30 = swift_allocObject();
  v31 = v77;
  v78 = v30;
  *(v30 + 16) = v122;
  *(v30 + 24) = v31;
  v32 = swift_allocObject();
  v33 = v78;
  v89 = v32;
  *(v32 + 16) = v123;
  *(v32 + 24) = v33;
  v90 = swift_allocObject();
  *(v90 + 16) = 32;
  v91 = swift_allocObject();
  *(v91 + 16) = 8;
  v34 = swift_allocObject();
  v35 = v82;
  v83 = v34;
  *(v34 + 16) = v124;
  *(v34 + 24) = v35;
  v36 = swift_allocObject();
  v37 = v83;
  v93 = v36;
  *(v36 + 16) = v125;
  *(v36 + 24) = v37;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
  v92 = sub_1AC30B18C();
  v94 = v38;

  v39 = v84;
  v40 = v94;
  *v94 = v126;
  v40[1] = v39;

  v41 = v85;
  v42 = v94;
  v94[2] = v127;
  v42[3] = v41;

  v43 = v86;
  v44 = v94;
  v94[4] = v128;
  v44[5] = v43;

  v45 = v87;
  v46 = v94;
  v94[6] = v129;
  v46[7] = v45;

  v47 = v88;
  v48 = v94;
  v94[8] = v130;
  v48[9] = v47;

  v49 = v89;
  v50 = v94;
  v94[10] = v131;
  v50[11] = v49;

  v51 = v90;
  v52 = v94;
  v94[12] = v132;
  v52[13] = v51;

  v53 = v91;
  v54 = v94;
  v94[14] = v133;
  v54[15] = v53;

  v55 = v93;
  v56 = v94;
  v94[16] = v134;
  v56[17] = v55;
  sub_1AC206300();

  if (os_log_type_enabled(v96, v97))
  {
    v57 = v135;
    v60 = sub_1AC30AE6C();
    v59[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
    v61 = sub_1AC213EE4(0);
    v62 = sub_1AC213EE4(1);
    v63 = &v158;
    v158 = v60;
    v64 = &v157;
    v157 = v61;
    v65 = &v156;
    v156 = v62;
    sub_1AC213F38(2, &v158);
    sub_1AC213F38(3, v63);
    v154 = v126;
    v155 = v84;
    sub_1AC213F4C(&v154, v63, v64, v65);
    v66 = v57;
    if (v57)
    {

      __break(1u);
    }

    else
    {
      v154 = v127;
      v155 = v85;
      sub_1AC213F4C(&v154, &v158, &v157, &v156);
      v59[6] = 0;
      v154 = v128;
      v155 = v86;
      sub_1AC213F4C(&v154, &v158, &v157, &v156);
      v59[5] = 0;
      v154 = v129;
      v155 = v87;
      sub_1AC213F4C(&v154, &v158, &v157, &v156);
      v59[4] = 0;
      v154 = v130;
      v155 = v88;
      sub_1AC213F4C(&v154, &v158, &v157, &v156);
      v59[3] = 0;
      v154 = v131;
      v155 = v89;
      sub_1AC213F4C(&v154, &v158, &v157, &v156);
      v59[2] = 0;
      v154 = v132;
      v155 = v90;
      sub_1AC213F4C(&v154, &v158, &v157, &v156);
      v59[1] = 0;
      v154 = v133;
      v155 = v91;
      sub_1AC213F4C(&v154, &v158, &v157, &v156);
      v59[0] = 0;
      v154 = v134;
      v155 = v93;
      sub_1AC213F4C(&v154, &v158, &v157, &v156);
      _os_log_impl(&dword_1AC1C3000, v96, v97, "validModes: autoANCSupported: %{BOOL}d, modeOffSupported:%{BOOL}d, modes:%s", v60, 0x18u);
      sub_1AC213F98(v61);
      sub_1AC213F98(v62);
      sub_1AC30AE4C();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v96);
  (*(v137 + 8))(v140, v136);
  sub_1AC209190();
  return v68;
}

uint64_t type metadata accessor for BTAccessoryListeningMode()
{
  v4 = qword_1EB54C300;
  if (!qword_1EB54C300)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54C300);
      return v1;
    }
  }

  return v4;
}

uint64_t HPCUIListeningModeControl._indexForMode(_:)(unsigned int a1)
{
  v39 = a1;
  v53 = 0;
  v52 = 0;
  v34 = 0;
  v44 = 0;
  v35 = sub_1AC309E6C();
  v36 = *(v35 - 8);
  v37 = v36;
  v2 = MEMORY[0x1EEE9AC00](v39);
  v38 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v2;
  v52 = v1;
  v50[0] = HPCUIListeningModeControl.validModes.getter();
  v49 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C260);
  v41 = sub_1AC2416D4();
  sub_1AC24175C();
  v42 = v50;
  sub_1AC30ACBC();
  sub_1AC209190();
  v43 = v50[1];
  if (v51)
  {
    v4 = v38;
    v5 = sub_1AC23BA24();
    (*(v37 + 16))(v4, v5, v35);
    v29 = sub_1AC309E4C();
    v26 = v29;
    v28 = sub_1AC30AD1C();
    v27 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
    v30 = sub_1AC30B18C();
    if (os_log_type_enabled(v29, v28))
    {
      v6 = v34;
      v17 = sub_1AC30AE6C();
      v13 = v17;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
      v15 = 0;
      v18 = sub_1AC213EE4(0);
      v16 = v18;
      v19 = sub_1AC213EE4(v15);
      v48 = v17;
      v47 = v18;
      v46 = v19;
      v20 = 0;
      v21 = &v48;
      sub_1AC213F38(0, &v48);
      sub_1AC213F38(v20, v21);
      v45 = v30;
      v22 = &v9;
      MEMORY[0x1EEE9AC00](&v9);
      v23 = &v9 - 6;
      *(&v9 - 4) = v7;
      *(&v9 - 3) = &v47;
      *(&v9 - 2) = &v46;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
      sub_1AC218014();
      sub_1AC30AAAC();
      v25 = v6;
      if (v6)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1AC1C3000, v26, v27, "_indexForMode: No valid index found", v13, 2u);
        v11 = 0;
        sub_1AC213F98(v16);
        sub_1AC213F98(v19);
        sub_1AC30AE4C();

        v12 = v25;
      }
    }

    else
    {

      v12 = v34;
    }

    v10 = v12;

    (*(v37 + 8))(v38, v35);
    v31 = 0;
    v32 = v10;
  }

  else
  {
    v33 = v43;
    v44 = v43;
    v31 = v43;
    v32 = v34;
  }

  return v31;
}

Swift::Void __swiftcall HPCUIListeningModeControl.startObservingChanges()()
{
  v22 = sub_1AC241A8C;
  v50 = 0;
  v47 = 0;
  v44 = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C280);
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v1 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C288);
  v29 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v1 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C290);
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v1 - v34;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C298);
  v38 = *(v37 - 8);
  v39 = v37 - 8;
  v40 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x1EEE9AC00](v36);
  v41 = &v1 - v40;
  v50 = v0;
  v42 = [v0 combineListner];
  if (v42)
  {
    v21 = v42;
    v20 = v42;
    v19 = &v43;
    sub_1AC30AEFC();
    sub_1AC241B1C(v19, v48);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v48, 0, sizeof(v48));
    v49 = 0;
  }

  v18 = v49 != 0;
  v17 = v18;
  sub_1AC204664(v48);
  if (!v17)
  {
    v3 = 0x1FAABB000uLL;
    v2 = [v36 0x1FAABB878];
    v16 = sub_1AC3091FC();
    v47 = v16;
    MEMORY[0x1E69E5920](v2);
    v4 = [v36 (v3 + 2168)];
    sub_1AC30923C();
    MEMORY[0x1E69E5920](v4);
    v5 = sub_1AC309F2C();
    (*(v32 + 8))(v35, v31);
    v12 = &v46;
    v46 = v5;
    sub_1AC30966C();
    v6 = sub_1AC30913C();
    (*(v24 + 8))(v27, v23);
    v9 = &v45;
    v45 = v6;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C2A0);
    v7 = sub_1AC2417DC();
    sub_1AC241864();
    sub_1AC309FAC();
    sub_1AC20BCE0();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C2B8);
    v11 = sub_1AC24197C();
    sub_1AC241A04();
    sub_1AC309E7C();
    v14 = swift_allocObject();
    v13 = v14 + 16;
    MEMORY[0x1E69E5928](v36);
    swift_unknownObjectWeakInit();
    MEMORY[0x1E69E5920](v36);

    sub_1AC241A94();
    v15 = sub_1AC309FBC();

    (*(v38 + 8))(v41, v37);
    v44 = v15;

    [v36 setCombineListner_];
    swift_unknownObjectRelease();

    MEMORY[0x1E69E5920](v16);
  }
}

void sub_1AC23E4C4(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v28 = a1;
  v50 = 0;
  v49 = 0;
  v39 = 0;
  v48 = 0;
  v27 = 0;
  v36 = sub_1AC309E6C();
  v30 = v36;
  v31 = *(v36 - 8);
  v35 = v31;
  v32 = v31;
  v2 = MEMORY[0x1EEE9AC00](v28);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v4;
  LOBYTE(v3) = *(v2 + 4);
  v49 = *v2;
  v50 = v3;
  v34 = v5 + 16;
  v48 = v5 + 16;
  v6 = sub_1AC23BA24();
  (*(v35 + 16))(v4, v6, v36);
  v41 = sub_1AC309E4C();
  v37 = v41;
  v40 = sub_1AC30AD2C();
  v38 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
  v42 = sub_1AC30B18C();
  if (os_log_type_enabled(v41, v40))
  {
    v7 = v27;
    v18 = sub_1AC30AE6C();
    v14 = v18;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
    v16 = 0;
    v19 = sub_1AC213EE4(0);
    v17 = v19;
    v20 = sub_1AC213EE4(v16);
    v46 = v18;
    v45 = v19;
    v44 = v20;
    v21 = 0;
    v22 = &v46;
    sub_1AC213F38(0, &v46);
    sub_1AC213F38(v21, v22);
    v43 = v42;
    v23 = &v10;
    MEMORY[0x1EEE9AC00](&v10);
    v24 = &v10 - 6;
    *(&v10 - 4) = v8;
    *(&v10 - 3) = &v45;
    *(&v10 - 2) = &v44;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
    sub_1AC218014();
    sub_1AC30AAAC();
    v26 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1AC1C3000, v37, v38, "$listeningModeOffAllowed $listeningMode: Value Changed! ", v14, 2u);
      v12 = 0;
      sub_1AC213F98(v17);
      sub_1AC213F98(v20);
      sub_1AC30AE4C();

      v13 = v26;
    }
  }

  else
  {

    v13 = v27;
  }

  (*(v32 + 8))(v33, v30);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v9 = Strong;
    sub_1AC206988(&Strong);
    swift_endAccess();
    [v11 resetUI];
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }
}

uint64_t HPCUIListeningModeControl.updateListeningModeForSyncSelection(_:)()
{
  sub_1AC30982C();
  sub_1AC30981C();
  sub_1AC30980C();
}

Swift::Bool __swiftcall HPCUIListeningModeControl.needsResetUI(_:)(UISegmentedControl *a1)
{
  HPCUIListeningModeControl.validModes.getter();
  type metadata accessor for BTAccessoryListeningMode();
  v3 = sub_1AC30AB4C();

  return v3 != [(UISegmentedControl *)a1 numberOfSegments];
}

uint64_t sub_1AC23EBF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  *a2 = a1;
}

uint64_t sub_1AC23EC48()
{
  v1 = sub_1AC23EC3C();
  swift_beginAccess();
  v2 = *v1;
  swift_endAccess();
  return v2;
}

uint64_t sub_1AC23EC9C(char a1)
{
  v2 = sub_1AC23EC3C();
  swift_beginAccess();
  *v2 = a1;
  return swift_endAccess();
}

uint64_t (*sub_1AC23ECF0())()
{
  sub_1AC23EC3C();
  swift_beginAccess();
  return sub_1AC20949C;
}

uint64_t sub_1AC23ED4C()
{
  v9 = 0;
  v13 = v0;
  MEMORY[0x1E69E5928](v0);
  key = sub_1AC23EC3C();
  swift_beginAccess();
  v6 = objc_getAssociatedObject(v0, key);
  swift_endAccess();
  swift_unknownObjectRelease();
  if (v6)
  {
    sub_1AC30AEFC();
    sub_1AC241B1C(v7, &v10);
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0uLL;
    v11 = 0uLL;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C2D8);
    if (swift_dynamicCast())
    {
      v4 = v8;
    }

    else
    {
      v4 = 0;
    }

    v3 = v4;
  }

  else
  {
    sub_1AC204664(v12);
    v3 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  v9 = v3;
  return v3;
}

uint64_t sub_1AC23EF08(uint64_t a1)
{
  MEMORY[0x1E69E5928](v1);
  key = sub_1AC23EC3C();

  if (a1)
  {
    sub_1AC309EAC();
    v3 = sub_1AC30A81C();

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  swift_beginAccess();
  objc_setAssociatedObject(v1, key, v4, 1);
  swift_endAccess();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

Swift::Bool __swiftcall HPCUIListeningModeControl.farFieldSessionOnGoing()()
{
  v5 = v0;
  v3 = [v0 device];
  sub_1AC30915C();
  MEMORY[0x1E69E5920](v3);
  v4 = sub_1AC30987C();
  if (v4)
  {
    v2 = v4;
    MEMORY[0x1E69E5928](v4);
    sub_1AC206988(&v4);

    [v2 farFieldSessionOnGoing];
    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    sub_1AC206988(&v4);
  }

  type metadata accessor for AAMultiState();
  sub_1AC21B624();
  return sub_1AC30B1BC() & 1;
}

Swift::String __swiftcall HPCUIListeningModeControl.farFieldOngoingErrorString()()
{
  v62 = 0;
  v41 = 0;
  v43 = sub_1AC309E6C();
  v44 = *(v43 - 8);
  v45 = v44;
  v0 = MEMORY[0x1EEE9AC00](v42);
  v46 = v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v0;
  v47 = [v0 device];
  sub_1AC30929C();

  if (v53)
  {
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C128);
    if (!swift_dynamicCast())
    {
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
    }
  }

  else
  {
    sub_1AC204664(v52);
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
  }

  if (v57)
  {
    v34 = __dst;
    sub_1AC2051E4(&v54, __dst);
    v32 = v60;
    v31 = v61;
    __swift_project_boxed_opaque_existential_1(v34, v60);
    v2 = *(v31 + 8);
    v33 = &v63;
    v2(v32);
    v35 = v64;
    v36 = v65;

    sub_1AC241B38();
    __swift_destroy_boxed_opaque_existential_1(v34);
    v37 = v35;
    v38 = v36;
    v39 = v41;
  }

  else
  {
    v3 = v46;
    sub_1AC204664(&v54);
    v4 = sub_1AC250850();
    (*(v45 + 16))(v3, v4, v43);
    v29 = sub_1AC309E4C();
    v26 = v29;
    v28 = sub_1AC30AD1C();
    v27 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
    v30 = sub_1AC30B18C();
    if (os_log_type_enabled(v29, v28))
    {
      v5 = v41;
      v17 = sub_1AC30AE6C();
      v13 = v17;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
      v15 = 0;
      v18 = sub_1AC213EE4(0);
      v16 = v18;
      v19 = sub_1AC213EE4(v15);
      v51 = v17;
      v50 = v18;
      v49 = v19;
      v20 = 0;
      v21 = &v51;
      sub_1AC213F38(0, &v51);
      sub_1AC213F38(v20, v21);
      v48 = v30;
      v22 = v11;
      MEMORY[0x1EEE9AC00](v11);
      v23 = &v11[-6];
      v11[-4] = v6;
      v11[-3] = &v50;
      v11[-2] = &v49;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
      sub_1AC218014();
      sub_1AC30AAAC();
      v25 = v5;
      if (v5)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1AC1C3000, v26, v27, "ListeningModeControl: no feature content", v13, 2u);
        v11[1] = 0;
        sub_1AC213F98(v16);
        sub_1AC213F98(v19);
        sub_1AC30AE4C();

        v12 = v25;
      }
    }

    else
    {

      v12 = v41;
    }

    v11[0] = v12;

    (*(v45 + 8))(v46, v43);
    v37 = sub_1AC30A9DC();
    v38 = v7;
    v39 = v11[0];
  }

  v8 = v37;
  v9 = v38;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

Swift::Bool __swiftcall HPCUIListeningModeControl.updateModeOffSupported()()
{
  v48 = sub_1AC240250;
  v49 = sub_1AC215C98;
  v50 = sub_1AC215C90;
  v51 = sub_1AC215C90;
  v52 = sub_1AC215CA4;
  v78 = 0;
  v53 = 0;
  v63 = 0;
  v55 = sub_1AC309E6C();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v59 = v15 - v58;
  v78 = MEMORY[0x1EEE9AC00](v54);
  v60 = [v78 device];
  v61 = sub_1AC3091FC();
  MEMORY[0x1E69E5920](v60);
  v62 = [v61 listeningModeOffAllowed];
  MEMORY[0x1E69E5920](v61);
  v66 = &v77;
  v77 = v62;
  v64 = &v76;
  v76 = 0;
  v65 = type metadata accessor for HMMultiState();
  sub_1AC241864();
  if (sub_1AC30A89C())
  {
    v1 = v59;
    v2 = sub_1AC23BA24();
    (*(v56 + 16))(v1, v2, v55);
    v33 = sub_1AC309E4C();
    v34 = sub_1AC30AD1C();
    v23 = 17;
    v25 = 7;
    v27 = swift_allocObject();
    *(v27 + 16) = 32;
    v28 = swift_allocObject();
    *(v28 + 16) = 8;
    v24 = 32;
    v3 = swift_allocObject();
    v26 = v3;
    *(v3 + 16) = v48;
    *(v3 + 24) = 0;
    v4 = swift_allocObject();
    v5 = v26;
    v30 = v4;
    *(v4 + 16) = v49;
    *(v4 + 24) = v5;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
    v29 = sub_1AC30B18C();
    v31 = v6;

    v7 = v27;
    v8 = v31;
    *v31 = v50;
    v8[1] = v7;

    v9 = v28;
    v10 = v31;
    v31[2] = v51;
    v10[3] = v9;

    v11 = v30;
    v12 = v31;
    v31[4] = v52;
    v12[5] = v11;
    sub_1AC206300();

    if (os_log_type_enabled(v33, v34))
    {
      v13 = v53;
      v16 = sub_1AC30AE6C();
      v15[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
      v17 = sub_1AC213EE4(0);
      v18 = sub_1AC213EE4(1);
      v19 = &v75;
      v75 = v16;
      v20 = &v74;
      v74 = v17;
      v21 = &v73;
      v73 = v18;
      sub_1AC213F38(2, &v75);
      sub_1AC213F38(1, v19);
      v71 = v50;
      v72 = v27;
      sub_1AC213F4C(&v71, v19, v20, v21);
      v22 = v13;
      if (v13)
      {

        __break(1u);
      }

      else
      {
        v71 = v51;
        v72 = v28;
        sub_1AC213F4C(&v71, &v75, &v74, &v73);
        v15[0] = 0;
        v71 = v52;
        v72 = v30;
        sub_1AC213F4C(&v71, &v75, &v74, &v73);
        _os_log_impl(&dword_1AC1C3000, v33, v34, "%s: listeningModeOffAllowed is unknown, return true!", v16, 0xCu);
        sub_1AC213F98(v17);
        sub_1AC213F98(v18);
        sub_1AC30AE4C();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v33);
    (*(v56 + 8))(v59, v55);
    v36 = 1;
  }

  else
  {
    v41 = [v54 device];
    v42 = sub_1AC3091FC();
    MEMORY[0x1E69E5920](v41);
    v43 = sub_1AC30964C();
    MEMORY[0x1E69E5920](v42);
    v45 = &v70;
    v70 = v43;
    v44 = &v69;
    v69 = 1;
    v46 = sub_1AC241B7C();
    v47 = sub_1AC30B1BC();
    *&v0 = MEMORY[0x1E69E5928](v54).n128_u64[0];
    if (v47)
    {
      v37 = [v54 device];
      v38 = sub_1AC3091FC();
      MEMORY[0x1E69E5920](v37);
      v39 = [v38 listeningModeOffAllowed];
      MEMORY[0x1E69E5920](v38);
      v68 = v39;
      v67 = 1;
      v40 = sub_1AC30B1BC();
    }

    else
    {
      v40 = 0;
    }

    v35 = v40;
    MEMORY[0x1E69E5920](v54);
    v36 = v35;
  }

  return v36 & 1;
}

uint64_t sub_1AC2402F0@<X0>(void *a1@<X8>)
{
  v34 = a1;
  v54 = 0;
  v35 = 0;
  v36 = sub_1AC309E6C();
  v37 = *(v36 - 8);
  v38 = v37;
  MEMORY[0x1EEE9AC00](v36 - 8);
  v39 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v1;
  v3 = v1;
  v41 = [v40 device];

  sub_1AC30929C();
  if (v47)
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C128);
    if (!swift_dynamicCast())
    {
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
    }
  }

  else
  {
    sub_1AC204664(v46);
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
  }

  if (v51)
  {
    v31 = __dst;
    sub_1AC2051E4(&v48, __dst);
    sub_1AC241BFC(v31, v34);
    __swift_destroy_boxed_opaque_existential_1(v31);
    return v35;
  }

  else
  {
    v4 = v39;
    sub_1AC204664(&v48);
    v5 = sub_1AC250850();
    (*(v38 + 16))(v4, v5, v36);
    v29 = sub_1AC309E4C();
    v26 = v29;
    v28 = sub_1AC30AD1C();
    v27 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
    v30 = sub_1AC30B18C();
    if (os_log_type_enabled(v29, v28))
    {
      v6 = v35;
      v17 = sub_1AC30AE6C();
      v13 = v17;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
      v15 = 0;
      v18 = sub_1AC213EE4(0);
      v16 = v18;
      v19 = sub_1AC213EE4(v15);
      v45 = v17;
      v44 = v18;
      v43 = v19;
      v20 = 0;
      v21 = &v45;
      sub_1AC213F38(0, &v45);
      sub_1AC213F38(v20, v21);
      v42 = v30;
      v22 = v11;
      MEMORY[0x1EEE9AC00](v11);
      v23 = &v11[-6];
      v11[-4] = v7;
      v11[-3] = &v44;
      v11[-2] = &v43;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
      sub_1AC218014();
      sub_1AC30AAAC();
      v25 = v6;
      if (v6)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1AC1C3000, v26, v27, "ListeningModeControl: no feature content", v13, 2u);
        v11[1] = 0;
        sub_1AC213F98(v16);
        sub_1AC213F98(v19);
        sub_1AC30AE4C();

        v12 = v25;
      }
    }

    else
    {

      v12 = v35;
    }

    v11[0] = v12;

    (*(v38 + 8))(v39, v36);
    v8 = v34;
    v9 = v11[0];
    *v34 = 0;
    v8[1] = 0;
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = 0;
    return v9;
  }
}

uint64_t sub_1AC240890()
{
  v14 = v0;
  sub_1AC2402F0(v9);
  if (v10)
  {
    v4 = v10;
    v3 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v3 + 8))(v4);
    v5 = v15;
    v6 = v16;

    sub_1AC241B38();
    __swift_destroy_boxed_opaque_existential_1(v9);
    v7 = v5;
    v8 = v6;
  }

  else
  {
    sub_1AC204664(v9);
    v7 = 0;
    v8 = 0;
  }

  if (v8)
  {
    v12 = v7;
    v13 = v8;
  }

  else
  {
    v12 = sub_1AC30A9DC();
    v13 = v1;
  }

  return v12;
}

uint64_t sub_1AC240A70()
{
  v14 = v0;
  sub_1AC2402F0(v9);
  if (v10)
  {
    v4 = v10;
    v3 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v3 + 8))(v4);
    v5 = v15;
    v6 = v16;

    sub_1AC241B38();
    __swift_destroy_boxed_opaque_existential_1(v9);
    v7 = v5;
    v8 = v6;
  }

  else
  {
    sub_1AC204664(v9);
    v7 = 0;
    v8 = 0;
  }

  if (v8)
  {
    v12 = v7;
    v13 = v8;
  }

  else
  {
    v12 = sub_1AC30A9DC();
    v13 = v1;
  }

  return v12;
}

id sub_1AC240C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = objc_allocWithZone(v4);
  if (a3)
  {
    v9 = sub_1AC30A91C();

    v5 = [v13 initWithStyle:a1 reuseIdentifier:v9 specifier:?];
  }

  else
  {
    v5 = [v13 initWithStyle:a1 reuseIdentifier:0 specifier:?];
  }

  v8 = v5;
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](v7);
  return v8;
}

id sub_1AC240D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v19 = a1;
  v17 = a2;
  v18 = a3;
  v16 = a4;
  v20 = v4;

  if (a3)
  {
    v8 = sub_1AC30A91C();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v15.receiver = v4;
  v15.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v15, sel_initWithStyle_reuseIdentifier_specifier_, a1);
  MEMORY[0x1E69E5920](v9);
  if (v7)
  {
    MEMORY[0x1E69E5928](v7);
    v20 = v7;
    MEMORY[0x1E69E5920](a4);

    MEMORY[0x1E69E5920](v20);
    return v7;
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    MEMORY[0x1E69E5920](a4);

    return 0;
  }
}

id sub_1AC240FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = objc_allocWithZone(v3);
  if (a3)
  {
    v6 = sub_1AC30A91C();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v10 initWithStyle:a1 reuseIdentifier:?];
  MEMORY[0x1E69E5920](v7);
  return v5;
}

id sub_1AC241074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v16 = a1;
  v14 = a2;
  v15 = a3;
  v17 = v3;

  if (a3)
  {
    v7 = sub_1AC30A91C();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v13.receiver = v3;
  v13.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_, a1, v8);
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5928](v6);
  v17 = v6;

  MEMORY[0x1E69E5920](v17);
  return v6;
}

id sub_1AC241270(uint64_t a1)
{
  v7 = a1;
  v8 = v1;
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v6, sel_initWithCoder_);
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

id sub_1AC241394()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AC241478@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1AC2414B8@<X0>(_DWORD *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1AC241500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](a1);
  v10 = v7 - v7[0];
  v4();
  v12 = sub_1AC30B13C();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t sub_1AC2415E4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C260);
  v1 = sub_1AC24164C();

  return sub_1AC241500(v5, v3, v4, v1);
}

unint64_t sub_1AC24164C()
{
  v2 = qword_1EB54C268;
  if (!qword_1EB54C268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C260);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C268);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2416D4()
{
  v2 = qword_1EB54C270;
  if (!qword_1EB54C270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C260);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C270);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC24175C()
{
  v2 = qword_1EB54C278;
  if (!qword_1EB54C278)
  {
    type metadata accessor for BTAccessoryListeningMode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C278);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2417DC()
{
  v2 = qword_1EB54C2A8;
  if (!qword_1EB54C2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C2A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C2A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC241864()
{
  v2 = qword_1EB54C2B0;
  if (!qword_1EB54C2B0)
  {
    type metadata accessor for HMMultiState();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C2B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for HMMultiState()
{
  v4 = qword_1EB54C2F8;
  if (!qword_1EB54C2F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54C2F8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1AC24197C()
{
  v2 = qword_1EB54C2C0;
  if (!qword_1EB54C2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C2B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C2C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC241A04()
{
  v2 = qword_1EB54C2C8;
  if (!qword_1EB54C2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C288);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C2C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC241A94()
{
  v2 = qword_1EB54C2D0;
  if (!qword_1EB54C2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C298);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C2D0);
    return WitnessTable;
  }

  return v2;
}

__n128 sub_1AC241B1C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1AC241B38()
{
}

unint64_t sub_1AC241B7C()
{
  v2 = qword_1EB54C2E0;
  if (!qword_1EB54C2E0)
  {
    type metadata accessor for HMMultiState();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C2E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC241BFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

unint64_t sub_1AC241C80()
{
  v2 = qword_1EB54C2E8;
  if (!qword_1EB54C2E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C2E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t _s4ModeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFB)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 4) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 251;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 5;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s4ModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFB)
  {
    v5 = ((a3 + 4) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFB)
  {
    v4 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t _s14AssociatedKeysVwet(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *_s14AssociatedKeysVwst(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for CBListeningMode()
{
  v4 = qword_1EB54C2F0;
  if (!qword_1EB54C2F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54C2F0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1AC242480()
{
  v2 = qword_1EB54C308;
  if (!qword_1EB54C308)
  {
    type metadata accessor for BTAccessoryListeningMode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C308);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC242530()
{
  result = sub_1AC30A9DC();
  qword_1EB54E988 = result;
  qword_1EB54E990 = v1;
  return result;
}

uint64_t *sub_1AC242574()
{
  if (qword_1EB54E980 != -1)
  {
    swift_once();
  }

  return &qword_1EB54E988;
}

uint64_t sub_1AC2425D4()
{
  v1 = *sub_1AC242574();

  return v1;
}

uint64_t sub_1AC242610()
{
  result = sub_1AC30A9DC();
  qword_1EB54E9A0 = result;
  qword_1EB54E9A8 = v1;
  return result;
}

uint64_t *sub_1AC242654()
{
  if (qword_1EB54E998 != -1)
  {
    swift_once();
  }

  return &qword_1EB54E9A0;
}

uint64_t sub_1AC2426B4()
{
  v1 = *sub_1AC242654();

  return v1;
}

uint64_t sub_1AC2426F0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v33 = a1;
  v32 = a2;
  v30 = a3;
  v31 = a4;
  v17 = sub_1AC30917C();
  v18 = [v17 btAddressData];
  if (v18)
  {
    v11 = sub_1AC30903C();
    v12 = v4;
    MEMORY[0x1E69E5920](v18);
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v13 = 0;
    v14 = 0xF000000000000000;
  }

  if ((v14 & 0xF000000000000000) == 0xF000000000000000)
  {
    MEMORY[0x1E69E5920](v17);
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v27 = v13;
    v28 = v14;
    MEMORY[0x1E69E5920](v17);
    sub_1AC2429EC(v13, v14, a2, a1);
    v10 = sub_1AC3092FC();
    MEMORY[0x1E69E5928](a1);
    if (v10)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_1AC3092FC();
    }

    MEMORY[0x1E69E5920](a1);
    v26 = v9 & 1;
    sub_1AC30929C();
    if (v20)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C310);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
      }
    }

    else
    {
      sub_1AC204664(v19);
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
    }

    v6 = v24 != 0;
    sub_1AC204664(&v21);
    sub_1AC242F94(v13, v14);
    v7 = v6;
    v8 = v9;
  }

  LOBYTE(v29) = v7;
  HIBYTE(v29) = v8 & 1;
  return v29;
}

uint64_t sub_1AC2429EC(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v38 = a4;
  v37 = a3;
  v40 = a2;
  v39 = a1;
  v49 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v36 = 0;
  v46 = sub_1AC309E6C();
  v41 = v46;
  v42 = *(v46 - 8);
  v45 = v42;
  v43 = v42;
  v4 = MEMORY[0x1EEE9AC00](v39);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v6;
  v66 = v4;
  v67 = v7;
  v65 = v8;
  v64 = v9;
  v10 = sub_1AC250850();
  (*(v45 + 16))(v6, v10, v46);
  v51 = sub_1AC309E4C();
  v47 = v51;
  v50 = sub_1AC30AD1C();
  v48 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
  v52 = sub_1AC30B18C();
  if (os_log_type_enabled(v51, v50))
  {
    v11 = v36;
    v27 = sub_1AC30AE6C();
    v23 = v27;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
    v25 = 0;
    v28 = sub_1AC213EE4(0);
    v26 = v28;
    v29 = sub_1AC213EE4(v25);
    v56 = v27;
    v55 = v28;
    v54 = v29;
    v30 = 0;
    v31 = &v56;
    sub_1AC213F38(0, &v56);
    sub_1AC213F38(v30, v31);
    v53 = v52;
    v32 = &v18;
    MEMORY[0x1EEE9AC00](&v18);
    v33 = (&v18 - 6);
    *(&v18 - 4) = v12;
    *(&v18 - 3) = &v55;
    *(&v18 - 2) = &v54;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
    sub_1AC218014();
    sub_1AC30AAAC();
    v35 = v11;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1AC1C3000, v47, v48, "FindMy: refreshFindMyStatusAsync", v23, 2u);
      v21 = 0;
      sub_1AC213F98(v26);
      sub_1AC213F98(v29);
      sub_1AC30AE4C();

      v22 = v35;
    }
  }

  else
  {

    v22 = v36;
  }

  (*(v43 + 8))(v44, v41);
  v20 = sub_1AC30943C();
  swift_getObjectType();
  sub_1AC243F00(v39, v40);
  v19 = sub_1AC30902C();
  sub_1AC242F94(v39, v40);
  v13 = v38;
  v14 = v37;
  v15 = swift_allocObject();
  v16 = v37;
  *(v15 + 16) = v38;
  *(v15 + 24) = v16;
  v62 = sub_1AC246A90;
  v63 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = 0;
  v60 = sub_1AC246C78;
  v61 = &block_descriptor_0;
  v18 = _Block_copy(&aBlock);

  [v20 fetchFindMyNetworkStatusForMACAddress:v19 completion:v18];
  _Block_release(v18);

  return swift_unknownObjectRelease();
}

uint64_t sub_1AC242F94(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

uint64_t sub_1AC243010(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v156 = a4;
  v155 = a3;
  v157 = a2;
  v145 = a1;
  v150 = 0;
  v205 = 0;
  v204 = 0;
  v203 = 0;
  v202 = 0;
  v201 = 0;
  v200 = 0;
  v189 = 0;
  v186 = 0;
  v185 = 0;
  v182 = 0;
  v181 = 0;
  v180 = 0;
  v146 = sub_1AC309AAC();
  v147 = *(v146 - 8);
  v148 = v147;
  MEMORY[0x1EEE9AC00](0);
  v149 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1AC30A90C();
  v152 = *(v151 - 8);
  v153 = v152;
  MEMORY[0x1EEE9AC00](v150);
  v154 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_1AC30A8EC();
  v159 = *(v158 - 8);
  v160 = v159;
  v162 = v159[8];
  MEMORY[0x1EEE9AC00](v158 - 8);
  v164 = (v162 + 15) & 0xFFFFFFFFFFFFFFF0;
  v161 = v56 - v164;
  MEMORY[0x1EEE9AC00](v56 - v164);
  v163 = v56 - v164;
  MEMORY[0x1EEE9AC00](v56 - v164);
  v165 = v56 - v164;
  v205 = a1;
  v204 = v7;
  v202 = v8;
  v203 = v9;
  v166 = sub_1AC30917C();
  v167 = [v166 btAddressData];
  if (v167)
  {
    v144 = v167;
    v139 = v167;
    v140 = sub_1AC30903C();
    v141 = v10;

    v142 = v140;
    v143 = v141;
  }

  else
  {
    v142 = 0;
    v143 = 0xF000000000000000;
  }

  v137 = v143;
  v138 = v142;
  if (v143 >> 60 == 15)
  {

    v56[1] = 0;
    v56[2] = sub_1AC215CB0();
    return sub_1AC30B18C();
  }

  else
  {
    v135 = v138;
    v136 = v137;
    v133 = v137;
    v134 = v138;
    v200 = v138;
    v201 = v137;

    sub_1AC30929C();
    if (v191)
    {
      v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C310);
      if (!swift_dynamicCast())
      {
        v192 = 0;
        v193 = 0;
        v194 = 0;
        v195 = 0;
        v196 = 0;
      }
    }

    else
    {
      sub_1AC204664(v190);
      v192 = 0;
      v193 = 0;
      v194 = 0;
      v195 = 0;
      v196 = 0;
    }

    if (v195)
    {
      v103 = __dst;
      sub_1AC2051E4(&v192, __dst);
      v91 = sub_1AC30943C();
      v189 = v91;
      v187 = v155;
      v188 = v156;
      v120 = 1;
      v101 = 1;
      sub_1AC30A8DC();
      sub_1AC30A9DC();
      v92 = v11;
      sub_1AC30A8CC();

      v94 = v198;
      v93 = v199;
      __swift_project_boxed_opaque_existential_1(v103, v198);
      (*(*(v93 + 8) + 24))(v94);
      v95 = v12;
      sub_1AC30A8BC();

      sub_1AC30A9DC();
      v96 = v13;
      sub_1AC30A8CC();

      v109 = v160[2];
      v108 = v160 + 2;
      v109(v163, v165, v158);
      v111 = v160[4];
      v110 = v160 + 4;
      v111(v161, v163, v158);
      v113 = v160[1];
      v112 = v160 + 1;
      v113(v165, v158);
      sub_1AC30A8FC();
      v114 = &unk_1F20F33C8;
      v115 = &off_1F20F3350;
      v124 = sub_1AC215DE8(v154, &unk_1F20F33C8);
      v127 = v14;
      v97 = v124;
      v98 = v14;
      v117 = *(v153 + 8);
      v116 = v153 + 8;
      v99 = v117;
      v100 = (v153 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v117(v154, v151);
      v185 = v124;
      v186 = v127;
      v183 = v155;
      v184 = v156;
      sub_1AC30A8DC();
      sub_1AC30A9DC();
      v102 = v15;
      sub_1AC30A8CC();

      v105 = v198;
      v104 = v199;
      __swift_project_boxed_opaque_existential_1(v103, v198);
      (*(*(v104 + 8) + 24))(v105);
      v106 = v16;
      sub_1AC30A8BC();

      sub_1AC30A9DC();
      v107 = v17;
      sub_1AC30A8CC();

      v109(v163, v165, v158);
      v111(v161, v163, v158);
      v113(v165, v158);
      sub_1AC30A8FC();
      v123 = sub_1AC215DE8(v154, v114);
      v128 = v18;
      v118 = v123;
      v119 = v18;
      v117(v154, v151);
      v181 = v123;
      v182 = v128;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
      v121 = sub_1AC30A9DC();
      v122 = v19;
      sub_1AC205220();
      v129 = sub_1AC309D3C();
      v20 = v145;

      v125 = v56;
      v21 = MEMORY[0x1EEE9AC00](v123);
      v51 = v22;
      v52 = v124;
      v53 = v127;
      v54 = v21;
      v55 = v23;
      v130 = sub_1AC309CDC();
      v126 = v130;

      v180 = v130;
      v131 = sub_1AC3092FC();
      v24 = v145;
      if (v131)
      {
        v90 = sub_1AC3091AC();
      }

      else
      {
        v90 = 0;
      }

      v89 = v90;

      if (v89)
      {
        v75 = 1;
        v85 = sub_1AC30A9DC();
        v81 = v25;
        v172 = v155;
        v173 = v156;
        sub_1AC30A9DC();
        sub_1AC30A8AC();
        v26 = sub_1AC215DE8(v154, &unk_1F20F33C8);
        v27 = v126;
        v82 = v26;
        v83 = v28;
        v99(v154, v151);
        v84 = 0;
        v168 = 0;
        v169 = 0;
        v170 = 0;
        v171 = 0;
        v29 = v145;
        v76 = 24;
        v78 = 7;
        v80 = swift_allocObject();
        *(v80 + 16) = v145;
        v87 = swift_allocObject();
        v77 = v87 + 16;
        v30 = v157;
        swift_unknownObjectWeakInit();

        v31 = v145;

        v32 = swift_allocObject();
        v33 = v97;
        v34 = v98;
        v35 = v118;
        v36 = v119;
        v37 = v32;
        v38 = v87;
        v79 = v37;
        *(v37 + 2) = v145;
        *(v37 + 3) = v27;
        *(v37 + 4) = v33;
        *(v37 + 5) = v34;
        *(v37 + 6) = v35;
        *(v37 + 7) = v36;
        *(v37 + 8) = v38;
        v39 = sub_1AC20599C();
        v86 = &v47;
        v55 = v84;
        v54 = v84;
        v53 = v79;
        v52 = sub_1AC2472E8;
        v51 = v80;
        v50 = sub_1AC2472E0;
        v49 = v84;
        v48 = v39 & 1;
        v47 = v84;
        sub_1AC309A9C();

        v88 = sub_1AC309D1C();
        (*(v148 + 8))(v149, v146);
      }

      if (sub_1AC3092FC())
      {
        v178 = v155;
        v179 = v156;
        sub_1AC30A9DC();
        sub_1AC30A8AC();
        v69 = sub_1AC215DE8(v154, &unk_1F20F33C8);
        v70 = v40;
        v99(v154, v151);
        v71 = 0;
        v174 = 0;
        v175 = 0;
        v176 = 0;
        v177 = 0;
        v67 = 7;
        v73 = swift_allocObject();
        v66 = v73 + 16;
        v41 = v157;
        swift_unknownObjectWeakInit();

        v42 = v145;

        v43 = swift_allocObject();
        v44 = v73;
        v68 = v43;
        *(v43 + 16) = v145;
        *(v43 + 24) = v44;
        v45 = sub_1AC20599C();
        v72 = &v47;
        v55 = v68;
        v54 = sub_1AC2472D4;
        v53 = v71;
        v52 = v71;
        v51 = v71;
        v50 = v71;
        v49 = v71;
        v48 = v45 & 1;
        v47 = v71;
        sub_1AC309A9C();

        v74 = sub_1AC309D1C();
        (*(v148 + 8))(v149, v146);
      }

      v64 = sub_1AC309D2C();
      v62 = sub_1AC215CB0();
      v63 = v62;
      v65 = sub_1AC30AB4C();

      if (v65 < 2)
      {
        v58 = sub_1AC30B18C();
        v59 = v58;

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1(__dst);
        sub_1AC242F94(v134, v133);
        return v59;
      }

      else
      {
        v60 = sub_1AC309D2C();

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1(__dst);
        sub_1AC242F94(v134, v133);
        return v60;
      }
    }

    else
    {
      sub_1AC204664(&v192);
      v56[3] = 0;
      v56[4] = sub_1AC215CB0();
      v57 = sub_1AC30B18C();
      sub_1AC242F94(v134, v133);
      return v57;
    }
  }
}

uint64_t sub_1AC243F00(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

uint64_t sub_1AC243F7C(void *a1)
{
  sub_1AC30940C();

  v4 = sub_1AC30A91C();

  v2 = *MEMORY[0x1E69C5900];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C5900]);
  sub_1AC30A92C();
  v3 = sub_1AC30A91C();

  MEMORY[0x1E69E5920](v2);
  [a1 setProperty:v4 forKey:v3];
  MEMORY[0x1E69E5920](v3);
  return swift_unknownObjectRelease();
}

id sub_1AC2440CC()
{
  sub_1AC2068B8();
  v0 = sub_1AC30940C();
  return sub_1AC244124(v0 & 1);
}

uint64_t sub_1AC244168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33 = a1;
  v30 = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v40 = a6;
  v41 = a7;
  v42 = a8;
  v43 = a9;
  v32 = 0;
  v46 = &unk_1AC311388;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v51 = 0;
  v52 = 0;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  v47 = 0;
  v31 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C318) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v45 = &v30 - v31;
  v56 = MEMORY[0x1EEE9AC00](v33);
  v55 = v10;
  v54 = a3;
  v53 = v11;
  v51 = v12;
  v52 = v13;
  v49 = v14;
  v50 = v15;
  v48 = v16 + 16;
  swift_unknownObjectRetain();
  objc_opt_self();
  v34 = swift_dynamicCastObjCClassUnconditional();
  v35 = [v34 BOOLValue];
  v36 = 1;
  v47 = v35 & 1;
  MEMORY[0x1E69E5920](v34);
  sub_1AC30941C();
  sub_1AC30952C();
  v44 = 0;
  v17 = sub_1AC30ABDC();
  (*(*(v17 - 8) + 56))(v45, v36);
  MEMORY[0x1E69E5928](v37);

  v18 = swift_allocObject();
  v19 = v37;
  v20 = v38;
  v21 = v39;
  v22 = v40;
  v23 = v41;
  v24 = v42;
  v25 = v43;
  v26 = v44;
  v27 = v45;
  v28 = v46;
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v19;
  v18[5] = v20;
  v18[6] = v21;
  v18[7] = v22;
  v18[8] = v23;
  v18[9] = v24;
  v18[10] = v25;
  sub_1AC244BA8(v26, v26, v27, v28, v18, MEMORY[0x1E69E7CA8] + 8);
}