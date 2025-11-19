uint64_t sub_1979587F4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v6 = sub_197A87298();
  OUTLINED_FUNCTION_6(v6);
  (*(v7 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1979588D4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1979588F8, 0, 0);
}

uint64_t sub_1979588F8()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_session);
  v2 = OUTLINED_FUNCTION_19(&unk_197A92C60);
  v3 = OUTLINED_FUNCTION_89_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_31_6(v3);

  return v6(v5);
}

uint64_t sub_197958988(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x614364616F6C6E75;
  }

  else
  {
    v3 = 0x647261646E617473;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEC00000064656863;
  }

  if (a2)
  {
    v5 = 0x614364616F6C6E75;
  }

  else
  {
    v5 = 0x647261646E617473;
  }

  if (a2)
  {
    v6 = 0xEC00000064656863;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_86();
  }

  return v8 & 1;
}

void InferenceProviderPrewarmInformation.init(bundleIdentifier:requestorAuditToken:sessionUUID:useCaseIdentifier:onBehalfOfPid:metadata:customAssetConfigurations:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_95_0();
  *v25 = v23;
  *(v25 + 8) = v24;
  v27 = v26[1];
  *(v25 + 16) = *v26;
  *(v25 + 32) = v27;
  v28 = *(type metadata accessor for InferenceProviderPrewarmInformation(0) + 24);
  v29 = sub_197A87298();
  OUTLINED_FUNCTION_6(v29);
  (*(v30 + 32))(v22 + v28, v21);
  OUTLINED_FUNCTION_82_1();
  *(v22 + v31) = a21;
  OUTLINED_FUNCTION_66();
}

uint64_t OUTLINED_FUNCTION_90_1(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEDC6A10](a1, a2, a2, v2, v2);
}

uint64_t OUTLINED_FUNCTION_90_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v14 + 4) = v13;
  *(v14 + 12) = 1024;
  v17 = *(v15 + *(a12 + 20));

  return sub_19796F6D0(v15, v12);
}

uint64_t OUTLINED_FUNCTION_90_4()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_90_5()
{
  result = v0;
  v3 = *(v1 - 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_93_1()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_93_2()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_93_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[3] = a1;
  v4[4] = a2;
  *v4 = v8;
  v4[5] = v7;
  v4[6] = v6;
  v4[7] = v5;
  v4[8] = v3;
  v4[9] = v2;
  v4[10] = 0;
  return v8;
}

uint64_t OUTLINED_FUNCTION_93_5()
{
  *(v1 - 96) = v0;

  return sub_197A873D8();
}

uint64_t OUTLINED_FUNCTION_93_7()
{
  v3 = *v0;
  *(v1 - 160) = v0[1];
  *(v1 - 144) = v3;

  return sub_197A878A8();
}

unint64_t sub_197958CA8()
{
  result = qword_1ED87E1E0;
  if (!qword_1ED87E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E1E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestPriority(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_197958DA4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_54_4();
  v5 = v4(v3);
  OUTLINED_FUNCTION_6(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_22();
  v9(v8);
  return a2;
}

uint64_t sub_197958DFC()
{
  OUTLINED_FUNCTION_71();
  v2 = v1(0);
  OUTLINED_FUNCTION_6(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return v0;
}

uint64_t getEnumTagSinglePayload for StateDump.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

double sub_197958EE0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v3 = type metadata accessor for InferenceProviderXPCRequest.Notification(0);
  v83 = *(v3 - 8);
  v4 = *(v83 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v84 = v6;
  v85 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v86 = &v79 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v89 = &v79 - v10;
  v11 = type metadata accessor for InferenceProviderXPCRequest(0);
  v79 = *(v11 - 8);
  v12 = *(v79 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v80 = v14;
  v81 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v79 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF491A0, &qword_197A8D2D8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v88 = (&v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v79 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF491A8, &qword_197A8D2E0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v87 = (&v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v79 - v26;
  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  LOBYTE(v28) = (*(v29 + 24))(v28, v29);
  v30 = a1[3];
  v31 = a1[4];
  v90 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  v32 = *(v31 + 8);
  if (v28)
  {
    v33 = sub_19795AC1C(&qword_1ED87DE60, &qword_1EAF491A8, &qword_197A8D2E0);
    v32(v22, v22, v33, v30, v31);
    v34 = v27;
    v35 = v87;
    sub_1979444C8(v27, v87, &qword_1EAF491A8, &qword_197A8D2E0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v37 = *v35;
    if (EnumCaseMultiPayload == 1)
    {
      v38 = sub_197A87C08();
      __swift_storeEnumTagSinglePayload(v89, 1, 1, v38);
      v39 = swift_allocObject();
      v39[2] = 0;
      v39[3] = 0;
      v39[4] = v91;
      v39[5] = v37;

      sub_19795CB2C();
    }

    else
    {
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF491B8, &qword_197A8D320);
      v47 = *(v35 + *(v46 + 64));
      v48 = v82;
      sub_197969D64(v35 + *(v46 + 48), v82, type metadata accessor for InferenceProviderXPCRequest);
      if (qword_1ED87E900 != -1)
      {
        swift_once();
      }

      v49 = sub_197A87608();
      __swift_project_value_buffer(v49, qword_1ED87DF90);
      v50 = sub_197A875E8();
      v51 = sub_197A87D48();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 134217984;
        *(v52 + 4) = v37;
        _os_log_impl(&dword_197941000, v50, v51, "Received message %llu.", v52, 0xCu);
        MEMORY[0x19A8EBE00](v52, -1, -1);
      }

      v53 = v90;
      v54 = v90[3];
      v55 = v90[4];
      __swift_project_boxed_opaque_existential_1(v90, v54);
      (*(v55 + 40))(v54, v55);
      sub_197947C44(v53, &v93);
      v56 = v81;
      sub_197969DC4(v48, v81, type metadata accessor for InferenceProviderXPCRequest);
      v57 = (*(v79 + 80) + 56) & ~*(v79 + 80);
      v58 = (v80 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
      v59 = swift_allocObject();
      sub_197945EF8(&v93, v59 + 16);
      sub_197969D64(v56, v59 + v57, type metadata accessor for InferenceProviderXPCRequest);
      *(v59 + v58) = v91;
      *(v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8)) = v37;

      sub_197969E24(v37, v47, &unk_197A8D330, v59);

      sub_1979693D8(v48, type metadata accessor for InferenceProviderXPCRequest);
    }

    v60 = &qword_1EAF491A8;
    v61 = &qword_197A8D2E0;
    v62 = v34;
  }

  else
  {
    v40 = sub_19795AC1C(qword_1ED87D4D0, &qword_1EAF491A0, &qword_197A8D2D8);
    v32(v16, v16, v40, v30, v31);
    v41 = v88;
    sub_1979444C8(v21, v88, &qword_1EAF491A0, &qword_197A8D2D8);
    v42 = swift_getEnumCaseMultiPayload();
    v43 = *v41;
    if (v42 == 1)
    {
      v44 = sub_197A87C08();
      __swift_storeEnumTagSinglePayload(v89, 1, 1, v44);
      v45 = swift_allocObject();
      v45[2] = 0;
      v45[3] = 0;
      v45[4] = v91;
      v45[5] = v43;

      sub_19795CB2C();
    }

    else
    {
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF491B0, &qword_197A8D2F8);
      v64 = *(v41 + *(v63 + 64));
      v65 = v86;
      sub_197969D64(v41 + *(v63 + 48), v86, type metadata accessor for InferenceProviderXPCRequest.Notification);
      if (qword_1ED87E900 != -1)
      {
        swift_once();
      }

      v66 = sub_197A87608();
      __swift_project_value_buffer(v66, qword_1ED87DF90);
      v67 = sub_197A875E8();
      v68 = sub_197A87D48();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 134217984;
        *(v69 + 4) = v43;
        _os_log_impl(&dword_197941000, v67, v68, "Received message %llu.", v69, 0xCu);
        MEMORY[0x19A8EBE00](v69, -1, -1);
      }

      v70 = v90;
      v71 = v90[3];
      v72 = v90[4];
      __swift_project_boxed_opaque_existential_1(v90, v71);
      (*(v72 + 40))(v71, v72);
      sub_197947C44(v70, &v93);
      v73 = v85;
      sub_197969DC4(v65, v85, type metadata accessor for InferenceProviderXPCRequest.Notification);
      v74 = (*(v83 + 80) + 56) & ~*(v83 + 80);
      v75 = (v84 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
      v76 = swift_allocObject();
      sub_197945EF8(&v93, v76 + 16);
      sub_197969D64(v73, v76 + v74, type metadata accessor for InferenceProviderXPCRequest.Notification);
      *(v76 + v75) = v91;
      *(v76 + ((v75 + 15) & 0xFFFFFFFFFFFFFFF8)) = v43;

      sub_197969E24(v43, v64, &unk_197A8D308, v76);

      sub_1979693D8(v65, type metadata accessor for InferenceProviderXPCRequest.Notification);
    }

    v60 = &qword_1EAF491A0;
    v61 = &qword_197A8D2D8;
    v62 = v21;
  }

  sub_19795B324(v62, v60, v61);
  v77 = v92;
  *(v92 + 32) = 0;
  result = 0.0;
  *v77 = 0u;
  v77[1] = 0u;
  return result;
}

uint64_t sub_197959A00()
{
  v1 = type metadata accessor for InferenceProviderXPCRequest.Notification(0);
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v6 = sub_197A87298();
  OUTLINED_FUNCTION_0(v6);
  (*(v7 + 8))(v0 + ((v3 + 56) & ~v3));
  OUTLINED_FUNCTION_6_3();
  v9 = v8 & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + v10);

  return MEMORY[0x1EEE6BDD0](v0, v9 + 8, v3 | 7);
}

uint64_t sub_197959AD8()
{
  v2 = *(type metadata accessor for InferenceProviderXPCRequest(0) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v6 = (v0 + v4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v64 = sub_197A877A8();
      if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v64))
      {
        OUTLINED_FUNCTION_36_0(v64);
        (*(v65 + 8))(v0 + v4, v64);
      }

      v66 = *(type metadata accessor for ClientData(0) + 20);
      if (!__swift_getEnumTagSinglePayload(&v6[v66], 1, v64))
      {
        OUTLINED_FUNCTION_36_0(v64);
        (*(v67 + 8))(&v6[v66]);
      }

      break;
    case 3u:
      v68 = *(v6 + 1);

      v69 = type metadata accessor for InferenceProviderPrewarmInformation(0);
      v70 = v69[6];
      v71 = sub_197A87298();
      OUTLINED_FUNCTION_0(v71);
      (*(v72 + 8))(&v6[v70]);
      v73 = *&v6[v69[7] + 8];

      v74 = *&v6[v69[9]];

      v75 = *&v6[v69[10]];
      goto LABEL_23;
    case 4u:
      v33 = *(v6 + 1);

      v34 = *(v6 + 3);

      v35 = type metadata accessor for InferenceProviderAssetDescriptor(0);
      v36 = &v6[*(v35 + 24)];
      v37 = type metadata accessor for CustomAssetConfiguration(0);
      if (!OUTLINED_FUNCTION_18_2(v37))
      {
        v38 = *(v36 + 1);

        v39 = *(v36 + 3);

        v40 = *(v1 + 24);
        v41 = sub_197A877A8();
        OUTLINED_FUNCTION_0(v41);
        (*(v42 + 8))(&v36[v40]);
        v43 = *&v36[*(v1 + 32) + 8];
      }

      v44 = *&v6[*(v35 + 28) + 8];

      v45 = *(type metadata accessor for InferenceProviderXPCRequest.TransitionAsset(0) + 28);
      v46 = sub_197A87298();
      OUTLINED_FUNCTION_0(v46);
      (*(v47 + 8))(&v6[v45]);
      break;
    case 5u:
      v48 = type metadata accessor for InferenceProviderXPCRequest.InferenceRequest(0);
      v49 = &v6[*(v48 + 20)];
      v50 = sub_197A877A8();
      if (!OUTLINED_FUNCTION_18_2(v50))
      {
        OUTLINED_FUNCTION_36_0(v1);
        (*(v51 + 8))(v49, v1);
      }

      v52 = *(type metadata accessor for ClientData(0) + 20);
      if (!__swift_getEnumTagSinglePayload(&v49[v52], 1, v1))
      {
        OUTLINED_FUNCTION_36_0(v1);
        (*(v53 + 8))(&v49[v52], v1);
      }

      v54 = &v6[*(v48 + 24)];
      v55 = *(v54 + 1);

      v56 = *(v54 + 3);

      v57 = *(v54 + 4);

      v58 = type metadata accessor for InferenceProviderRequestConfiguration(0);
      v59 = v58[7];
      v60 = sub_197A87298();
      v82 = v48;
      v61 = *(*(v60 - 8) + 8);
      v61(&v54[v59], v60);
      v61(&v54[v58[8]], v60);
      v61(&v54[v58[11]], v60);
      v62 = *&v54[v58[14] + 8];

      v63 = *&v54[v58[15] + 8];

      v61(&v6[*(v82 + 28)], v60);
      break;
    case 6u:
      v11 = *v6;

      v81 = type metadata accessor for InferenceProviderXPCRequest.InputStreamInferenceRequest(0);
      v12 = &v6[v81[5]];
      v13 = *(v12 + 1);

      v14 = type metadata accessor for RequestMetadata(0);
      v15 = &v12[v14[5]];
      v16 = sub_197A877A8();
      if (!__swift_getEnumTagSinglePayload(v15, 1, v16))
      {
        OUTLINED_FUNCTION_36_0(v16);
        (*(v17 + 8))(v15, v16);
      }

      v18 = *(type metadata accessor for ClientData(0) + 20);
      if (!__swift_getEnumTagSinglePayload(v15 + v18, 1, v16))
      {
        OUTLINED_FUNCTION_36_0(v16);
        (*(v19 + 8))(v15 + v18, v16);
      }

      v20 = v14[6];
      v21 = sub_197A87298();
      OUTLINED_FUNCTION_6(v21);
      v23 = *(v22 + 8);
      v23(&v12[v20], v21);
      v23(&v12[v14[7]], v21);
      v24 = *&v12[v14[8]];

      v23(&v12[v14[14]], v21);
      v25 = *&v12[v14[15] + 8];

      v26 = &v6[v81[6]];
      v27 = *(v26 + 1);

      v28 = *(v26 + 3);

      v29 = *(v26 + 4);

      v30 = type metadata accessor for InferenceProviderRequestConfiguration(0);
      v23(&v26[v30[7]], v21);
      v23(&v26[v30[8]], v21);
      v23(&v26[v30[11]], v21);
      v31 = *&v26[v30[14] + 8];

      v32 = *&v26[v30[15] + 8];

      v23(&v6[v81[7]], v21);
      break;
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
      v7 = sub_197A87298();
      OUTLINED_FUNCTION_0(v7);
      (*(v8 + 8))(v0 + v4);
      break;
    case 0xBu:
      v9 = sub_197A87298();
      OUTLINED_FUNCTION_0(v9);
      (*(v10 + 8))(v0 + v4);
      if (*&v6[*(type metadata accessor for InferenceProviderXPCRequest.WillCancelNotification(0) + 20)] >= 4uLL)
      {
LABEL_23:
      }

      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_6_3();
  v77 = v76 & 0xFFFFFFFFFFFFFFF8;
  v79 = *(v0 + v78);

  return MEMORY[0x1EEE6BDD0](v0, v77 + 8, v3 | 7);
}

uint64_t sub_19795A200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v9[3] = type metadata accessor for XPCReceivedMessageWrapper();
  v9[4] = &protocol witness table for XPCReceivedMessageWrapper;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  v7 = sub_197A87818();
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, a1, v7);
  sub_197958EE0(v9, a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

void InferenceProviderXPCRequest.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v98 = v0;
  v3 = v2;
  v93 = v4;
  v94 = type metadata accessor for InferenceProviderXPCRequest(0);
  v5 = OUTLINED_FUNCTION_6(v94);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v96 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_35();
  v92 = v10;
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_35();
  v91 = v12;
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_35();
  v90 = v14;
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_35();
  v89 = v16;
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_35();
  v95 = v18;
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_35();
  v88 = v20;
  OUTLINED_FUNCTION_134();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v81 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v81 - v26;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_77_1();
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v81 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v81 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v81 - v35;
  v38 = v3[3];
  v37 = v3[4];
  v97 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v38);
  v39 = v98;
  sub_197A88388();
  v98 = v39;
  if (v39)
  {
    goto LABEL_6;
  }

  v87 = v34;
  v82 = v31;
  v83 = v1;
  v84 = v27;
  v85 = v24;
  v86 = v36;
  v40 = v95;
  v41 = v96;
  OUTLINED_FUNCTION_113_0(v101, v102);
  v42 = sub_197A88198();
  if ((v43 & 1) != 0 || v42 != 2)
  {
    v47 = sub_197A87E88();
    v48 = swift_allocError();
    v50 = v49;
    v45 = v97;
    v51 = v97[4];
    OUTLINED_FUNCTION_113_0(v97, v97[3]);
    OUTLINED_FUNCTION_100_0();
    sub_197A88378();
    v99 = 0;
    v100 = 0xE000000000000000;
    sub_197A87E58();
    MEMORY[0x19A8EAC80](0xD000000000000040, 0x8000000197AA3710);
    OUTLINED_FUNCTION_113_0(v101, v102);
    sub_197A88198();
    v52 = sub_197A88148();
    MEMORY[0x19A8EAC80](v52);

    sub_197A87E78();
    (*(*(v47 - 8) + 104))(v50, *MEMORY[0x1E69E6B00], v47);
    v98 = v48;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm(v101);
    goto LABEL_7;
  }

  __swift_mutable_project_boxed_opaque_existential_1(v101, v102);
  sub_197958CA8();
  v44 = v98;
  sub_197A881B8();
  v98 = v44;
  if (v44)
  {
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1Tm(v101);
LABEL_6:
    v45 = v97;
LABEL_7:
    v46 = v45;
    goto LABEL_8;
  }

  v53 = v87;
  switch(v99)
  {
    case 1:
      OUTLINED_FUNCTION_51_5();
      sub_197A0DA7C();
      OUTLINED_FUNCTION_18_7();
      sub_197A881B8();
      v69 = v93;
      v98 = 0;
      v70 = v100;
      *v40 = v99;
      *(v40 + 8) = v70;
      OUTLINED_FUNCTION_100_0();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_6_8();
      v71 = v86;
      sub_197958DA4(v40, v86);
      v72 = v97;
      goto LABEL_27;
    case 2:
      OUTLINED_FUNCTION_51_5();
      v60 = OUTLINED_FUNCTION_54_4();
      type metadata accessor for InferenceProviderXPCRequest.ConvertData(v60);
      OUTLINED_FUNCTION_95_4();
      sub_19796A788(v61);
      v41 = v89;
      OUTLINED_FUNCTION_18_7();
      sub_197A881B8();
      v98 = 0;
      OUTLINED_FUNCTION_137_2();
      goto LABEL_25;
    case 3:
      OUTLINED_FUNCTION_51_5();
      v62 = OUTLINED_FUNCTION_54_4();
      type metadata accessor for InferenceProviderXPCRequest.PrewarmBundle(v62);
      OUTLINED_FUNCTION_94_2();
      sub_19796A788(v63);
      v41 = v90;
      OUTLINED_FUNCTION_18_7();
      sub_197A881B8();
      v98 = 0;
      OUTLINED_FUNCTION_137_2();
      goto LABEL_25;
    case 4:
      OUTLINED_FUNCTION_51_5();
      v56 = OUTLINED_FUNCTION_54_4();
      type metadata accessor for InferenceProviderXPCRequest.TransitionAsset(v56);
      OUTLINED_FUNCTION_98_3();
      sub_19796A788(v57);
      v53 = v82;
      OUTLINED_FUNCTION_18_7();
      sub_197A881B8();
      v98 = 0;
      OUTLINED_FUNCTION_61_3();
      goto LABEL_22;
    case 5:
      OUTLINED_FUNCTION_51_5();
      v73 = OUTLINED_FUNCTION_54_4();
      type metadata accessor for InferenceProviderXPCRequest.InferenceRequest(v73);
      OUTLINED_FUNCTION_88_3();
      sub_19796A788(v74);
      v53 = v83;
      OUTLINED_FUNCTION_18_7();
      sub_197A881B8();
      v98 = 0;
      OUTLINED_FUNCTION_61_3();
      goto LABEL_22;
    case 6:
      OUTLINED_FUNCTION_51_5();
      v75 = OUTLINED_FUNCTION_54_4();
      type metadata accessor for InferenceProviderXPCRequest.DirectStreamHandshake(v75);
      OUTLINED_FUNCTION_86_3();
      sub_19796A788(v76);
      v53 = v84;
      OUTLINED_FUNCTION_18_7();
      sub_197A881B8();
      v98 = 0;
      OUTLINED_FUNCTION_61_3();
      goto LABEL_22;
    case 7:
      __swift_mutable_project_boxed_opaque_existential_1(v101, v102);
      v64 = OUTLINED_FUNCTION_54_4();
      type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest(v64);
      OUTLINED_FUNCTION_91_4();
      sub_19796A788(v65);
      v66 = v85;
      v67 = v98;
      sub_197A881B8();
      v98 = v67;
      if (v67)
      {
        goto LABEL_5;
      }

      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_6_8();
      v68 = v66;
      break;
    case 8:
      OUTLINED_FUNCTION_51_5();
      v79 = OUTLINED_FUNCTION_54_4();
      type metadata accessor for InferenceProviderXPCRequest.AwaitEndStreamRequest(v79);
      OUTLINED_FUNCTION_84_4();
      sub_19796A788(v80);
      v41 = v88;
      OUTLINED_FUNCTION_18_7();
      sub_197A881B8();
      v98 = 0;
      OUTLINED_FUNCTION_137_2();
      goto LABEL_25;
    case 9:
      OUTLINED_FUNCTION_51_5();
      v58 = OUTLINED_FUNCTION_54_4();
      type metadata accessor for InferenceProviderXPCRequest.WillCancelNotification(v58);
      OUTLINED_FUNCTION_97_3();
      sub_19796A788(v59);
      v41 = v91;
      OUTLINED_FUNCTION_18_7();
      sub_197A881B8();
      v98 = 0;
      OUTLINED_FUNCTION_137_2();
      goto LABEL_25;
    case 10:
      OUTLINED_FUNCTION_51_5();
      v77 = OUTLINED_FUNCTION_54_4();
      type metadata accessor for InferenceProviderXPCRequest.InputStreamInferenceRequest(v77);
      OUTLINED_FUNCTION_85_4();
      sub_19796A788(v78);
      v41 = v92;
      OUTLINED_FUNCTION_18_7();
      sub_197A881B8();
      v98 = 0;
      OUTLINED_FUNCTION_137_2();
      goto LABEL_25;
    case 11:
      OUTLINED_FUNCTION_51_5();
      v54 = OUTLINED_FUNCTION_54_4();
      type metadata accessor for InferenceProviderXPCRequest.InputStreamEndedRequest(v54);
      OUTLINED_FUNCTION_100_2();
      sub_19796A788(v55);
      OUTLINED_FUNCTION_18_7();
      sub_197A881B8();
      v98 = 0;
      OUTLINED_FUNCTION_137_2();
LABEL_25:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_6_8();
      v68 = v41;
      break;
    default:
      OUTLINED_FUNCTION_51_5();
      sub_197A0DAD0();
      OUTLINED_FUNCTION_18_7();
      sub_197A881B8();
      v98 = 0;
      OUTLINED_FUNCTION_61_3();
LABEL_22:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_6_8();
      v68 = v53;
      break;
  }

  v71 = v86;
  sub_197958DA4(v68, v86);
  v72 = v97;
  v69 = v93;
LABEL_27:
  __swift_destroy_boxed_opaque_existential_1Tm(v101);
  OUTLINED_FUNCTION_6_8();
  sub_197958DA4(v71, v69);
  v46 = v72;
LABEL_8:
  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  OUTLINED_FUNCTION_93();
}

uint64_t sub_19795AC1C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_28_2()
{
  v3 = *(v0 - 256);
  v4 = *(v1 - 352);

  sub_197945194();
}

uint64_t OUTLINED_FUNCTION_28_3()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_28_4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v3 = *(v1 + 8);
  return v0 + v2;
}

void OUTLINED_FUNCTION_28_5()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[14];
  v4 = v0[10];
}

void OUTLINED_FUNCTION_28_8()
{

  JUMPOUT(0x19A8EAC80);
}

uint64_t OUTLINED_FUNCTION_28_9()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_28_11()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_19795ADB8()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 168);

  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = *(v0 + 104);
  v8 = *(v0 + 57);
  sub_197963674(*(v0 + 168), *(v0 + 176), *(v0 + 184));
  sub_197947A40(v5, &qword_1EAF49130, &qword_197A969C0);

  OUTLINED_FUNCTION_13();

  return v9();
}

void sub_19795AE74()
{
  OUTLINED_FUNCTION_92();
  v2 = v1;
  OUTLINED_FUNCTION_72_0();
  v5 = OUTLINED_FUNCTION_165_1(v3, v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_2(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_64_1();
  v13 = v0[4];
  v14 = OUTLINED_FUNCTION_113_0(v0, v0[3]);
  v2(v14);
  sub_197A883D8();
  v15 = OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_2_15(&qword_1ED87FC88);
  OUTLINED_FUNCTION_61_4();
  sub_197A880E8();
  v17 = *(v9 + 8);
  v18 = OUTLINED_FUNCTION_170_0();
  v19(v18);
  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_93();
}

uint64_t OUTLINED_FUNCTION_107_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *(v5 - 384);

  return sub_1979444C8(v4, v7, a3, a4);
}

uint64_t OUTLINED_FUNCTION_107_1()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t ModelXPCRequest.PrewarmSession.metadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for ModelXPCRequest.PrewarmSession(0) + 20));

  return sub_197A878A8();
}

void sub_19795B050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 16);
  v4 = *(a3 - 32);
  IPCResult<>.encode(to:)();
}

uint64_t OUTLINED_FUNCTION_161_0()
{

  return sub_197958DA4(v0, v1);
}

uint64_t OUTLINED_FUNCTION_161_1()
{

  return sub_197A880B8();
}

uint64_t TaskCancellingXPCReceivedMessage.__deallocating_deinit()
{
  TaskCancellingXPCReceivedMessage.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_19795B188()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_19795B26C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 40);
  v2 = sub_197A875E8();
  sub_197A87D48();
  v3 = OUTLINED_FUNCTION_18_5();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    OUTLINED_FUNCTION_10_9();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_6(v6, 3.852e-34);
    OUTLINED_FUNCTION_20_1(&dword_197941000, v7, v8, "Completed task for message %llu.");
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
  }

  OUTLINED_FUNCTION_13();

  return v9();
}

uint64_t sub_19795B324(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_19795B378(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_36_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_19795B3D4()
{
  OUTLINED_FUNCTION_33();
  if (qword_1ED87E900 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v1 = sub_197A87608();
  __swift_project_value_buffer(v1, qword_1ED87DF90);
  v2 = sub_197A875E8();
  sub_197A87D48();
  v3 = OUTLINED_FUNCTION_18_5();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[20];
    OUTLINED_FUNCTION_10_9();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_6(v6, 3.852e-34);
    OUTLINED_FUNCTION_20_1(&dword_197941000, v7, v8, "Replying to message %llu.");
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
  }

  v9 = v0[26];
  v10 = v0[17];

  v11 = v10[3];
  v12 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v13 = v0[10];
  v14 = v0[11];
  v15 = __swift_project_boxed_opaque_existential_1(v0 + 7, v13);
  (*(v12 + 16))(v15, v13, v14, v11, v12);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v16 = v0[25];

  OUTLINED_FUNCTION_13();

  return v17();
}

uint64_t sub_19795B534()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_19795B62C()
{
  OUTLINED_FUNCTION_7_2();
  v2 = *(v0 + *(v1 + 112));
  os_unfair_lock_lock((v2 + 24));
  sub_19795E71C((v2 + 16));

  os_unfair_lock_unlock((v2 + 24));
}

uint64_t sub_19795B69C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 232);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_151()
{

  return swift_task_create();
}

void OUTLINED_FUNCTION_151_0()
{
  v1 = v0[23];
  v2 = v0[13];
  v3 = v0[11];
}

uint64_t OUTLINED_FUNCTION_151_2()
{
  v2 = *(v0 + 464);
  v3 = *(v2 + 200);
  *(v0 + 568) = *(v2 + 208);
}

__n128 OUTLINED_FUNCTION_151_3@<Q0>(unint64_t a1@<X8>)
{
  v6 = (v4 + v3);
  v6->n128_u64[0] = a1;
  v6->n128_u64[1] = v1;
  result = *(v5 - 104);
  v6[1] = result;
  v6[2].n128_u8[0] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_151_4()
{

  return swift_retain_n();
}

unint64_t InferenceProviderAssetDescriptor.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49008, &qword_197A8BB38);
  OUTLINED_FUNCTION_28(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v27 = 60;
  v28 = 0xE100000000000000;
  MEMORY[0x19A8EAC80](v8, v9);
  sub_197A878A8();
  MEMORY[0x19A8EAC80](0x6F6973726576202CLL, 0xEB00000000203A6ELL);

  v10 = v27;
  v11 = v28;
  v12 = type metadata accessor for InferenceProviderAssetDescriptor(0);
  v13 = (v1 + *(v12 + 28));
  if (v13[1])
  {
    v14 = *v13;
    v15 = v13[1];
  }

  else
  {
    v14 = 0x29656E6F6E28;
    v15 = 0xE600000000000000;
  }

  v27 = v10;
  v28 = v11;
  sub_197A878A8();
  sub_197A878A8();
  MEMORY[0x19A8EAC80](v14, v15);

  v17 = v27;
  v16 = v28;
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_197A87E58();

  v27 = 0xD000000000000010;
  v28 = 0x8000000197AA2350;
  v18 = *(v12 + 24);
  sub_1979487E0();
  type metadata accessor for CustomAssetConfiguration(0);
  v19 = OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_64_0(v19, 1, v20);
  if (v21)
  {
    v22 = 0x29656E6F6E28;
    sub_197947A40(v7, &qword_1EAF49008, &qword_197A8BB38);
    v24 = 0xE600000000000000;
  }

  else
  {
    v22 = CustomAssetConfiguration.description.getter();
    v24 = v23;
    OUTLINED_FUNCTION_3_3();
    sub_19796B99C();
  }

  MEMORY[0x19A8EAC80](v22, v24);

  v27 = v17;
  v28 = v16;
  sub_197A878A8();
  v25 = OUTLINED_FUNCTION_60();
  MEMORY[0x19A8EAC80](v25);

  sub_197A878A8();
  MEMORY[0x19A8EAC80](62, 0xE100000000000000);

  return v27;
}

void *sub_19795BA78(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v6 = __OFADD__(v4, v3);
  v5 = v4 + v3;
  if (!v6)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v6))
      {
LABEL_9:
        *(a2 + 8 * v5) = a3;
        v6 = __OFADD__(v3, 1);
        v7 = v3 + 1;
        if (!v6)
        {
          result[1] = v7;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v6 = __OFADD__(v5, *result);
      v5 += *result;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_19795BAE8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  v7 = a1[4];
  return swift_willThrowTypedImpl();
}

uint64_t sub_19795BBBC()
{
  v1 = v0[17];
  v2 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  sub_197A87B68();
  if (v3)
  {
    v5 = v0[10];
    v6 = *(MEMORY[0x1E69E86C0] + 4);
    v7 = swift_task_alloc();
    v0[31] = v7;
    *v7 = v0;
    v7[1] = sub_197963BD0;
    OUTLINED_FUNCTION_38_9();

    return MEMORY[0x1EEE6DA40]();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    v14 = v8;
    v10 = *(v9 + 4);
    v11 = swift_task_alloc();
    v0[32] = v11;
    *v11 = v0;
    v12 = OUTLINED_FUNCTION_1_15(v11);

    return v14(v12);
  }
}

uint64_t sub_19795BD18()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  OUTLINED_FUNCTION_13();

  return v5();
}

void OUTLINED_FUNCTION_21_1()
{
  v2 = *v0;
  v3 = v0[1];
  *(v1 - 96) = 0;
  *(v1 - 88) = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_21_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);

  return sub_197947C44(v4 - 248, v4 - 328);
}

uint64_t OUTLINED_FUNCTION_21_4()
{
  v1 = v0[21];
  v2 = v0[17];
  result = v0[13];
  v4 = v0[8];
  return result;
}

uint64_t OUTLINED_FUNCTION_21_5()
{
  v4 = *(v3 + 16);
  v5 = v1 + *(v2 + 20);
  return v0;
}

uint64_t OUTLINED_FUNCTION_21_10()
{
}

void OUTLINED_FUNCTION_136()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = *(v0[2] + 40);
}

uint64_t sub_19795BF88()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  v3 = *(*v0 + 232);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = *(v1 + 200);
  v7 = *(v1 + 192);

  return MEMORY[0x1EEE6DFA0](sub_19795D348, v7, v6);
}

uint64_t sub_19795C0C4()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v6 = *(v2 + 240);
  v7 = *(v2 + 232);
  if (v0)
  {
    v8 = sub_197A35B34;
  }

  else
  {
    v8 = sub_19795D258;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

void sub_19795C1F8(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 24));
  if (*(*(a1 + 16) + 24))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_197A82BA4();
    }

    sub_19795C27C((*(a1 + 16) + 16), *(a1 + 16) + 40);

    os_unfair_lock_unlock((a1 + 24));
  }

  else
  {
    __break(1u);
  }
}

void *sub_19795C27C(void *result, uint64_t a2)
{
  v2 = result[2];
  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 8 * v2);
    v5 = result[1];
    if (v3 >= *result)
    {
      v3 = 0;
    }

    result[2] = v3;
    if (!__OFSUB__(v5, 1))
    {
      result[1] = v5 - 1;
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19795C2B8()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;

  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t InferenceProviderDescriptor.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_197A878A8();
  return OUTLINED_FUNCTION_22();
}

uint64_t sub_19795C3CC(uint64_t a1)
{
  v17 = v1[4];
  v3 = v1[6];
  v4 = v1[7];
  v16 = v1[2];
  v14 = v1[5];
  v15 = v1[3];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = v1[13];
  v11 = v1[14];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_19795C2B8;

  return sub_19795C6D8(a1, v16, v15, v6, v7, v8, v9, v10);
}

uint64_t sub_19795C4DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[13] = v23;
  v9[14] = v24;
  v9[11] = a8;
  v9[12] = v22;
  v9[9] = a5;
  v9[10] = a6;
  v9[7] = a3;
  v9[8] = a4;
  v9[5] = a1;
  v9[6] = a2;
  v11 = *(v22 - 8);
  v9[15] = v11;
  v12 = *(v11 + 64) + 15;
  v9[16] = swift_task_alloc();
  v9[17] = sub_197A88368();
  v13 = sub_197A87DB8();
  v9[18] = v13;
  v14 = *(v13 - 8);
  v9[19] = v14;
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  v17 = *v8;
  v9[20] = v16;
  v9[21] = v17;
  v9[22] = *(a7 + 16);
  v9[23] = *(a7 + 24);
  v19 = sub_197A87B58();
  v9[24] = v19;
  v9[25] = v18;

  return MEMORY[0x1EEE6DFA0](sub_19795C9B4, v19, v18);
}

uint64_t sub_19795C6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = v22;
  v8[18] = v23;
  v8[15] = v20;
  v8[16] = v21;
  v8[13] = v18;
  v8[14] = v19;
  v8[11] = a6;
  v8[12] = a8;
  v8[9] = a4;
  v8[10] = a5;
  v9 = *(v21 - 8);
  v8[19] = v9;
  v10 = *(v9 + 64) + 15;
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v8[23] = sub_197A88368();
  v11 = sub_197A87DB8();
  v8[24] = v11;
  v12 = *(v11 - 8);
  v8[25] = v12;
  v13 = *(v12 + 64) + 15;
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_projectBox();
  v15 = sub_197A87B58();
  v8[29] = v15;
  v8[30] = v14;

  return MEMORY[0x1EEE6DFA0](sub_19795BBBC, v15, v14);
}

uint64_t sub_19795C88C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19795C908(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_197A877A8();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_197A878A8();
  return OUTLINED_FUNCTION_22();
}

uint64_t sub_19795C9B4()
{
  v20 = v0;
  v18 = v0[22];
  v1 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v16 = v0[23];
  v17 = v0[10];
  v7 = v0[8];
  v15 = v0[9];
  v9 = v0[6];
  v8 = v0[7];
  v10 = swift_allocBox();
  v0[26] = v10;
  v0[27] = v11;
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v3);
  os_unfair_lock_lock((v1 + 24));
  sub_19795CEE4((v1 + 16), v7, v9, v8, v1, v10, v15, v17, &v19, v18, v6, v5, v16, v4);
  v0[28] = 0;
  os_unfair_lock_unlock((v1 + 24));
  v0[29] = v19;
  v12 = *(MEMORY[0x1E69E86C0] + 4);
  v13 = swift_task_alloc();
  v0[30] = v13;
  *v13 = v0;
  v13[1] = sub_19795BF88;
  OUTLINED_FUNCTION_38_9();

  return MEMORY[0x1EEE6DA40]();
}

void sub_19795CB2C()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_62();
  sub_1979671F8(v13, v14, &qword_1EAF48AB0, &unk_197A89150);
  v15 = sub_197A87C08();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v15);

  if (EnumTagSinglePayload == 1)
  {
    sub_197947A40(v0, &qword_1EAF48AB0, &unk_197A89150);
  }

  else
  {
    sub_197A87BF8();
    (*(*(v15 - 8) + 8))(v0, v15);
  }

  v18 = *(v2 + 16);
  v17 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (!v18)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_197947A40(v6, &qword_1EAF48AB0, &unk_197A89150);
    OUTLINED_FUNCTION_47_0();
    v20 = swift_allocObject();
    *(v20 + 16) = v4;
    *(v20 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_197A87B58();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_197A879A8();
  OUTLINED_FUNCTION_47_0();
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  *(v19 + 24) = v2;

  swift_task_create();

  sub_197947A40(v6, &qword_1EAF48AB0, &unk_197A89150);

LABEL_9:
  OUTLINED_FUNCTION_66();
}

uint64_t sub_19795CDE0()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_47_0();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t InferenceProviderDescriptor.description.getter()
{
  v1 = *v0;
  v2 = v0[3];
  if (v2)
  {
    v3 = v0[2];
    v6 = *v0;
    v7 = v0[1];
    sub_197A878A8();
    MEMORY[0x19A8EAC80](10272, 0xE200000000000000);
    MEMORY[0x19A8EAC80](v3, v2);
    MEMORY[0x19A8EAC80](41, 0xE100000000000000);
    return v6;
  }

  else
  {
    v4 = v0[1];
    sub_197A878A8();
  }

  return v1;
}

void sub_19795CEE4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v45 = a6;
  v46 = a8;
  v43 = a7;
  v44 = a5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v40 - v22;
  v42 = a10;
  sub_197A87B68();
  v24 = *a1;
  v25 = *(*a1 + 24);
  v41 = a9;
  v48 = a4;
  v47 = a3;
  if (v25)
  {
    v26 = v25 - 1;
    if (__OFSUB__(v25, 1))
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v26 < 0)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if (v26 >= v25)
    {
LABEL_15:
      __break(1u);
      return;
    }

    v27 = sub_197963CE4((v24 + 16), v24 + 40, v26);
    v40 = v14;
  }

  else
  {
    v40 = v14;
    v27 = 0;
  }

  v28 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v28);
  v29 = swift_allocObject();
  v29[2] = a2;
  v29[3] = a13;
  v30 = v43;
  v29[4] = v42;
  v29[5] = a11;
  v29[6] = a12;
  v29[7] = a13;
  v29[8] = a14;
  v29[9] = a2;
  v32 = v44;
  v31 = v45;
  v29[10] = v27;
  v29[11] = v32;
  v29[12] = v31;
  v29[13] = v30;
  v29[14] = v46;

  sub_197A878A8();
  swift_unknownObjectRetain_n();
  sub_19795CB2C();
  v34 = *(v24 + 24);
  v35 = v34 + 1;
  if (__OFADD__(v34, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  v36 = v33;
  v37 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *a1;
  if (*(*a1 + 16) < v35 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_197A82164(isUniquelyReferenced_nonNull_native, v35);
    v39 = *a1;
  }

  sub_19795BA78((v39 + 16), v39 + 40, v36);

  *v41 = v36;
}

uint64_t sub_19795D168()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[9];
  swift_unknownObjectRelease();
  v3 = v0[10];

  v4 = v0[11];

  v5 = v0[12];

  v6 = v0[14];

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_19795D1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_18_0(*(a1 + 8));
  }

  v7 = sub_197A877A8();
  v8 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_19795D258()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[23];
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v5);
  swift_beginAccess();
  (*(v4 + 40))(v2, v1, v3);
  OUTLINED_FUNCTION_8_10();

  OUTLINED_FUNCTION_13();

  return v6();
}

uint64_t sub_19795D348()
{
  v1 = v0[27];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  swift_beginAccess();
  (*(v3 + 16))(v2, v1, v4);
  result = __swift_getEnumTagSinglePayload(v2, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = v0[28];
    v8 = v0[20];
    sub_19795BAE8(v0[17], v0[16], v0[5]);
    v9 = v0[26];
    v10 = v0[20];
    v11 = v0[16];
    if (v7)
    {
      (*(v0[15] + 32))(v0[14], v0[16], v0[12]);
    }

    else
    {
      v13 = v0[26];
    }

    OUTLINED_FUNCTION_13();

    return v12();
  }

  return result;
}

void ModelXPCRequest.PrewarmSession.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_72_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A700, &unk_197A98548);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_13_1();
  sub_197964B2C();
  OUTLINED_FUNCTION_125();
  v6 = OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_2_15(&qword_1ED87FC88);
  OUTLINED_FUNCTION_140_2();
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_58();
  sub_197A880E8();
  if (!v0)
  {
    v10 = *(v1 + *(type metadata accessor for ModelXPCRequest.PrewarmSession(0) + 20));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B58, &qword_197A89650);
    sub_197964788(&unk_1ED87FC00);
    OUTLINED_FUNCTION_80_5();
    OUTLINED_FUNCTION_58();
    sub_197A88098();
  }

  v8 = OUTLINED_FUNCTION_79_4();
  v9(v8);
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_168();
}

uint64_t sub_19795D614()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 264);

  v2 = *(v0 + 232);
  v3 = *(v0 + 224);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = *(v0 + 104);
  v8 = *(v0 + 58);
  sub_197963674(*(v0 + 256), *(v0 + 248), *(v0 + 240));
  sub_197947A40(v5, &qword_1EAF49130, &qword_197A969C0);

  OUTLINED_FUNCTION_13();

  return v9();
}

uint64_t sub_19795D6D0()
{
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v2 + 272);
  *v4 = *v1;
  *(v3 + 280) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 96);
  if (v0)
  {
    v8 = sub_197A3B718;
  }

  else
  {
    v8 = sub_19795D614;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t OUTLINED_FUNCTION_76()
{

  return sub_197A878F8();
}

uint64_t OUTLINED_FUNCTION_76_4()
{
  v2 = v0[21];
  v3 = v0[11];
  v4 = v0[9];

  return swift_allocError();
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_19795D928()
{
  sub_197A882F8();
  UUIDIdentifier.hash(into:)();
  return sub_197A88358();
}

uint64_t static InferenceProviderDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (v9 = sub_197A88218(), result = 0, (v9 & 1) != 0))
  {
    v13[0] = v2;
    v13[1] = v3;
    v12[0] = v6;
    v12[1] = v5;
    sub_197A878A8();
    sub_197A878A8();
    v11 = static InferenceProviderDescriptor.Instance.== infix(_:_:)(v13, v12);

    if (v11)
    {
      return v4 ^ v7 ^ 1u;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t static InferenceProviderDescriptor.Instance.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_197A88218();
}

void *sub_19795DAAC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 InferenceProviderDescriptor.init(id:instance:hostedOnServer:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, unsigned __int8 a4@<W3>, __n128 *a5@<X8>)
{
  a5->n128_u64[0] = a1;
  a5->n128_u64[1] = a2;
  result = *a3;
  a5[1] = *a3;
  a5[2].n128_u8[0] = a4;
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_19795DB00(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t InferenceProviderDescriptor.instance.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
  return sub_197A878A8();
}

uint64_t InferenceProviderAssetDescriptor.customAssetConfiguration.getter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for InferenceProviderAssetDescriptor(v0) + 24);
  return sub_1979487E0();
}

void sub_19795DB68(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a3 - 24);
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  IPCResult<>.init(from:)();
}

uint64_t OUTLINED_FUNCTION_158_1(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_158_2()
{

  return sub_197A883D8();
}

uint64_t sub_19795DBCC(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_19795DC28(a1, *(v1 + 48), *(v1 + 56), *(v1 + 16), *(v1 + 24));
}

uint64_t OUTLINED_FUNCTION_155_1(uint64_t a1)
{
  v3 = a1 + *v1;

  return type metadata accessor for ModelServiceClient();
}

uint64_t sub_19795DC28(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a3;
  v34 = a2;
  v32 = a1;
  v6 = sub_197A87768();
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v29[1] = v29 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v29[2] = v29 - v11;
  v12 = type metadata accessor for ModelManagerError();
  sub_19795E388();
  v29[0] = v12;
  v13 = sub_197A88368();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v29 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
  v18 = sub_197A88368();
  v19 = *(*(v18 - 1) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v29 - v21;
  v23 = *(a5 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v26 = v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v22, v32, v18);
  sub_19795BAE8(v18, &v35, v26);
  (*(v23 + 16))(v17, v26, a5);
  swift_storeEnumTagMultiPayload();
  v34(v17);
  (*(v14 + 8))(v17, v13);
  return (*(v23 + 8))(v26, a5);
}

uint64_t sub_19795E0CC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
  v2 = sub_197A87B98();
  v3 = type metadata accessor for ModelManagerError();
  sub_19795E388();
  return sub_19795E4BC(a1, v2, v3);
}

void IPCResult<>.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v34 = v1;
  v35 = v2;
  v4 = v3;
  v36 = v5;
  v38 = v6;
  v7 = type metadata accessor for IPCResult();
  v8 = OUTLINED_FUNCTION_2(v7);
  v37 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_27();
  v14 = (v12 - v13);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - v19;
  v21 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  OUTLINED_FUNCTION_171_1();
  sub_197A88388();
  if (v0)
  {
    v22 = v4;
  }

  else
  {
    v32 = v14;
    v33 = v18;
    v31 = v20;
    __swift_mutable_project_boxed_opaque_existential_1(&v39, v40);
    OUTLINED_FUNCTION_171_1();
    v23 = sub_197A881A8();
    v30 = v41;
    __swift_mutable_project_boxed_opaque_existential_1(&v39, v40);
    if (v23)
    {
      v24 = v33;
      OUTLINED_FUNCTION_176_0();
      v25 = v37;
      v26 = v4;
      swift_storeEnumTagMultiPayload();
      v27 = v36;
    }

    else
    {
      v24 = v32;
      OUTLINED_FUNCTION_176_0();
      v27 = v36;
      v25 = v37;
      v26 = v4;
      swift_storeEnumTagMultiPayload();
    }

    v28 = *(v25 + 32);
    v29 = v31;
    v28(v31, v24, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(&v39);
    v28(v27, v29, v7);
    v22 = v26;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_93();
}

unint64_t sub_19795E388()
{
  result = qword_1ED8816D8;
  if (!qword_1ED8816D8)
  {
    type metadata accessor for ModelManagerError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8816D8);
  }

  return result;
}

uint64_t sub_19795E3E0(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
  v10 = *(*(sub_197A87B98() - 8) + 80);
  return sub_19795E0CC(a1);
}

uint64_t sub_19795E4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[1] = a2;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_197A88368();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v25 - v18;
  (*(v20 + 16))(v25 - v18, a1, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *(v12 + 32);
    v21(v15, v19, a3);
    v22 = swift_allocError();
    v21(v23, v15, a3);
    v25[3] = v22;
    return sub_197A87B78();
  }

  else
  {
    (*(v6 + 32))(v10, v19, v5);
    return sub_197A87B88();
  }
}

uint64_t sub_19795E71C(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + 16) && (v2 = sub_197960638(), (v3 & 1) != 0))
  {
    sub_197961900(*(v1 + 56) + 40 * v2, &v11);
    sub_19795B378(&v11, &qword_1EAF49A40, &qword_197A92768);
    if (qword_1ED87E900 != -1)
    {
      OUTLINED_FUNCTION_0_13();
      swift_once();
    }

    v4 = sub_197A87608();
    __swift_project_value_buffer(v4, qword_1ED87DF90);
    v5 = sub_197A875E8();
    v6 = sub_197A87D48();
    v7 = OUTLINED_FUNCTION_18_5();
    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_10_9();
      v9 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_6(v9, 3.852e-34);
      _os_log_impl(&dword_197941000, v5, v6, "Message %llu done.", v9, 0xCu);
      OUTLINED_FUNCTION_8();
      MEMORY[0x19A8EBE00]();
    }

    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    return sub_197961C44(&v11);
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    return sub_19795B378(&v11, &qword_1EAF49A40, &qword_197A92768);
  }
}

uint64_t sub_19795E88C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_4_0();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 104);

    OUTLINED_FUNCTION_13();

    return v13();
  }
}

uint64_t sub_19795E9A8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[22] = v0;

  if (!v0)
  {
    v10 = v3[19];
    v9 = v3[20];
  }

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_19795EAB0()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[8];
  v9 = v0[9];
  v10 = v0[7];
  sub_19795EB50(v1);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_13();

  return v11();
}

void sub_19795EB50(uint64_t a1)
{
  v2 = type metadata accessor for TaskCancellableMessage();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - v5;
  if (qword_1ED880278 != -1)
  {
    swift_once();
  }

  v7 = sub_197A87608();
  __swift_project_value_buffer(v7, qword_1ED880470);
  (*(v3 + 16))(v6, a1, v2);
  v8 = sub_197A875E8();
  v9 = sub_197A87D48();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    v11 = sub_1979BA440(v2);
    (*(v3 + 8))(v6, v2);
    *(v10 + 4) = v11;
    _os_log_impl(&dword_197941000, v8, v9, "Returning response from message %llu.", v10, 0xCu);
    MEMORY[0x19A8EBE00](v10, -1, -1);
  }

  else
  {
    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_19795ED34()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  sub_19795B62C();
  v4 = v0[5];
  v5 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v3[3] = v4;
  v3[4] = v5;
  __swift_allocate_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_36_0(v4);
  (*(v6 + 16))();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_13();

  return v7();
}

uint64_t OUTLINED_FUNCTION_153_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_153_1()
{
  v2 = v0[21];
  result = v0[22];
  v3 = v0[7];
  return result;
}

uint64_t *OUTLINED_FUNCTION_153_2(uint64_t a1)
{
  v1[5] = a1;

  return __swift_allocate_boxed_opaque_existential_1(v1);
}

uint64_t sub_19795EE70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void Session.Metadata.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v67 = v0;
  v2 = v1;
  v61 = v3;
  v4 = sub_197A87298();
  v5 = OUTLINED_FUNCTION_2(v4);
  v62 = v6;
  v63 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_0();
  v59 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_6(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  v17 = sub_197A87118();
  v18 = OUTLINED_FUNCTION_2(v17);
  v64 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1_0();
  v24 = v23 - v22;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A258, &qword_197A96B98);
  OUTLINED_FUNCTION_2(v66);
  v60 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v28);
  v65 = type metadata accessor for Session.Metadata(0);
  v29 = OUTLINED_FUNCTION_6(v65);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_1_0();
  v68 = v2;
  v69 = v33 - v32;
  v34 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1979548A8();
  v35 = v67;
  sub_197A883A8();
  if (v35)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
  }

  else
  {
    v67 = v16;
    LOBYTE(v70) = 0;
    OUTLINED_FUNCTION_18_9();
    sub_1979548FC(v36, v37);
    sub_197A87FD8();
    v38 = v69;
    (*(v64 + 32))(v69, v24, v17);
    OUTLINED_FUNCTION_12_9(1);
    v39 = sub_197A87FA8();
    v40 = v38;
    v41 = v65;
    v42 = (v40 + v65[5]);
    *v42 = v39;
    v42[1] = v43;
    OUTLINED_FUNCTION_12_9(2);
    *(v40 + v41[6]) = sub_197A87FE8();
    OUTLINED_FUNCTION_12_9(3);
    *(v40 + v41[7]) = sub_197A87FC8();
    OUTLINED_FUNCTION_12_9(4);
    v44 = sub_197A87FA8();
    v45 = (v40 + v41[8]);
    *v45 = v44;
    v45[1] = v46;
    LOBYTE(v70) = 5;
    sub_1979542E4(&qword_1ED87FC80);
    v47 = v67;
    sub_197A87FD8();
    sub_19795EE70(v47, v69 + v41[9]);
    LOBYTE(v70) = 6;
    OUTLINED_FUNCTION_3_11();
    sub_1979548FC(v48, v49);
    v50 = v59;
    v51 = v63;
    OUTLINED_FUNCTION_52_6();
    sub_197A87FD8();
    v52 = v41[10];
    v53 = v69;
    (*(v62 + 32))(v69 + v52, v50, v51);
    sub_19795F5C4();
    sub_197A87FD8();
    v54 = v71;
    v55 = v53 + v65[11];
    *v55 = v70;
    *(v55 + 8) = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49030, &qword_197A96B90);
    sub_197954774(&qword_1ED87DD78, &qword_1ED87DE58);
    OUTLINED_FUNCTION_52_6();
    sub_197A87F88();
    v56 = OUTLINED_FUNCTION_24_9();
    v57(v56);
    *(v53 + v65[12]) = v70;
    sub_19795F818();
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    sub_19795F870(v53, type metadata accessor for Session.Metadata);
  }

  OUTLINED_FUNCTION_93();
}

unint64_t sub_19795F5C4()
{
  result = qword_1ED87E520[0];
  if (!qword_1ED87E520[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED87E520);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for Version(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 12) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Version(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t Version.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49148, &qword_197A8CEB8);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v18 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_197954698();
  sub_197A883A8();
  if (!v2)
  {
    v21 = 0;
    v14 = OUTLINED_FUNCTION_1_5();
    v20 = 1;
    v16 = OUTLINED_FUNCTION_1_5();
    v19 = 2;
    v17 = OUTLINED_FUNCTION_1_5();
    (*(v8 + 8))(v12, v5);
    *a2 = v14;
    a2[1] = v16;
    a2[2] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_19795F818()
{
  OUTLINED_FUNCTION_71();
  v2 = v1(0);
  OUTLINED_FUNCTION_6(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return v0;
}

uint64_t sub_19795F870(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_19795F8C8()
{
  result = qword_1ED87F890;
  if (!qword_1ED87F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F890);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_156_0()
{

  return sub_197A883A8();
}

uint64_t OUTLINED_FUNCTION_79_2()
{
  v2 = *(v0 + 128);

  return sub_197A87608();
}

uint64_t OUTLINED_FUNCTION_79_5(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  *(v5 - 440) = v4;
  v7 = *(v5 - 392);

  return sub_1979444C8(v4, v7, a3, a4);
}

uint64_t OUTLINED_FUNCTION_79_6()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
}

void OUTLINED_FUNCTION_79_7()
{
  v1 = v0[21];
  v2 = v0[11];
  v3 = v0[9];
}

uint64_t OUTLINED_FUNCTION_79_9()
{
  result = v0;
  v3 = *(v1 - 168);
  return result;
}

void Session.__allocating_init(assetBundleURI:useCaseID:onBehalfOfPID:parentOfOnBehalfOfPid:loggingIdentifier:sessionSetID:inferenceInterfaceVersion:customAssetConfigurations:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int *a21, uint64_t a22)
{
  OUTLINED_FUNCTION_67();
  v144 = v22;
  v26 = v25;
  OUTLINED_FUNCTION_84_1(v27, v28, v29, v171);
  v160 = v30;
  v157 = v31;
  v154 = v32;
  v34 = v33;
  v35 = type metadata accessor for ModelManagerError();
  v36 = OUTLINED_FUNCTION_28(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_29_1();
  v149 = sub_197A87118();
  v44 = OUTLINED_FUNCTION_2(v149);
  v148 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_15_5(v48);
  v147 = sub_197A87298();
  v49 = OUTLINED_FUNCTION_2(v147);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_34(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A0, &qword_197A920D8);
  v57 = OUTLINED_FUNCTION_10_7(v56, v169);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_68();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_34(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  v64 = OUTLINED_FUNCTION_28(v63);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_35();
  v69 = v68;
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v133 - v71;
  v73 = a21[1];
  v153 = *a21;
  v152 = v73;
  v151 = a21[2];
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B08, &qword_197A895D8);
  v75 = OUTLINED_FUNCTION_74_4();
  v137 = xmmword_197A88E50;
  *(v75 + 16) = xmmword_197A88E50;
  v76 = sub_197A870F8();
  v77 = v160;
  *(v75 + 32) = v76;
  *(v75 + 40) = v78;
  if (v77 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v77 <= 0x7FFFFFFF)
  {
    v135 = v74;
    v161 = v23;
    v136 = v24;
    v139 = v51;
    v142 = v34;
    v74 = a22;
    v141 = v26;
    sub_1979444C8(v26, v72, &qword_1EAF499A8, &qword_197A92B00);
    v24 = v72;
    if (qword_1ED8803B0 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

  __break(1u);
LABEL_20:
  OUTLINED_FUNCTION_3_0();
LABEL_4:
  v79 = qword_1ED880258;
  v80 = &type metadata for VoucherProvider;
  v171[1] = &type metadata for VoucherProvider;
  v171[2] = &off_1F0C11F50;

  v81 = v159;
  v82 = v156;
  v83 = v158;
  sub_197945194();

  sub_1979444C8(v81, v161, &qword_1EAF499A0, &qword_197A920D8);
  v140 = v24;
  v150 = v69;
  sub_1979444C8(v24, v69, &qword_1EAF499A8, &qword_197A92B00);
  OUTLINED_FUNCTION_86_1();
  OUTLINED_FUNCTION_85_1();
  v169[1] = &type metadata for VoucherProvider;
  v169[2] = &off_1F0C11F50;
  v84 = OUTLINED_FUNCTION_37_2(v167);
  __swift_mutable_project_boxed_opaque_existential_1(&v168, &type metadata for VoucherProvider);
  v167[2] = type metadata accessor for ModelServiceClient();
  v167[3] = &protocol witness table for ModelServiceClient;
  v165[1] = &off_1F0C11F50;
  v166 = v79;
  v85 = OUTLINED_FUNCTION_31_3();
  sub_197947C44(v85, v84 + 16);
  v86 = (v84 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID);
  v87 = v157;
  *v86 = v154;
  v86[1] = v87;
  *(v84 + OBJC_IVAR____TtC20ModelManagerServices7Session_parentOfOnBehalfOfPID) = v155;
  v88 = (v84 + OBJC_IVAR____TtC20ModelManagerServices7Session_loggingIdentifier);
  *v88 = v82;
  v88[1] = v83;
  sub_197A878A8();
  sub_197A878A8();
  v89 = v143;
  _s20ModelManagerServices14UUIDIdentifierVACyxGycfC_0();
  v90 = v139;
  v91 = *(v139 + 32);
  v144 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  v92 = v147;
  v91(v84 + OBJC_IVAR____TtC20ModelManagerServices7Session_uuid, v89);
  OUTLINED_FUNCTION_54_2((v84 + OBJC_IVAR____TtC20ModelManagerServices7Session_inferenceInterfaceVersion));
  *(v84 + OBJC_IVAR____TtC20ModelManagerServices7Session_customAssetConfigurations) = v74;
  v93 = v160;
  v94 = v74;
  v134 = v91;
  if (v160 == -1)
  {
    __swift_project_boxed_opaque_existential_1(v163, v165[0]);
    sub_197A878A8();
    v83 = 0;
    v160 = sub_197A1101C();
    v96 = v92;
    if (qword_1ED87D2E0 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v98 = sub_197A87608();
    v93 = OUTLINED_FUNCTION_80_2(v98, qword_1ED87D2E8);
    v91 = sub_197A87D78();
    v99 = os_log_type_enabled(v93, v91);
    v97 = v145;
    if (v99)
    {
      v83 = OUTLINED_FUNCTION_65_2();
      *v83 = 67109120;
      v80 = v160;
      *(v83 + 4) = v160;
      _os_log_impl(&dword_197941000, v93, v91, "No onBehalfOfPID specified, using originator PID: %d", v83, 8u);
      OUTLINED_FUNCTION_44();

      OUTLINED_FUNCTION_69_2();
    }

    else
    {

      OUTLINED_FUNCTION_66_4();
      v95 = v160;
    }
  }

  else
  {
    sub_197A878A8();
    OUTLINED_FUNCTION_69_2();
    v96 = v92;
    v97 = v145;
  }

  v160 = v95;
  *(v84 + OBJC_IVAR____TtC20ModelManagerServices7Session_onBehalfOfPID) = v95;
  v100 = OUTLINED_FUNCTION_101_0(&v170);
  sub_1979444C8(v100, v97, v101, v102);
  OUTLINED_FUNCTION_39_3();
  if (v103)
  {
    sub_197947A40(v97, &qword_1EAF499A8, &qword_197A92B00);
    (*(v90 + 16))(v80, v84 + v144, v96);
  }

  else
  {
    v104 = OUTLINED_FUNCTION_43_4();
    v134(v104);
  }

  v105 = v148;
  v106 = v161;
  sub_1979444C8(v161, v83, &qword_1EAF499A0, &qword_197A920D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    OUTLINED_FUNCTION_104_0();

    OUTLINED_FUNCTION_12_4();
    v107 = v83;
    v108 = v138;
    sub_19794B170(v107, v138, v109);
    sub_197947A40(v91, &qword_1EAF499A8, &qword_197A92B00);
    sub_197947A40(v106, &qword_1EAF499A0, &qword_197A920D8);
    (*(v90 + 8))(v80, v96);
    __swift_destroy_boxed_opaque_existential_1Tm(&v166);
    *(v84 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) = MEMORY[0x1E69E7CC0];
    sub_19794B170(v108, v84 + OBJC_IVAR____TtC20ModelManagerServices7Session_underlyingMetadata, v93);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B0, &qword_197A96BA0);
    swift_storeEnumTagMultiPayload();
    v110 = v149;
  }

  else
  {
    v111 = *(v105 + 32);
    v112 = v146;
    v143 = v94;
    v110 = v149;
    v111();
    v113 = OUTLINED_FUNCTION_74_4();
    *(v113 + 16) = v137;
    v114 = sub_197A870F8();
    *(v84 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) = v113;
    *(v113 + 32) = v114;
    *(v113 + 40) = v115;
    v116 = v84 + OBJC_IVAR____TtC20ModelManagerServices7Session_underlyingMetadata;
    OUTLINED_FUNCTION_97_0();
    v117(v116, v112, v110);
    v118 = type metadata accessor for Session.Metadata(0);
    v119 = *(v90 + 16);
    v119(v116 + v118[9], v84 + v144, v96);
    v119(v116 + v118[10], v80, v96);
    OUTLINED_FUNCTION_95_1();
    OUTLINED_FUNCTION_34_2(v120);
    *(v116 + v118[6]) = v160;
    OUTLINED_FUNCTION_46_3(v118[7]);
    OUTLINED_FUNCTION_34_2(v121);
    OUTLINED_FUNCTION_54_2((v116 + v118[11]));
    *(v116 + v118[12]) = v143;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B0, &qword_197A96BA0);
    OUTLINED_FUNCTION_93_1();
    sub_197A87C08();
    v122 = OUTLINED_FUNCTION_101_0(&v162);
    OUTLINED_FUNCTION_21_3(v122, v123, v124, v125);
    OUTLINED_FUNCTION_53_3();
    v126 = swift_allocObject();
    OUTLINED_FUNCTION_61_5(v126);
    *(v116 + 72) = v84;

    OUTLINED_FUNCTION_16_4();
    sub_19795CB2C();

    sub_197947A40(v150, &qword_1EAF499A8, &qword_197A92B00);
    v127 = OUTLINED_FUNCTION_58_4();
    sub_197947A40(v127, v128, v129);
    (*(v105 + 8))(v146, v110);
    (*(v90 + 8))(v80, v96);
    __swift_destroy_boxed_opaque_existential_1Tm(&v166);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v163);
  OUTLINED_FUNCTION_48_3(v165);
  (*(v105 + 8))(v142, v110);
  v130 = OUTLINED_FUNCTION_72_3();
  sub_197947A40(v130, v131, v132);
  OUTLINED_FUNCTION_48_3(&v164);
  OUTLINED_FUNCTION_20_6();
  OUTLINED_FUNCTION_66();
}

unint64_t sub_197960638()
{
  v1 = *(v0 + 40);
  sub_197A882E8();
  v2 = OUTLINED_FUNCTION_46_5();

  return sub_197960824(v2, v3);
}

uint64_t sub_19796068C(uint64_t a1, uint64_t a2)
{
  v4 = sub_197A87298();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t OUTLINED_FUNCTION_57_3()
{
  result = __swift_getEnumTagSinglePayload(v0, 1, v2);
  v4 = *(v1 + 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_57_6()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 64);
  result = *(v1 - 112);
  v5 = *(v1 - 128);
  return result;
}

unint64_t OUTLINED_FUNCTION_57_8@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(v3 - 96) = a2;
  *(v3 - 80) = a1;
  *(v3 - 72) = v2;
  *(v3 - 97) = 0;

  return sub_1979C437C();
}

uint64_t OUTLINED_FUNCTION_57_9()
{
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);

  return swift_beginAccess();
}

uint64_t sub_1979607E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_197960824(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_75_2()
{

  return sub_197947A40(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_75_3@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(v1 + 8) = v2;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = v3;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;

  return sub_1979487E0();
}

uint64_t OUTLINED_FUNCTION_75_5()
{
  v2 = *(v0 + 168);
  v3 = *(v0 + 72);

  return swift_allocError();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Session.requestPrewarm()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_66_0();
  sub_197A87C08();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_58_7(v8);
  OUTLINED_FUNCTION_16_4();
  sub_1979CC804();
}

uint64_t sub_197960A4C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_8_0(v4);
  *v5 = v6;
  v5[1] = sub_197960FB0;
  v7 = OUTLINED_FUNCTION_81();

  return sub_197960AEC(v7, v8, v9, v3);
}

uint64_t sub_197960B0C()
{
  OUTLINED_FUNCTION_33();
  v1 = *(OUTLINED_FUNCTION_6_10(*(v0 + 16)) + 32);
  OUTLINED_FUNCTION_26();
  v8 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_11_6(v5);
  OUTLINED_FUNCTION_113_1();

  return v6();
}

uint64_t OUTLINED_FUNCTION_62_1@<X0>(char a1@<W8>)
{
  *(v1 - 128) = a1;
  result = v1 - 128;
  v4 = *(v1 - 184);
  v3 = *(v1 - 176);
  return result;
}

void *OUTLINED_FUNCTION_62_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 - 256);
  *v3 = a1;
  result = v3;
  v5 = *(v2 - 168);
  return result;
}

void OUTLINED_FUNCTION_62_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 8u);
}

uint64_t sub_197960CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_197A87298();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t Session.Metadata.id.getter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Session.Metadata(v0) + 36);
  return sub_197944528();
}

uint64_t UUIDIdentifier.hash(into:)()
{
  sub_197A87298();
  sub_197954654(&qword_1ED880FE0);

  return sub_197A878F8();
}

uint64_t sub_197960E00(uint64_t (*a1)(void))
{
  v1 = a1(0);
  OUTLINED_FUNCTION_99(*(v1 + 32));
  return OUTLINED_FUNCTION_22();
}

uint64_t sub_197960E38()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  OUTLINED_FUNCTION_13();

  return v5();
}

uint64_t OUTLINED_FUNCTION_109_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 - 256) = a2;
  *(v3 - 448) = a1;

  return type metadata accessor for ModelManagerError();
}

void OUTLINED_FUNCTION_109_1(float a1)
{
  *v1 = a1;

  JUMPOUT(0x19A8EBBD0);
}

uint64_t OUTLINED_FUNCTION_109_2(uint64_t a1)
{

  return sub_197958DA4(a1, v1);
}

void IPCResult<>.encode(to:)()
{
  OUTLINED_FUNCTION_92();
  v4 = v3;
  v33 = *(v3 + 24);
  OUTLINED_FUNCTION_34_0();
  v32 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_83_1();
  v10 = *(v9 + 16);
  OUTLINED_FUNCTION_34_0();
  v31 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_34_0();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1_0();
  v22 = v21 - v20;
  v24 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  OUTLINED_FUNCTION_61();
  sub_197A883B8();
  (*(v16 + 16))(v22, v0, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *(v32 + 32);
    v26 = OUTLINED_FUNCTION_61_3();
    v27(v26);
    OUTLINED_FUNCTION_179_1();
    sub_197A881D8();
    if (!v1)
    {
      OUTLINED_FUNCTION_179_1();
      OUTLINED_FUNCTION_61_3();
      sub_197A881E8();
    }

    v28 = *(v32 + 8);
    v29 = OUTLINED_FUNCTION_61_3();
    v30(v29);
  }

  else
  {
    (*(v31 + 32))(v2, v22, v10);
    OUTLINED_FUNCTION_179_1();
    sub_197A881D8();
    if (!v1)
    {
      OUTLINED_FUNCTION_179_1();
      sub_197A881E8();
    }

    (*(v31 + 8))(v2, v10);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v34);
  OUTLINED_FUNCTION_93();
}

uint64_t sub_19796127C()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 168);
  v6 = *(v0 + 136);
  v7 = *(v0 + 144);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 8);
  v10 = *(AssociatedConformanceWitness + 16);
  type metadata accessor for TaskCancellingXPCReceivedMessage();
  sub_197961900(v6, v0 + 16);
  (*(v2 + 16))(v1, v7, v4);
  *(v0 + 208) = sub_1979623AC((v0 + 16), v1);
  if ((*(AssociatedConformanceWitness + 48))(v4, AssociatedConformanceWitness))
  {
    v11 = *(v0 + 160);
    sub_197961900(*(v0 + 136), v0 + 96);
    OUTLINED_FUNCTION_34_4();
    v12 = swift_allocObject();
    *(v0 + 216) = v12;
    *(v12 + 16) = v11;
    sub_197945EF8((v0 + 96), v12 + 24);
    v13 = swift_task_alloc();
    *(v0 + 224) = v13;
    *v13 = v0;
    v13[1] = sub_197977368;
    v15 = *(v0 + 152);
    v14 = *(v0 + 160);
    v16 = OUTLINED_FUNCTION_29_3();

    return sub_1979D7DBC(v16, v17, v18, v12);
  }

  else
  {
    v20 = swift_task_alloc();
    *(v0 + 232) = v20;
    *v20 = v0;
    v20[1] = sub_19795B69C;
    v22 = *(v0 + 152);
    v21 = *(v0 + 160);

    return sub_1979614C8();
  }
}

uint64_t sub_197961494()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  OUTLINED_FUNCTION_34_4();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1979614C8()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  v1[9] = v4;
  v1[10] = v0;
  v1[8] = v5;
  OUTLINED_FUNCTION_14_7();
  v7 = *(v6 + 104);
  v9 = *(v8 + 88);
  v10 = *(v8 + 80);
  v14 = (*(v9 + 24) + **(v9 + 24));
  v11 = *(*(v9 + 24) + 4);
  v12 = swift_task_alloc();
  v1[11] = v12;
  *v12 = v1;
  v12[1] = sub_19795B534;

  return v14(v1 + 2, v3, v10, v9);
}

__n128 TaskCancellingXPCReceivedMessage.auditToken.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 20);
  v3 = *(v1 + 36);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t UUIDIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_197A87298();
  v5 = OUTLINED_FUNCTION_2(v4);
  v24 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUIDIdentifier();
  v11 = OUTLINED_FUNCTION_2(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v21 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_197A88398();
  if (!v2)
  {
    v22 = v10;
    v23 = v13;
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    sub_197954654(&qword_1ED880270);
    v19 = v27;
    sub_197A88238();
    (*(v24 + 32))(v17, v19, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    (*(v23 + 32))(v25, v17, v22);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1979618C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return UUIDIdentifier.init(from:)(a1, a3);
}

uint64_t sub_197961900(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_36_0(v3);
  (*v4)(a2);
  return a2;
}

void sub_197961964(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23[-1] - v13;
  OUTLINED_FUNCTION_7_2();
  v16 = *(v4 + *(v15 + 112));
  os_unfair_lock_lock(v16 + 6);
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  sub_197A87E58();

  strcpy(v23, "IPC Message ");
  BYTE5(v23[1]) = 0;
  HIWORD(v23[1]) = -5120;
  v22 = a1;
  v17 = sub_197A88148();
  MEMORY[0x19A8EAC80](v17);

  MEMORY[0x19A8EAC80](0x6B73615420, 0xE500000000000000);
  v18 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v18);
  OUTLINED_FUNCTION_34_4();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;
  *(v19 + 48) = a3;
  *(v19 + 56) = a4;

  sub_19795CB2C();
  v21 = v20;
  v23[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF491C8, &unk_197A98130);
  v23[4] = &off_1F0C10D50;
  v23[0] = v21;
  sub_197961C44(v23);
  os_unfair_lock_unlock(v16 + 6);
}

uint64_t sub_197961B4C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);

  OUTLINED_FUNCTION_34_4();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_197961B88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_8_0(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_2_5(v8);

  return sub_197961F14(v10, v11, v12, v13, v4, v6, v5);
}

uint64_t sub_197961C44(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 24))
  {
    sub_197945EF8(a1, v13);
    v3 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *v1;
    result = sub_197961DA0();
    *v1 = v11;
  }

  else
  {
    sub_19795B378(a1, &qword_1EAF49A40, &qword_197A92768);
    v5 = *v1;
    v6 = sub_197960638();
    if (v7)
    {
      v8 = v6;
      v9 = *v2;
      swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v10 = *(*v2 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A48, &qword_197A92770);
      sub_197A87EB8();
      sub_197945EF8((*(v12 + 56) + 40 * v8), v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49190, &unk_197A925E0);
      sub_197A87EC8();
      *v2 = v12;
    }

    else
    {
      v14 = 0;
      memset(v13, 0, sizeof(v13));
    }

    return sub_19795B378(v13, &qword_1EAF49A40, &qword_197A92768);
  }

  return result;
}

uint64_t sub_197961DA0()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_197960638();
  OUTLINED_FUNCTION_5_8(v3, v4);
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A48, &qword_197A92770);
  if ((OUTLINED_FUNCTION_85_5() & 1) == 0)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_78_6();
  v10 = sub_197960638();
  if ((v9 & 1) != (v11 & 1))
  {
LABEL_13:
    result = sub_197A88288();
    __break(1u);
    return result;
  }

  v8 = v10;
LABEL_5:
  if (v9)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((*(*v1 + 56) + 40 * v8));
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_165();

    return sub_197961F10(v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_165();

    return sub_197961EA4(v16, v17, v18, v19);
  }
}

uint64_t sub_197961EA4(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_197961F10(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_197961F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 57) = a5;
  *(v7 + 16) = a4;
  return OUTLINED_FUNCTION_32_0(sub_197961F38, 0);
}

uint64_t sub_197961F38()
{
  OUTLINED_FUNCTION_49_0();
  if (qword_1ED87E900 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v1 = sub_197A87608();
  *(v0 + 40) = __swift_project_value_buffer(v1, qword_1ED87DF90);
  v2 = sub_197A875E8();
  v3 = sub_197A87D48();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    OUTLINED_FUNCTION_10_9();
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_197941000, v2, v3, "Starting task for message %llu.", v5, 0xCu);
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
  }

  v6 = *(v0 + 57);

  if (v6 == 1)
  {
    v7 = sub_197A875E8();
    sub_197A87D48();
    v8 = OUTLINED_FUNCTION_18_5();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 16);
      OUTLINED_FUNCTION_10_9();
      v11 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_6(v11, 3.852e-34);
      OUTLINED_FUNCTION_20_1(&dword_197941000, v12, v13, "Precancelling task for message %llu.");
      OUTLINED_FUNCTION_8();
      MEMORY[0x19A8EBE00]();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AE0, &qword_197A92780);
    sub_197A87F08();
  }

  v18 = (*(v0 + 24) + **(v0 + 24));
  v14 = *(*(v0 + 24) + 4);
  v15 = swift_task_alloc();
  *(v0 + 48) = v15;
  *v15 = v0;
  v15[1] = sub_19795B188;
  v16 = *(v0 + 32);

  return v18();
}

uint64_t sub_197962198()
{
  OUTLINED_FUNCTION_18();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  OUTLINED_FUNCTION_19_7(*(v3 + 64));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_8_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_23_5(v6);

  return sub_19796228C(v8, v9, v10, v11);
}

uint64_t sub_19796228C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[17] = a1;
  v4[18] = a2;
  v5 = *a3;
  v4[21] = *(*a3 + 88);
  v4[22] = *(v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[23] = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  v4[24] = v7;
  v8 = *(v7 + 64) + 15;
  v4[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19796127C, 0, 0);
}

uint64_t sub_1979623AC(uint64_t *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_19796241C(a1, a2);
  return v7;
}

void OUTLINED_FUNCTION_159_1()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t *sub_19796241C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  *(v2 + 16) = (*(v7 + 32))(v6, v7) & 1;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  *(v2 + 20) = (*(v9 + 48))(v8, v9);
  *(v2 + 28) = v10;
  *(v2 + 36) = v11;
  *(v2 + 44) = v12;
  (*(*(*(v5 + 80) - 8) + 32))(v2 + *(*v2 + 120), a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t sub_19796255C()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  v16 = *MEMORY[0x1E69E9840];
  v1 = v0[35];
  v3 = v0[32];
  v2 = v0[33];
  v5 = v0[30];
  v4 = v0[31];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  OUTLINED_FUNCTION_46();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_23_10();
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_112();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

double sub_197962638@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  CountedSet.makeIterator()(a1, v7);
  v4 = *v2;

  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t CountedSet.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = sub_197A878A8();
  v8 = -1 << *(v7 + 32);
  v9 = ~v8;
  *a2 = v7;
  v12 = *(v7 + 64);
  result = v7 + 64;
  v11 = v12;
  v13 = -v8;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  a2[1] = result;
  a2[2] = v9;
  a2[3] = 0;
  a2[4] = v14 & v11;
  return result;
}

uint64_t Session.Metadata.customAssetConfigurations.getter()
{
  v1 = *(v0 + *(type metadata accessor for Session.Metadata(0) + 48));

  return sub_197A878A8();
}

uint64_t Session.Metadata.useCaseID.getter()
{
  v0 = type metadata accessor for Session.Metadata(0);
  OUTLINED_FUNCTION_99(*(v0 + 20));
  return OUTLINED_FUNCTION_22();
}

uint64_t sub_197962758()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *(v4 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 128) = v0;

  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_197962878()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = v0[2];
  sub_19794B118();

  OUTLINED_FUNCTION_15();

  return v6();
}

uint64_t sub_197962918()
{
  OUTLINED_FUNCTION_18();
  v14 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  v5 = *(v4 + 288);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  v2[37] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_67_10(v2[30]);
  }

  else
  {
    v8 = v2[31];
    OUTLINED_FUNCTION_67_10(v2[30]);
    sub_197947A40(v8, &qword_1EAF49130, &qword_197A969C0);
  }

  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_197962A70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_197962AC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_197962B20()
{
  result = qword_1ED87FD60;
  if (!qword_1ED87FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FD60);
  }

  return result;
}

uint64_t sub_197962BA8()
{
  OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  v0 = OUTLINED_FUNCTION_53_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_197962C08()
{
  OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  v0 = OUTLINED_FUNCTION_63();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

void ModelXPCRequest.CreateSessionRequest.Response.init(from:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_61_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_39_9(v7, v19);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A6C8, &qword_197A98510);
  OUTLINED_FUNCTION_2(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_28_0();
  Session = type metadata accessor for ModelXPCRequest.CreateSessionRequest.Response(v12);
  v14 = OUTLINED_FUNCTION_28(Session);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_48_5();
  sub_197962B20();
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_156_0();
  if (!v1)
  {
    OUTLINED_FUNCTION_3_16(&qword_1ED87FC80);
    OUTLINED_FUNCTION_13_8();
    OUTLINED_FUNCTION_108_4();
    sub_197A87FD8();
    v17 = OUTLINED_FUNCTION_34_7();
    v18(v17);
    OUTLINED_FUNCTION_91();
    sub_19794B118();
    OUTLINED_FUNCTION_126_3();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_130_1();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_197962E18()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v0 + 200);
  *v4 = *v2;
  *(v3 + 208) = v1;

  OUTLINED_FUNCTION_52_5();
  v7 = *(v0 + 48);
  sub_1979636E8(*(v6 + 128), type metadata accessor for ModelXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_197962F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v19 = OUTLINED_FUNCTION_29_4();
  sub_1979D9E24(v19, &qword_1EAF49C08, &qword_197A92C98);
  if (!v15)
  {
    OUTLINED_FUNCTION_11_4();
    sub_197947900(v18, &qword_1EAF49C08);
    sub_197947900(0, &qword_1EAF499A8);
    OUTLINED_FUNCTION_4_6();
    sub_1979636E8(v17, v33);

    OUTLINED_FUNCTION_15();
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_28_5();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v20, v21);
  v22 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_3_7();
  sub_19796361C();
  sub_197947900(v15, &qword_1EAF49C08);
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v14, v23);
  OUTLINED_FUNCTION_98_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (!OUTLINED_FUNCTION_53_5())
  {

    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7();
    }

    v34 = sub_197A87608();
    v35 = OUTLINED_FUNCTION_37_4(v34, qword_1ED87FB48);
    MEMORY[0x19A8EBBD0](v35);
    sub_197A875E8();
    sub_197A87D68();
    OUTLINED_FUNCTION_230();
    if (OUTLINED_FUNCTION_96_1())
    {
      OUTLINED_FUNCTION_56();
      v36 = OUTLINED_FUNCTION_142_1();
      OUTLINED_FUNCTION_229(5.7779e-34);
      v37 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_158_1(v37);
      OUTLINED_FUNCTION_92_2(&dword_197941000, v38, v39, "Unexpected non ModelManagerError from the daemon %@");
      sub_197947900(v36, &qword_1EAF48A90);
      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_37();
    }

    OUTLINED_FUNCTION_237();
    v40 = OUTLINED_FUNCTION_82_4();
    OUTLINED_FUNCTION_27_6(v40, v41);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_201();

    sub_197947900(v17, &qword_1EAF499A8);
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_132_1();
  OUTLINED_FUNCTION_116();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_154_0();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v49 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v49, qword_1ED87FB48);
      sub_197A878A8();
      v50 = sub_197A875E8();
      sub_197A87D68();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v51);
        OUTLINED_FUNCTION_146(&dword_197941000, v52, v53, "ModelManager received unentitled request. Expected entitlement %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      v54 = OUTLINED_FUNCTION_49_6();
      OUTLINED_FUNCTION_55_4(v54, v55);
      OUTLINED_FUNCTION_226();
      break;
    case 5:
      OUTLINED_FUNCTION_154_0();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v42 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v42, qword_1ED87FB48);
      sub_197A878A8();
      v43 = sub_197A875E8();
      sub_197A87D78();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v44);
        OUTLINED_FUNCTION_146(&dword_197941000, v45, v46, "IPC Connection errors, evict session to create new session on next connection %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      OUTLINED_FUNCTION_180();
      sub_197944528();
      OUTLINED_FUNCTION_25_5();
      if (v48)
      {
        sub_197947900(v47, &qword_1EAF499A8);
      }

      else
      {
        v71 = OUTLINED_FUNCTION_14_8();
        v72(v71);
        sub_197A21F90();
        v73 = OUTLINED_FUNCTION_60_3();
        v74(v73);
      }

      v75 = OUTLINED_FUNCTION_46_4();
      OUTLINED_FUNCTION_54_3(v75, v76);
      OUTLINED_FUNCTION_201();
      v32 = v17;
      goto LABEL_37;
    case 31:
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v25 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v25, qword_1ED87FB48);
      sub_197A875E8();
      v26 = sub_197A87D68();
      if (OUTLINED_FUNCTION_55_0(v26))
      {
        v27 = OUTLINED_FUNCTION_204();
        OUTLINED_FUNCTION_161(v27);
        OUTLINED_FUNCTION_91_3(&dword_197941000, v28, v29, "ModelManager received request that's supported on internal only");
        OUTLINED_FUNCTION_29();
      }

      OUTLINED_FUNCTION_238();
      v30 = OUTLINED_FUNCTION_82_4();
      OUTLINED_FUNCTION_27_6(v30, v31);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_201();
      v32 = v22;
      goto LABEL_37;
    default:
      v57 = *(v16 + 96);
      v56 = *(v16 + 104);
      OUTLINED_FUNCTION_3_7();
      sub_19796361C();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v58 = OUTLINED_FUNCTION_221();
      v59 = __swift_project_value_buffer(v58, qword_1ED87FB48);
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_116();
      sub_1979557E8();
      v50 = sub_197A875E8();
      v60 = sub_197A87D58();
      v61 = OUTLINED_FUNCTION_118_1(v60);
      v62 = *(v16 + 88);
      if (v61)
      {
        OUTLINED_FUNCTION_131_1();
        OUTLINED_FUNCTION_113();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_124_2();
        OUTLINED_FUNCTION_51_4(5.778e-34);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        v63 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v62, v64);
        v65 = OUTLINED_FUNCTION_16_6();
        *(v16 + 24) = type metadata accessor for ModelXPCRequest.CreateSessionRequest(v65);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C10, &qword_197A92CA0);
        v66 = OUTLINED_FUNCTION_231();
        OUTLINED_FUNCTION_232(v66, v67, v68);
        OUTLINED_FUNCTION_228();
        *(v15 + 14) = v63;
        OUTLINED_FUNCTION_78_4(&dword_197941000, v69, v70, "Passing along %@ in response to %s");
        sub_197947900(v18, &qword_1EAF48A90);
        OUTLINED_FUNCTION_36_3();
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {

        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v62, v77);
      }

      v78 = OUTLINED_FUNCTION_48_4();
      OUTLINED_FUNCTION_2_10();
      sub_1979557E8();
      a9 = v78;
      swift_willThrow();
      OUTLINED_FUNCTION_1_10();
      sub_1979636E8(v59, v79);
      break;
  }

  v32 = v50;
LABEL_37:
  sub_197947900(v32, &qword_1EAF499A8);

LABEL_38:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
LABEL_39:
  OUTLINED_FUNCTION_142();

  return v81(v80, v81, v82, v83, v84, v85, v86, v87, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_19796361C()
{
  OUTLINED_FUNCTION_71();
  v2 = v1(0);
  OUTLINED_FUNCTION_6(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return v0;
}

uint64_t sub_197963674(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != 1)
  {

    return sub_197955620(a2, a3);
  }

  return result;
}

uint64_t sub_1979636E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_197963740()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  OUTLINED_FUNCTION_13();

  return v5();
}

uint64_t sub_197963824()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = *(v2 + 32);
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_197A29500, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v7();
  }
}

uint64_t sub_197963948()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroy_54Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v2 = v0[9];

  OUTLINED_FUNCTION_53_3();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t objectdestroyTm_1(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t objectdestroyTm_2()
{
  _Block_release(*(v0 + 16));

  v1 = OUTLINED_FUNCTION_10_13();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t objectdestroyTm_3()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  OUTLINED_FUNCTION_34_4();

  return MEMORY[0x1EEE6BDD0](v5, v6, v7);
}

uint64_t sub_197963BD0()
{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  v2 = *(*v0 + 248);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = *(v1 + 240);
  v6 = *(v1 + 232);

  return MEMORY[0x1EEE6DFA0](sub_197963D18, v6, v5);
}

uint64_t sub_197963CE4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[2] + a3;
  v4 = *a1;
  if (v3 < *a1)
  {
    v4 = 0;
  }

  v5 = *(a2 + 8 * (v3 - v4));
}

uint64_t sub_197963D18()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_20();
  v7 = v1;
  v3 = *(v2 + 4);
  v4 = swift_task_alloc();
  *(v0 + 256) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_1_15(v4);

  return v7(v5);
}

uint64_t sub_197963DB4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t CountedSet.count(of:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_197A878C8();
  if (v8)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t UUIDIdentifier.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_197A87298();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_197963EFC()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_session);
  v2 = OUTLINED_FUNCTION_19(&unk_197A92C48);
  v3 = OUTLINED_FUNCTION_89_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_31_6(v3);

  return v6(v5);
}

uint64_t sub_197963F8C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_197A87298();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for ModelManagerError();
  v3[10] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v9 = type metadata accessor for ModelXPCRequest(0);
  v3[15] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49BD8, &qword_197A92C50);
  v3[17] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v13 = type metadata accessor for IPCSessionWrapper(0);
  v3[19] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197965364, v2, 0);
}

uint64_t CountedSet.add(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  OUTLINED_FUNCTION_34_0();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_0();
  v13 = v12 - v11;
  v14 = *v2;
  if (*(v14 + 16) && (v15 = sub_197964450(a1, v5, *(a2 + 24)), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
  }

  else
  {
    v17 = 0;
  }

  result = (*(v7 + 16))(v13, a1, v5);
  if (v17 == -1)
  {
    __break(1u);
  }

  else
  {
    v19 = *(a2 + 24);
    sub_197A878B8();
    return sub_197A878D8();
  }

  return result;
}

uint64_t Session.Metadata.assetBundleURI.getter()
{
  OUTLINED_FUNCTION_58_0();
  v0 = sub_197A87118();
  OUTLINED_FUNCTION_6(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_22();

  return v4(v3);
}

uint64_t ModelXPCRequest.CreateSessionRequest.alreadyLockedInferenceProvider.getter()
{
  v2 = OUTLINED_FUNCTION_58_0();
  v3 = v1 + *(type metadata accessor for ModelXPCRequest.CreateSessionRequest(v2) + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *v0 = *v3;
  *(v0 + 8) = v5;
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  *(v0 + 32) = *(v3 + 32);

  return sub_19794A620(v4, v5);
}

BOOL Session.Metadata.useFoundationModelsExtensionEntitlement.getter()
{
  if (sub_197A870F8() != 0xD000000000000026 || 0x8000000197AA3E20 != v1)
  {
    v3 = sub_197A88218();

    if (v3)
    {
      goto LABEL_13;
    }

    if (sub_197A870F8() != 0xD000000000000030 || 0x8000000197AA3E50 != v4)
    {
      v6 = sub_197A88218();

      if ((v6 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }
  }

LABEL_13:
  v7 = *(v0 + *(type metadata accessor for Session.Metadata(0) + 48));
  if (v7)
  {
    return *(v7 + 16) != 0;
  }

  return 0;
}

unint64_t sub_197964450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_197A878E8();

  return sub_1979644AC(a1, v9, a2, a3);
}

unint64_t sub_1979644AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v17 = a4;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v4;
  v19 = v4 + 64;
  v10 = ~(-1 << *(v4 + 32));
  for (i = v11 & v10; ((1 << i) & *(v19 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v10)
  {
    (*(v6 + 16))(v9, *(v18 + 48) + *(v6 + 72) * i, a3);
    v13 = *(v17 + 8);
    v14 = sub_197A87918();
    (*(v6 + 8))(v9, a3);
    if (v14)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_197964634()
{
  OUTLINED_FUNCTION_121_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_70(v3);
  if (*(v4 + 84) == v1)
  {
    v5 = OUTLINED_FUNCTION_114_1();

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }

  else
  {
    v9 = *(v0 + *(v2 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return OUTLINED_FUNCTION_172_0(v9);
  }
}

uint64_t sub_1979646E0(char a1)
{
  if (a1)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 0x496E6F6973736573;
  }
}

uint64_t sub_19796471C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B58, &qword_197A89650);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_197964788(uint64_t a1)
{
  result = OUTLINED_FUNCTION_137_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B58, &qword_197A89650);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void ModelXPCRequest.PrewarmSession.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A708, &qword_197A98558);
  v22 = OUTLINED_FUNCTION_2(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_88_0();
  v12 = type metadata accessor for ModelXPCRequest.PrewarmSession(v11);
  v13 = OUTLINED_FUNCTION_6(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_0();
  v18 = v17 - v16;
  v19 = v2[4];
  OUTLINED_FUNCTION_113_0(v2, v2[3]);
  sub_197964B2C();
  sub_197A883A8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    OUTLINED_FUNCTION_3_16(&qword_1ED87FC80);
    OUTLINED_FUNCTION_140_2();
    sub_197A87FD8();
    sub_19794B118();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B58, &qword_197A89650);
    OUTLINED_FUNCTION_112_4();
    sub_197964788(&unk_1ED87F888);
    sub_197A87F88();
    v20 = OUTLINED_FUNCTION_167_0();
    v21(v20, v22);
    *(v18 + *(v12 + 20)) = v23;
    sub_197953C7C();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    sub_19795130C(v18, type metadata accessor for ModelXPCRequest.PrewarmSession);
  }

  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_93();
}

unint64_t sub_197964AD8()
{
  result = qword_1ED87F8F8;
  if (!qword_1ED87F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F8F8);
  }

  return result;
}

unint64_t sub_197964B2C()
{
  result = qword_1ED87F928;
  if (!qword_1ED87F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87F928);
  }

  return result;
}

uint64_t sub_197964BC0()
{
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v2 + 208);
  *v4 = *v1;
  *(v3 + 216) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 96);
  if (v0)
  {
    v8 = sub_197A3B65C;
  }

  else
  {
    v8 = sub_19795ADB8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_197964CDC()
{
  OUTLINED_FUNCTION_18();
  v11 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v2 + 184);
  *v4 = *v1;
  *(v3 + 192) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 144);
  if (v0)
  {
    v8 = sub_197A3F818;
  }

  else
  {
    v8 = sub_197964E24;
  }

  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_197964E24()
{
  OUTLINED_FUNCTION_122();
  v30 = *MEMORY[0x1E69E9840];
  if (qword_1ED880218 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  v1 = *(v0 + 128);
  v2 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v2, qword_1ED880220);

  v3 = sub_197A875E8();
  v4 = sub_197A87D38();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 160);
    v6 = *(v0 + 128);
    OUTLINED_FUNCTION_56();
    v29 = OUTLINED_FUNCTION_41_0();
    *v1 = 136315138;
    v7 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
    v8 = sub_197A87298();
    OUTLINED_FUNCTION_3_14(v8);
    (*(v9 + 16))(v5, v6 + v7);
    _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    sub_197947A40(v5, &qword_1EAF49130, &qword_197A969C0);
    v10 = OUTLINED_FUNCTION_90();
    sub_197948834(v10, v11, v12);
    OUTLINED_FUNCTION_77_0();
    *(v1 + 4) = v5;
    OUTLINED_FUNCTION_31(&dword_197941000, v13, v14, "Sending session prewarm request message for %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_29();
  }

  v15 = *(v0 + 152);
  v16 = *(v0 + 128);
  OUTLINED_FUNCTION_6_11(*(v0 + 144));
  v17 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  v18 = sub_197A87298();
  OUTLINED_FUNCTION_3_14(v18);
  (*(v19 + 16))(v15, v16 + v17);
  v20 = *(v4 + 56);
  OUTLINED_FUNCTION_23();
  v28 = (v21 + *v21);
  v23 = *(v22 + 4);
  v24 = swift_task_alloc();
  *(v0 + 200) = v24;
  *v24 = v0;
  v24[1] = sub_19797623C;
  v25 = *(v0 + 136);
  v26 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_32_1(*(v0 + 152));
  OUTLINED_FUNCTION_118_4();

  return v28();
}

void OUTLINED_FUNCTION_115_1(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_115_2()
{
  v1 = *(v0 - 112);
  v2 = *(*(v0 - 120) + 8);
  return *(v0 - 104);
}

uint64_t OUTLINED_FUNCTION_115_4()
{
  v2 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v6 = v0[34];
  v5 = v0[35];
  v8 = v0[32];
  v7 = v0[33];
  v9 = v0[31];
}

uint64_t ModelXPCSender.prewarmSession(id:metadata:)()
{
  OUTLINED_FUNCTION_9();
  v3 = OUTLINED_FUNCTION_250(v1, v2);
  v4 = type metadata accessor for ModelXPCRequest.PrewarmSession(v3);
  *(v0 + 40) = v4;
  OUTLINED_FUNCTION_28(v4);
  v6 = *(v5 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_78_0();
  v7 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1979651C4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return ModelXPCSender.prewarmSession(id:metadata:)();
}

uint64_t sub_19796526C()
{
  OUTLINED_FUNCTION_18();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  v4 = v0[3];
  sub_197944528();
  *(v1 + *(v2 + 20)) = v4;
  sub_197A878A8();
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_268(v5);

  return sub_197965340(v6, v7);
}

uint64_t sub_197965340(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_197963EFC, 0, 0);
}

uint64_t sub_197965364()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_99_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_88_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_30_7(v1);

  return sub_19794ECC8();
}

uint64_t sub_1979653E8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 184);
  *v4 = *v2;
  *(v3 + 192) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 48);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1979654FC()
{
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_24_6();
  sub_197947900(v0, &qword_1EAF499A8);
  v4 = OUTLINED_FUNCTION_21_5();
  v5(v4);
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_181(v6);
  OUTLINED_FUNCTION_5_7();
  sub_197955F04(v7, v3);
  OUTLINED_FUNCTION_10_10(&qword_1ED880268);
  sub_197A0508C();
  OUTLINED_FUNCTION_57_2();
  *v2 = v8;
  v2[1] = sub_197975858;
  v9 = v1[17];
  v11 = v1[15];
  v10 = v1[16];
  OUTLINED_FUNCTION_8_7(v12, v1[18]);
  OUTLINED_FUNCTION_169_0();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_197965638()
{
  OUTLINED_FUNCTION_17_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  result = OUTLINED_FUNCTION_70(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_53_2();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0;
  }

  return result;
}

unint64_t sub_197965700()
{
  result = qword_1ED87FBF8;
  if (!qword_1ED87FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FBF8);
  }

  return result;
}

uint64_t sub_19796576C()
{
  OUTLINED_FUNCTION_33();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_28(v1);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_8_0(v6);
  *v7 = v8;
  v7[1] = sub_197960E38;
  v9 = OUTLINED_FUNCTION_81();

  return sub_197965958(v9, v10, v11, v12, v13);
}

uint64_t sub_197965850()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 16);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = *(OUTLINED_FUNCTION_27_9() + 16);
  OUTLINED_FUNCTION_26();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_75(v7);
  *v8 = v9;
  v8[1] = sub_19796D708;
  v10 = OUTLINED_FUNCTION_5(*(v0 + 24));

  return v11(v10);
}

uint64_t sub_197965958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_197965850, 0, 0);
}

uint64_t sub_197965978()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return ModelServiceClient.deleteSessionRequest(id:)();
}

uint64_t ModelServiceClient.deleteSessionRequest(id:)()
{
  OUTLINED_FUNCTION_18();
  v11 = *MEMORY[0x1E69E9840];
  v1[10] = v2;
  v1[11] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_28(v3);
  v5 = *(v4 + 64);
  v1[12] = OUTLINED_FUNCTION_90_4();
  v1[13] = swift_task_alloc();
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t OUTLINED_FUNCTION_124_0()
{
  v3 = *(v0 - 184);
  v2 = *(v0 - 176);

  return sub_197A87FD8();
}

uint64_t OUTLINED_FUNCTION_124_1()
{

  return sub_19796F6D0(v1, v0);
}

uint64_t OUTLINED_FUNCTION_124_5()
{

  return swift_allocObject();
}

uint64_t ModelXPCSender.deleteSession(id:)()
{
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_87_2(v1);
  v3 = type metadata accessor for ModelXPCRequest.DeleteSessionRequest(v2);
  OUTLINED_FUNCTION_28(v3);
  v5 = *(v4 + 64);
  *(v0 + 32) = OUTLINED_FUNCTION_78_0();
  v6 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_197965BD0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_197960FB0;

  return ModelXPCSender.deleteSession(id:)();
}

uint64_t sub_197965C68()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_98_1();
  sub_197944528();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_139(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_177_0(v1);

  return sub_197965D90(v3, v4);
}

uint64_t sub_197965D00()
{
  OUTLINED_FUNCTION_9();
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_session);
  v2 = OUTLINED_FUNCTION_19(&unk_197A92C78);
  v3 = OUTLINED_FUNCTION_89_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_31_6(v3);

  return v6(v5);
}

uint64_t sub_197965D90(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_197965D00, 0, 0);
}

uint64_t sub_197965DB4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_197A87298();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for ModelManagerError();
  v3[10] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v9 = type metadata accessor for ModelXPCRequest(0);
  v3[15] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49BF8, &qword_197A92C80);
  v3[17] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v13 = type metadata accessor for IPCSessionWrapper(0);
  v3[19] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_197965FAC, v2, 0);
}

uint64_t sub_197965FAC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_99_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_88_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_30_7(v1);

  return sub_19794ECC8();
}

uint64_t sub_197966030()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 184);
  *v4 = *v2;
  *(v3 + 192) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 48);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_197966144()
{
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_24_6();
  sub_197947900(v0, &qword_1EAF499A8);
  v4 = OUTLINED_FUNCTION_21_5();
  v5(v4);
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_181(v6);
  OUTLINED_FUNCTION_5_7();
  sub_197955F04(v7, v3);
  OUTLINED_FUNCTION_10_10(&qword_1ED880268);
  sub_197A053E4();
  OUTLINED_FUNCTION_57_2();
  *v2 = v8;
  v2[1] = sub_19796C954;
  v9 = v1[17];
  v11 = v1[15];
  v10 = v1[16];
  OUTLINED_FUNCTION_8_7(v12, v1[18]);
  OUTLINED_FUNCTION_169_0();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

void ModelXPCRequest.DeleteSessionRequest.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_44_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A6E8, &qword_197A98530);
  OUTLINED_FUNCTION_2(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_13_1();
  sub_197965700();
  OUTLINED_FUNCTION_48_8();
  sub_197A883D8();
  v4 = OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_2_15(&qword_1ED87FC88);
  OUTLINED_FUNCTION_75_7();
  OUTLINED_FUNCTION_125_4();
  sub_197A880E8();
  v6 = OUTLINED_FUNCTION_20_0();
  v7(v6);
  OUTLINED_FUNCTION_113_3();
  OUTLINED_FUNCTION_168();
}

uint64_t Session.deinit()
{
  sub_1979585F0();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  sub_197947A40(v0 + OBJC_IVAR____TtC20ModelManagerServices7Session_underlyingMetadata, &qword_1EAF499B0, &qword_197A96BA0);
  v1 = *(v0 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers);

  v2 = *(v0 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID + 8);

  v3 = *(v0 + OBJC_IVAR____TtC20ModelManagerServices7Session_loggingIdentifier + 8);

  v4 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  v5 = sub_197A87298();
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = *(v0 + OBJC_IVAR____TtC20ModelManagerServices7Session_customAssetConfigurations);

  return v0;
}

uint64_t Session.__deallocating_deinit()
{
  Session.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_197966494()
{
  result = qword_1ED87FBC8;
  if (!qword_1ED87FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FBC8);
  }

  return result;
}

void ModelXPCRequest.DeleteSessionRequest.init(from:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_61_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_39_9(v7, v19);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A6F0, &qword_197A98538);
  OUTLINED_FUNCTION_2(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_28_0();
  v13 = type metadata accessor for ModelXPCRequest.DeleteSessionRequest(v12);
  v14 = OUTLINED_FUNCTION_28(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_48_5();
  sub_197965700();
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_156_0();
  if (!v1)
  {
    OUTLINED_FUNCTION_3_16(&qword_1ED87FC80);
    OUTLINED_FUNCTION_13_8();
    OUTLINED_FUNCTION_108_4();
    sub_197A87FD8();
    v17 = OUTLINED_FUNCTION_34_7();
    v18(v17);
    OUTLINED_FUNCTION_91();
    sub_19794B118();
    OUTLINED_FUNCTION_126_3();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_130_1();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_1979666C0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_99_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_88_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_30_7(v1);

  return sub_19794ECC8();
}

uint64_t sub_197966744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_57();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_72();
  a22 = v24;
  a13 = *MEMORY[0x1E69E9840];
  type metadata accessor for _OSActivity();
  *(v24 + 112) = swift_initStackObject();
  *(v24 + 120) = sub_1979489D4("Client deleting session", 23, 2);
  if (qword_1ED880218 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  v28 = *(v24 + 104);
  v29 = *(v24 + 80);
  v30 = sub_197A87608();
  *(v24 + 128) = __swift_project_value_buffer(v30, qword_1ED880220);
  OUTLINED_FUNCTION_22();
  sub_197A44A54();
  v31 = sub_197A875E8();
  v32 = sub_197A87D78();
  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v24 + 104);
  if (v33)
  {
    v35 = *(v24 + 96);
    OUTLINED_FUNCTION_56();
    v36 = OUTLINED_FUNCTION_41_0();
    a12 = v36;
    *v25 = 136315138;
    sub_197A44A54();
    v37 = _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    v39 = v38;
    sub_197947A40(v35, &qword_1EAF49130, &qword_197A969C0);
    sub_197947A40(v34, &qword_1EAF49130, &qword_197A969C0);
    sub_197948834(v37, v39, &a12);
    OUTLINED_FUNCTION_77_0();
    *(v25 + 4) = &qword_1EAF49130;
    OUTLINED_FUNCTION_31(&dword_197941000, v40, v41, "Sending delete session for %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_29();
  }

  else
  {

    sub_197947A40(v34, &qword_1EAF49130, &qword_197A969C0);
  }

  OUTLINED_FUNCTION_6_11(*(v24 + 88));
  v42 = *(v32 + 40);
  OUTLINED_FUNCTION_23();
  v58 = v44 + *v44;
  v59 = v43;
  v46 = *(v45 + 4);
  v47 = swift_task_alloc();
  *(v24 + 136) = v47;
  *v47 = v24;
  v47[1] = sub_19796D268;
  v48 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5(*(v24 + 80));
  OUTLINED_FUNCTION_30_0();

  return v53(v49, v50, v51, v52, v53, v54, v55, v56, a9, v58, v59, a12, a13, a14, a15, a16);
}

uint64_t sub_1979669FC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 184);
  *v4 = *v2;
  *(v3 + 192) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 48);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_197966B10()
{
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_24_6();
  sub_197947900(v0, &qword_1EAF499A8);
  v4 = OUTLINED_FUNCTION_21_5();
  v5(v4);
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_181(v6);
  OUTLINED_FUNCTION_5_7();
  sub_197955F04(v7, v3);
  OUTLINED_FUNCTION_10_10(&qword_1ED880268);
  sub_197A05238();
  OUTLINED_FUNCTION_57_2();
  *v2 = v8;
  v2[1] = sub_19796D83C;
  v9 = v1[17];
  v11 = v1[15];
  v10 = v1[16];
  OUTLINED_FUNCTION_8_7(v12, v1[18]);
  OUTLINED_FUNCTION_169_0();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

unint64_t sub_197966C38()
{
  result = qword_1ED87FA58;
  if (!qword_1ED87FA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FA58);
  }

  return result;
}

void ModelXPCRequest.CancelSessionRequest.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_44_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A718, &qword_197A98568);
  OUTLINED_FUNCTION_2(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_64_1();
  OUTLINED_FUNCTION_13_1();
  sub_197966DA8();
  OUTLINED_FUNCTION_48_8();
  sub_197A883D8();
  v4 = OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_2_15(&qword_1ED87FC88);
  OUTLINED_FUNCTION_75_7();
  OUTLINED_FUNCTION_125_4();
  sub_197A880E8();
  v6 = OUTLINED_FUNCTION_20_0();
  v7(v6);
  OUTLINED_FUNCTION_113_3();
  OUTLINED_FUNCTION_168();
}

unint64_t sub_197966DA8()
{
  result = qword_1ED87FA88;
  if (!qword_1ED87FA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87FA88);
  }

  return result;
}

uint64_t dispatch thunk of InferenceProviderXPCSender.transitionAsset(withDescriptor:to:from:requestIdentifier:)()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_35_2();
  v1 = *(v0 + 176);
  v8 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_43(v4);
  OUTLINED_FUNCTION_73_4();

  return v6();
}

uint64_t sub_197966F14()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v5 = v4;
  *(v1 + 24) = v6;
  *(v1 + 32) = v0;
  *(v1 + 16) = v7;
  v8 = type metadata accessor for InferenceProviderXPCRequest.TransitionAsset(0);
  *(v1 + 40) = v8;
  OUTLINED_FUNCTION_28(v8);
  v10 = *(v9 + 64);
  *(v1 + 48) = OUTLINED_FUNCTION_78_0();
  *(v1 + 72) = *v5;
  *(v1 + 73) = *v3;
  v11 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_197966FB4()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 73);
  v2 = *(v0 + 72);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 24);
  sub_197967254(*(v0 + 16), v3, type metadata accessor for InferenceProviderAssetDescriptor);
  sub_1979671F8(v5, v3 + v4[7], &qword_1EAF49128, &unk_197A8CE70);
  *(v3 + v4[5]) = v2;
  *(v3 + v4[6]) = v1;
  OUTLINED_FUNCTION_17(dword_197A92190);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_19796FA3C;
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);
  OUTLINED_FUNCTION_112();

  return v9(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1979670B4(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for ModelManagerError();
  v3[11] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for InferenceProviderXPCRequest(0);
  v3[14] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
  v3[16] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v10 = swift_task_alloc();
  v3[18] = v10;
  *v10 = v3;
  v10[1] = sub_197967768;

  return sub_197967424((v3 + 2));
}

uint64_t sub_1979671F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_22();
  v9(v8);
  return a2;
}

uint64_t sub_197967254(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_6(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_22();
  v8(v7);
  return a2;
}

uint64_t sub_1979672B0()
{
  OUTLINED_FUNCTION_71();
  v2 = v1(0);
  OUTLINED_FUNCTION_6(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_18_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

void OUTLINED_FUNCTION_18_6()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[15];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[10];
  v9 = v0[11];
  v10 = v0[8];
}

uint64_t OUTLINED_FUNCTION_18_10(uint64_t result)
{
  *(result + 8) = sub_197A325CC;
  v2 = *(v1 + 24);
  return result;
}

void OUTLINED_FUNCTION_18_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t sub_197967424(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return OUTLINED_FUNCTION_32_0(sub_197967440, v1);
}

uint64_t sub_197967440()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[11];
  OUTLINED_FUNCTION_153_0();
  v0[12] = *(v1 + 112);
  v2 = *(MEMORY[0x1E69E86A8] + 4);

  v3 = swift_task_alloc();
  v0[13] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499D0, &qword_197A92130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  *v3 = v0;
  v3[1] = sub_1979675F4;
  v4 = OUTLINED_FUNCTION_132_0();

  return MEMORY[0x1EEE6DA10](v4);
}

uint64_t OUTLINED_FUNCTION_157_0@<X0>(uint64_t a1@<X8>)
{
  v5 = (v2 + a1);
  *v5 = *(v3 - 120);
  v5[1] = v1;

  return sub_197A878A8();
}

uint64_t OUTLINED_FUNCTION_157_1()
{
}

uint64_t OUTLINED_FUNCTION_157_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 16);
  v4 = *(v2 + 24);
  return result;
}

void OUTLINED_FUNCTION_132_1()
{
  v3 = *(v0 + 104);
  v4 = *(v0 + 80);
}

uint64_t OUTLINED_FUNCTION_132_3()
{

  return sub_197A88098();
}

uint64_t sub_1979675F4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[14] = v0;

  if (v0)
  {
    v10 = v3[11];
    v9 = v3[12];

    v11 = sub_1979CD968;
    v12 = v10;
  }

  else
  {
    v12 = v3[11];
    v11 = sub_197967700;
  }

  return MEMORY[0x1EEE6DFA0](v11, v12, 0);
}

uint64_t sub_197967700()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);

  sub_197945EF8((v0 + 16), v2);
  OUTLINED_FUNCTION_15();

  return v3();
}

uint64_t sub_197967768()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 144);
  *v4 = *v2;
  *(v3 + 152) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_19796787C()
{
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_67_5(v2);
  OUTLINED_FUNCTION_0_11();
  sub_197955EBC(v3, v1);
  OUTLINED_FUNCTION_4_5(&qword_1ED87E608);
  sub_19796E3DC();
  OUTLINED_FUNCTION_57_2();
  *v0 = v4;
  OUTLINED_FUNCTION_2_9(v5);
  OUTLINED_FUNCTION_89_2();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

void OUTLINED_FUNCTION_147_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x12u);
}

uint64_t OUTLINED_FUNCTION_147_3()
{

  return sub_197A88218();
}

void sub_197967A18()
{
  OUTLINED_FUNCTION_92();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for ModelManagerError();
  v6 = OUTLINED_FUNCTION_6(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_65_4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  OUTLINED_FUNCTION_6(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v12);
  sub_197944528();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_19796361C();
    OUTLINED_FUNCTION_2_10();
    sub_1979557E8();
    OUTLINED_FUNCTION_0_14();
    sub_197955F04(v13, v14);
    OUTLINED_FUNCTION_22();
    swift_willThrowTypedImpl();
    OUTLINED_FUNCTION_1_10();
    sub_1979636E8(v0, v15);
  }

  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_197967B68()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 40);
  OUTLINED_FUNCTION_82_5();
  sub_1979698F8(v4, v2);
  OUTLINED_FUNCTION_63();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v71 = *(v0 + 176);
      v72 = *(v0 + 24);
      v73 = *(v71 + 8);
      *(v0 + 440) = *v71;
      *(v0 + 448) = v73;
      *(v72 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A30, &unk_197A92380);
      *(v72 + 32) = sub_1979D6B88();
      v74 = sub_197A10AEC();
      OUTLINED_FUNCTION_153_2(v74);
      swift_task_alloc();
      OUTLINED_FUNCTION_14();
      *(v0 + 304) = v75;
      *v75 = v76;
      v75[1] = sub_197A0BD14;
      v77 = *(v0 + 32);
      OUTLINED_FUNCTION_112();

      result = sub_197A6CBAC(v78, v79);
      break;
    case 2u:
      v37 = *(v0 + 176);
      v38 = *(v0 + 96);
      v39 = *(v0 + 24);
      OUTLINED_FUNCTION_31_7();
      sub_197958DA4(v40, v41);
      *(v39 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A10, &qword_197A92378);
      *(v39 + 32) = sub_1979D69DC();
      v42 = sub_197A109E8();
      OUTLINED_FUNCTION_153_2(v42);
      swift_task_alloc();
      OUTLINED_FUNCTION_14();
      *(v0 + 320) = v43;
      *v43 = v44;
      v43[1] = sub_197A0BED0;
      v45 = *(v0 + 96);
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_112();

      result = sub_197A6D0B0(v46, v47);
      break;
    case 3u:
      v49 = *(v0 + 176);
      v50 = *(v0 + 88);
      v51 = *(v0 + 24);
      OUTLINED_FUNCTION_30_8();
      sub_197958DA4(v52, v53);
      *(v51 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
      *(v51 + 32) = sub_19796E3DC();
      v54 = sub_19796E2D8();
      OUTLINED_FUNCTION_153_2(v54);
      swift_task_alloc();
      OUTLINED_FUNCTION_14();
      *(v0 + 336) = v55;
      *v55 = v56;
      v55[1] = sub_1979711BC;
      v57 = *(v0 + 88);
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_112();

      result = sub_197975480(v58, v59);
      break;
    case 4u:
      v19 = *(v0 + 24);
      sub_197958DA4(*(v0 + 176), *(v0 + 160));
      *(v19 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
      *(v19 + 32) = sub_19796E3DC();
      v20 = sub_19796E2D8();
      OUTLINED_FUNCTION_153_2(v20);
      swift_task_alloc();
      OUTLINED_FUNCTION_14();
      *(v0 + 200) = v21;
      *v21 = v22;
      v21[1] = sub_19796EC60;
      v23 = *(v0 + 160);
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_112();

      result = sub_19796E528();
      break;
    case 5u:
      v81 = *(v0 + 144);
      v82 = *(v0 + 152);
      v83 = *(v0 + 24);
      sub_197958DA4(*(v0 + 176), v82);
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A00, &qword_197A92D00);
      *(v0 + 216) = v84;
      v83[3] = v84;
      OUTLINED_FUNCTION_38_6();
      v83[4] = sub_197979574(v85);
      OUTLINED_FUNCTION_37_5();
      v83[5] = sub_197979574(v86);
      *(v0 + 224) = __swift_allocate_boxed_opaque_existential_1(v83);
      v87 = *v82;
      v88 = *(v81 + 20);
      v89 = *(v81 + 24);
      swift_task_alloc();
      OUTLINED_FUNCTION_14();
      *(v0 + 232) = v90;
      *v90 = v91;
      v90[1] = sub_197979DD8;
      v92 = *(v0 + 136);
      v93 = *(v0 + 32);
      OUTLINED_FUNCTION_112();

      result = sub_1979794A8();
      break;
    case 6u:
      v95 = *(v0 + 56);
      v96 = *(v0 + 64);
      v97 = *(v0 + 24);
      sub_197958DA4(*(v0 + 176), v96);
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A00, &qword_197A92D00);
      *(v0 + 376) = v98;
      v97[3] = v98;
      OUTLINED_FUNCTION_38_6();
      v97[4] = sub_197979574(v99);
      OUTLINED_FUNCTION_37_5();
      v97[5] = sub_197979574(v100);
      *(v0 + 384) = __swift_allocate_boxed_opaque_existential_1(v97);
      v101 = *v96;
      v102 = *(v95 + 24);
      swift_task_alloc();
      OUTLINED_FUNCTION_14();
      *(v0 + 392) = v103;
      *v103 = v104;
      v103[1] = sub_197A0C2B8;
      v105 = *(v0 + 128);
      v106 = *(v0 + 32);
      OUTLINED_FUNCTION_112();

      result = sub_197A763CC();
      break;
    case 7u:
      v61 = *(v0 + 176);
      v62 = *(v0 + 48);
      v63 = *(v0 + 24);
      OUTLINED_FUNCTION_29_5();
      sub_197958DA4(v64, v65);
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
      *(v0 + 408) = v66;
      *(v63 + 24) = v66;
      *(v63 + 32) = sub_19796E3DC();
      v67 = sub_19796E2D8();
      *(v0 + 416) = OUTLINED_FUNCTION_153_2(v67);
      v68 = swift_task_alloc();
      *(v0 + 424) = v68;
      *v68 = v0;
      v68[1] = sub_197A0C588;
      OUTLINED_FUNCTION_152_0(*(v0 + 48));
      OUTLINED_FUNCTION_112();

      result = sub_197A76E18(v69);
      break;
    case 8u:
      v117 = *(v0 + 176);
      v118 = *(v0 + 120);
      v119 = *(v0 + 24);
      OUTLINED_FUNCTION_26_5();
      sub_197958DA4(v120, v121);
      *(v119 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
      *(v119 + 32) = sub_19796E3DC();
      v122 = sub_19796E2D8();
      OUTLINED_FUNCTION_153_2(v122);
      swift_task_alloc();
      OUTLINED_FUNCTION_14();
      *(v0 + 248) = v123;
      *v123 = v124;
      v123[1] = sub_197A0B784;
      v125 = *(v0 + 120);
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_112();

      result = sub_197A6E1A0();
      break;
    case 9u:
      v25 = *(v0 + 176);
      v26 = *(v0 + 112);
      v27 = *(v0 + 24);
      OUTLINED_FUNCTION_32_5();
      sub_197958DA4(v28, v29);
      *(v27 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A08, &qword_197A92370);
      OUTLINED_FUNCTION_38_6();
      *(v27 + 32) = sub_197A10BF0(v30);
      OUTLINED_FUNCTION_37_5();
      v32 = sub_197A10BF0(v31);
      OUTLINED_FUNCTION_153_2(v32);
      swift_task_alloc();
      OUTLINED_FUNCTION_14();
      *(v0 + 264) = v33;
      *v33 = v34;
      v33[1] = sub_197A0B95C;
      v35 = *(v0 + 112);
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_112();

      result = sub_197A6D890();
      break;
    case 0xAu:
      v108 = *(v0 + 176);
      v109 = *(v0 + 104);
      v110 = *(v0 + 24);
      OUTLINED_FUNCTION_27_7();
      sub_197958DA4(v111, v112);
      v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
      *(v0 + 280) = v113;
      *(v110 + 24) = v113;
      *(v110 + 32) = sub_19796E3DC();
      v114 = sub_19796E2D8();
      *(v0 + 288) = OUTLINED_FUNCTION_153_2(v114);
      v115 = swift_task_alloc();
      *(v0 + 296) = v115;
      *v115 = v0;
      v115[1] = sub_197A0BB34;
      OUTLINED_FUNCTION_152_0(*(v0 + 104));
      OUTLINED_FUNCTION_112();

      result = sub_197A77ACC();
      break;
    case 0xBu:
      v13 = *(v0 + 72);
      v12 = *(v0 + 80);
      v14 = *(v0 + 24);
      sub_197958DA4(*(v0 + 176), v12);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
      *(v0 + 352) = v15;
      v14[3] = v15;
      v14[4] = sub_19796E3DC();
      v14[5] = sub_19796E2D8();
      *(v0 + 360) = __swift_allocate_boxed_opaque_existential_1(v14);
      v16 = *(v12 + *(v13 + 20));
      *(v0 + 16) = v16;
      sub_1979D559C(v16);
      v17 = swift_task_alloc();
      *(v0 + 368) = v17;
      *v17 = v0;
      v17[1] = sub_197A0C0A8;
      OUTLINED_FUNCTION_152_0(*(v0 + 80));
      OUTLINED_FUNCTION_112();

      result = sub_197A79130();
      break;
    default:
      v5 = *(v0 + 24);
      *(v5 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
      *(v5 + 32) = sub_19796E3DC();
      v6 = sub_19796E2D8();
      OUTLINED_FUNCTION_153_2(v6);
      swift_task_alloc();
      OUTLINED_FUNCTION_14();
      *(v0 + 184) = v7;
      *v7 = v8;
      v7[1] = sub_197A0B598;
      v9 = *(v0 + 32);
      OUTLINED_FUNCTION_112();

      result = sub_197A6C6D8();
      break;
  }

  return result;
}

void InferenceProviderXPCRequest.encode(to:)()
{
  v5 = OUTLINED_FUNCTION_54_4();
  v86 = type metadata accessor for InferenceProviderXPCRequest.InputStreamEndedRequest(v5);
  v6 = OUTLINED_FUNCTION_6(v86);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v94 = v9;
  v10 = OUTLINED_FUNCTION_74_5();
  v85 = type metadata accessor for InferenceProviderXPCRequest.InputStreamInferenceRequest(v10);
  v11 = OUTLINED_FUNCTION_6(v85);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_0();
  v93 = v14;
  v15 = OUTLINED_FUNCTION_74_5();
  v84 = type metadata accessor for InferenceProviderXPCRequest.WillCancelNotification(v15);
  v16 = OUTLINED_FUNCTION_6(v84);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6_0();
  v92 = v19;
  v20 = OUTLINED_FUNCTION_74_5();
  v83 = type metadata accessor for InferenceProviderXPCRequest.PrewarmBundle(v20);
  v21 = OUTLINED_FUNCTION_6(v83);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6_0();
  v91 = v24;
  v25 = OUTLINED_FUNCTION_74_5();
  v82 = type metadata accessor for InferenceProviderXPCRequest.ConvertData(v25);
  v26 = OUTLINED_FUNCTION_6(v82);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_6_0();
  v90 = v29;
  v30 = OUTLINED_FUNCTION_74_5();
  v81 = type metadata accessor for InferenceProviderXPCRequest.AwaitEndStreamRequest(v30);
  v31 = OUTLINED_FUNCTION_6(v81);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_6_0();
  v89 = v34;
  v35 = OUTLINED_FUNCTION_74_5();
  NextStreamResultsRequest = type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest(v35);
  v36 = OUTLINED_FUNCTION_6(NextStreamResultsRequest);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_6_0();
  v88 = v39;
  v40 = OUTLINED_FUNCTION_74_5();
  v79 = type metadata accessor for InferenceProviderXPCRequest.DirectStreamHandshake(v40);
  v41 = OUTLINED_FUNCTION_6(v79);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_6_0();
  v87 = v44;
  v45 = OUTLINED_FUNCTION_74_5();
  v46 = type metadata accessor for InferenceProviderXPCRequest.InferenceRequest(v45);
  v47 = OUTLINED_FUNCTION_6(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_83_1();
  v50 = type metadata accessor for InferenceProviderXPCRequest.TransitionAsset(0);
  v51 = OUTLINED_FUNCTION_6(v50);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_9_6();
  v54 = type metadata accessor for InferenceProviderXPCRequest(0);
  v55 = OUTLINED_FUNCTION_6(v54);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_156();
  v58 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_197A883B8();
  OUTLINED_FUNCTION_82_5();
  sub_1979698F8(v95, v0);
  OUTLINED_FUNCTION_179_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v71 = *v0;
      v72 = *(v0 + 8);
      OUTLINED_FUNCTION_43_5(1);
      sub_197968FC4();
      OUTLINED_FUNCTION_18_7();
      sub_197A881E8();
      if (!v2)
      {
        OUTLINED_FUNCTION_51_5();
        sub_197A0DB24();
        goto LABEL_24;
      }

      break;
    case 2u:
      OUTLINED_FUNCTION_31_7();
      v60 = v90;
      sub_197958DA4(v0, v90);
      OUTLINED_FUNCTION_43_5(2);
      sub_197968FC4();
      OUTLINED_FUNCTION_18_7();
      sub_197A881E8();
      if (!v2)
      {
        OUTLINED_FUNCTION_51_5();
        OUTLINED_FUNCTION_95_4();
        sub_19796A788(v68);
        OUTLINED_FUNCTION_132_2();
        OUTLINED_FUNCTION_53_6();
        sub_197A881E8();
      }

      v62 = type metadata accessor for InferenceProviderXPCRequest.ConvertData;
      goto LABEL_37;
    case 3u:
      OUTLINED_FUNCTION_30_8();
      v60 = v91;
      sub_197958DA4(v0, v91);
      OUTLINED_FUNCTION_43_5(3);
      sub_197968FC4();
      OUTLINED_FUNCTION_18_7();
      sub_197A881E8();
      if (!v2)
      {
        OUTLINED_FUNCTION_51_5();
        OUTLINED_FUNCTION_94_2();
        sub_19796A788(v69);
        OUTLINED_FUNCTION_132_2();
        OUTLINED_FUNCTION_53_6();
        sub_197A881E8();
      }

      v62 = type metadata accessor for InferenceProviderXPCRequest.PrewarmBundle;
      goto LABEL_37;
    case 4u:
      v63 = OUTLINED_FUNCTION_71_6();
      sub_197958DA4(v63, v4);
      OUTLINED_FUNCTION_43_5(4);
      sub_197968FC4();
      OUTLINED_FUNCTION_18_7();
      sub_197A881E8();
      if (!v2)
      {
        OUTLINED_FUNCTION_51_5();
        OUTLINED_FUNCTION_98_3();
        sub_19796A788(v64);
        OUTLINED_FUNCTION_53_6();
        sub_197A881E8();
      }

      OUTLINED_FUNCTION_33_7();
      v66 = v4;
      goto LABEL_38;
    case 5u:
      v73 = OUTLINED_FUNCTION_71_6();
      sub_197958DA4(v73, v3);
      OUTLINED_FUNCTION_43_5(5);
      sub_197968FC4();
      OUTLINED_FUNCTION_18_7();
      sub_197A881E8();
      if (!v2)
      {
        OUTLINED_FUNCTION_51_5();
        OUTLINED_FUNCTION_88_3();
        sub_19796A788(v74);
        OUTLINED_FUNCTION_53_6();
        sub_197A881E8();
      }

      OUTLINED_FUNCTION_10_11();
      v66 = v3;
      goto LABEL_38;
    case 6u:
      v75 = OUTLINED_FUNCTION_71_6();
      v60 = v93;
      sub_197958DA4(v75, v93);
      OUTLINED_FUNCTION_43_5(10);
      sub_197968FC4();
      OUTLINED_FUNCTION_18_7();
      sub_197A881E8();
      if (!v2)
      {
        OUTLINED_FUNCTION_51_5();
        OUTLINED_FUNCTION_85_4();
        sub_19796A788(v76);
        OUTLINED_FUNCTION_132_2();
        OUTLINED_FUNCTION_53_6();
        sub_197A881E8();
      }

      v62 = type metadata accessor for InferenceProviderXPCRequest.InputStreamInferenceRequest;
      goto LABEL_37;
    case 7u:
      OUTLINED_FUNCTION_29_5();
      v60 = v94;
      sub_197958DA4(v0, v94);
      OUTLINED_FUNCTION_43_5(11);
      sub_197968FC4();
      OUTLINED_FUNCTION_18_7();
      sub_197A881E8();
      if (!v2)
      {
        OUTLINED_FUNCTION_51_5();
        OUTLINED_FUNCTION_100_2();
        sub_19796A788(v70);
        OUTLINED_FUNCTION_132_2();
        OUTLINED_FUNCTION_53_6();
        sub_197A881E8();
      }

      v62 = type metadata accessor for InferenceProviderXPCRequest.InputStreamEndedRequest;
      goto LABEL_37;
    case 8u:
      OUTLINED_FUNCTION_26_5();
      v60 = v87;
      sub_197958DA4(v0, v87);
      OUTLINED_FUNCTION_43_5(6);
      sub_197968FC4();
      OUTLINED_FUNCTION_18_7();
      sub_197A881E8();
      if (!v2)
      {
        OUTLINED_FUNCTION_51_5();
        OUTLINED_FUNCTION_86_3();
        sub_19796A788(v78);
        OUTLINED_FUNCTION_132_2();
        OUTLINED_FUNCTION_53_6();
        sub_197A881E8();
      }

      v62 = type metadata accessor for InferenceProviderXPCRequest.DirectStreamHandshake;
      goto LABEL_37;
    case 9u:
      OUTLINED_FUNCTION_32_5();
      v60 = v88;
      sub_197958DA4(v0, v88);
      OUTLINED_FUNCTION_43_5(7);
      sub_197968FC4();
      OUTLINED_FUNCTION_18_7();
      sub_197A881E8();
      if (!v2)
      {
        OUTLINED_FUNCTION_51_5();
        OUTLINED_FUNCTION_91_4();
        sub_19796A788(v67);
        OUTLINED_FUNCTION_132_2();
        OUTLINED_FUNCTION_53_6();
        sub_197A881E8();
      }

      v62 = type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest;
      goto LABEL_37;
    case 0xAu:
      OUTLINED_FUNCTION_27_7();
      v60 = v89;
      sub_197958DA4(v0, v89);
      OUTLINED_FUNCTION_43_5(8);
      sub_197968FC4();
      OUTLINED_FUNCTION_18_7();
      sub_197A881E8();
      if (!v2)
      {
        OUTLINED_FUNCTION_51_5();
        OUTLINED_FUNCTION_84_4();
        sub_19796A788(v77);
        OUTLINED_FUNCTION_132_2();
        OUTLINED_FUNCTION_53_6();
        sub_197A881E8();
      }

      v62 = type metadata accessor for InferenceProviderXPCRequest.AwaitEndStreamRequest;
      goto LABEL_37;
    case 0xBu:
      v59 = OUTLINED_FUNCTION_71_6();
      v60 = v92;
      sub_197958DA4(v59, v92);
      OUTLINED_FUNCTION_43_5(9);
      sub_197968FC4();
      OUTLINED_FUNCTION_18_7();
      sub_197A881E8();
      if (!v2)
      {
        OUTLINED_FUNCTION_51_5();
        OUTLINED_FUNCTION_97_3();
        sub_19796A788(v61);
        OUTLINED_FUNCTION_132_2();
        OUTLINED_FUNCTION_53_6();
        sub_197A881E8();
      }

      v62 = type metadata accessor for InferenceProviderXPCRequest.WillCancelNotification;
LABEL_37:
      v65 = v62;
      v66 = v60;
LABEL_38:
      sub_1979699A8(v66, v65);
      break;
    default:
      OUTLINED_FUNCTION_51_5();
      sub_197968FC4();
      OUTLINED_FUNCTION_18_7();
      sub_197A881E8();
      if (!v2)
      {
        OUTLINED_FUNCTION_51_5();
        sub_197A0DB78();
LABEL_24:
        OUTLINED_FUNCTION_53_6();
        sub_197A881E8();
      }

      break;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v96);
  OUTLINED_FUNCTION_130_1();
}

unint64_t sub_197968FC4()
{
  result = qword_1ED87DE08;
  if (!qword_1ED87DE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DE08);
  }

  return result;
}

uint64_t sub_197969018@<X0>(_BYTE *a1@<X8>)
{
  result = InferenceProviderXPCRequest.WireCode.rawValue.getter();
  *a1 = result;
  return result;
}

void ModelXPCRequest.CancelSessionRequest.init(from:)()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_61_7(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_39_9(v7, v19);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A720, &qword_197A98570);
  OUTLINED_FUNCTION_2(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_28_0();
  v13 = type metadata accessor for ModelXPCRequest.CancelSessionRequest(v12);
  v14 = OUTLINED_FUNCTION_28(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_48_5();
  sub_197966DA8();
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_156_0();
  if (!v1)
  {
    OUTLINED_FUNCTION_3_16(&qword_1ED87FC80);
    OUTLINED_FUNCTION_13_8();
    OUTLINED_FUNCTION_108_4();
    sub_197A87FD8();
    v17 = OUTLINED_FUNCTION_34_7();
    v18(v17);
    OUTLINED_FUNCTION_91();
    sub_19794B118();
    OUTLINED_FUNCTION_126_3();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_130_1();
  OUTLINED_FUNCTION_93();
}

void *sub_197969210(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t CountedSet.remove(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  OUTLINED_FUNCTION_34_0();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  v13 = *v2;
  v15 = *(v14 + 24);
  result = sub_197A878C8();
  if ((v17 & 1) == 0)
  {
    (*(v6 + 16))(v12, a1, v4);
    sub_197A878B8();
    return sub_197A878D8();
  }

  return result;
}

uint64_t sub_1979693D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_177_0(uint64_t result)
{
  *(result + 8) = v1;
  v4 = *(v2 + 24);
  v3 = *(v2 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_177_1@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 120);

  return sub_197A880E8();
}

uint64_t OUTLINED_FUNCTION_177_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_162()
{

  return sub_197A87F28();
}

uint64_t OUTLINED_FUNCTION_162_0()
{
  v2 = *(v0 - 104);

  return sub_197A88058();
}

uint64_t InferenceProviderAssetDescriptor.encode(to:)(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49018, &qword_197A8BB48);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_66_0();
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_113_0(v11, v12);
  sub_19796A970();
  OUTLINED_FUNCTION_125();
  v13 = *v3;
  v14 = v3[1];
  OUTLINED_FUNCTION_101();
  sub_197A880B8();
  if (!v2)
  {
    v15 = v3[2];
    v16 = v3[3];
    OUTLINED_FUNCTION_101();
    sub_197A880B8();
    v17 = type metadata accessor for InferenceProviderAssetDescriptor(0);
    v18 = *(v17 + 24);
    type metadata accessor for CustomAssetConfiguration(0);
    OUTLINED_FUNCTION_15_1();
    sub_19796AA70(v19);
    sub_197A88098();
    v20 = (v3 + *(v17 + 28));
    v21 = *v20;
    v22 = v20[1];
    OUTLINED_FUNCTION_101();
    sub_197A88068();
  }

  v23 = OUTLINED_FUNCTION_79_4();
  return v24(v23);
}

uint64_t OUTLINED_FUNCTION_110_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return _s20ModelManagerServices14UUIDIdentifierVACyxGycfC_0();
}

BOOL OUTLINED_FUNCTION_110_1()
{

  return os_log_type_enabled(v1, v0);
}

unint64_t sub_19796976C()
{
  result = qword_1EAF48500;
  if (!qword_1EAF48500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48500);
  }

  return result;
}

uint64_t sub_197969810@<X0>(uint64_t *a1@<X8>)
{
  result = LoadState.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1979698F8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_54_4();
  v5 = v4(v3);
  OUTLINED_FUNCTION_6(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_22();
  v9(v8);
  return a2;
}

uint64_t sub_197969950()
{
  OUTLINED_FUNCTION_71();
  v2 = v1(0);
  OUTLINED_FUNCTION_6(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return v0;
}

uint64_t sub_1979699A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_197969A00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_170()
{

  return sub_197944528();
}

unint64_t sub_197969A90()
{
  result = qword_1ED87DE28;
  if (!qword_1ED87DE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DE28);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_63_5(uint64_t a1)
{
  v4 = v1 + *(a1 + 20);

  return __swift_getEnumTagSinglePayload(v4, 1, v2);
}

void InferenceProviderXPCRequest.TransitionAsset.encode(to:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_72_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49DF8, &qword_197A92E18);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_13_1();
  sub_197969A90();
  OUTLINED_FUNCTION_125();
  type metadata accessor for InferenceProviderAssetDescriptor(0);
  OUTLINED_FUNCTION_101_1();
  sub_19796A788(v6);
  OUTLINED_FUNCTION_140_2();
  OUTLINED_FUNCTION_33_3();
  if (!v0)
  {
    v7 = type metadata accessor for InferenceProviderXPCRequest.TransitionAsset(0);
    v12 = *(v1 + v7[5]);
    sub_19796976C();
    OUTLINED_FUNCTION_58();
    sub_197A880E8();
    v11 = *(v1 + v7[6]);
    OUTLINED_FUNCTION_58();
    sub_197A880E8();
    v8 = v7[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
    OUTLINED_FUNCTION_23_7(&unk_1ED87FC98);
    OUTLINED_FUNCTION_33_3();
  }

  v9 = OUTLINED_FUNCTION_79_4();
  v10(v9);
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_168();
}

uint64_t sub_197969D64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_197969DC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

void sub_197969E24(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v20[-1] - v11;
  v13 = *(v4 + 120);
  os_unfair_lock_lock(v13 + 6);
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_197A87E58();

  strcpy(v20, "IPC Message ");
  BYTE5(v20[1]) = 0;
  HIWORD(v20[1]) = -5120;
  v19 = a1;
  v14 = sub_197A88148();
  MEMORY[0x19A8EAC80](v14);

  MEMORY[0x19A8EAC80](0x6B73615420, 0xE500000000000000);
  v15 = sub_197A87C08();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  *(v16 + 48) = a3;
  *(v16 + 56) = a4;

  sub_19795CB2C();
  v18 = v17;
  v20[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF491C8, &unk_197A98130);
  v20[4] = &off_1F0C10D50;
  v20[0] = v18;
  sub_197961C44(v20);
  os_unfair_lock_unlock(v13 + 6);
}

uint64_t sub_19796A008()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19796A048()
{
  OUTLINED_FUNCTION_18();
  v1 = type metadata accessor for InferenceProviderXPCRequest(0);
  OUTLINED_FUNCTION_10(v1);
  v4 = *(v3 + 64) + ((*(v2 + 80) + 56) & ~*(v2 + 80));
  OUTLINED_FUNCTION_6_3();
  v7 = *(v0 + v6);
  v8 = *(v0 + (v5 & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_8_0(v9);
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_10_4(v10);

  return sub_19796A130(v12, v13, v14, v15);
}

uint64_t sub_19796A130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  v5 = *(*(type metadata accessor for InferenceProviderXPCRequest(0) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19796A1C4, 0, 0);
}

uint64_t sub_19796A1C4()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[16];
  v2 = v0[13];
  sub_197947C44(v0[12], (v0 + 2));
  sub_197969DC4(v2, v1, type metadata accessor for InferenceProviderXPCRequest);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF491C0, &qword_197A8D338);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = OUTLINED_FUNCTION_16_2();
  v0[17] = v6;
  v7 = OUTLINED_FUNCTION_19(&unk_197A8D340);
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_19796F170;
  v9 = v0[14];
  v8 = v0[15];

  return v11(v0 + 7, v6, v8);
}

uint64_t sub_19796A2C8(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  *(v3 + 16) = (*(v8 + 32))(v7, v8) & 1;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  *(v3 + 20) = (*(v10 + 48))(v9, v10);
  *(v3 + 28) = v11;
  *(v3 + 36) = v12;
  *(v3 + 44) = v13;
  sub_197969D64(a2, v3 + *(*v3 + 120), a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_19796A3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x1EEE6DFA0](sub_19796A3D4, v3, 0);
}

uint64_t sub_19796A3D4()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0[11] + 112);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_19796EF54;
  v3 = v0[9];

  return sub_19796A470();
}

uint64_t sub_19796A470()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v2;
  v1[3] = v0;
  v4 = *(*v3 + 120);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v1[4] = v5;
  *v5 = v6;
  v5[1] = sub_19796EE3C;
  OUTLINED_FUNCTION_83_7();

  return sub_19796A528();
}

uint64_t sub_19796A528()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v4;
  v5 = type metadata accessor for InferenceProviderXPCRequest.InputStreamEndedRequest(0);
  OUTLINED_FUNCTION_28(v5);
  v7 = *(v6 + 64);
  v1[6] = OUTLINED_FUNCTION_78_0();
  v8 = type metadata accessor for InferenceProviderXPCRequest.InputStreamInferenceRequest(0);
  v1[7] = v8;
  OUTLINED_FUNCTION_28(v8);
  v10 = *(v9 + 64);
  v1[8] = OUTLINED_FUNCTION_78_0();
  v11 = type metadata accessor for InferenceProviderXPCRequest.WillCancelNotification(0);
  v1[9] = v11;
  OUTLINED_FUNCTION_28(v11);
  v13 = *(v12 + 64);
  v1[10] = OUTLINED_FUNCTION_78_0();
  v14 = type metadata accessor for InferenceProviderXPCRequest.PrewarmBundle(0);
  OUTLINED_FUNCTION_28(v14);
  v16 = *(v15 + 64);
  v1[11] = OUTLINED_FUNCTION_78_0();
  v17 = type metadata accessor for InferenceProviderXPCRequest.ConvertData(0);
  OUTLINED_FUNCTION_28(v17);
  v19 = *(v18 + 64);
  v1[12] = OUTLINED_FUNCTION_78_0();
  v20 = type metadata accessor for InferenceProviderXPCRequest.AwaitEndStreamRequest(0);
  OUTLINED_FUNCTION_28(v20);
  v22 = *(v21 + 64);
  v1[13] = OUTLINED_FUNCTION_78_0();
  NextStreamResultsRequest = type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest(0);
  OUTLINED_FUNCTION_28(NextStreamResultsRequest);
  v25 = *(v24 + 64);
  v1[14] = OUTLINED_FUNCTION_78_0();
  v26 = type metadata accessor for InferenceProviderXPCRequest.DirectStreamHandshake(0);
  OUTLINED_FUNCTION_28(v26);
  v28 = *(v27 + 64);
  v1[15] = OUTLINED_FUNCTION_78_0();
  v29 = type metadata accessor for InferenceProviderRequestResult(0);
  OUTLINED_FUNCTION_28(v29);
  v31 = *(v30 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v32 = type metadata accessor for InferenceProviderXPCRequest.InferenceRequest(0);
  v1[18] = v32;
  OUTLINED_FUNCTION_28(v32);
  v34 = *(v33 + 64);
  v1[19] = OUTLINED_FUNCTION_78_0();
  v35 = type metadata accessor for InferenceProviderXPCRequest.TransitionAsset(0);
  OUTLINED_FUNCTION_28(v35);
  v37 = *(v36 + 64);
  v1[20] = OUTLINED_FUNCTION_78_0();
  v38 = type metadata accessor for InferenceProviderXPCRequest(0);
  v1[21] = v38;
  OUTLINED_FUNCTION_28(v38);
  v40 = *(v39 + 64);
  v1[22] = OUTLINED_FUNCTION_78_0();

  return MEMORY[0x1EEE6DFA0](sub_197967B68, v3, 0);
}

unint64_t sub_19796A734()
{
  result = qword_1ED87F450[0];
  if (!qword_1ED87F450[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED87F450);
  }

  return result;
}

unint64_t sub_19796A788(uint64_t a1)
{
  result = OUTLINED_FUNCTION_137_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *sub_19796A7D4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x19796A89CLL);
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
          result = OUTLINED_FUNCTION_165_0(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_19796A8D4(char a1)
{
  result = 0x657461745377656ELL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6574617453646C6FLL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

unint64_t sub_19796A970()
{
  result = qword_1ED87DDF8;
  if (!qword_1ED87DDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DDF8);
  }

  return result;
}

unint64_t sub_19796A9CC(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0x6E6F6973726576;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

unint64_t sub_19796AA70(uint64_t a1)
{
  result = OUTLINED_FUNCTION_137_0(a1);
  if (!result)
  {
    v4(v3);
    OUTLINED_FUNCTION_133_0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_19796AAB0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_19796AAF8()
{
  result = qword_1ED87DDA0;
  if (!qword_1ED87DDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87DDA0);
  }

  return result;
}

unint64_t sub_19796AB4C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_137_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49128, &unk_197A8CE70);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_19796AB98(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_133_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_174()
{
  v1 = *(v0 + 96);
  v2 = *v1;
  v3 = v1[1];
}

uint64_t OUTLINED_FUNCTION_174_2()
{

  return sub_197979D80();
}

_BYTE *storeEnumTagSinglePayload for InferenceProviderXPCRequest.WireCode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
        JUMPOUT(0x19796AD04);
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

ModelManagerServices::InferenceProviderXPCRequest::WireCode_optional __swiftcall InferenceProviderXPCRequest.WireCode.init(rawValue:)(ModelManagerServices::InferenceProviderXPCRequest::WireCode_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= ModelManagerServices_InferenceProviderXPCRequest_WireCode_unknownDefault)
  {
    value = ModelManagerServices_InferenceProviderXPCRequest_WireCode_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

uint64_t sub_19796ADC0()
{
  OUTLINED_FUNCTION_157();
  v4 = OUTLINED_FUNCTION_43_1();
  v5 = type metadata accessor for InferenceProviderAssetDescriptor(v4);
  result = OUTLINED_FUNCTION_70(v5);
  if (*(v7 + 84) != v3)
  {
    if (v3 == 253)
    {
      *(v1 + *(v2 + 20)) = v0 + 2;
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
    v8 = v1 + *(v2 + 28);
  }

  OUTLINED_FUNCTION_122_2();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

void sub_19796AE94()
{
  OUTLINED_FUNCTION_76_1();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49008, &qword_197A8BB38);
    v3 = OUTLINED_FUNCTION_73_1();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_19796AF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_43_1();
  v7 = type metadata accessor for InferenceProviderAssetDescriptor(v6);
  v8 = OUTLINED_FUNCTION_70(v7);
  if (*(v9 + 84) == v3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    if (v3 == 253)
    {
      v12 = *(v4 + *(a3 + 20));
      if (v12 >= 3)
      {
        return v12 - 2;
      }

      else
      {
        return 0;
      }
    }

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
    v11 = v4 + *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(v11, v3, v10);
}

uint64_t sub_19796AFFC()
{
  OUTLINED_FUNCTION_111();
  if (v0)
  {
    return OUTLINED_FUNCTION_45_1();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49008, &qword_197A8BB38);
  v2 = OUTLINED_FUNCTION_73_1();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_95_2(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v12 = a1;

  return sub_197948834(v10, v11, &a10);
}

uint64_t OUTLINED_FUNCTION_95_3()
{
  result = __swift_getEnumTagSinglePayload(v0, 1, v2);
  v4 = *(v1 + 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_95_5()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_95_7(uint64_t a1)
{
  v3 = *(a1 + 28);
  *(v1 - 96) = 3;

  return type metadata accessor for ClientData(0);
}

void InferenceProviderXPCRequest.TransitionAsset.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13)
{
  OUTLINED_FUNCTION_92();
  v17 = v16;
  v42 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_6(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_29_1();
  v23 = type metadata accessor for InferenceProviderAssetDescriptor(0);
  v24 = OUTLINED_FUNCTION_6(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_6_0();
  v44 = v27;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49E00, &qword_197A92E20);
  OUTLINED_FUNCTION_2(v45);
  v43 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_64_1();
  v32 = type metadata accessor for InferenceProviderXPCRequest.TransitionAsset(0);
  v33 = OUTLINED_FUNCTION_6(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_156();
  v37 = v17[3];
  v36 = v17[4];
  OUTLINED_FUNCTION_16_7();
  sub_197969A90();
  OUTLINED_FUNCTION_69_5();
  sub_197A883A8();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  else
  {
    OUTLINED_FUNCTION_101_1();
    sub_19796A788(v38);
    OUTLINED_FUNCTION_140_2();
    OUTLINED_FUNCTION_148_1();
    OUTLINED_FUNCTION_171_0();
    OUTLINED_FUNCTION_103_1();
    sub_197958DA4(v44, v13);
    sub_19796BA5C();
    OUTLINED_FUNCTION_171_0();
    *(v13 + v32[5]) = a13;
    sub_197A87FD8();
    *(v13 + v32[6]) = a11;
    OUTLINED_FUNCTION_22_3(&unk_1ED87FC90);
    OUTLINED_FUNCTION_171_0();
    v39 = *(v43 + 8);
    v40 = OUTLINED_FUNCTION_63();
    v41(v40);
    sub_19794BDF8(v15, v13 + v32[7], &qword_1EAF49128, &unk_197A8CE70);
    sub_1979698F8(v13, v42);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    sub_1979699A8(v13, type metadata accessor for InferenceProviderXPCRequest.TransitionAsset);
  }

  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_93();
}

void InferenceProviderAssetDescriptor.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49008, &qword_197A8BB38);
  OUTLINED_FUNCTION_28(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49020, &qword_197A8BB50);
  OUTLINED_FUNCTION_2(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v10);
  v11 = type metadata accessor for InferenceProviderAssetDescriptor(0);
  v12 = OUTLINED_FUNCTION_6(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_0();
  v17 = (v16 - v15);
  v18 = v2[4];
  OUTLINED_FUNCTION_113_0(v2, v2[3]);
  sub_19796A970();
  sub_197A883A8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    OUTLINED_FUNCTION_110();
    *v17 = sub_197A87FA8();
    v17[1] = v19;
    OUTLINED_FUNCTION_110();
    v17[2] = sub_197A87FA8();
    v17[3] = v20;
    type metadata accessor for CustomAssetConfiguration(0);
    OUTLINED_FUNCTION_15_1();
    sub_19796AA70(v21);
    OUTLINED_FUNCTION_118();
    sub_197A87F88();
    v22 = *(v11 + 24);
    sub_19794B0C4();
    OUTLINED_FUNCTION_110();
    v23 = sub_197A87F48();
    v25 = v24;
    v26 = OUTLINED_FUNCTION_67_0();
    v27(v26);
    v28 = (v17 + *(v11 + 28));
    *v28 = v23;
    v28[1] = v25;
    sub_19796B948();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    sub_19796B99C();
  }

  OUTLINED_FUNCTION_93();
}

void OUTLINED_FUNCTION_97_1()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
}

uint64_t OUTLINED_FUNCTION_97_4()
{

  return sub_197A87F88();
}

uint64_t OUTLINED_FUNCTION_97_5@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 136) = a1;

  return type metadata accessor for ClientData(0);
}

uint64_t sub_19796B948()
{
  v1 = OUTLINED_FUNCTION_43_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_6(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_22();
  v7(v6);
  return v0;
}

uint64_t sub_19796B99C()
{
  v1 = OUTLINED_FUNCTION_97();
  v3 = v2(v1);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_19796BA5C()
{
  result = qword_1ED87D7B0;
  if (!qword_1ED87D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D7B0);
  }

  return result;
}

_BYTE *sub_19796BAB8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x19796BB84);
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

uint64_t getEnumTagSinglePayload for Version.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

ModelManagerServices::LoadState_optional __swiftcall LoadState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_197A87EF8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_19796BD08()
{
  OUTLINED_FUNCTION_92();
  v1 = v0;
  v3 = v2;
  v5 = OUTLINED_FUNCTION_165_1(v2, v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_2(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_65_0();
  v11 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1();
  OUTLINED_FUNCTION_141();
  sub_197A883D8();
  v12 = OUTLINED_FUNCTION_107_3();
  v13(v12);
  OUTLINED_FUNCTION_93();
}

unint64_t sub_19796BE4C()
{
  result = qword_1EAF48848;
  if (!qword_1EAF48848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48848);
  }

  return result;
}

uint64_t sub_19796BF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_29_4();
  sub_197967A18();
  if (!v15)
  {
    OUTLINED_FUNCTION_11_4();
    sub_197947900(v18, &unk_1EAF49BE8);
    sub_197947900(0, &qword_1EAF499A8);
    OUTLINED_FUNCTION_4_6();
    sub_1979636E8(v17, v32);

    OUTLINED_FUNCTION_15();
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_28_5();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v19, v20);
  v21 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_3_7();
  sub_19796361C();
  sub_197947900(v15, &unk_1EAF49BE8);
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v14, v22);
  OUTLINED_FUNCTION_98_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (!OUTLINED_FUNCTION_53_5())
  {

    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7();
    }

    v33 = sub_197A87608();
    v34 = OUTLINED_FUNCTION_37_4(v33, qword_1ED87FB48);
    MEMORY[0x19A8EBBD0](v34);
    sub_197A875E8();
    sub_197A87D68();
    OUTLINED_FUNCTION_230();
    if (OUTLINED_FUNCTION_96_1())
    {
      OUTLINED_FUNCTION_56();
      v35 = OUTLINED_FUNCTION_142_1();
      OUTLINED_FUNCTION_229(5.7779e-34);
      v36 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_158_1(v36);
      OUTLINED_FUNCTION_92_2(&dword_197941000, v37, v38, "Unexpected non ModelManagerError from the daemon %@");
      sub_197947900(v35, &qword_1EAF48A90);
      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_37();
    }

    OUTLINED_FUNCTION_237();
    v39 = OUTLINED_FUNCTION_82_4();
    OUTLINED_FUNCTION_27_6(v39, v40);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_201();

    sub_197947900(v17, &qword_1EAF499A8);
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_132_1();
  OUTLINED_FUNCTION_116();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_154_0();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v48 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v48, qword_1ED87FB48);
      sub_197A878A8();
      v49 = sub_197A875E8();
      sub_197A87D68();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v50);
        OUTLINED_FUNCTION_146(&dword_197941000, v51, v52, "ModelManager received unentitled request. Expected entitlement %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      v53 = OUTLINED_FUNCTION_49_6();
      OUTLINED_FUNCTION_55_4(v53, v54);
      OUTLINED_FUNCTION_226();
      break;
    case 5:
      OUTLINED_FUNCTION_154_0();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v41 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v41, qword_1ED87FB48);
      sub_197A878A8();
      v42 = sub_197A875E8();
      sub_197A87D78();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v43);
        OUTLINED_FUNCTION_146(&dword_197941000, v44, v45, "IPC Connection errors, evict session to create new session on next connection %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      OUTLINED_FUNCTION_180();
      sub_197944528();
      OUTLINED_FUNCTION_25_5();
      if (v47)
      {
        sub_197947900(v46, &qword_1EAF499A8);
      }

      else
      {
        v70 = OUTLINED_FUNCTION_14_8();
        v71(v70);
        sub_197A21F90();
        v72 = OUTLINED_FUNCTION_60_3();
        v73(v72);
      }

      v74 = OUTLINED_FUNCTION_46_4();
      OUTLINED_FUNCTION_54_3(v74, v75);
      OUTLINED_FUNCTION_201();
      v31 = v17;
      goto LABEL_37;
    case 31:
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v24 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
      sub_197A875E8();
      v25 = sub_197A87D68();
      if (OUTLINED_FUNCTION_55_0(v25))
      {
        v26 = OUTLINED_FUNCTION_204();
        OUTLINED_FUNCTION_161(v26);
        OUTLINED_FUNCTION_91_3(&dword_197941000, v27, v28, "ModelManager received request that's supported on internal only");
        OUTLINED_FUNCTION_29();
      }

      OUTLINED_FUNCTION_238();
      v29 = OUTLINED_FUNCTION_82_4();
      OUTLINED_FUNCTION_27_6(v29, v30);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_201();
      v31 = v21;
      goto LABEL_37;
    default:
      v56 = *(v16 + 96);
      v55 = *(v16 + 104);
      OUTLINED_FUNCTION_3_7();
      sub_19796361C();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v57 = OUTLINED_FUNCTION_221();
      v58 = __swift_project_value_buffer(v57, qword_1ED87FB48);
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_116();
      sub_1979557E8();
      v49 = sub_197A875E8();
      v59 = sub_197A87D58();
      v60 = OUTLINED_FUNCTION_118_1(v59);
      v61 = *(v16 + 88);
      if (v60)
      {
        OUTLINED_FUNCTION_131_1();
        OUTLINED_FUNCTION_113();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_124_2();
        OUTLINED_FUNCTION_51_4(5.778e-34);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        v62 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v61, v63);
        v64 = OUTLINED_FUNCTION_16_6();
        *(v16 + 24) = type metadata accessor for ModelXPCRequest.CancelSessionRequest(v64);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49BF0, &qword_197A92C70);
        v65 = OUTLINED_FUNCTION_231();
        OUTLINED_FUNCTION_232(v65, v66, v67);
        OUTLINED_FUNCTION_228();
        *(v15 + 14) = v62;
        OUTLINED_FUNCTION_78_4(&dword_197941000, v68, v69, "Passing along %@ in response to %s");
        sub_197947900(v18, &qword_1EAF48A90);
        OUTLINED_FUNCTION_36_3();
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {

        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v61, v76);
      }

      v77 = OUTLINED_FUNCTION_48_4();
      OUTLINED_FUNCTION_2_10();
      sub_1979557E8();
      a9 = v77;
      swift_willThrow();
      OUTLINED_FUNCTION_1_10();
      sub_1979636E8(v58, v78);
      break;
  }

  v31 = v49;
LABEL_37:
  sub_197947900(v31, &qword_1EAF499A8);

LABEL_38:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
LABEL_39:
  OUTLINED_FUNCTION_142();

  return v80(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_19796C5B0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *(v4 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 48) = v0;

  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_19796C6D0()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_15();

  return v2();
}

uint64_t sub_19796C728()
{
  OUTLINED_FUNCTION_18();
  v13 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = v2[22];
  *v4 = *v1;
  *(v3 + 184) = v0;

  v6 = v2[15];
  v7 = v2[14];
  sub_197947A40(v6, &qword_1EAF49130, &qword_197A969C0);
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_135_3();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_19796C89C()
{
  OUTLINED_FUNCTION_18();
  v7 = *MEMORY[0x1E69E9840];
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  OUTLINED_FUNCTION_16();
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_23_10();
  v5 = *MEMORY[0x1E69E9840];

  return v4();
}

uint64_t sub_19796C954()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v0 + 200);
  *v4 = *v2;
  *(v3 + 208) = v1;

  OUTLINED_FUNCTION_52_5();
  v7 = *(v0 + 48);
  sub_1979636E8(*(v6 + 128), type metadata accessor for ModelXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_19796CA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_29_4();
  sub_197967A18();
  if (!v15)
  {
    OUTLINED_FUNCTION_11_4();
    sub_197947900(v18, &unk_1EAF49BF8);
    sub_197947900(0, &qword_1EAF499A8);
    OUTLINED_FUNCTION_4_6();
    sub_1979636E8(v17, v32);

    OUTLINED_FUNCTION_15();
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_28_5();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v19, v20);
  v21 = OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_3_7();
  sub_19796361C();
  sub_197947900(v15, &unk_1EAF49BF8);
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v14, v22);
  OUTLINED_FUNCTION_98_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (!OUTLINED_FUNCTION_53_5())
  {

    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7();
    }

    v33 = sub_197A87608();
    v34 = OUTLINED_FUNCTION_37_4(v33, qword_1ED87FB48);
    MEMORY[0x19A8EBBD0](v34);
    sub_197A875E8();
    sub_197A87D68();
    OUTLINED_FUNCTION_230();
    if (OUTLINED_FUNCTION_96_1())
    {
      OUTLINED_FUNCTION_56();
      v35 = OUTLINED_FUNCTION_142_1();
      OUTLINED_FUNCTION_229(5.7779e-34);
      v36 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_158_1(v36);
      OUTLINED_FUNCTION_92_2(&dword_197941000, v37, v38, "Unexpected non ModelManagerError from the daemon %@");
      sub_197947900(v35, &qword_1EAF48A90);
      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_37();
    }

    OUTLINED_FUNCTION_237();
    v39 = OUTLINED_FUNCTION_82_4();
    OUTLINED_FUNCTION_27_6(v39, v40);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_201();

    sub_197947900(v17, &qword_1EAF499A8);
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_132_1();
  OUTLINED_FUNCTION_116();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_154_0();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v48 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v48, qword_1ED87FB48);
      sub_197A878A8();
      v49 = sub_197A875E8();
      sub_197A87D68();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v50);
        OUTLINED_FUNCTION_146(&dword_197941000, v51, v52, "ModelManager received unentitled request. Expected entitlement %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      v53 = OUTLINED_FUNCTION_49_6();
      OUTLINED_FUNCTION_55_4(v53, v54);
      OUTLINED_FUNCTION_226();
      break;
    case 5:
      OUTLINED_FUNCTION_154_0();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v41 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v41, qword_1ED87FB48);
      sub_197A878A8();
      v42 = sub_197A875E8();
      sub_197A87D78();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v43);
        OUTLINED_FUNCTION_146(&dword_197941000, v44, v45, "IPC Connection errors, evict session to create new session on next connection %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      OUTLINED_FUNCTION_180();
      sub_197944528();
      OUTLINED_FUNCTION_25_5();
      if (v47)
      {
        sub_197947900(v46, &qword_1EAF499A8);
      }

      else
      {
        v70 = OUTLINED_FUNCTION_14_8();
        v71(v70);
        sub_197A21F90();
        v72 = OUTLINED_FUNCTION_60_3();
        v73(v72);
      }

      v74 = OUTLINED_FUNCTION_46_4();
      OUTLINED_FUNCTION_54_3(v74, v75);
      OUTLINED_FUNCTION_201();
      v31 = v17;
      goto LABEL_37;
    case 31:
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v24 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
      sub_197A875E8();
      v25 = sub_197A87D68();
      if (OUTLINED_FUNCTION_55_0(v25))
      {
        v26 = OUTLINED_FUNCTION_204();
        OUTLINED_FUNCTION_161(v26);
        OUTLINED_FUNCTION_91_3(&dword_197941000, v27, v28, "ModelManager received request that's supported on internal only");
        OUTLINED_FUNCTION_29();
      }

      OUTLINED_FUNCTION_238();
      v29 = OUTLINED_FUNCTION_82_4();
      OUTLINED_FUNCTION_27_6(v29, v30);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_201();
      v31 = v21;
      goto LABEL_37;
    default:
      v56 = *(v16 + 96);
      v55 = *(v16 + 104);
      OUTLINED_FUNCTION_3_7();
      sub_19796361C();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7();
      }

      v57 = OUTLINED_FUNCTION_221();
      v58 = __swift_project_value_buffer(v57, qword_1ED87FB48);
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_116();
      sub_1979557E8();
      v49 = sub_197A875E8();
      v59 = sub_197A87D58();
      v60 = OUTLINED_FUNCTION_118_1(v59);
      v61 = *(v16 + 88);
      if (v60)
      {
        OUTLINED_FUNCTION_131_1();
        OUTLINED_FUNCTION_113();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_124_2();
        OUTLINED_FUNCTION_51_4(5.778e-34);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        v62 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v61, v63);
        v64 = OUTLINED_FUNCTION_16_6();
        *(v16 + 24) = type metadata accessor for ModelXPCRequest.DeleteSessionRequest(v64);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C00, &qword_197A92C88);
        v65 = OUTLINED_FUNCTION_231();
        OUTLINED_FUNCTION_232(v65, v66, v67);
        OUTLINED_FUNCTION_228();
        *(v15 + 14) = v62;
        OUTLINED_FUNCTION_78_4(&dword_197941000, v68, v69, "Passing along %@ in response to %s");
        sub_197947900(v18, &qword_1EAF48A90);
        OUTLINED_FUNCTION_36_3();
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {

        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v61, v76);
      }

      v77 = OUTLINED_FUNCTION_48_4();
      OUTLINED_FUNCTION_2_10();
      sub_1979557E8();
      a9 = v77;
      swift_willThrow();
      OUTLINED_FUNCTION_1_10();
      sub_1979636E8(v58, v78);
      break;
  }

  v31 = v49;
LABEL_37:
  sub_197947900(v31, &qword_1EAF499A8);

LABEL_38:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
LABEL_39:
  OUTLINED_FUNCTION_142();

  return v80(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_19796D144()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *(v4 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v9 + 48) = v0;

  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_19796D268()
{
  OUTLINED_FUNCTION_18();
  v11 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v2 + 136);
  *v4 = *v1;
  *(v3 + 144) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 88);
  if (v0)
  {
    v8 = sub_197A3F404;
  }

  else
  {
    v8 = sub_19796D3B0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_19796D3B0()
{
  OUTLINED_FUNCTION_72();
  v16 = v1;
  v15[6] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_144_3();
  sub_19796D494(v15);
  OUTLINED_FUNCTION_143_3(v3, v4, v5, v6, v7, v8, v9, v10, v14, v15[0], v15[1], v15[2]);
  os_unfair_lock_unlock(v2 + 50);
  OUTLINED_FUNCTION_60_5();
  os_activity_scope_leave((v0 + 24));
  swift_endAccess();

  OUTLINED_FUNCTION_13();
  v12 = *MEMORY[0x1E69E9840];

  return v11();
}

double sub_19796D494@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_19794B040();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    v9 = *(*v2 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1F8, &qword_197A969C8);
    sub_197A87EB8();
    v10 = *(v17 + 48);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
    sub_197947A40(v10 + *(*(v11 - 8) + 72) * v7, &qword_1EAF49130, &qword_197A969C0);
    v12 = *(v17 + 56) + 48 * v7;
    v13 = *(v12 + 32);
    v14 = *(v12 + 40);
    v15 = *(v12 + 16);
    *a1 = *v12;
    *(a1 + 16) = v15;
    *(a1 + 32) = v13;
    *(a1 + 40) = v14;
    sub_19796AB98(&qword_1ED87FE60, &qword_1EAF49130, &qword_197A969C0);
    sub_197A87EC8();
    *v2 = v17;
  }

  else
  {
    *a1 = 1;
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_58_1()
{
  result = type metadata accessor for InferenceError.Context(0);
  v1 = *(result + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_58_3@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v1 + a1);
  return result;
}

uint64_t OUTLINED_FUNCTION_58_7(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
}

uint64_t OUTLINED_FUNCTION_58_12()
{
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];

  return swift_beginAccess();
}

uint64_t sub_19796D708()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  OUTLINED_FUNCTION_13();

  return v5();
}

unint64_t sub_19796D7E8()
{
  result = qword_1EAF48820;
  if (!qword_1EAF48820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF48820);
  }

  return result;
}

uint64_t sub_19796D83C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v0 + 200);
  *v4 = *v2;
  *(v3 + 208) = v1;

  OUTLINED_FUNCTION_52_5();
  v7 = *(v0 + 48);
  sub_1979636E8(*(v6 + 128), type metadata accessor for ModelXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t OUTLINED_FUNCTION_142_1()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_142_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_142_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 + 4) = v12;
  *(v10 + 12) = 1024;
  v14 = *(v11 + *(a9 + 20));

  return sub_197969A00(v11, v9);
}

uint64_t sub_19796DA58()
{
  v0 = OUTLINED_FUNCTION_43_1();
  type metadata accessor for InferenceProviderPrewarmInformation(v0);
  v1 = OUTLINED_FUNCTION_53_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void sub_19796DAA4()
{
  OUTLINED_FUNCTION_76_1();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    sub_197A87298();
    v3 = OUTLINED_FUNCTION_73_1();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_19796DB24()
{
  v0 = OUTLINED_FUNCTION_43_1();
  type metadata accessor for InferenceProviderPrewarmInformation(v0);
  v1 = OUTLINED_FUNCTION_63();

  return __swift_getEnumTagSinglePayload(v1, v2, v3);
}

uint64_t sub_19796DB74()
{
  OUTLINED_FUNCTION_111();
  if (v0)
  {
    return OUTLINED_FUNCTION_45_1();
  }

  sub_197A87298();
  v2 = OUTLINED_FUNCTION_73_1();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

void InferenceProviderXPCRequest.PrewarmBundle.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v3 = OUTLINED_FUNCTION_39_6(v2);
  v4 = type metadata accessor for InferenceProviderPrewarmInformation(v3);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_145_1(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49DF0, &qword_197A92E10);
  OUTLINED_FUNCTION_2(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_21_6();
  v14 = type metadata accessor for InferenceProviderXPCRequest.PrewarmBundle(v13);
  v15 = OUTLINED_FUNCTION_28(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_6();
  OUTLINED_FUNCTION_48_5();
  sub_19796FBF0();
  OUTLINED_FUNCTION_45_5();
  if (!v1)
  {
    OUTLINED_FUNCTION_102_2();
    sub_19796A788(v18);
    OUTLINED_FUNCTION_17_7();
    v19 = OUTLINED_FUNCTION_19_9();
    v20(v19);
    OUTLINED_FUNCTION_105_3();
    OUTLINED_FUNCTION_161_0();
    OUTLINED_FUNCTION_30_8();
    v21 = OUTLINED_FUNCTION_133_1();
    sub_197958DA4(v21, v22);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  OUTLINED_FUNCTION_130_1();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_19796DD70@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for InferenceError.Context(0);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B20, &qword_197A89620);
  v12 = OUTLINED_FUNCTION_28(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_27();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_200();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v61 - v21;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_75_9();
  swift_beginAccess();
  sub_19796EA88(v1 + 112, v62);
  if ((v63 & 1) == 0)
  {
    return sub_197945EF8(v62, a1);
  }

  sub_197A7510C(v62);
  if (qword_1ED87D788 != -1)
  {
    OUTLINED_FUNCTION_0_27();
    swift_once();
  }

  v61[4] = v2;
  v64 = v4;
  v23 = sub_197A87608();
  __swift_project_value_buffer(v23, qword_1ED87D2C0);
  v24 = sub_197A875E8();
  v25 = sub_197A87D68();
  if (os_log_type_enabled(v24, v25))
  {
    OUTLINED_FUNCTION_95_8();
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_197941000, v24, v25, "Inference Provider service was never configured with a .configureBuiltInProvider message", v26, 2u);
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
  }

  v27 = type metadata accessor for InferenceError(0);
  OUTLINED_FUNCTION_4_14();
  sub_197973734(v28, 255, v29);
  v61[2] = v27;
  OUTLINED_FUNCTION_52_9();
  v61[3] = swift_allocError();
  v61[1] = v30;
  v31 = sub_197A87898();
  v32 = sub_197A87258();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v32);
  v36 = OUTLINED_FUNCTION_108_3();
  sub_197947A40(v36, v37, &qword_197A89620);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v32);
  sub_197944528();
  *v10 = 0xD000000000000058;
  *(v10 + 8) = 0x8000000197AA4A80;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0xE000000000000000;
  *(v10 + 32) = 0;
  *(v10 + 40) = v31;
  *(v10 + 48) = 0;
  *(v10 + 56) = 0;
  sub_197944528();
  v41 = OUTLINED_FUNCTION_96();
  LODWORD(v31) = __swift_getEnumTagSinglePayload(v41, v42, v32);
  sub_197947A40(v22, &qword_1EAF48B20, &qword_197A89620);
  v43 = OUTLINED_FUNCTION_108_3();
  sub_197947A40(v43, v44, &qword_197A89620);
  if (v31 == 1)
  {
    v45 = OUTLINED_FUNCTION_25_0();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v32);
    v48 = OUTLINED_FUNCTION_96();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v48, v49, v32);
    v51 = v64;
    if (EnumTagSinglePayload != 1)
    {
      sub_197947A40(v17, &qword_1EAF48B20, &qword_197A89620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_36_0(v32);
    v54 = *(v53 + 32);
    v55 = OUTLINED_FUNCTION_100_0();
    v56(v55);
    OUTLINED_FUNCTION_56_0();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v32);
    v51 = v64;
  }

  v60 = *(v51 + 40);
  sub_19794B118();
  OUTLINED_FUNCTION_34_8();
  sub_197979D80();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_19796E1D4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  OUTLINED_FUNCTION_13();

  return v5();
}

unint64_t sub_19796E2D8()
{
  result = qword_1ED87D7D0;
  if (!qword_1ED87D7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF499F8, &unk_197A92360);
    sub_1979766D4();
    sub_197976728();
    sub_19796A788(&qword_1ED8813C8);
    sub_19796A788(&qword_1ED8813D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D7D0);
  }

  return result;
}

unint64_t sub_19796E3DC()
{
  result = qword_1ED87E908;
  if (!qword_1ED87E908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF499F8, &unk_197A92360);
    sub_1979766D4();
    sub_197976728();
    sub_197955EBC(&qword_1ED8813C8, type metadata accessor for ModelManagerError);
    sub_197955EBC(&qword_1ED8813D0, type metadata accessor for ModelManagerError);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87E908);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_149()
{
  v2 = *(v0 + 40);
  v4 = *(v0 + 48);

  return swift_slowAlloc();
}

uint64_t sub_19796E528()
{
  OUTLINED_FUNCTION_9();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = type metadata accessor for InferenceError(0);
  v1[25] = v4;
  OUTLINED_FUNCTION_28(v4);
  v6 = *(v5 + 64);
  v1[26] = OUTLINED_FUNCTION_225_0();
  v1[27] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_158_3();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t OUTLINED_FUNCTION_60_1()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_60_4()
{

  return sub_197A87FA8();
}

uint64_t OUTLINED_FUNCTION_60_5()
{

  return swift_beginAccess();
}

void sub_19796E650()
{
  OUTLINED_FUNCTION_80();
  v2 = *(v1 + 184);
  OUTLINED_FUNCTION_178_2();
  if (v0)
  {
    v4 = *(v1 + 208);
    v3 = *(v1 + 216);

    OUTLINED_FUNCTION_28_11();
    OUTLINED_FUNCTION_12_0();

    __asm { BRAA            X1, X16 }
  }

  sub_197961900(v1 + 16, v1 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B300, &qword_197AA1A50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4B308, &qword_197AA1A58);
  if (swift_dynamicCast())
  {
    v7 = *(v1 + 192);
    sub_197945EF8((v1 + 136), v1 + 56);
    v8 = *(v1 + 88);
    __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
    v9 = *(v7 + 16);
    v10 = *(v7 + 24);
    v11 = type metadata accessor for InferenceProviderXPCRequest.TransitionAsset(0);
    *(v1 + 241) = *(v7 + *(v11 + 20));
    *(v1 + 242) = *(v7 + *(v11 + 24));
    v12 = *(v8 + 8);
    OUTLINED_FUNCTION_17_2();
    v28 = v13 + *v13;
    v15 = *(v14 + 4);
    v16 = swift_task_alloc();
    *(v1 + 224) = v16;
    *v16 = v1;
    v16[1] = sub_197A6D580;
    v17 = *(v1 + 216);
    OUTLINED_FUNCTION_100_0();
    OUTLINED_FUNCTION_12_0();

    __asm { BRAA            X7, X16 }
  }

  v20 = *(v1 + 192);
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0;
  sub_197947A40(v1 + 136, &qword_1EAF4B310, &qword_197AA1A60);
  OUTLINED_FUNCTION_67_12();
  *(v1 + 240) = *(v20 + *(type metadata accessor for InferenceProviderXPCRequest.TransitionAsset(0) + 20));
  OUTLINED_FUNCTION_17_2();
  v29 = v21 + *v21;
  v23 = *(v22 + 4);
  v24 = swift_task_alloc();
  *(v1 + 232) = v24;
  *v24 = v1;
  v24[1] = sub_19796EACC;
  v25 = *(v1 + 208);
  OUTLINED_FUNCTION_32_1(*(v1 + 192));
  OUTLINED_FUNCTION_12_0();

  __asm { BRAA            X5, X16 }
}

uint64_t OUTLINED_FUNCTION_72_1()
{
  v2 = *(v0 - 256);

  return sub_197A87FD8();
}

uint64_t OUTLINED_FUNCTION_72_4(unint64_t *a1)
{

  return sub_197955EBC(a1, v1);
}

uint64_t sub_19796EACC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  v9 = *(v3 + 184);
  if (v0)
  {
    v10 = sub_197A6D7DC;
  }

  else
  {
    v10 = sub_19796EBC8;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_19796EBC8()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
  OUTLINED_FUNCTION_105();
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_15();

  return v4();
}

uint64_t sub_19796EC60()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v1 + 200);
  *v4 = *v2;
  *(v3 + 208) = v0;

  OUTLINED_FUNCTION_46_0();
  v7 = *(v6 + 32);
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_19796ED74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v15 = *(v14 + 160);
  OUTLINED_FUNCTION_33_7();
  sub_1979699A8(v16, v17);
  OUTLINED_FUNCTION_3_8();

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_19796EE3C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    v9 = *(v3 + 24);

    return MEMORY[0x1EEE6DFA0](sub_197A7513C, v9, 0);
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v10();
  }
}

uint64_t sub_19796EF54()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  return MEMORY[0x1EEE6DFA0](sub_19796F054, v3, 0);
}

uint64_t sub_19796F054()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  sub_19796F110();
  v4 = v0[5];
  v5 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v3[3] = v4;
  v3[4] = v5;
  __swift_allocate_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_36_0(v4);
  (*(v6 + 16))();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_13();

  return v7();
}

void sub_19796F110()
{
  v1 = *(v0 + 120);
  os_unfair_lock_lock((v1 + 24));
  sub_19795E71C((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_19796F170()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v2 = *(v1 + 144);
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_19796F25C, 0, 0);
}

uint64_t sub_19796F25C()
{
  if (qword_1ED87E900 != -1)
  {
    OUTLINED_FUNCTION_8_3();
  }

  v1 = sub_197A87608();
  __swift_project_value_buffer(v1, qword_1ED87DF90);
  v2 = sub_197A875E8();
  v3 = sub_197A87D48();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[15];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    OUTLINED_FUNCTION_20_1(&dword_197941000, v6, v7, "Replying to message %llu.");
    OUTLINED_FUNCTION_44();
  }

  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[12];

  v11 = v10[3];
  v12 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v13 = v0[10];
  v14 = v0[11];
  v15 = __swift_project_boxed_opaque_existential_1(v0 + 7, v13);
  (*(v12 + 16))(v15, v13, v14, v11, v12);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  OUTLINED_FUNCTION_13();

  return v16();
}

void InferenceProviderXPCRequest.EmptyResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49D28, &qword_197A92DB0);
  OUTLINED_FUNCTION_2(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_104();
  v9 = a1[4];
  OUTLINED_FUNCTION_113_0(a1, a1[3]);
  sub_19796F530();
  OUTLINED_FUNCTION_159_0();
  sub_197A883D8();
  (*(v5 + 8))(v1, v3);
  OUTLINED_FUNCTION_113_3();
}

uint64_t OUTLINED_FUNCTION_126_0()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_126_1()
{
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_126_3()
{

  return sub_197A49444();
}

unint64_t sub_19796F530()
{
  result = qword_1ED87D8F0;
  if (!qword_1ED87D8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED87D8F0);
  }

  return result;
}

uint64_t sub_19796F590()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  v5 = *(v0 + 160);
  *v4 = *v2;
  *(v3 + 168) = v1;

  OUTLINED_FUNCTION_52_5();
  v7 = *(v0 + 80);
  sub_19796F6D0(*(v6 + 120), type metadata accessor for InferenceProviderXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_19796F6D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_19796F728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_21_4();
  sub_19796FA14();
  v17 = *(v14 + 136);
  if (!v13)
  {
    OUTLINED_FUNCTION_97_1();
    sub_197947900(v17, &qword_1EAF499F8);
    OUTLINED_FUNCTION_79_6();

    OUTLINED_FUNCTION_15();
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_111_1();
  OUTLINED_FUNCTION_1_8();
  sub_197955EBC(v18, v19);
  OUTLINED_FUNCTION_28_3();
  OUTLINED_FUNCTION_5_6();
  sub_19794B1D0(v15, v20, v21);
  sub_197947900(v17, &qword_1EAF499F8);
  OUTLINED_FUNCTION_81_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (!OUTLINED_FUNCTION_27_5())
  {
    goto LABEL_11;
  }

  if (OUTLINED_FUNCTION_126_1() != 5)
  {
    sub_19796F6D0(v17, type metadata accessor for ModelManagerError);
LABEL_11:

    if (qword_1ED87DD80 != -1)
    {
      OUTLINED_FUNCTION_3_6();
    }

    v33 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v33, qword_1ED87DD88);
    MEMORY[0x19A8EBBD0](v12);
    v34 = sub_197A875E8();
    sub_197A87D38();

    if (OUTLINED_FUNCTION_96_1())
    {
      OUTLINED_FUNCTION_56();
      v35 = OUTLINED_FUNCTION_50_1();
      OUTLINED_FUNCTION_109_1(5.7779e-34);
      v36 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_78(v36);
      OUTLINED_FUNCTION_19_6();
      _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
      sub_197947900(v35, &qword_1EAF48A90);
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_29();
    }

    swift_willThrow();
    goto LABEL_16;
  }

  v22 = *v17;
  v23 = v17[1];
  if (qword_1ED87DD80 != -1)
  {
    OUTLINED_FUNCTION_3_6();
  }

  v24 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v24, qword_1ED87DD88);
  sub_197A878A8();
  v25 = sub_197A875E8();
  sub_197A87D78();
  OUTLINED_FUNCTION_125_0();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_84_2();
    OUTLINED_FUNCTION_85_2(4.8149e-34);
    v26 = OUTLINED_FUNCTION_100_0();
    *(v16 + 4) = sub_197948834(v26, v27, v28);
    OUTLINED_FUNCTION_55_3(&dword_197941000, v29, v30, "XPC Connection error: %s");
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_36_3();
  }

  v31 = OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_30_5(v31, v32);
  swift_willThrow();

LABEL_16:
  OUTLINED_FUNCTION_34_3();

  OUTLINED_FUNCTION_22_1();
LABEL_17:
  OUTLINED_FUNCTION_12_0();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
}