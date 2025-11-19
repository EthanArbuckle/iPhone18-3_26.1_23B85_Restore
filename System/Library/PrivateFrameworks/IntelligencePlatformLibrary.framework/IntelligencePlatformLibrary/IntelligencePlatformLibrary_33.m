uint64_t sub_1936AF1D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED5118F8);
  v5 = __swift_project_value_buffer(v4, qword_1ED5118F8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.AdAttributionKit.AggregatedReporting.SystemReportedPurchase.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:500 maxEventCount:12960000.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_53 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5118F8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40600, &qword_19397CDD0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.AdAttributionKit.AggregatedReporting.SystemReportedPurchase.attribute(_:)(void (*a1)(void))
{
  result = sub_1936AF5DC(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936AF624(void (*a1)(void))
{
  result = sub_1936AF5DC(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936AF654(uint64_t a1)
{
  result = sub_1936AF67C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1936AF67C()
{
  result = qword_1ED503200;
  if (!qword_1ED503200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED503200);
  }

  return result;
}

_BYTE *_s22SystemReportedPurchaseOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AdAttributionKitDeveloperReportedPurchase.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v28 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v28);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40608, &qword_19397CE58);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v27 - v21;
  sub_1936AF974(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE40608, &qword_19397CE58);
  sub_19393C250();
  (*(v4 + 8))(v9, v28);
  sub_19344E6DC(v22, &qword_1EAE40608, &qword_19397CE58);
  OUTLINED_FUNCTION_27();
  result._object = v25;
  result._countAndFlagsBits = v24;
  return result;
}

uint64_t sub_1936AF974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static AdAttributionKitDeveloperReportedPurchase.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_5_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40608, &qword_19397CE58);
  OUTLINED_FUNCTION_4_1(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v33, &qword_1EAE40608, &qword_19397CE58);
  sub_19393C260();
  if (!v20)
  {
    sub_1936AFB08(v32, v24);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1936AFB08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static AdAttributionKitDeveloperReportedPurchase.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v39 = v2;
  v40 = v1;
  v38 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40608, &qword_19397CE58);
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v16 = sub_19393C0C0();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v17);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v37 - v25;
  if (*sub_1936B175C() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    (*(v19 + 16))(v24, v26, v16);
    sub_193450688(v9, v7);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v27, v28, v29);
    sub_19393C280();
    (*(v19 + 8))(v26, v16);
    if (!v0)
    {
      v31 = v39;
      sub_1936AFB08(v15, v39);
      v32 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase();
      v33 = *(v32 + 20);
      sub_19344E6DC(v31 + v33, &qword_1EAE3A9E8, &qword_19394F800);
      v34 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v34);
      (*(v35 + 16))(v31 + v33, v38, v34);
      __swift_storeEnumTagSinglePayload(v31 + v33, 0, 1, v34);
      v36 = *(v32 + 24);
      sub_19344E6DC(v31 + v36, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v40, v31 + v36);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v30 = v5;
    *(v30 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t AdAttributionKitDeveloperReportedPurchase.serialize()()
{
  v1 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40608, &qword_19397CE58);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1936AF974(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE40608, &qword_19397CE58);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE40608, &qword_19397CE58);
  return v15;
}

id static AdAttributionKitDeveloperReportedPurchase.columns.getter()
{
  v117 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v11, v12, v13, v14, v0, 5, 0);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v24 = OUTLINED_FUNCTION_2_4(inited, v17, v18, v19, v20, v21, v22, v23, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v24, v25, v26, v27, v28, v29, v30, v31, v32);
  v33 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v33);
  v34 = OUTLINED_FUNCTION_21_4();
  result = sub_19343D150(v34, 0xEC00000044496E6FLL, 2, 0, v0, 13, 0);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_69_3(result);
  v35 = swift_initStackObject();
  v43 = OUTLINED_FUNCTION_2_4(v35, v36, v37, v38, v39, v40, v41, v42, v112);
  OUTLINED_FUNCTION_5_10(v43, v44, v45, v46, v47, v48, v49, v50, v51);
  v52 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v52);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v53, v54, v55, v56, v0, 3, 0);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_69_3(result);
  v57 = swift_initStackObject();
  v65 = OUTLINED_FUNCTION_2_4(v57, v58, v59, v60, v61, v62, v63, v64, v113);
  OUTLINED_FUNCTION_5_10(v65, v66, v67, v68, v69, v70, v71, v72, v73);
  v74 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v74);
  OUTLINED_FUNCTION_13_43();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v75, v76, v77, v78, v0, 3, 0);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_69_3(result);
  v79 = swift_initStackObject();
  v87 = OUTLINED_FUNCTION_2_4(v79, v80, v81, v82, v83, v84, v85, v86, v114);
  OUTLINED_FUNCTION_5_10(v87, v88, v89, v90, v91, v92, v93, v94, v95);
  v96 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v96);
  v97 = OUTLINED_FUNCTION_24_4();
  result = sub_19343D150(v97, 0xEC00000065746144, 3, 0, v0, 0, 2);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_69_3(result);
  v98 = swift_initStackObject();
  v106 = OUTLINED_FUNCTION_2_4(v98, v99, v100, v101, v102, v103, v104, v105, v115);
  *(v106 + 16) = v116;
  *(v106 + 32) = sub_19393C850();
  v107 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_10_52();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v108, v109, v110, v111, v106, 4, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v117;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_1936B02CC()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  v11 = sub_19393BE00();
  v12 = OUTLINED_FUNCTION_0(v11);
  v41 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v18 = v17 - v16;
  v19 = v4 == 0xD000000000000010 && 0x8000000193A29DA0 == v2;
  if (v19 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v20 = v0 + *(type metadata accessor for AdAttributionKitDeveloperReportedPurchase() + 28);
    if (*(v20 + 8))
    {
      goto LABEL_7;
    }

    v39 = *v20;
LABEL_16:
    sub_1934948FC();
    goto LABEL_17;
  }

  v22 = v4 == OUTLINED_FUNCTION_21_4() && v2 == v21;
  if (v22 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v23 = (v0 + *(type metadata accessor for AdAttributionKitDeveloperReportedPurchase() + 32));
    v24 = v23[1];
    if (!v24)
    {
      goto LABEL_7;
    }

    v39 = *v23;
    v40 = v24;
    goto LABEL_16;
  }

  v25 = v4 == 0x6563697270 && v2 == 0xE500000000000000;
  if (v25 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v26 = *(type metadata accessor for AdAttributionKitDeveloperReportedPurchase() + 36);
LABEL_24:
    v27 = (v0 + v26);
    if (v27[1])
    {
      goto LABEL_7;
    }

    v39 = *v27;
    goto LABEL_16;
  }

  v28 = v4 == OUTLINED_FUNCTION_13_43() && v2 == 0xE800000000000000;
  if (v28 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v26 = *(type metadata accessor for AdAttributionKitDeveloperReportedPurchase() + 40);
    goto LABEL_24;
  }

  v30 = v4 == OUTLINED_FUNCTION_24_4() && v2 == v29;
  if (v30 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v31 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase();
    sub_1934DE90C(v0 + *(v31 + 44), v10);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
    {
      (*(v41 + 32))(v18, v10, v11);
      sub_1934948FC();
      (*(v41 + 8))(v18, v11);
      goto LABEL_17;
    }

    sub_19344E6DC(v10, &qword_1EAE3A9E8, &qword_19394F800);
    goto LABEL_7;
  }

  v33 = v4 == OUTLINED_FUNCTION_10_52() && v2 == v32;
  if (!v33 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    v37 = v36;
    *v36 = v4;
    v36[1] = v2;
    v36[5] = type metadata accessor for AdAttributionKitDeveloperReportedPurchase();
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v37 + 2);
    sub_1936AF974(v0, boxed_opaque_existential_1Tm);
    *(v37 + 48) = 1;
    swift_willThrow();

    goto LABEL_17;
  }

  v34 = v0 + *(type metadata accessor for AdAttributionKitDeveloperReportedPurchase() + 48);
  if ((*(v34 + 9) & 1) == 0)
  {
    v35 = *(v34 + 8);
    v39 = *v34;
    LOBYTE(v40) = v35 & 1;
    goto LABEL_16;
  }

LABEL_7:
  *v6 = 0u;
  v6[1] = 0u;
LABEL_17:
  OUTLINED_FUNCTION_27();
}

uint64_t AdAttributionKitDeveloperReportedPurchase.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase();
  v3 = v2[5];
  sub_1934E0648();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v12 = a1 + v2[7];
  j__OUTLINED_FUNCTION_8_11();
  v5 = (a1 + v2[8]);
  OUTLINED_FUNCTION_10_1();
  v6 = a1 + v2[9];
  j__OUTLINED_FUNCTION_8_11();
  v7 = a1 + v2[10];
  j__OUTLINED_FUNCTION_8_11();
  v8 = v2[11];
  sub_19349C79C();
  v9 = a1 + v2[12];
  OUTLINED_FUNCTION_131(v9);
  *a1 = *sub_1936B175C();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v10 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v10);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;

  *v12 = 0;
  v12[8] = 1;
  *v5 = 0;
  v5[1] = 0;
  *v6 = 0;
  v6[8] = 1;
  *v7 = 0;
  v7[8] = 1;
  sub_193442B60(a1 + v8, &qword_1EAE3A9E8, &qword_19394F800);
  result = __swift_storeEnumTagSinglePayload(a1 + v8, 1, 1, v10);
  *v9 = 0;
  *(v9 + 8) = 256;
  return result;
}

BOOL static AdAttributionKitDeveloperReportedPurchase.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE00();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v50 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v50 - v18;
  v20 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase();
  OUTLINED_FUNCTION_32_2(v20[7]);
  if (v22)
  {
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v23)
    {
      return 0;
    }
  }

  v24 = v20[8];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (!v28)
    {
      return 0;
    }

    v29 = *v25 == *v27 && v26 == v28;
    if (!v29 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  OUTLINED_FUNCTION_32_2(v20[9]);
  if (v31)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v32)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_32_2(v20[10]);
  if (v34)
  {
    if (!v33)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v35)
    {
      return 0;
    }
  }

  v36 = v20[11];
  v37 = *(v16 + 48);
  sub_1934DE90C(a1 + v36, v19);
  sub_1934DE90C(a2 + v36, &v19[v37]);
  OUTLINED_FUNCTION_31(v19);
  if (v29)
  {
    OUTLINED_FUNCTION_31(&v19[v37]);
    if (v29)
    {
      sub_193442B60(v19, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_33;
    }

LABEL_30:
    sub_193442B60(v19, &qword_1EAE3B968, &qword_193972430);
    return 0;
  }

  sub_1934DE90C(v19, v15);
  OUTLINED_FUNCTION_31(&v19[v37]);
  if (v38)
  {
    (*(v7 + 8))(v15, v4);
    goto LABEL_30;
  }

  (*(v7 + 32))(v11, &v19[v37], v4);
  sub_1934DF3E8(&qword_1EAE3A848);
  v40 = sub_19393C550();
  v41 = *(v7 + 8);
  v41(v11, v4);
  v41(v15, v4);
  sub_193442B60(v19, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v40 & 1) == 0)
  {
    return 0;
  }

LABEL_33:
  v42 = v20[12];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 9);
  v45 = (a2 + v42);
  v46 = *(a2 + v42 + 9);
  if (v44)
  {
    return (v46 & 1) != 0;
  }

  v47 = *v45;
  v48 = *(v45 + 8);
  v49 = *(v43 + 8);
  v52 = *v43;
  v53 = v49;
  if (v46)
  {
    return 0;
  }

  v50 = v47;
  v51 = v48 & 1;
  sub_1936B0BE4();
  return (sub_19393C550() & 1) != 0;
}

unint64_t sub_1936B0BE4()
{
  result = qword_1EAE40618;
  if (!qword_1EAE40618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40618);
  }

  return result;
}

uint64_t AdAttributionKitDeveloperReportedPurchase.hash(into:)()
{
  v1 = sub_19393BE00();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase();
  v14 = (v0 + v13[7]);
  if (*(v14 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v15 = *v14;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v15);
  }

  v16 = (v0 + v13[8]);
  if (v16[1])
  {
    v17 = *v16;
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v18 = (v0 + v13[9]);
  if (*(v18 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v19 = *v18;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v19);
  }

  v20 = (v0 + v13[10]);
  if (*(v20 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v21 = *v20;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v21);
  }

  sub_1934DE90C(v0 + v13[11], v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v1) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v4 + 32))(v8, v12, v1);
    OUTLINED_FUNCTION_103_0();
    sub_1934DF3E8(&qword_1EAE3B978);
    sub_19393C540();
    (*(v4 + 8))(v8, v1);
  }

  v22 = (v0 + v13[12]);
  if (*(v22 + 9) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v24 = *(v22 + 8);
  v25 = *v22;
  v26 = v24 & 1;
  OUTLINED_FUNCTION_103_0();
  sub_1936B0EEC();
  return sub_19393C540();
}

unint64_t sub_1936B0EEC()
{
  result = qword_1EAE40620;
  if (!qword_1EAE40620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40620);
  }

  return result;
}

uint64_t sub_1936B0F40()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEAC080);
  __swift_project_value_buffer(v0, &qword_1EAEAC080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1939526E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "advertisedItemID";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  v9 = *(*(v8 - 8) + 104);
  v9(v6, v7, v8);
  v10 = OUTLINED_FUNCTION_3_1(v5 + v2);
  *v11 = 2;
  *v10 = "conversionID";
  v10[1] = 12;
  v12 = OUTLINED_FUNCTION_41(v10);
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v5 + 2 * v2);
  *v14 = 3;
  *v13 = "price";
  v13[1] = 5;
  v15 = OUTLINED_FUNCTION_41(v13);
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v5 + 3 * v2);
  *v17 = 4;
  *v16 = "quantity";
  v16[1] = 8;
  v18 = OUTLINED_FUNCTION_41(v16);
  (v9)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v5 + 4 * v2);
  *v20 = 5;
  *v19 = "purchaseDate";
  v19[1] = 12;
  v21 = OUTLINED_FUNCTION_41(v19);
  (v9)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v5 + 5 * v2);
  *v23 = 6;
  *v22 = "offerType";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  (v9)();
  return sub_19393C410();
}

void sub_1936B11CC()
{
  v1 = v0;
  while (1)
  {
    v2 = sub_19393C0E0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
        v4 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase();
        OUTLINED_FUNCTION_8_2(*(v4 + 28));
        sub_19393C230();
        goto LABEL_12;
      case 2:
        v7 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase();
        OUTLINED_FUNCTION_8_2(*(v7 + 32));
        sub_19393C200();
        goto LABEL_12;
      case 3:
        v6 = *(type metadata accessor for AdAttributionKitDeveloperReportedPurchase() + 36);
        goto LABEL_9;
      case 4:
        v6 = *(type metadata accessor for AdAttributionKitDeveloperReportedPurchase() + 40);
LABEL_9:
        OUTLINED_FUNCTION_8_2(v6);
        sub_19393C190();
        goto LABEL_12;
      case 5:
        v5 = *(type metadata accessor for AdAttributionKitDeveloperReportedPurchase() + 44);
        sub_1934976E4();
        goto LABEL_12;
      case 6:
        v8 = *(type metadata accessor for AdAttributionKitDeveloperReportedPurchase() + 48);
        sub_1934982A8();
LABEL_12:
        v1 = 0;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1936B1328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  result = type metadata accessor for AdAttributionKitDeveloperReportedPurchase();
  v9 = result;
  v10 = v3 + *(result + 28);
  if ((*(v10 + 8) & 1) == 0)
  {
    v11 = *v10;
    OUTLINED_FUNCTION_15_11();
    result = sub_19393C3E0();
    v5 = v4;
  }

  if (!v5)
  {
    v12 = (v3 + v9[8]);
    if (v12[1])
    {
      v13 = *v12;
      v4 = 0;
      sub_19393C3C0();
    }

    v14 = v3 + v9[9];
    if ((*(v14 + 8) & 1) != 0 || (v15 = *v14, OUTLINED_FUNCTION_15_11(), result = sub_19393C360(), (v5 = v4) == 0))
    {
      v16 = v3 + v9[10];
      if ((*(v16 + 8) & 1) != 0 || (v17 = *v16, OUTLINED_FUNCTION_15_11(), result = sub_19393C360(), (v5 = v4) == 0))
      {
        result = sub_1936B149C(v3);
        if (!v5)
        {
          v18 = v3 + v9[12];
          if ((*(v18 + 9) & 1) == 0)
          {
            v19 = *(v18 + 8);
            v20 = *v18;
            v21 = v19 & 1;
            return sub_193447324(&v20, 6, a2, &type metadata for AdAttributionKitOfferType, a3, &off_1F07DF660);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1936B149C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = sub_19393BE00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase();
  sub_1934DE90C(a1 + *(v11 + 44), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_1934DFCD4(v5);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_193451F04(v10, 5, 2020175477, 0xE400000000000000);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1936B1658()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE40628;

  return v0;
}

uint64_t sub_1936B169C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE7CEC0 != -1)
  {
    OUTLINED_FUNCTION_0_87();
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, &qword_1EAEAC080);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t AdAttributionKitDeveloperReportedPurchase.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase();
  return sub_1934488AC(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for AdAttributionKitDeveloperReportedPurchase()
{
  result = qword_1ED50C080;
  if (!qword_1ED50C080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AdAttributionKitDeveloperReportedPurchase.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase();
  return sub_1934488AC(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t AdAttributionKitDeveloperReportedPurchase.conversionID.getter()
{
  v1 = (v0 + *(type metadata accessor for AdAttributionKitDeveloperReportedPurchase() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AdAttributionKitDeveloperReportedPurchase.conversionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AdAttributionKitDeveloperReportedPurchase() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AdAttributionKitDeveloperReportedPurchase.purchaseDate.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase();
  return sub_1934488AC(v1 + *(v2 + 44), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t AdAttributionKitDeveloperReportedPurchase.offerType.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for AdAttributionKitDeveloperReportedPurchase();
  v3 = (v1 + *(result + 48));
  v4 = *v3;
  v5 = *(v3 + 8);
  LOBYTE(v3) = *(v3 + 9);
  *v0 = v4;
  *(v0 + 8) = v5;
  *(v0 + 9) = v3;
  return result;
}

uint64_t AdAttributionKitDeveloperReportedPurchase.offerType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = type metadata accessor for AdAttributionKitDeveloperReportedPurchase();
  v6 = v1 + *(result + 48);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = v4;
  return result;
}

uint64_t AdAttributionKitDeveloperReportedPurchase.hashValue.getter()
{
  sub_19393CAB0();
  AdAttributionKitDeveloperReportedPurchase.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1936B1D7C()
{
  sub_19393CAB0();
  AdAttributionKitDeveloperReportedPurchase.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_1936B1DBC()
{
  result = qword_1EAE40638;
  if (!qword_1EAE40638)
  {
    type metadata accessor for AdAttributionKitDeveloperReportedPurchase();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40638);
  }

  return result;
}

uint64_t sub_1936B1E40()
{
  sub_19349D140();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_19349D198();
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_19349D1FC(319, &qword_1ED508070);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_19349D1FC(319, &qword_1ED508290);
    if (v6 > 0x3F)
    {
      return v3;
    }

    sub_19349D1FC(319, &qword_1ED506678);
    if (v7 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_19349D1FC(319, qword_1ED502C88);
      v1 = v8;
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AdAttributionKitSystemReportedPurchase.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v28 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v28);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for AdAttributionKitSystemReportedPurchase();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40640, &qword_19397CFC0);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v27 - v21;
  sub_1936B2160(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE40640, &qword_19397CFC0);
  sub_19393C250();
  (*(v4 + 8))(v9, v28);
  sub_19344E6DC(v22, &qword_1EAE40640, &qword_19397CFC0);
  OUTLINED_FUNCTION_27();
  result._object = v25;
  result._countAndFlagsBits = v24;
  return result;
}

uint64_t sub_1936B2160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdAttributionKitSystemReportedPurchase();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static AdAttributionKitSystemReportedPurchase.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_5_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40640, &qword_19397CFC0);
  OUTLINED_FUNCTION_4_1(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v33, &qword_1EAE40640, &qword_19397CFC0);
  sub_19393C260();
  if (!v20)
  {
    sub_1936B22F4(v32, v24);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1936B22F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdAttributionKitSystemReportedPurchase();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static AdAttributionKitSystemReportedPurchase.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v39 = v2;
  v40 = v1;
  v38 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40640, &qword_19397CFC0);
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v16 = sub_19393C0C0();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v17);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v37 - v25;
  if (*sub_1936B4514() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    (*(v19 + 16))(v24, v26, v16);
    sub_193450688(v9, v7);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v27, v28, v29);
    sub_19393C280();
    (*(v19 + 8))(v26, v16);
    if (!v0)
    {
      v31 = v39;
      sub_1936B22F4(v15, v39);
      v32 = type metadata accessor for AdAttributionKitSystemReportedPurchase();
      v33 = *(v32 + 20);
      sub_19344E6DC(v31 + v33, &qword_1EAE3A9E8, &qword_19394F800);
      v34 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v34);
      (*(v35 + 16))(v31 + v33, v38, v34);
      __swift_storeEnumTagSinglePayload(v31 + v33, 0, 1, v34);
      v36 = *(v32 + 24);
      sub_19344E6DC(v31 + v36, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v40, v31 + v36);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v30 = v5;
    *(v30 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t AdAttributionKitSystemReportedPurchase.serialize()()
{
  v1 = type metadata accessor for AdAttributionKitSystemReportedPurchase();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40640, &qword_19397CFC0);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1936B2160(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE40640, &qword_19397CFC0);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE40640, &qword_19397CFC0);
  return v15;
}

id static AdAttributionKitSystemReportedPurchase.columns.getter()
{
  v117 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v11, v12, v13, v14, v0, 5, 0);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v24 = OUTLINED_FUNCTION_2_4(inited, v17, v18, v19, v20, v21, v22, v23, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v24, v25, v26, v27, v28, v29, v30, v31, v32);
  v33 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v33);
  v34 = OUTLINED_FUNCTION_21_4();
  result = sub_19343D150(v34, 0xEC00000044496E6FLL, 2, 0, v0, 13, 0);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_69_3(result);
  v35 = swift_initStackObject();
  v43 = OUTLINED_FUNCTION_2_4(v35, v36, v37, v38, v39, v40, v41, v42, v112);
  OUTLINED_FUNCTION_5_10(v43, v44, v45, v46, v47, v48, v49, v50, v51);
  v52 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v52);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v53, v54, v55, v56, v0, 3, 0);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_69_3(result);
  v57 = swift_initStackObject();
  v65 = OUTLINED_FUNCTION_2_4(v57, v58, v59, v60, v61, v62, v63, v64, v113);
  OUTLINED_FUNCTION_5_10(v65, v66, v67, v68, v69, v70, v71, v72, v73);
  v74 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v74);
  OUTLINED_FUNCTION_13_43();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v75, v76, v77, v78, v0, 3, 0);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_69_3(result);
  v79 = swift_initStackObject();
  v87 = OUTLINED_FUNCTION_2_4(v79, v80, v81, v82, v83, v84, v85, v86, v114);
  OUTLINED_FUNCTION_5_10(v87, v88, v89, v90, v91, v92, v93, v94, v95);
  v96 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v96);
  v97 = OUTLINED_FUNCTION_24_4();
  result = sub_19343D150(v97, 0xEC00000065746144, 3, 0, v0, 0, 2);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_69_3(result);
  v98 = swift_initStackObject();
  v106 = OUTLINED_FUNCTION_2_4(v98, v99, v100, v101, v102, v103, v104, v105, v115);
  *(v106 + 16) = v116;
  *(v106 + 32) = sub_19393C850();
  v107 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_10_52();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v108, v109, v110, v111, v106, 4, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v117;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_1936B2AB8()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  v11 = sub_19393BE00();
  v12 = OUTLINED_FUNCTION_0(v11);
  v41 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v18 = v17 - v16;
  v19 = v4 == 0xD000000000000010 && 0x8000000193A29DA0 == v2;
  if (v19 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v20 = v0 + *(type metadata accessor for AdAttributionKitSystemReportedPurchase() + 28);
    if (*(v20 + 8))
    {
      goto LABEL_7;
    }

    v39 = *v20;
LABEL_16:
    sub_1934948FC();
    goto LABEL_17;
  }

  v22 = v4 == OUTLINED_FUNCTION_21_4() && v2 == v21;
  if (v22 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v23 = (v0 + *(type metadata accessor for AdAttributionKitSystemReportedPurchase() + 32));
    v24 = v23[1];
    if (!v24)
    {
      goto LABEL_7;
    }

    v39 = *v23;
    v40 = v24;
    goto LABEL_16;
  }

  v25 = v4 == 0x6563697270 && v2 == 0xE500000000000000;
  if (v25 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v26 = *(type metadata accessor for AdAttributionKitSystemReportedPurchase() + 36);
LABEL_24:
    v27 = (v0 + v26);
    if (v27[1])
    {
      goto LABEL_7;
    }

    v39 = *v27;
    goto LABEL_16;
  }

  v28 = v4 == OUTLINED_FUNCTION_13_43() && v2 == 0xE800000000000000;
  if (v28 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v26 = *(type metadata accessor for AdAttributionKitSystemReportedPurchase() + 40);
    goto LABEL_24;
  }

  v30 = v4 == OUTLINED_FUNCTION_24_4() && v2 == v29;
  if (v30 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v31 = type metadata accessor for AdAttributionKitSystemReportedPurchase();
    sub_1934DE90C(v0 + *(v31 + 44), v10);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
    {
      (*(v41 + 32))(v18, v10, v11);
      sub_1934948FC();
      (*(v41 + 8))(v18, v11);
      goto LABEL_17;
    }

    sub_19344E6DC(v10, &qword_1EAE3A9E8, &qword_19394F800);
    goto LABEL_7;
  }

  v33 = v4 == OUTLINED_FUNCTION_10_52() && v2 == v32;
  if (!v33 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    v37 = v36;
    *v36 = v4;
    v36[1] = v2;
    v36[5] = type metadata accessor for AdAttributionKitSystemReportedPurchase();
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v37 + 2);
    sub_1936B2160(v0, boxed_opaque_existential_1Tm);
    *(v37 + 48) = 1;
    swift_willThrow();

    goto LABEL_17;
  }

  v34 = v0 + *(type metadata accessor for AdAttributionKitSystemReportedPurchase() + 48);
  if ((*(v34 + 9) & 1) == 0)
  {
    v35 = *(v34 + 8);
    v39 = *v34;
    LOBYTE(v40) = v35 & 1;
    goto LABEL_16;
  }

LABEL_7:
  *v6 = 0u;
  v6[1] = 0u;
LABEL_17:
  OUTLINED_FUNCTION_27();
}

uint64_t AdAttributionKitSystemReportedPurchase.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for AdAttributionKitSystemReportedPurchase();
  v3 = v2[5];
  sub_1934E0648();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v12 = a1 + v2[7];
  j__OUTLINED_FUNCTION_8_11();
  v5 = (a1 + v2[8]);
  OUTLINED_FUNCTION_10_1();
  v6 = a1 + v2[9];
  j__OUTLINED_FUNCTION_8_11();
  v7 = a1 + v2[10];
  j__OUTLINED_FUNCTION_8_11();
  v8 = v2[11];
  sub_19349C79C();
  v9 = a1 + v2[12];
  OUTLINED_FUNCTION_131(v9);
  *a1 = *sub_1936B4514();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v10 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v10);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;

  *v12 = 0;
  v12[8] = 1;
  *v5 = 0;
  v5[1] = 0;
  *v6 = 0;
  v6[8] = 1;
  *v7 = 0;
  v7[8] = 1;
  sub_193442B60(a1 + v8, &qword_1EAE3A9E8, &qword_19394F800);
  result = __swift_storeEnumTagSinglePayload(a1 + v8, 1, 1, v10);
  *v9 = 0;
  *(v9 + 8) = 256;
  return result;
}

BOOL static AdAttributionKitSystemReportedPurchase.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE00();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v50 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v50 - v18;
  v20 = type metadata accessor for AdAttributionKitSystemReportedPurchase();
  OUTLINED_FUNCTION_32_2(v20[7]);
  if (v22)
  {
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v23)
    {
      return 0;
    }
  }

  v24 = v20[8];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (!v28)
    {
      return 0;
    }

    v29 = *v25 == *v27 && v26 == v28;
    if (!v29 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  OUTLINED_FUNCTION_32_2(v20[9]);
  if (v31)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v32)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_32_2(v20[10]);
  if (v34)
  {
    if (!v33)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v35)
    {
      return 0;
    }
  }

  v36 = v20[11];
  v37 = *(v16 + 48);
  sub_1934DE90C(a1 + v36, v19);
  sub_1934DE90C(a2 + v36, &v19[v37]);
  OUTLINED_FUNCTION_31(v19);
  if (v29)
  {
    OUTLINED_FUNCTION_31(&v19[v37]);
    if (v29)
    {
      sub_193442B60(v19, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_33;
    }

LABEL_30:
    sub_193442B60(v19, &qword_1EAE3B968, &qword_193972430);
    return 0;
  }

  sub_1934DE90C(v19, v15);
  OUTLINED_FUNCTION_31(&v19[v37]);
  if (v38)
  {
    (*(v7 + 8))(v15, v4);
    goto LABEL_30;
  }

  (*(v7 + 32))(v11, &v19[v37], v4);
  sub_1934DF3E8(&qword_1EAE3A848);
  v40 = sub_19393C550();
  v41 = *(v7 + 8);
  v41(v11, v4);
  v41(v15, v4);
  sub_193442B60(v19, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v40 & 1) == 0)
  {
    return 0;
  }

LABEL_33:
  v42 = v20[12];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 9);
  v45 = (a2 + v42);
  v46 = *(a2 + v42 + 9);
  if (v44)
  {
    return (v46 & 1) != 0;
  }

  v47 = *v45;
  v48 = *(v45 + 8);
  v49 = *(v43 + 8);
  v52 = *v43;
  v53 = v49;
  if (v46)
  {
    return 0;
  }

  v50 = v47;
  v51 = v48 & 1;
  sub_1936B0BE4();
  return (sub_19393C550() & 1) != 0;
}

uint64_t AdAttributionKitSystemReportedPurchase.hash(into:)()
{
  v1 = sub_19393BE00();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for AdAttributionKitSystemReportedPurchase();
  v14 = (v0 + v13[7]);
  if (*(v14 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v15 = *v14;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v15);
  }

  v16 = (v0 + v13[8]);
  if (v16[1])
  {
    v17 = *v16;
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v18 = (v0 + v13[9]);
  if (*(v18 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v19 = *v18;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v19);
  }

  v20 = (v0 + v13[10]);
  if (*(v20 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v21 = *v20;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v21);
  }

  sub_1934DE90C(v0 + v13[11], v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v1) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v4 + 32))(v8, v12, v1);
    OUTLINED_FUNCTION_103_0();
    sub_1934DF3E8(&qword_1EAE3B978);
    sub_19393C540();
    (*(v4 + 8))(v8, v1);
  }

  v22 = (v0 + v13[12]);
  if (*(v22 + 9) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v24 = *(v22 + 8);
  v25 = *v22;
  v26 = v24 & 1;
  OUTLINED_FUNCTION_103_0();
  sub_1936B0EEC();
  return sub_19393C540();
}

uint64_t AdAttributionKitOfferType.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 2;
  if (result == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = result;
  }

  if (result == 3)
  {
    v4 = 1;
  }

  else
  {
    v2 = v3;
    v4 = result == 2;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  v5 = result == 1 || v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = 0;
  return result;
}

char *static AdAttributionKitOfferType.allCases.getter()
{
  v0 = sub_1936B39FC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v13 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1936B39FC(v13, v2 + 1, 1, v14);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v15 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1936B39FC(v15, v2 + 2, 1, v16);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v17 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1936B39FC(v17, v2 + 3, 1, v18);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  if ((v2 + 4) > (v10 >> 1))
  {
    v19 = OUTLINED_FUNCTION_39(v10);
    v0 = sub_1936B39FC(v19, v2 + 4, 1, v20);
  }

  *(v0 + 2) = v2 + 4;
  v11 = &v0[16 * v8];
  *(v11 + 4) = 2;
  v11[40] = 1;
  return v0;
}

uint64_t AdAttributionKitOfferType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x6E776F6E6B6E55;
  }

  v1 = 0x746E756F63736944;
  if (*v0 != 1)
  {
    v1 = 0x6169725465657246;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736270;
  }
}

uint64_t AdAttributionKitOfferType.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v8 = 0;
    v9 = 0;
    goto LABEL_14;
  }

  v10 = a1 == 1701736270 && a2 == 0xE400000000000000;
  if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v8 = 0;
LABEL_13:
    v9 = 1;
    goto LABEL_14;
  }

  v11 = a1 == 0x746E756F63736944 && a2 == 0xEA00000000006465;
  if (v11 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v8 = 1;
    goto LABEL_13;
  }

  if (a1 == 0x6169725465657246 && a2 == 0xE90000000000006CLL)
  {

    v9 = 1;
    v8 = 2;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_0_9();

    v8 = 2;
    if ((v9 & 1) == 0)
    {
      v8 = 0;
    }
  }

LABEL_14:
  *a3 = v8;
  *(a3 + 8) = v9 & 1;
  *(a3 + 9) = 0;
  return result;
}

char *sub_1936B39FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40658, &qword_19397D070);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

unint64_t sub_1936B3AFC()
{
  result = qword_1EAE40650;
  if (!qword_1EAE40650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40650);
  }

  return result;
}

uint64_t sub_1936B3B50()
{
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAC098);
  __swift_project_value_buffer(v2, &qword_1EAEAC098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v8, xmmword_1939526E0);
  *v1 = 1;
  *v0 = "advertisedItemID";
  *(v0 + 8) = 16;
  *(v0 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_2_0();
  v12();
  v13 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v14 = 2;
  *v13 = "conversionID";
  *(v13 + 8) = 12;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  v15 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v16 = 3;
  *v15 = "price";
  *(v15 + 8) = 5;
  *(v15 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  v17 = OUTLINED_FUNCTION_3_1(v1 + 3 * v5);
  *v18 = 4;
  *v17 = "quantity";
  *(v17 + 8) = 8;
  *(v17 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  v19 = OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  *v20 = 5;
  *v19 = "purchaseDate";
  *(v19 + 8) = 12;
  *(v19 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  v21 = OUTLINED_FUNCTION_3_1(v1 + 5 * v5);
  *v22 = 6;
  *v21 = "offerType";
  *(v21 + 8) = 9;
  *(v21 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  return sub_19393C410();
}

void sub_1936B3DC0()
{
  v1 = v0;
  while (1)
  {
    v2 = sub_19393C0E0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 1:
        v4 = type metadata accessor for AdAttributionKitSystemReportedPurchase();
        OUTLINED_FUNCTION_8_2(*(v4 + 28));
        sub_19393C230();
        goto LABEL_12;
      case 2:
        v7 = type metadata accessor for AdAttributionKitSystemReportedPurchase();
        OUTLINED_FUNCTION_8_2(*(v7 + 32));
        sub_19393C200();
        goto LABEL_12;
      case 3:
        v6 = *(type metadata accessor for AdAttributionKitSystemReportedPurchase() + 36);
        goto LABEL_9;
      case 4:
        v6 = *(type metadata accessor for AdAttributionKitSystemReportedPurchase() + 40);
LABEL_9:
        OUTLINED_FUNCTION_8_2(v6);
        sub_19393C190();
        goto LABEL_12;
      case 5:
        v5 = *(type metadata accessor for AdAttributionKitSystemReportedPurchase() + 44);
        sub_1934976E4();
        goto LABEL_12;
      case 6:
        v8 = *(type metadata accessor for AdAttributionKitSystemReportedPurchase() + 48);
        sub_1934982A8();
LABEL_12:
        v1 = 0;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1936B3F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  result = type metadata accessor for AdAttributionKitSystemReportedPurchase();
  v9 = result;
  v10 = v3 + *(result + 28);
  if ((*(v10 + 8) & 1) == 0)
  {
    v11 = *v10;
    OUTLINED_FUNCTION_15_11();
    result = sub_19393C3E0();
    v5 = v4;
  }

  if (!v5)
  {
    v12 = (v3 + v9[8]);
    if (v12[1])
    {
      v13 = *v12;
      v4 = 0;
      sub_19393C3C0();
    }

    v14 = v3 + v9[9];
    if ((*(v14 + 8) & 1) != 0 || (v15 = *v14, OUTLINED_FUNCTION_15_11(), result = sub_19393C360(), (v5 = v4) == 0))
    {
      v16 = v3 + v9[10];
      if ((*(v16 + 8) & 1) != 0 || (v17 = *v16, OUTLINED_FUNCTION_15_11(), result = sub_19393C360(), (v5 = v4) == 0))
      {
        result = sub_1936B4090(v3);
        if (!v5)
        {
          v18 = v3 + v9[12];
          if ((*(v18 + 9) & 1) == 0)
          {
            v19 = *(v18 + 8);
            v20 = *v18;
            v21 = v19 & 1;
            return sub_193447324(&v20, 6, a2, &type metadata for AdAttributionKitOfferType, a3, &off_1F07DF660);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1936B4090(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = sub_19393BE00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AdAttributionKitSystemReportedPurchase();
  sub_1934DE90C(a1 + *(v11 + 44), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_1934DFCD4(v5);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_193451F04(v10, 5, 2020175477, 0xE400000000000000);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1936B424C()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE40660;

  return v0;
}

uint64_t sub_1936B42E8()
{
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAC0B0);
  __swift_project_value_buffer(v2, qword_1EAEAC0B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v8, xmmword_19394FBC0);
  *v1 = 0;
  *v0 = "AdAttributionKitOfferTypeUnknown";
  *(v0 + 8) = 32;
  *(v0 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_11_0(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_2_0();
  v12();
  v13 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v14 = 1;
  *v13 = "None";
  *(v13 + 8) = 4;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  v15 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v16 = 2;
  *v15 = "Discounted";
  *(v15 + 8) = 10;
  *(v15 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  v17 = OUTLINED_FUNCTION_3_1(v1 + 3 * v5);
  *v18 = 3;
  *v17 = "FreeTrial";
  *(v17 + 8) = 9;
  *(v17 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  return sub_19393C410();
}

uint64_t AdAttributionKitSystemReportedPurchase.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AdAttributionKitSystemReportedPurchase();
  return sub_1934488AC(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for AdAttributionKitSystemReportedPurchase()
{
  result = qword_1ED50C090;
  if (!qword_1ED50C090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AdAttributionKitSystemReportedPurchase.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AdAttributionKitSystemReportedPurchase();
  return sub_1934488AC(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t AdAttributionKitSystemReportedPurchase.conversionID.getter()
{
  v1 = (v0 + *(type metadata accessor for AdAttributionKitSystemReportedPurchase() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AdAttributionKitSystemReportedPurchase.conversionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AdAttributionKitSystemReportedPurchase() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AdAttributionKitSystemReportedPurchase.purchaseDate.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for AdAttributionKitSystemReportedPurchase();
  return sub_1934488AC(v1 + *(v2 + 44), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t AdAttributionKitSystemReportedPurchase.offerType.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for AdAttributionKitSystemReportedPurchase();
  v3 = (v1 + *(result + 48));
  v4 = *v3;
  v5 = *(v3 + 8);
  LOBYTE(v3) = *(v3 + 9);
  *v0 = v4;
  *(v0 + 8) = v5;
  *(v0 + 9) = v3;
  return result;
}

uint64_t AdAttributionKitSystemReportedPurchase.offerType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = type metadata accessor for AdAttributionKitSystemReportedPurchase();
  v6 = v1 + *(result + 48);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = v4;
  return result;
}

uint64_t AdAttributionKitSystemReportedPurchase.hashValue.getter()
{
  sub_19393CAB0();
  AdAttributionKitSystemReportedPurchase.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1936B4B34()
{
  sub_19393CAB0();
  AdAttributionKitSystemReportedPurchase.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_1936B4B74()
{
  result = qword_1EAE40670;
  if (!qword_1EAE40670)
  {
    type metadata accessor for AdAttributionKitSystemReportedPurchase();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40670);
  }

  return result;
}

uint64_t sub_1936B4BD8@<X0>(uint64_t *a1@<X8>)
{
  result = AdAttributionKitOfferType.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1936B4C04()
{
  result = qword_1EAE40678;
  if (!qword_1EAE40678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE40680, &qword_19397D158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40678);
  }

  return result;
}

char *sub_1936B4C68@<X0>(char **a1@<X8>)
{
  result = static AdAttributionKitOfferType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1936B4C94()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1936B4CA0();
}

uint64_t sub_1936B4CA0()
{
  sub_19393CAB0();
  v0 = AdAttributionKitOfferType.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_1936B4CFC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1936B4D08();
}

uint64_t sub_1936B4D4C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1936B4D58();
}

uint64_t sub_1936B4D58()
{
  sub_19393CAB0();
  v0 = AdAttributionKitOfferType.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

BOOL sub_1936B4DB0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  return sub_1936B4F58();
}

uint64_t sub_1936B4DF4()
{
  sub_19349D140();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_19349D198();
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_19349D1FC(319, &qword_1ED508070);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_19349D1FC(319, &qword_1ED508290);
    if (v6 > 0x3F)
    {
      return v3;
    }

    sub_19349D1FC(319, &qword_1ED506678);
    if (v7 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_19349D1FC(319, qword_1ED502C88);
      v1 = v8;
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_1936B4FCC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511958);
  v5 = __swift_project_value_buffer(v4, qword_1ED511958);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.TextUnderstanding.Output.Link.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:259200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:5242880 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_54 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511958);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40688, &qword_19397D2B0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 0, 0, 0, 0xD00000000000001CLL, 0x8000000193A2B4D0, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.TextUnderstanding.Output.Link.attribute(_:)(void (*a1)(void))
{
  result = sub_1936B53F4(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936B5430(void (*a1)(void))
{
  result = sub_1936B53F4(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936B5498(uint64_t a1)
{
  result = sub_1936B54C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1936B54C0()
{
  result = qword_1ED5031F8;
  if (!qword_1ED5031F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5031F8);
  }

  return result;
}

_BYTE *_s4LinkOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TextUnderstandingLink.json()()
{
  v1 = v0;
  v31 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for TextUnderstandingLink();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40690, &qword_19397D320);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  sub_1936B579C(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE40690, &qword_19397D320);
  v24 = sub_19393C250();
  v26 = v25;
  (*(v4 + 8))(v9, v31);
  sub_19344E6DC(v22, &qword_1EAE40690, &qword_19397D320);
  v27 = v24;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_1936B579C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingLink();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static TextUnderstandingLink.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40690, &qword_19397D320);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v11, &qword_1EAE40690, &qword_19397D320);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_1936B5940(v10, a1);
  }

  return result;
}

uint64_t sub_1936B5940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingLink();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static TextUnderstandingLink.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v41 = a5;
  v39 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40690, &qword_19397D320);
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = sub_19393C0C0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - v24;
  if (*sub_1936B75DC() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v18 + 16))(v23, v25, v15);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v26, v27, v28);
    v29 = v45;
    sub_19393C280();
    if (v29)
    {
      return (*(v18 + 8))(v25, v15);
    }

    else
    {
      (*(v18 + 8))(v25, v15);
      v32 = v40;
      sub_1936B5940(v14, v40);
      v33 = type metadata accessor for TextUnderstandingLink();
      v34 = *(v33 + 20);
      sub_19344E6DC(v32 + v34, &qword_1EAE3A9E8, &qword_19394F800);
      v35 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v35);
      (*(v36 + 16))(v32 + v34, v39, v35);
      __swift_storeEnumTagSinglePayload(v32 + v34, 0, 1, v35);
      v37 = *(v33 + 24);
      sub_19344E6DC(v32 + v37, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v41, v32 + v37);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v31 = a3;
    *(v31 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t TextUnderstandingLink.serialize()()
{
  v1 = type metadata accessor for TextUnderstandingLink();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40690, &qword_19397D320);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1936B579C(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE40690, &qword_19397D320);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE40690, &qword_19397D320);
  return v15;
}

id static TextUnderstandingLink.columns.getter()
{
  v110 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_2_13(v0, v1, v2, v3, v4, v5, v6, v7, v8);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  v0[2].n128_u64[0] = sub_19393C850();
  v9 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_2_56();
  result = sub_19343D150(v10, v11, v12, v13, v14, v15, 4);
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v25 = OUTLINED_FUNCTION_2_4(inited, v18, v19, v20, v21, v22, v23, v24, xmmword_193950B10);
  OUTLINED_FUNCTION_2_13(v25, v26, v27, v28, v29, v30, v31, v32, v33);
  v25[2].n128_u64[0] = sub_19393C850();
  v34 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_2_56();
  result = sub_19343D150(v35, v36, v37, v38, v39, v40, 0);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_3(result);
  v41 = swift_initStackObject();
  v49 = OUTLINED_FUNCTION_2_4(v41, v42, v43, v44, v45, v46, v47, v48, v108);
  OUTLINED_FUNCTION_2_13(v49, v50, v51, v52, v53, v54, v55, v56, v57);
  v49[2].n128_u64[0] = sub_19393C850();
  v58 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_10_53();
  OUTLINED_FUNCTION_2_56();
  result = sub_19343D150(v59, v60, v61, v62, v63, v64, 0);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_69_3(result);
  v65 = swift_initStackObject();
  v73 = OUTLINED_FUNCTION_2_4(v65, v66, v67, v68, v69, v70, v71, v72, v109);
  OUTLINED_FUNCTION_2_13(v73, v74, v75, v76, v77, v78, v79, v80, v81);
  v73[2].n128_u64[0] = sub_19393C850();
  v82 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_12_38();
  OUTLINED_FUNCTION_11_40();
  OUTLINED_FUNCTION_2_56();
  result = sub_19343D150(v83, v84, v85, v86, v87, v88, 0);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_69_3(result);
  v89 = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(v89, v90, v91, v92, v93, v94, v95, v96, v97);
  v98 = swift_allocObject();
  OUTLINED_FUNCTION_2_13(v98, v99, v100, v101, v102, v103, v104, v105, v106);
  v98[2].n128_u64[0] = sub_19393C850();
  v107 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0xD000000000000014, 0x8000000193A2D450, 1, 0, v98, 0, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v110;
  }

LABEL_11:
  __break(1u);
  return result;
}

int *sub_1936B60D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0xD000000000000013 && 0x8000000193A2B920 == a2;
  if (v6 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v8 = *(type metadata accessor for TextUnderstandingLink() + 28);
    memcpy(__dst, (v3 + v8), sizeof(__dst));
    memcpy(v25, (v3 + v8), sizeof(v25));
    sub_19365A03C(__dst, v27);
    sub_193494798(&type metadata for TextUnderstandingDocumentIdentifiers, &off_1F07DB1C0, a3);
    memcpy(v27, v25, sizeof(v27));
    return sub_19365A098(v27);
  }

  v10 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v10 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v11 = *(type metadata accessor for TextUnderstandingLink() + 32);
    sub_19393BD10();
    return sub_1934948FC();
  }

  v12 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v12 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for TextUnderstandingLink();
    v13 = result[9];
    goto LABEL_20;
  }

  v17 = a1 == OUTLINED_FUNCTION_10_53() && a2 == v16;
  if (v17 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for TextUnderstandingLink();
    v13 = result[10];
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_11_40();
  v19 = a1 == OUTLINED_FUNCTION_12_38() && a2 == v18;
  if (v19 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for TextUnderstandingLink();
    v13 = result[11];
LABEL_20:
    v14 = (v3 + v13);
    v15 = *(v3 + v13 + 8);
    if (v15)
    {
      v27[0] = *v14;
      v27[1] = v15;
      return sub_1934948FC();
    }

    goto LABEL_40;
  }

  v20 = a1 == 0xD000000000000014 && 0x8000000193A2D450 == a2;
  if (v20 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for TextUnderstandingLink();
    v21 = v3 + result[12];
    if ((*(v21 + 8) & 1) == 0)
    {
      v27[0] = *v21;
      return sub_1934948FC();
    }

LABEL_40:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  sub_19349AB64();
  swift_allocError();
  v23 = v22;
  *v22 = a1;
  v22[1] = a2;
  v22[5] = type metadata accessor for TextUnderstandingLink();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v23 + 2);
  sub_1936B579C(v3, boxed_opaque_existential_1Tm);
  *(v23 + 48) = 1;
  swift_willThrow();
}

uint64_t TextUnderstandingLink.init()@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &__src[-v4];
  v6 = type metadata accessor for TextUnderstandingLink();
  v7 = v6[5];
  sub_19349C79C();
  v8 = &a1[v6[6]];
  sub_19344B5D8(v8);
  j__OUTLINED_FUNCTION_10_1();
  j__OUTLINED_FUNCTION_10_1();
  j__OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_8_11();
  *a1 = *sub_1936B75DC();
  sub_193442B60(&a1[v7], &qword_1EAE3A9E8, &qword_19394F800);
  v9 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(&a1[v7], 1, 1, v9);
  sub_193442B60(v8, &qword_1EAE3AA00, &unk_19394F8F0);
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  TextUnderstandingDocumentIdentifiers.init()(__src);
  memcpy(&a1[v6[7]], __src, 0x60uLL);
  sub_19393BD00();
  v10 = sub_19393BD10();
  result = __swift_getEnumTagSinglePayload(v5, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = v6[8];
    v13 = &a1[v6[9]];
    v14 = &a1[v6[10]];
    v15 = &a1[v6[11]];
    v16 = &a1[v6[12]];
    (*(*(v10 - 8) + 32))(&a1[v12], v5, v10);

    *v13 = 0;
    *(v13 + 1) = 0;
    *v14 = 0;
    *(v14 + 1) = 0;
    *v15 = 0;
    *(v15 + 1) = 0;
    *v16 = 0;
    v16[8] = 1;
  }

  return result;
}

uint64_t static TextUnderstandingLink.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingLink();
  v5 = v4[7];
  memcpy(__dst, (a1 + v5), sizeof(__dst));
  memcpy(__src, (a1 + v5), sizeof(__src));
  v6 = v4[7];
  memcpy(v38, (a2 + v6), sizeof(v38));
  memcpy(v35, (a2 + v6), sizeof(v35));
  sub_19365A03C(__dst, v40);
  sub_19365A03C(v38, v40);
  sub_19365AB48();
  LOBYTE(v6) = sub_19393C550();
  memcpy(v39, v35, sizeof(v39));
  sub_19365A098(v39);
  memcpy(v40, __src, sizeof(v40));
  sub_19365A098(v40);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v4[8];
  sub_19393BD10();
  sub_1936B691C(&qword_1EAE3F120);
  if ((sub_19393C550() & 1) == 0)
  {
    return 0;
  }

  v8 = v4[9];
  OUTLINED_FUNCTION_3();
  if (v11)
  {
    if (!v9)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v10);
    v14 = v14 && v12 == v13;
    if (!v14 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v15 = v4[10];
  OUTLINED_FUNCTION_3();
  if (v18)
  {
    if (!v16)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v17);
    v21 = v14 && v19 == v20;
    if (!v21 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v22 = v4[11];
  OUTLINED_FUNCTION_3();
  if (!v25)
  {
    if (!v23)
    {
      goto LABEL_30;
    }

    return 0;
  }

  if (!v23)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5(v24);
  v28 = v14 && v26 == v27;
  if (!v28 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v29 = v4[12];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = *(a2 + v29 + 8);
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }
  }

  else
  {
    if (*v30 != *v32)
    {
      LOBYTE(v33) = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t TextUnderstandingLink.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for TextUnderstandingLink();
  memcpy(v11, (v0 + v2[7]), sizeof(v11));
  sub_19365B174();
  sub_19393C540();
  v3 = v2[8];
  sub_19393BD10();
  sub_1936B691C(&qword_1EAE3F128);
  sub_19393C540();
  v4 = (v1 + v2[9]);
  if (v4[1])
  {
    OUTLINED_FUNCTION_7_1(v4);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v5 = (v1 + v2[10]);
  if (v5[1])
  {
    OUTLINED_FUNCTION_7_1(v5);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v6 = (v1 + v2[11]);
  if (v6[1])
  {
    OUTLINED_FUNCTION_7_1(v6);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v7 = (v1 + v2[12]);
  if (*(v7 + 8) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v9 = *v7;
  sub_19393CAD0();
  if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return MEMORY[0x193B18060](v10);
}

uint64_t sub_1936B691C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_19393BD10();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1936B6960()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC0C8);
  __swift_project_value_buffer(v0, qword_1EAEAC0C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1939526E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "documentIdentifiers";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  v9 = *(*(v8 - 8) + 104);
  v9(v6, v7, v8);
  v10 = OUTLINED_FUNCTION_3_1(v5 + v2);
  *v11 = 2;
  *v10 = "url";
  v10[1] = 3;
  v12 = OUTLINED_FUNCTION_41(v10);
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v5 + 2 * v2);
  *v14 = 3;
  *v13 = "title";
  v13[1] = 5;
  v15 = OUTLINED_FUNCTION_41(v13);
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v5 + 3 * v2);
  *v17 = 4;
  *v16 = "senderHandle";
  v16[1] = 12;
  v18 = OUTLINED_FUNCTION_41(v16);
  (v9)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v5 + 4 * v2);
  *v20 = 5;
  *v19 = "documentTitle";
  v19[1] = 13;
  v21 = OUTLINED_FUNCTION_41(v19);
  (v9)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v5 + 5 * v2);
  *v23 = 6;
  *v22 = "documentTimeInterval";
  *(v22 + 8) = 20;
  *(v22 + 16) = 2;
  (v9)();
  return sub_19393C410();
}

uint64_t sub_1936B6BE8()
{
  v3 = v1;
  v4 = sub_19393BD10();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_28();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v14);
  v41 = &v31 - v15;
  v33 = (v7 + 40);
  v34 = v7 + 32;
  v16 = v0;
  v18 = v17;
  v35 = v4;
  v36 = v17;
  v32 = v0;
  while (2)
  {
    result = sub_19393C0E0();
    if (v3 || (v20 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        __src = 0u;
        memset(v40, 0, sizeof(v40));
        sub_193498018();
        v21 = v2;
        if (*(&__src + 1))
        {
          memcpy(&v37[1], v40, 0x50uLL);
          v37[0] = __src;
        }

        else
        {
          TextUnderstandingDocumentIdentifiers.init()(v37);
        }

        v30 = *(type metadata accessor for TextUnderstandingLink() + 28);
        memcpy(v38, (v16 + v30), sizeof(v38));
        sub_19365A098(v38);
        memcpy((v16 + v30), v37, 0x60uLL);
        v2 = v21;
        v4 = v35;
        v18 = v36;
        continue;
      case 2:
        v2 = v41;
        __swift_storeEnumTagSinglePayload(v41, 1, 1, v4);
        sub_19349780C(v2);
        sub_1936B7008(v2, v18);
        OUTLINED_FUNCTION_4_60();
        if (!v23)
        {
          sub_193442B60(v2, &qword_1EAE3ACA0, &qword_193972420);
          v27 = OUTLINED_FUNCTION_3_65();
          v28(v27);
          goto LABEL_18;
        }

        sub_19393BD00();
        result = OUTLINED_FUNCTION_4_60();
        if (!v23)
        {
          sub_193442B60(v41, &qword_1EAE3ACA0, &qword_193972420);
          v24 = OUTLINED_FUNCTION_3_65();
          v25(v24);
          v18 = v36;
          OUTLINED_FUNCTION_4_60();
          if (!v23)
          {
            sub_193442B60(v18, &qword_1EAE3ACA0, &qword_193972420);
          }

LABEL_18:
          v29 = type metadata accessor for TextUnderstandingLink();
          v16 = v32;
          (*v33)(v32 + *(v29 + 32), v2, v4);
          continue;
        }

        __break(1u);
        return result;
      case 3:
        v22 = *(type metadata accessor for TextUnderstandingLink() + 36);
        goto LABEL_10;
      case 4:
        v22 = *(type metadata accessor for TextUnderstandingLink() + 40);
        goto LABEL_10;
      case 5:
        v22 = *(type metadata accessor for TextUnderstandingLink() + 44);
LABEL_10:
        OUTLINED_FUNCTION_8_46(v22);
        sub_19393C200();
        goto LABEL_17;
      case 6:
        v26 = type metadata accessor for TextUnderstandingLink();
        OUTLINED_FUNCTION_8_46(*(v26 + 48));
        sub_19393C1E0();
LABEL_17:
        v3 = 0;
        continue;
      default:
        continue;
    }
  }
}

uint64_t sub_1936B7008(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1936B7078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = type metadata accessor for TextUnderstandingLink();
  v10 = v9[7];
  memcpy(__dst, (v3 + v10), sizeof(__dst));
  memcpy(v23, (v3 + v10), sizeof(v23));
  sub_19365A03C(__dst, __src);
  TextUnderstandingDocumentIdentifiers.init()(__src);
  sub_19365AB48();
  v11 = sub_19393C550();
  memcpy(v25, __src, sizeof(v25));
  sub_19365A098(v25);
  memcpy(v26, v23, sizeof(v26));
  result = sub_19365A098(v26);
  if (v11)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    memcpy(v23, (v5 + v10), sizeof(v23));
    memcpy(__src, (v5 + v10), sizeof(__src));
    sub_19365A03C(v23, v21);
    sub_193447600();
    if (v4)
    {
      memcpy(v21, __src, sizeof(v21));
      return sub_19365A098(v21);
    }

    memcpy(v21, __src, sizeof(v21));
    sub_19365A098(v21);
  }

  result = sub_1936B72C0(v5, a1, a2, a3);
  v13 = (v5 + v9[9]);
  if (v13[1])
  {
    v14 = *v13;
    result = OUTLINED_FUNCTION_4_7();
  }

  v15 = (v5 + v9[10]);
  if (v15[1])
  {
    v16 = *v15;
    result = OUTLINED_FUNCTION_4_7();
  }

  v17 = (v5 + v9[11]);
  if (v17[1])
  {
    v18 = *v17;
    result = OUTLINED_FUNCTION_4_7();
  }

  v19 = v5 + v9[12];
  if ((*(v19 + 8) & 1) == 0)
  {
    v20 = *v19;
    return sub_19393C3B0();
  }

  return result;
}

uint64_t sub_1936B72C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v20[0] = a3;
  v20[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v20 - v8;
  v10 = sub_19393BD10();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_28();
  v16 = *(type metadata accessor for TextUnderstandingLink() + 32);
  (*(v13 + 16))(v4, a1 + v16, v10);
  sub_19393BD00();
  result = __swift_getEnumTagSinglePayload(v9, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1936B7584();
    v18 = sub_19393C550();
    v19 = *(v13 + 8);
    v19(v4, v10);
    result = v19(v9, v10);
    if ((v18 & 1) == 0)
    {
      return sub_19349881C(a1 + v16, 2, v20[0], v21);
    }
  }

  return result;
}

uint64_t sub_1936B7480()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE406A0;

  return v0;
}

uint64_t sub_1936B74C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE7D3E0 != -1)
  {
    OUTLINED_FUNCTION_0_88();
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEAC0C8);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

unint64_t sub_1936B7584()
{
  result = qword_1EAE3F120;
  if (!qword_1EAE3F120)
  {
    sub_19393BD10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F120);
  }

  return result;
}

uint64_t TextUnderstandingLink.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for TextUnderstandingLink();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for TextUnderstandingLink()
{
  result = qword_1ED50C2B0;
  if (!qword_1ED50C2B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TextUnderstandingLink.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for TextUnderstandingLink();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t TextUnderstandingLink.documentIdentifiers.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = *(type metadata accessor for TextUnderstandingLink() + 28);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  memcpy(v0, (v1 + v2), 0x60uLL);
  return sub_19365A03C(__dst, &v4);
}

void *TextUnderstandingLink.documentIdentifiers.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_66() + 28);
  memcpy(v4, (v1 + v2), sizeof(v4));
  sub_19365A098(v4);
  return memcpy((v1 + v2), v0, 0x60uLL);
}

uint64_t TextUnderstandingLink.url.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = *(type metadata accessor for TextUnderstandingLink() + 32);
  v3 = sub_19393BD10();
  v4 = *(*(v3 - 8) + 16);

  return v4(v0, v1 + v2, v3);
}

uint64_t TextUnderstandingLink.url.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_66() + 32);
  v3 = sub_19393BD10();
  OUTLINED_FUNCTION_7_0(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t TextUnderstandingLink.title.getter()
{
  v0 = type metadata accessor for TextUnderstandingLink();
  OUTLINED_FUNCTION_4_4(*(v0 + 36));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingLink.title.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_6_52() + 36));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TextUnderstandingLink.senderHandle.getter()
{
  v0 = type metadata accessor for TextUnderstandingLink();
  OUTLINED_FUNCTION_4_4(*(v0 + 40));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingLink.senderHandle.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_6_52() + 40));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TextUnderstandingLink.documentTitle.getter()
{
  v0 = type metadata accessor for TextUnderstandingLink();
  OUTLINED_FUNCTION_4_4(*(v0 + 44));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingLink.documentTitle.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_6_52() + 44));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t TextUnderstandingLink.documentTimeInterval.getter()
{
  v1 = (v0 + *(type metadata accessor for TextUnderstandingLink() + 48));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t TextUnderstandingLink.documentTimeInterval.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TextUnderstandingLink();
  v6 = v2 + *(result + 48);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TextUnderstandingLink.hashValue.getter()
{
  sub_19393CAB0();
  TextUnderstandingLink.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1936B7CBC()
{
  sub_19393CAB0();
  TextUnderstandingLink.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_1936B7CFC()
{
  result = qword_1EAE406B0;
  if (!qword_1EAE406B0)
  {
    type metadata accessor for TextUnderstandingLink();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE406B0);
  }

  return result;
}

void sub_1936B7D80()
{
  sub_19349D140();
  if (v0 <= 0x3F)
  {
    sub_19349D198();
    if (v1 <= 0x3F)
    {
      sub_19393BD10();
      if (v2 <= 0x3F)
      {
        sub_19349D1FC(319, &qword_1ED508290);
        if (v3 <= 0x3F)
        {
          sub_19349D1FC(319, &qword_1ED506690);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

_BYTE *_s12DeviceExpertOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1936B7F54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED5119B8);
  v5 = __swift_project_value_buffer(v4, qword_1ED5119B8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.DeviceExpert.Troubleshooting.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:100000 maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_55 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5119B8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE406B8, &qword_19397D478);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.DeviceExpert.Troubleshooting.attribute(_:)(void (*a1)(void))
{
  result = sub_1936B835C(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936B83A4(void (*a1)(void))
{
  result = sub_1936B835C(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936B83D4(uint64_t a1)
{
  result = sub_1936B83FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1936B83FC()
{
  result = qword_1EAE3A7E0;
  if (!qword_1EAE3A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A7E0);
  }

  return result;
}

_BYTE *_s15TroubleshootingOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeviceExpertTroubleshooting.json()()
{
  v1 = v0;
  v31 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for DeviceExpertTroubleshooting();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE406C0, &qword_19397D4F0);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  sub_1936B8704(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE406C0, &qword_19397D4F0);
  v24 = sub_19393C250();
  v26 = v25;
  (*(v4 + 8))(v9, v31);
  sub_19344E6DC(v22, &qword_1EAE406C0, &qword_19397D4F0);
  v27 = v24;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_1936B8704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceExpertTroubleshooting();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static DeviceExpertTroubleshooting.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE406C0, &qword_19397D4F0);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v11, &qword_1EAE406C0, &qword_19397D4F0);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_1936B88A8(v10, a1);
  }

  return result;
}

uint64_t sub_1936B88A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceExpertTroubleshooting();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static DeviceExpertTroubleshooting.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v41 = a5;
  v39 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE406C0, &qword_19397D4F0);
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = sub_19393C0C0();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v38 - v24;
  if (*sub_1936BC5D0() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    (*(v18 + 16))(v23, v25, v15);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v26, v27, v28);
    v29 = v45;
    sub_19393C280();
    if (v29)
    {
      return (*(v18 + 8))(v25, v15);
    }

    else
    {
      (*(v18 + 8))(v25, v15);
      v32 = v40;
      sub_1936B88A8(v14, v40);
      v33 = type metadata accessor for DeviceExpertTroubleshooting();
      v34 = *(v33 + 20);
      sub_19344E6DC(v32 + v34, &qword_1EAE3A9E8, &qword_19394F800);
      v35 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1(v35);
      (*(v36 + 16))(v32 + v34, v39, v35);
      __swift_storeEnumTagSinglePayload(v32 + v34, 0, 1, v35);
      v37 = *(v33 + 24);
      sub_19344E6DC(v32 + v37, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v41, v32 + v37);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v31 = a3;
    *(v31 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t DeviceExpertTroubleshooting.serialize()()
{
  v1 = type metadata accessor for DeviceExpertTroubleshooting();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE406C0, &qword_19397D4F0);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1936B8704(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE406C0, &qword_19397D4F0);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE406C0, &qword_19397D4F0);
  return v15;
}

id static DeviceExpertTroubleshooting.columns.getter()
{
  v106 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v11 = OUTLINED_FUNCTION_15_10();
  result = OUTLINED_FUNCTION_3_5(v11, v12);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v22 = OUTLINED_FUNCTION_2_4(inited, v15, v16, v17, v18, v19, v20, v21, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v22, v23, v24, v25, v26, v27, v28, v29, v30);
  v31 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v31);
  result = OUTLINED_FUNCTION_3_5(1885697139, 0xE400000000000000);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_69_3(result);
  v32 = swift_initStackObject();
  v40 = OUTLINED_FUNCTION_2_4(v32, v33, v34, v35, v36, v37, v38, v39, v101);
  OUTLINED_FUNCTION_5_10(v40, v41, v42, v43, v44, v45, v46, v47, v48);
  v49 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v49);
  result = OUTLINED_FUNCTION_3_5(0x737574617473, 0xE600000000000000);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_69_3(result);
  v50 = swift_initStackObject();
  v58 = OUTLINED_FUNCTION_2_4(v50, v51, v52, v53, v54, v55, v56, v57, v102);
  OUTLINED_FUNCTION_5_10(v58, v59, v60, v61, v62, v63, v64, v65, v66);
  v67 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v67);
  OUTLINED_FUNCTION_112_2();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v68, v69, v70, v71, v0, 2, 0);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_69_3(result);
  v72 = swift_initStackObject();
  v80 = OUTLINED_FUNCTION_2_4(v72, v73, v74, v75, v76, v77, v78, v79, v103);
  OUTLINED_FUNCTION_5_10(v80, v81, v82, v83, v84, v85, v86, v87, v88);
  v89 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v89);
  v90 = OUTLINED_FUNCTION_22_34();
  result = OUTLINED_FUNCTION_3_5(v90, 0xE700000000000000);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_69_3(result);
  v91 = swift_initStackObject();
  v99 = OUTLINED_FUNCTION_2_4(v91, v92, v93, v94, v95, v96, v97, v98, v104);
  *(v99 + 16) = v105;
  *(v99 + 32) = sub_19393C850();
  v100 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(2003790950, 0xE400000000000000, 2, 0, v99, 13, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v106;
  }

LABEL_13:
  __break(1u);
  return result;
}

int *sub_1936B9018()
{
  OUTLINED_FUNCTION_21_37();
  v5 = v2 == v4 && v3 == 0xE400000000000000;
  if (v5 || (v6 = v3, v7 = v2, OUTLINED_FUNCTION_15_10(), (OUTLINED_FUNCTION_59_0() & 1) != 0))
  {
    result = type metadata accessor for DeviceExpertTroubleshooting();
    v9 = result[7];
  }

  else
  {
    v11 = v7 == 1885697139 && v6 == 0xE400000000000000;
    if (v11 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      result = type metadata accessor for DeviceExpertTroubleshooting();
      v9 = result[8];
    }

    else
    {
      v12 = v7 == 0x737574617473 && v6 == 0xE600000000000000;
      if (!v12 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
      {
        v13 = v7 == OUTLINED_FUNCTION_112_2() && v6 == 0xE700000000000000;
        if (v13 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
        {
          v25 = *(v0 + *(type metadata accessor for DeviceExpertTroubleshooting() + 40));
          return sub_1934948FC();
        }

        v14 = v7 == OUTLINED_FUNCTION_22_34() && v6 == 0xE700000000000000;
        if (v14 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
        {
          v15 = *(type metadata accessor for DeviceExpertTroubleshooting() + 44);
        }

        else
        {
          v19 = v7 == 2003790950 && v6 == 0xE400000000000000;
          if (!v19 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
          {
            v20 = v7 == 0x7463617265746E69 && v6 == 0xEB000000006E6F69;
            if (v20 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
            {
              v21 = v0 + *(type metadata accessor for DeviceExpertTroubleshooting() + 52);
              v26 = *v21;
              v27 = *(v21 + 8);
              v28 = *(v21 + 16);

              sub_193494798(&type metadata for DeviceExpertTroubleshooting.Interaction, &off_1F07DFB28, v1);
            }

            else
            {
              sub_19349AB64();
              OUTLINED_FUNCTION_11();
              swift_allocError();
              v23 = v22;
              *v22 = v7;
              v22[1] = v6;
              v22[5] = type metadata accessor for DeviceExpertTroubleshooting();
              boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v23 + 2);
              sub_1936B8704(v0, boxed_opaque_existential_1Tm);
              *(v23 + 48) = 1;
              swift_willThrow();
            }
          }

          v15 = *(type metadata accessor for DeviceExpertTroubleshooting() + 48);
        }

        v16 = (v0 + v15);
        v18 = *v16;
        v17 = v16[1];
        return sub_1934948FC();
      }

      result = type metadata accessor for DeviceExpertTroubleshooting();
      v9 = result[9];
    }
  }

  if (*(v0 + v9 + 8))
  {
    v10 = *(v0 + v9);
    return sub_1934948FC();
  }

  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

id sub_1936B92E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  v8 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v8 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if (!(v7 >> 62))
    {
      v16 = *(v7 + 16);
      v17 = *(v7 + 32);
      v18 = *(v7 + 48);
      v19 = *(v7 + 56);
      v9 = &type metadata for DeviceExpertTroubleshooting.Action;
      v10 = &off_1F07DFB08;
      return sub_193494798(v9, v10, a3);
    }
  }

  else
  {
    v12 = a1 == 0x656C6369747261 && a2 == 0xE700000000000000;
    if (v12 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
    {
      if (v7 >> 62 == 1)
      {
        OUTLINED_FUNCTION_5_60();
        v9 = &type metadata for DeviceExpertTroubleshooting.Article;
        v10 = &off_1F07DFAF8;
        return sub_193494798(v9, v10, a3);
      }
    }

    else
    {
      v13 = a1 == 0x676E6974746573 && a2 == 0xE700000000000000;
      if (!v13 && (OUTLINED_FUNCTION_5_5() & 1) == 0)
      {
        if (a1 == 0x6F697463656C6573 && a2 == 0xE90000000000006ELL)
        {
          if (v7 >> 62 != 3)
          {
            goto LABEL_31;
          }
        }

        else if ((OUTLINED_FUNCTION_5_5() & 1) == 0 || v7 >> 62 != 3)
        {
          goto LABEL_31;
        }

        OUTLINED_FUNCTION_5_60();
        v9 = &type metadata for DeviceExpertTroubleshooting.UserSelection;
        v10 = &off_1F07DFB18;
        return sub_193494798(v9, v10, a3);
      }

      if (v7 >> 62 == 2)
      {
        OUTLINED_FUNCTION_5_60();
        v9 = &type metadata for DeviceExpertTroubleshooting.Setting;
        v10 = &off_1F07DFAE8;
        return sub_193494798(v9, v10, a3);
      }
    }
  }

LABEL_31:
  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  *v15 = a1;
  *(v15 + 8) = a2;
  *(v15 + 40) = &type metadata for DeviceExpertTroubleshooting.Entity;
  *(v15 + 16) = v7;
  *(v15 + 48) = 1;
  swift_willThrow();
}

void sub_1936B94FC()
{
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_14_47();
  v4 = *v0;
  v3 = v0[1];
  v5 = v1 == 0x49676E6974746573 && v2 == 0xE900000000000064;
  if (v5 || (v6 = v2, v8 = v0[2], v7 = v0[3], (OUTLINED_FUNCTION_92_1() & 1) != 0) || (v1 == 0x65756C6176 ? (v9 = v6 == 0xE500000000000000) : (v9 = 0), v9 || (OUTLINED_FUNCTION_92_1() & 1) != 0))
  {
    OUTLINED_FUNCTION_26_27();
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v10 = swift_allocError();
    OUTLINED_FUNCTION_13_44(v10, v11);
    *(v12 + 40) = &type metadata for DeviceExpertTroubleshooting.Setting;
    OUTLINED_FUNCTION_95();
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_6_53(v13);
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_1936B9624()
{
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_14_47();
  v4 = *v0;
  v3 = v0[1];
  v5 = v1 == 0x49656C6369747261 && v2 == 0xE900000000000064;
  if (v5 || (v6 = v2, v8 = v0[2], v7 = v0[3], (OUTLINED_FUNCTION_92_1() & 1) != 0) || (v1 == 7107189 ? (v9 = v6 == 0xE300000000000000) : (v9 = 0), v9 || (OUTLINED_FUNCTION_92_1() & 1) != 0))
  {
    OUTLINED_FUNCTION_26_27();
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v10 = swift_allocError();
    OUTLINED_FUNCTION_13_44(v10, v11);
    *(v12 + 40) = &type metadata for DeviceExpertTroubleshooting.Article;
    OUTLINED_FUNCTION_95();
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_6_53(v13);
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_1936B9750()
{
  OUTLINED_FUNCTION_62_3();
  v3 = v2;
  v5 = *v0;
  v4 = v0[1];
  if (v2 == 0x64496E6F69746361 && v1 == 0xE800000000000000)
  {
    goto LABEL_6;
  }

  v7 = v1;
  v8 = v0[2];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[5];
  v17 = v10;
  if (OUTLINED_FUNCTION_18_38())
  {
    goto LABEL_6;
  }

  v12 = v3 == 7107189 && v7 == 0xE300000000000000;
  if (v12 || (OUTLINED_FUNCTION_18_38() & 1) != 0 || (v3 == 0x656C746974 ? (v13 = v7 == 0xE500000000000000) : (v13 = 0), v13 || (OUTLINED_FUNCTION_18_38() & 1) != 0))
  {
LABEL_6:
    OUTLINED_FUNCTION_26_27();
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    v15 = v14;
    *v14 = v3;
    v14[1] = v7;
    v14[5] = &type metadata for DeviceExpertTroubleshooting.Action;
    v16 = swift_allocObject();
    v15[2] = v16;
    v16[2] = v5;
    v16[3] = v4;
    v16[4] = v8;
    v16[5] = v9;
    v16[6] = v17;
    v16[7] = v11;
    *(v15 + 48) = 1;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_1936B98EC()
{
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_14_47();
  v4 = *v0;
  v3 = v0[1];
  v5 = v1 == 0x6E6F697473657571 && v2 == 0xE800000000000000;
  if (v5 || (v6 = v2, v8 = v0[2], v7 = v0[3], (OUTLINED_FUNCTION_92_1() & 1) != 0) || (v1 == 0x726577736E61 ? (v9 = v6 == 0xE600000000000000) : (v9 = 0), v9 || (OUTLINED_FUNCTION_92_1() & 1) != 0))
  {
    OUTLINED_FUNCTION_26_27();
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    v10 = swift_allocError();
    OUTLINED_FUNCTION_13_44(v10, v11);
    *(v12 + 40) = &type metadata for DeviceExpertTroubleshooting.UserSelection;
    OUTLINED_FUNCTION_95();
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_6_53(v13);
  }

  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1936B9A0C()
{
  OUTLINED_FUNCTION_21_37();
  v4 = *v0;
  v5 = *(v0 + 8);
  if (v2 == v6 && v3 == 0xE400000000000000)
  {
    return sub_1934948FC();
  }

  v8 = v3;
  v9 = v2;
  v10 = v0[2];
  OUTLINED_FUNCTION_15_10();
  if (sub_19393CA30())
  {
    return sub_1934948FC();
  }

  v12 = v9 == 0x797469746E65 && v8 == 0xE600000000000000;
  if (v12 || (sub_19393CA30() & 1) != 0)
  {

    sub_193494798(&type metadata for DeviceExpertTroubleshooting.Entity, &off_1F07DFAD8, v1);
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v13 = v9;
    *(v13 + 8) = v8;
    *(v13 + 16) = v4;
    *(v13 + 24) = v5;
    *(v13 + 32) = v10;
    *(v13 + 40) = &type metadata for DeviceExpertTroubleshooting.Interaction;
    *(v13 + 48) = 1;
    swift_willThrow();
  }
}

void DeviceExpertTroubleshooting.init()(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for DeviceExpertTroubleshooting();
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = (a1 + v2[7]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = (a1 + v2[9]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_1936BC5D0();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v8 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v8);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;

  *v5 = 0;
  v5[1] = 0;
  *v6 = 0;
  v6[1] = 0;
  *v7 = 0;
  v7[1] = 0;
  *(a1 + v2[10]) = 0;
  v9 = (a1 + v2[11]);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (a1 + v2[12]);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  DeviceExpertTroubleshooting.Interaction.init()(&v14);
  v11 = v15;
  v12 = v16;
  v13 = a1 + v2[13];
  *v13 = v14;
  v13[8] = v11;
  *(v13 + 2) = v12;
}

uint64_t static DeviceExpertTroubleshooting.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceExpertTroubleshooting();
  v5 = v4[7];
  OUTLINED_FUNCTION_2_5();
  if (v8)
  {
    if (!v6)
    {
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_5(v7);
    v11 = v11 && v9 == v10;
    if (!v11 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (v6)
  {
    goto LABEL_40;
  }

  v12 = v4[8];
  OUTLINED_FUNCTION_2_5();
  if (v15)
  {
    if (!v13)
    {
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_5(v14);
    v18 = v11 && v16 == v17;
    if (!v18 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (v13)
  {
    goto LABEL_40;
  }

  v19 = v4[9];
  OUTLINED_FUNCTION_2_5();
  if (!v22)
  {
    if (!v20)
    {
      goto LABEL_28;
    }

LABEL_40:
    v34 = 0;
    return v34 & 1;
  }

  if (!v20)
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_5(v21);
  v25 = v11 && v23 == v24;
  if (!v25 && (sub_19393CA30() & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_28:
  if (*(a1 + v4[10]) != *(a2 + v4[10]))
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_1_9(v4[11]);
  v28 = v11 && v26 == v27;
  if (!v28 && (sub_19393CA30() & 1) == 0)
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_1_9(v4[12]);
  v31 = v11 && v29 == v30;
  if (!v31 && (sub_19393CA30() & 1) == 0)
  {
    goto LABEL_40;
  }

  v32 = v4[13];
  v39 = *(a1 + v32);
  v40 = *(a1 + v32 + 8);
  v41 = *(a1 + v32 + 16);
  v33 = (a2 + v32);
  v36 = *v33;
  v37 = *(v33 + 8);
  v38 = v33[2];
  sub_1936B9EC0();

  v34 = sub_19393C550();

  return v34 & 1;
}

unint64_t sub_1936B9EC0()
{
  result = qword_1EAE406D0;
  if (!qword_1EAE406D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE406D0);
  }

  return result;
}

uint64_t DeviceExpertTroubleshooting.hash(into:)()
{
  v1 = type metadata accessor for DeviceExpertTroubleshooting();
  v2 = (v0 + v1[7]);
  if (v2[1])
  {
    OUTLINED_FUNCTION_7_1(v2);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    sub_19393CAD0();
  }

  v3 = (v0 + v1[8]);
  if (v3[1])
  {
    OUTLINED_FUNCTION_7_1(v3);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    sub_19393CAD0();
  }

  v4 = (v0 + v1[9]);
  if (v4[1])
  {
    OUTLINED_FUNCTION_7_1(v4);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    sub_19393CAD0();
  }

  v5 = *(v0 + v1[10]);
  sub_19393CAE0();
  v6 = (v0 + v1[11]);
  v7 = *v6;
  v8 = v6[1];
  sub_19393C640();
  v9 = (v0 + v1[12]);
  v10 = *v9;
  v11 = v9[1];
  sub_19393C640();
  v12 = (v0 + v1[13]);
  v14 = *v12;
  v15 = *(v12 + 8);
  v16 = v12[2];
  sub_1936BA048();
  return sub_19393C540();
}

unint64_t sub_1936BA048()
{
  result = qword_1EAE406D8;
  if (!qword_1EAE406D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE406D8);
  }

  return result;
}

uint64_t DeviceExpertTroubleshooting.ActionType.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  v3 = result == 1 || result == 2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t DeviceExpertTroubleshooting.ActionType.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

char *static DeviceExpertTroubleshooting.ActionType.allCases.getter()
{
  v0 = sub_1936BA548(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = OUTLINED_FUNCTION_9_62(v0, v1);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v0 = sub_1936BA548((v1 > 1), v2 + 2, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  if (v3 < (v2 + 3))
  {
    v0 = OUTLINED_FUNCTION_9_62(v0, v1);
  }

  *(v0 + 2) = v2 + 3;
  v8 = &v0[16 * v6];
  *(v8 + 4) = 1;
  v8[40] = 1;
  return v0;
}

uint64_t DeviceExpertTroubleshooting.ActionType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x6E776F6E6B6E55;
  }

  if (*v0)
  {
    result = 0x6465747563657845;
  }

  else
  {
    result = 0x6574736567677553;
  }

  *v0;
  return result;
}

uint64_t DeviceExpertTroubleshooting.ActionType.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = a1 == 0x6574736567677553 && a2 == 0xE900000000000064;
    if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v8 = 0;
    }

    else
    {
      if (a1 != 0x6465747563657845 || a2 != 0xE800000000000000)
      {
        v9 = OUTLINED_FUNCTION_0_9();

        v8 = v9 & 1;
        goto LABEL_14;
      }

      v8 = 1;
    }

    v9 = 1;
  }

LABEL_14:
  *a3 = v8;
  *(a3 + 8) = v9 & 1;
  *(a3 + 9) = 0;
  return result;
}

uint64_t static DeviceExpertTroubleshooting.Entity.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(*a1 >> 62)
  {
    case 1uLL:
      if (v3 >> 62 != 1)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_0_89();

      v42 = OUTLINED_FUNCTION_90_0(v34, v35, v36, v37, v38, v39, v40, v41, v44, v46, v47, v49, v50, v52, v54);
      v24 = static DeviceExpertTroubleshooting.Article.== infix(_:_:)(v42);
      goto LABEL_10;
    case 2uLL:
      if (v3 >> 62 != 2)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_0_89();

      v23 = OUTLINED_FUNCTION_90_0(v15, v16, v17, v18, v19, v20, v21, v22, v44, v46, v47, v49, v50, v52, v54);
      v24 = static DeviceExpertTroubleshooting.Setting.== infix(_:_:)(v23);
      goto LABEL_10;
    case 3uLL:
      if (v3 >> 62 != 3)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_0_89();

      v33 = OUTLINED_FUNCTION_90_0(v25, v26, v27, v28, v29, v30, v31, v32, v44, v46, v47, v49, v50, v52, v54);
      v24 = static DeviceExpertTroubleshooting.UserSelection.== infix(_:_:)(v33);
LABEL_10:
      v14 = v24;

      goto LABEL_11;
    default:
      if (v3 >> 62)
      {
LABEL_12:
        v14 = 0;
      }

      else
      {
        v55 = *(v2 + 16);
        v56 = *(v2 + 32);
        v57 = *(v2 + 48);
        v58 = *(v2 + 56);
        v45 = *(v3 + 16);
        v48 = *(v3 + 32);
        v51 = *(v3 + 48);
        v53 = *(v3 + 56);

        v12 = OUTLINED_FUNCTION_90_0(v4, v5, v6, v7, v8, v9, v10, v11, v45, *(&v45 + 1), v48, *(&v48 + 1), v51, v53, v55);
        v14 = static DeviceExpertTroubleshooting.Action.== infix(_:_:)(v12, v13);

LABEL_11:
      }

      return v14 & 1;
  }
}

uint64_t DeviceExpertTroubleshooting.Entity.hash(into:)()
{
  v1 = *v0;
  switch(*v0 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_1_66(v1);
      sub_1936BA6EC();
      break;
    case 2uLL:
      OUTLINED_FUNCTION_1_66(v1);
      sub_1936BA698();
      break;
    case 3uLL:
      OUTLINED_FUNCTION_1_66(v1);
      sub_1936BA644();
      break;
    default:
      v3 = *(v1 + 16);
      v4 = *(v1 + 32);
      v5 = *(v1 + 48);
      v6 = *(v1 + 56);
      sub_1936BA740();
      break;
  }

  return sub_19393C540();
}

char *sub_1936BA548(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE40708, &qword_19397D600);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

unint64_t sub_1936BA644()
{
  result = qword_1EAE406E0;
  if (!qword_1EAE406E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE406E0);
  }

  return result;
}

unint64_t sub_1936BA698()
{
  result = qword_1EAE406E8;
  if (!qword_1EAE406E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE406E8);
  }

  return result;
}

unint64_t sub_1936BA6EC()
{
  result = qword_1EAE406F0;
  if (!qword_1EAE406F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE406F0);
  }

  return result;
}

unint64_t sub_1936BA740()
{
  result = qword_1EAE406F8;
  if (!qword_1EAE406F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE406F8);
  }

  return result;
}

unint64_t sub_1936BA798()
{
  result = qword_1EAE40700;
  if (!qword_1EAE40700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40700);
  }

  return result;
}

void sub_1936BA7EC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAC0E0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_30_3();
  v25 = swift_allocObject();
  OUTLINED_FUNCTION_11_3(v25, xmmword_193952700);
  *v0 = "type";
  *(v0 + 8) = 4;
  *(v0 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v11 = 2;
  v12 = OUTLINED_FUNCTION_16_6(v10, "step");
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v14 = 3;
  *v13 = "status";
  *(v13 + 8) = 6;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v15 = OUTLINED_FUNCTION_3_1(v1 + 3 * v5);
  *v16 = 4;
  v17 = OUTLINED_FUNCTION_16_6(v15, "version");
  (v9)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  *v19 = 5;
  v20 = OUTLINED_FUNCTION_16_6(v18, "session");
  (v9)(v20);
  v21 = OUTLINED_FUNCTION_3_1(v1 + 5 * v5);
  *v22 = 6;
  *v21 = "flow";
  *(v21 + 8) = 4;
  *(v21 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v9();
  v23 = OUTLINED_FUNCTION_3_1(v1 + 6 * v5);
  *v24 = 7;
  OUTLINED_FUNCTION_36_5(v23, "interaction");
  OUTLINED_FUNCTION_2_0();
  v9();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936BAA3C()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v4 = *(type metadata accessor for DeviceExpertTroubleshooting() + 28);
        goto LABEL_19;
      case 2:
        v10 = *(type metadata accessor for DeviceExpertTroubleshooting() + 32);
        goto LABEL_19;
      case 3:
        v8 = *(type metadata accessor for DeviceExpertTroubleshooting() + 36);
LABEL_19:
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        continue;
      case 4:
        LODWORD(v21) = 0;
        BYTE4(v21) = 1;
        OUTLINED_FUNCTION_113();
        sub_19393C170();
        if (BYTE4(v21))
        {
          v9 = 0;
        }

        else
        {
          v9 = v21;
        }

        *(v1 + *(type metadata accessor for DeviceExpertTroubleshooting() + 40)) = v9;
        continue;
      case 5:
        v21 = 0;
        v22 = 0;
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        if (v22)
        {
          v5 = v21;
        }

        else
        {
          v5 = 0;
        }

        if (v22)
        {
          v6 = v22;
        }

        else
        {
          v6 = 0xE000000000000000;
        }

        v7 = *(type metadata accessor for DeviceExpertTroubleshooting() + 44);
        goto LABEL_27;
      case 6:
        v21 = 0;
        v22 = 0;
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        if (v22)
        {
          v5 = v21;
        }

        else
        {
          v5 = 0;
        }

        if (v22)
        {
          v6 = v22;
        }

        else
        {
          v6 = 0xE000000000000000;
        }

        v7 = *(type metadata accessor for DeviceExpertTroubleshooting() + 48);
LABEL_27:
        v11 = (v1 + v7);
        v12 = *(v1 + v7 + 8);

        *v11 = v5;
        v11[1] = v6;
        break;
      case 7:
        v21 = 0;
        v22 = 0;
        v23 = 0xF000000000000007;
        sub_193498018();
        v13 = v23;
        if ((~v23 & 0xF000000000000007) != 0)
        {
          v14 = v21;
          v15 = v22;

          sub_1936BACA0(v14, v15, v13);
        }

        else
        {
          DeviceExpertTroubleshooting.Interaction.init()(&v18);
          sub_1936BACA0(v21, v22, v23);
          v14 = v18;
          LOBYTE(v15) = v19;
          v13 = v20;
        }

        v16 = v1 + *(type metadata accessor for DeviceExpertTroubleshooting() + 52);
        v17 = *(v16 + 16);

        *v16 = v14;
        *(v16 + 8) = v15 & 1;
        *(v16 + 16) = v13;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1936BACA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~a3 & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_1936BACB8()
{
  v2 = v1;
  result = type metadata accessor for DeviceExpertTroubleshooting();
  v4 = result;
  v5 = (v0 + *(result + 28));
  if (v5[1])
  {
    v6 = *v5;
    result = OUTLINED_FUNCTION_2_10();
    v2 = v1;
  }

  if (!v2)
  {
    v7 = (v0 + v4[8]);
    if (!v7[1] || (v8 = *v7, result = OUTLINED_FUNCTION_2_10(), !v1))
    {
      v9 = (v0 + v4[9]);
      if (!v9[1] || (v10 = *v9, result = OUTLINED_FUNCTION_2_10(), !v1))
      {
        if (!*(v0 + v4[10]) || (OUTLINED_FUNCTION_32_20(), result = sub_19393C350(), !v1))
        {
          v11 = (v0 + v4[11]);
          v12 = !*v11 && v11[1] == 0xE000000000000000;
          if (v12 || (OUTLINED_FUNCTION_71_15(), (OUTLINED_FUNCTION_272() & 1) != 0) || (OUTLINED_FUNCTION_71_15(), result = OUTLINED_FUNCTION_2_10(), !v1))
          {
            v13 = (v0 + v4[12]);
            if (*v13)
            {
              v14 = 0;
            }

            else
            {
              v14 = v13[1] == 0xE000000000000000;
            }

            if (v14 || (OUTLINED_FUNCTION_71_15(), (OUTLINED_FUNCTION_272() & 1) != 0) || (OUTLINED_FUNCTION_71_15(), result = OUTLINED_FUNCTION_2_10(), !v1))
            {
              v15 = (v0 + v4[13]);
              v16 = *v15;
              v17 = *(v15 + 8);
              v18 = v15[2];
              OUTLINED_FUNCTION_45_24();
              DeviceExpertTroubleshooting.Interaction.init()(&v20);
              sub_1936B9EC0();
              v19 = sub_19393C550();

              if ((v19 & 1) == 0)
              {
                OUTLINED_FUNCTION_45_24();
                OUTLINED_FUNCTION_32_20();
                sub_193447600();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1936BAF44()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAC0F8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_30_3();
  v6 = OUTLINED_FUNCTION_35_28();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBB0);
  *v1 = 0;
  *v0 = "Unknown";
  *(v0 + 8) = 7;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_10_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v12 = 1;
  *v11 = "Suggested";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v10();
  v13 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v14 = 2;
  OUTLINED_FUNCTION_36_5(v13, "Executed");
  OUTLINED_FUNCTION_10_0();
  v10();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1936BB100(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_133();
  v2 = swift_allocObject();
  DeviceExpertTroubleshooting.Action.init()((v2 + 16));
  *a1 = v2;
}

void sub_1936BB140()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAC110);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_30_3();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_11_3(v6, xmmword_19394FBC0);
  *v0 = "action";
  *(v0 + 8) = 6;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v12 = 2;
  v13 = OUTLINED_FUNCTION_16_6(v11, "article");
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v15 = 3;
  v16 = OUTLINED_FUNCTION_16_6(v14, "setting");
  (v10)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v1 + 3 * v5);
  *v18 = 4;
  OUTLINED_FUNCTION_36_5(v17, "selection");
  OUTLINED_FUNCTION_2_0();
  v10();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936BB300()
{
  v2 = v0;
  v35 = v0;
  while (1)
  {
    result = sub_19393C0E0();
    if (v1 || (v4 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        sub_193498018();
        OUTLINED_FUNCTION_108();
        object = *(&v32 + 1);
        if (*(&v32 + 1))
        {
          v7 = *(&v34 + 1);
          v6 = v34;
          v8 = &v32;
          v10 = *(&v33 + 1);
          countAndFlagsBits = v33;
        }

        else
        {
          v8 = &v31;
          DeviceExpertTroubleshooting.Action.init()(&v31);
          object = v31.actionId._object;
          countAndFlagsBits = v31.url._countAndFlagsBits;
          v10 = v31.url._object;
          v6 = v31.title._countAndFlagsBits;
          v7 = v31.title._object;
        }

        v27 = v8->actionId._countAndFlagsBits;
        OUTLINED_FUNCTION_133();
        v28 = swift_allocObject();
        v28[2] = v27;
        v28[3] = object;
        v28[4] = countAndFlagsBits;
        v28[5] = v10;
        v28[6] = v6;
        v28[7] = v7;
        v2 = v35;
        *v35 = v28;
        break;
      case 2:
        OUTLINED_FUNCTION_16_31();
        sub_193498018();
        OUTLINED_FUNCTION_108();
        v19 = *(&v32 + 1);
        if (*(&v32 + 1))
        {
          v21 = *(&v33 + 1);
          v20 = v33;
          v22 = &v32;
        }

        else
        {
          v22 = &v31;
          DeviceExpertTroubleshooting.Article.init()();
          v19 = v31.actionId._object;
          v20 = v31.url._countAndFlagsBits;
          v21 = v31.url._object;
        }

        v29 = v22->actionId._countAndFlagsBits;
        OUTLINED_FUNCTION_95();
        v30 = swift_allocObject();
        *(v30 + 16) = v29;
        *(v30 + 24) = v19;
        *(v30 + 32) = v20;
        *(v30 + 40) = v21;
        *v2 = v30 | 0x4000000000000000;
        break;
      case 3:
        OUTLINED_FUNCTION_16_31();
        sub_193498018();
        OUTLINED_FUNCTION_108();
        v11 = *(&v32 + 1);
        if (*(&v32 + 1))
        {
          v13 = *(&v33 + 1);
          v12 = v33;
          v14 = &v32;
        }

        else
        {
          v14 = &v31;
          DeviceExpertTroubleshooting.Setting.init()();
          v11 = v31.actionId._object;
          v12 = v31.url._countAndFlagsBits;
          v13 = v31.url._object;
        }

        v23 = v14->actionId._countAndFlagsBits;
        OUTLINED_FUNCTION_95();
        v24 = swift_allocObject();
        *(v24 + 16) = v23;
        *(v24 + 24) = v11;
        *(v24 + 32) = v12;
        *(v24 + 40) = v13;
        *v2 = v24 | 0x8000000000000000;
        break;
      case 4:
        OUTLINED_FUNCTION_16_31();
        sub_193498018();
        OUTLINED_FUNCTION_108();
        v15 = *(&v32 + 1);
        if (*(&v32 + 1))
        {
          v17 = *(&v33 + 1);
          v16 = v33;
          v18 = &v32;
        }

        else
        {
          v18 = &v31;
          DeviceExpertTroubleshooting.UserSelection.init()();
          v15 = v31.actionId._object;
          v16 = v31.url._countAndFlagsBits;
          v17 = v31.url._object;
        }

        v25 = v18->actionId._countAndFlagsBits;
        OUTLINED_FUNCTION_95();
        v26 = swift_allocObject();
        *(v26 + 16) = v25;
        *(v26 + 24) = v15;
        *(v26 + 32) = v16;
        *(v26 + 40) = v17;
        *v2 = v26 | 0xC000000000000000;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1936BB5DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1936BB62C()
{
  v1 = *v0;
  switch(*v0 >> 62)
  {
    case 1uLL:
    case 2uLL:
    case 3uLL:
      OUTLINED_FUNCTION_9_63();
      break;
    default:
      v2 = *(v1 + 16);
      v3 = *(v1 + 32);
      v4 = *(v1 + 48);
      v5 = *(v1 + 56);
      break;
  }

  sub_193447600();
}

uint64_t sub_1936BB7EC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_19393C420();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_40_25(v8);
  v10 = *(v9 + 72);
  OUTLINED_FUNCTION_30_3();
  v13 = v12 & ~v11;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_19394FBE0;
  v15 = (v14 + v13);
  v16 = v14 + v13 + *(v7 + 56);
  *v15 = 1;
  *v16 = a3;
  *(v16 + 8) = 9;
  *(v16 + 16) = 2;
  v17 = *MEMORY[0x1E69AADC8];
  v18 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v18);
  v20 = *(v19 + 104);
  (v20)(v16, v17, v18);
  v21 = v15 + v10 + *(v7 + 56);
  *(v15 + v10) = 2;
  *v21 = a4;
  *(v21 + 1) = a5;
  v21[16] = 2;
  v20();
  return sub_19393C410();
}

void sub_1936BB9C4()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAC158);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_30_3();
  v6 = OUTLINED_FUNCTION_35_28();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBB0);
  *v1 = 1;
  *v0 = "actionId";
  *(v0 + 8) = 8;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_10_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v12 = 2;
  *v11 = "url";
  *(v11 + 8) = 3;
  *(v11 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v10();
  v13 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v14 = 3;
  OUTLINED_FUNCTION_36_5(v13, "title");
  OUTLINED_FUNCTION_10_0();
  v10();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936BBB54()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = OUTLINED_FUNCTION_124();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_113();
        v28 = sub_19393C200();
        OUTLINED_FUNCTION_50_2(v28, v29, v30, v31, v32, v33, v34, v35, 0, 0);
        OUTLINED_FUNCTION_11_36();
        if (v14)
        {
          v37 = 0xE000000000000000;
        }

        else
        {
          v37 = v36;
        }

        v38 = v1[5];

        v1[4] = v2;
        v1[5] = v37;
        break;
      case 2:
        OUTLINED_FUNCTION_113();
        v17 = sub_19393C200();
        OUTLINED_FUNCTION_50_2(v17, v18, v19, v20, v21, v22, v23, v24, 0, 0);
        OUTLINED_FUNCTION_11_36();
        if (v14)
        {
          v26 = 0xE000000000000000;
        }

        else
        {
          v26 = v25;
        }

        v27 = v1[3];

        v1[2] = v2;
        v1[3] = v26;
        break;
      case 1:
        OUTLINED_FUNCTION_113();
        v5 = sub_19393C200();
        OUTLINED_FUNCTION_50_2(v5, v6, v7, v8, v9, v10, v11, v12, 0, 0);
        OUTLINED_FUNCTION_11_36();
        if (v14)
        {
          v15 = 0xE000000000000000;
        }

        else
        {
          v15 = v13;
        }

        v16 = v1[1];

        *v1 = v2;
        v1[1] = v15;
        break;
    }
  }

  return result;
}

uint64_t sub_1936BBC58()
{
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v9 = v0[4];
  v8 = v0[5];
  if (*v0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[1] == 0xE000000000000000;
  }

  if (!v5)
  {
    result = OUTLINED_FUNCTION_272();
    if ((result & 1) == 0)
    {
      result = OUTLINED_FUNCTION_36_24();
      v2 = v1;
    }
  }

  if (!v2)
  {
    v7 = !v3 && v4 == 0xE000000000000000;
    if (v7 || (OUTLINED_FUNCTION_286(), result = OUTLINED_FUNCTION_272(), (result & 1) != 0) || (OUTLINED_FUNCTION_286(), result = OUTLINED_FUNCTION_36_24(), !v1))
    {
      if (v9 || v8 != 0xE000000000000000)
      {
        result = OUTLINED_FUNCTION_272();
        if ((result & 1) == 0)
        {
          return OUTLINED_FUNCTION_36_24();
        }
      }
    }
  }

  return result;
}

void sub_1936BBDFC()
{
  OUTLINED_FUNCTION_115();
  v22 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_19393C420();
  __swift_allocate_value_buffer(v7, v6);
  __swift_project_value_buffer(v7, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_40_25(v8);
  v10 = *(v9 + 72);
  OUTLINED_FUNCTION_30_3();
  v13 = v12 & ~v11;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_19394FBE0;
  v15 = (v14 + v13);
  v16 = v14 + v13 + *(v7 + 56);
  *v15 = 1;
  *v16 = v4;
  *(v16 + 8) = v2;
  *(v16 + 16) = 2;
  v17 = *MEMORY[0x1E69AADC8];
  v18 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v18);
  v20 = *(v19 + 104);
  (v20)(v16, v17, v18);
  v21 = v15 + v10 + *(v7 + 56);
  *(v15 + v10) = 2;
  *v21 = v22;
  *(v21 + 1) = 6;
  v21[16] = 2;
  v20();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936BBF8C()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = OUTLINED_FUNCTION_124();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_113();
      v17 = sub_19393C200();
      OUTLINED_FUNCTION_50_2(v17, v18, v19, v20, v21, v22, v23, v24, 0, 0);
      OUTLINED_FUNCTION_11_36();
      if (v14)
      {
        v26 = 0xE000000000000000;
      }

      else
      {
        v26 = v25;
      }

      v27 = v1[3];

      v1[2] = v2;
      v1[3] = v26;
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_113();
      v5 = sub_19393C200();
      OUTLINED_FUNCTION_50_2(v5, v6, v7, v8, v9, v10, v11, v12, 0, 0);
      OUTLINED_FUNCTION_11_36();
      if (v14)
      {
        v15 = 0xE000000000000000;
      }

      else
      {
        v15 = v13;
      }

      v16 = v1[1];

      *v1 = v2;
      v1[1] = v15;
    }
  }

  return result;
}

void sub_1936BC058()
{
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  if (*v0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[1] == 0xE000000000000000;
  }

  if (!v5)
  {
    OUTLINED_FUNCTION_286();
    if ((OUTLINED_FUNCTION_272() & 1) == 0)
    {
      OUTLINED_FUNCTION_286();
      OUTLINED_FUNCTION_24_30();
      v2 = v1;
    }
  }

  if (!v2)
  {
    if (v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4 == 0xE000000000000000;
    }

    if (!v6 && (OUTLINED_FUNCTION_272() & 1) == 0)
    {
      OUTLINED_FUNCTION_24_30();
    }
  }
}

void sub_1936BC198()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_124();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (v2 == 2)
    {
      sub_193498018();
      OUTLINED_FUNCTION_133();
      v4 = swift_allocObject();
      DeviceExpertTroubleshooting.Action.init()((v4 + 16));
      sub_1934354B4(0xF000000000000007);
      v5 = *(v1 + 16);

      *(v1 + 16) = v4;
    }

    else if (v2 == 1)
    {
      sub_1934982A8();
      *v1 = 0;
      *(v1 + 8) = 0;
    }
  }
}

uint64_t sub_1936BC2FC()
{
  v2 = v1;
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = v0[2];
  sub_1936BC530();
  result = sub_19393C550();
  if ((result & 1) == 0)
  {
    OUTLINED_FUNCTION_32_20();
    result = sub_193447324(v7, v8, v9, v10, v11, v12);
    v2 = v1;
  }

  if (!v2)
  {
    OUTLINED_FUNCTION_133();
    v13 = swift_allocObject();
    swift_retain_n();
    DeviceExpertTroubleshooting.Action.init()((v13 + 16));
    sub_1936BC4DC();
    LOBYTE(v13) = sub_19393C550();

    if ((v13 & 1) == 0)
    {
      OUTLINED_FUNCTION_32_20();
      sub_193447600();
    }
  }

  return result;
}

unint64_t sub_1936BC4DC()
{
  result = qword_1EAE40780;
  if (!qword_1EAE40780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40780);
  }

  return result;
}

unint64_t sub_1936BC530()
{
  result = qword_1EAE40788;
  if (!qword_1EAE40788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40788);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_36_24()
{

  return sub_19393C3C0();
}

uint64_t DeviceExpertTroubleshooting.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for DeviceExpertTroubleshooting();
  return sub_19344865C(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for DeviceExpertTroubleshooting()
{
  result = qword_1EAE44C20;
  if (!qword_1EAE44C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeviceExpertTroubleshooting.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for DeviceExpertTroubleshooting();
  return sub_19344865C(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t DeviceExpertTroubleshooting.type.getter()
{
  v0 = type metadata accessor for DeviceExpertTroubleshooting();
  OUTLINED_FUNCTION_4_4(*(v0 + 28));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t DeviceExpertTroubleshooting.type.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = type metadata accessor for DeviceExpertTroubleshooting();
  result = OUTLINED_FUNCTION_201(*(v3 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DeviceExpertTroubleshooting.step.getter()
{
  v0 = type metadata accessor for DeviceExpertTroubleshooting();
  OUTLINED_FUNCTION_4_4(*(v0 + 32));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t DeviceExpertTroubleshooting.step.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = type metadata accessor for DeviceExpertTroubleshooting();
  result = OUTLINED_FUNCTION_201(*(v3 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DeviceExpertTroubleshooting.status.getter()
{
  v0 = type metadata accessor for DeviceExpertTroubleshooting();
  OUTLINED_FUNCTION_4_4(*(v0 + 36));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t DeviceExpertTroubleshooting.status.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = type metadata accessor for DeviceExpertTroubleshooting();
  result = OUTLINED_FUNCTION_201(*(v3 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DeviceExpertTroubleshooting.version.setter(int a1)
{
  result = type metadata accessor for DeviceExpertTroubleshooting();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t DeviceExpertTroubleshooting.session.getter()
{
  v0 = type metadata accessor for DeviceExpertTroubleshooting();
  OUTLINED_FUNCTION_4_4(*(v0 + 44));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t DeviceExpertTroubleshooting.session.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = type metadata accessor for DeviceExpertTroubleshooting();
  result = OUTLINED_FUNCTION_201(*(v3 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DeviceExpertTroubleshooting.flow.getter()
{
  v0 = type metadata accessor for DeviceExpertTroubleshooting();
  OUTLINED_FUNCTION_4_4(*(v0 + 48));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t DeviceExpertTroubleshooting.flow.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = type metadata accessor for DeviceExpertTroubleshooting();
  result = OUTLINED_FUNCTION_201(*(v3 + 48));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DeviceExpertTroubleshooting.interaction.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = (v1 + *(type metadata accessor for DeviceExpertTroubleshooting() + 52));
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = v2[2];
  *v0 = v3;
  *(v0 + 8) = v4;
  *(v0 + 16) = v5;
}

uint64_t DeviceExpertTroubleshooting.interaction.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = v1 + *(type metadata accessor for DeviceExpertTroubleshooting() + 52);
  v6 = *(v5 + 16);

  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t sub_1936BCC74@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceExpertTroubleshooting.ActionType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1936BCC9C@<X0>(char **a1@<X8>)
{
  result = static DeviceExpertTroubleshooting.ActionType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1936BCCC4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1936BCCD0();
}

uint64_t sub_1936BCCD0()
{
  sub_19393CAB0();
  v0 = DeviceExpertTroubleshooting.ActionType.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_1936BCD2C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1936BCD38();
}

uint64_t sub_1936BCD7C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_1936BCD88();
}

uint64_t sub_1936BCD88()
{
  sub_19393CAB0();
  v0 = DeviceExpertTroubleshooting.ActionType.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

BOOL sub_1936BCDE0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  return sub_1936BCDFC();
}

uint64_t DeviceExpertTroubleshooting.Entity.hashValue.getter()
{
  v2 = *v0;
  sub_19393CAB0();
  DeviceExpertTroubleshooting.Entity.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1936BCEA8()
{
  v2 = *v0;
  sub_19393CAB0();
  DeviceExpertTroubleshooting.Entity.hash(into:)();
  return sub_19393CB00();
}

uint64_t DeviceExpertTroubleshooting.Action.actionId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t DeviceExpertTroubleshooting.Action.actionId.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DeviceExpertTroubleshooting.Action.url.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t DeviceExpertTroubleshooting.Action.url.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t DeviceExpertTroubleshooting.Action.title.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t DeviceExpertTroubleshooting.Action.title.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void __swiftcall DeviceExpertTroubleshooting.Action.init()(IntelligencePlatformLibrary::DeviceExpertTroubleshooting::Action *__return_ptr retstr)
{
  retstr->actionId._countAndFlagsBits = 0;
  retstr->actionId._object = 0xE000000000000000;
  retstr->url._countAndFlagsBits = 0;
  retstr->url._object = 0xE000000000000000;
  retstr->title._countAndFlagsBits = 0;
  retstr->title._object = 0xE000000000000000;
}

uint64_t static DeviceExpertTroubleshooting.Action.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (!v10 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  v11 = v2 == v6 && v4 == v7;
  if (!v11 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  OUTLINED_FUNCTION_13_0();

  return sub_19393CA30();
}

uint64_t DeviceExpertTroubleshooting.Action.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_19393C640();
  sub_19393C640();

  return sub_19393C640();
}

uint64_t DeviceExpertTroubleshooting.Action.hashValue.getter()
{
  OUTLINED_FUNCTION_15_47();
  sub_19393CAB0();
  v0 = OUTLINED_FUNCTION_116_3();
  OUTLINED_FUNCTION_108_3(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_19393C640();
  sub_19393C640();
  return sub_19393CB00();
}

uint64_t sub_1936BD2B4()
{
  OUTLINED_FUNCTION_15_47();
  sub_19393CAB0();
  v0 = OUTLINED_FUNCTION_116_3();
  OUTLINED_FUNCTION_108_3(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_19393C640();
  sub_19393C640();
  return sub_19393CB00();
}

uint64_t DeviceExpertTroubleshooting.UserSelection.question.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t DeviceExpertTroubleshooting.UserSelection.question.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DeviceExpertTroubleshooting.UserSelection.answer.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t DeviceExpertTroubleshooting.UserSelection.answer.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

IntelligencePlatformLibrary::DeviceExpertTroubleshooting::UserSelection __swiftcall DeviceExpertTroubleshooting.UserSelection.init()()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  return result;
}

uint64_t sub_1936BD428(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_19393CA30(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_13_0();

      return sub_19393CA30();
    }
  }

  return result;
}

uint64_t sub_1936BD4CC()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_19393C640();

  return sub_19393C640();
}

uint64_t sub_1936BD520()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_19393CAB0();
  v5 = OUTLINED_FUNCTION_116_3();
  OUTLINED_FUNCTION_108_3(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15);
  sub_19393C640();
  return sub_19393CB00();
}

uint64_t sub_1936BD584()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_19393CAB0();
  v5 = OUTLINED_FUNCTION_116_3();
  OUTLINED_FUNCTION_108_3(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15);
  sub_19393C640();
  return sub_19393CB00();
}

void DeviceExpertTroubleshooting.Interaction.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t DeviceExpertTroubleshooting.Interaction.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t DeviceExpertTroubleshooting.Interaction.entity.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);

  *(v1 + 16) = v2;
  return result;
}

void DeviceExpertTroubleshooting.Interaction.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_1936BB100(&v2);
  *(a1 + 16) = v2;
}

uint64_t static DeviceExpertTroubleshooting.Interaction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v12 = *a1;
  v13 = v2;
  v10 = v4;
  v11 = v5;
  v7 = DeviceExpertTroubleshooting.ActionType.rawValue.getter();
  if (v7 == DeviceExpertTroubleshooting.ActionType.rawValue.getter())
  {
    v12 = v3;
    v10 = v6;

    v8 = static DeviceExpertTroubleshooting.Entity.== infix(_:_:)(&v12, &v10);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t DeviceExpertTroubleshooting.Interaction.hash(into:)()
{
  v1 = v0[2];
  v4 = *v0;
  v5 = *(v0 + 8);
  v2 = DeviceExpertTroubleshooting.ActionType.rawValue.getter();
  MEMORY[0x193B18030](v2);
  return DeviceExpertTroubleshooting.Entity.hash(into:)();
}

uint64_t DeviceExpertTroubleshooting.Interaction.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  sub_19393CAB0();
  v4 = DeviceExpertTroubleshooting.ActionType.rawValue.getter();
  MEMORY[0x193B18030](v4);
  DeviceExpertTroubleshooting.Entity.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1936BD858()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v0[2];
  sub_19393CAB0();
  DeviceExpertTroubleshooting.Interaction.hash(into:)();
  return sub_19393CB00();
}

uint64_t DeviceExpertTroubleshooting.hashValue.getter()
{
  sub_19393CAB0();
  DeviceExpertTroubleshooting.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1936BD8FC()
{
  sub_19393CAB0();
  DeviceExpertTroubleshooting.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_1936BD93C()
{
  result = qword_1EAE40790;
  if (!qword_1EAE40790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE40798, &qword_19397D6D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE40790);
  }

  return result;
}

unint64_t sub_1936BD9AC()
{
  result = qword_1EAE407A0;
  if (!qword_1EAE407A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE407A0);
  }

  return result;
}

unint64_t sub_1936BDA04()
{
  result = qword_1EAE407A8;
  if (!qword_1EAE407A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE407A8);
  }

  return result;
}

unint64_t sub_1936BDA5C()
{
  result = qword_1EAE407B0;
  if (!qword_1EAE407B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE407B0);
  }

  return result;
}

unint64_t sub_1936BDAB4()
{
  result = qword_1EAE407B8;
  if (!qword_1EAE407B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE407B8);
  }

  return result;
}

unint64_t sub_1936BDB10()
{
  result = qword_1EAE407C0;
  if (!qword_1EAE407C0)
  {
    type metadata accessor for DeviceExpertTroubleshooting();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE407C0);
  }

  return result;
}

void sub_1936BDB94()
{
  sub_19349D140();
  if (v0 <= 0x3F)
  {
    sub_19349D198();
    if (v1 <= 0x3F)
    {
      sub_193658134();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1936BDC88(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 124);
    }

    v3 = *a1;
    OUTLINED_FUNCTION_18_39();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

void *sub_1936BDCCC(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      return OUTLINED_FUNCTION_2_11(result, (v3 | (v3 << 57)) & 0xF000000000000007);
    }
  }

  return result;
}

uint64_t sub_1936BDD48(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1936BDD88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

      return OUTLINED_FUNCTION_3_2(result, a2);
    }

    *(result + 48) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_3_2(result, a2);
    }
  }

  return result;
}

uint64_t sub_1936BDDF4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 24))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 124);
    }

    v3 = *(a1 + 16);
    OUTLINED_FUNCTION_18_39();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_1936BDE38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_1936BDEF8@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = result == 1701667182 && a2 == 0xE400000000000000;
  if (v7 || (v9 = result, v10 = v3[2], v20 = v3[3], v11 = v3[4], v19 = v3[5], v12 = v3[6], result = OUTLINED_FUNCTION_9_1(), (result & 1) != 0))
  {
    if (v6)
    {
      return sub_1934948FC();
    }

    goto LABEL_28;
  }

  v13 = v9 == 0x73656C646E6168 && a2 == 0xE700000000000000;
  if (v13 || (result = OUTLINED_FUNCTION_9_1(), (result & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB0, &qword_193950BB8);
    return sub_1934948FC();
  }

  v14 = v9 == 0xD000000000000011 && 0x8000000193A2D6D0 == a2;
  if (v14 || (result = OUTLINED_FUNCTION_9_1(), (result & 1) != 0))
  {
    if (v11)
    {
      return sub_1934948FC();
    }

    goto LABEL_28;
  }

  result = 0xD000000000000013;
  v15 = v9 == 0xD000000000000013 && 0x8000000193A2D6F0 == a2;
  if (v15 || (result = OUTLINED_FUNCTION_9_1(), (result & 1) != 0))
  {
    if (v12)
    {
      return sub_1934948FC();
    }

LABEL_28:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  sub_19349AB64();
  swift_allocError();
  v17 = v16;
  *v16 = v9;
  v16[1] = a2;
  v16[5] = &type metadata for TextUnderstandingPersonHandles;
  v18 = swift_allocObject();
  v17[2] = v18;
  v18[2] = v5;
  v18[3] = v6;
  v18[4] = v10;
  v18[5] = v20;
  v18[6] = v11;
  v18[7] = v19;
  v18[8] = v12;
  *(v17 + 48) = 1;
  swift_willThrow();
}

uint64_t sub_1936BE144()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAC1A0);
  __swift_project_value_buffer(v0, qword_1EAEAC1A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_19394FBC0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  v9 = *(*(v8 - 8) + 104);
  v9(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  v11 = OUTLINED_FUNCTION_0_0(v10, "handles");
  (v9)(v11);
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  v14 = OUTLINED_FUNCTION_0_0(v13, "handlePropertyKey");
  (v9)(v14);
  v15 = (v5 + 3 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "cnContactIdentifier";
  *(v16 + 1) = 19;
  v16[16] = 2;
  (v9)();
  return sub_19393C410();
}

uint64_t sub_1936BE370()
{
  while (1)
  {
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
        sub_19393C200();
        break;
      case 2:
        sub_19393C1B0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1936BE420()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  if (v0[1])
  {
    v7 = *v0;
    result = sub_19393C3C0();
  }

  if (!v1)
  {
    if (*(v2 + 16))
    {
      result = sub_19393C380();
    }

    if (v4)
    {
      result = sub_19393C3C0();
    }

    if (v6)
    {
      return sub_19393C3C0();
    }
  }

  return result;
}

uint64_t sub_1936BE4EC()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE407C8;

  return v0;
}

uint64_t sub_1936BE530@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE7DF30 != -1)
  {
    OUTLINED_FUNCTION_0_90();
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEAC1A0);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t TextUnderstandingPersonHandles.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingPersonHandles.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TextUnderstandingPersonHandles.handles.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t TextUnderstandingPersonHandles.handlePropertyKey.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingPersonHandles.handlePropertyKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t TextUnderstandingPersonHandles.cnContactIdentifier.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingPersonHandles.cnContactIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

void __swiftcall TextUnderstandingPersonHandles.init()(IntelligencePlatformLibrary::TextUnderstandingPersonHandles *__return_ptr retstr)
{
  retstr->name.value._countAndFlagsBits = 0;
  retstr->name.value._object = 0;
  retstr->handles._rawValue = MEMORY[0x1E69E7CC0];
  retstr->handlePropertyKey = 0u;
  retstr->cnContactIdentifier = 0u;
}

uint64_t static TextUnderstandingPersonHandles.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a2[1];
  v10 = a2[2];
  v12 = a2[3];
  v11 = a2[4];
  v14 = a2[5];
  v13 = a2[6];
  if (v3)
  {
    if (!v9)
    {
      return 0;
    }

    v15 = *a1 == *a2 && v3 == v9;
    if (!v15 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (sub_19344FC94(v4, v10))
  {
    if (v6)
    {
      if (!v11)
      {
        return 0;
      }

      v16 = v5 == v12 && v6 == v11;
      if (!v16 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    if (v8)
    {
      if (v13)
      {
        if (v7 == v14 && v8 == v13)
        {
          return 1;
        }

        OUTLINED_FUNCTION_13_0();
        if (sub_19393CA30())
        {
          return 1;
        }
      }
    }

    else if (!v13)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t TextUnderstandingPersonHandles.hash(into:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  if (v1[1])
  {
    v8 = *v1;
    sub_19393CAD0();
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  sub_1934D11C8(a1, v3);
  if (!v5)
  {
    sub_19393CAD0();
    if (v7)
    {
      goto LABEL_6;
    }

    return sub_19393CAD0();
  }

  sub_19393CAD0();
  sub_19393C640();
  if (!v7)
  {
    return sub_19393CAD0();
  }

LABEL_6:
  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t TextUnderstandingPersonHandles.hashValue.getter()
{
  OUTLINED_FUNCTION_0_91();
  sub_19393CAB0();
  TextUnderstandingPersonHandles.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1936BEA58()
{
  OUTLINED_FUNCTION_0_91();
  sub_19393CAB0();
  TextUnderstandingPersonHandles.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1936BEAA0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1936BEAE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s7ToolKitOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1936BEC04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED511A18);
  v5 = __swift_project_value_buffer(v4, qword_1ED511A18);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.ToolKit.Transcript.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:2419200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_56 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511A18);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE407D8, &qword_19397DE78);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.ToolKit.Transcript.attribute(_:)(void (*a1)(void))
{
  result = sub_1936BF014(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936BF05C(void (*a1)(void))
{
  result = sub_1936BF014(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936BF08C(uint64_t a1)
{
  result = sub_1936BF0B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1936BF0B4()
{
  result = qword_1ED503D08;
  if (!qword_1ED503D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED503D08);
  }

  return result;
}

_BYTE *_s10TranscriptOwst_2(_BYTE *result, int a2, int a3)
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

void sub_1936BF1E0()
{
  OUTLINED_FUNCTION_183_2();
  OUTLINED_FUNCTION_57_0();
  v2 = OUTLINED_FUNCTION_120_6();
  v4 = *v0;
  v5 = v1 == (v2 & 0xFFFFFFFFFFFFLL | 0x73000000000000) && v3 == 0xE700000000000000;
  if (v5 || (v6 = v3, v7 = *(v0 + 2), (OUTLINED_FUNCTION_274_1() & 1) != 0) || (v1 == 0x736F6E616ELL ? (v8 = v6 == 0xE500000000000000) : (v8 = 0), v8 || (OUTLINED_FUNCTION_274_1() & 1) != 0))
  {
    sub_1934948FC();
  }

  else
  {
    sub_19349AB64();
    v9 = OUTLINED_FUNCTION_13_9();
    *v10 = v1;
    *(v10 + 8) = v6;
    *(v10 + 40) = &type metadata for ToolKitToolTimestamp;
    *(v10 + 16) = v4;
    *(v10 + 24) = v7;
    OUTLINED_FUNCTION_23_2(v9, v10);
  }

  OUTLINED_FUNCTION_180_5();
}

void sub_1936BF300()
{
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_315();
  v2 = OUTLINED_FUNCTION_194_2();
  v5 = *v0;
  v4 = v0[1];
  v6 = v1 == (v2 | 0x6C725500000000) && v3 == 0xE700000000000000;
  if (v6 || (v7 = v3, v9 = v0[2], v8 = v0[3], (OUTLINED_FUNCTION_67() & 1) != 0))
  {
    OUTLINED_FUNCTION_26_27();
  }

  else
  {
    v10 = v1 == OUTLINED_FUNCTION_26_28() && v7 == 0xE500000000000000;
    if (v10 || (OUTLINED_FUNCTION_67() & 1) != 0)
    {
      sub_193450688(v9, v8);
      OUTLINED_FUNCTION_26_27();
      sub_193446A6C(v9, v8);
    }

    else
    {
      sub_19349AB64();
      OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_32_3();
      *v11 = v1;
      v11[1] = v7;
      v11[5] = &type metadata for ToolKitToolAny;
      OUTLINED_FUNCTION_95();
      v12 = swift_allocObject();
      v0[2] = v12;
      v12[2] = v5;
      v12[3] = v4;
      v12[4] = v9;
      v12[5] = v8;
      OUTLINED_FUNCTION_26_0();

      sub_193450688(v9, v8);
    }
  }

  OUTLINED_FUNCTION_54_0();
}

id sub_1936BF444()
{
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_46_21();
  v6 = v6 && v4 == v5;
  if (v6 || (OUTLINED_FUNCTION_33_24() & 1) != 0)
  {
    if (!(v0 >> 61))
    {
      *&__dst[0] = *(v0 + 16);
      v7 = &type metadata for ToolKitToolTypeIdentifier.Primitive;
      v8 = &off_1F07E0F98;
      return sub_193494798(v7, v8, v3);
    }
  }

  else
  {
    v10 = v2 == 0x6D6F74737563 && v1 == 0xE600000000000000;
    if (v10 || (OUTLINED_FUNCTION_24_37() & 1) != 0)
    {
      OUTLINED_FUNCTION_213();
      if (v6)
      {
        v11 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        __dst[0] = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        __dst[1] = v11;
        v7 = &type metadata for ToolKitToolTypeIdentifier.Custom;
        v8 = &off_1F07E0FA8;
        return sub_193494798(v7, v8, v3);
      }
    }

    else
    {
      v12 = v2 == 0x6E69746C697562 && v1 == 0xE700000000000000;
      if (v12 || (OUTLINED_FUNCTION_34_31() & 1) != 0)
      {
        OUTLINED_FUNCTION_215_2();
        if (v6)
        {
          *&__dst[0] = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v7 = &type metadata for ToolKitToolTypeIdentifier.Builtin;
          v8 = &off_1F07E0FB8;
          return sub_193494798(v7, v8, v3);
        }
      }

      else
      {
        v13 = v2 == 0x7475626972747461 && v1 == 0xEA00000000006465;
        if (!v13 && (OUTLINED_FUNCTION_23_37() & 1) == 0)
        {
          OUTLINED_FUNCTION_110_7();
          if (v6 && v1 == 0xE700000000000000)
          {
            OUTLINED_FUNCTION_216_1();
            if (!v6)
            {
              goto LABEL_42;
            }
          }

          else
          {
            if ((OUTLINED_FUNCTION_34_31() & 1) == 0)
            {
              goto LABEL_42;
            }

            OUTLINED_FUNCTION_211_0();
            if (!v6)
            {
              goto LABEL_42;
            }
          }

          __dst[0] = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v7 = &type metadata for ToolKitToolTypeIdentifier.Codable;
          v8 = &off_1F07E0FD8;
          return sub_193494798(v7, v8, v3);
        }

        OUTLINED_FUNCTION_217_1();
        if (v6)
        {
          memcpy(__dst, ((v0 & 0x1FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
          memcpy(v18, __dst, sizeof(v18));
          v7 = &type metadata for ToolKitToolTypeIdentifier.Attributed;
          v8 = &off_1F07E0FC8;
          return sub_193494798(v7, v8, v3);
        }
      }
    }
  }

LABEL_42:
  sub_19349AB64();
  v15 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_64(v15, v16);
  OUTLINED_FUNCTION_19_1(v17, &type metadata for ToolKitToolTypeIdentifier);
}

id sub_1936BFCD0()
{
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_191_2();
  v4 = v4 && v3 == 0xE300000000000000;
  if (v4 || (OUTLINED_FUNCTION_37_26() & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v12)
    {
LABEL_7:
      sub_19349AB64();
      v13 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_64(v13, v14);
      OUTLINED_FUNCTION_19_1(v15, &type metadata for ToolKitToolTypeIdentifier.Builtin);
    }

    v17 = *(v0 + 16);
    goto LABEL_16;
  }

  v18 = v2 == 0x6D754E646E756F62 && v1 == 0xEB00000000726562;
  if (v18 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v19 != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v21 = v2 == 0x7261646E656C6163 && v1 == 0xE800000000000000;
  if (v21 || (OUTLINED_FUNCTION_0_66() & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v22 != 2)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_285_0(1869377379);
  v23 = v4 && v1 == 0xE500000000000000;
  if (v23 || (OUTLINED_FUNCTION_1_31() & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v24 != 3)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_112_12();
  v25 = v4 && v1 == 0xE800000000000000;
  if (v25 || (OUTLINED_FUNCTION_0_66() & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v26 != 4)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_144_6();
  v27 = v4 && v1 == 0xE400000000000000;
  if (v27 || (OUTLINED_FUNCTION_27_28() & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v28 != 5)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v29 = v2 == 0x61657241656D6F68 && v1 == 0xE800000000000000;
  if (v29 || (OUTLINED_FUNCTION_0_66() & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v30 != 6)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_284_0(0x52616964656DLL);
  v32 = v4 && v1 == v31;
  if (v32 || (OUTLINED_FUNCTION_23_37() & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v33 != 7)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38_29();
  v35 = v4 && v1 == v34;
  if (v35 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v36 != 8)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v37 = v2 == 0x74736163646F70 && v1 == 0xE700000000000000;
  if (v37 || (OUTLINED_FUNCTION_34_31() & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v38 != 9)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_145_6();
  v39 = v4 && v1 == 0xE600000000000000;
  if (v39 || (OUTLINED_FUNCTION_24_37() & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v40 != 10)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_58_17();
  v42 = v4 && v1 == v41;
  if (v42 || (OUTLINED_FUNCTION_33_24() & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v43 != 11)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v44 = v2 == 0x7261687365646972 && v1 == 0xEF6E6F6974704F65;
  if (v44 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v45 != 12)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v46 = v2 == 7237750 && v1 == 0xE300000000000000;
  if (v46 || (OUTLINED_FUNCTION_37_26() & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v47 != 13)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v48 = v2 == 0x656E6F5A656D6974 && v1 == 0xE800000000000000;
  if (v48 || (OUTLINED_FUNCTION_0_66() & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v49 != 14)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v50 = v2 == OUTLINED_FUNCTION_139_9() && v1 == 0xE500000000000000;
  if (!v50 && (OUTLINED_FUNCTION_1_31() & 1) == 0)
  {
    v63 = v2 == OUTLINED_FUNCTION_146_8() && v1 == v62;
    if (!v63 && (OUTLINED_FUNCTION_5_5() & 1) == 0)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_6_54();
    if (v64 != 16)
    {
      goto LABEL_7;
    }

LABEL_15:
    OUTLINED_FUNCTION_94_12();
    v17 = *(v20 + 16);
LABEL_16:
    OUTLINED_FUNCTION_77_2(v5, &type metadata for ToolKitToolNullValue, v6, v7, v8, v9, v10, v11, v65, v17);
    return sub_1934948FC();
  }

  OUTLINED_FUNCTION_6_54();
  if (v51 != 15)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_94_12();
  OUTLINED_FUNCTION_77_2(v53, &type metadata for ToolKitToolTypeIdentifier, &off_1F07E0F88, v54, v55, v56, v57, v58, v65, *(v52 + 16));
  return sub_193494798(v59, v60, v61);
}

void sub_1936C0100()
{
  OUTLINED_FUNCTION_24_20();
  memcpy(__dst, v2, sizeof(__dst));
  v3 = v1 == 0x6F43656372756F73 && v0 == 0xEF72656E6961746ELL;
  if (v3 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v4 = __dst[13];
    if (__dst[13])
    {
      v5 = v2;
LABEL_8:
      v6 = memcpy(v30, v5, 0x68uLL);
      v30[13] = v4;
      OUTLINED_FUNCTION_52_2(v6, &type metadata for ToolKitToolContainerDefinition, &off_1F07E1888, v7, v8, v9, v10, v11, v30[0]);
      sub_193494798(v12, v13, v14);
      return;
    }

LABEL_23:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  OUTLINED_FUNCTION_34_21();
  v16 = v3 && v15 == v0;
  if (v16 || (OUTLINED_FUNCTION_18_3() & 1) != 0)
  {
    v4 = __dst[27];
    if (__dst[27])
    {
      v5 = v2 + 112;
      goto LABEL_8;
    }

    goto LABEL_23;
  }

  v17 = OUTLINED_FUNCTION_194_2() | 0x656D614E00000000;
  v24 = v1 == v17 && v0 == 0xE800000000000000;
  if (v24 || (v17 = OUTLINED_FUNCTION_0_66(), (v17 & 1) != 0))
  {
    if (__dst[29])
    {
      v30[1] = __dst[29];
      OUTLINED_FUNCTION_52_2(v17, MEMORY[0x1E69E6158], v18, v19, v20, v21, v22, v23, __dst[28]);
      sub_1934948FC();
      return;
    }

    goto LABEL_23;
  }

  sub_19349AB64();
  v25 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_9_3(v25, v26);
  *(v27 + 40) = &type metadata for ToolKitToolTypeIdentifier.Attributed;
  v28 = swift_allocObject();
  v29 = OUTLINED_FUNCTION_28_3(v28);
  memcpy(v29, __dst, 0xF0uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1936C02B4(__dst, v30);
}

id sub_1936C0348()
{
  OUTLINED_FUNCTION_11_5();
  v5 = *v0;
  v7 = v6 == 7040629 && v4 == 0xE300000000000000;
  if (v7 || (OUTLINED_FUNCTION_37_26() & 1) != 0)
  {
    OUTLINED_FUNCTION_18_40();
    if (v8)
    {
LABEL_7:
      sub_19349AB64();
      v9 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_64(v9, v10);
      *(v11 + 40) = &type metadata for ToolKitToolSystemTypeProtocol;
      *(v11 + 16) = v5;
      OUTLINED_FUNCTION_23_2(v12, v11);
    }

    v14 = *(v5 + 16);
    goto LABEL_16;
  }

  v16 = v2 == (OUTLINED_FUNCTION_318() | 0x6F63634100000000) && v1 == v15;
  if (v16 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_18_40();
    if (v17 != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_84_1();
  v19 = v2 == (OUTLINED_FUNCTION_318() | 0x7264644100000000) && v1 == v18;
  if (v19 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_18_40();
    if (v20 != 2)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_204_1();
  v22 = v2 == (OUTLINED_FUNCTION_318() | 0x7373654D00000000) && v1 == v21;
  if (v22 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_18_40();
    if (v23 != 3)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v24 = v2 == (OUTLINED_FUNCTION_318() | 0x786F6200000000) && v1 == 0xE700000000000000;
  if (v24 || (OUTLINED_FUNCTION_34_31() & 1) != 0)
  {
    OUTLINED_FUNCTION_18_40();
    if (v25 != 4)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_84_1();
  v27 = v2 == (OUTLINED_FUNCTION_150_7() & 0xFFFFFFFFFFFFLL | 0x654D000000000000) && v1 == v26;
  if (v27 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_18_40();
    if (v28 != 5)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v29 = v2 == 0x476567617373656DLL && v1 == 0xEC00000070756F72;
  if (v29 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_18_40();
    if (v30 != 6)
    {
      goto LABEL_7;
    }

LABEL_15:
    v14 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
LABEL_16:
    *__dst = v14;
    return sub_1934948FC();
  }

  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_168();
  v33 = v2 == (v32 | 3) && v31 == v1;
  if (v33 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_18_40();
    if (v34 != 7)
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

  v35 = v2 == 0x6E45657571696E75 && v1 == 0xEC00000079746974;
  if (v35 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_18_40();
    if (v36 != 8)
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

  OUTLINED_FUNCTION_38();
  v38 = v2 == 0xD000000000000015 && v37 == v1;
  if (v38 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_18_40();
    if (v39 != 9)
    {
      goto LABEL_7;
    }

    *__dst = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v40 = &type metadata for ToolKitToolSystemTypeProtocol.IntentUpdatableEntity;
    v41 = &off_1F07E0FF8;
    return sub_193494798(v40, v41, v3);
  }

  OUTLINED_FUNCTION_39_25();
  v43 = v7 && v42 == v1;
  if (v43 || (OUTLINED_FUNCTION_18_3() & 1) != 0)
  {
    OUTLINED_FUNCTION_18_40();
    if (v44 != 10)
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

  OUTLINED_FUNCTION_236_1();
  v46 = v2 == 0x65536C6175736976 && v1 == v45;
  if (v46 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_18_40();
    if (v47 != 11)
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

  v48 = v2 == 0x65536C6175736976 && v1 == 0xEF72634F68637261;
  if (v48 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_18_40();
    if (v49 != 12)
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

  OUTLINED_FUNCTION_160_6();
  v51 = v7 && v1 == v50;
  if (v51 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_18_40();
    if (v52 != 13)
    {
      goto LABEL_7;
    }

    memcpy(__dst, ((v5 & 0xFFFFFFFFFFFFFFBLL) + 16), sizeof(__dst));
    OUTLINED_FUNCTION_282_0(v70, v53, v54, v55, v56, v57, v58, v59, v70[0], v70[1], v70[2], v70[3], v70[4], v70[5], v70[6], v70[7], v70[8], v70[9], __dst[0]);
    v40 = &type metadata for ToolKitToolSystemTypeProtocol.AssistantSchema;
    v41 = &off_1F07E1008;
  }

  else
  {
    v60 = v2 == 0x6C62617461647075 && v1 == 0xEF797469746E4565;
    if (v60 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
    {
      OUTLINED_FUNCTION_18_40();
      if (v61 != 14)
      {
        goto LABEL_7;
      }

LABEL_59:
      OUTLINED_FUNCTION_314();
      return sub_1934948FC();
    }

    OUTLINED_FUNCTION_38();
    v63 = v2 == 0xD00000000000001ALL && v62 == v1;
    if (!v63 && (OUTLINED_FUNCTION_5_5() & 1) == 0)
    {
      v65 = v2 == 0x6E6569736E617274 && v1 == 0xEF797469746E4574;
      if (!v65 && (OUTLINED_FUNCTION_5_5() & 1) == 0)
      {
        OUTLINED_FUNCTION_158_2();
        v68 = v2 == 0x4564657865646E69 && v1 == v67;
        if (!v68 && (OUTLINED_FUNCTION_5_5() & 1) == 0)
        {
          goto LABEL_7;
        }

        OUTLINED_FUNCTION_18_40();
        if (v69 != 17)
        {
          goto LABEL_7;
        }

        *__dst = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        return sub_1934948FC();
      }

      OUTLINED_FUNCTION_18_40();
      if (v66 != 16)
      {
        goto LABEL_7;
      }

      goto LABEL_59;
    }

    OUTLINED_FUNCTION_18_40();
    if (v64 != 15)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_314();
    v40 = &type metadata for ToolKitToolSystemTypeProtocol.PersistentFileIdentifiable;
    v41 = &off_1F07E1018;
  }

  return sub_193494798(v40, v41, v3);
}

id sub_1936C0B00()
{
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_46_21();
  v6 = v6 && v4 == v5;
  if (v6 || (OUTLINED_FUNCTION_33_24() & 1) != 0)
  {
    if (!(v0 >> 61))
    {
      *&__src[0] = *(v0 + 16);
      v7 = &type metadata for ToolKitToolTypeIdentifier.Primitive;
      v8 = &off_1F07E0F98;
      return sub_193494798(v7, v8, v3);
    }
  }

  else
  {
    v9 = v2 == OUTLINED_FUNCTION_85_17() && v1 == 0xE600000000000000;
    if (v9 || (OUTLINED_FUNCTION_24_37() & 1) != 0)
    {
      OUTLINED_FUNCTION_213();
      if (v6)
      {
        v18 = OUTLINED_FUNCTION_235_1(v10, v11, v12, v13, v14, v15, v16, v17, v51[0], v51[1], v51[2], v51[3], v51[4], v51[5], v51[6], v51[7], v51[8], v51[9], v51[10], v51[11], __src[0]);
        memcpy(v18, v19, 0x60uLL);
        memcpy(v51, __src, sizeof(v51));
        v7 = &type metadata for ToolKitToolTypeDefinition.Version1.Entity;
        v8 = &off_1F07E1048;
        return sub_193494798(v7, v8, v3);
      }
    }

    else
    {
      OUTLINED_FUNCTION_44_21();
      v22 = v6 && v1 == v21;
      if (v22 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
      {
        OUTLINED_FUNCTION_215_2();
        if (v6)
        {
          v31 = OUTLINED_FUNCTION_235_1(v23, v24, v25, v26, v27, v28, v29, v30, v51[0], v51[1], v51[2], v51[3], v51[4], v51[5], v51[6], v51[7], v51[8], v51[9], v51[10], v51[11], __src[0]);
          memcpy(v31, v32, 0x58uLL);
          memcpy(v51, __src, 0x58uLL);
          v7 = &type metadata for ToolKitToolTypeDefinition.Version1.Enumeration;
          v8 = &off_1F07E1068;
          return sub_193494798(v7, v8, v3);
        }
      }

      else
      {
        v33 = v2 == OUTLINED_FUNCTION_139_9() && v1 == 0xE500000000000000;
        if (!v33 && (OUTLINED_FUNCTION_1_31() & 1) == 0)
        {
          OUTLINED_FUNCTION_110_7();
          if (v6 && v1 == 0xE700000000000000)
          {
            OUTLINED_FUNCTION_216_1();
            if (!v6)
            {
              goto LABEL_42;
            }
          }

          else
          {
            if ((OUTLINED_FUNCTION_34_31() & 1) == 0)
            {
              goto LABEL_42;
            }

            OUTLINED_FUNCTION_211_0();
            if (!v6)
            {
              goto LABEL_42;
            }
          }

          v45 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
          v46 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v47 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
          __src[0] = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          __src[1] = v46;
          __src[2] = v47;
          *&__src[3] = v45;
          v7 = &type metadata for ToolKitToolTypeDefinition.Version1.Codable;
          v8 = &off_1F07E10B8;
          return sub_193494798(v7, v8, v3);
        }

        OUTLINED_FUNCTION_217_1();
        if (v6)
        {
          v42 = OUTLINED_FUNCTION_235_1(v34, v35, v36, v37, v38, v39, v40, v41, v51[0], v51[1], v51[2], v51[3], v51[4], v51[5], v51[6], v51[7], v51[8], v51[9], v51[10], v51[11], __src[0]);
          memcpy(v42, v43, 0x50uLL);
          memcpy(v51, __src, 0x50uLL);
          v7 = &type metadata for ToolKitToolTypeDefinition.Version1.Query;
          v8 = &off_1F07E1088;
          return sub_193494798(v7, v8, v3);
        }
      }
    }
  }

LABEL_42:
  sub_19349AB64();
  v48 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_64(v48, v49);
  OUTLINED_FUNCTION_19_1(v50, &type metadata for ToolKitToolTypeDefinition.Version1);
}

void sub_1936C0D24()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_83_18();
  memcpy(__dst, v4, sizeof(__dst));
  v5 = v1 == v2 && v0 == v3;
  if (v5 || (OUTLINED_FUNCTION_23_37() & 1) != 0)
  {
    OUTLINED_FUNCTION_66_21();
    if (!v5)
    {
      OUTLINED_FUNCTION_52_2(v6, &type metadata for ToolKitToolTypeIdentifier, &off_1F07E0F88, v7, v8, v9, v10, v11, v12);
LABEL_9:
      sub_193494798(v13, v14, v15);
      return;
    }

    goto LABEL_8;
  }

  v16 = v1 == (OUTLINED_FUNCTION_86_13() & 0xFFFFFFFFFFFFLL | 0x6974000000000000) && v0 == v3 + 256;
  if (v16 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v59 = __dst[1];
    v17 = &unk_1EAE40808;
    v18 = &unk_19397DF10;
LABEL_16:
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
    OUTLINED_FUNCTION_52_2(v19, v19, v20, v21, v22, v23, v24, v25, v59);
    sub_1934948FC();
    return;
  }

  OUTLINED_FUNCTION_38();
  v27 = v1 == 0xD000000000000013 && v26 == v0;
  if (v27 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v59 = __dst[2];
    v17 = &unk_1EAE40800;
    v18 = &unk_19397DF08;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_38();
  v34 = 0xD000000000000015;
  v35 = v1 == 0xD000000000000015 && v28 == v0;
  if (v35 || (v34 = OUTLINED_FUNCTION_5_5(), (v34 & 1) != 0))
  {
    if (__dst[7])
    {
      OUTLINED_FUNCTION_52_2(v34, &type metadata for ToolKitToolTypeDisplayRepresentation, &off_1F07E18A8, v29, v30, v31, v32, v33, __dst[3]);
      goto LABEL_9;
    }

LABEL_8:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  OUTLINED_FUNCTION_39_25();
  v37 = v5 && v36 == v0;
  if (v37 || (OUTLINED_FUNCTION_14_48() & 1) != 0)
  {
    v59 = __dst[8];
    v17 = &unk_1EAE407F8;
    v18 = &unk_19397DF00;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_41_22();
  v39 = v5 && v0 == v38;
  if (v39 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v59 = __dst[9];
    v17 = &unk_1EAE407F0;
    v18 = &unk_19397DEF8;
    goto LABEL_16;
  }

  v40 = v1 == 0x46656D69746E7572 && v0 == 0xEC0000007367616CLL;
  if (v40 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    v59 = __dst[10];
    v17 = &unk_1EAE407E8;
    v18 = &unk_193980EC0;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_301();
  v42 = v1 == 0x6E6F696372656F63 && v0 == v41;
  if (v42 || (OUTLINED_FUNCTION_33_24() & 1) != 0)
  {
    v59 = __dst[11];
    v17 = &unk_1EAE407E0;
    v18 = &unk_19397DEF0;
    goto LABEL_16;
  }

  sub_19349AB64();
  v43 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_9_3(v43, v44);
  *(v45 + 40) = &type metadata for ToolKitToolTypeDefinition.Version1.Entity;
  OUTLINED_FUNCTION_209_0();
  v46 = swift_allocObject();
  v47 = OUTLINED_FUNCTION_28_3(v46);
  memcpy(v47, __dst, 0x60uLL);
  OUTLINED_FUNCTION_26_0();

  v56 = OUTLINED_FUNCTION_109(v48, v49, v50, v51, v52, v53, v54, v55, v58, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, __dst[0]);
  sub_1936C1000(v56, v57);
}

void sub_1936C11F4()
{
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_83_18();
  memcpy(__dst, v4, sizeof(__dst));
  v5 = v1 == v2 && v0 == v3;
  if (v5 || (OUTLINED_FUNCTION_23_37() & 1) != 0)
  {
    OUTLINED_FUNCTION_66_21();
    if (!v5)
    {
      *&v41[0] = v12;
      v13 = &type metadata for ToolKitToolTypeIdentifier;
      v14 = &off_1F07E0F88;
LABEL_9:
      OUTLINED_FUNCTION_52_2(v6, v13, v14, v7, v8, v9, v10, v11, *&v41[0]);
      sub_193494798(v15, v16, v17);
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_196_2(1702060387);
  v18 = v5 && v0 == 0xE500000000000000;
  if (v18 || (OUTLINED_FUNCTION_1_31() & 1) != 0)
  {
    *&v41[0] = __dst[1];
    v19 = &unk_1EAE40810;
    v20 = &unk_19397DF18;
LABEL_16:
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
    v28 = v21;
LABEL_17:
    OUTLINED_FUNCTION_52_2(v21, v28, v22, v23, v24, v25, v26, v27, *&v41[0]);
    sub_1934948FC();
    return;
  }

  OUTLINED_FUNCTION_39_25();
  v30 = v5 && v29 == v0;
  if (v30 || (OUTLINED_FUNCTION_18_3() & 1) != 0)
  {
    *&v41[0] = __dst[2];
    v19 = &unk_1EAE40800;
    v20 = &unk_19397DF08;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_38();
  v6 = 0xD000000000000015;
  v32 = v1 == 0xD000000000000015 && v31 == v0;
  if (v32 || (v6 = OUTLINED_FUNCTION_5_5(), (v6 & 1) != 0))
  {
    if (__dst[7])
    {
      v41[0] = *&__dst[3];
      v41[1] = *&__dst[5];
      v42 = __dst[7];
      v13 = &type metadata for ToolKitToolTypeDisplayRepresentation;
      v14 = &off_1F07E18A8;
      goto LABEL_9;
    }

LABEL_8:
    OUTLINED_FUNCTION_36_4();
    return;
  }

  v33 = v1 == 1684957547 && v0 == 0xE400000000000000;
  if (v33 || (OUTLINED_FUNCTION_27_28() & 1) != 0)
  {
    if ((__dst[9] & 0x100) != 0)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_33_4();
    v28 = &type metadata for ToolKitToolTypeDefinition.Version1.Enumeration.Kind;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_41_22();
  v35 = v5 && v0 == v34;
  if (v35 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    *&v41[0] = __dst[10];
    v19 = &unk_1EAE407F0;
    v20 = &unk_19397DEF8;
    goto LABEL_16;
  }

  sub_19349AB64();
  v36 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_9_3(v36, v37);
  *(v38 + 40) = &type metadata for ToolKitToolTypeDefinition.Version1.Enumeration;
  v39 = swift_allocObject();
  v40 = OUTLINED_FUNCTION_28_3(v39);
  memcpy(v40, __dst, 0x58uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1936C1448(__dst, v41);
}

void sub_1936C14BC()
{
  OUTLINED_FUNCTION_118_10();
  v11 = OUTLINED_FUNCTION_276_1(v3, v4, v5, v6, v7, v8, v9, v10, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86);
  v18 = v2 == 25705 && v0 == 0xE200000000000000;
  if (v18 || (OUTLINED_FUNCTION_252_0(), v11 = OUTLINED_FUNCTION_85_5(), (v11 & 1) != 0))
  {
    if (v89)
    {
      OUTLINED_FUNCTION_102_14(v11, MEMORY[0x1E69E6158], v12, v13, v14, v15, v16, v17, v87);
      sub_1934948FC();
      return;
    }

LABEL_15:
    OUTLINED_FUNCTION_104();
    return;
  }

  OUTLINED_FUNCTION_133_9();
  OUTLINED_FUNCTION_168();
  v21 = v2 == v20 && v19 == v0;
  if (v21 || (OUTLINED_FUNCTION_85_5() & 1) != 0)
  {
    if (v90)
    {
      OUTLINED_FUNCTION_82_12();
      OUTLINED_FUNCTION_102_14(v22, &type metadata for ToolKitToolDisplayRepresentation, &off_1F07E18C8, v23, v24, v25, v26, v27, v51);
      sub_193494798(v28, v29, v30);
      return;
    }

    goto LABEL_15;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_106_0();
  *v31 = v2;
  v31[1] = v0;
  v31[5] = &type metadata for ToolKitToolTypeDefinition.Version1.Enumeration.Case;
  OUTLINED_FUNCTION_209_0();
  v32 = swift_allocObject();
  *(v1 + 16) = v32;
  OUTLINED_FUNCTION_182_5(v32, v33, v34, v35, v36, v37, v38, v39, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87);
  OUTLINED_FUNCTION_48_4();
  swift_willThrow();

  v48 = OUTLINED_FUNCTION_109(v40, v41, v42, v43, v44, v45, v46, v47, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88);
  sub_1936C15F8(v48, v49);
}

void sub_1936C166C(uint64_t a1, uint64_t a2)
{
  v7 = v2;
  OUTLINED_FUNCTION_157_7();
  OUTLINED_FUNCTION_7_42();
  memcpy(__dst, v7, sizeof(__dst));
  v9 = v4 == v5 && a2 == v6;
  if (v9 || (OUTLINED_FUNCTION_68_18(), (sub_19393CA30() & 1) != 0))
  {
    OUTLINED_FUNCTION_66_21();
    if (!v9)
    {
      OUTLINED_FUNCTION_102_14(v10, &type metadata for ToolKitToolTypeIdentifier, &off_1F07E0F88, v11, v12, v13, v14, v15, v16);
LABEL_16:
      sub_193494798(v17, v18, v19);
      return;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_301();
  v20 = OUTLINED_FUNCTION_169_6(0x616C706D6574);
  v27 = v9 && a2 == v26;
  if (v27 || (v20 = sub_19393CA30(), (v20 & 1) != 0))
  {
    if (__dst[1])
    {
      v50 = v7[1];
      v55 = v7[2];
      v60 = v7[3];
      v65 = v7[4];
      OUTLINED_FUNCTION_102_14(v20, &type metadata for ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates, &off_1F07E1098, v21, v22, v23, v24, v25, __dst[1]);
      goto LABEL_16;
    }

LABEL_8:
    OUTLINED_FUNCTION_104();
    return;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_106_0();
  *v28 = v4;
  v28[1] = a2;
  v28[5] = &type metadata for ToolKitToolTypeDefinition.Version1.Query;
  OUTLINED_FUNCTION_137_7();
  v29 = swift_allocObject();
  *(v3 + 16) = v29;
  OUTLINED_FUNCTION_282_0((v29 + 16), v30, v31, v32, v33, v34, v35, v36, v47, v49, v52, v54, v57, v59, v62, v64, v67, v69, __dst[0]);
  OUTLINED_FUNCTION_48_4();
  swift_willThrow();

  v45 = OUTLINED_FUNCTION_270_0(v37, v38, v39, v40, v41, v42, v43, v44, v48, v51, v53, v56, v58, v61, v63, v66, v68, v70, __dst[0]);
  sub_1936C17FC(v45, v46);
}

void sub_1936C1870()
{
  OUTLINED_FUNCTION_2_3();
  memcpy(__dst, v3, sizeof(__dst));
  v4 = v2 == 0x73697261706D6F63 && v1 == 0xEA00000000006E6FLL;
  if (v4 || (OUTLINED_FUNCTION_23_37() & 1) != 0)
  {
    v35 = __dst[0];
    v5 = &unk_1EAE40818;
    v6 = &unk_19397DF20;
LABEL_7:
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    OUTLINED_FUNCTION_52_2(v7, v7, v8, v9, v10, v11, v12, v13, v35);
    sub_1934948FC();
    return;
  }

  OUTLINED_FUNCTION_236_1();
  v15 = v2 == (OUTLINED_FUNCTION_149_7() & 0xFFFFFFFFFFFFLL | 0x6553000000000000) && v1 == v14;
  if (v15 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if (__dst[1])
    {
LABEL_14:
      OUTLINED_FUNCTION_36_4();
      return;
    }

    v16 = &type metadata for ToolKitToolStringSearchPredicate.Template;
    v17 = &off_1F07E14B8;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_248_0();
  v18 = v4 && v1 == 0xE800000000000000;
  if (v18 || (OUTLINED_FUNCTION_0_66() & 1) != 0)
  {
    if ((__dst[1] & 0x100) != 0)
    {
      goto LABEL_14;
    }

    v16 = &type metadata for ToolKitToolIdSearchPredicate.Template;
    v17 = &off_1F07E14D8;
    goto LABEL_16;
  }

  v19 = v2 == 7105633 && v1 == 0xE300000000000000;
  if (v19 || (OUTLINED_FUNCTION_37_26() & 1) != 0)
  {
    if ((__dst[1] & 0x10000) != 0)
    {
      goto LABEL_14;
    }

    v16 = &type metadata for ToolKitToolAllPredicate;
    v17 = &off_1F07E1528;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_169_6(0x736567677573);
  v21 = v4 && v1 == v20;
  if (v21 || (OUTLINED_FUNCTION_33_24() & 1) != 0)
  {
    if ((__dst[1] & 0x1000000) != 0)
    {
      goto LABEL_14;
    }

    v16 = &type metadata for ToolKitToolSuggestedPredicate;
    v17 = &off_1F07E1548;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_39_25();
  v23 = v4 && v22 == v1;
  if (v23 || (OUTLINED_FUNCTION_14_48() & 1) != 0)
  {
    v35 = __dst[2];
    v5 = &unk_1EAE407F8;
    v6 = &unk_19397DF00;
    goto LABEL_7;
  }

  v25 = v2 == OUTLINED_FUNCTION_4_61() && v1 == v24;
  if (v25 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if (__dst[3])
    {
      goto LABEL_14;
    }

    v16 = &type metadata for ToolKitToolSearchableItemPredicate.Template;
    v17 = &off_1F07E1518;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_312();
  v26 = v4 && v1 == 0xE500000000000000;
  if (v26 || (OUTLINED_FUNCTION_1_31() & 1) != 0)
  {
    if ((__dst[3] & 0x100) != 0)
    {
      goto LABEL_14;
    }

    v16 = &type metadata for ToolKitToolValidPredicate;
    v17 = &off_1F07E1538;
    goto LABEL_16;
  }

  v28 = v2 == (OUTLINED_FUNCTION_98_13() | 0x6165536500000000) && v1 == v27;
  if (v28 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    if ((__dst[4] & 0xF000000000000007) == 0xD000000000000007)
    {
      goto LABEL_14;
    }

    v35 = __dst[4];
    v16 = &type metadata for ToolKitToolValueSearchPredicate.Template;
    v17 = &off_1F07E14F8;
    goto LABEL_16;
  }

  v29 = v2 == 0x617461646174656DLL && v1 == 0xE800000000000000;
  if (v29 || (OUTLINED_FUNCTION_0_66() & 1) != 0)
  {
    if (__dst[6] == 1)
    {
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_203_1();
    v36 = *&__dst[7];
    v16 = &type metadata for ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates.PredicateMetadata;
    v17 = &off_1F07E10A8;
LABEL_16:
    sub_193494798(v16, v17, v0);
    return;
  }

  sub_19349AB64();
  v30 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_9_3(v30, v31);
  *(v32 + 40) = &type metadata for ToolKitToolTypeDefinition.Version1.Query.PredicateTemplates;
  OUTLINED_FUNCTION_127_3();
  v33 = swift_allocObject();
  v34 = OUTLINED_FUNCTION_28_3(v33);
  memcpy(v34, __dst, 0x48uLL);
  OUTLINED_FUNCTION_26_0();

  sub_1936C1BDC(__dst, &v35);
}

void sub_1936C1D64(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_3_67();
  v9 = *v2;
  v8 = v2[1];
  v10 = a1 == v5 && v6 == v7;
  if (v10 || (v11 = v6, v12 = v2[2], v18 = v2[3], v19 = v2[4], v20 = v2[5], v13 = v2[6], OUTLINED_FUNCTION_68_18(), (OUTLINED_FUNCTION_124_3() & 1) != 0))
  {
    if (v8)
    {
      sub_1934948FC();
      return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_133_9();
    OUTLINED_FUNCTION_34_21();
    if (!v10 || v14 != v11)
    {
      OUTLINED_FUNCTION_20_5(21);
      if ((OUTLINED_FUNCTION_124_3() & 1) == 0)
      {
        sub_19349AB64();
        OUTLINED_FUNCTION_13_9();
        OUTLINED_FUNCTION_32_3();
        *v16 = a1;
        v16[1] = v11;
        v16[5] = &type metadata for ToolKitToolTypeDefinition.Version1.Codable;
        v17 = swift_allocObject();
        v2[2] = v17;
        v17[2] = v9;
        v17[3] = v8;
        v17[4] = v12;
        v17[5] = v18;
        v17[6] = v19;
        v17[7] = v20;
        v17[8] = v13;
        OUTLINED_FUNCTION_26_0();

        sub_1936161E4(v12, v18, v19, v20, v13);
        return;
      }
    }

    if (v13)
    {
      sub_193494798(&type metadata for ToolKitToolTypeDisplayRepresentation, &off_1F07E18A8, a2);
      return;
    }
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
}

id sub_1936C1F1C()
{
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_46_21();
  v6 = v6 && v4 == v5;
  if (v6 || (OUTLINED_FUNCTION_33_24() & 1) != 0)
  {
    if (!(v0 >> 61))
    {
      v127 = *(v0 + 16);
      v7 = &type metadata for ToolKitToolTypedValue.PrimitiveValue;
      v8 = &off_1F07E10E8;
      return sub_193494798(v7, v8, v3);
    }
  }

  else
  {
    OUTLINED_FUNCTION_44_21();
    v10 = v6 && v1 == v9;
    if (v10 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
    {
      OUTLINED_FUNCTION_213();
      if (v6)
      {
        v19 = OUTLINED_FUNCTION_154_6(v11, v12, v13, v14, v15, v16, v17, v18, v104, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126);
        v21 = memcpy(v19, v20, 0x68uLL);
        v29 = OUTLINED_FUNCTION_313(v21, v22, v23, v24, v25, v26, v27, v28, v105);
        memcpy(v29, v30, 0x68uLL);
        v7 = &type metadata for ToolKitToolTypedValue.EnumerationValue;
        v8 = &off_1F07E1248;
        return sub_193494798(v7, v8, v3);
      }
    }

    else
    {
      v32 = v2 == OUTLINED_FUNCTION_85_17() && v1 == 0xE600000000000000;
      if (v32 || (OUTLINED_FUNCTION_24_37() & 1) != 0)
      {
        OUTLINED_FUNCTION_215_2();
        if (v6)
        {
          v41 = OUTLINED_FUNCTION_154_6(v33, v34, v35, v36, v37, v38, v39, v40, v104, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126);
          v43 = memcpy(v41, v42, 0x90uLL);
          v51 = OUTLINED_FUNCTION_313(v43, v44, v45, v46, v47, v48, v49, v50, v106);
          memcpy(v51, v52, 0x90uLL);
          v7 = &type metadata for ToolKitToolTypedValue.EntityValue;
          v8 = &off_1F07E1258;
          return sub_193494798(v7, v8, v3);
        }
      }

      else
      {
        v54 = v2 == OUTLINED_FUNCTION_304() && v1 == v53;
        if (v54 || (OUTLINED_FUNCTION_23_37() & 1) != 0)
        {
          OUTLINED_FUNCTION_217_1();
          if (v6)
          {
            v128 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v131 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            v7 = &type metadata for ToolKitToolTypedValue.CollectionValue;
            v8 = &off_1F07E1288;
            return sub_193494798(v7, v8, v3);
          }
        }

        else
        {
          v55 = v2 == OUTLINED_FUNCTION_139_9() && v1 == 0xE500000000000000;
          if (v55 || (OUTLINED_FUNCTION_1_31() & 1) != 0)
          {
            OUTLINED_FUNCTION_216_1();
            if (v6)
            {
              v129 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v132 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
              v134 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
              v135 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
              v7 = &type metadata for ToolKitToolTypedValue.QueryValue;
              v8 = &off_1F07E1298;
              return sub_193494798(v7, v8, v3);
            }
          }

          else
          {
            OUTLINED_FUNCTION_39_6();
            OUTLINED_FUNCTION_34_21();
            v57 = v6 && v56 == v1;
            if (v57 || (OUTLINED_FUNCTION_18_3() & 1) != 0)
            {
              OUTLINED_FUNCTION_308();
              if (v6)
              {
                v66 = OUTLINED_FUNCTION_154_6(v58, v59, v60, v61, v62, v63, v64, v65, v104, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126);
                v68 = memcpy(v66, v67, 0x68uLL);
                v76 = OUTLINED_FUNCTION_313(v68, v69, v70, v71, v72, v73, v74, v75, v107);
                memcpy(v76, v77, 0x68uLL);
                v7 = &type metadata for ToolKitToolTypedValue.EntityIdentifierValue;
                v8 = &off_1F07E12A8;
                return sub_193494798(v7, v8, v3);
              }
            }

            else
            {
              OUTLINED_FUNCTION_253_0();
              v78 = v6 && v1 == 0xE800000000000000;
              if (!v78 && (OUTLINED_FUNCTION_0_66() & 1) == 0)
              {
                v79 = OUTLINED_FUNCTION_110_7();
                if (v6 && v1 == 0xE700000000000000)
                {
                  if (v0 >> 61 != 7)
                  {
                    goto LABEL_66;
                  }
                }

                else
                {
                  if ((OUTLINED_FUNCTION_34_31() & 1) == 0)
                  {
                    goto LABEL_66;
                  }

                  OUTLINED_FUNCTION_214_0();
                  if (!(!v6 & v88))
                  {
                    goto LABEL_66;
                  }
                }

                v89 = OUTLINED_FUNCTION_154_6(v79, v80, v81, v82, v83, v84, v85, v86, v104, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126);
                v91 = memcpy(v89, v90, 0x70uLL);
                v99 = OUTLINED_FUNCTION_313(v91, v92, v93, v94, v95, v96, v97, v98, v108);
                memcpy(v99, v100, 0x70uLL);
                v7 = &type metadata for ToolKitToolTypedValue.CodableValue;
                v8 = &off_1F07E1278;
                return sub_193494798(v7, v8, v3);
              }

              OUTLINED_FUNCTION_214_0();
              if (v6)
              {
                v130 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v133 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                v7 = &type metadata for ToolKitToolTypedValue.DeferredValue;
                v8 = &off_1F07E12B8;
                return sub_193494798(v7, v8, v3);
              }
            }
          }
        }
      }
    }
  }

LABEL_66:
  sub_19349AB64();
  v101 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_64(v101, v102);
  OUTLINED_FUNCTION_19_1(v103, &type metadata for ToolKitToolTypedValue);
}

id sub_1936C23CC()
{
  OUTLINED_FUNCTION_16_32();
  v4 = v3;
  OUTLINED_FUNCTION_113_10();
  v6 = v6 && v5 == 0xEB00000000746E61;
  if (v6 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v7)
    {
LABEL_7:
      sub_19349AB64();
      v8 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_64(v8, v9);
      OUTLINED_FUNCTION_19_1(v10, &type metadata for ToolKitToolTypedValue.PrimitiveValue);
    }

    v366 = *(v0 + 16);
    return sub_1934948FC();
  }

  OUTLINED_FUNCTION_152_8(0x6C6F6F62u);
  v12 = v6 && v1 == 0xE800000000000000;
  if (v12 || (OUTLINED_FUNCTION_0_66() & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v13 != 1)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_94_12();
    v367 = *(v14 + 16);
    return sub_1934948FC();
  }

  OUTLINED_FUNCTION_255_0();
  v15 = v6 && v1 == 0xE700000000000000;
  if (v15 || (OUTLINED_FUNCTION_34_31() & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v16 != 2)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_300();
  v18 = v6 && v1 == 0xE600000000000000;
  if (v18 || (OUTLINED_FUNCTION_24_37() & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v19 != 3)
    {
      goto LABEL_7;
    }

LABEL_23:
    OUTLINED_FUNCTION_94_12();
    v368 = *(v17 + 16);
    return sub_1934948FC();
  }

  OUTLINED_FUNCTION_254_0();
  v20 = v6 && v1 == 0xE700000000000000;
  if (v20 || (OUTLINED_FUNCTION_34_31() & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v29 != 4)
    {
      goto LABEL_7;
    }

    v30 = OUTLINED_FUNCTION_8_48(v21, v22, v23, v24, v25, v26, v27, v28, v299, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365);
    v32 = memcpy(v30, v31, 0x5AuLL);
    v40 = OUTLINED_FUNCTION_135_6(v32, v33, v34, v35, v36, v37, v38, v39, v300);
    memcpy(v40, v41, 0x5AuLL);
    v42 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Decimal;
    v43 = &off_1F07E10F8;
    return sub_193494798(v42, v43, v4);
  }

  v44 = v2 == OUTLINED_FUNCTION_149_7() && v1 == 0xE600000000000000;
  if (v44 || (OUTLINED_FUNCTION_24_37() & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v45 != 5)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

  OUTLINED_FUNCTION_231_2();
  v47 = v6 && v1 == 0xE400000000000000;
  if (v47 || (OUTLINED_FUNCTION_27_28() & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v48 != 6)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_94_12();
    v370 = *(v49 + 16);
    v374 = *(v49 + 24);
    v42 = &type metadata for ToolKitToolTimestamp;
    v43 = &off_1F07E0F68;
    return sub_193494798(v42, v43, v4);
  }

  OUTLINED_FUNCTION_147_6();
  v50 = OUTLINED_FUNCTION_295_0();
  OUTLINED_FUNCTION_230_2(v50);
  v52 = v6 && v1 == v51;
  if (v52 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v53 != 7)
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

  OUTLINED_FUNCTION_229();
  v55 = v6 && v1 == 0xE300000000000000;
  if (v55 || (OUTLINED_FUNCTION_37_26() & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v56 != 8)
    {
      goto LABEL_7;
    }

LABEL_45:
    OUTLINED_FUNCTION_94_12();
    v369 = *(v46 + 16);
    v373 = *(v46 + 24);
    return sub_1934948FC();
  }

  OUTLINED_FUNCTION_38();
  v58 = v2 == 0xD000000000000010 && v57 == v1;
  if (v58 || (OUTLINED_FUNCTION_18_3() & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v59 != 9)
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

  v60 = v2 == OUTLINED_FUNCTION_146_8() && v1 == 0xEB00000000746E65;
  if (v60 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_6_54();
    if (v61 != 10)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_94_12();
    v372 = *(v62 + 16);
    v375 = *(v62 + 32);
    v377 = *(v62 + 40);
    v378 = *(v62 + 48);
    v379 = *(v62 + 56);
    v380 = *(v62 + 57);
    v42 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Measurement;
    v43 = &off_1F07E1118;
  }

  else
  {
    OUTLINED_FUNCTION_112_12();
    v64 = v6 && v1 == v63;
    if (v64 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
    {
      OUTLINED_FUNCTION_6_54();
      if (v73 != 11)
      {
        goto LABEL_7;
      }

      v74 = OUTLINED_FUNCTION_8_48(v65, v66, v67, v68, v69, v70, v71, v72, v299, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365);
      v76 = memcpy(v74, v75, 0xC0uLL);
      v84 = OUTLINED_FUNCTION_135_6(v76, v77, v78, v79, v80, v81, v82, v83, v301);
      memcpy(v84, v85, 0xC0uLL);
      v42 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.CurrencyAmount;
      v43 = &off_1F07E1128;
    }

    else
    {
      OUTLINED_FUNCTION_38_29();
      v87 = v6 && v1 == v86;
      if (v87 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
      {
        OUTLINED_FUNCTION_6_54();
        if (v96 != 12)
        {
          goto LABEL_7;
        }

        v97 = OUTLINED_FUNCTION_8_48(v88, v89, v90, v91, v92, v93, v94, v95, v299, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365);
        v99 = memcpy(v97, v98, 0x70uLL);
        v107 = OUTLINED_FUNCTION_135_6(v99, v100, v101, v102, v103, v104, v105, v106, v302);
        memcpy(v107, v108, 0x70uLL);
        v42 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.PaymentMethod;
        v43 = &off_1F07E1138;
      }

      else
      {
        OUTLINED_FUNCTION_58_17();
        v110 = v6 && v1 == v109;
        if (v110 || (OUTLINED_FUNCTION_33_24() & 1) != 0)
        {
          OUTLINED_FUNCTION_6_54();
          if (v119 != 13)
          {
            goto LABEL_7;
          }

          v120 = OUTLINED_FUNCTION_8_48(v111, v112, v113, v114, v115, v116, v117, v118, v299, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365);
          v122 = memcpy(v120, v121, 0x6AuLL);
          v130 = OUTLINED_FUNCTION_135_6(v122, v123, v124, v125, v126, v127, v128, v129, v303);
          memcpy(v130, v131, 0x6AuLL);
          v42 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Placemark;
          v43 = &off_1F07E1148;
        }

        else
        {
          OUTLINED_FUNCTION_145_6();
          v132 = v6 && v1 == 0xE600000000000000;
          if (v132 || (OUTLINED_FUNCTION_24_37() & 1) != 0)
          {
            OUTLINED_FUNCTION_6_54();
            if (v141 != 14)
            {
              goto LABEL_7;
            }

            v142 = OUTLINED_FUNCTION_8_48(v133, v134, v135, v136, v137, v138, v139, v140, v299, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365);
            v144 = memcpy(v142, v143, 0x1A2uLL);
            v152 = OUTLINED_FUNCTION_135_6(v144, v145, v146, v147, v148, v149, v150, v151, v304);
            memcpy(v152, v153, 0x1A2uLL);
            v42 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Person;
            v43 = &off_1F07E1158;
          }

          else
          {
            OUTLINED_FUNCTION_144_6();
            v154 = v6 && v1 == 0xE400000000000000;
            if (v154 || (OUTLINED_FUNCTION_27_28() & 1) != 0)
            {
              OUTLINED_FUNCTION_6_54();
              if (v163 != 15)
              {
                goto LABEL_7;
              }

              v164 = OUTLINED_FUNCTION_8_48(v155, v156, v157, v158, v159, v160, v161, v162, v299, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365);
              v166 = memcpy(v164, v165, 0x70uLL);
              v174 = OUTLINED_FUNCTION_135_6(v166, v167, v168, v169, v170, v171, v172, v173, v305);
              memcpy(v174, v175, 0x70uLL);
              v42 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.File;
              v43 = &off_1F07E1198;
            }

            else
            {
              v176 = v2 == 7368801 && v1 == 0xE300000000000000;
              if (v176 || (OUTLINED_FUNCTION_37_26() & 1) != 0)
              {
                OUTLINED_FUNCTION_6_54();
                if (v185 != 16)
                {
                  goto LABEL_7;
                }

                v186 = OUTLINED_FUNCTION_8_48(v177, v178, v179, v180, v181, v182, v183, v184, v299, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365);
                v188 = memcpy(v186, v187, 0x60uLL);
                v196 = OUTLINED_FUNCTION_135_6(v188, v189, v190, v191, v192, v193, v194, v195, v306);
                memcpy(v196, v197, 0x60uLL);
                v42 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.App;
                v43 = &off_1F07E11A8;
              }

              else
              {
                v199 = v2 == OUTLINED_FUNCTION_4_61() && v1 == v198;
                if (v199 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
                {
                  OUTLINED_FUNCTION_6_54();
                  if (v200 != 17)
                  {
                    goto LABEL_7;
                  }

LABEL_59:
                  OUTLINED_FUNCTION_94_12();
                  v371 = *(v54 + 16);
                  return sub_1934948FC();
                }

                OUTLINED_FUNCTION_38();
                v202 = v2 == 0xD000000000000015 && v201 == v1;
                if (v202 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
                {
                  OUTLINED_FUNCTION_6_54();
                  if (v211 != 18)
                  {
                    goto LABEL_7;
                  }

                  v212 = OUTLINED_FUNCTION_8_48(v203, v204, v205, v206, v207, v208, v209, v210, v299, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365);
                  v214 = memcpy(v212, v213, 0x139uLL);
                  v222 = OUTLINED_FUNCTION_135_6(v214, v215, v216, v217, v218, v219, v220, v221, v307);
                  memcpy(v222, v223, 0x139uLL);
                  v42 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.DateComponents;
                  v43 = &off_1F07E11C8;
                }

                else
                {
                  OUTLINED_FUNCTION_106_13();
                  v224 = v6 && v1 == 0xE800000000000000;
                  if (v224 || (OUTLINED_FUNCTION_0_66() & 1) != 0)
                  {
                    OUTLINED_FUNCTION_6_54();
                    if (v233 != 19)
                    {
                      goto LABEL_7;
                    }

                    v234 = OUTLINED_FUNCTION_8_48(v225, v226, v227, v228, v229, v230, v231, v232, v299, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365);
                    v236 = memcpy(v234, v235, 0x60uLL);
                    v244 = OUTLINED_FUNCTION_135_6(v236, v237, v238, v239, v240, v241, v242, v243, v308);
                    memcpy(v244, v245, 0x60uLL);
                    v42 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Shortcut;
                    v43 = &off_1F07E11B8;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_143_4();
                    v247 = v6 && v1 == v246;
                    if (v247 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
                    {
                      OUTLINED_FUNCTION_6_54();
                      if (v256 != 20)
                      {
                        goto LABEL_7;
                      }

                      v257 = OUTLINED_FUNCTION_8_48(v248, v249, v250, v251, v252, v253, v254, v255, v299, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365);
                      v259 = memcpy(v257, v258, 0xF8uLL);
                      v267 = OUTLINED_FUNCTION_135_6(v259, v260, v261, v262, v263, v264, v265, v266, v309);
                      memcpy(v267, v268, 0xF8uLL);
                      v42 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.RecurrenceRule;
                      v43 = &off_1F07E11E8;
                    }

                    else
                    {
                      v269 = OUTLINED_FUNCTION_295_0();
                      OUTLINED_FUNCTION_169_6(v269 & 0xFFFF0000FFFFFFFFLL | 0x6E4900000000);
                      v271 = v6 && v1 == v270;
                      if (v271 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
                      {
                        OUTLINED_FUNCTION_6_54();
                        if (v272 != 21)
                        {
                          goto LABEL_7;
                        }

                        *&v376[9] = *((v0 & 0xFFFFFFFFFFFFFFBLL) + 0x29);
                        *v376 = *((v0 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
                        v310 = *((v0 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
                        v42 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.DateInterval;
                        v43 = &off_1F07E1228;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_38();
                        v274 = v2 == 0xD000000000000014 && v273 == v1;
                        if (v274 || (OUTLINED_FUNCTION_5_5() & 1) != 0)
                        {
                          OUTLINED_FUNCTION_6_54();
                          if (v283 != 22)
                          {
                            goto LABEL_7;
                          }

                          v284 = OUTLINED_FUNCTION_8_48(v275, v276, v277, v278, v279, v280, v281, v282, v299, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365);
                          v286 = memcpy(v284, v285, 0xC0uLL);
                          v294 = OUTLINED_FUNCTION_135_6(v286, v287, v288, v289, v290, v291, v292, v293, v311);
                          memcpy(v294, v295, 0xC0uLL);
                          v42 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Person.NameComponents;
                          v43 = &off_1F07E1178;
                        }

                        else
                        {
                          v296 = v2 == OUTLINED_FUNCTION_142_7() && v1 == 0xE800000000000000;
                          if (!v296 && (OUTLINED_FUNCTION_0_66() & 1) == 0)
                          {
                            goto LABEL_7;
                          }

                          OUTLINED_FUNCTION_6_54();
                          if (v297 != 23)
                          {
                            goto LABEL_7;
                          }

                          OUTLINED_FUNCTION_94_12();
                          OUTLINED_FUNCTION_294_1(v298);
                          v42 = &type metadata for ToolKitToolTypedValue.PrimitiveValue.Duration;
                          v43 = &off_1F07E1238;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return sub_193494798(v42, v43, v4);
}