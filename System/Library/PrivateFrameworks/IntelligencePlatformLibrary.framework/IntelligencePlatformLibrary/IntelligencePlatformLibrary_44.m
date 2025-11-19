uint64_t sub_1937778B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      sub_19375DEAC();
      v5 = 0;
      do
      {
        v12 = *(a1 + v5 + 32);
        v6 = *(a1 + v5 + 40);
        v13 = *(a1 + v5 + 56);
        v9 = *(a2 + v5 + 32);
        v10 = *(a2 + v5 + 40);
        v11 = *(a2 + v5 + 56);

        v7 = sub_19393C550();

        if ((v7 & 1) == 0)
        {
          break;
        }

        v5 += 32;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_193777A00(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 4)
    {
      v5 = v3[1];
      v21[0] = *v3;
      v21[1] = v5;
      v6 = v3[3];
      v22 = v3[2];
      v23 = v6;
      v17 = v21[0];
      v18 = v5;
      v19 = v22;
      v20 = v6;
      v7 = *i;
      v8 = i[1];
      v9 = i[3];
      v25 = i[2];
      v26 = v9;
      v24[0] = v7;
      v24[1] = v8;
      v13 = v7;
      v14 = v8;
      v15 = v25;
      v16 = v9;
      sub_1937568B8(v21, v12);
      sub_1937568B8(v24, v12);
      sub_19375DD6C();
      v10 = sub_19393C550();
      v27[0] = v13;
      v27[1] = v14;
      v27[2] = v15;
      v27[3] = v16;
      sub_19375DCC0(v27);
      v28[0] = v17;
      v28[1] = v18;
      v28[2] = v19;
      v28[3] = v20;
      sub_19375DCC0(v28);
      if ((v10 & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_193777B14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceReportingSpanContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_193777B78()
{
  result = qword_1EAE428F0;
  if (!qword_1EAE428F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE428F0);
  }

  return result;
}

uint64_t sub_193777BCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = v5[1];
      v8[0] = *v5;
      v8[1] = v6;
      v7 = v5[3];
      v9 = v5[2];
      v10 = v7;
      v12 = v8[0];
      v13 = v6;
      v14 = v9;
      v15 = v7;
      sub_1937568B8(v8, v11);
      sub_193777D48();
      sub_19393C540();
      v11[0] = v12;
      v11[1] = v13;
      v11[2] = v14;
      v11[3] = v15;
      result = sub_19375DCC0(v11);
      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_193777C88(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    sub_193777D9C();
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 1);
      v8 = *v5;

      sub_19393C540();

      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_193777D48()
{
  result = qword_1EAE428F8;
  if (!qword_1EAE428F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE428F8);
  }

  return result;
}

unint64_t sub_193777D9C()
{
  result = qword_1EAE42908;
  if (!qword_1EAE42908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42908);
  }

  return result;
}

uint64_t sub_193777DF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_193777E38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_193777E90()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEAD898);
  __swift_project_value_buffer(v0, &qword_1EAEAD898);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_193969E30;
  v4 = v61 + v3;
  v5 = v61 + v3 + v1[14];
  *(v61 + v3) = 1;
  *v5 = "subsystem";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  v9(v5, v6, v7);
  v10 = OUTLINED_FUNCTION_3_1(v4 + v2);
  *v11 = 2;
  *v10 = "stepIdentifier";
  v10[1] = 14;
  v12 = OUTLINED_FUNCTION_41(v10);
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v4 + 2 * v2);
  *v14 = 3;
  *v13 = "invocationID";
  v13[1] = 12;
  v15 = OUTLINED_FUNCTION_41(v13);
  (v9)(v15);
  v16 = OUTLINED_FUNCTION_44(3 * v2);
  *v17 = 4;
  *v16 = "clientRequestID";
  v16[1] = 15;
  v18 = OUTLINED_FUNCTION_41(v16);
  (v9)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v4 + 4 * v2);
  *v20 = 5;
  *v19 = "modelManagerRequestID";
  v19[1] = 21;
  v21 = OUTLINED_FUNCTION_41(v19);
  (v9)(v21);
  v22 = OUTLINED_FUNCTION_44(5 * v2);
  *v23 = 6;
  *v22 = "sessionID";
  v22[1] = 9;
  v24 = OUTLINED_FUNCTION_41(v22);
  (v9)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v4 + 6 * v2);
  *v26 = 7;
  *v25 = "timestamp";
  v25[1] = 9;
  v27 = OUTLINED_FUNCTION_41(v25);
  (v9)(v27);
  v28 = OUTLINED_FUNCTION_44(7 * v2);
  *v29 = 8;
  *v28 = "type";
  v28[1] = 4;
  v30 = OUTLINED_FUNCTION_41(v28);
  (v9)(v30);
  v31 = OUTLINED_FUNCTION_3_1(v4 + 8 * v2);
  *v32 = 9;
  *v31 = "errors";
  v31[1] = 6;
  v33 = OUTLINED_FUNCTION_41(v31);
  (v9)(v33);
  v34 = OUTLINED_FUNCTION_44(9 * v2);
  *v35 = 10;
  *v34 = "assets";
  v34[1] = 6;
  v36 = OUTLINED_FUNCTION_41(v34);
  (v9)(v36);
  v37 = OUTLINED_FUNCTION_3_1(v4 + 10 * v2);
  *v38 = 11;
  *v37 = "assetBundleID";
  v37[1] = 13;
  v39 = OUTLINED_FUNCTION_41(v37);
  (v9)(v39);
  v40 = OUTLINED_FUNCTION_3_1(v4 + 11 * v2);
  *v41 = 12;
  *v40 = "primaryUseCase";
  v40[1] = 14;
  v42 = OUTLINED_FUNCTION_41(v40);
  (v9)(v42);
  v43 = OUTLINED_FUNCTION_3_1(v4 + 12 * v2);
  *v44 = 13;
  *v43 = "additionalUseCases";
  v43[1] = 18;
  v45 = OUTLINED_FUNCTION_41(v43);
  (v9)(v45);
  v46 = OUTLINED_FUNCTION_3_1(v4 + 13 * v2);
  *v47 = 14;
  *v46 = "requestorBundleID";
  v46[1] = 17;
  v48 = OUTLINED_FUNCTION_41(v46);
  (v9)(v48);
  v49 = OUTLINED_FUNCTION_3_1(v4 + 14 * v2);
  *v50 = 15;
  *v49 = "onBehalfOfBundleID";
  v49[1] = 18;
  v51 = OUTLINED_FUNCTION_41(v49);
  (v9)(v51);
  v52 = OUTLINED_FUNCTION_44(15 * v2);
  *v53 = 16;
  *v52 = "inferenceProviderIdentifier";
  v52[1] = 27;
  v54 = OUTLINED_FUNCTION_41(v52);
  (v9)(v54);
  v55 = OUTLINED_FUNCTION_3_1(v4 + 16 * v2);
  *v56 = 18;
  *v55 = "eventPairID";
  v55[1] = 11;
  v57 = OUTLINED_FUNCTION_41(v55);
  (v9)(v57);
  v58 = OUTLINED_FUNCTION_44(17 * v2);
  *v59 = 19;
  *v58 = "spanContext";
  *(v58 + 8) = 11;
  *(v58 + 16) = 2;
  (v9)();
  return sub_19393C410();
}

void sub_193778348()
{
  OUTLINED_FUNCTION_26();
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
        v4 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep() + 28);
        goto LABEL_24;
      case 2:
        v13 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep() + 32);
        goto LABEL_24;
      case 3:
        v5 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep() + 36);
        goto LABEL_20;
      case 4:
        v5 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep() + 40);
        goto LABEL_20;
      case 5:
        v5 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep() + 44);
        goto LABEL_20;
      case 6:
        v5 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep() + 48);
        goto LABEL_20;
      case 7:
        v17 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep() + 52);
        sub_1934976E4();
        goto LABEL_27;
      case 8:
        v12 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
        OUTLINED_FUNCTION_160(*(v12 + 56));
        sub_1934982A8();
        goto LABEL_27;
      case 9:
        v19 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep() + 60);
        type metadata accessor for AppleIntelligenceReportingGeneralError(0);
        v9 = OUTLINED_FUNCTION_42_4();
        goto LABEL_26;
      case 10:
        v10 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
        v9 = OUTLINED_FUNCTION_160(*(v10 + 64));
        goto LABEL_26;
      case 11:
        v18 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep() + 68);
        goto LABEL_24;
      case 12:
        v7 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
        OUTLINED_FUNCTION_160(*(v7 + 72));
        goto LABEL_18;
      case 13:
        v8 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
        v9 = OUTLINED_FUNCTION_160(*(v8 + 76));
LABEL_26:
        sub_193498238(v9);
        goto LABEL_27;
      case 14:
        v16 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep() + 80);
        goto LABEL_24;
      case 15:
        v6 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep() + 84);
        goto LABEL_24;
      case 16:
        v11 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep() + 88);
LABEL_24:
        sub_19393C200();
        goto LABEL_27;
      case 18:
        v5 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep() + 92);
LABEL_20:
        v15 = OUTLINED_FUNCTION_160(v5);
        sub_193497890(v15);
        goto LABEL_27;
      case 19:
        v14 = *(type metadata accessor for AppleIntelligenceReportingInvocationStep() + 96);
        type metadata accessor for AppleIntelligenceReportingSpanContext(0);
        OUTLINED_FUNCTION_42_4();
LABEL_18:
        sub_193498018();
LABEL_27:
        v1 = 0;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_1937785E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  a10 = v23;
  v25 = v24;
  v26 = OUTLINED_FUNCTION_275();
  OUTLINED_FUNCTION_47(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  v32 = type metadata accessor for AppleIntelligenceReportingSpanContext(0);
  v33 = OUTLINED_FUNCTION_4_1(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = OUTLINED_FUNCTION_5_66();
  sub_1934486F8(v25 + *(v36 + 96), v31, &qword_1EAE428D0, &qword_193994B98);
  if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
  {
    sub_19344E6DC(v31, &qword_1EAE428D0, &qword_193994B98);
  }

  else
  {
    sub_193777B14(v31, v20);
    sub_193447600();
    sub_193775BDC(v20);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193778728()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE42910;

  return v0;
}

uint64_t sub_19377876C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE93290 != -1)
  {
    OUTLINED_FUNCTION_6_59();
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, &qword_1EAEAD898);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t AppleIntelligenceReportingInvocationStep.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v0 + 20));
}

uint64_t AppleIntelligenceReportingInvocationStep.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA00, &unk_19394F8F0, *(v0 + 24));
}

uint64_t AppleIntelligenceReportingInvocationStep.subsystem.getter()
{
  v0 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
  OUTLINED_FUNCTION_4_4(*(v0 + 28));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceReportingInvocationStep.stepIdentifier.getter()
{
  v0 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
  OUTLINED_FUNCTION_4_4(*(v0 + 32));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceReportingInvocationStep.invocationID.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA88, &qword_19394F9C0, *(v0 + 36));
}

uint64_t AppleIntelligenceReportingInvocationStep.clientRequestID.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA88, &qword_19394F9C0, *(v0 + 40));
}

uint64_t AppleIntelligenceReportingInvocationStep.modelManagerRequestID.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA88, &qword_19394F9C0, *(v0 + 44));
}

uint64_t AppleIntelligenceReportingInvocationStep.sessionID.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA88, &qword_19394F9C0, *(v0 + 48));
}

uint64_t AppleIntelligenceReportingInvocationStep.timestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v0 + 52));
}

uint64_t AppleIntelligenceReportingInvocationStep.type.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for AppleIntelligenceReportingInvocationStep();
  v3 = (v1 + *(result + 56));
  v4 = *v3;
  v5 = *(v3 + 8);
  LOBYTE(v3) = *(v3 + 9);
  *v0 = v4;
  *(v0 + 8) = v5;
  *(v0 + 9) = v3;
  return result;
}

uint64_t AppleIntelligenceReportingInvocationStep.errors.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppleIntelligenceReportingInvocationStep() + 60));
}

uint64_t AppleIntelligenceReportingInvocationStep.assets.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppleIntelligenceReportingInvocationStep() + 64));
}

uint64_t AppleIntelligenceReportingInvocationStep.assetBundleID.getter()
{
  v0 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
  OUTLINED_FUNCTION_4_4(*(v0 + 68));
  return OUTLINED_FUNCTION_13_0();
}

double sub_193778E70@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t AppleIntelligenceReportingInvocationStep.primaryUseCase.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = (v1 + *(type metadata accessor for AppleIntelligenceReportingInvocationStep() + 72));
  v3 = v2[1];
  v8[0] = *v2;
  v8[1] = v3;
  v5 = v2[3];
  v9 = v2[2];
  v4 = v9;
  v10 = v5;
  *v0 = v8[0];
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  return sub_19344865C(v8, &v7, &qword_1EAE42550, &qword_193992990);
}

uint64_t sub_193778EE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42550, &qword_193992990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppleIntelligenceReportingInvocationStep.additionalUseCases.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppleIntelligenceReportingInvocationStep() + 76));
}

uint64_t AppleIntelligenceReportingInvocationStep.requestorBundleID.getter()
{
  v0 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
  OUTLINED_FUNCTION_4_4(*(v0 + 80));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceReportingInvocationStep.onBehalfOfBundleID.getter()
{
  v0 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
  OUTLINED_FUNCTION_4_4(*(v0 + 84));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceReportingInvocationStep.inferenceProviderIdentifier.getter()
{
  v0 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
  OUTLINED_FUNCTION_4_4(*(v0 + 88));
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AppleIntelligenceReportingInvocationStep.eventPairID.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA88, &qword_19394F9C0, *(v0 + 92));
}

uint64_t sub_1937791B8()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for AppleIntelligenceReportingSpanContext(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t AppleIntelligenceReportingInvocationStep.spanContext.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE428D0, &qword_193994B98, *(v0 + 96));
}

uint64_t AppleIntelligenceReportingInvocationStep.hashValue.getter()
{
  sub_19393CAB0();
  AppleIntelligenceReportingInvocationStep.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1937792E8()
{
  sub_19393CAB0();
  AppleIntelligenceReportingInvocationStep.hash(into:)(v1);
  return sub_19393CB00();
}

unint64_t sub_193779328()
{
  result = qword_1EAE42920;
  if (!qword_1EAE42920)
  {
    type metadata accessor for AppleIntelligenceReportingInvocationStep();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42920);
  }

  return result;
}

uint64_t sub_1937793AC()
{
  sub_1937796A8(319, &qword_1ED5082C0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_4_0();
  if (!(!v2 & v1))
  {
    sub_19349D198();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      OUTLINED_FUNCTION_0_100(v3, &qword_1ED508290, MEMORY[0x1E69E6158]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_1937796A8(319, &qword_1ED508298, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          OUTLINED_FUNCTION_0_100(v7, &qword_1ED503ED0, &type metadata for AppleIntelligenceReportingEventType);
          OUTLINED_FUNCTION_4_0();
          if (!(!v2 & v1))
          {
            sub_1937796A8(319, &qword_1EAE425A0, type metadata accessor for AppleIntelligenceReportingGeneralError, MEMORY[0x1E69E62F8]);
            OUTLINED_FUNCTION_4_0();
            if (!(!v2 & v1))
            {
              OUTLINED_FUNCTION_4_70(v9, &qword_1ED503EB8, &type metadata for AppleIntelligenceReportingAsset);
              OUTLINED_FUNCTION_4_0();
              if (!(!v2 & v1))
              {
                OUTLINED_FUNCTION_0_100(v10, qword_1ED503ED8, &type metadata for AppleIntelligenceReportingUseCase);
                OUTLINED_FUNCTION_4_0();
                if (!(!v2 & v1))
                {
                  OUTLINED_FUNCTION_4_70(v11, &qword_1ED503EB0, &type metadata for AppleIntelligenceReportingUseCase);
                  OUTLINED_FUNCTION_4_0();
                  if (!(!v2 & v1))
                  {
                    sub_1937796A8(319, &qword_1EAE42928, type metadata accessor for AppleIntelligenceReportingSpanContext, MEMORY[0x1E69E6720]);
                    OUTLINED_FUNCTION_4_0();
                    if (!(!v2 & v1))
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                      return 0;
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

  return v0;
}

void sub_193779658(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1937796A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_193779728()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED512238);
  v5 = __swift_project_value_buffer(v4, qword_1ED512238);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.GenerativeExperiences.GeneratedImageFeatures.FailureReason.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:86400.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:0 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_65 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED512238);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42930, &qword_193994D70);
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

unint64_t static Library.Streams.GenerativeExperiences.GeneratedImageFeatures.FailureReason.attribute(_:)(void (*a1)(void))
{
  result = sub_193779B38(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193779B80(void (*a1)(void))
{
  result = sub_193779B38(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193779BB0(uint64_t a1)
{
  result = sub_193779BD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193779BD8()
{
  result = qword_1EAE42938;
  if (!qword_1EAE42938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42938);
  }

  return result;
}

_BYTE *_s13FailureReasonOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GeneratedImageFailureReason.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v28 = sub_19393C090();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for GeneratedImageFailureReason();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42940, &qword_193994DE8);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v27 - v21;
  sub_193779ED4(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE42940, &qword_193994DE8);
  sub_19393C250();
  (*(v3 + 8))(v9, v28);
  sub_19344E6DC(v22, &qword_1EAE42940, &qword_193994DE8);
  OUTLINED_FUNCTION_27();
  result._object = v25;
  result._countAndFlagsBits = v24;
  return result;
}

uint64_t sub_193779ED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeneratedImageFailureReason();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static GeneratedImageFailureReason.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_5_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42940, &qword_193994DE8);
  OUTLINED_FUNCTION_4_1(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v33, &qword_1EAE42940, &qword_193994DE8);
  sub_19393C260();
  if (!v20)
  {
    sub_19377A068(v32, v24);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_19377A068(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeneratedImageFailureReason();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static GeneratedImageFailureReason.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v39 = v2;
  v40 = v1;
  v38 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42940, &qword_193994DE8);
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v16 = sub_19393C0C0();
  OUTLINED_FUNCTION_1_0();
  v18 = v17;
  v20 = *(v19 + 64);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v37 - v25;
  if (*sub_19377D868() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    (*(v18 + 16))(v24, v26, v16);
    sub_193450688(v9, v7);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v27, v28, v29);
    sub_19393C280();
    (*(v18 + 8))(v26, v16);
    if (!v0)
    {
      v31 = v39;
      sub_19377A068(v15, v39);
      v32 = type metadata accessor for GeneratedImageFailureReason();
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
    swift_allocError();
    *v30 = v5;
    *(v30 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t GeneratedImageFailureReason.serialize()()
{
  v1 = type metadata accessor for GeneratedImageFailureReason();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42940, &qword_193994DE8);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_193779ED4(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE42940, &qword_193994DE8);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE42940, &qword_193994DE8);
  return v15;
}

id static GeneratedImageFailureReason.columns.getter()
{
  v125 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v10 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v11, v12, v13, v14, v15, 0, 2);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(inited, v18, v19, v20, v21, v22, v23, v24, v25);
  v26 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v26, v27, v28, v29, v30, v31, v32, v33, v34);
  v35 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v35);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v36, v37, v38, v39, v40, 14, 3);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_7_2(result);
  v41 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v41, v42, v43, v44, v45, v46, v47, v48, v49);
  v50 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v50, v51, v52, v53, v54, v55, v56, v57, v58);
  v59 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v59);
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v60, v61, v62, v63, v64, 13, 0);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_7_2(result);
  v65 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v65, v66, v67, v68, v69, v70, v71, v72, v73);
  v74 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v74, v75, v76, v77, v78, v79, v80, v81, v82);
  v83 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v83);
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v84, v85, v86, v87, v88, 13, 0);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_7_2(result);
  v89 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v89, v90, v91, v92, v93, v94, v95, v96, v97);
  v98 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v98, v99, v100, v101, v102, v103, v104, v105, v106);
  v107 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v107);
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v108, v109, v110, v111, v112, 4, 0);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_7_2(result);
  v113 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v113, v114, v115, v116, v117, v118, v119, v120, v121);
  v122 = OUTLINED_FUNCTION_6_4();
  *(v122 + 16) = xmmword_193950B10;
  *(v122 + 32) = sub_19393C850();
  v123 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v124 = OUTLINED_FUNCTION_22_6();
  result = sub_19343D150(v124, 0xE700000000000000, 0, 0, v122, 4, 0);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v125;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_19377A854()
{
  OUTLINED_FUNCTION_26();
  v54 = v1;
  v55 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v52 - v8;
  v10 = sub_19393BE60();
  OUTLINED_FUNCTION_1_0();
  v53 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_1();
  v17 = v16 - v15;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v52 - v20;
  v22 = sub_19393BE00();
  OUTLINED_FUNCTION_1_0();
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_1();
  v30 = v29 - v28;
  v32 = v5 == v31 && v3 == 0xE900000000000070;
  if (!v32 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
  {
    v36 = v5 == OUTLINED_FUNCTION_105() && v3 == v35;
    if (v36 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v37 = type metadata accessor for GeneratedImageFailureReason();
      sub_1934486F8(v55 + *(v37 + 32), v9, &qword_1EAE3AA88, &qword_19394F9C0);
      if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
      {
        v39 = v53;
        (*(v53 + 32))(v17, v9, v10);
        sub_1934948FC();
        (*(v39 + 8))(v17, v10);
        goto LABEL_9;
      }

      sub_19344E6DC(v9, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_17;
    }

    v40 = v5 == 0xD000000000000015 && 0x8000000193A2B230 == v3;
    if (v40 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
    {
      v41 = *(type metadata accessor for GeneratedImageFailureReason() + 36);
    }

    else
    {
      v44 = v5 == 0xD000000000000013 && 0x8000000193A2B250 == v3;
      if (!v44 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
      {
        v45 = v5 == 0x6E6F73616572 && v3 == 0xE600000000000000;
        if (v45 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
        {
          v46 = type metadata accessor for GeneratedImageFailureReason();
          OUTLINED_FUNCTION_9_71(*(v46 + 44));
        }

        else
        {
          v47 = v5 == OUTLINED_FUNCTION_22_6() && v3 == 0xE700000000000000;
          if (!v47 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
          {
            sub_19349AB64();
            swift_allocError();
            v50 = v49;
            *v49 = v5;
            v49[1] = v3;
            v49[5] = type metadata accessor for GeneratedImageFailureReason();
            boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v50 + 2);
            sub_193779ED4(v55, boxed_opaque_existential_1Tm);
            *(v50 + 48) = 1;
            swift_willThrow();

            goto LABEL_9;
          }

          v48 = type metadata accessor for GeneratedImageFailureReason();
          OUTLINED_FUNCTION_9_71(*(v48 + 48));
        }

        goto LABEL_27;
      }

      v41 = *(type metadata accessor for GeneratedImageFailureReason() + 40);
    }

    v42 = (v55 + v41);
    v43 = *(v55 + v41 + 8);
    if (!v43)
    {
LABEL_17:
      v38 = v54;
      *v54 = 0u;
      v38[1] = 0u;
      goto LABEL_9;
    }

    v56 = *v42;
    v57 = v43;
LABEL_27:
    sub_1934948FC();
    goto LABEL_9;
  }

  v33 = type metadata accessor for GeneratedImageFailureReason();
  sub_1934486F8(v55 + *(v33 + 28), v21, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_19344E6DC(v21, &qword_1EAE3A9E8, &qword_19394F800);
    v34 = v54;
    *v54 = 0u;
    v34[1] = 0u;
  }

  else
  {
    (*(v24 + 32))(v30, v21, v22);
    sub_1934948FC();
    (*(v24 + 8))(v30, v22);
  }

LABEL_9:
  OUTLINED_FUNCTION_27();
}

uint64_t GeneratedImageFailureReason.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for GeneratedImageFailureReason();
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_19344B814();
  v6 = v2[8];
  sub_19344B7DC();
  v13 = (a1 + v2[9]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_19377D868();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v8 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v8);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE3A9E8, &qword_19394F800);
  __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v8);
  sub_19344E6DC(a1 + v6, &qword_1EAE3AA88, &qword_19394F9C0);
  v9 = sub_19393BE60();
  __swift_storeEnumTagSinglePayload(a1 + v6, 1, 1, v9);

  *v13 = 0;
  v13[1] = 0;
  *v7 = 0;
  v7[1] = 0;
  v11 = a1 + v2[11];
  *v11 = 0;
  v11[8] = 0;
  v12 = a1 + v2[12];
  *v12 = 0;
  v12[8] = 0;
  return result;
}

uint64_t static GeneratedImageFailureReason.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v84 = sub_19393BE60();
  v4 = OUTLINED_FUNCTION_0(v84);
  v80 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v78 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v79 = &v77 - v14;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  OUTLINED_FUNCTION_4_1(v81);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  v82 = &v77 - v18;
  v19 = sub_19393BE00();
  v20 = OUTLINED_FUNCTION_0(v19);
  v86 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_1();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v77 - v31;
  v33 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430) - 8);
  v34 = *(*v33 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v77 - v36;
  v83 = type metadata accessor for GeneratedImageFailureReason();
  v38 = *(v83 + 28);
  v39 = v33[14];
  v85 = a1;
  sub_1934486F8(a1 + v38, v37, &qword_1EAE3A9E8, &qword_19394F800);
  sub_1934486F8(a2 + v38, &v37[v39], &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v37, 1, v19);
  if (v40)
  {
    OUTLINED_FUNCTION_6_3(&v37[v39], 1, v19);
    if (v40)
    {
      sub_19344E6DC(v37, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_11;
    }

LABEL_9:
    v41 = &qword_1EAE3B968;
    v42 = &qword_193972430;
    v43 = v37;
LABEL_20:
    sub_19344E6DC(v43, v41, v42);
    goto LABEL_21;
  }

  sub_1934486F8(v37, v32, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(&v37[v39], 1, v19);
  if (v40)
  {
    (*(v86 + 8))(v32, v19);
    goto LABEL_9;
  }

  v44 = v86;
  (*(v86 + 32))(v26, &v37[v39], v19);
  OUTLINED_FUNCTION_19_9();
  sub_193652BF4(v45, v46);
  v47 = sub_19393C550();
  v48 = *(v44 + 8);
  v48(v26, v19);
  v48(v32, v19);
  sub_19344E6DC(v37, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v47 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v50 = v82;
  v49 = v83;
  v51 = *(v83 + 32);
  v52 = *(v81 + 48);
  sub_1934486F8(v85 + v51, v82, &qword_1EAE3AA88, &qword_19394F9C0);
  sub_1934486F8(a2 + v51, v50 + v52, &qword_1EAE3AA88, &qword_19394F9C0);
  v53 = v84;
  OUTLINED_FUNCTION_6_3(v50, 1, v84);
  if (!v40)
  {
    v54 = v79;
    sub_1934486F8(v50, v79, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_6_3(v50 + v52, 1, v53);
    if (!v55)
    {
      v58 = v80;
      v59 = v50 + v52;
      v60 = v78;
      (*(v80 + 32))(v78, v59, v53);
      OUTLINED_FUNCTION_20_34();
      sub_193652BF4(v61, v62);
      v63 = sub_19393C550();
      v64 = *(v58 + 8);
      v64(v60, v53);
      v64(v54, v53);
      sub_19344E6DC(v50, &qword_1EAE3AA88, &qword_19394F9C0);
      if ((v63 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    (*(v80 + 8))(v54, v53);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_6_3(v50 + v52, 1, v53);
  if (!v40)
  {
LABEL_19:
    v41 = &qword_1EAE3B4E8;
    v42 = &unk_193952CF0;
    v43 = v50;
    goto LABEL_20;
  }

  sub_19344E6DC(v50, &qword_1EAE3AA88, &qword_19394F9C0);
LABEL_24:
  v65 = v49[9];
  OUTLINED_FUNCTION_1_2();
  if (v66)
  {
    if (!v67)
    {
      goto LABEL_21;
    }

    v70 = *v68 == *v69 && v66 == v67;
    if (!v70 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v67)
  {
    goto LABEL_21;
  }

  v71 = v49[10];
  OUTLINED_FUNCTION_1_2();
  if (v72)
  {
    if (!v73)
    {
      goto LABEL_21;
    }

    v76 = *v74 == *v75 && v72 == v73;
    if (!v76 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v73)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_6_60(v49[11]);
  sub_19377B57C();
  if (sub_19393C550())
  {
    OUTLINED_FUNCTION_6_60(v49[12]);
    sub_19377B5D0();
    v56 = sub_19393C550();
    return v56 & 1;
  }

LABEL_21:
  v56 = 0;
  return v56 & 1;
}

unint64_t sub_19377B57C()
{
  result = qword_1EAE42950;
  if (!qword_1EAE42950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42950);
  }

  return result;
}

unint64_t sub_19377B5D0()
{
  result = qword_1EAE42958;
  if (!qword_1EAE42958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42958);
  }

  return result;
}

uint64_t GeneratedImageFailureReason.hash(into:)()
{
  v1 = v0;
  v2 = sub_19393BE60();
  v3 = OUTLINED_FUNCTION_0(v2);
  v46 = v4;
  v47 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v45 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  v15 = sub_19393BE00();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_1();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v44 - v28;
  v30 = type metadata accessor for GeneratedImageFailureReason();
  sub_1934486F8(v1 + v30[7], v29, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v29, 1, v15);
  if (v31)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v18 + 32))(v23, v29, v15);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_19_9();
    sub_193652BF4(v32, v33);
    sub_19393C540();
    (*(v18 + 8))(v23, v15);
  }

  sub_1934486F8(v1 + v30[8], v14, &qword_1EAE3AA88, &qword_19394F9C0);
  v34 = v47;
  OUTLINED_FUNCTION_6_3(v14, 1, v47);
  if (v31)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v36 = v45;
    v35 = v46;
    (*(v46 + 32))(v45, v14, v34);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_20_34();
    sub_193652BF4(v37, v38);
    sub_19393C540();
    (*(v35 + 8))(v36, v34);
  }

  v39 = (v1 + v30[9]);
  if (v39[1])
  {
    v40 = *v39;
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v41 = (v1 + v30[10]);
  if (v41[1])
  {
    v42 = *v41;
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_17_29(v30[11]);
  sub_19377B9D8();
  sub_19393C540();
  OUTLINED_FUNCTION_17_29(v30[12]);
  sub_19377BA2C();
  return sub_19393C540();
}

unint64_t sub_19377B9D8()
{
  result = qword_1EAE42960;
  if (!qword_1EAE42960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42960);
  }

  return result;
}

unint64_t sub_19377BA2C()
{
  result = qword_1EAE42968;
  if (!qword_1EAE42968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42968);
  }

  return result;
}

void GeneratedImageFailureReason.Reason.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t static GeneratedImageFailureReason.Reason.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE42988, &qword_193994EF8);
  v3 = v0;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = v4 >> 1;
  v7 = v5 + 1;
  if (v4 >> 1 <= v5)
  {
    v89 = OUTLINED_FUNCTION_39(v4);
    v93 = OUTLINED_FUNCTION_84_2(v89, v90, v91, v92, &qword_1EAE42988, &qword_193994EF8);
    v0 = OUTLINED_FUNCTION_17_2(v93);
  }

  *(v3 + 16) = v7;
  v8 = v3 + 16 * v5;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  v9 = v5 + 2;
  if (v6 < (v5 + 2))
  {
    v94 = OUTLINED_FUNCTION_39(v4);
    v98 = OUTLINED_FUNCTION_85(v94, v95, v96, v97, &qword_1EAE42988, &qword_193994EF8);
    v0 = OUTLINED_FUNCTION_17_2(v98);
  }

  *(v3 + 16) = v9;
  v10 = v3 + 16 * v7;
  *(v10 + 32) = 0;
  *(v10 + 40) = 1;
  v11 = v5 + 3;
  if (v6 < (v5 + 3))
  {
    v99 = OUTLINED_FUNCTION_39(v4);
    v0 = sub_1934B0FCC(v99, v5 + 3, 1, v100, &qword_1EAE42988, &qword_193994EF8);
    v3 = v0;
  }

  *(v3 + 16) = v11;
  v12 = v3 + 16 * v9;
  *(v12 + 32) = 1;
  *(v12 + 40) = 1;
  v13 = *(v3 + 24);
  if ((v5 + 4) > (v13 >> 1))
  {
    v101 = OUTLINED_FUNCTION_39(v13);
    v0 = OUTLINED_FUNCTION_84_2(v101, v102, v103, v104, &qword_1EAE42988, &qword_193994EF8);
    v3 = v0;
  }

  *(v3 + 16) = v5 + 4;
  v14 = v3 + 16 * v11;
  *(v14 + 32) = 2;
  *(v14 + 40) = 1;
  v15 = *(v3 + 24);
  if ((v5 + 5) > (v15 >> 1))
  {
    v105 = OUTLINED_FUNCTION_39(v15);
    v0 = OUTLINED_FUNCTION_85(v105, v106, v107, v108, &qword_1EAE42988, &qword_193994EF8);
    v3 = v0;
  }

  OUTLINED_FUNCTION_47_5(v0, v1, v2, v3);
  OUTLINED_FUNCTION_4(v16, v17);
  if ((v5 + 6) > (v22 >> 1))
  {
    v109 = OUTLINED_FUNCTION_39(v22);
    v18 = OUTLINED_FUNCTION_84_2(v109, v110, v111, v112, &qword_1EAE42988, &qword_193994EF8);
    v21 = v18;
  }

  OUTLINED_FUNCTION_50(v18, v19, v20, v21);
  OUTLINED_FUNCTION_4(v23, v24);
  if ((v5 + 7) > (v29 >> 1))
  {
    v113 = OUTLINED_FUNCTION_39(v29);
    v25 = OUTLINED_FUNCTION_85(v113, v114, v115, v116, &qword_1EAE42988, &qword_193994EF8);
    v28 = v25;
  }

  OUTLINED_FUNCTION_47_5(v25, v26, v27, v28);
  OUTLINED_FUNCTION_4(v30, v31);
  if ((v5 + 8) > (v36 >> 1))
  {
    v117 = OUTLINED_FUNCTION_39(v36);
    v32 = OUTLINED_FUNCTION_84_2(v117, v118, v119, v120, &qword_1EAE42988, &qword_193994EF8);
    v35 = v32;
  }

  OUTLINED_FUNCTION_50(v32, v33, v34, v35);
  OUTLINED_FUNCTION_4(v37, v38);
  if ((v5 + 9) > (v43 >> 1))
  {
    v121 = OUTLINED_FUNCTION_39(v43);
    v39 = OUTLINED_FUNCTION_85(v121, v122, v123, v124, &qword_1EAE42988, &qword_193994EF8);
    v42 = v39;
  }

  OUTLINED_FUNCTION_47_5(v39, v40, v41, v42);
  OUTLINED_FUNCTION_4(v44, v45);
  if ((v5 + 10) > (v50 >> 1))
  {
    v125 = OUTLINED_FUNCTION_39(v50);
    v46 = OUTLINED_FUNCTION_84_2(v125, v126, v127, v128, &qword_1EAE42988, &qword_193994EF8);
    v49 = v46;
  }

  OUTLINED_FUNCTION_50(v46, v47, v48, v49);
  OUTLINED_FUNCTION_4(v51, v52);
  if ((v5 + 11) > (v57 >> 1))
  {
    v129 = OUTLINED_FUNCTION_39(v57);
    v53 = OUTLINED_FUNCTION_85(v129, v130, v131, v132, &qword_1EAE42988, &qword_193994EF8);
    v56 = v53;
  }

  OUTLINED_FUNCTION_47_5(v53, v54, v55, v56);
  OUTLINED_FUNCTION_4(v58, v59);
  if ((v5 + 12) > (v64 >> 1))
  {
    v133 = OUTLINED_FUNCTION_39(v64);
    v60 = OUTLINED_FUNCTION_84_2(v133, v134, v135, v136, &qword_1EAE42988, &qword_193994EF8);
    v63 = v60;
  }

  OUTLINED_FUNCTION_50(v60, v61, v62, v63);
  OUTLINED_FUNCTION_4(v65, v66);
  if ((v5 + 13) > (v71 >> 1))
  {
    v137 = OUTLINED_FUNCTION_39(v71);
    v67 = OUTLINED_FUNCTION_85(v137, v138, v139, v140, &qword_1EAE42988, &qword_193994EF8);
    v70 = v67;
  }

  OUTLINED_FUNCTION_47_5(v67, v68, v69, v70);
  OUTLINED_FUNCTION_4(v72, v73);
  if ((v5 + 14) > (v78 >> 1))
  {
    v141 = OUTLINED_FUNCTION_39(v78);
    v74 = OUTLINED_FUNCTION_84_2(v141, v142, v143, v144, &qword_1EAE42988, &qword_193994EF8);
    v77 = v74;
  }

  OUTLINED_FUNCTION_50(v74, v75, v76, v77);
  OUTLINED_FUNCTION_4(v79, v80);
  if ((v5 + 15) > (v85 >> 1))
  {
    v145 = OUTLINED_FUNCTION_39(v85);
    v81 = OUTLINED_FUNCTION_85(v145, v146, v147, v148, &qword_1EAE42988, &qword_193994EF8);
    v84 = v81;
  }

  OUTLINED_FUNCTION_47_5(v81, v82, v83, v84);
  *(v86 + 32) = 13;
  *(v86 + 40) = 1;
  return v87;
}

unint64_t GeneratedImageFailureReason.Reason.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x727265764F534D47;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_19_51();
      break;
    case 2:
      result = 0x6867697279706F43;
      break;
    case 3:
      result = OUTLINED_FUNCTION_21_43();
      break;
    case 4:
      result = OUTLINED_FUNCTION_23_42();
      break;
    case 5:
      result = OUTLINED_FUNCTION_24_43();
      break;
    case 6:
      result = OUTLINED_FUNCTION_20_45();
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 0xALL:
      result = 0xD000000000000019;
      break;
    case 0xBLL:
      result = 0xD000000000000014;
      break;
    case 0xCLL:
      result = 0x6F6F626154;
      break;
    case 0xDLL:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

void GeneratedImageFailureReason.Reason.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || (v1 == 0x727265764F534D47 ? (v4 = v0 == 0xEB00000000656469) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else
  {
    v7 = v1 == OUTLINED_FUNCTION_19_51() && v0 == v6;
    if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v5 = 1;
    }

    else
    {
      v8 = v1 == 0x6867697279706F43 && v0 == 0xE900000000000074;
      if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v5 = 2;
      }

      else
      {
        v10 = v1 == OUTLINED_FUNCTION_21_43() && v0 == v9;
        if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          v5 = 3;
        }

        else
        {
          v12 = v1 == OUTLINED_FUNCTION_23_42() && v0 == v11;
          if (v12 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            v5 = 4;
          }

          else
          {
            v14 = v1 == OUTLINED_FUNCTION_24_43() && v0 == v13;
            if (v14 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              v5 = 5;
            }

            else
            {
              v16 = v1 == OUTLINED_FUNCTION_20_45() && v0 == v15;
              if (v16 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
              {

                v5 = 6;
              }

              else
              {
                OUTLINED_FUNCTION_26_4();
                v18 = v3 && v17 == v0;
                if (v18 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                {

                  v5 = 7;
                }

                else
                {
                  OUTLINED_FUNCTION_26_4();
                  v20 = v3 && v19 == v0;
                  if (v20 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                  {

                    v5 = 8;
                  }

                  else
                  {
                    v21 = v1 == 0xD000000000000015 && 0x8000000193A35E50 == v0;
                    if (v21 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                    {

                      v5 = 9;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_26_4();
                      v23 = v3 && v22 == v0;
                      if (v23 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                      {

                        v5 = 10;
                      }

                      else
                      {
                        v24 = v1 == 0xD000000000000014 && 0x8000000193A35E10 == v0;
                        if (v24 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                        {

                          v5 = 11;
                        }

                        else
                        {
                          v25 = v1 == 0x6F6F626154 && v0 == 0xE500000000000000;
                          if (v25 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                          {

                            v5 = 12;
                          }

                          else if (v1 == 0xD000000000000017 && 0x8000000193A35DF0 == v0)
                          {

                            v5 = 13;
                          }

                          else
                          {
                            v27 = OUTLINED_FUNCTION_0_9();

                            v5 = 13;
                            if ((v27 & 1) == 0)
                            {
                              v5 = 0;
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
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

void GeneratedImageFailureReason.Feature.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 2;
  if (a2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t static GeneratedImageFailureReason.Feature.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE42980, &qword_193994EF0);
  v3 = v0;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = v4 >> 1;
  v7 = v5 + 1;
  if (v4 >> 1 <= v5)
  {
    v19 = OUTLINED_FUNCTION_39(v4);
    v23 = OUTLINED_FUNCTION_84_2(v19, v20, v21, v22, &qword_1EAE42980, &qword_193994EF0);
    v0 = OUTLINED_FUNCTION_17_2(v23);
  }

  *(v3 + 16) = v7;
  v8 = v3 + 16 * v5;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  if (v6 < (v5 + 2))
  {
    v24 = OUTLINED_FUNCTION_39(v4);
    v28 = OUTLINED_FUNCTION_85(v24, v25, v26, v27, &qword_1EAE42980, &qword_193994EF0);
    v0 = OUTLINED_FUNCTION_17_2(v28);
  }

  *(v3 + 16) = v5 + 2;
  v9 = v3 + 16 * v7;
  *(v9 + 32) = 0;
  *(v9 + 40) = 1;
  if (v6 < (v5 + 3))
  {
    v29 = OUTLINED_FUNCTION_39(v4);
    v0 = OUTLINED_FUNCTION_84_2(v29, v30, v31, v32, &qword_1EAE42980, &qword_193994EF0);
    v3 = v0;
  }

  OUTLINED_FUNCTION_50(v0, v1, v2, v3);
  *(v14 + 32) = 1;
  *(v14 + 40) = 1;
  v15 = *(v13 + 24);
  if ((v5 + 4) > (v15 >> 1))
  {
    v33 = OUTLINED_FUNCTION_39(v15);
    v10 = OUTLINED_FUNCTION_85(v33, v34, v35, v36, &qword_1EAE42980, &qword_193994EF0);
    v13 = v10;
  }

  OUTLINED_FUNCTION_47_5(v10, v11, v12, v13);
  *(v16 + 32) = 2;
  *(v16 + 40) = 1;
  return v17;
}

uint64_t GeneratedImageFailureReason.Feature.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x616C506567616D49;
  if (*v0 != 1)
  {
    v1 = 0x706150636967614DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696A6F6D6E6547;
  }
}

void GeneratedImageFailureReason.Feature.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_9() & 1) != 0 || (v1 == 0x696A6F6D6E6547 ? (v4 = v0 == 0xE700000000000000) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else
  {
    v6 = v1 == 0x616C506567616D49 && v0 == 0xEF646E756F726779;
    if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v5 = 1;
    }

    else if (v1 == 0x706150636967614DLL && v0 == 0xEA00000000007265)
    {

      v5 = 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_0_9();

      v5 = 2;
      if ((v8 & 1) == 0)
      {
        v5 = 0;
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

unint64_t sub_19377C770()
{
  result = qword_1EAE42970;
  if (!qword_1EAE42970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42970);
  }

  return result;
}

unint64_t sub_19377C7C8()
{
  result = qword_1EAE42978;
  if (!qword_1EAE42978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42978);
  }

  return result;
}

void sub_19377C844()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD8B0);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 72);
  OUTLINED_FUNCTION_49_0();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v8, xmmword_1939526E0);
  *v1 = 1;
  *v0 = "timestamp";
  *(v0 + 8) = 9;
  *(v0 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_2_0();
  v12();
  v13 = OUTLINED_FUNCTION_3_1(v1 + v7);
  *v14 = 2;
  *v13 = "identifier";
  *(v13 + 8) = 10;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  v15 = OUTLINED_FUNCTION_3_1(v1 + 2 * v7);
  *v16 = 3;
  *v15 = "userInterfaceLanguage";
  *(v15 + 8) = 21;
  *(v15 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  v17 = OUTLINED_FUNCTION_3_1(v1 + 3 * v7);
  *v18 = 4;
  *v17 = "userSetRegionFormat";
  *(v17 + 8) = 19;
  *(v17 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  v19 = OUTLINED_FUNCTION_3_1(v1 + 4 * v7);
  *v20 = 5;
  *v19 = "reason";
  *(v19 + 8) = 6;
  *(v19 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  v21 = OUTLINED_FUNCTION_3_1(v1 + 5 * v7);
  *v22 = 6;
  *v21 = "feature";
  *(v21 + 8) = 7;
  *(v21 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_19377CA94()
{
  v4 = v1;
  while (1)
  {
    v5 = sub_19393C0E0();
    if (v4 || (v6 & 1) != 0)
    {
      break;
    }

    switch(v5)
    {
      case 1:
        v7 = *(type metadata accessor for GeneratedImageFailureReason() + 28);
        sub_1934976E4();
        goto LABEL_11;
      case 2:
        v11 = type metadata accessor for GeneratedImageFailureReason();
        sub_193497890(v0 + *(v11 + 32));
        goto LABEL_11;
      case 3:
        v9 = *(type metadata accessor for GeneratedImageFailureReason() + 36);
        goto LABEL_9;
      case 4:
        v10 = *(type metadata accessor for GeneratedImageFailureReason() + 40);
LABEL_9:
        sub_19393C200();
LABEL_11:
        v4 = 0;
        continue;
      case 5:
        OUTLINED_FUNCTION_12_41();
        sub_1934982A8();
        v8 = *(OUTLINED_FUNCTION_5_68() + 44);
        goto LABEL_13;
      case 6:
        OUTLINED_FUNCTION_12_41();
        sub_1934982A8();
        v8 = *(OUTLINED_FUNCTION_5_68() + 48);
LABEL_13:
        v12 = v0 + v8;
        *v12 = v2;
        *(v12 + 8) = v3 & 1;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_19377CC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_19377CE40(v3, a1, a2, a3);
  if (!v4)
  {
    sub_19377D000(v3, a1, a2, a3);
    v9 = type metadata accessor for GeneratedImageFailureReason();
    v10 = v9;
    v11 = (v3 + *(v9 + 36));
    if (v11[1])
    {
      v12 = *v11;
      OUTLINED_FUNCTION_32_20();
      sub_19393C3C0();
    }

    v13 = (v3 + v10[10]);
    if (v13[1])
    {
      v14 = *v13;
      OUTLINED_FUNCTION_32_20();
      sub_19393C3C0();
    }

    v15 = v3 + v10[11];
    v16 = *v15;
    v17 = *(v15 + 8);
    sub_19377B57C();
    if ((sub_19393C550() & 1) == 0)
    {
      OUTLINED_FUNCTION_32_20();
      sub_193447324(v18, v19, v20, v21, v22, v23);
    }

    v24 = v3 + v10[12];
    v25 = *v24;
    v26 = *(v24 + 8);
    sub_19377B5D0();
    result = sub_19393C550();
    if ((result & 1) == 0)
    {
      OUTLINED_FUNCTION_32_20();
      return sub_193447324(v27, v28, v29, v30, v31, v32);
    }
  }

  return result;
}

uint64_t sub_19377CE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_77(a1, a2, a3, a4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - v8;
  v10 = sub_19393BE00();
  v11 = OUTLINED_FUNCTION_76(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for GeneratedImageFailureReason();
  sub_193448758(v5 + *(v18 + 28), v9, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v9, 1, v4) == 1)
  {
    return sub_19344E6DC(v9, &qword_1EAE3A9E8, &qword_19394F800);
  }

  (*(v13 + 32))(v17, v9, v4);
  sub_193451F04(v17, 1, 2020175477, 0xE400000000000000);
  return (*(v13 + 8))(v17, v4);
}

uint64_t sub_19377D000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_77(a1, a2, a3, a4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - v8;
  v10 = sub_19393BE60();
  v11 = OUTLINED_FUNCTION_76(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for GeneratedImageFailureReason();
  sub_193448758(v5 + *(v18 + 32), v9, &qword_1EAE3AA88, &qword_19394F9C0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v4) == 1)
  {
    return sub_19344E6DC(v9, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  (*(v13 + 32))(v17, v9, v4);
  sub_19344652C();
  return (*(v13 + 8))(v17, v4);
}

uint64_t sub_19377D1B4()
{
  OUTLINED_FUNCTION_12();
  v0 = qword_1EAE42990;

  return v0;
}

void sub_19377D250()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD8C8);
  v1 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_193952670;
  v6 = v53 + v0 + dword_1EAEAD900;
  *(v53 + v0) = 0;
  *v6 = "ReasonUnknown";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v53 + v0 + v5);
  *v12 = 1;
  *v11 = "GMSOverride";
  v11[1] = 11;
  v13 = OUTLINED_FUNCTION_1_3(v11);
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v53 + v0 + 2 * v5);
  *v15 = 2;
  *v14 = "LexiconLanguage";
  v14[1] = 15;
  v16 = OUTLINED_FUNCTION_1_3(v14);
  (v10)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v53 + v0 + 3 * v5);
  *v18 = 3;
  *v17 = "Copyright";
  v17[1] = 9;
  v19 = OUTLINED_FUNCTION_1_3(v17);
  (v10)(v19);
  v20 = OUTLINED_FUNCTION_3_1(v53 + v0 + 4 * v5);
  *v21 = 4;
  *v20 = "TextSafetyModel";
  v20[1] = 15;
  v22 = OUTLINED_FUNCTION_1_3(v20);
  (v10)(v22);
  v23 = OUTLINED_FUNCTION_3_1(v53 + v0 + 5 * v5);
  *v24 = 5;
  *v23 = "ADMBlocklist";
  v23[1] = 12;
  v25 = OUTLINED_FUNCTION_1_3(v23);
  (v10)(v25);
  v26 = OUTLINED_FUNCTION_14_4(6);
  *v26 = "SafetyNudity";
  *(v26 + 1) = 12;
  v27 = OUTLINED_FUNCTION_1_3(v26);
  (v10)(v27);
  v28 = OUTLINED_FUNCTION_3_1(v53 + v0 + 7 * v5);
  *v29 = 7;
  *v28 = "SafetyViolence";
  v28[1] = 14;
  v30 = OUTLINED_FUNCTION_1_3(v28);
  (v10)(v30);
  v31 = OUTLINED_FUNCTION_3_1(v53 + v0 + 8 * v5);
  *v32 = 8;
  *v31 = "SafetyStructuralIntegrity";
  v31[1] = 25;
  v33 = OUTLINED_FUNCTION_1_3(v31);
  (v10)(v33);
  v34 = OUTLINED_FUNCTION_3_1(v53 + v0 + 9 * v5);
  *v35 = 9;
  *v34 = "MultiplePeopleNoFaceprint";
  v34[1] = 25;
  v36 = OUTLINED_FUNCTION_1_3(v34);
  (v10)(v36);
  v37 = OUTLINED_FUNCTION_14_4(10);
  *v37 = "AnimalPeopleConfusion";
  *(v37 + 1) = 21;
  v38 = OUTLINED_FUNCTION_1_3(v37);
  (v10)(v38);
  v39 = OUTLINED_FUNCTION_3_1(v53 + v0 + 11 * v5);
  *v40 = v41;
  *v39 = "InputNoPeopleOutputPeople";
  v39[1] = 25;
  v42 = OUTLINED_FUNCTION_1_3(v39);
  (v10)(v42);
  v43 = OUTLINED_FUNCTION_3_1(v53 + v0 + 12 * v5);
  *v44 = 12;
  *v43 = "OutputMultiplePeople";
  v43[1] = 20;
  v45 = OUTLINED_FUNCTION_1_3(v43);
  (v10)(v45);
  v46 = OUTLINED_FUNCTION_3_1(v53 + v0 + 13 * v5);
  *v47 = v48;
  *v46 = "Taboo";
  v46[1] = 5;
  v49 = OUTLINED_FUNCTION_1_3(v46);
  (v10)(v49);
  v50 = OUTLINED_FUNCTION_3_1(v53 + v0 + 14 * v5);
  *v51 = v52;
  *v50 = "InputTextMultiplePeople";
  *(v50 + 8) = 23;
  *(v50 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_19377D65C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD8E0);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 72);
  OUTLINED_FUNCTION_49_0();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v8, xmmword_19394FBC0);
  *v1 = 0;
  *v0 = "FeatureUnknown";
  *(v0 + 8) = 14;
  *(v0 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 104);
  OUTLINED_FUNCTION_2_0();
  v12();
  v13 = OUTLINED_FUNCTION_3_1(v1 + v7);
  *v14 = 1;
  *v13 = "Genmoji";
  *(v13 + 8) = 7;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  v15 = OUTLINED_FUNCTION_3_1(v1 + 2 * v7);
  *v16 = 2;
  *v15 = "ImagePlayground";
  *(v15 + 8) = 15;
  *(v15 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  v17 = OUTLINED_FUNCTION_3_1(v1 + 3 * v7);
  *v18 = 3;
  *v17 = "MagicPaper";
  *(v17 + 8) = 10;
  *(v17 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v12();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t GeneratedImageFailureReason.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for GeneratedImageFailureReason();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v0 + 20));
}

uint64_t type metadata accessor for GeneratedImageFailureReason()
{
  result = qword_1EAE93BC0;
  if (!qword_1EAE93BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GeneratedImageFailureReason.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for GeneratedImageFailureReason();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA00, &unk_19394F8F0, *(v0 + 24));
}

uint64_t GeneratedImageFailureReason.timestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for GeneratedImageFailureReason();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v0 + 28));
}

uint64_t GeneratedImageFailureReason.identifier.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for GeneratedImageFailureReason();
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA88, &qword_19394F9C0, *(v0 + 32));
}

uint64_t GeneratedImageFailureReason.userInterfaceLanguage.getter()
{
  v1 = (v0 + *(type metadata accessor for GeneratedImageFailureReason() + 36));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t GeneratedImageFailureReason.userInterfaceLanguage.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GeneratedImageFailureReason() + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GeneratedImageFailureReason.userSetRegionFormat.getter()
{
  v1 = (v0 + *(type metadata accessor for GeneratedImageFailureReason() + 40));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t GeneratedImageFailureReason.userSetRegionFormat.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GeneratedImageFailureReason() + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void GeneratedImageFailureReason.reason.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for GeneratedImageFailureReason();
  OUTLINED_FUNCTION_2_52(*(v0 + 44));
}

uint64_t GeneratedImageFailureReason.reason.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for GeneratedImageFailureReason();
  v5 = v1 + *(result + 44);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

void GeneratedImageFailureReason.feature.getter()
{
  OUTLINED_FUNCTION_8_4();
  v0 = type metadata accessor for GeneratedImageFailureReason();
  OUTLINED_FUNCTION_2_52(*(v0 + 48));
}

uint64_t GeneratedImageFailureReason.feature.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for GeneratedImageFailureReason();
  v5 = v1 + *(result + 48);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t sub_19377DE60@<X0>(uint64_t *a1@<X8>)
{
  result = GeneratedImageFailureReason.Reason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19377DE88@<X0>(uint64_t *a1@<X8>)
{
  result = static GeneratedImageFailureReason.Reason.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19377DEE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_19377DFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_19377E0F8@<X0>(uint64_t *a1@<X8>)
{
  result = GeneratedImageFailureReason.Feature.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19377E120@<X0>(uint64_t *a1@<X8>)
{
  result = static GeneratedImageFailureReason.Feature.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t GeneratedImageFailureReason.hashValue.getter()
{
  sub_19393CAB0();
  GeneratedImageFailureReason.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19377E260()
{
  sub_19393CAB0();
  GeneratedImageFailureReason.hash(into:)();
  return sub_19393CB00();
}

unint64_t sub_19377E308()
{
  result = qword_1EAE429C0;
  if (!qword_1EAE429C0)
  {
    type metadata accessor for GeneratedImageFailureReason();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE429C0);
  }

  return result;
}

uint64_t sub_19377E38C()
{
  sub_1934D3A60(319, &qword_1ED5082C0, MEMORY[0x1E6969530]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_19349D198();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_1934D3A60(319, &qword_1ED508298, MEMORY[0x1E69695A8]);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_193658134();
        v1 = v7;
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

_BYTE *_s11MobileAssetOwst_0(_BYTE *result, int a2, int a3)
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

_BYTE *_s9LifeCycleOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_19377E64C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED512298);
  v5 = __swift_project_value_buffer(v4, qword_1ED512298);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

id static Library.Streams.MobileAsset.LifeCycle.InstrumentationEvent.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:1209600.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:1 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_66 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED512298);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE429C8, &qword_193995260);
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

unint64_t static Library.Streams.MobileAsset.LifeCycle.InstrumentationEvent.attribute(_:)(void (*a1)(void))
{
  result = sub_19377EA5C(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19377EAA4(void (*a1)(void))
{
  result = sub_19377EA5C(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19377EAD4(uint64_t a1)
{
  result = sub_19377EAFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19377EAFC()
{
  result = qword_1EAE3A8C0;
  if (!qword_1EAE3A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A8C0);
  }

  return result;
}

_BYTE *_s20InstrumentationEventOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MobileAssetInstrumentationEvent.json()()
{
  v1 = v0;
  v31 = sub_19393C090();
  v2 = OUTLINED_FUNCTION_0(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v9 = v8 - v7;
  v10 = type metadata accessor for MobileAssetInstrumentationEvent();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE429D0, &qword_1939952E8);
  OUTLINED_FUNCTION_4_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - v21;
  sub_19377EE04(v1, v16);
  sub_1934470C8(v16, v10, v22);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v23, &qword_1EAE429D0, &qword_1939952E8);
  v24 = sub_19393C250();
  v26 = v25;
  (*(v4 + 8))(v9, v31);
  sub_19344E6DC(v22, &qword_1EAE429D0, &qword_1939952E8);
  v27 = v24;
  v28 = v26;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_19377EE04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileAssetInstrumentationEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static MobileAssetInstrumentationEvent.event(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19393C070();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE429D0, &qword_1939952E8);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v11, &qword_1EAE429D0, &qword_1939952E8);
  result = sub_19393C260();
  if (!v1)
  {
    return sub_19377EFA8(v10, a1);
  }

  return result;
}

uint64_t sub_19377EFA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileAssetInstrumentationEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static MobileAssetInstrumentationEvent.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v41 = a5;
  v39 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE429D0, &qword_1939952E8);
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
  if (*sub_193783268() == a3)
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
      sub_19377EFA8(v14, v40);
      v33 = type metadata accessor for MobileAssetInstrumentationEvent();
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

uint64_t MobileAssetInstrumentationEvent.serialize()()
{
  v1 = type metadata accessor for MobileAssetInstrumentationEvent();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE429D0, &qword_1939952E8);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_19377EE04(v0, v7);
  sub_1934470C8(v7, v1, v13);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v14, &qword_1EAE429D0, &qword_1939952E8);
  v15 = sub_19393C290();
  sub_19344E6DC(v13, &qword_1EAE429D0, &qword_1939952E8);
  return v15;
}

id static MobileAssetInstrumentationEvent.columns.getter()
{
  v13 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_22_15(inited, xmmword_193950B10);
  *(v1 + 16) = xmmword_193950B10;
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v1 + 32) = sub_19393C850();
  v2 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_10_62();
  OUTLINED_FUNCTION_16_38();
  result = sub_19343D150(v3, v4, 2, 0, v1, 13, 0);
  if (result)
  {
    inited[2].n128_u64[0] = result;
    sub_19343D230(inited);
    v6 = swift_initStackObject();
    v7 = OUTLINED_FUNCTION_22_15(v6, xmmword_193950B10);
    *(v7 + 16) = xmmword_193950B10;
    *(v7 + 32) = sub_19393C850();
    v8 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
    OUTLINED_FUNCTION_96_6();
    OUTLINED_FUNCTION_11();
    result = sub_19343D150(v9, v10, v11, v12, v7, 4, 0);
    if (result)
    {
      v6[2].n128_u64[0] = result;
      sub_19343D230(v6);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

int *sub_19377F620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_16_38();
  v8 = a1 == OUTLINED_FUNCTION_10_62() && a2 == v7;
  if (v8 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for MobileAssetInstrumentationEvent();
    v10 = (v3 + result[7]);
    v11 = v10[1];
    if (v11)
    {
      __dst[0] = *v10;
      __dst[1] = v11;
      return sub_1934948FC();
    }

    goto LABEL_15;
  }

  v13 = a1 == OUTLINED_FUNCTION_96_6() && a2 == v12;
  if (v13 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for MobileAssetInstrumentationEvent();
    v14 = v3 + result[8];
    if ((*(v14 + 9) & 1) == 0)
    {
      v15 = *(v14 + 8);
      __dst[0] = *v14;
      LOBYTE(__dst[1]) = v15 & 1;
      return sub_1934948FC();
    }

    goto LABEL_15;
  }

  v16 = a1 == 0xD000000000000010 && 0x8000000193A35F90 == a2;
  if (v16 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    result = type metadata accessor for MobileAssetInstrumentationEvent();
    v17 = (v3 + result[9]);
    v18 = v17[9];
    if (v18 != 1)
    {
      memcpy(__dst, v17, 0x48uLL);
      __dst[9] = v18;
      v19 = &type metadata for MADownloadResultEvent;
      v20 = &off_1F07EFE40;
      return sub_193494798(v19, v20, a3);
    }

    goto LABEL_15;
  }

  v21 = a1 == 0x657275636553616DLL && a2 == 0xEE006C6961746544;
  if (v21 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
  {
    v22 = type metadata accessor for MobileAssetInstrumentationEvent();
    memcpy(__dst, (v3 + *(v22 + 40)), sizeof(__dst));
    result = sub_1934B59A8(__dst);
    if (result != 1)
    {
      memcpy(v26, __dst, sizeof(v26));
      v19 = &type metadata for MASecureDetailEvent;
      v20 = &off_1F07EFE50;
      return sub_193494798(v19, v20, a3);
    }

LABEL_15:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v24 = v23;
  *v23 = a1;
  v23[1] = a2;
  v23[5] = type metadata accessor for MobileAssetInstrumentationEvent();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v24 + 2);
  sub_19377EE04(v3, boxed_opaque_existential_1Tm);
  *(v24 + 48) = 1;
  swift_willThrow();
}

void sub_19377F8A4()
{
  OUTLINED_FUNCTION_5_69();
  v6 = memcpy(__dst, v5, sizeof(__dst));
  v12 = v2 == v4 && v1 == v3;
  if (v12 || (v6 = OUTLINED_FUNCTION_5_5(), (v6 & 1) != 0))
  {
    if (*(&__dst[0] + 1) != 1)
    {
      *(&v44[0] + 1) = *(&__dst[0] + 1);
      v44[1] = __dst[1];
      v44[2] = __dst[2];
      OUTLINED_FUNCTION_52_2(v6, &type metadata for MAAssetMetadata, &off_1F07EFE60, v7, v8, v9, v10, v11, *&__dst[0]);
      sub_193494798(v13, v14, v15);
      return;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38();
  v24 = v2 == 0xD000000000000015 && v17 == v1;
  if (v24 || (v16 = OUTLINED_FUNCTION_2_75(), (v16 & 1) != 0))
  {
    v25 = LOBYTE(__dst[3]);
LABEL_14:
    if (v25 == 2)
    {
LABEL_15:
      *v0 = 0u;
      v0[1] = 0u;
      return;
    }

    LOBYTE(v44[0]) = v25 & 1;
    v26 = MEMORY[0x1E69E6370];
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_38();
  v16 = 0xD000000000000016;
  v28 = v2 == 0xD000000000000016 && v27 == v1;
  if (v28 || (v16 = OUTLINED_FUNCTION_5_5(), (v16 & 1) != 0))
  {
    v25 = BYTE1(__dst[3]);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_38();
  v16 = 0xD00000000000001FLL;
  v30 = v2 == 0xD00000000000001FLL && v29 == v1;
  if (v30 || (v16 = OUTLINED_FUNCTION_5_5(), (v16 & 1) != 0))
  {
    v25 = BYTE2(__dst[3]);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_38();
  v16 = 0xD000000000000020;
  v32 = v2 == 0xD000000000000020 && v31 == v1;
  if (v32 || (v16 = OUTLINED_FUNCTION_5_5(), (v16 & 1) != 0))
  {
    v25 = BYTE3(__dst[3]);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_38();
  v16 = 0xD00000000000001DLL;
  v34 = v2 == 0xD00000000000001DLL && v33 == v1;
  if (v34 || (v16 = OUTLINED_FUNCTION_5_5(), (v16 & 1) != 0))
  {
    v25 = BYTE4(__dst[3]);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_38();
  v16 = 0xD00000000000001ELL;
  v36 = v2 == 0xD00000000000001ELL && v35 == v1;
  if (v36 || (v16 = OUTLINED_FUNCTION_5_5(), (v16 & 1) != 0))
  {
    v25 = BYTE5(__dst[3]);
    goto LABEL_14;
  }

  v16 = 0x6F747541414D7369;
  v37 = v2 == 0x6F747541414D7369 && v1 == 0xED00007465737341;
  if (v37 || (v16 = OUTLINED_FUNCTION_5_5(), (v16 & 1) != 0))
  {
    v25 = BYTE6(__dst[3]);
    goto LABEL_14;
  }

  v16 = 0x6572637369447369;
  v38 = v2 == 0x6572637369447369 && v1 == 0xEF7972616E6F6974;
  if (v38 || (v16 = OUTLINED_FUNCTION_5_5(), (v16 & 1) != 0))
  {
    v25 = BYTE7(__dst[3]);
    goto LABEL_14;
  }

  v16 = 0x7250726573557349;
  v39 = v2 == 0x7250726573557349 && v1 == 0xEE00797469726F69;
  if (v39 || (v16 = OUTLINED_FUNCTION_5_5(), (v16 & 1) != 0))
  {
    v25 = BYTE8(__dst[3]);
    goto LABEL_14;
  }

  v16 = OUTLINED_FUNCTION_12_50();
  v40 = v12 && v1 == 0xE600000000000000;
  if (v40 || (v16 = OUTLINED_FUNCTION_5_5(), (v16 & 1) != 0))
  {
    if (!*(&__dst[4] + 1))
    {
      goto LABEL_15;
    }

    v44[0] = __dst[4];
    v26 = MEMORY[0x1E69E6158];
LABEL_17:
    OUTLINED_FUNCTION_52_2(v16, v26, v18, v19, v20, v21, v22, v23, *&v44[0]);
    sub_1934948FC();
    return;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v42 = v41;
  *v41 = v2;
  v41[1] = v1;
  v41[5] = &type metadata for MADownloadResultEvent;
  v43 = swift_allocObject();
  v42[2] = v43;
  memcpy((v43 + 16), __dst, 0x50uLL);
  *(v42 + 48) = 1;
  swift_willThrow();

  sub_19378024C(__dst, v44);
}

void sub_19377FBFC()
{
  OUTLINED_FUNCTION_5_69();
  v6 = memcpy(__dst, v5, sizeof(__dst));
  v12 = v2 == v4 && v1 == v3;
  if (v12 || (v6 = OUTLINED_FUNCTION_5_5(), (v6 & 1) != 0))
  {
    if (*&__dst[8] != 1)
    {
      v47 = *&__dst[8];
      v48 = *&__dst[16];
      v49 = *&__dst[32];
      OUTLINED_FUNCTION_52_2(v6, &type metadata for MAAssetMetadata, &off_1F07EFE60, v7, v8, v9, v10, v11, *__dst);
      sub_193494798(v14, v15, v16);
      return;
    }

    goto LABEL_15;
  }

  v17 = 0x614E746E65696C63;
  v18 = v2 == 0x614E746E65696C63 && v1 == 0xEA0000000000656DLL;
  if (v18 || (v17 = OUTLINED_FUNCTION_5_5(), (v17 & 1) != 0))
  {
    v19 = __dst[48];
LABEL_14:
    if (v19 == 2)
    {
LABEL_15:
      *v0 = 0u;
      v0[1] = 0u;
      return;
    }

    LOBYTE(v46) = v19 & 1;
    v20 = MEMORY[0x1E69E6370];
    goto LABEL_17;
  }

  v17 = 0x61636F4C6D6F7266;
  v21 = v2 == 0x61636F4C6D6F7266 && v1 == 0xEC0000006E6F6974;
  if (v21 || (v17 = OUTLINED_FUNCTION_5_5(), (v17 & 1) != 0))
  {
    v19 = __dst[49];
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_38();
  v23 = v2 == 0xD000000000000015 && v22 == v1;
  if (v23 || (v17 = OUTLINED_FUNCTION_2_75(), (v17 & 1) != 0))
  {
    v24 = *&__dst[64];
    if (!*&__dst[64])
    {
      goto LABEL_15;
    }

    v25 = *&__dst[56];
    goto LABEL_31;
  }

  v17 = 0x676E697466617267;
  v26 = v2 == 0x676E697466617267 && v1 == 0xEE00746C75736552;
  if (v26 || (v17 = OUTLINED_FUNCTION_5_5(), (v17 & 1) != 0))
  {
    v19 = __dst[72];
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_38();
  v28 = v2 == 0xD000000000000017 && v27 == v1;
  if (v28 || (v17 = OUTLINED_FUNCTION_5_5(), (v17 & 1) != 0))
  {
    v24 = *&__dst[88];
    if (!*&__dst[88])
    {
      goto LABEL_15;
    }

    v25 = *&__dst[80];
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_38();
  v30 = v2 == 0xD000000000000017 && v29 == v1;
  if (v30 || (v17 = OUTLINED_FUNCTION_5_5(), (v17 & 1) != 0))
  {
    v19 = __dst[96];
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_38();
  v32 = v2 == 0xD000000000000015 && v31 == v1;
  if (v32 || (v17 = OUTLINED_FUNCTION_2_75(), (v17 & 1) != 0))
  {
    v24 = *&__dst[112];
    if (!*&__dst[112])
    {
      goto LABEL_15;
    }

    v25 = *&__dst[104];
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_38();
  v34 = v2 == 0xD000000000000015 && v33 == v1;
  if (v34 || (v17 = OUTLINED_FUNCTION_2_75(), (v17 & 1) != 0))
  {
    v19 = __dst[120];
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_38();
  v36 = v2 == 0xD000000000000015 && v35 == v1;
  if (v36 || (v17 = OUTLINED_FUNCTION_2_75(), (v17 & 1) != 0))
  {
    if (__dst[137])
    {
      goto LABEL_15;
    }

    v46 = *&__dst[128];
    LOBYTE(v47) = __dst[136] & 1;
    v20 = &type metadata for MASecureOperationType;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_38();
  v38 = v2 == 0xD000000000000018 && v37 == v1;
  if (v38 || (v17 = OUTLINED_FUNCTION_5_5(), (v17 & 1) != 0))
  {
    v24 = *&__dst[152];
    if (!*&__dst[152])
    {
      goto LABEL_15;
    }

    v25 = *&__dst[144];
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_38();
  v40 = v2 == 0xD000000000000018 && v39 == v1;
  if (v40 || (v17 = OUTLINED_FUNCTION_5_5(), (v17 & 1) != 0))
  {
    v19 = __dst[160];
    goto LABEL_14;
  }

  v17 = 0x6552657275636573;
  v41 = v2 == 0x6552657275636573 && v1 == 0xEC0000006E6F7361;
  if (v41 || (v17 = OUTLINED_FUNCTION_5_5(), (v17 & 1) != 0))
  {
    v24 = *&__dst[176];
    if (!*&__dst[176])
    {
      goto LABEL_15;
    }

    v25 = *&__dst[168];
    goto LABEL_31;
  }

  v17 = OUTLINED_FUNCTION_12_50();
  v42 = v12 && v1 == 0xE600000000000000;
  if (v42 || (v17 = OUTLINED_FUNCTION_5_5(), (v17 & 1) != 0))
  {
    v24 = *&__dst[192];
    if (!*&__dst[192])
    {
      goto LABEL_15;
    }

    v25 = *&__dst[184];
LABEL_31:
    v46 = v25;
    v47 = v24;
    v20 = MEMORY[0x1E69E6158];
LABEL_17:
    OUTLINED_FUNCTION_52_2(v17, v20, v13, v7, v8, v9, v10, v11, v46);
    sub_1934948FC();
    return;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v44 = v43;
  *v43 = v2;
  v43[1] = v1;
  v43[5] = &type metadata for MASecureDetailEvent;
  v45 = swift_allocObject();
  v44[2] = v45;
  memcpy((v45 + 16), __dst, 0xC8uLL);
  *(v44 + 48) = 1;
  swift_willThrow();

  sub_1937802A8(__dst, &v46);
}

uint64_t sub_19378002C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x6570537465737361;
  v9 = *v3;
  v8 = v3[1];
  v10 = a1 == 0x6570537465737361 && a2 == 0xEE00726569666963;
  if (v10 || (v11 = v3[2], v12 = v3[3], v13 = v3[4], v14 = v3[5], v20 = v13, result = OUTLINED_FUNCTION_67(), (result & 1) != 0))
  {
    if (v8)
    {
      return sub_1934948FC();
    }

    goto LABEL_21;
  }

  result = 0x7079547465737361;
  v15 = a1 == 0x7079547465737361 && a2 == 0xE900000000000065;
  if (v15 || (result = OUTLINED_FUNCTION_67(), (result & 1) != 0))
  {
    if (v12)
    {
      return sub_1934948FC();
    }

LABEL_21:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  result = 0x7265567465737361;
  v16 = a1 == 0x7265567465737361 && a2 == 0xEC0000006E6F6973;
  if (v16 || (result = OUTLINED_FUNCTION_67(), (result & 1) != 0))
  {
    if (v14)
    {
      return sub_1934948FC();
    }

    goto LABEL_21;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v18 = v17;
  *v17 = a1;
  v17[1] = a2;
  v17[5] = &type metadata for MAAssetMetadata;
  v19 = swift_allocObject();
  v18[2] = v19;
  v19[2] = v9;
  v19[3] = v8;
  v19[4] = v11;
  v19[5] = v12;
  v19[6] = v20;
  v19[7] = v14;
  *(v18 + 48) = 1;
  swift_willThrow();
}

double sub_193780214(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  return result;
}

void *MobileAssetInstrumentationEvent.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for MobileAssetInstrumentationEvent();
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = (a1 + v2[7]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = a1 + v2[8];
  j__OUTLINED_FUNCTION_131(v6);
  v7 = (a1 + v2[9]);
  sub_193769F30(v7);
  v8 = v2[10];
  sub_1937836E4(a1 + v8);
  *a1 = *sub_193783268();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v9 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v9);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;

  *v5 = 0;
  v5[1] = 0;
  *v6 = 0;
  *(v6 + 8) = 256;
  memcpy(v11, v7, sizeof(v11));
  sub_193442B60(v11, &qword_1EAE429D8, &qword_1939952F0);
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  *(v7 + 8) = 0;
  *(v7 + 9) = 1;
  sub_193780214(__src);
  OUTLINED_FUNCTION_6_61(v13);
  sub_193442B60(v13, &qword_1EAE429E0, &qword_1939954C0);
  return memcpy(a1 + v8, __src, 0xC8uLL);
}

BOOL static MobileAssetInstrumentationEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileAssetInstrumentationEvent();
  v5 = v4[7];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = v4[8];
  v12 = a1 + v11;
  v13 = *(a1 + v11 + 9);
  v14 = a2 + v11;
  v15 = *(a2 + v11 + 9);
  if (v13)
  {
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v16 = *v14;
    v17 = *(v14 + 8);
    v18 = *(v12 + 8);
    __src[0] = *v12;
    LOWORD(__src[1]) = v18;
    if (v15)
    {
      return 0;
    }

    v56[0] = v16;
    LOBYTE(v56[1]) = v17 & 1;
    sub_193780B98();
    if ((sub_19393C550() & 1) == 0)
    {
      return 0;
    }
  }

  v19 = v4[9];
  memcpy(__dst, (a1 + v19), sizeof(__dst));
  v20 = v4[9];
  memcpy(v63, (a2 + v20), sizeof(v63));
  v21 = __dst[9];
  v22 = v63[9];
  if (__dst[9] != 1)
  {
    OUTLINED_FUNCTION_10_63();
    __src[9] = v21;
    memcpy(v56, __src, 0x50uLL);
    if (v22 != 1)
    {
      memcpy(v61, (a2 + v20), 0x48uLL);
      v61[9] = v22;
      OUTLINED_FUNCTION_13_54(__dst);
      OUTLINED_FUNCTION_13_54(v63);
      OUTLINED_FUNCTION_13_54(__src);
      sub_193780B44();
      v26 = sub_19393C550();
      memcpy(v59, v61, 0x50uLL);
      sub_193780AF0(v59);
      memcpy(v60, v56, 0x50uLL);
      sub_193780AF0(v60);
      memcpy(v61, (a1 + v19), 0x48uLL);
      v61[9] = v21;
      sub_193442B60(v61, &qword_1EAE429D8, &qword_1939952F0);
      if ((v26 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_23;
    }

    memcpy(v61, __src, 0x50uLL);
    OUTLINED_FUNCTION_12_51(__dst);
    OUTLINED_FUNCTION_12_51(v63);
    OUTLINED_FUNCTION_12_51(__src);
    sub_193780AF0(v61);
LABEL_21:
    OUTLINED_FUNCTION_10_63();
    __src[9] = v21;
    memcpy(&__src[10], (a2 + v20), 0x48uLL);
    __src[19] = v22;
    v23 = &unk_1EAE429E8;
    v24 = &unk_193995370;
    v25 = __src;
LABEL_30:
    sub_193442B60(v25, v23, v24);
    return 0;
  }

  if (v63[9] != 1)
  {
    sub_1937809E0(__dst, __src, &qword_1EAE429D8, &qword_1939952F0);
    sub_1937809E0(v63, __src, &qword_1EAE429D8, &qword_1939952F0);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_10_63();
  __src[9] = 1;
  sub_1937809E0(__dst, v56, &qword_1EAE429D8, &qword_1939952F0);
  sub_1937809E0(v63, v56, &qword_1EAE429D8, &qword_1939952F0);
  sub_193442B60(__src, &qword_1EAE429D8, &qword_1939952F0);
LABEL_23:
  v27 = v4[10];
  OUTLINED_FUNCTION_6_61(v59);
  v28 = v4[10];
  OUTLINED_FUNCTION_15_53(v60);
  OUTLINED_FUNCTION_6_61(__src);
  OUTLINED_FUNCTION_15_53(&__src[25]);
  OUTLINED_FUNCTION_6_61(v61);
  if (sub_1934B59A8(v61) == 1)
  {
    OUTLINED_FUNCTION_15_53(v56);
    if (sub_1934B59A8(v56) == 1)
    {
      OUTLINED_FUNCTION_6_61(v57);
      OUTLINED_FUNCTION_7_49(v59, v55);
      OUTLINED_FUNCTION_7_49(v60, v55);
      sub_193442B60(v57, &qword_1EAE429E0, &qword_1939954C0);
      return 1;
    }

    OUTLINED_FUNCTION_7_49(v59, v57);
    OUTLINED_FUNCTION_7_49(v60, v57);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_6_61(v57);
  OUTLINED_FUNCTION_6_61(v55);
  OUTLINED_FUNCTION_15_53(v56);
  if (sub_1934B59A8(v56) == 1)
  {
    memcpy(v54, v55, sizeof(v54));
    OUTLINED_FUNCTION_7_49(v59, v53);
    OUTLINED_FUNCTION_7_49(v60, v53);
    OUTLINED_FUNCTION_7_49(v57, v53);
    sub_193780A48(v54);
LABEL_29:
    memcpy(v56, __src, sizeof(v56));
    v23 = &unk_1EAE429F0;
    v24 = &unk_193995378;
    v25 = v56;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_15_53(v54);
  OUTLINED_FUNCTION_11_50(v59, v30, v31, v32, v33, v34, v35, v36, v52[0], v52[1], v52[2], v52[3], v52[4], v52[5], v52[6], v52[7], v52[8], v52[9], v52[10], v52[11], v52[12], v52[13], v52[14], v52[15], v52[16], v52[17], v52[18], v52[19], v52[20], v52[21], v52[22], v52[23], v52[24], v53[0]);
  OUTLINED_FUNCTION_11_50(v60, v37, v38, v39, v40, v41, v42, v43, v52[0], v52[1], v52[2], v52[3], v52[4], v52[5], v52[6], v52[7], v52[8], v52[9], v52[10], v52[11], v52[12], v52[13], v52[14], v52[15], v52[16], v52[17], v52[18], v52[19], v52[20], v52[21], v52[22], v52[23], v52[24], v53[0]);
  OUTLINED_FUNCTION_11_50(v57, v44, v45, v46, v47, v48, v49, v50, v52[0], v52[1], v52[2], v52[3], v52[4], v52[5], v52[6], v52[7], v52[8], v52[9], v52[10], v52[11], v52[12], v52[13], v52[14], v52[15], v52[16], v52[17], v52[18], v52[19], v52[20], v52[21], v52[22], v52[23], v52[24], v53[0]);
  sub_193780A9C();
  v51 = sub_19393C550();
  memcpy(v52, v54, sizeof(v52));
  sub_193780A48(v52);
  memcpy(v53, v55, sizeof(v53));
  sub_193780A48(v53);
  OUTLINED_FUNCTION_6_61(v54);
  sub_193442B60(v54, &qword_1EAE429E0, &qword_1939954C0);
  return (v51 & 1) != 0;
}

uint64_t sub_1937809E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_193780A9C()
{
  result = qword_1EAE429F8;
  if (!qword_1EAE429F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE429F8);
  }

  return result;
}

unint64_t sub_193780B44()
{
  result = qword_1EAE42A00;
  if (!qword_1EAE42A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42A00);
  }

  return result;
}

unint64_t sub_193780B98()
{
  result = qword_1EAE42A08;
  if (!qword_1EAE42A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42A08);
  }

  return result;
}

uint64_t MobileAssetInstrumentationEvent.hash(into:)()
{
  v1 = type metadata accessor for MobileAssetInstrumentationEvent();
  v2 = (v0 + v1[7]);
  if (v2[1])
  {
    v3 = *v2;
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v4 = v0 + v1[8];
  if (*(v4 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v5 = *(v4 + 8);
    v14[0] = *v4;
    LOBYTE(v14[1]) = v5 & 1;
    OUTLINED_FUNCTION_103_0();
    sub_193780DD4();
    sub_19393C540();
  }

  v6 = v1[9];
  v7 = (v0 + v6);
  v8 = *(v0 + v6 + 72);
  if (v8 == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    memcpy(__dst, (v0 + v6), 0x48uLL);
    __dst[9] = v8;
    OUTLINED_FUNCTION_103_0();
    memcpy(v13, v7, 0x48uLL);
    v13[9] = v8;
    sub_19378024C(v13, v14);
    sub_193780E28();
    sub_19393C540();
    memcpy(v14, __dst, 0x50uLL);
    sub_193780AF0(v14);
  }

  v9 = v1[10];
  memcpy(v14, (v0 + v9), sizeof(v14));
  if (sub_1934B59A8(v14) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  memcpy(v11, (v0 + v9), sizeof(v11));
  OUTLINED_FUNCTION_103_0();
  memcpy(__dst, (v0 + v9), sizeof(__dst));
  sub_1937802A8(__dst, v13);
  sub_193780E7C();
  sub_19393C540();
  memcpy(v13, v11, sizeof(v13));
  return sub_193780A48(v13);
}

unint64_t sub_193780DD4()
{
  result = qword_1EAE42A10;
  if (!qword_1EAE42A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42A10);
  }

  return result;
}

unint64_t sub_193780E28()
{
  result = qword_1EAE42A18;
  if (!qword_1EAE42A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42A18);
  }

  return result;
}

unint64_t sub_193780E7C()
{
  result = qword_1EAE42A20;
  if (!qword_1EAE42A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42A20);
  }

  return result;
}

void MAEventType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t MAEventType.rawValue.getter()
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

char *static MAEventType.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE42A40, &qword_193995440);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v10 = OUTLINED_FUNCTION_39(v1);
    v14 = OUTLINED_FUNCTION_84_2(v10, v11, v12, v13, &qword_1EAE42A40, &qword_193995440);
    OUTLINED_FUNCTION_17_2(v14);
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v15 = OUTLINED_FUNCTION_39(v1);
    v19 = OUTLINED_FUNCTION_85(v15, v16, v17, v18, &qword_1EAE42A40, &qword_193995440);
    OUTLINED_FUNCTION_17_2(v19);
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  if (v3 < (v2 + 3))
  {
    v20 = OUTLINED_FUNCTION_39(v1);
    v0 = OUTLINED_FUNCTION_84_2(v20, v21, v22, v23, &qword_1EAE42A40, &qword_193995440);
  }

  *(v0 + 2) = v2 + 3;
  v8 = &v0[16 * v6];
  *(v8 + 4) = 1;
  v8[40] = 1;
  return v0;
}

uint64_t MAEventType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    result = 0x6544657275636553;
  }

  else
  {
    result = 0x64616F6C6E776F44;
  }

  *v0;
  return result;
}

uint64_t MAEventType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = v2 == 0x64616F6C6E776F44 && v1 == 0xEE00746C75736552;
    if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v6 = 0;
    }

    else
    {
      if (v2 != 0x6544657275636553 || v1 != 0xEC0000006C696174)
      {
        v7 = OUTLINED_FUNCTION_0_9();

        v6 = v7 & 1;
        goto LABEL_14;
      }

      v6 = 1;
    }

    v7 = 1;
  }

LABEL_14:
  *v0 = v6;
  *(v0 + 8) = v7 & 1;
  *(v0 + 9) = 0;
  return result;
}

void MASecureOperationType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = a2 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    default:
      break;
  }

  *a1 = v3;
  OUTLINED_FUNCTION_21(a1);
}

char *static MASecureOperationType.allCases.getter()
{
  v0 = sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE42A38, &qword_193995438);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v25 = OUTLINED_FUNCTION_39(v1);
    v29 = OUTLINED_FUNCTION_84_2(v25, v26, v27, v28, &qword_1EAE42A38, &qword_193995438);
    OUTLINED_FUNCTION_17_2(v29);
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v30 = OUTLINED_FUNCTION_39(v1);
    v34 = OUTLINED_FUNCTION_85(v30, v31, v32, v33, &qword_1EAE42A38, &qword_193995438);
    OUTLINED_FUNCTION_17_2(v34);
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v35 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_1934B0FCC(v35, v2 + 3, 1, v36, &qword_1EAE42A38, &qword_193995438);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  v11 = v2 + 4;
  if ((v2 + 4) > (v10 >> 1))
  {
    v37 = OUTLINED_FUNCTION_39(v10);
    v0 = OUTLINED_FUNCTION_84_2(v37, v38, v39, v40, &qword_1EAE42A38, &qword_193995438);
  }

  *(v0 + 2) = v11;
  v12 = &v0[16 * v8];
  *(v12 + 4) = 2;
  v12[40] = 1;
  v13 = *(v0 + 3);
  v14 = v2 + 5;
  if ((v2 + 5) > (v13 >> 1))
  {
    v41 = OUTLINED_FUNCTION_39(v13);
    v0 = OUTLINED_FUNCTION_85(v41, v42, v43, v44, &qword_1EAE42A38, &qword_193995438);
  }

  *(v0 + 2) = v14;
  OUTLINED_FUNCTION_4(v0, &v0[16 * v11]);
  v17 = v2 + 6;
  if ((v2 + 6) > (v16 >> 1))
  {
    v45 = OUTLINED_FUNCTION_39(v16);
    v15 = OUTLINED_FUNCTION_84_2(v45, v46, v47, v48, &qword_1EAE42A38, &qword_193995438);
  }

  *(v15 + 2) = v17;
  OUTLINED_FUNCTION_4(v15, &v15[16 * v14]);
  v20 = v2 + 7;
  if ((v2 + 7) > (v19 >> 1))
  {
    v49 = OUTLINED_FUNCTION_39(v19);
    v18 = OUTLINED_FUNCTION_85(v49, v50, v51, v52, &qword_1EAE42A38, &qword_193995438);
  }

  *(v18 + 2) = v20;
  OUTLINED_FUNCTION_4(v18, &v18[16 * v17]);
  if ((v2 + 8) > (v22 >> 1))
  {
    v53 = OUTLINED_FUNCTION_39(v22);
    v21 = OUTLINED_FUNCTION_84_2(v53, v54, v55, v56, &qword_1EAE42A38, &qword_193995438);
  }

  *(v21 + 2) = v2 + 8;
  v23 = &v21[16 * v20];
  *(v23 + 4) = 6;
  v23[40] = 1;
  return v21;
}

unint64_t MASecureOperationType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 1886351182;
  switch(*v0)
  {
    case 1:
      v2 = 1717662279;
      return v2 | 0x676E697400000000;
    case 2:
      v2 = 1853189965;
      return v2 | 0x676E697400000000;
    case 3:
      v3 = 0x666172676E55;
      goto LABEL_9;
    case 4:
      v3 = 0x6E756F6D6E55;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
      break;
    case 5:
      result = OUTLINED_FUNCTION_8_56();
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MASecureOperationType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  v8 = v2 == 1886351182 && v1 == 0xE400000000000000;
  if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 0;
LABEL_13:
    v7 = 1;
    goto LABEL_14;
  }

  v9 = v2 == 0x676E697466617247 && v1 == 0xE800000000000000;
  if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v6 = 1;
    goto LABEL_13;
  }

  v10 = v2 == 0x676E69746E756F4DLL && v1 == 0xE800000000000000;
  if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
  {

    v7 = 1;
    v6 = 2;
  }

  else
  {
    v11 = v2 == 0x6974666172676E55 && v1 == 0xEA0000000000676ELL;
    if (v11 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v7 = 1;
      v6 = 3;
    }

    else
    {
      v12 = v2 == 0x69746E756F6D6E55 && v1 == 0xEA0000000000676ELL;
      if (v12 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v7 = 1;
        v6 = 4;
      }

      else
      {
        v14 = v2 == OUTLINED_FUNCTION_8_56() && v1 == v13;
        if (v14 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          v7 = 1;
          v6 = 5;
        }

        else if (v2 == 0xD000000000000011 && 0x8000000193A360B0 == v1)
        {

          v7 = 1;
          v6 = 6;
        }

        else
        {
          v7 = OUTLINED_FUNCTION_0_9();

          v6 = 6;
          if ((v7 & 1) == 0)
          {
            v6 = 0;
          }
        }
      }
    }
  }

LABEL_14:
  *v0 = v6;
  *(v0 + 8) = v7 & 1;
  *(v0 + 9) = 0;
  return result;
}

unint64_t sub_193781770()
{
  result = qword_1EAE42A28;
  if (!qword_1EAE42A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42A28);
  }

  return result;
}

unint64_t sub_1937817C8()
{
  result = qword_1EAE42A30;
  if (!qword_1EAE42A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42A30);
  }

  return result;
}

void sub_19378181C()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, &qword_1EAEAD8F8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_156();
  *(v4 + 16) = xmmword_19394FBC0;
  v5 = v4 + v0 + dword_1EAEAD930;
  *(v4 + v0) = 1;
  *v5 = "subSystemName";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v7);
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v4 + v0 + v3);
  *v11 = 2;
  *v10 = "eventType";
  v10[1] = 9;
  v12 = OUTLINED_FUNCTION_1_3(v10);
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_9_4((v4 + v0 + 2 * v3));
  *v13 = "maDownloadResult";
  *(v13 + 1) = 16;
  v14 = OUTLINED_FUNCTION_1_3(v13);
  (v9)(v14);
  OUTLINED_FUNCTION_3_1(v4 + v0 + 3 * v3);
  OUTLINED_FUNCTION_34_8(v15);
  OUTLINED_FUNCTION_36_5(v16, "maSecureDetail");
  OUTLINED_FUNCTION_2_0();
  v9();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1937819DC()
{
  v2 = v1;
  while (1)
  {
    v3 = sub_19393C0E0();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
        v5 = *(type metadata accessor for MobileAssetInstrumentationEvent() + 28);
        sub_19393C200();
        goto LABEL_10;
      case 2:
        v8 = *(type metadata accessor for MobileAssetInstrumentationEvent() + 32);
        sub_1934982A8();
        goto LABEL_10;
      case 3:
        v6 = v0 + *(type metadata accessor for MobileAssetInstrumentationEvent() + 36);
        goto LABEL_8;
      case 4:
        v7 = v0 + *(type metadata accessor for MobileAssetInstrumentationEvent() + 40);
LABEL_8:
        sub_193498018();
LABEL_10:
        v2 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_193781B44()
{
  OUTLINED_FUNCTION_22_0();
  v2 = type metadata accessor for MobileAssetInstrumentationEvent();
  v3 = (v0 + v2[7]);
  if (v3[1])
  {
    v4 = *v3;
    sub_19393C3C0();
  }

  if (!v1)
  {
    v5 = v0 + v2[8];
    if ((*(v5 + 9) & 1) == 0)
    {
      v6 = *(v5 + 8);
      __dst[0] = *v5;
      LOBYTE(__dst[1]) = v6 & 1;
      OUTLINED_FUNCTION_78_1();
      sub_193447324(v7, v8, v9, v10, v11, v12);
    }

    v13 = (v0 + v2[9]);
    v14 = v13[9];
    if (v14 != 1)
    {
      memcpy(__dst, v13, 0x48uLL);
      __dst[9] = v14;
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }

    memcpy(__dst, (v0 + v2[10]), sizeof(__dst));
    if (sub_1934B59A8(__dst) != 1)
    {
      memcpy(v15, __dst, sizeof(v15));
      OUTLINED_FUNCTION_78_1();
      sub_193447600();
    }
  }
}

void sub_193781D24()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD910);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_18_43(v6, xmmword_1939526F0);
  *v0 = "assetMetaData";
  *(v0 + 8) = 13;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v12 = 2;
  v13 = OUTLINED_FUNCTION_5_4(v11, "cellularAccessRequest");
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_9_4((v1 + 2 * v5));
  v15 = OUTLINED_FUNCTION_5_4(v14, "cellularAccessResponse");
  (v10)(v15);
  OUTLINED_FUNCTION_44(3 * v5);
  OUTLINED_FUNCTION_34_8(v16);
  v18 = OUTLINED_FUNCTION_5_4(v17, "constrainedNetworkAccessRequest");
  (v10)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  *v20 = 5;
  v21 = OUTLINED_FUNCTION_5_4(v19, "constrainedNetworkAccessResponse");
  (v10)(v21);
  v22 = OUTLINED_FUNCTION_44(5 * v5);
  *v23 = 6;
  v24 = OUTLINED_FUNCTION_5_4(v22, "expensiveNetworkAccessRequest");
  (v10)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v1 + 6 * v5);
  *v26 = 7;
  v27 = OUTLINED_FUNCTION_5_4(v25, "expensiveNetworkAccessResponse");
  (v10)(v27);
  v28 = OUTLINED_FUNCTION_44(7 * v5);
  *v29 = 8;
  *v28 = "isMAAutoAsset";
  v28[1] = 13;
  v30 = OUTLINED_FUNCTION_41(v28);
  (v10)(v30);
  v31 = OUTLINED_FUNCTION_3_1(v1 + 8 * v5);
  *v32 = 9;
  v33 = OUTLINED_FUNCTION_5_4(v31, "isDiscretionary");
  (v10)(v33);
  v34 = OUTLINED_FUNCTION_44(9 * v5);
  *v35 = 10;
  v36 = OUTLINED_FUNCTION_5_4(v34, "IsUserPriority");
  (v10)(v36);
  v37 = OUTLINED_FUNCTION_3_1(v1 + 10 * v5);
  *v38 = 11;
  *v37 = "result";
  *(v37 + 8) = 6;
  *(v37 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193782000()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_119_1();
        break;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      case 11:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      default:
        continue;
    }
  }
}

void sub_1937820F4()
{
  OUTLINED_FUNCTION_67_2();
  v2 = *(v1 + 48);
  v3 = *(v1 + 49);
  v4 = *(v1 + 50);
  v5 = *(v1 + 51);
  v6 = *(v1 + 52);
  v7 = *(v1 + 53);
  v9 = *(v1 + 54);
  v10 = *(v1 + 55);
  v11 = *(v1 + 56);
  v8 = v1[8];
  v15 = v1[9];
  if (v1[1] != 1)
  {
    v13 = *(v1 + 1);
    v14 = *(v1 + 2);
    v12 = *v1;
    sub_193447600();
  }

  if (!v0)
  {
    if (v2 != 2)
    {
      OUTLINED_FUNCTION_21_10();
    }

    if (v3 != 2)
    {
      OUTLINED_FUNCTION_21_10();
    }

    if (v4 != 2)
    {
      OUTLINED_FUNCTION_21_10();
    }

    if (v5 != 2)
    {
      OUTLINED_FUNCTION_21_10();
    }

    if (v6 != 2)
    {
      OUTLINED_FUNCTION_21_10();
    }

    if (v7 != 2)
    {
      OUTLINED_FUNCTION_21_10();
    }

    if (v9 != 2)
    {
      OUTLINED_FUNCTION_21_10();
    }

    if (v10 != 2)
    {
      OUTLINED_FUNCTION_21_10();
    }

    if (v11 != 2)
    {
      OUTLINED_FUNCTION_21_10();
    }

    if (v15)
    {
      OUTLINED_FUNCTION_181();
    }
  }
}

void sub_193782318()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAD928);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_49_0();
  v6 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_18_43(v6, xmmword_193952690);
  *v0 = "assetMetaData";
  *(v0 + 8) = 13;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v12 = 2;
  v13 = OUTLINED_FUNCTION_5_4(v11, "clientName");
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_9_4((v1 + 2 * v5));
  v15 = OUTLINED_FUNCTION_5_4(v14, "fromLocation");
  (v10)(v15);
  OUTLINED_FUNCTION_44(3 * v5);
  OUTLINED_FUNCTION_34_8(v16);
  v18 = OUTLINED_FUNCTION_5_4(v17, "graftingFailureReason");
  (v10)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v1 + 4 * v5);
  *v20 = 5;
  *v19 = "graftingResult";
  v19[1] = 14;
  v21 = OUTLINED_FUNCTION_41(v19);
  (v10)(v21);
  v22 = OUTLINED_FUNCTION_44(5 * v5);
  *v23 = 6;
  *v22 = "mapExclaveFailureReason";
  v22[1] = 23;
  v24 = OUTLINED_FUNCTION_41(v22);
  (v10)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v1 + 6 * v5);
  *v26 = 7;
  *v25 = "mapExclaveFailureResult";
  v25[1] = 23;
  v27 = OUTLINED_FUNCTION_41(v25);
  (v10)(v27);
  v28 = OUTLINED_FUNCTION_44(7 * v5);
  *v29 = 8;
  *v28 = "mountingFailureReason";
  v28[1] = 21;
  v30 = OUTLINED_FUNCTION_41(v28);
  (v10)(v30);
  v31 = OUTLINED_FUNCTION_3_1(v1 + 8 * v5);
  *v32 = 9;
  *v31 = "mountingFailureResult";
  v31[1] = 21;
  v33 = OUTLINED_FUNCTION_41(v31);
  (v10)(v33);
  v34 = OUTLINED_FUNCTION_44(9 * v5);
  *v35 = 10;
  *v34 = "maSecureOperationType";
  v34[1] = 21;
  v36 = OUTLINED_FUNCTION_41(v34);
  (v10)(v36);
  v37 = OUTLINED_FUNCTION_3_1(v1 + 10 * v5);
  *v38 = 11;
  *v37 = "personalizeFailureReason";
  v37[1] = 24;
  v39 = OUTLINED_FUNCTION_41(v37);
  (v10)(v39);
  v40 = OUTLINED_FUNCTION_3_1(v1 + 11 * v5);
  *v41 = 12;
  *v40 = "personalizeFailureResult";
  v40[1] = 24;
  v42 = OUTLINED_FUNCTION_41(v40);
  (v10)(v42);
  v43 = OUTLINED_FUNCTION_3_1(v1 + 12 * v5);
  *v44 = 13;
  *v43 = "secureReason";
  v43[1] = v45;
  v46 = OUTLINED_FUNCTION_41(v43);
  (v10)(v46);
  v47 = OUTLINED_FUNCTION_3_1(v1 + 13 * v5);
  *v48 = 14;
  *v47 = "result";
  *(v47 + 8) = 6;
  *(v47 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v10();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193782698()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    v1 = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_119_1();
        break;
      case 2:
      case 3:
      case 5:
      case 7:
      case 9:
      case 12:
        OUTLINED_FUNCTION_98();
        sub_19393C0F0();
        break;
      case 4:
      case 6:
      case 8:
      case 11:
      case 13:
      case 14:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 10:
        sub_1934982A8();
        break;
      default:
        continue;
    }
  }
}

void sub_1937827D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v7 = v3[1];
  v8 = *(v3 + 48);
  v9 = *(v3 + 49);
  v10 = v3[8];
  v11 = *(v3 + 72);
  v12 = v3[11];
  v38 = v3[10];
  v39 = v3[7];
  v13 = *(v3 + 96);
  v14 = v3[14];
  v37 = v3[13];
  v45 = *(v3 + 120);
  v36 = *(v3 + 137);
  v32 = v3[18];
  v34 = v3[19];
  v35 = *(v3 + 160);
  v30 = v3[21];
  v33 = v3[22];
  v29 = v3[23];
  v31 = v3[24];
  v44 = v11;
  if (v7 != 1)
  {
    v15 = *v3;
    v16 = *(v3 + 2);
    v42 = *(v3 + 1);
    v43 = v16;
    v40 = v15;
    v41 = v7;
    v28 = v9;
    v17 = v10;
    v18 = v12;
    v19 = a2;
    v21 = v13;
    v22 = v8;
    sub_193447600();
    v8 = v22;
    v10 = v17;
    v9 = v28;
    v13 = v21;
    v5 = a3;
    a2 = v19;
    v12 = v18;
  }

  if (!v4)
  {
    if (v8 != 2)
    {
      v23 = v10;
      v24 = v12;
      v25 = v13;
      OUTLINED_FUNCTION_33_28();
      v13 = v25;
      v12 = v24;
      v10 = v23;
    }

    v27 = v13;
    if (v9 != 2)
    {
      v26 = v10;
      OUTLINED_FUNCTION_33_28();
      v13 = v27;
      v10 = v26;
    }

    if (v10)
    {
      OUTLINED_FUNCTION_31_38();
      v13 = v27;
    }

    if (v44 != 2)
    {
      OUTLINED_FUNCTION_33_28();
      v13 = v27;
    }

    if (v12)
    {
      OUTLINED_FUNCTION_31_38();
      v13 = v27;
    }

    if (v13 != 2)
    {
      OUTLINED_FUNCTION_33_28();
    }

    if (v14)
    {
      OUTLINED_FUNCTION_31_38();
    }

    if (v45 != 2)
    {
      OUTLINED_FUNCTION_33_28();
    }

    if ((v36 & 1) == 0)
    {
      v40 = v3[16];
      LOBYTE(v41) = *(v3 + 136);
      sub_193447324(&v40, 10, a2, &type metadata for MASecureOperationType, v5, &off_1F07EFF58);
    }

    if (v34)
    {
      OUTLINED_FUNCTION_31_38();
    }

    if (v35 != 2)
    {
      OUTLINED_FUNCTION_33_28();
    }

    if (v33)
    {
      OUTLINED_FUNCTION_31_38();
    }

    if (v31)
    {
      OUTLINED_FUNCTION_31_38();
    }
  }
}

void sub_193782B1C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD940);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBB0);
  *v1 = 1;
  *v0 = "assetSpecifier";
  *(v0 + 8) = 14;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_10_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v12 = 2;
  *v11 = "assetType";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v10();
  v13 = OUTLINED_FUNCTION_9_4((v1 + 2 * v5));
  OUTLINED_FUNCTION_36_5(v13, "assetVersion");
  OUTLINED_FUNCTION_10_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193782C9C()
{
  OUTLINED_FUNCTION_22_0();
  while (1)
  {
    result = sub_19393C0E0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }
  }

  return result;
}

void sub_193782D14()
{
  OUTLINED_FUNCTION_67_2();
  v2 = v1[2];
  v4 = v1[3];
  v3 = v1[4];
  v5 = v1[5];
  if (v1[1])
  {
    v6 = *v1;
    OUTLINED_FUNCTION_181();
  }

  if (!v0)
  {
    if (v4)
    {
      OUTLINED_FUNCTION_181();
    }

    if (v5)
    {
      OUTLINED_FUNCTION_181();
    }
  }
}

void sub_193782E00()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAD958);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_34_5(v6, xmmword_19394FBB0);
  *v1 = 0;
  *v0 = "MAEventTypeUnknown";
  *(v0 + 8) = 18;
  *(v0 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_10_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v1 + v5);
  *v12 = 1;
  *v11 = "MAEventTypeDownloadResult";
  *(v11 + 8) = 25;
  *(v11 + 16) = 2;
  OUTLINED_FUNCTION_10_0();
  v10();
  v13 = OUTLINED_FUNCTION_3_1(v1 + 2 * v5);
  *v14 = 2;
  OUTLINED_FUNCTION_36_5(v13, "MAEventTypeSecureDetail");
  OUTLINED_FUNCTION_10_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193782FB0()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAD970);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_49_0();
  v4 = OUTLINED_FUNCTION_156();
  *(v4 + 16) = xmmword_1939526B0;
  v5 = v4 + v0;
  v6 = v4 + v0 + dword_1EAEAD9A8;
  *(v4 + v0) = 0;
  *v6 = "MASecureOperationTypeUnknown";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_19393C400();
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 104);
  OUTLINED_FUNCTION_2_0();
  v10();
  v11 = OUTLINED_FUNCTION_3_1(v5 + v3);
  *v12 = 1;
  *v11 = "MASecureOperationTypeNoop";
  v11[1] = 25;
  v13 = OUTLINED_FUNCTION_1_3(v11);
  (v10)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v5 + 2 * v3);
  *v15 = 2;
  *v14 = "MASecureOperationTypeGrafting";
  v14[1] = 29;
  v16 = OUTLINED_FUNCTION_1_3(v14);
  (v10)(v16);
  v17 = OUTLINED_FUNCTION_9_4((v5 + 3 * v3));
  *v17 = "MASecureOperationTypeMounting";
  *(v17 + 1) = 29;
  v18 = OUTLINED_FUNCTION_1_3(v17);
  (v10)(v18);
  OUTLINED_FUNCTION_3_1(v5 + 4 * v3);
  OUTLINED_FUNCTION_34_8(v19);
  *v20 = "MASecureOperationTypeUngrafting";
  v20[1] = 31;
  v21 = OUTLINED_FUNCTION_1_3(v20);
  (v10)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v5 + 5 * v3);
  *v23 = 5;
  *v22 = "MASecureOperationTypeUnmounting";
  v22[1] = 31;
  v24 = OUTLINED_FUNCTION_1_3(v22);
  (v10)(v24);
  v25 = (v5 + 6 * v3);
  v26 = (v25 + dword_1EAEAD9A8);
  *v25 = 6;
  *v26 = "MASecureOperationTypePersonalization";
  v26[1] = 36;
  v27 = OUTLINED_FUNCTION_1_3(v26);
  (v10)(v27);
  v28 = OUTLINED_FUNCTION_3_1(v5 + 7 * v3);
  *v29 = 7;
  OUTLINED_FUNCTION_36_5(v28, "MASecureOperationTypeDepersonalization");
  OUTLINED_FUNCTION_2_0();
  v10();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t MobileAssetInstrumentationEvent.writeTimestamp.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for MobileAssetInstrumentationEvent();
  return sub_193448804(v1 + *(v2 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for MobileAssetInstrumentationEvent()
{
  result = qword_1EAE45B50;
  if (!qword_1EAE45B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobileAssetInstrumentationEvent.bookmark.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for MobileAssetInstrumentationEvent();
  return sub_193448804(v1 + *(v2 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t MobileAssetInstrumentationEvent.subSystemName.getter()
{
  v1 = (v0 + *(type metadata accessor for MobileAssetInstrumentationEvent() + 28));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t MobileAssetInstrumentationEvent.subSystemName.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = (v1 + *(type metadata accessor for MobileAssetInstrumentationEvent() + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MobileAssetInstrumentationEvent.eventType.getter()
{
  OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for MobileAssetInstrumentationEvent();
  v3 = (v1 + *(result + 32));
  v4 = *v3;
  v5 = *(v3 + 8);
  LOBYTE(v3) = *(v3 + 9);
  *v0 = v4;
  *(v0 + 8) = v5;
  *(v0 + 9) = v3;
  return result;
}

uint64_t MobileAssetInstrumentationEvent.eventType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = type metadata accessor for MobileAssetInstrumentationEvent();
  v6 = v1 + *(result + 32);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = v4;
  return result;
}

uint64_t MobileAssetInstrumentationEvent.maDownloadResult.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = *(type metadata accessor for MobileAssetInstrumentationEvent() + 36);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  memcpy(v0, (v1 + v2), 0x50uLL);
  return sub_193448804(__dst, &v4, &qword_1EAE429D8, &qword_1939952F0);
}

void *MobileAssetInstrumentationEvent.maDownloadResult.setter()
{
  v2 = *(OUTLINED_FUNCTION_16_39() + 36);
  memcpy(v4, (v1 + v2), sizeof(v4));
  sub_19344E6DC(v4, &qword_1EAE429D8, &qword_1939952F0);
  return memcpy((v1 + v2), v0, 0x50uLL);
}

uint64_t MobileAssetInstrumentationEvent.maSecureDetail.getter()
{
  OUTLINED_FUNCTION_8_4();
  v2 = *(type metadata accessor for MobileAssetInstrumentationEvent() + 40);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  memcpy(v0, (v1 + v2), 0xC8uLL);
  return sub_193448804(__dst, &v4, &qword_1EAE429E0, &qword_1939954C0);
}

void *MobileAssetInstrumentationEvent.maSecureDetail.setter()
{
  v2 = *(OUTLINED_FUNCTION_16_39() + 40);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE429E0, &qword_1939954C0);
  return memcpy((v1 + v2), v0, 0xC8uLL);
}

uint64_t MobileAssetInstrumentationEvent.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  MobileAssetInstrumentationEvent.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193783880()
{
  sub_19393CAB0();
  MobileAssetInstrumentationEvent.hash(into:)();
  return sub_19393CB00();
}

__n128 MADownloadResultEvent.assetMetaData.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_22_37(a1);
  result = *v1;
  v6 = *(v1 + 16);
  *v2 = *v1;
  *(v2 + 16) = v6;
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  return result;
}

uint64_t MADownloadResultEvent.result.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t MADownloadResultEvent.result.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

double MADownloadResultEvent.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_21_44(v1);
  result = 0.0;
  *v0 = xmmword_1939526A0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0x202020202020202;
  *(v0 + 56) = 2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  return result;
}

uint64_t static MADownloadResultEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 49);
  v65 = *(a1 + 51);
  v66 = *(a1 + 50);
  v63 = *(a1 + 53);
  v64 = *(a1 + 52);
  v61 = *(a1 + 55);
  v62 = *(a1 + 54);
  v60 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v13 = *a2;
  v12 = *(a2 + 8);
  v15 = *(a2 + 16);
  v14 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = *(a2 + 40);
  v18 = *(a2 + 48);
  v19 = *(a2 + 49);
  v20 = *(a2 + 50);
  v21 = *(a2 + 51);
  v22 = *(a2 + 52);
  v23 = *(a2 + 53);
  v24 = *(a2 + 54);
  v25 = *(a2 + 55);
  v26 = *(a2 + 56);
  v28 = *(a2 + 64);
  v27 = *(a2 + 72);
  if (v3 == 1)
  {
    v29 = *a2;
    v67 = *(a2 + 48);
    v68 = *(a2 + 49);
    v69 = v8;
    v70 = v9;
    v58 = *(a2 + 51);
    v59 = *(a2 + 50);
    v56 = *(a2 + 53);
    v57 = *(a2 + 52);
    v54 = *(a2 + 55);
    v55 = *(a2 + 54);
    v53 = *(a2 + 56);
    v49 = *(a2 + 64);
    v50 = v10;
    v51 = *(a2 + 72);
    v52 = v11;
    sub_193641A34(v2, 1);
    if (v12 == 1)
    {
      v30 = OUTLINED_FUNCTION_24_44();
      sub_193641A34(v30, v31);
      sub_193640C90(v2, 1);
      goto LABEL_11;
    }

    sub_193641A34(v13, v12);
LABEL_7:
    v36 = OUTLINED_FUNCTION_13_55();
    sub_193640C90(v36, v37);
    sub_193640C90(v29, v12);
    return 0;
  }

  v72[0] = v2;
  v72[1] = v3;
  v72[2] = v4;
  v72[3] = v5;
  v72[4] = v6;
  v72[5] = v7;
  if (v12 == 1)
  {
    v29 = v13;
    sub_193641A34(v2, v3);
    v32 = OUTLINED_FUNCTION_24_44();
    sub_193641A34(v32, v33);
    v34 = OUTLINED_FUNCTION_13_55();
    sub_193641A34(v34, v35);

    goto LABEL_7;
  }

  v67 = v18;
  v68 = v19;
  v69 = v8;
  v70 = v9;
  v58 = v21;
  v59 = v20;
  v56 = v23;
  v57 = v22;
  v54 = v25;
  v55 = v24;
  v53 = v26;
  v49 = v28;
  v50 = v10;
  v51 = v27;
  v52 = v11;
  v71[0] = v13;
  v71[1] = v12;
  v71[2] = v15;
  v71[3] = v14;
  v71[4] = v16;
  v71[5] = v17;
  v48 = static MAAssetMetadata.== infix(_:_:)(v72, v71);
  v39 = OUTLINED_FUNCTION_2_76();
  sub_193641A34(v39, v40);
  sub_193641A34(v13, v12);
  v41 = OUTLINED_FUNCTION_2_76();
  sub_193641A34(v41, v42);

  v43 = OUTLINED_FUNCTION_2_76();
  sub_193640C90(v43, v44);
  if ((v48 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  if (v69 == 2)
  {
    v45 = v68;
    v46 = v70;
    if (v67 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    v45 = v68;
    v46 = v70;
    if (v67 == 2 || ((v67 ^ v69) & 1) != 0)
    {
      return result;
    }
  }

  if (v46 == 2)
  {
    if (v45 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v45 == 2 || ((v45 ^ v46) & 1) != 0)
    {
      return result;
    }
  }

  if (v66 == 2)
  {
    if (v59 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v59 == 2 || ((v59 ^ v66) & 1) != 0)
    {
      return result;
    }
  }

  if (v65 == 2)
  {
    if (v58 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v58 == 2 || ((v58 ^ v65) & 1) != 0)
    {
      return result;
    }
  }

  if (v64 == 2)
  {
    if (v57 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v57 == 2 || ((v57 ^ v64) & 1) != 0)
    {
      return result;
    }
  }

  if (v63 == 2)
  {
    if (v56 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v56 == 2 || ((v56 ^ v63) & 1) != 0)
    {
      return result;
    }
  }

  if (v62 == 2)
  {
    if (v55 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v55 == 2 || ((v55 ^ v62) & 1) != 0)
    {
      return result;
    }
  }

  if (v61 == 2)
  {
    if (v54 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v54 == 2 || ((v54 ^ v61) & 1) != 0)
    {
      return result;
    }
  }

  if (v60 == 2)
  {
    if (v53 == 2)
    {
      goto LABEL_56;
    }

    return 0;
  }

  result = 0;
  if (v53 != 2 && ((v53 ^ v60) & 1) == 0)
  {
LABEL_56:
    if (v52)
    {
      if (v51)
      {
        v47 = v50 == v49 && v52 == v51;
        if (v47 || (sub_19393CA30() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v51)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t MADownloadResultEvent.hash(into:)()
{
  v1 = v0[1];
  v2 = *(v0 + 48);
  v3 = *(v0 + 49);
  v4 = *(v0 + 50);
  v5 = *(v0 + 51);
  v24 = *(v0 + 53);
  v25 = *(v0 + 52);
  v6 = *(v0 + 54);
  v7 = *(v0 + 55);
  v8 = *(v0 + 56);
  v9 = v0[9];
  v23 = v0[8];
  if (v1 == 1)
  {
    sub_19393CAD0();
    v10 = v5;
    v11 = v4;
  }

  else
  {
    v20 = v0[9];
    v12 = *(v0 + 54);
    v21 = *(v0 + 56);
    v22 = *(v0 + 55);
    v13 = *v0;
    v14 = v0[3];
    v15 = v0[5];
    v18 = v0[2];
    v19 = v0[4];
    sub_19393CAD0();
    sub_19393CAD0();
    if (v1)
    {
      sub_19393C640();
    }

    v10 = v5;
    v6 = v12;
    v11 = v4;
    sub_19393CAD0();
    if (v14)
    {
      sub_19393C640();
    }

    v9 = v20;
    v16 = v15;
    v8 = v21;
    v7 = v22;
    sub_19393CAD0();
    if (v16)
    {
      sub_19393C640();
    }
  }

  if (v2 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v3 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v11 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v10 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v25 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v24 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v6 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v7 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v8 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (!v9)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t MADownloadResultEvent.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  MADownloadResultEvent.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19378434C()
{
  sub_19393CAB0();
  MADownloadResultEvent.hash(into:)();
  return sub_19393CB00();
}

__n128 MASecureDetailEvent.assetMetaData.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_22_37(a1);
  result = *v1;
  v6 = *(v1 + 16);
  *v2 = *v1;
  *(v2 + 16) = v6;
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  return result;
}

uint64_t MASecureDetailEvent.graftingFailureReason.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t MASecureDetailEvent.graftingFailureReason.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t MASecureDetailEvent.mapExclaveFailureReason.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t MASecureDetailEvent.mapExclaveFailureReason.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t MASecureDetailEvent.mountingFailureReason.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t MASecureDetailEvent.mountingFailureReason.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 112);

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

void MASecureDetailEvent.maSecureOperationType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 137);
  *a1 = *(v1 + 128);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t MASecureDetailEvent.maSecureOperationType.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 128) = *result;
  *(v1 + 136) = v2;
  *(v1 + 137) = v3;
  return result;
}

uint64_t MASecureDetailEvent.personalizeFailureReason.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t MASecureDetailEvent.personalizeFailureReason.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 152);

  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  return result;
}

uint64_t MASecureDetailEvent.secureReason.getter()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t MASecureDetailEvent.secureReason.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 176);

  *(v1 + 168) = v2;
  *(v1 + 176) = v0;
  return result;
}

uint64_t MASecureDetailEvent.result.getter()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t MASecureDetailEvent.result.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 192);

  *(v1 + 184) = v2;
  *(v1 + 192) = v0;
  return result;
}

double MASecureDetailEvent.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_21_44(v1);
  result = 0.0;
  *v0 = xmmword_1939526A0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 514;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 2;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 2;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 2;
  *(v0 + 128) = 0;
  *(v0 + 136) = 256;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 160) = 2;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  return result;
}

uint64_t static MASecureDetailEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 49);
  v93 = *(a1 + 56);
  v97 = *(a1 + 64);
  v95 = *(a1 + 72);
  v91 = *(a1 + 88);
  v89 = *(a1 + 96);
  v82 = *(a1 + 104);
  v86 = *(a1 + 112);
  v87 = *(a1 + 80);
  v84 = *(a1 + 120);
  v77 = *(a1 + 136);
  v80 = *(a1 + 137);
  v73 = *(a1 + 144);
  v78 = *(a1 + 128);
  v79 = *(a1 + 152);
  v74 = *(a1 + 160);
  v10 = *(a1 + 168);
  v11 = *(a1 + 176);
  v12 = *(a1 + 184);
  v13 = *(a1 + 192);
  v14 = *(a2 + 8);
  v103 = *a2;
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v18 = *(a2 + 32);
  v17 = *(a2 + 40);
  v19 = *(a2 + 48);
  v20 = *(a2 + 49);
  v92 = *(a2 + 56);
  v96 = *(a2 + 64);
  v94 = *(a2 + 72);
  v21 = *(a2 + 80);
  v90 = *(a2 + 88);
  v88 = *(a2 + 96);
  v22 = *(a2 + 104);
  v85 = *(a2 + 112);
  v83 = *(a2 + 120);
  v76 = *(a2 + 128);
  v75 = *(a2 + 136);
  v81 = *(a2 + 137);
  v23 = *(a2 + 144);
  v24 = *(a2 + 152);
  v25 = *(a2 + 160);
  v27 = *(a2 + 168);
  v26 = *(a2 + 176);
  v29 = *(a2 + 184);
  v28 = *(a2 + 192);
  if (v2 == 1)
  {
    v98 = *(a2 + 48);
    v99 = *(a2 + 49);
    v100 = v8;
    v101 = v9;
    v71 = *(a2 + 104);
    v72 = *(a2 + 80);
    v67 = v11;
    v68 = *(a2 + 144);
    v70 = *(a2 + 152);
    v69 = *(a2 + 160);
    v62 = *(a2 + 168);
    v63 = v10;
    v65 = v13;
    v66 = *(a2 + 176);
    v60 = *(a2 + 184);
    v61 = v12;
    v64 = *(a2 + 192);
    sub_193641A34(v3, 1);
    if (v14 == 1)
    {
      OUTLINED_FUNCTION_3_73();
      sub_193641A34(v30, v31);
      OUTLINED_FUNCTION_8_57();
      sub_193640C90(v32, v33);
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_3_73();
    sub_193641A34(v38, v39);
LABEL_7:
    OUTLINED_FUNCTION_8_57();
    sub_193640C90(v40, v41);
    OUTLINED_FUNCTION_3_73();
    sub_193640C90(v42, v43);
    return 0;
  }

  v110 = v3;
  v111 = v2;
  v112 = v4;
  v113 = v5;
  v114 = v6;
  v115 = v7;
  if (v14 == 1)
  {
    sub_193641A34(v3, v2);
    OUTLINED_FUNCTION_3_73();
    sub_193641A34(v34, v35);
    OUTLINED_FUNCTION_8_57();
    sub_193641A34(v36, v37);

    goto LABEL_7;
  }

  v98 = v19;
  v99 = v20;
  v100 = v8;
  v101 = v9;
  v71 = v22;
  v72 = v21;
  v67 = v11;
  v68 = v23;
  v70 = v24;
  v69 = v25;
  v62 = v27;
  v63 = v10;
  v65 = v13;
  v66 = v26;
  v60 = v29;
  v61 = v12;
  v64 = v28;
  v104 = v103;
  v105 = v14;
  v106 = v15;
  v107 = v16;
  v108 = v18;
  v109 = v17;
  v102 = static MAAssetMetadata.== infix(_:_:)(&v110, &v104);
  v45 = OUTLINED_FUNCTION_1_75();
  sub_193641A34(v45, v46);
  sub_193641A34(v103, v14);
  v47 = OUTLINED_FUNCTION_1_75();
  sub_193641A34(v47, v48);

  v49 = OUTLINED_FUNCTION_1_75();
  sub_193640C90(v49, v50);
  if ((v102 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  if (v100 == 2)
  {
    v51 = v99;
    v52 = v101;
    if (v98 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    v51 = v99;
    v52 = v101;
    if (v98 == 2 || ((v98 ^ v100) & 1) != 0)
    {
      return result;
    }
  }

  if (v52 == 2)
  {
    if (v51 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v51 == 2 || ((v51 ^ v52) & 1) != 0)
    {
      return result;
    }
  }

  if (v97)
  {
    if (!v96)
    {
      return 0;
    }

    v53 = v93 == v92 && v97 == v96;
    if (!v53 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v96)
  {
    return 0;
  }

  if (v95 == 2)
  {
    if (v94 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v94 == 2 || ((v94 ^ v95) & 1) != 0)
    {
      return result;
    }
  }

  if (v91)
  {
    if (!v90)
    {
      return 0;
    }

    v54 = v87 == v72 && v91 == v90;
    if (!v54 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v90)
  {
    return 0;
  }

  if (v89 == 2)
  {
    if (v88 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v88 == 2 || ((v88 ^ v89) & 1) != 0)
    {
      return result;
    }
  }

  if (v86)
  {
    if (!v85)
    {
      return 0;
    }

    v55 = v82 == v71 && v86 == v85;
    if (!v55 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v85)
  {
    return 0;
  }

  if (v84 == 2)
  {
    if (v83 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v83 == 2 || ((v83 ^ v84) & 1) != 0)
    {
      return result;
    }
  }

  if (v80)
  {
    if ((v81 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v81)
    {
      return 0;
    }

    v110 = v78;
    LOBYTE(v111) = v77 & 1;
    v104 = v76;
    LOBYTE(v105) = v75 & 1;
    v56 = MASecureOperationType.rawValue.getter();
    if (v56 != MASecureOperationType.rawValue.getter())
    {
      return 0;
    }
  }

  if (v79)
  {
    if (!v70)
    {
      return 0;
    }

    v57 = v73 == v68 && v79 == v70;
    if (!v57 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v70)
  {
    return 0;
  }

  if (v74 == 2)
  {
    if (v69 != 2)
    {
      return 0;
    }

    goto LABEL_82;
  }

  result = 0;
  if (v69 != 2 && ((v69 ^ v74) & 1) == 0)
  {
LABEL_82:
    if (v67)
    {
      if (v66)
      {
        v58 = v63 == v62 && v67 == v66;
        if (v58 || (sub_19393CA30() & 1) != 0)
        {
LABEL_91:
          if (v65)
          {
            if (v64)
            {
              v59 = v61 == v60 && v65 == v64;
              if (v59 || (sub_19393CA30() & 1) != 0)
              {
                return 1;
              }
            }
          }

          else if (!v64)
          {
            return 1;
          }
        }
      }
    }

    else if (!v66)
    {
      goto LABEL_91;
    }

    return 0;
  }

  return result;
}

uint64_t MASecureDetailEvent.hash(into:)()
{
  v1 = v0[1];
  v2 = *(v0 + 49);
  v3 = v0[8];
  v4 = *(v0 + 72);
  v5 = v0[11];
  v29 = *(v0 + 48);
  v30 = *(v0 + 96);
  v25 = v0[10];
  v26 = v0[13];
  v31 = v0[14];
  v6 = *(v0 + 120);
  v22 = v0[16];
  v23 = v0[7];
  v21 = *(v0 + 136);
  v32 = *(v0 + 137);
  v33 = v0[19];
  v27 = v0[18];
  v28 = v0[21];
  v35 = v0[22];
  v7 = v0[24];
  v24 = v0[23];
  v34 = *(v0 + 160);
  if (v1 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    v8 = v6;
    v9 = v5;
    v10 = v3;
    v11 = v29;
  }

  else
  {
    v19 = *(v0 + 72);
    v20 = v0[24];
    v12 = *v0;
    v13 = v0[3];
    v16 = v0[2];
    v17 = v0[4];
    v18 = v0[5];
    OUTLINED_FUNCTION_103_0();
    if (v1)
    {
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
    }

    else
    {
      OUTLINED_FUNCTION_104_0();
    }

    v10 = v3;
    v8 = v6;
    if (v13)
    {
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
    }

    else
    {
      OUTLINED_FUNCTION_104_0();
    }

    v9 = v5;
    v11 = v29;
    if (v18)
    {
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
    }

    else
    {
      OUTLINED_FUNCTION_104_0();
    }

    v7 = v20;
    v4 = v19;
  }

  if (v11 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v2 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v10)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v4 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v9)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v30 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v31)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v8 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (v32)
  {
    OUTLINED_FUNCTION_104_0();
    if (v33)
    {
LABEL_34:
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
      goto LABEL_37;
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    v14 = MASecureOperationType.rawValue.getter();
    MEMORY[0x193B18030](v14);
    if (v33)
    {
      goto LABEL_34;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_37:
  if (v34 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  if (!v35)
  {
    OUTLINED_FUNCTION_104_0();
    if (v7)
    {
      goto LABEL_41;
    }

    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  sub_19393C640();
  if (!v7)
  {
    return OUTLINED_FUNCTION_104_0();
  }

LABEL_41:
  OUTLINED_FUNCTION_103_0();

  return sub_19393C640();
}

uint64_t MASecureDetailEvent.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  MASecureDetailEvent.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937852C4()
{
  sub_19393CAB0();
  MASecureDetailEvent.hash(into:)();
  return sub_19393CB00();
}

uint64_t MAAssetMetadata.assetSpecifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t MAAssetMetadata.assetSpecifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MAAssetMetadata.assetType.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t MAAssetMetadata.assetType.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t MAAssetMetadata.assetVersion.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t MAAssetMetadata.assetVersion.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void __swiftcall MAAssetMetadata.init()(IntelligencePlatformLibrary::MAAssetMetadata *__return_ptr retstr)
{
  retstr->assetType = 0u;
  retstr->assetVersion = 0u;
  retstr->assetSpecifier = 0u;
}

uint64_t static MAAssetMetadata.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  if (v3)
  {
    if (!v8)
    {
      return 0;
    }

    v13 = *a1 == *a2 && v3 == v8;
    if (!v13 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11)
    {
      return 0;
    }

    v14 = v4 == v9 && v6 == v11;
    if (!v14 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v7)
  {
    if (v12)
    {
      if (v5 == v10 && v7 == v12)
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

  else if (!v12)
  {
    return 1;
  }

  return 0;
}

uint64_t MAAssetMetadata.hash(into:)()
{
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  if (v0[1])
  {
    v5 = *v0;
    sub_19393CAD0();
    sub_19393C640();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_19393CAD0();
    if (v4)
    {
      goto LABEL_4;
    }

    return sub_19393CAD0();
  }

  sub_19393CAD0();
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_19393CAD0();
  sub_19393C640();
  if (!v4)
  {
    return sub_19393CAD0();
  }

LABEL_4:
  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t MAAssetMetadata.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v2)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (v4)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (v6)
  {
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t sub_193785750()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_19393CAB0();
  MAAssetMetadata.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1937857AC@<X0>(uint64_t *a1@<X8>)
{
  result = MAEventType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_1937857D4@<X0>(char **a1@<X8>)
{
  result = static MAEventType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193785830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_193785938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_193785A44@<X0>(uint64_t *a1@<X8>)
{
  result = MASecureOperationType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_193785A6C@<X0>(char **a1@<X8>)
{
  result = static MASecureOperationType.allCases.getter();
  *a1 = result;
  return result;
}

unint64_t sub_193785B68()
{
  result = qword_1EAE42A88;
  if (!qword_1EAE42A88)
  {
    type metadata accessor for MobileAssetInstrumentationEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42A88);
  }

  return result;
}

unint64_t sub_193785BCC()
{
  result = qword_1EAE42A90;
  if (!qword_1EAE42A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42A90);
  }

  return result;
}

unint64_t sub_193785C88()
{
  result = qword_1EAE42AB8;
  if (!qword_1EAE42AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42AB8);
  }

  return result;
}

void sub_193785D04()
{
  sub_19349D140();
  if (v0 <= 0x3F)
  {
    sub_19349D198();
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, &qword_1ED508290);
      if (v2 <= 0x3F)
      {
        sub_19349D1FC(319, &qword_1EAE3A8B8);
        if (v3 <= 0x3F)
        {
          sub_19349D1FC(319, &qword_1EAE3A8A8);
          if (v4 <= 0x3F)
          {
            sub_19349D1FC(319, &qword_1EAE3A8B0);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary15MAAssetMetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_193785E74(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 200))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 64);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_193785EC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_44(uint64_t a1)
{

  return sub_193640C90(a1, 1);
}

_BYTE *_s5GamesOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_19378606C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_11_4();
  __swift_allocate_value_buffer(v4, qword_1ED512338);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

uint64_t sub_193786228()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_11_4();
  __swift_allocate_value_buffer(v4, qword_1ED512380);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

unint64_t sub_193786314()
{
  result = sub_193484E38();
  qword_1ED512328 = &type metadata for Library.Databases.Games.RecentlyPlayed;
  unk_1ED512330 = result;
  return result;
}

uint64_t static Library.Databases.Games.RecentlyPlayed.AppsRecentlyFocused.database.getter()
{
  if (qword_1ED512300 != -1)
  {
    OUTLINED_FUNCTION_5_71();
  }

  return qword_1ED512328;
}

uint64_t sub_193786388()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_11_4();
  __swift_allocate_value_buffer(v4, qword_1ED512398);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_18_0();
  result = OUTLINED_FUNCTION_2_12();
  if (v6)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_23();
    v8 = *(v7 + 32);
    v9 = OUTLINED_FUNCTION_22_9();
    return v10(v9);
  }

  return result;
}

uint64_t sub_193786474@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  v8 = __swift_project_value_buffer(v7, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1937865E8(uint64_t a1)
{
  sub_193786FE0();

  return MEMORY[0x1EEDF07A0](a1);
}

uint64_t static Library.Databases.Games.RecentlyPlayed.AppsRecentlyFocused.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED512320 != -1)
  {
    OUTLINED_FUNCTION_0_101();
  }

  v2 = sub_19393BF10();
  v3 = __swift_project_value_buffer(v2, qword_1ED5123B0);
  swift_beginAccess();
  OUTLINED_FUNCTION_23();
  return (*(v4 + 16))(a1, v3, v2);
}

unint64_t sub_1937866E0()
{
  v0 = sub_193490E70(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  if (v2 >= v1 >> 1)
  {
    v0 = sub_193490E70((v1 > 1), v2 + 1, 1, v0);
  }

  result = sub_193786FE0();
  *(v0 + 2) = v2 + 1;
  v4 = &v0[16 * v2];
  *(v4 + 4) = &type metadata for Library.Databases.Games.RecentlyPlayed.AppsRecentlyFocused;
  *(v4 + 5) = result;
  qword_1ED512318 = v0;
  return result;
}

uint64_t static Library.Databases.Games.RecentlyPlayed.views.getter()
{
  if (qword_1ED512310 != -1)
  {
    OUTLINED_FUNCTION_4_72();
  }
}

unint64_t sub_1937867D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a1 == 0xD000000000000013 && 0x8000000193995AC0 == a2;
  if (!v5 && (sub_19393CA30() & 1) == 0)
  {
    return a3();
  }

  result = sub_193787034(a3);
  if (!v3)
  {
  }

  return result;
}

uint64_t sub_1937868C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AAF8, &unk_193950830);
  OUTLINED_FUNCTION_47(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  v61 = v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB00, &unk_19396ED50);
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB08, &unk_193950840);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB10, &qword_19396ED60);
  OUTLINED_FUNCTION_47(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_19393BEC0();
  v60 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_19393BF10();
  __swift_allocate_value_buffer(v22, qword_1ED5123B0);
  v58 = v22;
  v23 = __swift_project_value_buffer(v22, qword_1ED5123B0);
  v64 = &enum case for MASecureOperationType.grafting(_:);
  v65 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB18, &unk_193950850);
  v24 = *(sub_19393BF30() - 8);
  v62 = *(v24 + 72);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  v63 = v26;
  *(v26 + 16) = xmmword_19394FBE0;
  v57[1] = v26 + v25;
  v27 = *MEMORY[0x1E698F198];
  v28 = *(v18 + 104);
  v59 = v18 + 104;
  v28(v21, v27, v17);
  v29 = sub_19393BF40();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v29);
  v33 = sub_19393BEF0();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v22);
  v40 = sub_19393BEB0();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
  OUTLINED_FUNCTION_17_40();
  sub_19393BF20();
  v28(v21, *MEMORY[0x1E698F188], v60);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v29);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v33);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v58);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v40);
  OUTLINED_FUNCTION_17_40();
  sub_19393BF20();
  return sub_19393BEA0();
}

uint64_t static Library.Databases.Games.RecentlyPlayed.AppsRecentlyFocused.metadata.setter(uint64_t a1)
{
  if (qword_1ED512320 != -1)
  {
    OUTLINED_FUNCTION_0_101();
  }

  v2 = sub_19393BF10();
  __swift_project_value_buffer(v2, qword_1ED5123B0);
  swift_beginAccess();
  v3 = *(v2 - 8);
  v4 = *(v3 + 24);
  v5 = OUTLINED_FUNCTION_22_9();
  v6(v5);
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*static Library.Databases.Games.RecentlyPlayed.AppsRecentlyFocused.metadata.modify())()
{
  if (qword_1ED512320 != -1)
  {
    OUTLINED_FUNCTION_0_101();
  }

  v0 = sub_19393BF10();
  __swift_project_value_buffer(v0, qword_1ED5123B0);
  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_193786E74()
{
  result = qword_1ED5028F8;
  if (!qword_1ED5028F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5028F8);
  }

  return result;
}

unint64_t sub_193786ECC()
{
  result = qword_1ED502910;
  if (!qword_1ED502910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED502910);
  }

  return result;
}

_BYTE *sub_193786F34(_BYTE *result, int a2, int a3)
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

unint64_t sub_193786FE0()
{
  result = qword_1ED5028C8;
  if (!qword_1ED5028C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5028C8);
  }

  return result;
}

_BYTE *_s6EventsOwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s7MomentsOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1937871EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_19393BE60();
  __swift_allocate_value_buffer(v4, qword_1ED5123E8);
  v5 = __swift_project_value_buffer(v4, qword_1ED5123E8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t static Library.Streams.Moments.Events.Notifications.configuration.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:10000 maxEventCount:604800.0];
  if (v0)
  {
    v1 = v0;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v38 = v1;
    v37 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_193995C60;
    v5 = 0x1E698F000uLL;
    *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E698F340]) initWithPlatform:2 transportType:2 direction:3];
    *(inited + 40) = [objc_allocWithZone(MEMORY[0x1E698F340]) initWithPlatform:1 transportType:2 direction:2];
    *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E698F340]) initWithPlatform:3 transportType:2 direction:2];
    v6 = 0;
    *(inited + 56) = [objc_allocWithZone(MEMORY[0x1E698F340]) initWithPlatform:4 transportType:2 direction:2];
    v40 = inited & 0xC000000000000001;
    v41 = inited;
    v39 = inited & 0xFFFFFFFFFFFFFF8;
    v7 = MEMORY[0x1E69E7CC8];
    while (v6 != 4)
    {
      if (v40)
      {
        v8 = MEMORY[0x193B17E70](v6, v41);
      }

      else
      {
        if (v6 >= *(v39 + 16))
        {
          goto LABEL_26;
        }

        v8 = *(v41 + 8 * v6 + 32);
      }

      v9 = v8;
      [v8 platform];
      v10 = BMDevicePlatformAsKeyString();
      v11 = sub_19393C580();
      v13 = v12;

      if (v7[2] && (v14 = sub_193485250(v11, v13), (v15 & 1) != 0))
      {
        v42 = *(v7[7] + 8 * v14);
      }

      else
      {
        v42 = MEMORY[0x1E69E7CC0];
      }

      inited = v9;
      MEMORY[0x193B17C20]();
      v5 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_19393C6E0();
      }

      sub_19393C720();
      swift_isUniquelyReferenced_nonNull_native();
      v16 = sub_193485250(v11, v13);
      if (__OFADD__(v7[2], (v17 & 1) == 0))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v5 = v16;
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42AC0, &qword_193995C70);
      if (sub_19393C980())
      {
        v19 = sub_193485250(v11, v13);
        if ((v18 & 1) != (v20 & 1))
        {
          goto LABEL_30;
        }

        v5 = v19;
      }

      if (v18)
      {
        v21 = v7[7];
        v22 = *(v21 + 8 * v5);
        *(v21 + 8 * v5) = v42;
      }

      else
      {
        v7[(v5 >> 6) + 8] |= 1 << v5;
        v23 = (v7[6] + 16 * v5);
        *v23 = v11;
        v23[1] = v13;
        *(v7[7] + 8 * v5) = v42;
        v24 = v7[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_27;
        }

        v7[2] = v26;
      }

      ++v6;
    }

    swift_setDeallocating();
    sub_193787D54();
    sub_193787924(v7);

    v27 = objc_allocWithZone(MEMORY[0x1E698F348]);
    v5 = sub_193787CB4(0, 0);
    inited = objc_opt_self();
    if (_MergedGlobals_68 == -1)
    {
      goto LABEL_24;
    }

LABEL_28:
    swift_once();
LABEL_24:
    v28 = sub_19393BE60();
    __swift_project_value_buffer(v28, qword_1ED5123E8);
    v29 = sub_19393BE30();
    v30 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42AC8, &qword_193995C78);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v32 = v5;
    v33 = sub_19393C6C0();
    BYTE2(v36) = 0;
    LOWORD(v36) = 1;
    v34 = [inited _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v34;
  }

  else
  {
    __break(1u);
LABEL_30:
    result = sub_19393CA50();
    __break(1u);
  }

  return result;
}

uint64_t sub_193787924(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42AD8, &qword_193995CF0);
    v2 = sub_19393C9B0();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = v12[1];
    v14 = *(*(a1 + 56) + 8 * v11);
    *&v33[0] = *v12;
    *(&v33[0] + 1) = v13;

    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42AE0, &qword_193995CF8);
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_193495EE0(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_193495EE0(v32, v33);
    v15 = *(v2 + 40);
    result = sub_19393C8C0();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v2 + 48) + 40 * v19;
    *v24 = v25;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    result = sub_193495EE0(v33, (*(v2 + 56) + 32 * v19));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t static Library.Streams.Moments.Events.Notifications.attribute(_:)(void (*a1)(void))
{
  result = sub_193787C1C(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193787C58(void (*a1)(void))
{
  result = sub_193787C1C(a1);
  if (!v1)
  {
  }

  return result;
}

id sub_193787CB4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_19393C570();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_19393C4F0();

  v5 = [v2 initWithLegacyDescriptor:v3 platformPolicies:v4];

  return v5;
}

uint64_t sub_193787D54()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_193787DA8(uint64_t a1)
{
  result = sub_193787DD0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193787DD0()
{
  result = qword_1EAE42AD0;
  if (!qword_1EAE42AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42AD0);
  }

  return result;
}

_BYTE *_s13NotificationsOwst(_BYTE *result, int a2, int a3)
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

void sub_193787ED0()
{
  OUTLINED_FUNCTION_26();
  v183 = v0;
  v184 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v8 = OUTLINED_FUNCTION_47(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15_8();
  v177 = v11;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v12);
  v180 = &v175 - v13;
  sub_19393BE00();
  OUTLINED_FUNCTION_1_0();
  v178 = v15;
  v179 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15_8();
  v175 = v18;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v19);
  v176 = &v175 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42AE8, &qword_193995D00);
  OUTLINED_FUNCTION_47(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v175 - v25;
  v27 = type metadata accessor for MomentsEventData.EventBundle(0);
  v28 = OUTLINED_FUNCTION_4_1(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_1();
  v33 = v32 - v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE42AF0, &unk_193997C80);
  OUTLINED_FUNCTION_47(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v37);
  v38 = OUTLINED_FUNCTION_9_6();
  v39 = type metadata accessor for MomentsEventData.Event(v38);
  v40 = OUTLINED_FUNCTION_4_1(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5_1();
  v45 = v44 - v43;
  v181 = v6;
  v182 = v4;
  v46 = v6 == 0x746E657665 && v4 == 0xE500000000000000;
  if (v46 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
  {
    sub_1934486F8(v183, v1, &qword_1EAE42AF0, &unk_193997C80);
    OUTLINED_FUNCTION_6_3(v1, 1, v39);
    if (!v46)
    {
      v51 = type metadata accessor for MomentsEventData.Event;
      sub_19378C498(v1, v45, type metadata accessor for MomentsEventData.Event);
      sub_193494798(v39, &off_1F07F0770, v184);
      v52 = v45;
LABEL_11:
      sub_19378C4F8(v52, v51);
      goto LABEL_12;
    }

    v47 = &qword_1EAE42AF0;
    v48 = &unk_193997C80;
    v49 = v1;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_11_51();
  OUTLINED_FUNCTION_14_49();
  v54 = v46 && v53 == 0xE600000000000000;
  if (v54 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
  {
    v55 = type metadata accessor for MomentsEventData(0);
    v56 = OUTLINED_FUNCTION_38_33(*(v55 + 20));
    sub_1934486F8(v56, v26, v57, v58);
    v59 = OUTLINED_FUNCTION_132();
    OUTLINED_FUNCTION_6_3(v59, v60, v27);
    if (!v46)
    {
      v51 = type metadata accessor for MomentsEventData.EventBundle;
      sub_19378C498(v26, v33, type metadata accessor for MomentsEventData.EventBundle);
      sub_193494798(v27, &off_1F07F0780, v184);
      v52 = v33;
      goto LABEL_11;
    }

    v47 = &qword_1EAE42AE8;
    v48 = &qword_193995D00;
    v49 = v26;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_14_49();
  v62 = v46 && v61 == 0xE800000000000000;
  if (v62 || (OUTLINED_FUNCTION_35_33() & 1) != 0)
  {
    v63 = *(type metadata accessor for MomentsEventData(0) + 24);
LABEL_27:
    v64 = *(v183 + v63);
    if (v64 == 2)
    {
      goto LABEL_10;
    }

    LOBYTE(v185) = v64 & 1;
LABEL_29:
    sub_1934948FC();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_18_44();
  v66 = v46 && v65 == 0xE800000000000000;
  if (v66 || (OUTLINED_FUNCTION_35_33() & 1) != 0)
  {
    v63 = *(type metadata accessor for MomentsEventData(0) + 28);
    goto LABEL_27;
  }

  v67 = v181 == 6645601 && v182 == 0xE300000000000000;
  if (v67 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
  {
    v68 = *(type metadata accessor for MomentsEventData(0) + 32);
LABEL_42:
    OUTLINED_FUNCTION_18_27(v68);
    if (*(v69 + 4))
    {
      goto LABEL_10;
    }

    LODWORD(v185) = *v69;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_14_49();
  v71 = v46 && v70 == 0xE800000000000000;
  if (v71 || (OUTLINED_FUNCTION_35_33() & 1) != 0)
  {
    v72 = type metadata accessor for MomentsEventData(0);
    OUTLINED_FUNCTION_7_50(*(v72 + 36));
    if (v74)
    {
      goto LABEL_10;
    }

    goto LABEL_131;
  }

  OUTLINED_FUNCTION_18_44();
  v77 = v46 && v76 == v75;
  if (v77 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
  {
    v78 = type metadata accessor for MomentsEventData(0);
    OUTLINED_FUNCTION_7_50(*(v78 + 40));
    if (v79)
    {
      goto LABEL_10;
    }

    goto LABEL_131;
  }

  v81 = v181 == OUTLINED_FUNCTION_24_31() && v182 == v80;
  if (v81 || (OUTLINED_FUNCTION_30_28() & 1) != 0)
  {
    v82 = type metadata accessor for MomentsEventData(0);
    v83 = OUTLINED_FUNCTION_38_33(*(v82 + 44));
    v84 = v180;
    sub_1934486F8(v83, v180, v85, v86);
    OUTLINED_FUNCTION_6_3(v84, 1, v179);
    if (!v46)
    {
      v87 = v178;
      OUTLINED_FUNCTION_24_45();
      v89 = v176;
      v90 = v176;
      v91 = v180;
LABEL_66:
      v92 = v179;
      v88(v90, v91, v179);
      sub_1934948FC();
      (*(v87 + 8))(v89, v92);
      goto LABEL_12;
    }

    v47 = &qword_1EAE3A9E8;
    v48 = &qword_19394F800;
    v49 = v180;
  }

  else
  {
    OUTLINED_FUNCTION_14_49();
    v94 = v46 && v93 == 0xE700000000000000;
    if (!v94 && (OUTLINED_FUNCTION_10_28() & 1) == 0)
    {
      OUTLINED_FUNCTION_18_44();
      v102 = v46 && v101 == v100;
      if (v102 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
      {
        v103 = *(type metadata accessor for MomentsEventData(0) + 52);
      }

      else
      {
        OUTLINED_FUNCTION_11_51();
        OUTLINED_FUNCTION_18_44();
        v108 = v46 && v107 == v106;
        if (v108 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
        {
          v103 = *(type metadata accessor for MomentsEventData(0) + 56);
        }

        else
        {
          OUTLINED_FUNCTION_38();
          v110 = v181 == 0xD000000000000013 && v109 == v182;
          if (v110 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
          {
            v103 = *(type metadata accessor for MomentsEventData(0) + 60);
          }

          else
          {
            OUTLINED_FUNCTION_60_22();
            OUTLINED_FUNCTION_18_44();
            v113 = v46 && v112 == v111;
            if (v113 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
            {
              v103 = *(type metadata accessor for MomentsEventData(0) + 64);
            }

            else
            {
              OUTLINED_FUNCTION_18_44();
              v116 = v46 && v115 == v114;
              if (v116 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
              {
                v103 = *(type metadata accessor for MomentsEventData(0) + 68);
              }

              else
              {
                OUTLINED_FUNCTION_6_62();
                v120 = v119 == 0xD000000000000012 && v117 == v118;
                if (!v120 && (OUTLINED_FUNCTION_10_28() & 1) == 0)
                {
                  OUTLINED_FUNCTION_38();
                  OUTLINED_FUNCTION_18_44();
                  v123 = v46 && v121 == v122;
                  if (v123 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
                  {
                    v68 = *(type metadata accessor for MomentsEventData(0) + 76);
                    goto LABEL_42;
                  }

                  OUTLINED_FUNCTION_38();
                  OUTLINED_FUNCTION_18_44();
                  v126 = v46 && v124 == v125;
                  if (v126 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
                  {
                    v68 = *(type metadata accessor for MomentsEventData(0) + 80);
                    goto LABEL_42;
                  }

                  OUTLINED_FUNCTION_38();
                  OUTLINED_FUNCTION_18_44();
                  v129 = v46 && v127 == v128;
                  if (!v129 && (OUTLINED_FUNCTION_10_28() & 1) == 0)
                  {
                    OUTLINED_FUNCTION_38();
                    OUTLINED_FUNCTION_18_44();
                    v134 = v46 && v132 == v133;
                    if (v134 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
                    {
                      v63 = *(type metadata accessor for MomentsEventData(0) + 88);
                    }

                    else
                    {
                      OUTLINED_FUNCTION_6_62();
                      v138 = v137 == 0xD000000000000012 && v135 == v136;
                      if (v138 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
                      {
                        v63 = *(type metadata accessor for MomentsEventData(0) + 92);
                      }

                      else
                      {
                        OUTLINED_FUNCTION_38();
                        OUTLINED_FUNCTION_18_44();
                        v141 = v46 && v139 == v140;
                        if (v141 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
                        {
                          v63 = *(type metadata accessor for MomentsEventData(0) + 96);
                        }

                        else
                        {
                          OUTLINED_FUNCTION_38();
                          OUTLINED_FUNCTION_18_44();
                          v144 = v46 && v142 == v143;
                          if (v144 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
                          {
                            v63 = *(type metadata accessor for MomentsEventData(0) + 100);
                          }

                          else
                          {
                            OUTLINED_FUNCTION_38();
                            OUTLINED_FUNCTION_18_44();
                            v147 = v46 && v145 == v146;
                            if (v147 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
                            {
                              v63 = *(type metadata accessor for MomentsEventData(0) + 104);
                            }

                            else
                            {
                              OUTLINED_FUNCTION_38();
                              OUTLINED_FUNCTION_26_33();
                              v150 = v46 && v148 == v149;
                              if (v150 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
                              {
                                v63 = *(type metadata accessor for MomentsEventData(0) + 108);
                              }

                              else
                              {
                                OUTLINED_FUNCTION_38();
                                OUTLINED_FUNCTION_40_27();
                                v153 = v46 && v151 == v152;
                                if (v153 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
                                {
                                  v63 = *(type metadata accessor for MomentsEventData(0) + 112);
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_38();
                                  OUTLINED_FUNCTION_18_44();
                                  v156 = v46 && v154 == v155;
                                  if (v156 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
                                  {
                                    v63 = *(type metadata accessor for MomentsEventData(0) + 116);
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_6_62();
                                    v160 = v159 == 0xD00000000000001CLL && v157 == v158;
                                    if (v160 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
                                    {
                                      v63 = *(type metadata accessor for MomentsEventData(0) + 120);
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_38();
                                      OUTLINED_FUNCTION_18_44();
                                      v163 = v46 && v161 == v162;
                                      if (v163 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
                                      {
                                        v63 = *(type metadata accessor for MomentsEventData(0) + 124);
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_38();
                                        OUTLINED_FUNCTION_18_44();
                                        v166 = v46 && v164 == v165;
                                        if (v166 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
                                        {
                                          v63 = *(type metadata accessor for MomentsEventData(0) + 128);
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_6_62();
                                          v170 = v169 == 0xD00000000000002ALL && v167 == v168;
                                          if (!v170 && (OUTLINED_FUNCTION_10_28() & 1) == 0)
                                          {
                                            sub_19349AB64();
                                            v171 = OUTLINED_FUNCTION_13_9();
                                            v173 = OUTLINED_FUNCTION_47_27(v171, v172);
                                            MEMORY[0xD000000000000052] = type metadata accessor for MomentsEventData(v173);
                                            boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(0xD00000000000003ALL);
                                            sub_19378D884(v183, boxed_opaque_existential_1Tm, type metadata accessor for MomentsEventData);
                                            OUTLINED_FUNCTION_64_19();

                                            goto LABEL_12;
                                          }

                                          v63 = *(type metadata accessor for MomentsEventData(0) + 132);
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

                    goto LABEL_27;
                  }

                  v130 = type metadata accessor for MomentsEventData(0);
                  OUTLINED_FUNCTION_7_50(*(v130 + 84));
                  if (v131)
                  {
                    goto LABEL_10;
                  }

LABEL_131:
                  OUTLINED_FUNCTION_41_2(v73);
                  goto LABEL_29;
                }

                v103 = *(type metadata accessor for MomentsEventData(0) + 72);
              }
            }
          }
        }
      }

      v104 = (v183 + v103);
      v105 = *(v183 + v103 + 8);
      if (!v105)
      {
        goto LABEL_10;
      }

      v185 = *v104;
      v186 = v105;
      goto LABEL_29;
    }

    v95 = type metadata accessor for MomentsEventData(0);
    v96 = OUTLINED_FUNCTION_38_33(*(v95 + 48));
    v97 = v177;
    sub_1934486F8(v96, v177, v98, v99);
    OUTLINED_FUNCTION_6_3(v97, 1, v179);
    if (!v46)
    {
      v87 = v178;
      OUTLINED_FUNCTION_24_45();
      v89 = v175;
      v90 = v175;
      goto LABEL_66;
    }

    v47 = &qword_1EAE3A9E8;
    v48 = &qword_19394F800;
    v49 = v177;
  }

LABEL_9:
  sub_19344E6DC(v49, v47, v48);
LABEL_10:
  v50 = v184;
  *v184 = 0u;
  *(v50 + 1) = 0u;
LABEL_12:
  OUTLINED_FUNCTION_27();
}

void sub_193788ADC()
{
  OUTLINED_FUNCTION_52_21();
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 9);
  v7 = v1 == v6 && v2 == 0xE400000000000000;
  if (v7 || (v8 = v2, v9 = v1, v10 = v0[3], v18 = v0[2], v17 = *(v0 + 8), v11 = *(v0 + 36), OUTLINED_FUNCTION_15_10(), (OUTLINED_FUNCTION_0_32() & 1) != 0))
  {
    if (v5)
    {
LABEL_7:
      OUTLINED_FUNCTION_29();
      return;
    }

    goto LABEL_15;
  }

  v12 = v9 == 0x614E6E6F69746361 && v8 == 0xEA0000000000656DLL;
  if (v12 || (OUTLINED_FUNCTION_0_32() & 1) != 0)
  {
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v13 = v9 == 0xD000000000000014 && 0x8000000193A36750 == v8;
  if (v13 || (OUTLINED_FUNCTION_0_32() & 1) != 0)
  {
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_15:
    sub_1934948FC();
    return;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  v15 = v14;
  *v14 = v9;
  v14[1] = v8;
  v14[5] = &type metadata for MomentsEventData.Action;
  v16 = swift_allocObject();
  v15[2] = v16;
  *(v16 + 16) = v3;
  *(v16 + 24) = v4;
  *(v16 + 25) = v5;
  *(v16 + 32) = v18;
  *(v16 + 40) = v10;
  *(v16 + 48) = v17;
  *(v16 + 52) = v11;
  OUTLINED_FUNCTION_163_6();
}

void sub_193788CC4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v6 = *v4;
  v7 = *(v4 + 8);
  v8 = *(v4 + 9);
  v9 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v9 || (OUTLINED_FUNCTION_15_10(), (sub_19393CA30() & 1) != 0))
  {
    if (v8)
    {
      *a4 = 0u;
      a4[1] = 0u;
    }

    else
    {
      sub_1934948FC();
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 40) = a3;
    *(v12 + 16) = v6;
    *(v12 + 24) = v7;
    *(v12 + 25) = v8;
    *(v12 + 48) = 1;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_193788DF4()
{
  OUTLINED_FUNCTION_26();
  v330 = v0;
  v331 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v7 = OUTLINED_FUNCTION_47(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15_8();
  v324 = v10;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_49();
  v325 = v12;
  OUTLINED_FUNCTION_47_3();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v322 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v322 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v322 - v20;
  v327 = sub_19393BE00();
  OUTLINED_FUNCTION_1_0();
  v326 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_15_8();
  v323 = v26;
  OUTLINED_FUNCTION_47_3();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v322 - v29;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_58_20();
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v322 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v38 = &v322 - v37;
  v328 = v5;
  v329 = v3;
  v39 = v5 == v35 && v3 == v36;
  if (v39 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
  {
    v40 = v330;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_24_31();
  OUTLINED_FUNCTION_18_44();
  v43 = v39 && v42 == 0xE900000000000065;
  if (v43 || (OUTLINED_FUNCTION_30_28() & 1) != 0)
  {
    v44 = type metadata accessor for MomentsEventData.Event(0);
    v45 = OUTLINED_FUNCTION_38_33(*(v44 + 20));
    sub_1934486F8(v45, v21, v46, v47);
    v48 = v327;
    OUTLINED_FUNCTION_6_3(v21, 1, v327);
    if (!v39)
    {
      v50 = v326;
      OUTLINED_FUNCTION_24_45();
      v51(v38, v21, v48);
      sub_1934948FC();
      (*(v50 + 8))(v38, v48);
      goto LABEL_28;
    }

    v49 = v21;
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_14_49();
  v53 = v39 && v52 == 0xE700000000000000;
  if (v53 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
  {
    v54 = type metadata accessor for MomentsEventData.Event(0);
    v55 = OUTLINED_FUNCTION_38_33(*(v54 + 24));
    sub_1934486F8(v55, v19, v56, v57);
    v58 = OUTLINED_FUNCTION_132();
    v59 = v327;
    OUTLINED_FUNCTION_6_3(v58, v60, v327);
    if (!v39)
    {
      v62 = v326;
      OUTLINED_FUNCTION_24_45();
      v63(v34, v19, v59);
      sub_1934948FC();
      (*(v62 + 8))(v34, v59);
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  OUTLINED_FUNCTION_18_44();
  v66 = v39 && v65 == v64;
  if (v66 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
  {
    v67 = type metadata accessor for MomentsEventData.Event(0);
    v68 = OUTLINED_FUNCTION_38_33(*(v67 + 28));
    sub_1934486F8(v68, v16, v69, v70);
    v71 = v327;
    OUTLINED_FUNCTION_6_3(v16, 1, v327);
    if (!v39)
    {
      v72 = v326;
      (*(v326 + 32))(0xEF7265696669746ELL, v16, v71);
      sub_1934948FC();
      (*(v72 + 8))(0xEF7265696669746ELL, v71);
      goto LABEL_28;
    }

    v49 = v16;
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_40_27();
  v75 = v39 && v73 == v74;
  if (v75 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
  {
    v76 = type metadata accessor for MomentsEventData.Event(0);
    v77 = OUTLINED_FUNCTION_38_33(*(v76 + 32));
    v19 = v325;
    sub_1934486F8(v77, v325, v78, v79);
    v80 = OUTLINED_FUNCTION_132();
    v81 = v327;
    OUTLINED_FUNCTION_6_3(v80, v82, v327);
    if (!v39)
    {
      v83 = v326;
      OUTLINED_FUNCTION_24_45();
      v84(v30, v19, v81);
      sub_1934948FC();
      (*(v83 + 8))(v30, v81);
      goto LABEL_28;
    }

LABEL_25:
    v49 = v19;
LABEL_26:
    sub_19344E6DC(v49, &qword_1EAE3A9E8, &qword_19394F800);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_18_44();
  v87 = v39 && v86 == v85;
  if (v87 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
  {
    v88 = type metadata accessor for MomentsEventData.Event(0);
    v89 = OUTLINED_FUNCTION_38_33(*(v88 + 36));
    v90 = v324;
    sub_1934486F8(v89, v324, v91, v92);
    v93 = v327;
    OUTLINED_FUNCTION_6_3(v90, 1, v327);
    if (!v39)
    {
      v94 = v326;
      OUTLINED_FUNCTION_24_45();
      v95 = v323;
      v96(v323, v90, v93);
      sub_1934948FC();
      (*(v94 + 8))(v95, v93);
      goto LABEL_28;
    }

    v49 = v90;
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_14_49();
  v98 = v39 && v97 == 0xE800000000000000;
  if (v98 || (OUTLINED_FUNCTION_35_33() & 1) != 0)
  {
    v99 = type metadata accessor for MomentsEventData.Event(0);
    OUTLINED_FUNCTION_7_50(*(v99 + 40));
    if (v101)
    {
      goto LABEL_27;
    }

LABEL_413:
    OUTLINED_FUNCTION_41_2(v100);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_18_44();
  v103 = v39 && v102 == 0xE800000000000000;
  if (v103 || (OUTLINED_FUNCTION_35_33() & 1) != 0)
  {
    v104 = type metadata accessor for MomentsEventData.Event(0);
    OUTLINED_FUNCTION_7_50(*(v104 + 44));
    if (v105)
    {
      goto LABEL_27;
    }

    goto LABEL_413;
  }

  OUTLINED_FUNCTION_84_1();
  OUTLINED_FUNCTION_18_44();
  v108 = v39 && v107 == v106;
  if (v108 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
  {
    v109 = type metadata accessor for MomentsEventData.Event(0);
    OUTLINED_FUNCTION_7_50(*(v109 + 48));
    if (v110)
    {
      goto LABEL_27;
    }

    goto LABEL_413;
  }

  OUTLINED_FUNCTION_18_44();
  v112 = v39 && v111 == 0xEB0000000079726FLL;
  if (v112 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
  {
    v113 = type metadata accessor for MomentsEventData.Event(0);
    OUTLINED_FUNCTION_7_50(*(v113 + 52));
    if (v114)
    {
      goto LABEL_27;
    }

    goto LABEL_413;
  }

  OUTLINED_FUNCTION_18_44();
  v117 = v39 && v116 == v115;
  if (v117 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
  {
    v118 = type metadata accessor for MomentsEventData.Event(0);
    OUTLINED_FUNCTION_7_50(*(v118 + 56));
    if (v119)
    {
      goto LABEL_27;
    }

    goto LABEL_413;
  }

  OUTLINED_FUNCTION_18_44();
  v122 = v39 && v121 == v120;
  if (v122 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
  {
    v123 = type metadata accessor for MomentsEventData.Event(0);
    OUTLINED_FUNCTION_7_50(*(v123 + 60));
    if (v124)
    {
      goto LABEL_27;
    }

    goto LABEL_413;
  }

  OUTLINED_FUNCTION_46_23();
  OUTLINED_FUNCTION_18_44();
  v127 = v39 && v126 == v125;
  if (v127 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
  {
    v128 = type metadata accessor for MomentsEventData.Event(0);
    OUTLINED_FUNCTION_7_50(*(v128 + 64));
    if (v129)
    {
      goto LABEL_27;
    }

    goto LABEL_413;
  }

  OUTLINED_FUNCTION_46_23();
  OUTLINED_FUNCTION_18_44();
  v132 = v39 && v131 == v130;
  if (!v132 && (OUTLINED_FUNCTION_10_28() & 1) == 0)
  {
    v134 = v328 == 0x6E6547616964656DLL && v329 == 0xEA00000000006572;
    if (v134 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v135 = type metadata accessor for MomentsEventData.Event(0);
      OUTLINED_FUNCTION_7_50(*(v135 + 72));
      if (v136)
      {
        goto LABEL_27;
      }

      goto LABEL_413;
    }

    OUTLINED_FUNCTION_18_44();
    v138 = v39 && v137 == 0xE900000000000065;
    if (v138 || (OUTLINED_FUNCTION_30_28() & 1) != 0)
    {
      v139 = type metadata accessor for MomentsEventData.Event(0);
      OUTLINED_FUNCTION_7_50(*(v139 + 76));
      if (v140)
      {
        goto LABEL_27;
      }

      goto LABEL_413;
    }

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_18_44();
    v143 = v39 && v141 == v142;
    if (v143 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v144 = *(type metadata accessor for MomentsEventData.Event(0) + 80);
      goto LABEL_134;
    }

    OUTLINED_FUNCTION_6_62();
    v148 = v147 == 0xD000000000000012 && v145 == v146;
    if (v148 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v144 = *(type metadata accessor for MomentsEventData.Event(0) + 84);
      goto LABEL_134;
    }

    OUTLINED_FUNCTION_18_44();
    v152 = v39 && v151 == v150;
    if (v152 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v153 = type metadata accessor for MomentsEventData.Event(0);
      OUTLINED_FUNCTION_7_50(*(v153 + 88));
      if (v154)
      {
        goto LABEL_27;
      }

      goto LABEL_413;
    }

    OUTLINED_FUNCTION_6_62();
    v158 = v157 == 0xD000000000000013 && v155 == v156;
    if (v158 || (OUTLINED_FUNCTION_23_43() & 1) != 0)
    {
      v133 = *(type metadata accessor for MomentsEventData.Event(0) + 92);
      goto LABEL_107;
    }

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_40_27();
    v161 = v39 && v159 == v160;
    if (v161 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v144 = *(type metadata accessor for MomentsEventData.Event(0) + 96);
      goto LABEL_134;
    }

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_26_33();
    v164 = v39 && v162 == v163;
    if (v164 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v165 = *(type metadata accessor for MomentsEventData.Event(0) + 100);
      goto LABEL_161;
    }

    OUTLINED_FUNCTION_6_62();
    v170 = v169 == 0xD00000000000001FLL && v167 == v168;
    if (v170 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v144 = *(type metadata accessor for MomentsEventData.Event(0) + 104);
      goto LABEL_134;
    }

    OUTLINED_FUNCTION_6_62();
    v174 = v173 == 0xD000000000000024 && v171 == v172;
    if (v174 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v165 = *(type metadata accessor for MomentsEventData.Event(0) + 108);
      goto LABEL_161;
    }

    OUTLINED_FUNCTION_6_62();
    v178 = v177 == 0xD000000000000024 && v175 == v176;
    if (v178 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v144 = *(type metadata accessor for MomentsEventData.Event(0) + 112);
      goto LABEL_134;
    }

    OUTLINED_FUNCTION_6_62();
    v182 = v181 == 0xD000000000000024 && v179 == v180;
    if (v182 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v144 = *(type metadata accessor for MomentsEventData.Event(0) + 116);
      goto LABEL_134;
    }

    OUTLINED_FUNCTION_18_44();
    v185 = v39 && v184 == v183;
    if (v185 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v144 = *(type metadata accessor for MomentsEventData.Event(0) + 120);
      goto LABEL_134;
    }

    OUTLINED_FUNCTION_38();
    v187 = v328 == 0xD000000000000018 && v186 == v329;
    if (v187 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v188 = *(type metadata accessor for MomentsEventData.Event(0) + 124);
LABEL_278:
      v332 = *(v330 + v188);
      v231 = &qword_1EAE3ABB0;
      v232 = &qword_193950BB8;
      goto LABEL_279;
    }

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_18_44();
    v191 = v39 && v189 == v190;
    if (v191 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v133 = *(type metadata accessor for MomentsEventData.Event(0) + 128);
      goto LABEL_107;
    }

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_26_33();
    v194 = v39 && v192 == v193;
    if (v194 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v165 = *(type metadata accessor for MomentsEventData.Event(0) + 132);
      goto LABEL_161;
    }

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_40_27();
    v197 = v39 && v195 == v196;
    if (v197 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v198 = *(type metadata accessor for MomentsEventData.Event(0) + 136);
      goto LABEL_378;
    }

    OUTLINED_FUNCTION_6_62();
    v202 = v201 == 0xD000000000000019 && v199 == v200;
    if (v202 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v198 = *(type metadata accessor for MomentsEventData.Event(0) + 140);
      goto LABEL_378;
    }

    OUTLINED_FUNCTION_6_62();
    v206 = v205 == 0xD000000000000017 && v203 == v204;
    if (v206 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v144 = *(type metadata accessor for MomentsEventData.Event(0) + 144);
      goto LABEL_134;
    }

    OUTLINED_FUNCTION_6_62();
    v210 = v209 == 0xD000000000000018 && v207 == v208;
    if (v210 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v144 = *(type metadata accessor for MomentsEventData.Event(0) + 148);
      goto LABEL_134;
    }

    OUTLINED_FUNCTION_6_62();
    v214 = v213 == 0xD000000000000018 && v211 == v212;
    if (v214 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v144 = *(type metadata accessor for MomentsEventData.Event(0) + 152);
      goto LABEL_134;
    }

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_18_44();
    v217 = v39 && v215 == v216;
    if (v217 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v165 = *(type metadata accessor for MomentsEventData.Event(0) + 156);
      goto LABEL_161;
    }

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_26_33();
    v220 = v39 && v218 == v219;
    if (v220 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v165 = *(type metadata accessor for MomentsEventData.Event(0) + 160);
      goto LABEL_161;
    }

    OUTLINED_FUNCTION_6_62();
    v224 = v223 == 0xD000000000000021 && v221 == v222;
    if (v224 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v165 = *(type metadata accessor for MomentsEventData.Event(0) + 164);
LABEL_161:
      OUTLINED_FUNCTION_18_27(v165);
      if ((v166[1] & 1) == 0)
      {
        v332 = *v166;
        goto LABEL_9;
      }

      goto LABEL_27;
    }

    OUTLINED_FUNCTION_38();
    v226 = v328 == 0xD000000000000011 && v225 == v329;
    if (v226 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v227 = type metadata accessor for MomentsEventData.Event(0);
      OUTLINED_FUNCTION_7_50(*(v227 + 168));
      if (v228)
      {
        goto LABEL_27;
      }

      goto LABEL_413;
    }

    OUTLINED_FUNCTION_38();
    v230 = v328 == 0xD000000000000015 && v229 == v329;
    if (v230 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v332 = *(v330 + *(type metadata accessor for MomentsEventData.Event(0) + 172));
      v231 = &unk_1EAE42AF8;
      v232 = &unk_193995D08;
LABEL_279:
      __swift_instantiateConcreteTypeFromMangledNameV2(v231, v232);
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_6_62();
    v236 = v235 == 0xD000000000000013 && v233 == v234;
    if (v236 || (OUTLINED_FUNCTION_23_43() & 1) != 0)
    {
      v188 = *(type metadata accessor for MomentsEventData.Event(0) + 176);
      goto LABEL_278;
    }

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_26_33();
    v239 = v39 && v237 == v238;
    if (v239 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v144 = *(type metadata accessor for MomentsEventData.Event(0) + 180);
      goto LABEL_134;
    }

    OUTLINED_FUNCTION_6_62();
    v243 = v242 == 0xD000000000000018 && v240 == v241;
    if (v243 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v144 = *(type metadata accessor for MomentsEventData.Event(0) + 184);
      goto LABEL_134;
    }

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_18_44();
    v246 = v39 && v244 == v245;
    if (v246 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v144 = *(type metadata accessor for MomentsEventData.Event(0) + 188);
      goto LABEL_134;
    }

    OUTLINED_FUNCTION_6_62();
    v250 = v249 == 0xD000000000000015 && v247 == v248;
    if (v250 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v144 = *(type metadata accessor for MomentsEventData.Event(0) + 192);
      goto LABEL_134;
    }

    OUTLINED_FUNCTION_6_62();
    v254 = v253 == 0xD000000000000015 && v251 == v252;
    if (v254 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v198 = *(type metadata accessor for MomentsEventData.Event(0) + 196);
      goto LABEL_378;
    }

    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_18_44();
    v257 = v39 && v255 == v256;
    if (v257 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v198 = *(type metadata accessor for MomentsEventData.Event(0) + 200);
      goto LABEL_378;
    }

    OUTLINED_FUNCTION_6_62();
    v261 = v260 == 0xD000000000000013 && v258 == v259;
    if (v261 || (OUTLINED_FUNCTION_23_43() & 1) != 0)
    {
      v198 = *(type metadata accessor for MomentsEventData.Event(0) + 204);
      goto LABEL_378;
    }

    OUTLINED_FUNCTION_6_62();
    v265 = v264 == 0xD000000000000013 && v262 == v263;
    if (v265 || (OUTLINED_FUNCTION_23_43() & 1) != 0)
    {
      v198 = *(type metadata accessor for MomentsEventData.Event(0) + 208);
      goto LABEL_378;
    }

    OUTLINED_FUNCTION_6_62();
    v269 = v268 == 0xD000000000000016 && v266 == v267;
    if (v269 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v270 = type metadata accessor for MomentsEventData.Event(0);
      OUTLINED_FUNCTION_7_50(*(v270 + 212));
      if (v271)
      {
        goto LABEL_27;
      }

      goto LABEL_413;
    }

    OUTLINED_FUNCTION_18_44();
    v274 = v39 && v273 == v272;
    if (v274 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
    {
      v144 = *(type metadata accessor for MomentsEventData.Event(0) + 216);
    }

    else
    {
      OUTLINED_FUNCTION_18_44();
      v277 = v39 && v276 == v275;
      if (v277 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
      {
        v144 = *(type metadata accessor for MomentsEventData.Event(0) + 220);
      }

      else
      {
        OUTLINED_FUNCTION_14_49();
        v279 = v39 && v278 == 0xE800000000000000;
        if (v279 || (OUTLINED_FUNCTION_35_33() & 1) != 0)
        {
          v280 = type metadata accessor for MomentsEventData.Event(0);
          OUTLINED_FUNCTION_7_50(*(v280 + 224));
          if (v281)
          {
            goto LABEL_27;
          }

          goto LABEL_413;
        }

        OUTLINED_FUNCTION_18_44();
        v284 = v39 && v283 == v282;
        if (v284 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
        {
          v144 = *(type metadata accessor for MomentsEventData.Event(0) + 228);
        }

        else
        {
          OUTLINED_FUNCTION_18_44();
          v287 = v39 && v286 == v285;
          if (v287 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
          {
            v144 = *(type metadata accessor for MomentsEventData.Event(0) + 232);
          }

          else
          {
            OUTLINED_FUNCTION_6_62();
            v291 = v290 == 0xD000000000000011 && v288 == v289;
            if (!v291 && (OUTLINED_FUNCTION_10_28() & 1) == 0)
            {
              OUTLINED_FUNCTION_6_62();
              v295 = v294 == 0xD000000000000013 && v292 == v293;
              if (!v295 && (OUTLINED_FUNCTION_23_43() & 1) == 0)
              {
                v297 = v328 == 1380999527 && v329 == 0xE400000000000000;
                if (v297 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
                {
                  v298 = type metadata accessor for MomentsEventData.Event(0);
                  OUTLINED_FUNCTION_18_27(*(v298 + 244));
                  if ((*(v299 + 10) & 1) == 0)
                  {
                    v300 = *(v299 + 4);
                    v332 = *v299;
                    LOWORD(v333) = v300 & 0x1FF;
                    sub_193494798(&type metadata for MomentsEventData.PR, &off_1F07F0760, v331);
                    goto LABEL_28;
                  }

                  goto LABEL_27;
                }

                OUTLINED_FUNCTION_14_49();
                v302 = v39 && v301 == 0xE600000000000000;
                if (!v302 && (OUTLINED_FUNCTION_10_28() & 1) == 0)
                {
                  OUTLINED_FUNCTION_84_1();
                  OUTLINED_FUNCTION_18_44();
                  v305 = v39 && v304 == v303;
                  if (v305 || (OUTLINED_FUNCTION_10_28() & 1) != 0)
                  {
                    v306 = type metadata accessor for MomentsEventData.Event(0);
                    OUTLINED_FUNCTION_7_50(*(v306 + 252));
                    if (v307)
                    {
                      goto LABEL_27;
                    }
                  }

                  else
                  {
                    OUTLINED_FUNCTION_18_44();
                    v309 = v39 && v308 == 0xE900000000000065;
                    if (v309 || (OUTLINED_FUNCTION_30_28() & 1) != 0)
                    {
                      v310 = type metadata accessor for MomentsEventData.Event(0);
                      OUTLINED_FUNCTION_7_50(*(v310 + 256));
                      if (v311)
                      {
                        goto LABEL_27;
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_6_62();
                      v315 = v314 == 0xD000000000000015 && v312 == v313;
                      if (!v315 && (OUTLINED_FUNCTION_10_28() & 1) == 0)
                      {
                        sub_19349AB64();
                        v318 = OUTLINED_FUNCTION_13_9();
                        v320 = OUTLINED_FUNCTION_47_27(v318, v319);
                        MEMORY[0xD00000000000003E] = type metadata accessor for MomentsEventData.Event(v320);
                        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(0xD000000000000026);
                        sub_19378D884(v330, boxed_opaque_existential_1Tm, type metadata accessor for MomentsEventData.Event);
                        OUTLINED_FUNCTION_64_19();

                        goto LABEL_28;
                      }

                      v316 = type metadata accessor for MomentsEventData.Event(0);
                      OUTLINED_FUNCTION_7_50(*(v316 + 260));
                      if (v317)
                      {
                        goto LABEL_27;
                      }
                    }
                  }

                  goto LABEL_413;
                }

                v144 = *(type metadata accessor for MomentsEventData.Event(0) + 248);
                goto LABEL_134;
              }

              v198 = *(type metadata accessor for MomentsEventData.Event(0) + 240);
LABEL_378:
              v296 = *(v330 + v198);
              if (v296 != 2)
              {
                LOBYTE(v332) = v296 & 1;
                goto LABEL_9;
              }

              goto LABEL_27;
            }

            v144 = *(type metadata accessor for MomentsEventData.Event(0) + 236);
          }
        }
      }
    }

LABEL_134:
    OUTLINED_FUNCTION_18_27(v144);
    if ((*(v149 + 4) & 1) == 0)
    {
      LODWORD(v332) = *v149;
      goto LABEL_9;
    }

LABEL_27:
    v61 = v331;
    *v331 = 0u;
    *(v61 + 1) = 0u;
    goto LABEL_28;
  }

  v133 = *(type metadata accessor for MomentsEventData.Event(0) + 68);
LABEL_107:
  v40 = (v330 + v133);
LABEL_7:
  v41 = v40[1];
  if (!v41)
  {
    goto LABEL_27;
  }

  v332 = *v40;
  v333 = v41;
LABEL_9:
  sub_1934948FC();
LABEL_28:
  OUTLINED_FUNCTION_27();
}