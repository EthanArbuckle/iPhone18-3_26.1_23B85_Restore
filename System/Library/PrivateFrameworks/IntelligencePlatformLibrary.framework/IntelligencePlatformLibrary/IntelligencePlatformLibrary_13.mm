uint64_t ResponseGeneration.contextId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for ResponseGeneration(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t ResponseGeneration.init()()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for ResponseGeneration.Event(v2);
  v4 = OUTLINED_FUNCTION_28_0();
  v7 = OUTLINED_FUNCTION_163_4(v4, v5, v6);
  v8 = type metadata accessor for ResponseGeneration(v7);
  OUTLINED_FUNCTION_240_0(v8);
  sub_19393BE60();
  v9 = OUTLINED_FUNCTION_33_11();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  sub_19344E6DC(v0, &qword_1EAE3C068, &unk_19395C2A0);
  v13 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v3);
  sub_19344E6DC(v0 + v1, &qword_1EAE3AA88, &qword_19394F9C0);
  v16 = OUTLINED_FUNCTION_33_11();

  return __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
}

uint64_t sub_193532478(uint64_t (*a1)(void), uint64_t a2, uint64_t *a3)
{
  v4 = a1(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  v8 = OUTLINED_FUNCTION_127();
  sub_19344E6DC(v8, v9, a3);
  OUTLINED_FUNCTION_45();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v4);
}

void ResponseGeneration.Event.Generation.Ended.source.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 49);
  OUTLINED_FUNCTION_5_2(a1);
}

uint64_t ResponseGeneration.Event.Generation.Ended.characterCount.setter(uint64_t result)
{
  *(v1 + 52) = result;
  *(v1 + 56) = BYTE4(result) & 1;
  return result;
}

uint64_t ResponseGeneration.Event.Generation.Ended.wordCount.setter(uint64_t result)
{
  *(v1 + 60) = result;
  *(v1 + 64) = BYTE4(result) & 1;
  return result;
}

void ResponseGeneration.Event.Generation.Ended.fallbackReason.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 81);
  OUTLINED_FUNCTION_5_2(a1);
}

uint64_t ResponseGeneration.Event.Generation.Ended.fallbackReason.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 72) = *result;
  *(v1 + 80) = v2;
  *(v1 + 81) = v3;
  return result;
}

uint64_t ResponseGeneration.Event.Generation.Ended.displayString.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t ResponseGeneration.Event.Generation.Ended.displayString.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t ResponseGeneration.Event.Generation.Ended.spokenString.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t ResponseGeneration.Event.Generation.Ended.spokenString.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 112);

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t ResponseGeneration.Event.Generation.Ended.catId.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t ResponseGeneration.Event.Generation.Ended.catId.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 128);

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

uint64_t ResponseGeneration.Event.Generation.Ended.staticDialogId.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t ResponseGeneration.Event.Generation.Ended.staticDialogId.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 144);

  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

uint64_t ResponseGeneration.Event.Generation.Ended.transcriptEventId.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for ResponseGeneration.Event.Generation.Ended(v2);
  return sub_193448804(v1 + *(v3 + 52), v0, &qword_1EAE3AA88, &qword_19394F9C0);
}

uint64_t ResponseGeneration.Event.Generation.Ended.transcriptEventId.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = type metadata accessor for ResponseGeneration.Event.Generation.Ended(v2);
  return sub_19344542C(v0, v1 + *(v3 + 52), &qword_1EAE3AA88, &qword_19394F9C0);
}

uint64_t ResponseGeneration.Event.Generation.Ended.transcriptEventId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for ResponseGeneration.Event.Generation.Ended(v0) + 52);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t ResponseGeneration.Event.Generation.Ended.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_250(xmmword_1939526A0);
  *(a1 + 48) = 256;
  OUTLINED_FUNCTION_193_0();
  *(a1 + 72) = 0;
  *(a1 + 80) = 256;
  v2 = *(type metadata accessor for ResponseGeneration.Event.Generation.Ended(0) + 52);
  sub_19393BE60();
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  sub_193456418(*a1, *(a1 + 8));
  OUTLINED_FUNCTION_250(xmmword_1939526A0);
  *(a1 + 48) = 256;
  OUTLINED_FUNCTION_193_0();
  *(a1 + 52) = 0;
  *(a1 + 56) = 1;
  *(a1 + 60) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 256;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  sub_19344E6DC(a1 + v2, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_26_1();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_193532A28@<X0>(uint64_t *a1@<X8>)
{
  result = ResponseGeneration.Event.Generation.Ended.Source.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193532A50@<X0>(uint64_t *a1@<X8>)
{
  result = static ResponseGeneration.Event.Generation.Ended.Source.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193532AA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_180();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_193532B40()
{
  OUTLINED_FUNCTION_179_0();
  v2 = v1(v0);
  return MEMORY[0x193B18030](v2);
}

uint64_t sub_193532BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_180();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

BOOL sub_193532C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_196_1();
  v8 = v7(v6);
  return v8 == a5(v8);
}

uint64_t sub_193532CB8@<X0>(uint64_t *a1@<X8>)
{
  result = ResponseGeneration.Event.Generation.Ended.FallbackReason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193532CE0@<X0>(uint64_t *a1@<X8>)
{
  result = static ResponseGeneration.Event.Generation.Ended.FallbackReason.allCases.getter();
  *a1 = result;
  return result;
}

void static ResponseGeneration.Event.Generation.Ended.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  OUTLINED_FUNCTION_166_3();
  v3 = sub_19393BE60();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_289();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_254(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  OUTLINED_FUNCTION_4_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_53_1();
  v18 = *v0;
  v19 = v0[1];
  v21 = v0[2];
  v20 = v0[3];
  v101 = v0;
  v102 = v2;
  v22 = *(v0 + 32);
  v24 = *v2;
  v23 = v2[1];
  v25 = v2[2];
  v26 = v2[3];
  LOBYTE(v2) = *(v2 + 32);
  if (v19 == 1)
  {
    v98 = v16;
    v99 = v17;
    v27 = OUTLINED_FUNCTION_224();
    sub_19350CB08(v27, v28);
    if (v23 == 1)
    {
      OUTLINED_FUNCTION_242();
      OUTLINED_FUNCTION_101_8();
      sub_19350CB08(v29, v30);
      v31 = OUTLINED_FUNCTION_224();
      sub_193456418(v31, v32);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_102_7();
    OUTLINED_FUNCTION_101_8();
    sub_19350CB08(v39, v40);
LABEL_7:
    v41 = OUTLINED_FUNCTION_31_15();
    sub_193456418(v41, v42);
    OUTLINED_FUNCTION_102_7();
    OUTLINED_FUNCTION_101_8();
    sub_193456418(v43, v44);
    goto LABEL_8;
  }

  if (v23 == 1)
  {
    v33 = OUTLINED_FUNCTION_31_15();
    sub_19350CB08(v33, v34);
    OUTLINED_FUNCTION_242();
    OUTLINED_FUNCTION_101_8();
    sub_19350CB08(v35, v36);
    v37 = OUTLINED_FUNCTION_31_15();
    sub_19350CB08(v37, v38);

    goto LABEL_7;
  }

  v98 = v16;
  v99 = v17;
  static IntelligenceFlowError.== infix(_:_:)();
  v97 = v45;
  v46 = OUTLINED_FUNCTION_31_15();
  sub_19350CB08(v46, v47);
  OUTLINED_FUNCTION_102_7();
  OUTLINED_FUNCTION_101_8();
  sub_19350CB08(v48, v49);
  v50 = OUTLINED_FUNCTION_31_15();
  sub_19350CB08(v50, v51);

  v52 = OUTLINED_FUNCTION_31_15();
  sub_193456418(v52, v53);
  if ((v97 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  v54 = *(v102 + 49);
  if (*(v101 + 49))
  {
    if ((*(v102 + 49) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (*(v102 + 49))
    {
      goto LABEL_8;
    }

    v55 = *(v101 + 48);
    v56 = v102[5];
    v57 = *(v102 + 48);
    OUTLINED_FUNCTION_181_5(v101[5]);
    v58 = ResponseGeneration.Event.Generation.Ended.Source.rawValue.getter();
    if (v58 != ResponseGeneration.Event.Generation.Ended.Source.rawValue.getter())
    {
      goto LABEL_8;
    }
  }

  v59 = *(v102 + 56);
  if (v101[7])
  {
    if (!*(v102 + 56))
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (*(v101 + 13) != *(v102 + 13))
    {
      v59 = 1;
    }

    if (v59)
    {
      goto LABEL_8;
    }
  }

  v60 = *(v102 + 64);
  if (v101[8])
  {
    if (!*(v102 + 64))
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (*(v101 + 15) != *(v102 + 15))
    {
      v60 = 1;
    }

    if (v60)
    {
      goto LABEL_8;
    }
  }

  v61 = *(v102 + 81);
  if (*(v101 + 81))
  {
    if ((*(v102 + 81) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (*(v102 + 81))
    {
      goto LABEL_8;
    }

    v62 = *(v101 + 80);
    v63 = v102[9];
    v64 = *(v102 + 80);
    OUTLINED_FUNCTION_181_5(v101[9]);
    v65 = ResponseGeneration.Event.Generation.Ended.FallbackReason.rawValue.getter();
    if (v65 != ResponseGeneration.Event.Generation.Ended.FallbackReason.rawValue.getter())
    {
      goto LABEL_8;
    }
  }

  v66 = v101[12];
  v67 = v102[12];
  if (v66)
  {
    if (!v67)
    {
      goto LABEL_8;
    }

    v68 = v101[11] == v102[11] && v66 == v67;
    if (!v68 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v67)
  {
    goto LABEL_8;
  }

  v69 = v101[14];
  v70 = v102[14];
  if (v69)
  {
    if (!v70)
    {
      goto LABEL_8;
    }

    v71 = v101[13] == v102[13] && v69 == v70;
    if (!v71 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v70)
  {
    goto LABEL_8;
  }

  v72 = v101[16];
  v73 = v102[16];
  if (v72)
  {
    if (!v73)
    {
      goto LABEL_8;
    }

    v74 = v101[15] == v102[15] && v72 == v73;
    if (!v74 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v73)
  {
    goto LABEL_8;
  }

  v75 = v101[18];
  v76 = v102[18];
  if (v75)
  {
    if (!v76)
    {
      goto LABEL_8;
    }

    v77 = v101[17] == v102[17] && v75 == v76;
    if (!v77 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v76)
  {
    goto LABEL_8;
  }

  v78 = *(type metadata accessor for ResponseGeneration.Event.Generation.Ended(0) + 52);
  v79 = *(v98 + 48);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v80, v81, v82, v83);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v84, v85, v86, v87);
  OUTLINED_FUNCTION_32_15(v99, 1);
  if (!v68)
  {
    sub_193448804(v99, v100, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_5_3(v99 + v79);
    if (!v88)
    {
      OUTLINED_FUNCTION_98_8();
      v91 = OUTLINED_FUNCTION_214();
      v92(v91);
      OUTLINED_FUNCTION_0_36();
      sub_19354129C(v93, v94);
      OUTLINED_FUNCTION_66_9();
      v95 = OUTLINED_FUNCTION_54_7();
      (qword_19394F9C0)(v95);
      v96 = OUTLINED_FUNCTION_102_7();
      (qword_19394F9C0)(v96);
      sub_19344E6DC(v99, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_8;
    }

    v89 = OUTLINED_FUNCTION_99_9();
    v90(v89);
LABEL_76:
    sub_19344E6DC(v99, &qword_1EAE3B4E8, &unk_193952CF0);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_5_3(v99 + v79);
  if (!v68)
  {
    goto LABEL_76;
  }

  sub_19344E6DC(v99, &qword_1EAE3AA88, &qword_19394F9C0);
LABEL_8:
  OUTLINED_FUNCTION_116();
}

void ResponseGeneration.Event.Generation.Ended.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_57_3();
  v3 = sub_19393BE60();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_289();
  v39 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_76_0();
  v14 = *(v0 + 8);
  if (v14 != 1)
  {
    v15 = v6;
    v16 = *v1;
    v17 = *(v1 + 32);
    v18 = v1[2];
    v38 = v1[3];
    OUTLINED_FUNCTION_103_0();
    if (v14)
    {
      OUTLINED_FUNCTION_103_0();
      sub_19393C640();
    }

    else
    {
      OUTLINED_FUNCTION_104_0();
    }

    v6 = v15;
    if ((v18 & 0x100000000) != 0)
    {
      OUTLINED_FUNCTION_104_0();
      if ((v17 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      OUTLINED_FUNCTION_103_0();
      sub_19393CAE0();
      if ((v17 & 1) == 0)
      {
LABEL_7:
        OUTLINED_FUNCTION_103_0();
        MEMORY[0x193B18060](v38);
        goto LABEL_10;
      }
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_10:
  if (*(v1 + 49))
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v19 = *(v1 + 48);
    v20 = v1[5];
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_173_4(v19 & 1);
    v21 = ResponseGeneration.Event.Generation.Ended.Source.rawValue.getter();
    MEMORY[0x193B18030](v21);
  }

  if (*(v1 + 56) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v22 = *(v1 + 13);
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  if (*(v1 + 64) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v23 = *(v1 + 15);
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  if (*(v1 + 81) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v24 = *(v1 + 80);
    v25 = v1[9];
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_173_4(v24 & 1);
    v26 = ResponseGeneration.Event.Generation.Ended.FallbackReason.rawValue.getter();
    MEMORY[0x193B18030](v26);
  }

  if (v1[12])
  {
    v27 = v1[11];
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_177();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v1[14])
  {
    v28 = v1[13];
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_177();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v1[16])
  {
    v29 = v1[15];
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_177();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (v1[18])
  {
    v30 = v1[17];
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_177();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v31 = type metadata accessor for ResponseGeneration.Event.Generation.Ended(0);
  OUTLINED_FUNCTION_238_0(&qword_1EAE3AA88, &qword_19394F9C0, *(v31 + 52));
  OUTLINED_FUNCTION_5_9(v2);
  if (v32)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v6 + 32))(v39, v2, v3);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_36();
    sub_19354129C(v33, v34);
    OUTLINED_FUNCTION_79_8();
    sub_19393C540();
    v35 = *(v6 + 8);
    v36 = OUTLINED_FUNCTION_175_0();
    v37(v36);
  }

  OUTLINED_FUNCTION_116();
}

uint64_t sub_193533650(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_119();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_1935336B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t sub_193533734(void (*a1)(char *))
{
  v3 = *(v1 + 32);
  OUTLINED_FUNCTION_159_6();
  v4 = OUTLINED_FUNCTION_119();
  v12 = OUTLINED_FUNCTION_149_5(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15);
  a1(v12);
  return sub_19393CB00();
}

uint64_t sub_19353379C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = *(v4 + 32);
  OUTLINED_FUNCTION_159_6();
  v7 = sub_19393CAB0();
  v15 = OUTLINED_FUNCTION_149_5(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18);
  a4(v15);
  return sub_19393CB00();
}

void static ResponseGeneration.Event.Generation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v2 = OUTLINED_FUNCTION_56_5();
  v3 = type metadata accessor for ResponseGeneration.Event.Generation.StateInfo(v2);
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_24();
  v7 = OUTLINED_FUNCTION_165_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_42_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C9F0, &qword_19395C2B8);
  OUTLINED_FUNCTION_47(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_70_1();
  OUTLINED_FUNCTION_89_9(v17);
  OUTLINED_FUNCTION_142_3();
  OUTLINED_FUNCTION_5_3(v0);
  if (!v22)
  {
    v18 = OUTLINED_FUNCTION_225();
    sub_193448804(v18, v19, v20, v21);
    OUTLINED_FUNCTION_5_3(v0 + v1);
    if (!v22)
    {
      OUTLINED_FUNCTION_120_3();
      OUTLINED_FUNCTION_274_0();
      OUTLINED_FUNCTION_23_10();
      static ResponseGeneration.Event.Generation.StateInfo.== infix(_:_:)();
      sub_1935413A4();
      OUTLINED_FUNCTION_94_5();
      sub_1935413A4();
      sub_19344E6DC(v0, &qword_1EAE3C078, &qword_19395C2B0);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_121_3();
    sub_1935413A4();
LABEL_9:
    sub_19344E6DC(v0, &qword_1EAE3C9F0, &qword_19395C2B8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_5_3(v0 + v1);
  if (!v22)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v0, &qword_1EAE3C078, &qword_19395C2B0);
LABEL_10:
  OUTLINED_FUNCTION_116();
}

void ResponseGeneration.Event.Generation.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  v0 = OUTLINED_FUNCTION_156_4();
  v1 = type metadata accessor for ResponseGeneration.Event.Generation.StateInfo(v0);
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_10_24();
  v5 = OUTLINED_FUNCTION_25_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_146_4();
  v11 = OUTLINED_FUNCTION_144_3();
  OUTLINED_FUNCTION_6_3(v11, v12, v1);
  if (v13)
  {
    sub_19393CAD0();
  }

  else
  {
    OUTLINED_FUNCTION_120_3();
    v14 = OUTLINED_FUNCTION_23_10();
    sub_1935413F8(v14, v15);
    sub_19393CAD0();
    OUTLINED_FUNCTION_268();
    ResponseGeneration.Event.Generation.StateInfo.hash(into:)();
    OUTLINED_FUNCTION_121_3();
    sub_1935413A4();
  }

  OUTLINED_FUNCTION_236();
}

uint64_t ResponseGeneration.Event.Override.stateInfo.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_13_0();
  memcpy(v1, v2, 0x48uLL);
  return sub_193448804(__dst, &v4, &qword_1EAE3C9F8, &qword_19395C2C0);
}

void *ResponseGeneration.Event.Override.stateInfo.setter(const void *a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_193510818(__dst);
  return memcpy(v1, a1, 0x48uLL);
}

void ResponseGeneration.Event.Override.init()(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0xFFFFFFFF00;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  memcpy(__dst, a1, sizeof(__dst));
  sub_193510818(__dst);
  *&v2 = OUTLINED_FUNCTION_218_0();
  *(a1 + 32) = 0xFFFFFFFF00;
  *(a1 + 40) = v2;
  *(a1 + 56) = v2;
}

void ResponseGeneration.Event.Override.Ended.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 49);
  OUTLINED_FUNCTION_5_2(a1);
}

uint64_t ResponseGeneration.Event.Override.Ended.id.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t ResponseGeneration.Event.Override.Ended.id.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

void ResponseGeneration.Event.Override.Ended.init()()
{
  OUTLINED_FUNCTION_68_5();
  OUTLINED_FUNCTION_250(xmmword_1939526A0);
  *(v0 + 48) = 256;
  OUTLINED_FUNCTION_193_0();
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
}

uint64_t sub_193533F98@<X0>(uint64_t *a1@<X8>)
{
  result = ResponseGeneration.Event.Override.Ended.OverrideType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193533FC0@<X0>(uint64_t *a1@<X8>)
{
  result = static ResponseGeneration.Event.Override.Ended.OverrideType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t static ResponseGeneration.Event.Override.Ended.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[5];
  v4 = *(a1 + 48);
  v5 = *(a1 + 49);
  v6 = a1[7];
  v7 = a1[8];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = *(a2 + 32);
  v13 = a2[5];
  v14 = *(a2 + 48);
  v15 = *(a2 + 49);
  v17 = a2[7];
  v16 = a2[8];
  if (a1[1] != 1)
  {
    v58 = *a1;
    v59 = a1[1];
    v60 = a1[2];
    v61 = a1[3];
    v62 = *(a1 + 32);
    if (v9 != 1)
    {
      v56 = *(a2 + 49);
      v57 = *(a1 + 49);
      v53 = *(a2 + 48);
      OUTLINED_FUNCTION_211();
      static IntelligenceFlowError.== infix(_:_:)();
      v49 = v38;
      v39 = OUTLINED_FUNCTION_28_10();
      sub_19350CB08(v39, v40);
      v41 = OUTLINED_FUNCTION_103_7();
      sub_19350CB08(v41, v42);
      v43 = OUTLINED_FUNCTION_28_10();
      sub_19350CB08(v43, v44);

      v45 = OUTLINED_FUNCTION_28_10();
      v24 = sub_193456418(v45, v46);
      if ((v49 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    v25 = OUTLINED_FUNCTION_28_10();
    sub_19350CB08(v25, v26);
    v27 = OUTLINED_FUNCTION_242();
    sub_19350CB08(v27, v28);
    v29 = OUTLINED_FUNCTION_28_10();
    sub_19350CB08(v29, v30);

LABEL_7:
    v33 = OUTLINED_FUNCTION_28_10();
    sub_193456418(v33, v34);
    v35 = OUTLINED_FUNCTION_103_7();
    sub_193456418(v35, v36);
    return 0;
  }

  v56 = *(a2 + 49);
  v57 = *(a1 + 49);
  v52 = *(a2 + 48);
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_51_7();
  sub_19350CB08(v18, v19);
  if (v9 != 1)
  {
    v31 = OUTLINED_FUNCTION_103_7();
    sub_19350CB08(v31, v32);
    goto LABEL_7;
  }

  v20 = OUTLINED_FUNCTION_242();
  sub_19350CB08(v20, v21);
  OUTLINED_FUNCTION_51_7();
  v24 = sub_193456418(v22, v23);
LABEL_11:
  if (v57)
  {
    if ((v56 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v56)
    {
      return 0;
    }

    v47 = ResponseGeneration.Event.Override.Ended.OverrideType.rawValue.getter(v24);
    if (v47 != ResponseGeneration.Event.Override.Ended.OverrideType.rawValue.getter(v47))
    {
      return 0;
    }
  }

  if (v55)
  {
    if (v54)
    {
      v48 = v51 == v50 && v55 == v54;
      if (v48 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v54)
  {
    return 1;
  }

  return 0;
}

void ResponseGeneration.Event.Override.Ended.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[5];
  v3 = *(v0 + 48);
  v4 = *(v0 + 49);
  v5 = v0[8];
  if (v1 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:
    v9 = OUTLINED_FUNCTION_103_0();
    v10 = ResponseGeneration.Event.Override.Ended.OverrideType.rawValue.getter(v9);
    MEMORY[0x193B18030](v10);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v13 = v0[7];
  v6 = *v0;
  v7 = *(v0 + 32);
  v8 = v0[2];
  v12 = v0[3];
  OUTLINED_FUNCTION_103_0();
  if (v1)
  {
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_177();
    if ((v8 & 0x100000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    OUTLINED_FUNCTION_104_0();
    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  OUTLINED_FUNCTION_104_0();
  if ((v8 & 0x100000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  OUTLINED_FUNCTION_103_0();
  sub_19393CAE0();
  if ((v7 & 1) == 0)
  {
LABEL_8:
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v12);
    goto LABEL_12;
  }

LABEL_11:
  OUTLINED_FUNCTION_104_0();
LABEL_12:
  if ((v4 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  OUTLINED_FUNCTION_104_0();
  if (!v5)
  {
LABEL_4:
    OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_107();
    return;
  }

LABEL_14:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_107();

  sub_19393C640();
}

uint64_t ResponseGeneration.Event.Override.Ended.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  ResponseGeneration.Event.Override.Ended.hash(into:)();
  return sub_19393CB00();
}

uint64_t ResponseGeneration.Event.Override.StateInfo.hashValue.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_19393CAB0();
  ResponseGeneration.Event.Override.StateInfo.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19353451C()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_19393CAB0();
  ResponseGeneration.Event.Override.StateInfo.hash(into:)();
  return sub_19393CB00();
}

void static ResponseGeneration.Event.Override.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  memcpy(v49, v2, sizeof(v49));
  memcpy(v50, v1, 0x48uLL);
  v5 = v49[4];
  v4 = v49[5];
  v6 = v49[6];
  v8 = v50[4];
  v7 = v50[5];
  v9 = v50[6];
  if (v49[4] >> 8 != 0xFFFFFFFFLL || v49[6] >= 0x200uLL)
  {
    OUTLINED_FUNCTION_195_1();
    memcpy(__dst, __src, sizeof(__dst));
    if (v8 >> 8 != 0xFFFFFFFF || v9 >= 0x200)
    {
      v25 = v1[1];
      *v45 = *v1;
      *&v45[16] = v25;
      *&v45[56] = *(v1 + 56);
      *&v45[32] = v8;
      *&v45[40] = v7;
      *&v45[48] = v9;
      OUTLINED_FUNCTION_232_1(v49, v18, v19, v20, v21, v22, v23, v24, v43[0], v43[1]);
      OUTLINED_FUNCTION_232_1(v50, v26, v27, v28, v29, v30, v31, v32, v43[0], v43[1]);
      OUTLINED_FUNCTION_232_1(__src, v33, v34, v35, v36, v37, v38, v39, v43[0], v43[1]);
      static ResponseGeneration.Event.Override.StateInfo.== infix(_:_:)();
      memcpy(v43, v45, sizeof(v43));
      sub_19351DA00(v43);
      memcpy(v44, __dst, sizeof(v44));
      sub_19351DA00(v44);
      v40 = v3[1];
      *v45 = *v3;
      *&v45[16] = v40;
      *&v45[32] = v5;
      *&v45[40] = v4;
      *&v45[48] = v6;
      *&v45[56] = *(v3 + 56);
      sub_19344E6DC(v45, &qword_1EAE3C9F8, &qword_19395C2C0);
      goto LABEL_12;
    }

    memcpy(v45, __src, sizeof(v45));
    OUTLINED_FUNCTION_226(v49, v44);
    OUTLINED_FUNCTION_226(v50, v44);
    OUTLINED_FUNCTION_226(__src, v44);
    sub_19351DA00(v45);
LABEL_11:
    v41 = v3[1];
    *__src = *v3;
    *&__src[2] = v41;
    *&__src[7] = *(v3 + 56);
    v42 = v1[1];
    *&__src[9] = *v1;
    __src[4] = v5;
    __src[5] = v4;
    *&__src[11] = v42;
    __src[6] = v6;
    __src[13] = v8;
    __src[14] = v7;
    __src[15] = v9;
    v48 = *(v1 + 56);
    sub_19344E6DC(__src, &qword_1EAE3CA00, &qword_19395C2C8);
    goto LABEL_12;
  }

  if (v50[4] >> 8 != 0xFFFFFFFFLL || v50[6] >= 0x200uLL)
  {
    OUTLINED_FUNCTION_226(v49, __src);
    OUTLINED_FUNCTION_226(v50, __src);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_195_1();
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v10, v11, v12, v13);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v14, v15, v16, v17);
  sub_19344E6DC(__src, &qword_1EAE3C9F8, &qword_19395C2C0);
LABEL_12:
  OUTLINED_FUNCTION_116();
}

uint64_t ResponseGeneration.Event.Override.hash(into:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  if (v1 >> 8 == 0xFFFFFFFF && v2 <= 0x1FF)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  v7[0] = *v0;
  v7[1] = v5;
  *(&v7[3] + 8) = *(v0 + 56);
  *&v7[2] = v1;
  *(&v7[2] + 1) = v4;
  *&v7[3] = v2;
  OUTLINED_FUNCTION_103_0();
  v6 = *(v0 + 16);
  v8[0] = *v0;
  v8[1] = v6;
  v9 = v1;
  v10 = v4;
  v11 = v2;
  v12 = *(v0 + 56);
  sub_19350E860(v8, __dst);
  ResponseGeneration.Event.Override.StateInfo.hash(into:)();
  memcpy(__dst, v7, sizeof(__dst));
  return sub_19351DA00(__dst);
}

uint64_t ResponseGeneration.Event.Override.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_19393CAB0();
  if (v1 >> 8 == 0xFFFFFFFF && v3 <= 0x1FF)
  {
    sub_19393CAD0();
  }

  else
  {
    v4 = *(v0 + 16);
    __src[0] = *v0;
    __src[1] = v4;
    *&__src[2] = v1;
    *(&__src[2] + 1) = v2;
    *&__src[3] = v3;
    *(&__src[3] + 8) = *(v0 + 56);
    memcpy(__dst, __src, sizeof(__dst));
    sub_19393CAD0();
    sub_19350E860(__src, v8);
    ResponseGeneration.Event.Override.StateInfo.hash(into:)();
    memcpy(v8, __dst, sizeof(v8));
    sub_19351DA00(v8);
  }

  return sub_19393CB00();
}

uint64_t sub_1935349CC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

void ResponseGeneration.Event.ResponseCatalog.init()(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_169_3();
  sub_19345D748(v2, v3, v4, v5, 65280);
  OUTLINED_FUNCTION_218_0();
  *(a1 + 32) = -256;
}

uint64_t sub_193534E24(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *(v2 + 32);
  if (v5 >> 8 >= 0xFF)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_103_0();
  v8 = OUTLINED_FUNCTION_19_3();
  sub_19350F26C(v8, v9, v4, v3, v5, SBYTE1(v5));
  v10 = OUTLINED_FUNCTION_161();
  v11 = a2(v10);
  v19 = OUTLINED_FUNCTION_252(v11, v12, v13, v14, v15, v16, v17, v18, v25, v26);
  return sub_19350F244(v19, v20, v21, v22, v23, v24);
}

uint64_t sub_193534EDC(uint64_t (*a1)(_BYTE *))
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  sub_19393CAB0();
  sub_19393CAD0();
  if (v7 >> 8 < 0xFF)
  {
    OUTLINED_FUNCTION_2_0();
    sub_19350F26C(v8, v9, v10, v6, v7, SBYTE1(v7));
    v11 = a1(v26);
    v19 = OUTLINED_FUNCTION_249(v11, v12, v13, v14, v15, v16, v17, v18, v3);
    sub_19350F244(v19, v20, v21, v22, v23, v24);
  }

  return sub_19393CB00();
}

void ResponseGeneration.Event.ModelInference.init()(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_169_3();
  sub_193510804(v2, v3, v4, v5, 65280);
  OUTLINED_FUNCTION_218_0();
  *(a1 + 32) = -256;
}

uint64_t ResponseGeneration.Event.ModelInference.Started.modelVersion.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t ResponseGeneration.Event.ModelInference.Started.modelVersion.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ResponseGeneration.Event.ModelInference.Started.promptVersion.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t ResponseGeneration.Event.ModelInference.Started.promptVersion.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

IntelligencePlatformLibrary::ResponseGeneration::Event::ModelInference::Started __swiftcall ResponseGeneration.Event.ModelInference.Started.init()()
{
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t static ResponseGeneration.Event.ModelInference.Started.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      if (v4 == v7 && v5 == v8)
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

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t ResponseGeneration.Event.ModelInference.Started.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  if (!v0[1])
  {
    sub_19393CAD0();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_19393CAD0();
  }

  v3 = *v0;
  sub_19393CAD0();
  sub_19393C640();
  if (!v2)
  {
    return sub_19393CAD0();
  }

LABEL_3:
  sub_19393CAD0();
  OUTLINED_FUNCTION_245();

  return sub_19393C640();
}

uint64_t ResponseGeneration.Event.ModelInference.Started.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v2)
  {
    OUTLINED_FUNCTION_2_0();
    sub_19393C640();
  }

  sub_19393CAD0();
  if (v4)
  {
    OUTLINED_FUNCTION_116_3();
  }

  return sub_19393CB00();
}

uint64_t sub_193535348()
{
  v2 = *v0;
  v3 = v0[1];
  sub_19393CAB0();
  ResponseGeneration.Event.ModelInference.Started.hash(into:)();
  return sub_19393CB00();
}

uint64_t ResponseGeneration.Event.ModelInference.hash(into:)()
{
  v1 = *(v0 + 32);
  if (v1 >> 8 >= 0xFF)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v22 = *v0;
  v23 = *(v0 + 8);
  v24 = *(v0 + 16);
  v25 = *(v0 + 24);
  v26 = *(v0 + 32);
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_203_0();
  sub_19350ED64(v3, v4, v5, v6, v1, SBYTE1(v1));
  OUTLINED_FUNCTION_161();
  v7 = ResponseGeneration.Event.ModelInference.StateInfo.hash(into:)();
  v15 = OUTLINED_FUNCTION_252(v7, v8, v9, v10, v11, v12, v13, v14, v21, v22);

  return sub_19350ECD0(v15, v16, v17, v18, v19, v20);
}

uint64_t ResponseGeneration.Event.ModelInference.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_19393CAB0();
  sub_19393CAD0();
  if (v5 >> 8 < 0xFF)
  {
    OUTLINED_FUNCTION_187();
    OUTLINED_FUNCTION_105_5();
    sub_19350ED64(v6, v7, v8, v9, v5, SBYTE1(v5));
    v10 = ResponseGeneration.Event.ModelInference.StateInfo.hash(into:)();
    v18 = OUTLINED_FUNCTION_249(v10, v11, v12, v13, v14, v15, v16, v17, v1);
    sub_19350ECD0(v18, v19, v20, v21, v22, v23);
  }

  return sub_19393CB00();
}

uint64_t sub_1935357F8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  *a2 = *v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = *(v2 + 32);
  return a1();
}

void sub_193535834(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_199_1(a1);
  v4(v3);
  OUTLINED_FUNCTION_148();
  *(v1 + 32) = v2;
}

uint64_t sub_193535A20(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  OUTLINED_FUNCTION_104_7();
  v5 = sub_19393CAB0();
  v13 = OUTLINED_FUNCTION_149_5(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  a4(v13);
  return sub_19393CB00();
}

uint64_t ResponseGeneration.Event.CacheManagerCall.traceId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for ResponseGeneration.Event.CacheManagerCall(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

void static ResponseGeneration.Event.CacheManagerCall.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_56_5();
  v82 = sub_19393BE60();
  v7 = OUTLINED_FUNCTION_0(v82);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_289();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_254(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  OUTLINED_FUNCTION_4_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_141_5(v19);
  if (!(!v25 & v24))
  {
    OUTLINED_FUNCTION_212_0(v20, v21, v22, v23);
    if (!(!v25 & v24))
    {
      v78 = v26;
      v83 = v30;
      v84 = v29;
      v85 = v5;
      v86 = v2;
      v87 = v1;
      v88 = v28;
      v46 = v29;
      v80 = v2;
      v47 = v30;
      sub_19345DC44(v3, v0, v6, v27, v4);
      sub_19345DC44(v47, v46, v5, v80, v1);
      OUTLINED_FUNCTION_78_7();
      OUTLINED_FUNCTION_265();
      sub_19345DC44(v48, v49, v50, v51, v52);
      v53 = static ResponseGeneration.Event.CacheManagerCall.StateInfo.== infix(_:_:)(v89, &v83);
      sub_19344C7C0(v83, v84, v85, v86, v87, v88);
      sub_19344C7C0(v89[0], v89[1], v89[2], v89[3], v90, v91);
      OUTLINED_FUNCTION_78_7();
      OUTLINED_FUNCTION_265();
      sub_19344C7D8(v54, v55, v56, v57, v58);
      if ((v53 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_11;
    }

    sub_19345DC44(v3, v0, v6, v27, v4);
    OUTLINED_FUNCTION_200_1();
    sub_19345DC44(v31, v32, v33, v34, v35);
    OUTLINED_FUNCTION_162_5();
    OUTLINED_FUNCTION_34_13();
    sub_19345DC44(v36, v37, v38, v39, v40);
    OUTLINED_FUNCTION_155_3();
LABEL_9:
    OUTLINED_FUNCTION_90_9();
    OUTLINED_FUNCTION_200_1();
    sub_19344C7D8(v41, v42, v43, v44, v45);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_110_4(v20, v21, v22, v23);
  if (!(!v25 & v24))
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_90_9();
LABEL_11:
  v59 = *(type metadata accessor for ResponseGeneration.Event.CacheManagerCall(0) + 20);
  v60 = *(v78 + 48);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v61, v62, v63, v64);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v65, v66, v67, v68);
  OUTLINED_FUNCTION_32_15(v81, 1);
  if (!v25)
  {
    sub_193448804(v81, v79, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_5_3(v81 + v60);
    if (!v69)
    {
      OUTLINED_FUNCTION_98_8();
      v72 = OUTLINED_FUNCTION_214();
      v73(v72);
      OUTLINED_FUNCTION_0_36();
      sub_19354129C(v74, v75);
      OUTLINED_FUNCTION_66_9();
      v76 = OUTLINED_FUNCTION_54_7();
      (qword_19394F9C0)(v76);
      v77 = OUTLINED_FUNCTION_102_7();
      (qword_19394F9C0)(v77);
      sub_19344E6DC(v81, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_20;
    }

    v70 = OUTLINED_FUNCTION_99_9();
    v71(v70);
LABEL_19:
    sub_19344E6DC(v81, &qword_1EAE3B4E8, &unk_193952CF0);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_5_3(v81 + v60);
  if (!v25)
  {
    goto LABEL_19;
  }

  sub_19344E6DC(v81, &qword_1EAE3AA88, &qword_19394F9C0);
LABEL_20:
  OUTLINED_FUNCTION_116();
}

uint64_t sub_1935360D0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  *a2 = *v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = *(v2 + 32);
  return a1();
}

void sub_19353610C(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_199_1(a1);
  v4(v3);
  OUTLINED_FUNCTION_148();
  *(v1 + 32) = v2;
}

uint64_t ResponseGeneration.Event.GMSCall.traceId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for ResponseGeneration.Event.GMSCall(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193536220@<X0>(uint64_t (*a1)(void)@<X0>, void (*a2)(void, void, void, void, void)@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = -256;
  v5 = *(a1(0) + 20);
  sub_19393BE60();
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  a2(*a3, *(a3 + 8), *(a3 + 16), *(a3 + 24), *(a3 + 32));
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = -256;
  sub_19344E6DC(a3 + v5, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_5_28();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t _s27IntelligencePlatformLibrary0a4FlowB3PnRV7StartedV9hashValueSivg_0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  return sub_19393CB00();
}

uint64_t sub_193536340()
{
  v1 = *v0;
  sub_19393CAB0();
  sub_19393CAD0();
  return sub_19393CB00();
}

uint64_t sub_193536444(void (*a1)(char *))
{
  OUTLINED_FUNCTION_104_7();
  v2 = sub_19393CAB0();
  v10 = OUTLINED_FUNCTION_149_5(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13);
  a1(v10);
  return sub_19393CB00();
}

uint64_t sub_1935364AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  OUTLINED_FUNCTION_104_7();
  v5 = sub_19393CAB0();
  v13 = OUTLINED_FUNCTION_149_5(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  a4(v13);
  return sub_19393CB00();
}

void static ResponseGeneration.Event.GMSCall.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_56_5();
  v82 = sub_19393BE60();
  v7 = OUTLINED_FUNCTION_0(v82);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_289();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_254(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  OUTLINED_FUNCTION_4_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_141_5(v19);
  if (!(!v25 & v24))
  {
    OUTLINED_FUNCTION_212_0(v20, v21, v22, v23);
    if (!(!v25 & v24))
    {
      v78 = v26;
      v83 = v30;
      v84 = v29;
      v85 = v5;
      v86 = v2;
      v87 = v1;
      v88 = v28;
      v46 = v29;
      v80 = v2;
      v47 = v30;
      sub_19345DC44(v3, v0, v6, v27, v4);
      sub_19345DC44(v47, v46, v5, v80, v1);
      OUTLINED_FUNCTION_78_7();
      OUTLINED_FUNCTION_265();
      sub_19345DC44(v48, v49, v50, v51, v52);
      v53 = static ResponseGeneration.Event.GMSCall.StateInfo.== infix(_:_:)(v89, &v83);
      sub_19344C7C0(v83, v84, v85, v86, v87, v88);
      sub_19344C7C0(v89[0], v89[1], v89[2], v89[3], v90, v91);
      OUTLINED_FUNCTION_78_7();
      OUTLINED_FUNCTION_265();
      sub_19344C7D8(v54, v55, v56, v57, v58);
      if ((v53 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_11;
    }

    sub_19345DC44(v3, v0, v6, v27, v4);
    OUTLINED_FUNCTION_200_1();
    sub_19345DC44(v31, v32, v33, v34, v35);
    OUTLINED_FUNCTION_162_5();
    OUTLINED_FUNCTION_34_13();
    sub_19345DC44(v36, v37, v38, v39, v40);
    OUTLINED_FUNCTION_155_3();
LABEL_9:
    OUTLINED_FUNCTION_90_9();
    OUTLINED_FUNCTION_200_1();
    sub_19344C7D8(v41, v42, v43, v44, v45);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_110_4(v20, v21, v22, v23);
  if (!(!v25 & v24))
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_90_9();
LABEL_11:
  v59 = *(type metadata accessor for ResponseGeneration.Event.GMSCall(0) + 20);
  v60 = *(v78 + 48);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v61, v62, v63, v64);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v65, v66, v67, v68);
  OUTLINED_FUNCTION_32_15(v81, 1);
  if (!v25)
  {
    sub_193448804(v81, v79, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_5_3(v81 + v60);
    if (!v69)
    {
      OUTLINED_FUNCTION_98_8();
      v72 = OUTLINED_FUNCTION_214();
      v73(v72);
      OUTLINED_FUNCTION_0_36();
      sub_19354129C(v74, v75);
      OUTLINED_FUNCTION_66_9();
      v76 = OUTLINED_FUNCTION_54_7();
      (qword_19394F9C0)(v76);
      v77 = OUTLINED_FUNCTION_102_7();
      (qword_19394F9C0)(v77);
      sub_19344E6DC(v81, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_20;
    }

    v70 = OUTLINED_FUNCTION_99_9();
    v71(v70);
LABEL_19:
    sub_19344E6DC(v81, &qword_1EAE3B4E8, &unk_193952CF0);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_5_3(v81 + v60);
  if (!v25)
  {
    goto LABEL_19;
  }

  sub_19344E6DC(v81, &qword_1EAE3AA88, &qword_19394F9C0);
LABEL_20:
  OUTLINED_FUNCTION_116();
}

void sub_1935368F8()
{
  OUTLINED_FUNCTION_117();
  v3 = v2;
  v37 = v4;
  v38 = v5;
  v36 = v6;
  OUTLINED_FUNCTION_57_3();
  v7 = sub_19393BE60();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_1();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - v20;
  v22 = *(v0 + 32);
  if (v22 >> 8 < 0xFF)
  {
    v33 = v3;
    v34 = v15;
    v24 = v1[2];
    v23 = v1[3];
    v35 = v7;
    v10 = v1[1];
    v39 = *v1;
    v25 = v39;
    v40 = v10;
    v41 = v24;
    v42 = v23;
    v43 = v22;
    sub_19393CAD0();
    v26 = OUTLINED_FUNCTION_223_0();
    v3 = v33;
    v15 = v34;
    v7 = v35;
    v36(v26);
    v37(v25);
    v38(v39, v40, v41, v42, v43, HIBYTE(v43));
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v27 = v3(0);
  sub_193448804(v1 + *(v27 + 20), v21, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_5_9(v21);
  if (v28)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_201_1();
    v29(v15, v21, v7);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_36();
    sub_19354129C(v30, v31);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    (*(v10 + 8))(v15, v7);
  }

  OUTLINED_FUNCTION_116();
}

void static ResponseGeneration.Event.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v2 = OUTLINED_FUNCTION_56_5();
  v3 = type metadata accessor for ResponseGeneration.Event.EventType(v2);
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_24();
  v7 = OUTLINED_FUNCTION_165_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_42_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CA08, &qword_19395C2D0);
  OUTLINED_FUNCTION_47(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_70_1();
  OUTLINED_FUNCTION_89_9(v17);
  OUTLINED_FUNCTION_142_3();
  OUTLINED_FUNCTION_5_3(v0);
  if (!v22)
  {
    v18 = OUTLINED_FUNCTION_225();
    sub_193448804(v18, v19, v20, v21);
    OUTLINED_FUNCTION_5_3(v0 + v1);
    if (!v22)
    {
      OUTLINED_FUNCTION_44_9();
      OUTLINED_FUNCTION_274_0();
      OUTLINED_FUNCTION_23_10();
      static ResponseGeneration.Event.EventType.== infix(_:_:)();
      sub_1935413A4();
      OUTLINED_FUNCTION_94_5();
      sub_1935413A4();
      sub_19344E6DC(v0, &qword_1EAE3C070, &qword_19395AF28);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_45_10();
    sub_1935413A4();
LABEL_9:
    sub_19344E6DC(v0, &qword_1EAE3CA08, &qword_19395C2D0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_5_3(v0 + v1);
  if (!v22)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v0, &qword_1EAE3C070, &qword_19395AF28);
LABEL_10:
  OUTLINED_FUNCTION_116();
}

void ResponseGeneration.Event.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  v0 = OUTLINED_FUNCTION_156_4();
  v1 = type metadata accessor for ResponseGeneration.Event.EventType(v0);
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_10_24();
  v5 = OUTLINED_FUNCTION_25_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_146_4();
  v11 = OUTLINED_FUNCTION_144_3();
  OUTLINED_FUNCTION_6_3(v11, v12, v1);
  if (v13)
  {
    sub_19393CAD0();
  }

  else
  {
    OUTLINED_FUNCTION_44_9();
    v14 = OUTLINED_FUNCTION_23_10();
    sub_1935413F8(v14, v15);
    sub_19393CAD0();
    OUTLINED_FUNCTION_268();
    ResponseGeneration.Event.EventType.hash(into:)();
    OUTLINED_FUNCTION_45_10();
    sub_1935413A4();
  }

  OUTLINED_FUNCTION_236();
}

void static ResponseGeneration.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v75 = sub_19393BE60();
  v3 = OUTLINED_FUNCTION_0(v75);
  v73 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_289();
  v71 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_180_4(v12);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  OUTLINED_FUNCTION_4_1(v74);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_42_0();
  v16 = type metadata accessor for ResponseGeneration.Event(0);
  v17 = OUTLINED_FUNCTION_4_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_10_23();
  v20 = OUTLINED_FUNCTION_24_1();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
  OUTLINED_FUNCTION_47(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_61_6();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CA10, &qword_19395C2D8);
  OUTLINED_FUNCTION_47(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_55_3();
  v31 = *(v30 + 56);
  OUTLINED_FUNCTION_152_5();
  OUTLINED_FUNCTION_105_5();
  sub_193448804(v32, v33, v34, v35);
  OUTLINED_FUNCTION_105_5();
  sub_193448804(v36, v37, v38, v39);
  OUTLINED_FUNCTION_14_1(v2);
  if (!v44)
  {
    v40 = OUTLINED_FUNCTION_125_3();
    sub_193448804(v40, v41, v42, v43);
    OUTLINED_FUNCTION_14_1(v2 + v31);
    if (!v44)
    {
      OUTLINED_FUNCTION_113_5();
      sub_1935413F8(v2 + v31, v1);
      OUTLINED_FUNCTION_216();
      static ResponseGeneration.Event.== infix(_:_:)();
      v49 = v48;
      sub_1935413A4();
      OUTLINED_FUNCTION_246();
      sub_1935413A4();
      sub_19344E6DC(v2, &qword_1EAE3C068, &unk_19395C2A0);
      if ((v49 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_114_5();
    sub_1935413A4();
LABEL_9:
    v45 = &qword_1EAE3CA10;
    v46 = &qword_19395C2D8;
    v47 = v2;
LABEL_20:
    sub_19344E6DC(v47, v45, v46);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_14_1(v2 + v31);
  if (!v44)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v2, &qword_1EAE3C068, &unk_19395C2A0);
LABEL_11:
  v50 = *(type metadata accessor for ResponseGeneration(0) + 20);
  OUTLINED_FUNCTION_269();
  OUTLINED_FUNCTION_154_4();
  sub_193448804(v51, v52, v53, v54);
  OUTLINED_FUNCTION_172_4();
  sub_193448804(v55, v56, v57, v58);
  v59 = OUTLINED_FUNCTION_144_3();
  OUTLINED_FUNCTION_38_0(v59, v60);
  if (!v44)
  {
    sub_193448804(v0, v72, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_31(&unk_19395C2A0 + v0);
    if (!v61)
    {
      OUTLINED_FUNCTION_267();
      v65(v71, &unk_19395C2A0 + v0, v75);
      OUTLINED_FUNCTION_0_36();
      sub_19354129C(v66, v67);
      OUTLINED_FUNCTION_272_0();
      v68 = *(v73 + 8);
      v69 = OUTLINED_FUNCTION_215();
      v68(v69);
      v70 = OUTLINED_FUNCTION_188_2();
      v68(v70);
      sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_21;
    }

    v62 = *(v73 + 8);
    v63 = OUTLINED_FUNCTION_188_2();
    v64(v63);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_31(&unk_19395C2A0 + v0);
  if (!v44)
  {
LABEL_19:
    v45 = &qword_1EAE3B4E8;
    v46 = &unk_193952CF0;
    v47 = v0;
    goto LABEL_20;
  }

  sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
LABEL_21:
  OUTLINED_FUNCTION_116();
}

void ResponseGeneration.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v54 = sub_19393BE60();
  v3 = OUTLINED_FUNCTION_0(v54);
  v53 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_289();
  v52 = v7;
  v8 = type metadata accessor for ResponseGeneration.Event.EventType(0);
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_76_0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C070, &qword_19395AF28);
  OUTLINED_FUNCTION_47(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_61_6();
  v23 = type metadata accessor for ResponseGeneration.Event(0);
  v24 = OUTLINED_FUNCTION_4_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_1();
  v29 = v28 - v27;
  v30 = OUTLINED_FUNCTION_162_5();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
  OUTLINED_FUNCTION_47(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_70_1();
  v36 = OUTLINED_FUNCTION_127();
  sub_193448804(v36, v37, &qword_1EAE3C068, &unk_19395C2A0);
  v38 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v38, v39, v23);
  if (v44)
  {
    sub_19393CAD0();
  }

  else
  {
    OUTLINED_FUNCTION_113_5();
    sub_1935413F8(v0, v29);
    sub_19393CAD0();
    v40 = OUTLINED_FUNCTION_125_3();
    sub_193448804(v40, v41, v42, v43);
    OUTLINED_FUNCTION_6_3(v2, 1, v8);
    if (v44)
    {
      sub_19393CAD0();
    }

    else
    {
      OUTLINED_FUNCTION_44_9();
      sub_1935413F8(v2, v14);
      sub_19393CAD0();
      ResponseGeneration.Event.EventType.hash(into:)();
      OUTLINED_FUNCTION_45_10();
      sub_1935413A4();
    }

    OUTLINED_FUNCTION_114_5();
    sub_1935413A4();
  }

  v45 = type metadata accessor for ResponseGeneration(0);
  sub_193448804(v0 + *(v45 + 20), v1, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_14_1(v1);
  if (v44)
  {
    sub_19393CAD0();
  }

  else
  {
    OUTLINED_FUNCTION_201_1();
    v46(v52, v1, v54);
    sub_19393CAD0();
    OUTLINED_FUNCTION_0_36();
    sub_19354129C(v47, v48);
    sub_19393C540();
    v49 = *(v53 + 8);
    v50 = OUTLINED_FUNCTION_245();
    v51(v50);
  }

  OUTLINED_FUNCTION_116();
}

uint64_t PlanGeneration.event.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(v1 + *(type metadata accessor for PlanGeneration(v2) + 20));
  *v0 = v3;

  return sub_193438D88(v3);
}

uint64_t PlanGeneration.event.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for PlanGeneration(0) + 20);
  result = sub_19347549C(*(v1 + v3));
  *(v1 + v3) = v2;
  return result;
}

uint64_t PlanGeneration.event.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for PlanGeneration(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t PlanGeneration.contextId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for PlanGeneration(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t PlanGeneration.planEventId.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for PlanGeneration(v2);
  return sub_193448804(v1 + *(v3 + 28), v0, &qword_1EAE3AA88, &qword_19394F9C0);
}

uint64_t PlanGeneration.planEventId.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = type metadata accessor for PlanGeneration(v2);
  return sub_19344542C(v0, v1 + *(v3 + 28), &qword_1EAE3AA88, &qword_19394F9C0);
}

uint64_t PlanGeneration.planEventId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for PlanGeneration(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t PlanGeneration.init()()
{
  OUTLINED_FUNCTION_237();
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for PlanGeneration.StateInfo(v1);
  v3 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  v6 = type metadata accessor for PlanGeneration(0);
  v7 = v6[5];
  *(v0 + v7) = 0xF000000000000007;
  v8 = v6[6];
  sub_19393BE60();
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = v6[7];
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  sub_19344E6DC(v0, &qword_1EAE3C080, &unk_19395C2E0);
  v18 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v2);
  sub_19347549C(*(v0 + v7));
  *(v0 + v7) = 0xF000000000000007;
  OUTLINED_FUNCTION_175();
  sub_19344E6DC(v21, v22, v23);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  OUTLINED_FUNCTION_175();
  sub_19344E6DC(v28, v29, v30);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_236();

  return __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
}

uint64_t sub_193537A18@<X0>(uint64_t *a1@<X8>)
{
  result = PlanGeneration.PlanGenerationFailureReason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193537A40@<X0>(uint64_t *a1@<X8>)
{
  result = static PlanGeneration.PlanGenerationFailureReason.allCases.getter();
  *a1 = result;
  return result;
}

void PlanGeneration.Ended.failureReason.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  OUTLINED_FUNCTION_5_2(a1);
}

uint64_t PlanGeneration.Ended.promptResponse.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t PlanGeneration.Ended.promptResponse.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_193537C1C()
{
  v0 = OUTLINED_FUNCTION_222();
  v2 = *(v1(v0) + 24);
  OUTLINED_FUNCTION_248();
  return sub_193448804(v3, v4, v5, v6);
}

uint64_t sub_193537C88()
{
  v0 = OUTLINED_FUNCTION_266();
  v2 = *(v1(v0) + 24);
  OUTLINED_FUNCTION_248();
  return sub_19344542C(v3, v4, v5, v6);
}

uint64_t PlanGeneration.Ended.transcriptEventId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for PlanGeneration.Ended(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t PlanGeneration.Event.PlanCreation.Started.prompt.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_13_0();
}

uint64_t PlanGeneration.Event.PlanCreation.Started.prompt.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

IntelligencePlatformLibrary::PlanGeneration::Event::PlanCreation::Started __swiftcall PlanGeneration.Event.PlanCreation.Started.init()()
{
  OUTLINED_FUNCTION_8_4();

  *v0 = 0;
  v0[1] = 0;
  result.prompt.value._object = v2;
  result.prompt.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_193537F6C(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t PlanGeneration.Event.PlanCreation.Ended.transcriptEventId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for PlanGeneration.Event.PlanCreation.Ended(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_1935380C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 256;
  v3 = *(a1(0) + 24);
  sub_19393BE60();
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  *a2 = 0;
  *(a2 + 8) = 256;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  sub_19344E6DC(a2 + v3, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_26_1();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void sub_193538174()
{
  OUTLINED_FUNCTION_117();
  v5 = v4;
  OUTLINED_FUNCTION_167_4();
  v6 = sub_19393BE60();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_94_7();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_220();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  OUTLINED_FUNCTION_4_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_74();
  v20 = *(v2 + 9);
  if (*(v3 + 9))
  {
    if ((*(v2 + 9) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (*(v2 + 9))
    {
      goto LABEL_24;
    }

    v42 = *v3;
    v43 = v3[1] & 1;
    v40 = *v2;
    v41 = v2[1] & 1;
    v21 = PlanGeneration.PlanGenerationFailureReason.rawValue.getter();
    if (v21 != PlanGeneration.PlanGenerationFailureReason.rawValue.getter())
    {
      goto LABEL_24;
    }
  }

  v22 = v3[3];
  v23 = v2[3];
  if (!v22)
  {
    if (v23)
    {
      goto LABEL_24;
    }

LABEL_15:
    v25 = *(v5(0) + 24);
    v26 = *(v16 + 48);
    sub_193448804(v3 + v25, v1, &qword_1EAE3AA88, &qword_19394F9C0);
    sub_193448804(v2 + v25, v1 + v26, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_14_1(v1);
    if (v24)
    {
      OUTLINED_FUNCTION_14_1(v1 + v26);
      if (v24)
      {
        sub_19344E6DC(v1, &qword_1EAE3AA88, &qword_19394F9C0);
        goto LABEL_24;
      }
    }

    else
    {
      v27 = OUTLINED_FUNCTION_24_1();
      sub_193448804(v27, v28, v29, v30);
      OUTLINED_FUNCTION_14_1(v1 + v26);
      if (!v31)
      {
        (*(v9 + 32))(v0, v1 + v26, v6);
        OUTLINED_FUNCTION_0_36();
        sub_19354129C(v35, v36);
        OUTLINED_FUNCTION_34_7();
        sub_19393C550();
        v37 = *(v9 + 8);
        v38 = OUTLINED_FUNCTION_23_10();
        v37(v38);
        v39 = OUTLINED_FUNCTION_245();
        v37(v39);
        sub_19344E6DC(v1, &qword_1EAE3AA88, &qword_19394F9C0);
        goto LABEL_24;
      }

      v32 = *(v9 + 8);
      v33 = OUTLINED_FUNCTION_245();
      v34(v33);
    }

    sub_19344E6DC(v1, &qword_1EAE3B4E8, &unk_193952CF0);
    goto LABEL_24;
  }

  if (v23)
  {
    v24 = v3[2] == v2[2] && v22 == v23;
    if (v24 || (sub_19393CA30() & 1) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_24:
  OUTLINED_FUNCTION_116();
}

void sub_1935384E0()
{
  OUTLINED_FUNCTION_117();
  v5 = v4;
  OUTLINED_FUNCTION_57_3();
  v6 = sub_19393BE60();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_105_8();
  if (*(v0 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v16 = *(v2 + 8);
    v17 = *v2;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_173_4(v16 & 1);
    v18 = PlanGeneration.PlanGenerationFailureReason.rawValue.getter();
    MEMORY[0x193B18030](v18);
  }

  if (v2[3])
  {
    v19 = v2[2];
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v20 = v5(0);
  sub_193448804(v2 + *(v20 + 24), v3, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_5_9(v3);
  if (v21)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v9 + 32))(v1, v3, v6);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_36();
    sub_19354129C(v22, v23);
    OUTLINED_FUNCTION_79_8();
    sub_19393C540();
    v24 = *(v9 + 8);
    v25 = OUTLINED_FUNCTION_175_0();
    v26(v25);
  }

  OUTLINED_FUNCTION_116();
}

void _s27IntelligencePlatformLibrary0a4FlowB3PnRV6FailedV2eeoiySbAE_AEtFZ_0(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_206(a1);
  OUTLINED_FUNCTION_205_0(v4, v5);
  if (v1 != 1)
  {
    if (v2 != 1)
    {
      static IntelligenceFlowError.== infix(_:_:)();
      v22 = OUTLINED_FUNCTION_4_27();
      sub_19350CB08(v22, v23);
      v24 = OUTLINED_FUNCTION_12_21();
      sub_19350CB08(v24, v25);
      v26 = OUTLINED_FUNCTION_4_27();
      sub_19350CB08(v26, v27);

      v28 = OUTLINED_FUNCTION_4_27();
      sub_193456418(v28, v29);
      goto LABEL_8;
    }

    v10 = OUTLINED_FUNCTION_4_27();
    sub_19350CB08(v10, v11);
    OUTLINED_FUNCTION_34_13();
    sub_19350CB08(v12, v13);
    v14 = OUTLINED_FUNCTION_4_27();
    sub_19350CB08(v14, v15);

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_25_15();
  sub_19350CB08(v6, v7);
  if (v2 != 1)
  {
    v16 = OUTLINED_FUNCTION_12_21();
    sub_19350CB08(v16, v17);
LABEL_7:
    v18 = OUTLINED_FUNCTION_4_27();
    sub_193456418(v18, v19);
    v20 = OUTLINED_FUNCTION_12_21();
    sub_193456418(v20, v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_29_14(v3, 1);
  OUTLINED_FUNCTION_25_15();
  sub_193456418(v8, v9);
LABEL_8:
  OUTLINED_FUNCTION_270();
}

uint64_t _s27IntelligencePlatformLibrary0a4FlowB3PnRV6FailedV4hash4intoys6HasherVz_tF_0()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0[1];
  if (v1 == 1)
  {
    return sub_19393CAD0();
  }

  v2 = *v0;
  v3 = *(v0 + 32);
  v5 = v0[2];
  v4 = v0[3];
  sub_19393CAD0();
  if (v1)
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_98();
    sub_19393C640();
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_19393CAD0();
    if ((v3 & 1) == 0)
    {
      goto LABEL_5;
    }

    return sub_19393CAD0();
  }

  sub_19393CAD0();
  if ((v5 & 0x100000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_19393CAD0();
  sub_19393CAE0();
  if ((v3 & 1) == 0)
  {
LABEL_5:
    sub_19393CAD0();
    return MEMORY[0x193B18060](v4);
  }

  return sub_19393CAD0();
}

void static PlanGeneration.Event.PlanCreation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v2 = OUTLINED_FUNCTION_56_5();
  v3 = type metadata accessor for PlanGeneration.Event.PlanCreation.StateInfo(v2);
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_24();
  v7 = OUTLINED_FUNCTION_165_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_42_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CA18, &qword_19395C2F0);
  OUTLINED_FUNCTION_47(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_70_1();
  OUTLINED_FUNCTION_89_9(v17);
  OUTLINED_FUNCTION_142_3();
  OUTLINED_FUNCTION_5_3(v0);
  if (!v22)
  {
    v18 = OUTLINED_FUNCTION_225();
    sub_193448804(v18, v19, v20, v21);
    OUTLINED_FUNCTION_5_3(v0 + v1);
    if (!v22)
    {
      OUTLINED_FUNCTION_130_3();
      OUTLINED_FUNCTION_274_0();
      OUTLINED_FUNCTION_23_10();
      static PlanGeneration.Event.PlanCreation.StateInfo.== infix(_:_:)();
      sub_1935413A4();
      OUTLINED_FUNCTION_94_5();
      sub_1935413A4();
      sub_19344E6DC(v0, &qword_1EAE3C088, &qword_19395AF30);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_131_5();
    sub_1935413A4();
LABEL_9:
    sub_19344E6DC(v0, &qword_1EAE3CA18, &qword_19395C2F0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_5_3(v0 + v1);
  if (!v22)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v0, &qword_1EAE3C088, &qword_19395AF30);
LABEL_10:
  OUTLINED_FUNCTION_116();
}

void PlanGeneration.Event.PlanCreation.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  v0 = OUTLINED_FUNCTION_156_4();
  v1 = type metadata accessor for PlanGeneration.Event.PlanCreation.StateInfo(v0);
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_10_24();
  v5 = OUTLINED_FUNCTION_25_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_146_4();
  v11 = OUTLINED_FUNCTION_144_3();
  OUTLINED_FUNCTION_6_3(v11, v12, v1);
  if (v13)
  {
    sub_19393CAD0();
  }

  else
  {
    OUTLINED_FUNCTION_130_3();
    v14 = OUTLINED_FUNCTION_23_10();
    sub_1935413F8(v14, v15);
    sub_19393CAD0();
    OUTLINED_FUNCTION_268();
    PlanGeneration.Event.PlanCreation.StateInfo.hash(into:)();
    OUTLINED_FUNCTION_131_5();
    sub_1935413A4();
  }

  OUTLINED_FUNCTION_236();
}

uint64_t PlanGeneration.Event.ModelInference.stateInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 48);
  *(a1 + 48) = v8;
  return sub_193511ED8(v2, v3, v4, v5, v6, v7, v8);
}

void PlanGeneration.Event.ModelInference.stateInfo.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  sub_1935270AC(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  OUTLINED_FUNCTION_148();
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
}

double PlanGeneration.Event.ModelInference.init()@<D0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_169_3();
  sub_1935270AC(v2, v3, v4, v5, 0, 0, 0xFE00u);
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = -512;
  return result;
}

uint64_t sub_193538D90@<X0>(uint64_t *a1@<X8>)
{
  result = PlanGeneration.Event.ModelInference.Interface.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193538DB8@<X0>(uint64_t *a1@<X8>)
{
  result = static PlanGeneration.Event.ModelInference.Interface.allCases.getter();
  *a1 = result;
  return result;
}

void PlanGeneration.Event.ModelInference.Ended.failureReason.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  OUTLINED_FUNCTION_5_2(a1);
}

void PlanGeneration.Event.ModelInference.Ended.modelInterface.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 25);
  OUTLINED_FUNCTION_5_2(a1);
}

uint64_t PlanGeneration.Event.ModelInference.Ended.modelIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_13_0();
}

uint64_t PlanGeneration.Event.ModelInference.Ended.modelIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void PlanGeneration.Event.ModelInference.Ended.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
}

BOOL static PlanGeneration.Event.ModelInference.Ended.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  v5 = a1[4];
  v6 = a1[5];
  v7 = *(a2 + 9);
  v8 = a2[2];
  v9 = *(a2 + 24);
  v10 = *(a2 + 25);
  v12 = a2[4];
  v11 = a2[5];
  if (*(a1 + 9))
  {
    if ((*(a2 + 9) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    v22 = a1[4];
    v23 = a1[5];
    v26 = *a1;
    v27 = a1[1] & 1;
    v24 = *a2;
    v25 = a2[1] & 1;
    v13 = a2[5];
    v14 = PlanGeneration.PlanGenerationFailureReason.rawValue.getter();
    v15 = PlanGeneration.PlanGenerationFailureReason.rawValue.getter();
    v11 = v13;
    v5 = v22;
    v6 = v23;
    if (v14 != v15)
    {
      return 0;
    }
  }

  if (v4)
  {
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v10)
    {
      return 0;
    }

    v16 = v5;
    v17 = v11;
    v18 = PlanGeneration.Event.ModelInference.Interface.rawValue.getter();
    v19 = PlanGeneration.Event.ModelInference.Interface.rawValue.getter();
    v11 = v17;
    v5 = v16;
    if (v18 != v19)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v11)
    {
      return 0;
    }

    if (v5 != v12 || v6 != v11)
    {
      OUTLINED_FUNCTION_175();
      if ((sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return !v11;
}

void PlanGeneration.Event.ModelInference.Ended.hash(into:)()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_148_2();
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v4 = v0[4];
  v5 = v0[5];
  if (v6 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v3)
    {
      goto LABEL_3;
    }

LABEL_8:
    OUTLINED_FUNCTION_104_0();
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_9:
    OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_114();
    return;
  }

  v10 = *(v0 + 8);
  v11 = *v0;
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_179_0();
  v12 = PlanGeneration.PlanGenerationFailureReason.rawValue.getter();
  MEMORY[0x193B18030](v12);
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_3:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_179_0();
  v8 = PlanGeneration.Event.ModelInference.Interface.rawValue.getter(v7);
  MEMORY[0x193B18030](v8);
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_4:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_114();

  sub_19393C640();
}

uint64_t PlanGeneration.Event.ModelInference.Ended.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  PlanGeneration.Event.ModelInference.Ended.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19353925C()
{
  sub_19393CAB0();
  PlanGeneration.Event.ModelInference.Ended.hash(into:)();
  return sub_19393CB00();
}

void PlanGeneration.Event.ModelInference.Failed.modelInterface.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 49);
  OUTLINED_FUNCTION_5_2(a1);
}

void PlanGeneration.Event.ModelInference.Failed.init()()
{
  OUTLINED_FUNCTION_68_5();
  OUTLINED_FUNCTION_250(xmmword_1939526A0);
  *(v0 + 48) = 256;
  OUTLINED_FUNCTION_193_0();
}

uint64_t static PlanGeneration.Event.ModelInference.Failed.== infix(_:_:)(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_206(a1);
  v5 = v4[5];
  v6 = *(v4 + 48);
  v7 = *(v4 + 49);
  OUTLINED_FUNCTION_205_0(v4, v8);
  v10 = *(v9 + 40);
  v11 = *(v9 + 48);
  v12 = *(v9 + 49);
  if (v1 != 1)
  {
    if (v2 != 1)
    {
      OUTLINED_FUNCTION_217_0();
      static IntelligenceFlowError.== infix(_:_:)();
      v41 = v31;
      v32 = OUTLINED_FUNCTION_4_27();
      sub_19350CB08(v32, v33);
      v34 = OUTLINED_FUNCTION_12_21();
      sub_19350CB08(v34, v35);
      v36 = OUTLINED_FUNCTION_4_27();
      sub_19350CB08(v36, v37);

      v38 = OUTLINED_FUNCTION_4_27();
      v17 = sub_193456418(v38, v39);
      if ((v41 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    v18 = OUTLINED_FUNCTION_4_27();
    sub_19350CB08(v18, v19);
    OUTLINED_FUNCTION_34_13();
    sub_19350CB08(v20, v21);
    v22 = OUTLINED_FUNCTION_4_27();
    sub_19350CB08(v22, v23);

LABEL_7:
    v26 = OUTLINED_FUNCTION_4_27();
    sub_193456418(v26, v27);
    v28 = OUTLINED_FUNCTION_12_21();
    sub_193456418(v28, v29);
    return 0;
  }

  OUTLINED_FUNCTION_217_0();
  OUTLINED_FUNCTION_25_15();
  sub_19350CB08(v13, v14);
  if (v2 != 1)
  {
    v24 = OUTLINED_FUNCTION_12_21();
    sub_19350CB08(v24, v25);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_29_14(v3, 1);
  OUTLINED_FUNCTION_25_15();
  v17 = sub_193456418(v15, v16);
LABEL_11:
  if (v43)
  {
    if (v42)
    {
      return 1;
    }
  }

  else if ((v42 & 1) == 0)
  {
    v40 = PlanGeneration.Event.ModelInference.Interface.rawValue.getter(v17);
    if (v40 == PlanGeneration.Event.ModelInference.Interface.rawValue.getter(v40))
    {
      return 1;
    }
  }

  return 0;
}

void PlanGeneration.Event.ModelInference.Failed.hash(into:)()
{
  OUTLINED_FUNCTION_115();
  v1 = v0[1];
  v2 = v0[5];
  v3 = *(v0 + 48);
  v4 = *(v0 + 49);
  if (v1 == 1)
  {
    goto LABEL_9;
  }

  v5 = *v0;
  v6 = *(v0 + 32);
  v8 = v0[2];
  v7 = v0[3];
  OUTLINED_FUNCTION_103_0();
  if (v1)
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
    if ((v8 & 0x100000000) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
    if ((v8 & 0x100000000) == 0)
    {
LABEL_4:
      OUTLINED_FUNCTION_103_0();
      sub_19393CAE0();
      if ((v6 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      OUTLINED_FUNCTION_104_0();
      if ((v4 & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_10:
      OUTLINED_FUNCTION_104_0();
      goto LABEL_11;
    }
  }

  OUTLINED_FUNCTION_104_0();
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_5:
  OUTLINED_FUNCTION_103_0();
  MEMORY[0x193B18060](v7);
  if (v4)
  {
    goto LABEL_10;
  }

LABEL_6:
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_179_0();
  v10 = PlanGeneration.Event.ModelInference.Interface.rawValue.getter(v9);
  MEMORY[0x193B18030](v10);
LABEL_11:
  OUTLINED_FUNCTION_114();
}

uint64_t PlanGeneration.Event.ModelInference.Failed.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  PlanGeneration.Event.ModelInference.Failed.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19353962C()
{
  sub_19393CAB0();
  PlanGeneration.Event.ModelInference.Failed.hash(into:)();
  return sub_19393CB00();
}

uint64_t PlanGeneration.Event.ModelInference.StateInfo.hashValue.getter()
{
  OUTLINED_FUNCTION_62_12();
  sub_19393CAB0();
  PlanGeneration.Event.ModelInference.StateInfo.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_1935396B8()
{
  OUTLINED_FUNCTION_62_12();
  sub_19393CAB0();
  PlanGeneration.Event.ModelInference.StateInfo.hash(into:)();
  return sub_19393CB00();
}

BOOL static PlanGeneration.Event.ModelInference.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = *(a2 + 32);
  v13 = *(a2 + 40);
  v15 = *(a2 + 48);
  v107 = *(a1 + 48);
  v106 = v7;
  if (v8 >> 9 <= 0x7E)
  {
    v115 = *a1;
    v116 = v2;
    v117 = v5;
    v118 = v4;
    v119 = v6;
    v120 = v7;
    v121 = v8;
    if (v15 >> 9 <= 0x7E)
    {
      v108 = v10;
      v109 = v9;
      v110 = v11;
      v111 = v12;
      v112 = v14;
      v113 = v13;
      v114 = v15;
      v80 = OUTLINED_FUNCTION_55_7();
      v82 = v81;
      sub_193511ED8(v80, v83, v84, v85, v81, v86, v87);
      OUTLINED_FUNCTION_157_5();
      sub_193511ED8(v88, v89, v90, v91, v92, v93, v94);
      v95 = OUTLINED_FUNCTION_55_7();
      sub_193511ED8(v95, v96, v97, v98, v82, v106, v107);
      v99 = static PlanGeneration.Event.ModelInference.StateInfo.== infix(_:_:)(&v115, &v108);
      sub_193511EB4(v108, v109, v110, v111, v112, v113, v114);
      sub_193511EB4(v115, v116, v117, v118, v119, v120, v121);
      v100 = OUTLINED_FUNCTION_55_7();
      sub_1935270AC(v100, v101, v102, v103, v82, v106, v107);
      return (v99 & 1) != 0;
    }

    v37 = OUTLINED_FUNCTION_55_7();
    sub_193511ED8(v37, v38, v39, v40, v41, v42, v43);
    OUTLINED_FUNCTION_75_0();
    OUTLINED_FUNCTION_157_5();
    sub_193511ED8(v44, v45, v46, v47, v48, v49, v50);
    OUTLINED_FUNCTION_55_7();
    OUTLINED_FUNCTION_243_0();
    sub_193511ED8(v51, v52, v53, v54, v55, v56, v57);
    OUTLINED_FUNCTION_178_3();
    OUTLINED_FUNCTION_243_0();
    sub_193511EB4(v58, v59, v60, v61, v62, v63, v64);
LABEL_6:
    OUTLINED_FUNCTION_203_0();
    OUTLINED_FUNCTION_243_0();
    sub_1935270AC(v65, v66, v67, v68, v69, v70, v71);
    OUTLINED_FUNCTION_172_4();
    OUTLINED_FUNCTION_157_5();
    sub_1935270AC(v72, v73, v74, v75, v76, v77, v78);
    return 0;
  }

  v104 = *a1;
  v105 = *(a1 + 32);
  v16 = OUTLINED_FUNCTION_178_3();
  sub_193511ED8(v16, v17, v18, v19, v20, v21, v22);
  OUTLINED_FUNCTION_154_4();
  OUTLINED_FUNCTION_157_5();
  sub_193511ED8(v23, v24, v25, v26, v27, v28, v29);
  if (v15 >> 9 <= 0x7E)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_203_0();
  OUTLINED_FUNCTION_243_0();
  sub_1935270AC(v30, v31, v32, v33, v34, v35, v36);
  return 1;
}

uint64_t PlanGeneration.Event.ModelInference.hash(into:)()
{
  v3 = *(v0 + 48);
  if (v3 >> 9 >= 0x7F)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_103_0();
  v7 = OUTLINED_FUNCTION_19_3();
  sub_193511EEC(v7, v8, v2, v1, v6, v5, v3);
  OUTLINED_FUNCTION_161();
  PlanGeneration.Event.ModelInference.StateInfo.hash(into:)();

  return sub_193511EB4(v9, v10, v11, v12, v6, v5, v3);
}

uint64_t PlanGeneration.Event.ModelInference.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  sub_19393CAB0();
  sub_19393CAD0();
  if (v7 >> 9 < 0x7F)
  {
    OUTLINED_FUNCTION_187();
    OUTLINED_FUNCTION_105_5();
    sub_193511EEC(v8, v9, v10, v11, v5, v6, v7);
    PlanGeneration.Event.ModelInference.StateInfo.hash(into:)();
    sub_193511EB4(v1, v2, v3, v4, v5, v6, v7);
  }

  return sub_19393CB00();
}

uint64_t sub_193539AC4()
{
  OUTLINED_FUNCTION_62_12();
  sub_19393CAB0();
  PlanGeneration.Event.ModelInference.hash(into:)();
  return sub_19393CB00();
}

uint64_t PlanGeneration.Event.hashValue.getter()
{
  v2 = *v0;
  sub_19393CAB0();
  PlanGeneration.Event.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_193539B5C()
{
  v2 = *v0;
  sub_19393CAB0();
  PlanGeneration.Event.hash(into:)();
  return sub_19393CB00();
}

void static PlanGeneration.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v4 = v3;
  v102 = sub_19393BE60();
  v5 = OUTLINED_FUNCTION_0(v102);
  v99 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_289();
  v96 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v11 = OUTLINED_FUNCTION_47(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_241_0();
  MEMORY[0x1EEE9AC00](v14);
  v98 = v95 - v15;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  v16 = OUTLINED_FUNCTION_4_1(v101);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  v97 = v19 - v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_180_4(v95 - v22);
  v23 = type metadata accessor for PlanGeneration.StateInfo(0);
  v24 = OUTLINED_FUNCTION_4_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_1();
  v29 = v28 - v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C080, &unk_19395C2E0);
  OUTLINED_FUNCTION_47(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CA20, &qword_19395C2F8);
  OUTLINED_FUNCTION_47(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_74();
  v39 = *(v38 + 56);
  sub_193448804(v4, v0, &qword_1EAE3C080, &unk_19395C2E0);
  v103 = v2;
  sub_193448804(v2, v0 + v39, &qword_1EAE3C080, &unk_19395C2E0);
  OUTLINED_FUNCTION_5_9(v0);
  if (v44)
  {
    OUTLINED_FUNCTION_5_9(v0 + v39);
    if (v44)
    {
      sub_19344E6DC(v0, &qword_1EAE3C080, &unk_19395C2E0);
      goto LABEL_12;
    }

LABEL_9:
    v45 = &qword_1EAE3CA20;
    v46 = &qword_19395C2F8;
    v47 = v0;
LABEL_10:
    sub_19344E6DC(v47, v45, v46);
    goto LABEL_18;
  }

  v40 = OUTLINED_FUNCTION_162_5();
  sub_193448804(v40, v41, v42, v43);
  OUTLINED_FUNCTION_5_9(v0 + v39);
  if (v44)
  {
    OUTLINED_FUNCTION_116_6();
    sub_1935413A4();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_115_7();
  sub_1935413F8(v0 + v39, v29);
  static PlanGeneration.StateInfo.== infix(_:_:)();
  v49 = v48;
  sub_1935413A4();
  OUTLINED_FUNCTION_187();
  sub_1935413A4();
  sub_19344E6DC(v0, &qword_1EAE3C080, &unk_19395C2E0);
  if ((v49 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  v50 = type metadata accessor for PlanGeneration(0);
  v51 = v50[5];
  v52 = *(v4 + v51);
  v53 = *(v103 + v51);
  if ((~v52 & 0xF000000000000007) == 0)
  {
    sub_193438D88(v52);
    sub_193438D88(v53);
    if ((~v53 & 0xF000000000000007) == 0)
    {
      sub_19347549C(v52);
      goto LABEL_20;
    }

LABEL_17:
    sub_19347549C(v52);
    sub_19347549C(v53);
    goto LABEL_18;
  }

  v105 = *(v4 + v51);
  if ((~v53 & 0xF000000000000007) == 0)
  {
    sub_193438D88(v52);
    sub_193438D88(v53);
    sub_193438D88(v52);

    goto LABEL_17;
  }

  v104 = v53;
  sub_193438D88(v52);
  sub_193438D88(v53);
  sub_193438D88(v52);
  v54 = static PlanGeneration.Event.== infix(_:_:)(&v105, &v104);

  sub_19347549C(v52);
  if (!v54)
  {
    goto LABEL_18;
  }

LABEL_20:
  v55 = v50[6];
  v56 = v100;
  v57 = *(v101 + 48);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v58, v59, v60, v61);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v62, v63, v64, v65);
  v66 = v102;
  OUTLINED_FUNCTION_32_15(v56, 1);
  if (v44)
  {
    OUTLINED_FUNCTION_5_3(v56 + v57);
    if (v44)
    {
      sub_19344E6DC(v56, &qword_1EAE3AA88, &qword_19394F9C0);
LABEL_30:
      v75 = v50[7];
      v76 = *(v101 + 48);
      v77 = v97;
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v78, v79, v80, v81);
      OUTLINED_FUNCTION_75_0();
      sub_193448804(v82, v83, v84, v85);
      OUTLINED_FUNCTION_5_3(v77);
      if (v44)
      {
        OUTLINED_FUNCTION_5_3(v77 + v76);
        if (v44)
        {
          sub_19344E6DC(v77, &qword_1EAE3AA88, &qword_19394F9C0);
          goto LABEL_18;
        }
      }

      else
      {
        sub_193448804(v77, v95[1], &qword_1EAE3AA88, &qword_19394F9C0);
        OUTLINED_FUNCTION_5_3(v77 + v76);
        if (!v86)
        {
          OUTLINED_FUNCTION_98_8();
          v89 = OUTLINED_FUNCTION_214();
          v90(v89);
          OUTLINED_FUNCTION_0_36();
          sub_19354129C(v91, v92);
          OUTLINED_FUNCTION_66_9();
          v93 = OUTLINED_FUNCTION_54_7();
          (qword_19394F9C0)(v93);
          v94 = OUTLINED_FUNCTION_102_7();
          (qword_19394F9C0)(v94);
          sub_19344E6DC(v77, &qword_1EAE3AA88, &qword_19394F9C0);
          goto LABEL_18;
        }

        v87 = OUTLINED_FUNCTION_99_9();
        v88(v87);
      }

      v45 = &qword_1EAE3B4E8;
      v46 = &unk_193952CF0;
      v47 = v77;
      goto LABEL_10;
    }

    goto LABEL_28;
  }

  v67 = v98;
  sub_193448804(v56, v98, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_5_3(v56 + v57);
  if (v68)
  {
    (*(v99 + 8))(v67, v66);
LABEL_28:
    v45 = &qword_1EAE3B4E8;
    v46 = &unk_193952CF0;
    v47 = v56;
    goto LABEL_10;
  }

  v69 = v99;
  (*(v99 + 32))(v96, v56 + v57, v66);
  OUTLINED_FUNCTION_0_36();
  sub_19354129C(v70, v71);
  v72 = sub_19393C550();
  v73 = *(v69 + 8);
  v74 = OUTLINED_FUNCTION_102_7();
  v73(v74);
  (v73)(v67, v66);
  sub_19344E6DC(v56, &qword_1EAE3AA88, &qword_19394F9C0);
  if (v72)
  {
    goto LABEL_30;
  }

LABEL_18:
  OUTLINED_FUNCTION_116();
}

void PlanGeneration.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_57_3();
  v3 = sub_19393BE60();
  v4 = OUTLINED_FUNCTION_0(v3);
  v50 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_289();
  v49 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v10 = OUTLINED_FUNCTION_47(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - v17;
  v19 = type metadata accessor for PlanGeneration.StateInfo(0);
  v20 = OUTLINED_FUNCTION_4_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_10_23();
  v23 = OUTLINED_FUNCTION_246();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  OUTLINED_FUNCTION_47(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_70_1();
  v29 = OUTLINED_FUNCTION_215();
  sub_193448804(v29, v30, &qword_1EAE3C080, &unk_19395C2E0);
  v31 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v31, v32, v19);
  if (v33)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_115_7();
    sub_1935413F8(v0, v2);
    OUTLINED_FUNCTION_103_0();
    PlanGeneration.StateInfo.hash(into:)();
    OUTLINED_FUNCTION_116_6();
    sub_1935413A4();
  }

  v34 = type metadata accessor for PlanGeneration(0);
  if ((~*(v1 + v34[5]) & 0xF000000000000007) != 0)
  {
    v51 = *(v1 + v34[5]);
    OUTLINED_FUNCTION_103_0();

    PlanGeneration.Event.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  sub_193448804(v1 + v34[6], v18, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_5_9(v18);
  if (v33)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v36 = v49;
    v35 = v50;
    OUTLINED_FUNCTION_201_1();
    v37(v36, v18, v3);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_36();
    sub_19354129C(v38, v39);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    (*(v35 + 8))(v36, v3);
  }

  OUTLINED_FUNCTION_238_0(&qword_1EAE3AA88, &qword_19394F9C0, v34[7]);
  OUTLINED_FUNCTION_5_9(v15);
  if (v33)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v41 = v49;
    v40 = v50;
    OUTLINED_FUNCTION_201_1();
    v42(v41, v15, v3);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_36();
    sub_19354129C(v43, v44);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    v45 = *(v40 + 8);
    v46 = OUTLINED_FUNCTION_34_7();
    v47(v46);
  }

  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowFeedbackLearning.event.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowFeedbackLearning(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowFeedbackLearning.init()()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for IntelligenceFlowFeedbackLearning.Metadata(v2);
  v4 = OUTLINED_FUNCTION_28_0();
  v7 = OUTLINED_FUNCTION_163_4(v4, v5, v6);
  v8 = type metadata accessor for IntelligenceFlowFeedbackLearning(v7);
  v9 = OUTLINED_FUNCTION_240_0(v8);
  type metadata accessor for IntelligenceFlowFeedbackLearning.Event(v9);
  v10 = OUTLINED_FUNCTION_33_11();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  sub_19344E6DC(v0, &qword_1EAE3C098, &unk_19395C300);
  v14 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v3);
  sub_19344E6DC(v0 + v1, &qword_1EAE3C090, &qword_19395AF38);
  v17 = OUTLINED_FUNCTION_33_11();

  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

uint64_t sub_19353A7F4@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowFeedbackLearning.EvaluationType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19353A81C@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowFeedbackLearning.EvaluationType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19353A90C@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowFeedbackLearning.ActionResolutionState.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19353A934@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowFeedbackLearning.ActionResolutionState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19353AA24@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowFeedbackLearning.TaskStatus.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19353AA4C@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowFeedbackLearning.TaskStatus.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19353AB3C@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowFeedbackLearning.TaskPromptStatus.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19353AB64@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowFeedbackLearning.TaskPromptStatus.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19353AC54@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowFeedbackLearning.UserAlignmentCategory.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19353AC7C@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowFeedbackLearning.UserAlignmentCategory.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19353AD6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = IntelligenceFlowFeedbackLearning.EvaluationSource.rawValue.getter(a1, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_19353AD94@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowFeedbackLearning.EvaluationSource.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19353AE84@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowFeedbackLearning.EvaluationVote.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19353AEAC@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowFeedbackLearning.EvaluationVote.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19353AF9C@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowFeedbackLearning.CandidateResolution.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19353AFC4@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowFeedbackLearning.CandidateResolution.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19353B0B4@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowFeedbackLearning.CandidateOutcome.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19353B0DC@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowFeedbackLearning.CandidateOutcome.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19353B1CC@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowFeedbackLearning.Trigger.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19353B1F4@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowFeedbackLearning.Trigger.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19353B2E4@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceFlowFeedbackLearning.Evaluator.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19353B30C@<X0>(uint64_t *a1@<X8>)
{
  result = static IntelligenceFlowFeedbackLearning.Evaluator.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.contextId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.init()()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.StateInfo(v2);
  v4 = OUTLINED_FUNCTION_28_0();
  v7 = OUTLINED_FUNCTION_163_4(v4, v5, v6);
  v8 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation(v7);
  OUTLINED_FUNCTION_240_0(v8);
  type metadata accessor for AIML.UUID();
  v9 = OUTLINED_FUNCTION_33_11();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  sub_19344E6DC(v0, &qword_1EAE3C0A8, &qword_19395AF40);
  v13 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v3);
  sub_19344E6DC(v0 + v1, &qword_1EAE3BCA0, &unk_19395C320);
  v16 = OUTLINED_FUNCTION_33_11();

  return __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
}

void IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended.actionStatementId.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(v0);
  OUTLINED_FUNCTION_263(*(v1 + 20));
}

uint64_t IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended.actionStatementId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended.taskEvaluation.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = v1 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(v2) + 24);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *v0 = *v3;
  *(v0 + 16) = v5;
  *(v0 + 32) = *(v3 + 32);
  *(v0 + 48) = v4;
}

__n128 IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended.taskEvaluation.setter(__n128 *a1)
{
  v6 = a1[2];
  v2 = a1[3].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(0) + 24));
  v4 = v3[3].n128_u64[0];

  OUTLINED_FUNCTION_148();
  result = v6;
  v3[2] = v6;
  v3[3].n128_u64[0] = v2;
  return result;
}

uint64_t IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended.taskEvaluation.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended.candidateEvaluations.getter()
{
  v1 = *(v0 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(0) + 28));
}

uint64_t IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended.candidateEvaluations.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(v2) + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended.candidateEvaluations.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended.evaluationType.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(v0) + 32);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended.init()()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AIML.UUID();
  v2 = OUTLINED_FUNCTION_28_0();
  v5 = OUTLINED_FUNCTION_163_4(v2, v3, v4);
  v6 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(v5);
  v7 = v0 + v6[5];
  v8 = v0 + v6[6];
  OUTLINED_FUNCTION_259();
  v10 = v0 + *(v9 + 32);
  *v10 = 0;
  *(v10 + 8) = 256;
  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
  v11 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v1);
  *v7 = 0;
  *(v7 + 4) = 1;
  v14 = *(v8 + 48);

  OUTLINED_FUNCTION_259();
  *(v0 + v6[7]) = MEMORY[0x1E69E7CC0];
  *v10 = 0;
  *(v10 + 8) = 256;
  OUTLINED_FUNCTION_236();
}

void static IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for AIML.UUID();
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_220();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_105_8();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_47(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_76_0();
  v19 = *(v18 + 56);
  sub_193448804(v5, v1, &qword_1EAE3BCA0, &unk_19395C320);
  sub_193448804(v3, v1 + v19, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(v1);
  if (v24)
  {
    OUTLINED_FUNCTION_31(v1 + v19);
    if (v24)
    {
      sub_19344E6DC(v1, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_12;
    }

LABEL_9:
    sub_19344E6DC(v1, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_10;
  }

  v20 = OUTLINED_FUNCTION_25_2();
  sub_193448804(v20, v21, v22, v23);
  OUTLINED_FUNCTION_31(v1 + v19);
  if (v24)
  {
    OUTLINED_FUNCTION_2_32();
    sub_1935413A4();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_3_33();
  sub_1935413F8(v1 + v19, v0);
  OUTLINED_FUNCTION_1_35();
  sub_19354129C(v25, v26);
  OUTLINED_FUNCTION_272_0();
  OUTLINED_FUNCTION_119_4();
  sub_1935413A4();
  OUTLINED_FUNCTION_165_1();
  sub_1935413A4();
  sub_19344E6DC(v1, &qword_1EAE3BCA0, &unk_19395C320);
  if ((v6 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  v27 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(0);
  v28 = v27[5];
  v29 = *(v5 + v28 + 4);
  v30 = *(v3 + v28 + 4);
  if (v29)
  {
    if (!v30)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_258();
    if (v31)
    {
      goto LABEL_10;
    }
  }

  v32 = v27[6];
  v33 = (v5 + v32);
  v34 = *(v5 + v32 + 48);
  v35 = (v3 + v32);
  v36 = *(v35 + 6);
  if (v34)
  {
    v37 = *v35;
    v38 = v35[1];
    v39 = v35[2];
    v40 = v33[1];
    v56[0] = *v33;
    v56[1] = v40;
    v56[2] = v33[2];
    v57 = v34;
    if (v36)
    {
      v48 = v37;
      v49 = v38;
      v50 = v39;
      v51 = v36;

      swift_bridgeObjectRetain_n();
      static IntelligenceFlowFeedbackLearning.TaskEvaluation.== infix(_:_:)(v56, &v48);
      v42 = v41;
      v52[0] = v48;
      v52[1] = v49;
      v52[2] = v50;
      v53 = v51;
      sub_193541590(v52);
      OUTLINED_FUNCTION_194_1();
      sub_193541590(&v54);

      if ((v42 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_194_1();
    swift_bridgeObjectRetain_n();
    sub_193541590(&v54);
LABEL_23:

    goto LABEL_10;
  }

  if (v36)
  {

    goto LABEL_23;
  }

LABEL_25:
  if (sub_193530E20(*(v5 + v27[7]), *(v3 + v27[7])))
  {
    v43 = v27[8];
    if ((*(v5 + v43 + 9) & 1) == 0 && (*(v3 + v43 + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_57_1((v5 + v43));
      *&v56[0] = v44;
      BYTE8(v56[0]) = v45 & 1;
      v54 = v46;
      v55 = v47 & 1;
      IntelligenceFlowFeedbackLearning.EvaluationType.rawValue.getter();
      IntelligenceFlowFeedbackLearning.EvaluationType.rawValue.getter();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_3_4();
  v3 = type metadata accessor for AIML.UUID();
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_220();
  v7 = OUTLINED_FUNCTION_25_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_70_1();
  v13 = OUTLINED_FUNCTION_127();
  sub_193448804(v13, v14, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_5_3(v1);
  if (v15)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_33();
    sub_1935413F8(v1, v2);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_1_35();
    sub_19354129C(v16, v17);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    OUTLINED_FUNCTION_2_32();
    sub_1935413A4();
  }

  v18 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(0);
  v19 = (v1 + v18[5]);
  if (*(v19 + 4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v20 = *v19;
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  v21 = v1 + v18[6];
  v24 = *v21;
  v25 = *(v21 + 16);
  v26 = *(v21 + 32);
  v27 = *(v21 + 48);
  sub_193541128(v0);
  sub_193541CBC(v0, *(v1 + v18[7]));
  OUTLINED_FUNCTION_251();
  if (v15)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_147_2(v22);
    v23 = IntelligenceFlowFeedbackLearning.EvaluationType.rawValue.getter();
    MEMORY[0x193B18030](v23);
  }

  OUTLINED_FUNCTION_236();
}

void static IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_167_4();
  v65 = type metadata accessor for AIML.UUID();
  v3 = OUTLINED_FUNCTION_4_1(v65);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_180_4(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_73_6(v11);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_4_1(v64);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_42_0();
  v15 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.StateInfo(0);
  v16 = OUTLINED_FUNCTION_4_1(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_10_23();
  v19 = OUTLINED_FUNCTION_24_1();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  OUTLINED_FUNCTION_47(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_61_6();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CA28, &unk_19395C330);
  OUTLINED_FUNCTION_47(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_55_3();
  v30 = *(v29 + 56);
  OUTLINED_FUNCTION_152_5();
  OUTLINED_FUNCTION_105_5();
  sub_193448804(v31, v32, v33, v34);
  OUTLINED_FUNCTION_105_5();
  sub_193448804(v35, v36, v37, v38);
  OUTLINED_FUNCTION_14_1(v2);
  if (!v43)
  {
    v39 = OUTLINED_FUNCTION_125_3();
    sub_193448804(v39, v40, v41, v42);
    OUTLINED_FUNCTION_14_1(v2 + v30);
    if (!v43)
    {
      OUTLINED_FUNCTION_122_4();
      sub_1935413F8(v2 + v30, v1);
      OUTLINED_FUNCTION_216();
      static IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.StateInfo.== infix(_:_:)();
      v48 = v47;
      sub_1935413A4();
      OUTLINED_FUNCTION_246();
      sub_1935413A4();
      sub_19344E6DC(v2, &qword_1EAE3C0A8, &qword_19395AF40);
      if ((v48 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_123_5();
    sub_1935413A4();
LABEL_9:
    v44 = &qword_1EAE3CA28;
    v45 = &unk_19395C330;
    v46 = v2;
LABEL_20:
    sub_19344E6DC(v46, v44, v45);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_14_1(v2 + v30);
  if (!v43)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v2, &qword_1EAE3C0A8, &qword_19395AF40);
LABEL_11:
  v49 = *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation(0) + 20);
  OUTLINED_FUNCTION_269();
  OUTLINED_FUNCTION_154_4();
  sub_193448804(v50, v51, v52, v53);
  OUTLINED_FUNCTION_172_4();
  sub_193448804(v54, v55, v56, v57);
  v58 = OUTLINED_FUNCTION_144_3();
  OUTLINED_FUNCTION_38_0(v58, v59);
  if (!v43)
  {
    sub_193448804(v0, v63, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(&qword_19395AF40 + v0);
    if (!v60)
    {
      OUTLINED_FUNCTION_3_33();
      OUTLINED_FUNCTION_276_0(&qword_19395AF40 + v0);
      OUTLINED_FUNCTION_1_35();
      sub_19354129C(v61, v62);
      OUTLINED_FUNCTION_5_7();
      sub_19393C550();
      OUTLINED_FUNCTION_41_8();
      sub_1935413A4();
      sub_1935413A4();
      sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_2_32();
    sub_1935413A4();
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_31(&qword_19395AF40 + v0);
  if (!v43)
  {
LABEL_19:
    v44 = &qword_1EAE3BD08;
    v45 = &qword_1939595A0;
    v46 = v0;
    goto LABEL_20;
  }

  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_21:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_57_3();
  v2 = type metadata accessor for AIML.UUID();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_76_0();
  v10 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.StateInfo(0);
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = OUTLINED_FUNCTION_125_3();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_47(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_70_1();
  v23 = OUTLINED_FUNCTION_215();
  sub_193448804(v23, v24, &qword_1EAE3C0A8, &qword_19395AF40);
  v25 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v25, v26, v10);
  if (v27)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_122_4();
    sub_1935413F8(v0, v16);
    OUTLINED_FUNCTION_103_0();
    IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.StateInfo.hash(into:)();
    OUTLINED_FUNCTION_123_5();
    sub_1935413A4();
  }

  v28 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation(0);
  OUTLINED_FUNCTION_238_0(&qword_1EAE3BCA0, &unk_19395C320, *(v28 + 20));
  OUTLINED_FUNCTION_5_9(v1);
  if (v27)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_33();
    v29 = OUTLINED_FUNCTION_5_7();
    sub_1935413F8(v29, v30);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_1_35();
    sub_19354129C(v31, v32);
    OUTLINED_FUNCTION_79_8();
    sub_19393C540();
    OUTLINED_FUNCTION_2_32();
    sub_1935413A4();
  }

  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowFeedbackLearning.Event.InteractionDonation.contextId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowFeedbackLearning.Event.InteractionDonation.init()()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.StateInfo(v2);
  v4 = OUTLINED_FUNCTION_28_0();
  v7 = OUTLINED_FUNCTION_163_4(v4, v5, v6);
  v8 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation(v7);
  OUTLINED_FUNCTION_240_0(v8);
  type metadata accessor for AIML.UUID();
  v9 = OUTLINED_FUNCTION_33_11();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  sub_19344E6DC(v0, &qword_1EAE3C0B8, &qword_19395AF50);
  v13 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v3);
  sub_19344E6DC(v0 + v1, &qword_1EAE3BCA0, &unk_19395C320);
  v16 = OUTLINED_FUNCTION_33_11();

  return __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
}

uint64_t IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended.donationTime.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended.ifSessionId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended.actionStatementId.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(v0);
  OUTLINED_FUNCTION_263(*(v1 + 28));
}

uint64_t IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended.actionStatementId.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

void sub_19353CA1C()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v2 = v1(v0);
  OUTLINED_FUNCTION_37_0(*(v2 + 32));
}

void sub_19353CA68(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_85_8(a1);
  v3 = v2(v1);
  OUTLINED_FUNCTION_84_6(*(v3 + 32));
}

uint64_t IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended.donationTrigger.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(v0) + 32);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended.wasTupleDonated.setter(char a1)
{
  result = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended.wasTupleDonated.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(v0) + 36);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended.tuple.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = v1 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(v2) + 40);
  v4 = *(v3 + 16);
  *v0 = *v3;
  *(v0 + 16) = v4;
}

uint64_t IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended.tuple.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 8);
  v5 = (v1 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0) + 40));
  v6 = *v5;

  *v5 = v2;
  v5[1] = v3;
  *(v5 + 8) = v4;
  return result;
}

uint64_t IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended.tuple.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(v0) + 40);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended.candidates.getter()
{
  v1 = *(v0 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0) + 44));
}

uint64_t IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended.candidates.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(v2) + 44);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended.candidates.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(v0) + 44);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended.init()()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_8_4();
  v1 = sub_19393BE00();
  v2 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  v5 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0);
  v6 = v5[5];
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = v5[6];
  v31 = type metadata accessor for AIML.UUID();
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = v0 + v5[7];
  v17 = v0 + v5[8];
  *v17 = 0;
  *(v17 + 8) = 256;
  v30 = v5[9];
  v18 = v0 + v5[10];
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  sub_19344E6DC(v0, &qword_1EAE3A9E8, &qword_19394F800);
  v19 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v1);
  sub_19344E6DC(v0 + v6, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_5_28();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  sub_19344E6DC(v0 + v11, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v31);
  *v16 = 0;
  *(v16 + 4) = 1;
  *v17 = 0;
  *(v17 + 8) = 256;
  *(v0 + v30) = 2;
  v29 = *v18;

  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *(v0 + v5[11]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_114();
}

void static IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v118 = type metadata accessor for AIML.UUID();
  v4 = OUTLINED_FUNCTION_4_1(v118);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_254(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_53_1();
  v115 = v12;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_4_1(v116);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_53_1();
  v117 = v16;
  v17 = sub_19393BE00();
  v18 = OUTLINED_FUNCTION_0(v17);
  v123 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_289();
  v120 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v24 = OUTLINED_FUNCTION_47(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_241_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v114 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  v31 = OUTLINED_FUNCTION_4_1(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_6();
  v36 = v34 - v35;
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v114 - v39;
  v41 = *(v38 + 48);
  v121 = v3;
  OUTLINED_FUNCTION_98();
  sub_193448804(v42, v43, v44, &qword_19394F800);
  v122 = v1;
  sub_193448804(v1, &v40[v41], &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_31(v40);
  if (v45)
  {
    OUTLINED_FUNCTION_31(&v40[v41]);
    if (v45)
    {
      sub_19344E6DC(v40, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_12;
    }

LABEL_9:
    v49 = &qword_1EAE3B968;
    v50 = &qword_193972430;
LABEL_10:
    v51 = v40;
LABEL_21:
    sub_19344E6DC(v51, v49, v50);
    goto LABEL_22;
  }

  sub_193448804(v40, v29, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_31(&v40[v41]);
  if (v45)
  {
    v46 = *(v123 + 8);
    v47 = OUTLINED_FUNCTION_188_2();
    v48(v47);
    goto LABEL_9;
  }

  v52 = v123;
  OUTLINED_FUNCTION_267();
  v53(v120, &v40[v41], v17);
  OUTLINED_FUNCTION_21_13();
  sub_19354129C(v54, v55);
  v56 = sub_19393C550();
  v57 = *(v52 + 8);
  v58 = OUTLINED_FUNCTION_247();
  v57(v58);
  v59 = OUTLINED_FUNCTION_188_2();
  v57(v59);
  sub_19344E6DC(v40, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v56 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  v60 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0);
  v61 = v60[5];
  v62 = *(v30 + 48);
  v63 = v121;
  OUTLINED_FUNCTION_226(v121 + v61, v36);
  v64 = v122;
  OUTLINED_FUNCTION_226(v122 + v61, v36 + v62);
  OUTLINED_FUNCTION_31(v36);
  if (v45)
  {
    OUTLINED_FUNCTION_31(v36 + v62);
    if (v45)
    {
      sub_19344E6DC(v36, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_24;
    }

LABEL_20:
    v49 = &qword_1EAE3B968;
    v50 = &qword_193972430;
    v51 = v36;
    goto LABEL_21;
  }

  sub_193448804(v36, v119, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_31(v36 + v62);
  if (v65)
  {
    v66 = *(v123 + 8);
    v67 = OUTLINED_FUNCTION_247();
    v68(v67);
    goto LABEL_20;
  }

  v69 = v123;
  OUTLINED_FUNCTION_201_1();
  v70(v120, v36 + v62, v17);
  OUTLINED_FUNCTION_21_13();
  sub_19354129C(v71, v72);
  v73 = sub_19393C550();
  v74 = *(v69 + 8);
  v75 = OUTLINED_FUNCTION_215();
  v74(v75);
  v76 = OUTLINED_FUNCTION_247();
  v74(v76);
  sub_19344E6DC(v36, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v73 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_24:
  v77 = v60[6];
  v40 = v117;
  v78 = *(v116 + 48);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v79, v80, v81, v82);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v83, v84, v85, v86);
  OUTLINED_FUNCTION_38_0(v40, 1);
  if (v45)
  {
    OUTLINED_FUNCTION_31(&v40[v78]);
    if (v45)
    {
      sub_19344E6DC(v40, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  sub_193448804(v40, v115, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_31(&v40[v78]);
  if (v87)
  {
    OUTLINED_FUNCTION_2_32();
    sub_1935413A4();
LABEL_32:
    v49 = &qword_1EAE3BD08;
    v50 = &qword_1939595A0;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3_33();
  sub_1935413F8(&v40[v78], v114);
  OUTLINED_FUNCTION_1_35();
  sub_19354129C(v88, v89);
  OUTLINED_FUNCTION_175_0();
  sub_19393C550();
  OUTLINED_FUNCTION_41_8();
  sub_1935413A4();
  sub_1935413A4();
  sub_19344E6DC(v40, &qword_1EAE3BCA0, &unk_19395C320);
  if ((&qword_1EAE3BCA0 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_34:
  v90 = v60[7];
  v91 = *(v63 + v90 + 4);
  v92 = *(v64 + v90 + 4);
  if (v91)
  {
    if (!v92)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_258();
    if (v93)
    {
      goto LABEL_22;
    }
  }

  v94 = v60[8];
  if (*(v63 + v94 + 9))
  {
    if ((*(v64 + v94 + 9) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (*(v64 + v94 + 9))
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_57_1((v63 + v94));
    v127 = v95;
    LOBYTE(v128) = v96 & 1;
    v124 = v97;
    LOBYTE(v125) = v98 & 1;
    v99 = IntelligenceFlowFeedbackLearning.Trigger.rawValue.getter();
    if (v99 != IntelligenceFlowFeedbackLearning.Trigger.rawValue.getter())
    {
      goto LABEL_22;
    }
  }

  v100 = v60[9];
  v101 = *(v63 + v100);
  v102 = *(v64 + v100);
  if (v101 == 2)
  {
    if (v102 != 2)
    {
      goto LABEL_22;
    }
  }

  else if (v102 == 2 || ((v102 ^ v101) & 1) != 0)
  {
    goto LABEL_22;
  }

  v103 = v60[10];
  v104 = v63 + v103;
  v105 = *(v63 + v103);
  v106 = (v64 + v103);
  v107 = *v106;
  if (!v105)
  {
    if (!v107)
    {

LABEL_57:
      sub_1935305F4(*(v63 + v60[11]), *(v64 + v60[11]));
      goto LABEL_22;
    }

    v113 = *v106;

    goto LABEL_55;
  }

  v108 = v106[1];
  v109 = *(v106 + 8);
  v110 = *(v104 + 16);
  v111 = *(v104 + 8);
  v127 = v105;
  v128 = v111;
  v129 = v110;
  if (!v107)
  {

LABEL_55:

    goto LABEL_22;
  }

  v124 = v107;
  v125 = v108;
  v126 = v109 & 0x1FF;
  swift_bridgeObjectRetain_n();

  v112 = static IntelligenceFlowFeedbackLearning.TupleInteraction.== infix(_:_:)(&v127, &v124);

  if (v112)
  {
    goto LABEL_57;
  }

LABEL_22:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v3 = v1;
  OUTLINED_FUNCTION_3_4();
  v70 = type metadata accessor for AIML.UUID();
  v4 = OUTLINED_FUNCTION_4_1(v70);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_289();
  v69 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_105_8();
  v12 = sub_19393BE00();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v20 = v19 - v18;
  v21 = OUTLINED_FUNCTION_24_1();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
  v24 = OUTLINED_FUNCTION_47(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_6();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v69 - v31;
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_105_5();
  sub_193448804(v33, v34, v35, v36);
  v37 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v37, v38, v12);
  if (v39)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_267();
    v40(v20, v32, v12);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_21_13();
    sub_19354129C(v41, v42);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    v43 = *(v15 + 8);
    v44 = OUTLINED_FUNCTION_19_3();
    v45(v44);
  }

  v46 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0);
  sub_193448804(v3 + v46[5], v29, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v29, 1, v12);
  v47 = v70;
  if (v39)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_267();
    v48 = OUTLINED_FUNCTION_125_3();
    v49(v48);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_21_13();
    sub_19354129C(v50, v51);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    v52 = *(v15 + 8);
    v53 = OUTLINED_FUNCTION_19_3();
    v54(v53);
  }

  sub_193448804(v3 + v46[6], v2, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_6_3(v2, 1, v47);
  if (v39)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_33();
    sub_1935413F8(v2, v69);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_1_35();
    sub_19354129C(v55, v56);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    OUTLINED_FUNCTION_2_32();
    sub_1935413A4();
  }

  v57 = (v3 + v46[7]);
  if (*(v57 + 4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v58 = *v57;
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_251();
  if (v39)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v60 = *(v59 + 8);
    v61 = *v59;
    OUTLINED_FUNCTION_103_0();
    v71 = v61;
    OUTLINED_FUNCTION_173_4(v60 & 1);
    v62 = IntelligenceFlowFeedbackLearning.Trigger.rawValue.getter();
    MEMORY[0x193B18030](v62);
  }

  if (*(v3 + v46[9]) != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  v63 = v3 + v46[10];
  v64 = *v63;
  if (!*v63 || (v65 = *(v63 + 8), v66 = *(v63 + 16), OUTLINED_FUNCTION_103_0(), sub_193541A24(v0, v64), (v66 & 0x100) != 0))
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    v71 = v65;
    OUTLINED_FUNCTION_173_4(v66 & 1);
    v68 = IntelligenceFlowFeedbackLearning.UserAlignmentCategory.rawValue.getter(v67);
    MEMORY[0x193B18030](v68);
  }

  sub_1935415C0(v0, *(v3 + v46[11]));
  OUTLINED_FUNCTION_116();
}

void static IntelligenceFlowFeedbackLearning.Event.InteractionDonation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_167_4();
  v65 = type metadata accessor for AIML.UUID();
  v3 = OUTLINED_FUNCTION_4_1(v65);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_180_4(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_73_6(v11);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_4_1(v64);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_42_0();
  v15 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.StateInfo(0);
  v16 = OUTLINED_FUNCTION_4_1(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_10_23();
  v19 = OUTLINED_FUNCTION_24_1();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  OUTLINED_FUNCTION_47(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_61_6();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CA30, &qword_19395C340);
  OUTLINED_FUNCTION_47(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_55_3();
  v30 = *(v29 + 56);
  OUTLINED_FUNCTION_152_5();
  OUTLINED_FUNCTION_105_5();
  sub_193448804(v31, v32, v33, v34);
  OUTLINED_FUNCTION_105_5();
  sub_193448804(v35, v36, v37, v38);
  OUTLINED_FUNCTION_14_1(v2);
  if (!v43)
  {
    v39 = OUTLINED_FUNCTION_125_3();
    sub_193448804(v39, v40, v41, v42);
    OUTLINED_FUNCTION_14_1(v2 + v30);
    if (!v43)
    {
      OUTLINED_FUNCTION_117_8();
      sub_1935413F8(v2 + v30, v1);
      OUTLINED_FUNCTION_216();
      static IntelligenceFlowFeedbackLearning.Event.InteractionDonation.StateInfo.== infix(_:_:)();
      v48 = v47;
      sub_1935413A4();
      OUTLINED_FUNCTION_246();
      sub_1935413A4();
      sub_19344E6DC(v2, &qword_1EAE3C0B8, &qword_19395AF50);
      if ((v48 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_118_5();
    sub_1935413A4();
LABEL_9:
    v44 = &qword_1EAE3CA30;
    v45 = &qword_19395C340;
    v46 = v2;
LABEL_20:
    sub_19344E6DC(v46, v44, v45);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_14_1(v2 + v30);
  if (!v43)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v2, &qword_1EAE3C0B8, &qword_19395AF50);
LABEL_11:
  v49 = *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation(0) + 20);
  OUTLINED_FUNCTION_269();
  OUTLINED_FUNCTION_154_4();
  sub_193448804(v50, v51, v52, v53);
  OUTLINED_FUNCTION_172_4();
  sub_193448804(v54, v55, v56, v57);
  v58 = OUTLINED_FUNCTION_144_3();
  OUTLINED_FUNCTION_38_0(v58, v59);
  if (!v43)
  {
    sub_193448804(v0, v63, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(&qword_19395AF50 + v0);
    if (!v60)
    {
      OUTLINED_FUNCTION_3_33();
      OUTLINED_FUNCTION_276_0(&qword_19395AF50 + v0);
      OUTLINED_FUNCTION_1_35();
      sub_19354129C(v61, v62);
      OUTLINED_FUNCTION_5_7();
      sub_19393C550();
      OUTLINED_FUNCTION_41_8();
      sub_1935413A4();
      sub_1935413A4();
      sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_2_32();
    sub_1935413A4();
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_31(&qword_19395AF50 + v0);
  if (!v43)
  {
LABEL_19:
    v44 = &qword_1EAE3BD08;
    v45 = &qword_1939595A0;
    v46 = v0;
    goto LABEL_20;
  }

  sub_19344E6DC(v0, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_21:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowFeedbackLearning.Event.InteractionDonation.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_57_3();
  v2 = type metadata accessor for AIML.UUID();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_76_0();
  v10 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.StateInfo(0);
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = OUTLINED_FUNCTION_125_3();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_47(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_70_1();
  v23 = OUTLINED_FUNCTION_215();
  sub_193448804(v23, v24, &qword_1EAE3C0B8, &qword_19395AF50);
  v25 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v25, v26, v10);
  if (v27)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_117_8();
    sub_1935413F8(v0, v16);
    OUTLINED_FUNCTION_103_0();
    IntelligenceFlowFeedbackLearning.Event.InteractionDonation.StateInfo.hash(into:)();
    OUTLINED_FUNCTION_118_5();
    sub_1935413A4();
  }

  v28 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation(0);
  OUTLINED_FUNCTION_238_0(&qword_1EAE3BCA0, &unk_19395C320, *(v28 + 20));
  OUTLINED_FUNCTION_5_9(v1);
  if (v27)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_3_33();
    v29 = OUTLINED_FUNCTION_5_7();
    sub_1935413F8(v29, v30);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_1_35();
    sub_19354129C(v31, v32);
    OUTLINED_FUNCTION_79_8();
    sub_19393C540();
    OUTLINED_FUNCTION_2_32();
    sub_1935413A4();
  }

  OUTLINED_FUNCTION_116();
}

void static IntelligenceFlowFeedbackLearning.Event.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v2 = OUTLINED_FUNCTION_56_5();
  v3 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.EventValue(v2);
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_24();
  v7 = OUTLINED_FUNCTION_165_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_42_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CA38, &qword_19395C348);
  OUTLINED_FUNCTION_47(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_70_1();
  OUTLINED_FUNCTION_89_9(v17);
  OUTLINED_FUNCTION_142_3();
  OUTLINED_FUNCTION_5_3(v0);
  if (!v22)
  {
    v18 = OUTLINED_FUNCTION_225();
    sub_193448804(v18, v19, v20, v21);
    OUTLINED_FUNCTION_5_3(v0 + v1);
    if (!v22)
    {
      OUTLINED_FUNCTION_46_7();
      OUTLINED_FUNCTION_274_0();
      OUTLINED_FUNCTION_23_10();
      static IntelligenceFlowFeedbackLearning.Event.EventValue.== infix(_:_:)();
      sub_1935413A4();
      OUTLINED_FUNCTION_94_5();
      sub_1935413A4();
      sub_19344E6DC(v0, &qword_1EAE3C0A0, &unk_19395C310);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_47_11();
    sub_1935413A4();
LABEL_9:
    sub_19344E6DC(v0, &qword_1EAE3CA38, &qword_19395C348);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_5_3(v0 + v1);
  if (!v22)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v0, &qword_1EAE3C0A0, &unk_19395C310);
LABEL_10:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowFeedbackLearning.Event.hash(into:)()
{
  OUTLINED_FUNCTION_237();
  v0 = OUTLINED_FUNCTION_156_4();
  v1 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.EventValue(v0);
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_10_24();
  v5 = OUTLINED_FUNCTION_25_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_146_4();
  v11 = OUTLINED_FUNCTION_144_3();
  OUTLINED_FUNCTION_6_3(v11, v12, v1);
  if (v13)
  {
    sub_19393CAD0();
  }

  else
  {
    OUTLINED_FUNCTION_46_7();
    v14 = OUTLINED_FUNCTION_23_10();
    sub_1935413F8(v14, v15);
    sub_19393CAD0();
    OUTLINED_FUNCTION_268();
    IntelligenceFlowFeedbackLearning.Event.EventValue.hash(into:)();
    OUTLINED_FUNCTION_47_11();
    sub_1935413A4();
  }

  OUTLINED_FUNCTION_236();
}

void IntelligenceFlowFeedbackLearning.TaskEvaluation.actionResolutionState.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  OUTLINED_FUNCTION_5_2(a1);
}

__n128 IntelligenceFlowFeedbackLearning.TaskEvaluation.taskOutcome.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u64[0];
  v3 = v1[2].n128_u16[4];
  v4 = v1[2].n128_u8[10];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u16[4] = v3;
  a1[1].n128_u8[10] = v4;
  return result;
}

__n128 IntelligenceFlowFeedbackLearning.TaskEvaluation.taskOutcome.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u16[4];
  v4 = a1[1].n128_u8[10];
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v2;
  v1[2].n128_u16[4] = v3;
  v1[2].n128_u8[10] = v4;
  return result;
}

uint64_t IntelligenceFlowFeedbackLearning.TaskEvaluation.evaluationNodes.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

void IntelligenceFlowFeedbackLearning.TaskEvaluation.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 42) = 1;
  *(a1 + 48) = MEMORY[0x1E69E7CC0];
}

void static IntelligenceFlowFeedbackLearning.TaskEvaluation.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 42);
  v6 = *(a1 + 48);
  v7 = *(a2 + 9);
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = *(a2 + 20);
  v12 = *(a2 + 42);
  v13 = a2[6];
  if (*(a1 + 9))
  {
    if ((*(a2 + 9) & 1) == 0)
    {
LABEL_14:
      OUTLINED_FUNCTION_270();
      return;
    }
  }

  else
  {
    if (*(a2 + 9))
    {
      goto LABEL_14;
    }

    v14 = *(a1 + 8);
    v23 = a2[2];
    v24 = a2[4];
    v15 = *a2;
    v16 = *(a2 + 8);
    *&v29 = *a1;
    BYTE8(v29) = v14 & 1;
    v25 = v15;
    LOBYTE(v26) = v16 & 1;
    v22 = v2;
    v17 = IntelligenceFlowFeedbackLearning.ActionResolutionState.rawValue.getter();
    v18 = IntelligenceFlowFeedbackLearning.ActionResolutionState.rawValue.getter();
    v2 = v22;
    v8 = v23;
    v10 = v24;
    if (v17 != v18)
    {
      goto LABEL_14;
    }
  }

  if (v5)
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v29 = v2;
    v30 = v3;
    v31 = v4;
    v32 = 0;
    if (v12)
    {
      goto LABEL_14;
    }

    v25 = v8;
    v26 = v9 & 0x1FF;
    v27 = v10;
    v28 = v11 & 0x1FF;
    if ((static IntelligenceFlowFeedbackLearning.TaskOutcome.== infix(_:_:)(&v29, &v25) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_270();

  sub_193531570(v19, v20);
}

uint64_t IntelligenceFlowFeedbackLearning.TaskEvaluation.hash(into:)()
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_148_2();
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v0 + 20);
  v5 = *(v0 + 42);
  v6 = v0[6];
  if (v7 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = *(v0 + 8);
    v9 = *v0;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_179_0();
    v11 = IntelligenceFlowFeedbackLearning.ActionResolutionState.rawValue.getter(v10);
    MEMORY[0x193B18030](v11);
    if (v5)
    {
LABEL_7:
      OUTLINED_FUNCTION_104_0();
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_103_0();
  if ((v1 & 0x100) != 0)
  {
    OUTLINED_FUNCTION_104_0();
    if ((v4 & 0x100) != 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    v12 = IntelligenceFlowFeedbackLearning.TaskStatus.rawValue.getter();
    MEMORY[0x193B18030](v12);
    if ((v4 & 0x100) != 0)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_179_0();
  v14 = IntelligenceFlowFeedbackLearning.TaskPromptStatus.rawValue.getter(v13);
  MEMORY[0x193B18030](v14);
LABEL_10:
  OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_114();

  return sub_193542308(v15, v16);
}

uint64_t IntelligenceFlowFeedbackLearning.TaskEvaluation.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  IntelligenceFlowFeedbackLearning.TaskEvaluation.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19353E814()
{
  sub_19393CAB0();
  IntelligenceFlowFeedbackLearning.TaskEvaluation.hash(into:)();
  return sub_19393CB00();
}

void IntelligenceFlowFeedbackLearning.TaskEvaluationNode.evaluator.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  OUTLINED_FUNCTION_5_2(a1);
}

void IntelligenceFlowFeedbackLearning.TaskEvaluationNode.result.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 25);
  OUTLINED_FUNCTION_5_2(a1);
}

uint64_t IntelligenceFlowFeedbackLearning.TaskEvaluationNode.sources.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

void IntelligenceFlowFeedbackLearning.TaskEvaluationNode.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
}

void static IntelligenceFlowFeedbackLearning.TaskEvaluationNode.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  v5 = *(a1 + 32);
  v6 = *(a2 + 9);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 25);
  v10 = *(a2 + 32);
  if (*(a1 + 9))
  {
    if ((*(a2 + 9) & 1) == 0)
    {
LABEL_14:
      OUTLINED_FUNCTION_107();
      return;
    }
  }

  else
  {
    if (*(a2 + 9))
    {
      goto LABEL_14;
    }

    v11 = OUTLINED_FUNCTION_9_16(a1, a2);
    v12 = IntelligenceFlowFeedbackLearning.Evaluator.rawValue.getter(v11);
    if (v12 != IntelligenceFlowFeedbackLearning.Evaluator.rawValue.getter(v12))
    {
      goto LABEL_14;
    }
  }

  if (v4)
  {
    if ((v9 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v9)
    {
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_196_1();
    v14 = IntelligenceFlowFeedbackLearning.EvaluationVote.rawValue.getter(v13);
    if (v14 != IntelligenceFlowFeedbackLearning.EvaluationVote.rawValue.getter(v14))
    {
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_107();

  sub_193530FD8(v15, v16, v17, v18);
}

uint64_t IntelligenceFlowFeedbackLearning.TaskEvaluationNode.hash(into:)()
{
  OUTLINED_FUNCTION_148_2();
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v4 = v0[4];
  if (v5 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v3)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_179_0();
      v7 = IntelligenceFlowFeedbackLearning.EvaluationVote.rawValue.getter(v6);
      MEMORY[0x193B18030](v7);
      goto LABEL_6;
    }
  }

  else
  {
    v8 = *(v0 + 8);
    v9 = *v0;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_179_0();
    v11 = IntelligenceFlowFeedbackLearning.Evaluator.rawValue.getter(v10);
    MEMORY[0x193B18030](v11);
    if (!v3)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_104_0();
LABEL_6:
  v12 = OUTLINED_FUNCTION_187();

  return sub_1935424A0(v12, v13);
}

uint64_t IntelligenceFlowFeedbackLearning.TaskEvaluationNode.hashValue.getter()
{
  OUTLINED_FUNCTION_100_9();
  sub_19393CAB0();
  IntelligenceFlowFeedbackLearning.TaskEvaluationNode.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19353EC0C()
{
  OUTLINED_FUNCTION_100_9();
  sub_19393CAB0();
  IntelligenceFlowFeedbackLearning.TaskEvaluationNode.hash(into:)();
  return sub_19393CB00();
}

uint64_t IntelligenceFlowFeedbackLearning.CandidateEvaluation.candidateIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateEvaluation(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowFeedbackLearning.CandidateEvaluation.resolution.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateEvaluation(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 24));
}

void IntelligenceFlowFeedbackLearning.CandidateEvaluation.resolution.setter(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_85_8(a1);
  v2 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateEvaluation(v1);
  OUTLINED_FUNCTION_84_6(*(v2 + 24));
}

uint64_t IntelligenceFlowFeedbackLearning.CandidateEvaluation.resolution.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateEvaluation(v0) + 24);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowFeedbackLearning.CandidateEvaluation.outcome.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateEvaluation(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 28));
}

void IntelligenceFlowFeedbackLearning.CandidateEvaluation.outcome.setter(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_85_8(a1);
  v2 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateEvaluation(v1);
  OUTLINED_FUNCTION_84_6(*(v2 + 28));
}

uint64_t IntelligenceFlowFeedbackLearning.CandidateEvaluation.outcome.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateEvaluation(v0) + 28);
  return OUTLINED_FUNCTION_1_4();
}

void IntelligenceFlowFeedbackLearning.CandidateEvaluation.init()()
{
  OUTLINED_FUNCTION_237();
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateCategory(v1);
  v3 = OUTLINED_FUNCTION_28_0();
  v6 = OUTLINED_FUNCTION_163_4(v3, v4, v5);
  v7 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateEvaluation(v6);
  v8 = v7[5];
  v9 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateIdentifier(0);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  v13 = v0 + v7[6];
  *v13 = 0;
  *(v13 + 8) = 256;
  v14 = v0 + v7[7];
  *v14 = 0;
  *(v14 + 8) = 256;
  sub_19344E6DC(v0, &qword_1EAE3C0E0, &unk_19395C350);
  v15 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v2);
  sub_19344E6DC(v0 + v8, &qword_1EAE3C0D8, &qword_19395AF70);
  OUTLINED_FUNCTION_45();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v9);
  *v13 = 0;
  *(v13 + 8) = 256;
  *v14 = 0;
  *(v14 + 8) = 256;
  OUTLINED_FUNCTION_236();
}

void static IntelligenceFlowFeedbackLearning.CandidateEvaluation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v5 = OUTLINED_FUNCTION_167_4();
  v69 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateIdentifier(v5);
  v6 = OUTLINED_FUNCTION_4_1(v69);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_289();
  v66 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0D8, &qword_19395AF70);
  OUTLINED_FUNCTION_47(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_53_1();
  v67 = v14;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CA40, &qword_19395C360);
  OUTLINED_FUNCTION_4_1(v68);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_74();
  v18 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateCategory(0);
  v19 = OUTLINED_FUNCTION_4_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_10_23();
  v22 = OUTLINED_FUNCTION_127();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
  OUTLINED_FUNCTION_47(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_61_6();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CA48, &qword_19395C368);
  OUTLINED_FUNCTION_47(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_55_3();
  v33 = *(v32 + 56);
  sub_193448804(v2, v4, &qword_1EAE3C0E0, &unk_19395C350);
  sub_193448804(v1, v4 + v33, &qword_1EAE3C0E0, &unk_19395C350);
  OUTLINED_FUNCTION_14_1(v4);
  if (v38)
  {
    OUTLINED_FUNCTION_14_1(v4 + v33);
    if (v38)
    {
      sub_19344E6DC(v4, &qword_1EAE3C0E0, &unk_19395C350);
      goto LABEL_11;
    }

LABEL_9:
    v39 = &qword_1EAE3CA48;
    v40 = &qword_19395C368;
    v41 = v4;
LABEL_20:
    sub_19344E6DC(v41, v39, v40);
    goto LABEL_21;
  }

  v34 = OUTLINED_FUNCTION_125_3();
  sub_193448804(v34, v35, v36, v37);
  OUTLINED_FUNCTION_14_1(v4 + v33);
  if (v38)
  {
    OUTLINED_FUNCTION_134_6();
    sub_1935413A4();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_133_6();
  sub_1935413F8(v4 + v33, v3);
  OUTLINED_FUNCTION_216();
  static IntelligenceFlowFeedbackLearning.CandidateCategory.== infix(_:_:)();
  v43 = v42;
  sub_1935413A4();
  OUTLINED_FUNCTION_247();
  sub_1935413A4();
  sub_19344E6DC(v4, &qword_1EAE3C0E0, &unk_19395C350);
  if ((v43 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v44 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateEvaluation(0);
  v45 = v44[5];
  v46 = *(v68 + 48);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v47, v48, v49, v50);
  OUTLINED_FUNCTION_75_0();
  sub_193448804(v51, v52, v53, v54);
  OUTLINED_FUNCTION_6_3(v0, 1, v69);
  if (!v38)
  {
    sub_193448804(v0, v67, &qword_1EAE3C0D8, &qword_19395AF70);
    OUTLINED_FUNCTION_14_1(v0 + v46);
    if (!v55)
    {
      OUTLINED_FUNCTION_22_18();
      sub_1935413F8(v0 + v46, v66);
      v56 = static IntelligenceFlowFeedbackLearning.CandidateIdentifier.== infix(_:_:)(v67, v66);
      sub_1935413A4();
      OUTLINED_FUNCTION_188_2();
      sub_1935413A4();
      sub_19344E6DC(v0, &qword_1EAE3C0D8, &qword_19395AF70);
      if ((v56 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_23;
    }

    OUTLINED_FUNCTION_23_20();
    sub_1935413A4();
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_14_1(v0 + v46);
  if (!v38)
  {
LABEL_19:
    v39 = &qword_1EAE3CA40;
    v40 = &qword_19395C360;
    v41 = v0;
    goto LABEL_20;
  }

  sub_19344E6DC(v0, &qword_1EAE3C0D8, &qword_19395AF70);
LABEL_23:
  v57 = v44[6];
  OUTLINED_FUNCTION_262();
  if (v60)
  {
    if ((v59 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v59)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_48_2(v58);
    v61 = IntelligenceFlowFeedbackLearning.CandidateResolution.rawValue.getter();
    if (v61 != IntelligenceFlowFeedbackLearning.CandidateResolution.rawValue.getter())
    {
      goto LABEL_21;
    }
  }

  v62 = v44[7];
  OUTLINED_FUNCTION_262();
  if ((v65 & 1) == 0 && (v64 & 1) == 0)
  {
    OUTLINED_FUNCTION_48_2(v63);
    IntelligenceFlowFeedbackLearning.CandidateOutcome.rawValue.getter();
    IntelligenceFlowFeedbackLearning.CandidateOutcome.rawValue.getter();
  }

LABEL_21:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowFeedbackLearning.CandidateEvaluation.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_3_4();
  v47 = type metadata accessor for AIML.UUID();
  v3 = OUTLINED_FUNCTION_4_1(v47);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_180_4(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_73_6(v11);
  v12 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateIdentifier(0);
  v13 = OUTLINED_FUNCTION_4_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_289();
  v46 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0D8, &qword_19395AF70);
  OUTLINED_FUNCTION_47(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_61_6();
  v21 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateCategory(0);
  v22 = OUTLINED_FUNCTION_4_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_10_23();
  v25 = OUTLINED_FUNCTION_34_7();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
  OUTLINED_FUNCTION_47(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_70_1();
  v31 = OUTLINED_FUNCTION_188_2();
  sub_193448804(v31, v32, &qword_1EAE3C0E0, &unk_19395C350);
  OUTLINED_FUNCTION_5_3(v0);
  if (v36)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_133_6();
    sub_1935413F8(v0, v1);
    OUTLINED_FUNCTION_103_0();
    IntelligenceFlowFeedbackLearning.CandidateCategory.hash(into:)();
    OUTLINED_FUNCTION_134_6();
    sub_1935413A4();
  }

  v33 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateEvaluation(0);
  sub_193448804(v0 + v33[5], v2, &qword_1EAE3C0D8, &qword_19395AF70);
  OUTLINED_FUNCTION_6_3(v2, 1, v12);
  if (v36)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_22_18();
    sub_1935413F8(v2, v46);
    OUTLINED_FUNCTION_103_0();
    sub_193448804(v46, v45, &qword_1EAE3BCA0, &unk_19395C320);
    v34 = OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_6_3(v34, v35, v47);
    if (v36)
    {
      OUTLINED_FUNCTION_104_0();
    }

    else
    {
      OUTLINED_FUNCTION_3_33();
      OUTLINED_FUNCTION_276_0(v45);
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_1_35();
      sub_19354129C(v37, v38);
      OUTLINED_FUNCTION_79_8();
      sub_19393C540();
      OUTLINED_FUNCTION_2_32();
      sub_1935413A4();
    }

    OUTLINED_FUNCTION_23_20();
    sub_1935413A4();
  }

  v39 = v0 + v33[6];
  if (*(v39 + 9))
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_147_2(v39);
    OUTLINED_FUNCTION_164_4();
    v41 = IntelligenceFlowFeedbackLearning.CandidateResolution.rawValue.getter(v40);
    MEMORY[0x193B18030](v41);
  }

  v42 = v0 + v33[7];
  if (*(v42 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_147_2(v42);
    OUTLINED_FUNCTION_164_4();
    v44 = IntelligenceFlowFeedbackLearning.CandidateOutcome.rawValue.getter(v43);
    MEMORY[0x193B18030](v44);
  }

  OUTLINED_FUNCTION_116();
}

uint64_t IntelligenceFlowFeedbackLearning.TupleInteraction.identifiers.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void IntelligenceFlowFeedbackLearning.TupleInteraction.alignment.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  OUTLINED_FUNCTION_5_2(a1);
}

uint64_t IntelligenceFlowFeedbackLearning.TupleInteraction.alignment.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  *(v1 + 17) = v3;
  return result;
}

void IntelligenceFlowFeedbackLearning.TupleInteraction.init()(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
}

BOOL static IntelligenceFlowFeedbackLearning.TupleInteraction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  if ((sub_193531094(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if ((v4 & 1) == 0)
  {
    if (v7)
    {
      return 0;
    }

    OUTLINED_FUNCTION_196_1();
    v9 = IntelligenceFlowFeedbackLearning.UserAlignmentCategory.rawValue.getter(v8);
    return v9 == IntelligenceFlowFeedbackLearning.UserAlignmentCategory.rawValue.getter(v9);
  }

  return (v7 & 1) != 0;
}

uint64_t IntelligenceFlowFeedbackLearning.TupleInteraction.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);
  sub_193541A24(a1, v2);
  if (v5 == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_179_0();
  v8 = IntelligenceFlowFeedbackLearning.UserAlignmentCategory.rawValue.getter(v7);
  return MEMORY[0x193B18030](v8);
}

uint64_t IntelligenceFlowFeedbackLearning.TupleInteraction.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  sub_19393CAB0();
  sub_193541A24(v8, v1);
  sub_19393CAD0();
  if (v4 != 1)
  {
    OUTLINED_FUNCTION_180();
    v6 = IntelligenceFlowFeedbackLearning.UserAlignmentCategory.rawValue.getter(v5);
    MEMORY[0x193B18030](v6);
  }

  return sub_19393CB00();
}

uint64_t sub_19353F9DC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 17);
  v5[9] = *v0;
  v5[10] = v1;
  v6 = v2;
  v7 = v3;
  sub_19393CAB0();
  IntelligenceFlowFeedbackLearning.TupleInteraction.hash(into:)(v5);
  return sub_19393CB00();
}

void IntelligenceFlowFeedbackLearning.CandidateInteraction.alignment.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateInteraction(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 20));
}

void IntelligenceFlowFeedbackLearning.CandidateInteraction.alignment.setter(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_85_8(a1);
  v2 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateInteraction(v1);
  OUTLINED_FUNCTION_84_6(*(v2 + 20));
}

uint64_t IntelligenceFlowFeedbackLearning.CandidateInteraction.alignment.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateInteraction(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t IntelligenceFlowFeedbackLearning.CandidateInteraction.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateIdentifier(v1);
  v3 = OUTLINED_FUNCTION_28_0();
  v6 = OUTLINED_FUNCTION_163_4(v3, v4, v5);
  v7 = v0 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateInteraction(v6) + 20);
  *v7 = 0;
  *(v7 + 8) = 256;
  sub_19344E6DC(v0, &qword_1EAE3C0D8, &qword_19395AF70);
  v8 = OUTLINED_FUNCTION_28_0();
  result = __swift_storeEnumTagSinglePayload(v8, v9, v10, v2);
  *v7 = 0;
  *(v7 + 8) = 256;
  return result;
}

void static IntelligenceFlowFeedbackLearning.CandidateInteraction.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_166_3();
  v6 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateIdentifier(v5);
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_94_7();
  v10 = OUTLINED_FUNCTION_165_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_47(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_220();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CA40, &qword_19395C360);
  OUTLINED_FUNCTION_47(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_74();
  v21 = *(v20 + 56);
  OUTLINED_FUNCTION_191_1(v0, v2);
  OUTLINED_FUNCTION_191_1(v4, v2 + v21);
  OUTLINED_FUNCTION_6_3(v2, 1, v6);
  if (!v26)
  {
    v22 = OUTLINED_FUNCTION_24_1();
    sub_193448804(v22, v23, v24, v25);
    OUTLINED_FUNCTION_6_3(v2 + v21, 1, v6);
    if (!v26)
    {
      OUTLINED_FUNCTION_22_18();
      sub_1935413F8(v2 + v21, v1);
      v27 = OUTLINED_FUNCTION_34_7();
      v29 = static IntelligenceFlowFeedbackLearning.CandidateIdentifier.== infix(_:_:)(v27, v28);
      sub_1935413A4();
      sub_1935413A4();
      sub_19344E6DC(v2, &qword_1EAE3C0D8, &qword_19395AF70);
      if ((v29 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_23_20();
    sub_1935413A4();
LABEL_9:
    sub_19344E6DC(v2, &qword_1EAE3CA40, &qword_19395C360);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_6_3(v2 + v21, 1, v6);
  if (!v26)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v2, &qword_1EAE3C0D8, &qword_19395AF70);
LABEL_12:
  v30 = *(type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateInteraction(0) + 20);
  if ((*(v0 + v30 + 9) & 1) == 0 && (*(v4 + v30 + 9) & 1) == 0)
  {
    OUTLINED_FUNCTION_48_2((v0 + v30));
    v32 = IntelligenceFlowFeedbackLearning.UserAlignmentCategory.rawValue.getter(v31);
    IntelligenceFlowFeedbackLearning.UserAlignmentCategory.rawValue.getter(v32);
  }

LABEL_10:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowFeedbackLearning.CandidateInteraction.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_3_4();
  v3 = type metadata accessor for AIML.UUID();
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_220();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_105_8();
  v11 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateIdentifier(0);
  v12 = OUTLINED_FUNCTION_4_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v17 = v16 - v15;
  v18 = OUTLINED_FUNCTION_125_3();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_47(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_70_1();
  v24 = OUTLINED_FUNCTION_127();
  sub_193448804(v24, v25, &qword_1EAE3C0D8, &qword_19395AF70);
  v26 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v26, v27, v11);
  if (v32)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_22_18();
    sub_1935413F8(v0, v17);
    OUTLINED_FUNCTION_103_0();
    v28 = OUTLINED_FUNCTION_25_2();
    sub_193448804(v28, v29, v30, v31);
    OUTLINED_FUNCTION_5_3(v2);
    if (v32)
    {
      OUTLINED_FUNCTION_104_0();
    }

    else
    {
      OUTLINED_FUNCTION_3_33();
      sub_1935413F8(v2, v1);
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_1_35();
      sub_19354129C(v33, v34);
      OUTLINED_FUNCTION_21_1();
      sub_19393C540();
      OUTLINED_FUNCTION_2_32();
      sub_1935413A4();
    }

    OUTLINED_FUNCTION_23_20();
    sub_1935413A4();
  }

  v35 = v0 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateInteraction(0) + 20);
  if (*(v35 + 9))
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_147_2(v35);
    OUTLINED_FUNCTION_164_4();
    v37 = IntelligenceFlowFeedbackLearning.UserAlignmentCategory.rawValue.getter(v36);
    MEMORY[0x193B18030](v37);
  }

  OUTLINED_FUNCTION_116();
}

BOOL static IntelligenceFlowFeedbackLearning.ToolCandidateCategory.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

uint64_t _s27IntelligencePlatformLibrary0A22FlowResponseGenerationV12CatalogEndedV4hash4intoys6HasherVz_tF_0()
{
  OUTLINED_FUNCTION_77_1();
  if (*v0 != 2)
  {
    sub_19393CAD0();
  }

  return sub_19393CAD0();
}

uint64_t _s27IntelligencePlatformLibrary0A22FlowResponseGenerationV12CatalogEndedV9hashValueSivg_0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_119();
  if (v1 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  return sub_19393CB00();
}

void _s27IntelligencePlatformLibrary0A20FlowFeedbackLearningV19CandidateIdentifierV2eeoiySbAE_AEtFZ_0()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_56_5();
  v5 = type metadata accessor for AIML.UUID();
  v6 = OUTLINED_FUNCTION_4_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10_24();
  v9 = OUTLINED_FUNCTION_165_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_47(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_74();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BD08, &qword_1939595A0);
  OUTLINED_FUNCTION_47(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_42_0();
  v20 = *(v19 + 56);
  OUTLINED_FUNCTION_191_1(v4, v1);
  OUTLINED_FUNCTION_191_1(v3, v1 + v20);
  OUTLINED_FUNCTION_31(v1);
  if (!v21)
  {
    sub_193448804(v1, v2, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_31(v1 + v20);
    if (!v21)
    {
      sub_1935413F8(v1 + v20, v0);
      OUTLINED_FUNCTION_1_35();
      sub_19354129C(v22, v23);
      OUTLINED_FUNCTION_162_5();
      sub_19393C550();
      OUTLINED_FUNCTION_119_4();
      sub_1935413A4();
      OUTLINED_FUNCTION_24_1();
      sub_1935413A4();
      sub_19344E6DC(v1, &qword_1EAE3BCA0, &unk_19395C320);
      goto LABEL_10;
    }

    sub_1935413A4();
LABEL_9:
    sub_19344E6DC(v1, &qword_1EAE3BD08, &qword_1939595A0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31(v1 + v20);
  if (!v21)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v1, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_10:
  OUTLINED_FUNCTION_116();
}

void _s27IntelligencePlatformLibrary0A20FlowFeedbackLearningV19CandidateIdentifierV4hash4intoys6HasherVz_tF_0()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_166_3();
  v2 = type metadata accessor for AIML.UUID();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_94_7();
  v6 = OUTLINED_FUNCTION_25_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_74();
  sub_193448804(v0, v1, &qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_14_1(v1);
  if (v12)
  {
    sub_19393CAD0();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_175_0();
    sub_1935413F8(v13, v14);
    sub_19393CAD0();
    OUTLINED_FUNCTION_1_35();
    sub_19354129C(v15, v16);
    OUTLINED_FUNCTION_151();
    sub_19393C540();
    OUTLINED_FUNCTION_2_32();
    sub_1935413A4();
  }

  OUTLINED_FUNCTION_236();
}

void IntelligenceFlowFeedbackLearning.TaskOutcome.taskStatus.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  OUTLINED_FUNCTION_5_2(a1);
}

void IntelligenceFlowFeedbackLearning.TaskOutcome.promptStatus.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 25);
  OUTLINED_FUNCTION_5_2(a1);
}

void IntelligenceFlowFeedbackLearning.TaskOutcome.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
}

uint64_t static IntelligenceFlowFeedbackLearning.TaskOutcome.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  v5 = *(a2 + 9);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 25);
  if ((*(a1 + 9) & 1) == 0)
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    OUTLINED_FUNCTION_9_16(a1, a2);
    v9 = IntelligenceFlowFeedbackLearning.TaskStatus.rawValue.getter();
    if (v9 != IntelligenceFlowFeedbackLearning.TaskStatus.rawValue.getter())
    {
      return 0;
    }

LABEL_6:
    if (v4)
    {
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v8)
      {
        return 0;
      }

      OUTLINED_FUNCTION_196_1();
      v11 = IntelligenceFlowFeedbackLearning.TaskPromptStatus.rawValue.getter(v10);
      if (v11 != IntelligenceFlowFeedbackLearning.TaskPromptStatus.rawValue.getter(v11))
      {
        return 0;
      }
    }

    return 1;
  }

  if (*(a2 + 9))
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t IntelligenceFlowFeedbackLearning.TaskOutcome.hash(into:)()
{
  OUTLINED_FUNCTION_148_2();
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  if (v4 == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v3)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_179_0();
      v6 = IntelligenceFlowFeedbackLearning.TaskPromptStatus.rawValue.getter(v5);
      return MEMORY[0x193B18030](v6);
    }
  }

  else
  {
    v8 = *(v0 + 8);
    v9 = *v0;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_179_0();
    v10 = IntelligenceFlowFeedbackLearning.TaskStatus.rawValue.getter();
    MEMORY[0x193B18030](v10);
    if (!v3)
    {
      goto LABEL_3;
    }
  }

  return OUTLINED_FUNCTION_104_0();
}

uint64_t IntelligenceFlowFeedbackLearning.TaskOutcome.hashValue.getter()
{
  OUTLINED_FUNCTION_182_1();
  sub_19393CAB0();
  sub_19393CAD0();
  if (v1 != 1)
  {
    OUTLINED_FUNCTION_180();
    v2 = IntelligenceFlowFeedbackLearning.TaskStatus.rawValue.getter();
    MEMORY[0x193B18030](v2);
  }

  sub_19393CAD0();
  if (!v0)
  {
    OUTLINED_FUNCTION_180();
    v4 = IntelligenceFlowFeedbackLearning.TaskPromptStatus.rawValue.getter(v3);
    MEMORY[0x193B18030](v4);
  }

  return sub_19393CB00();
}

uint64_t sub_19354085C()
{
  OUTLINED_FUNCTION_182_1();
  sub_19393CAB0();
  sub_19393CAD0();
  if (v1 != 1)
  {
    OUTLINED_FUNCTION_180();
    v2 = IntelligenceFlowFeedbackLearning.TaskStatus.rawValue.getter();
    MEMORY[0x193B18030](v2);
  }

  sub_19393CAD0();
  if (!v0)
  {
    OUTLINED_FUNCTION_180();
    v4 = IntelligenceFlowFeedbackLearning.TaskPromptStatus.rawValue.getter(v3);
    MEMORY[0x193B18030](v4);
  }

  return sub_19393CB00();
}

void static IntelligenceFlowFeedbackLearning.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v4 = v3;
  v53 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event(0);
  v5 = OUTLINED_FUNCTION_4_1(v53);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_180_4(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C090, &qword_19395AF38);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_73_6(v13);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CA50, &qword_19395C370);
  OUTLINED_FUNCTION_4_1(v52);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_70_1();
  v17 = type metadata accessor for IntelligenceFlowFeedbackLearning.Metadata(0);
  v18 = OUTLINED_FUNCTION_4_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_10_23();
  v21 = OUTLINED_FUNCTION_94_5();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
  OUTLINED_FUNCTION_47(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_61_6();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3CA58, &qword_19395C378);
  OUTLINED_FUNCTION_47(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_55_3();
  v32 = *(v31 + 56);
  v33 = OUTLINED_FUNCTION_152_5();
  sub_193448804(v33, v34, &qword_1EAE3C098, &unk_19395C300);
  sub_193448804(v4, v2 + v32, &qword_1EAE3C098, &unk_19395C300);
  OUTLINED_FUNCTION_14_1(v2);
  if (!v39)
  {
    v35 = OUTLINED_FUNCTION_125_3();
    sub_193448804(v35, v36, v37, v38);
    OUTLINED_FUNCTION_14_1(v2 + v32);
    if (!v39)
    {
      OUTLINED_FUNCTION_126_4();
      sub_1935413F8(v2 + v32, v1);
      v43 = OUTLINED_FUNCTION_216();
      v45 = static IntelligenceFlowFeedbackLearning.CandidateIdentifier.== infix(_:_:)(v43, v44);
      sub_1935413A4();
      sub_1935413A4();
      sub_19344E6DC(v2, &qword_1EAE3C098, &unk_19395C300);
      if ((v45 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_127_4();
    sub_1935413A4();
LABEL_9:
    v40 = &qword_1EAE3CA58;
    v41 = &qword_19395C378;
    v42 = v2;
LABEL_20:
    sub_19344E6DC(v42, v40, v41);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_14_1(v2 + v32);
  if (!v39)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v2, &qword_1EAE3C098, &unk_19395C300);
LABEL_11:
  v46 = *(type metadata accessor for IntelligenceFlowFeedbackLearning(0) + 20);
  OUTLINED_FUNCTION_269();
  sub_193448804(v47 + v46, v0, &qword_1EAE3C090, &qword_19395AF38);
  sub_193448804(v4 + v46, &unk_19395C300 + v0, &qword_1EAE3C090, &qword_19395AF38);
  v48 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v48, v49, v53);
  if (!v39)
  {
    sub_193448804(v0, v51, &qword_1EAE3C090, &qword_19395AF38);
    OUTLINED_FUNCTION_14_1(&unk_19395C300 + v0);
    if (!v50)
    {
      OUTLINED_FUNCTION_124_4();
      OUTLINED_FUNCTION_276_0(&unk_19395C300 + v0);
      OUTLINED_FUNCTION_5_7();
      static IntelligenceFlowFeedbackLearning.Event.== infix(_:_:)();
      sub_1935413A4();
      sub_1935413A4();
      sub_19344E6DC(v0, &qword_1EAE3C090, &qword_19395AF38);
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_125_4();
    sub_1935413A4();
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_14_1(&unk_19395C300 + v0);
  if (!v39)
  {
LABEL_19:
    v40 = &qword_1EAE3CA50;
    v41 = &qword_19395C370;
    v42 = v0;
    goto LABEL_20;
  }

  sub_19344E6DC(v0, &qword_1EAE3C090, &qword_19395AF38);
LABEL_21:
  OUTLINED_FUNCTION_116();
}

void IntelligenceFlowFeedbackLearning.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v55 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.EventValue(0);
  v4 = OUTLINED_FUNCTION_4_1(v55);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_289();
  v52 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0A0, &unk_19395C310);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_180_4(v12);
  v56 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event(0);
  v13 = OUTLINED_FUNCTION_4_1(v56);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_289();
  v54 = v16;
  v17 = type metadata accessor for AIML.UUID();
  v18 = OUTLINED_FUNCTION_4_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_150();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C090, &qword_19395AF38);
  OUTLINED_FUNCTION_47(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_55_3();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_105_8();
  v29 = type metadata accessor for IntelligenceFlowFeedbackLearning.Metadata(0);
  v30 = OUTLINED_FUNCTION_4_1(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_94_7();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C098, &unk_19395C300);
  OUTLINED_FUNCTION_47(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_70_1();
  v37 = OUTLINED_FUNCTION_13_0();
  sub_193448804(v37, v38, &qword_1EAE3C098, &unk_19395C300);
  v39 = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_3(v39, v40, v29);
  if (v43)
  {
    sub_19393CAD0();
  }

  else
  {
    OUTLINED_FUNCTION_126_4();
    v41 = OUTLINED_FUNCTION_225();
    sub_1935413F8(v41, v42);
    sub_19393CAD0();
    sub_193448804(v1, v2, &qword_1EAE3BCA0, &unk_19395C320);
    OUTLINED_FUNCTION_6_3(v2, 1, v17);
    if (v43)
    {
      OUTLINED_FUNCTION_104_0();
    }

    else
    {
      OUTLINED_FUNCTION_3_33();
      v44 = OUTLINED_FUNCTION_102_7();
      sub_1935413F8(v44, v45);
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_1_35();
      sub_19354129C(v46, v47);
      OUTLINED_FUNCTION_79_8();
      sub_19393C540();
      OUTLINED_FUNCTION_2_32();
      sub_1935413A4();
    }

    OUTLINED_FUNCTION_127_4();
    sub_1935413A4();
  }

  v48 = type metadata accessor for IntelligenceFlowFeedbackLearning(0);
  sub_193448804(v0 + *(v48 + 20), v3, &qword_1EAE3C090, &qword_19395AF38);
  OUTLINED_FUNCTION_6_3(v3, 1, v56);
  if (v43)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_124_4();
    sub_1935413F8(v3, v54);
    OUTLINED_FUNCTION_103_0();
    sub_193448804(v54, v53, &qword_1EAE3C0A0, &unk_19395C310);
    v49 = OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_6_3(v49, v50, v55);
    if (v51)
    {
      OUTLINED_FUNCTION_104_0();
    }

    else
    {
      OUTLINED_FUNCTION_46_7();
      sub_1935413F8(v53, v52);
      OUTLINED_FUNCTION_103_0();
      IntelligenceFlowFeedbackLearning.Event.EventValue.hash(into:)();
      OUTLINED_FUNCTION_47_11();
      sub_1935413A4();
    }

    OUTLINED_FUNCTION_125_4();
    sub_1935413A4();
  }

  OUTLINED_FUNCTION_116();
}

uint64_t sub_193541128(uint64_t a1)
{
  v3 = v1[6];
  if (!v3)
  {
    return sub_19393CAD0();
  }

  v5 = v1[2];
  v4 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = *v1;
  v9 = v1[1];
  sub_19393CAD0();
  if ((v9 & 0x100) == 0)
  {
    v10 = sub_19393CAD0();
    v11 = IntelligenceFlowFeedbackLearning.ActionResolutionState.rawValue.getter(v10);
    MEMORY[0x193B18030](v11);
    if ((v6 & 0x10000) != 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    sub_19393CAD0();
    if ((v4 & 0x100) != 0)
    {
      sub_19393CAD0();
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_19393CAD0();
      v13 = IntelligenceFlowFeedbackLearning.TaskStatus.rawValue.getter();
      MEMORY[0x193B18030](v13);
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_9;
      }
    }

    v14 = sub_19393CAD0();
    v15 = IntelligenceFlowFeedbackLearning.TaskPromptStatus.rawValue.getter(v14);
    MEMORY[0x193B18030](v15);
    goto LABEL_12;
  }

  sub_19393CAD0();
  if ((v6 & 0x10000) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  sub_19393CAD0();
LABEL_12:

  return sub_193542308(a1, v3);
}

uint64_t sub_19354129C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1935413A4()
{
  v1 = OUTLINED_FUNCTION_3_4();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1935413F8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_166_3();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_13_0();
  v9(v8);
  return a2;
}

uint64_t sub_1935415C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AIML.UUID();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateIdentifier(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0D8, &qword_19395AF70);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v37 - v17;
  v19 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateInteraction(0);
  v38 = *(v19 - 8);
  v20 = *(v38 + 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a2;
  v23 = *(a2 + 16);
  result = MEMORY[0x193B18030](v23);
  if (v23)
  {
    v40 = &v22[*(v19 + 20)];
    v25 = v39 + ((v38[80] + 32) & ~v38[80]);
    v26 = *(v38 + 9);
    v38 = v18;
    v39 = v26;
    do
    {
      sub_1935471F4(v25, v22);
      sub_193448804(v22, v18, &qword_1EAE3C0D8, &qword_19395AF70);
      if (__swift_getEnumTagSinglePayload(v18, 1, v11) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_1935413F8(v18, v14);
        sub_19393CAD0();
        sub_193448804(v14, v10, &qword_1EAE3BCA0, &unk_19395C320);
        if (__swift_getEnumTagSinglePayload(v10, 1, v4) == 1)
        {
          sub_19393CAD0();
        }

        else
        {
          sub_1935413F8(v10, v37);
          sub_19393CAD0();
          sub_19354129C(&qword_1EAE3BD18, type metadata accessor for AIML.UUID);
          sub_19393C540();
          v18 = v38;
          sub_1935413A4();
        }

        sub_1935413A4();
      }

      if (v40[9])
      {
        sub_19393CAD0();
      }

      else
      {
        v27 = a1;
        v28 = v14;
        v29 = v11;
        v30 = v10;
        v31 = v4;
        v32 = v40[8];
        v33 = *v40;
        v34 = sub_19393CAD0();
        v41 = v33;
        v18 = v38;
        v35 = v32 & 1;
        v4 = v31;
        v10 = v30;
        v11 = v29;
        v14 = v28;
        a1 = v27;
        v42 = v35;
        v36 = IntelligenceFlowFeedbackLearning.UserAlignmentCategory.rawValue.getter(v34);
        MEMORY[0x193B18030](v36);
      }

      result = sub_1935413A4();
      v25 += v39;
      --v23;
    }

    while (v23);
  }

  return result;
}

uint64_t sub_193541A24(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AIML.UUID();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateIdentifier(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  result = MEMORY[0x193B18030](v16);
  if (v16)
  {
    v18 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v19 = *(v12 + 72);
    do
    {
      sub_1935471F4(v18, v15);
      sub_193448804(v15, v10, &qword_1EAE3BCA0, &unk_19395C320);
      if (__swift_getEnumTagSinglePayload(v10, 1, v3) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_1935413F8(v10, v6);
        sub_19393CAD0();
        sub_19354129C(&qword_1EAE3BD18, type metadata accessor for AIML.UUID);
        sub_19393C540();
        sub_1935413A4();
      }

      result = sub_1935413A4();
      v18 += v19;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t sub_193541CBC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AIML.UUID();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v43 = &v40 - v8;
  v50 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateIdentifier(0);
  v9 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0D8, &qword_19395AF70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v40 - v14;
  v49 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateCategory(0);
  v16 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v42 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0E0, &unk_19395C350);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v40 - v20;
  v22 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateEvaluation(0);
  v51 = *(v22 - 1);
  v23 = *(v51 + 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a2 + 16);
  result = MEMORY[0x193B18030](v26);
  if (v26)
  {
    v28 = a2;
    v29 = v22[5];
    v47 = &v25[v22[6]];
    v48 = v3;
    v46 = &v25[v22[7]];
    v30 = v28 + ((v51[80] + 32) & ~v51[80]);
    v45 = *(v51 + 9);
    v51 = v11;
    do
    {
      sub_1935471F4(v30, v25);
      sub_193448804(v25, v21, &qword_1EAE3C0E0, &unk_19395C350);
      if (__swift_getEnumTagSinglePayload(v21, 1, v49) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v44 = v26;
        sub_1935413F8(v21, v42);
        sub_19393CAD0();
        IntelligenceFlowFeedbackLearning.CandidateCategory.hash(into:)();
        v26 = v44;
        sub_1935413A4();
      }

      sub_193448804(&v25[v29], v15, &qword_1EAE3C0D8, &qword_19395AF70);
      if (__swift_getEnumTagSinglePayload(v15, 1, v50) == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        sub_1935413F8(v15, v11);
        sub_19393CAD0();
        v31 = v43;
        sub_193448804(v11, v43, &qword_1EAE3BCA0, &unk_19395C320);
        if (__swift_getEnumTagSinglePayload(v31, 1, v3) == 1)
        {
          sub_19393CAD0();
        }

        else
        {
          sub_1935413F8(v31, v41);
          sub_19393CAD0();
          sub_19354129C(&qword_1EAE3BD18, type metadata accessor for AIML.UUID);
          sub_19393C540();
          sub_1935413A4();
        }

        sub_1935413A4();
      }

      if (v47[9])
      {
        sub_19393CAD0();
      }

      else
      {
        v32 = v47[8];
        v33 = *v47;
        v34 = sub_19393CAD0();
        v52 = v33;
        v53 = v32 & 1;
        v35 = IntelligenceFlowFeedbackLearning.CandidateResolution.rawValue.getter(v34);
        MEMORY[0x193B18030](v35);
      }

      if (v46[9] == 1)
      {
        sub_19393CAD0();
      }

      else
      {
        v36 = v46[8];
        v37 = *v46;
        v38 = sub_19393CAD0();
        v52 = v37;
        v53 = v36 & 1;
        v39 = IntelligenceFlowFeedbackLearning.CandidateOutcome.rawValue.getter(v38);
        MEMORY[0x193B18030](v39);
      }

      result = sub_1935413A4();
      v3 = v48;
      v11 = v51;
      v30 += v45;
      --v26;
    }

    while (v26);
  }

  return result;
}

uint64_t sub_193542308(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 32;
    do
    {
      v7 = (v6 + 40 * v5);
      v8 = v7[2];
      v9 = *(v7 + 24);
      v10 = *(v7 + 25);
      v11 = v7[4];
      if (*(v7 + 9) == 1)
      {
        sub_19393CAD0();

        if (v10)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v14 = *(v7 + 8);
        v31 = *(v7 + 25);
        v15 = *(v7 + 24);
        v16 = v7[2];
        v17 = v3;
        v18 = v6;
        v19 = *v7;
        sub_19393CAD0();
        v6 = v18;
        v3 = v17;

        v21 = IntelligenceFlowFeedbackLearning.Evaluator.rawValue.getter(v20);
        MEMORY[0x193B18030](v21);
        if (v31)
        {
LABEL_7:
          sub_19393CAD0();
          goto LABEL_8;
        }
      }

      v12 = sub_19393CAD0();
      v13 = IntelligenceFlowFeedbackLearning.EvaluationVote.rawValue.getter(v12);
      MEMORY[0x193B18030](v13);
LABEL_8:
      v22 = MEMORY[0x193B18030](*(v11 + 16));
      v26 = *(v11 + 16);
      if (v26)
      {
        v27 = (v11 + 40);
        do
        {
          v28 = *(v27 - 1);
          v29 = *v27;
          v27 += 16;
          v30 = IntelligenceFlowFeedbackLearning.EvaluationSource.rawValue.getter(v22, v23, v24, v25);
          v22 = MEMORY[0x193B18030](v30);
          --v26;
        }

        while (v26);
      }

      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t sub_1935424A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v8 = (a2 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v8 += 16;
      v11 = IntelligenceFlowFeedbackLearning.EvaluationSource.rawValue.getter(result, v5, v6, v7);
      result = MEMORY[0x193B18030](v11);
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_193542598()
{
  result = qword_1EAE3CA60;
  if (!qword_1EAE3CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CA60);
  }

  return result;
}

unint64_t sub_1935425F0()
{
  result = qword_1EAE3CA68;
  if (!qword_1EAE3CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CA68);
  }

  return result;
}

unint64_t sub_193542648()
{
  result = qword_1EAE3CA70;
  if (!qword_1EAE3CA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CA70);
  }

  return result;
}

unint64_t sub_1935426A0()
{
  result = qword_1EAE3CA78;
  if (!qword_1EAE3CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CA78);
  }

  return result;
}

unint64_t sub_1935426F8()
{
  result = qword_1EAE3CA80;
  if (!qword_1EAE3CA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CA80);
  }

  return result;
}

unint64_t sub_193542798()
{
  result = qword_1EAE3CA90;
  if (!qword_1EAE3CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CA90);
  }

  return result;
}

unint64_t sub_1935427F0()
{
  result = qword_1EAE3CA98;
  if (!qword_1EAE3CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CA98);
  }

  return result;
}

unint64_t sub_193542878()
{
  result = qword_1EAE3CAB0;
  if (!qword_1EAE3CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CAB0);
  }

  return result;
}

unint64_t sub_193542900()
{
  result = qword_1EAE3CAC8;
  if (!qword_1EAE3CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CAC8);
  }

  return result;
}

unint64_t sub_1935429A0()
{
  result = qword_1EAE3CAD8;
  if (!qword_1EAE3CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CAD8);
  }

  return result;
}

unint64_t sub_193542AA8()
{
  result = qword_1EAE3CAF0;
  if (!qword_1EAE3CAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CAF0);
  }

  return result;
}

unint64_t sub_193542B00()
{
  result = qword_1EAE3CAF8;
  if (!qword_1EAE3CAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CAF8);
  }

  return result;
}

unint64_t sub_193542B58()
{
  result = qword_1EAE3CB00;
  if (!qword_1EAE3CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CB00);
  }

  return result;
}

unint64_t sub_193542BB0()
{
  result = qword_1EAE3CB08;
  if (!qword_1EAE3CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CB08);
  }

  return result;
}

unint64_t sub_193542C08()
{
  result = qword_1EAE3CB10;
  if (!qword_1EAE3CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CB10);
  }

  return result;
}

unint64_t sub_193542C60()
{
  result = qword_1EAE3CB18;
  if (!qword_1EAE3CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CB18);
  }

  return result;
}

unint64_t sub_193542CE8()
{
  result = qword_1EAE3CB30;
  if (!qword_1EAE3CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CB30);
  }

  return result;
}

unint64_t sub_193542D40()
{
  result = qword_1EAE3CB38;
  if (!qword_1EAE3CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CB38);
  }

  return result;
}

unint64_t sub_193542D98()
{
  result = qword_1EAE3CB40;
  if (!qword_1EAE3CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CB40);
  }

  return result;
}

unint64_t sub_193542DF0()
{
  result = qword_1EAE3CB48;
  if (!qword_1EAE3CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CB48);
  }

  return result;
}

unint64_t sub_193542E48()
{
  result = qword_1EAE3CB50;
  if (!qword_1EAE3CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CB50);
  }

  return result;
}

unint64_t sub_193542EA0()
{
  result = qword_1EAE3CB58;
  if (!qword_1EAE3CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CB58);
  }

  return result;
}

unint64_t sub_193542EF8()
{
  result = qword_1EAE3CB60;
  if (!qword_1EAE3CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CB60);
  }

  return result;
}

unint64_t sub_193542F50()
{
  result = qword_1EAE3CB68;
  if (!qword_1EAE3CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CB68);
  }

  return result;
}

unint64_t sub_193542FA8()
{
  result = qword_1EAE3CB70;
  if (!qword_1EAE3CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CB70);
  }

  return result;
}

unint64_t sub_193543000()
{
  result = qword_1EAE3CB78;
  if (!qword_1EAE3CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CB78);
  }

  return result;
}

unint64_t sub_193543058()
{
  result = qword_1EAE3CB80;
  if (!qword_1EAE3CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CB80);
  }

  return result;
}

unint64_t sub_1935430B0()
{
  result = qword_1EAE3CB88;
  if (!qword_1EAE3CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CB88);
  }

  return result;
}

unint64_t sub_193543108()
{
  result = qword_1EAE3CB90;
  if (!qword_1EAE3CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CB90);
  }

  return result;
}

unint64_t sub_193543160()
{
  result = qword_1EAE3CB98;
  if (!qword_1EAE3CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CB98);
  }

  return result;
}

unint64_t sub_1935431B8()
{
  result = qword_1EAE3CBA0;
  if (!qword_1EAE3CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CBA0);
  }

  return result;
}

unint64_t sub_193543210()
{
  result = qword_1EAE3CBA8;
  if (!qword_1EAE3CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CBA8);
  }

  return result;
}

unint64_t sub_193543268()
{
  result = qword_1EAE3CBB0;
  if (!qword_1EAE3CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CBB0);
  }

  return result;
}

unint64_t sub_1935432C0()
{
  result = qword_1EAE3CBB8;
  if (!qword_1EAE3CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CBB8);
  }

  return result;
}

unint64_t sub_193543318()
{
  result = qword_1EAE3CBC0;
  if (!qword_1EAE3CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CBC0);
  }

  return result;
}

unint64_t sub_193543370()
{
  result = qword_1EAE3CBC8;
  if (!qword_1EAE3CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CBC8);
  }

  return result;
}

unint64_t sub_1935433C8()
{
  result = qword_1EAE3CBD0;
  if (!qword_1EAE3CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CBD0);
  }

  return result;
}

unint64_t sub_193543420()
{
  result = qword_1EAE3CBD8;
  if (!qword_1EAE3CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CBD8);
  }

  return result;
}

unint64_t sub_193543478()
{
  result = qword_1EAE3CBE0;
  if (!qword_1EAE3CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CBE0);
  }

  return result;
}

unint64_t sub_1935434D0()
{
  result = qword_1EAE3CBE8;
  if (!qword_1EAE3CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CBE8);
  }

  return result;
}

unint64_t sub_193543570()
{
  result = qword_1EAE3CBF8;
  if (!qword_1EAE3CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CBF8);
  }

  return result;
}

unint64_t sub_1935435C8()
{
  result = qword_1EAE3CC00;
  if (!qword_1EAE3CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CC00);
  }

  return result;
}

unint64_t sub_193543620()
{
  result = qword_1EAE3CC08;
  if (!qword_1EAE3CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CC08);
  }

  return result;
}

unint64_t sub_193543678()
{
  result = qword_1EAE3CC10;
  if (!qword_1EAE3CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CC10);
  }

  return result;
}

unint64_t sub_193543820()
{
  result = qword_1EAE3CC48;
  if (!qword_1EAE3CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CC48);
  }

  return result;
}

unint64_t sub_193543878()
{
  result = qword_1EAE3CC50;
  if (!qword_1EAE3CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CC50);
  }

  return result;
}

unint64_t sub_193543918()
{
  result = qword_1EAE3CC60;
  if (!qword_1EAE3CC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CC60);
  }

  return result;
}

unint64_t sub_1935439B8()
{
  result = qword_1EAE3CC70;
  if (!qword_1EAE3CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CC70);
  }

  return result;
}

unint64_t sub_193543A58()
{
  result = qword_1EAE3CC80;
  if (!qword_1EAE3CC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CC80);
  }

  return result;
}

unint64_t sub_193543B90()
{
  result = qword_1EAE3CCA8;
  if (!qword_1EAE3CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CCA8);
  }

  return result;
}

unint64_t sub_193543BE8()
{
  result = qword_1EAE3CCB0;
  if (!qword_1EAE3CCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CCB0);
  }

  return result;
}

unint64_t sub_193543C40()
{
  result = qword_1EAE3CCB8;
  if (!qword_1EAE3CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CCB8);
  }

  return result;
}

unint64_t sub_193543C98()
{
  result = qword_1EAE3CCC0;
  if (!qword_1EAE3CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CCC0);
  }

  return result;
}

unint64_t sub_193543CF0()
{
  result = qword_1EAE3CCC8;
  if (!qword_1EAE3CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CCC8);
  }

  return result;
}

unint64_t sub_193543D48()
{
  result = qword_1EAE3CCD0;
  if (!qword_1EAE3CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CCD0);
  }

  return result;
}

unint64_t sub_193543DA0()
{
  result = qword_1EAE3CCD8;
  if (!qword_1EAE3CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CCD8);
  }

  return result;
}

unint64_t sub_193543E70()
{
  result = qword_1EAE3CCF8;
  if (!qword_1EAE3CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CCF8);
  }

  return result;
}

unint64_t sub_193543EF8()
{
  result = qword_1EAE3CD10;
  if (!qword_1EAE3CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CD10);
  }

  return result;
}

unint64_t sub_193543F80()
{
  result = qword_1EAE3CD28;
  if (!qword_1EAE3CD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CD28);
  }

  return result;
}

unint64_t sub_193544008()
{
  result = qword_1EAE3CD40;
  if (!qword_1EAE3CD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CD40);
  }

  return result;
}

unint64_t sub_193544090()
{
  result = qword_1EAE3CD58;
  if (!qword_1EAE3CD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CD58);
  }

  return result;
}

unint64_t sub_193544118()
{
  result = qword_1EAE3CD68;
  if (!qword_1EAE3CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CD68);
  }

  return result;
}

unint64_t sub_1935441A0()
{
  result = qword_1EAE3CD80;
  if (!qword_1EAE3CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CD80);
  }

  return result;
}

unint64_t sub_193544228()
{
  result = qword_1EAE3CD98;
  if (!qword_1EAE3CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CD98);
  }

  return result;
}

unint64_t sub_1935442B0()
{
  result = qword_1EAE3CDB0;
  if (!qword_1EAE3CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CDB0);
  }

  return result;
}

unint64_t sub_193544338()
{
  result = qword_1EAE3CDC8;
  if (!qword_1EAE3CDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CDC8);
  }

  return result;
}

unint64_t sub_1935443C0()
{
  result = qword_1EAE3CDE0;
  if (!qword_1EAE3CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CDE0);
  }

  return result;
}

unint64_t sub_193544418()
{
  result = qword_1EAE3CDE8;
  if (!qword_1EAE3CDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CDE8);
  }

  return result;
}

unint64_t sub_1935444B8()
{
  result = qword_1EAE3CDF8;
  if (!qword_1EAE3CDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CDF8);
  }

  return result;
}

unint64_t sub_1935445A0()
{
  result = qword_1EAE3CE10;
  if (!qword_1EAE3CE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CE10);
  }

  return result;
}

unint64_t sub_1935447A8()
{
  result = qword_1EAE3CE48;
  if (!qword_1EAE3CE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CE48);
  }

  return result;
}

unint64_t sub_193544848()
{
  result = qword_1EAE3CE58;
  if (!qword_1EAE3CE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CE58);
  }

  return result;
}

unint64_t sub_1935448E8()
{
  result = qword_1EAE3CE68;
  if (!qword_1EAE3CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CE68);
  }

  return result;
}

unint64_t sub_1935449D0()
{
  result = qword_1EAE3CE80;
  if (!qword_1EAE3CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CE80);
  }

  return result;
}

unint64_t sub_193544A90()
{
  result = qword_1EAE3CE90;
  if (!qword_1EAE3CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3CE90);
  }

  return result;
}

uint64_t sub_193544B2C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t sub_193544B78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_193544C2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 < 0 && *(a1 + 48))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 40);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_46_4(v2);
}

void sub_193544C68(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    OUTLINED_FUNCTION_278_0(a1);
    *v3 = v4;
    if (v5 < 0)
    {
      OUTLINED_FUNCTION_230_0(v3);
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return;
      }

LABEL_8:
      *(a1 + 40) = (a2 - 1);
      return;
    }

    *(a1 + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }
}

void sub_193544D68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_193544E94()
{
  sub_19349D1FC(319, qword_1ED5068E8);
  if (v0 <= 0x3F)
  {
    sub_19349D1FC(319, qword_1ED504DE0);
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, qword_1ED506E98);
      if (v2 <= 0x3F)
      {
        sub_19349D1FC(319, qword_1ED506808);
        if (v3 <= 0x3F)
        {
          sub_19349D1FC(319, &qword_1ED508290);
          if (v4 <= 0x3F)
          {
            OUTLINED_FUNCTION_20_14();
            sub_193544D68(319, v5, v6, MEMORY[0x1E69E6720]);
            if (v7 <= 0x3F)
            {
              OUTLINED_FUNCTION_15_2();
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary18ResponseGenerationV5EventV8OverrideV9StateInfoOSg(uint64_t a1)
{
  v1 = *(a1 + 33);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1935450C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
  }

  v3 = *(a1 + 33);
  OUTLINED_FUNCTION_275_0();
  if (!v6 & v5)
  {
    return OUTLINED_FUNCTION_46_4(v4);
  }

  else
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }
}

void sub_193545118(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    OUTLINED_FUNCTION_235_0(a1, a2);
    if (v4)
    {
      *(v3 + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 72) = 0;
    }

    if (a2)
    {
      OUTLINED_FUNCTION_139_7(a1, ~a2);
    }
  }
}

uint64_t sub_193545184(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 72))
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

void sub_1935451D0(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    OUTLINED_FUNCTION_235_0(a1, a2);
    if (v4)
    {
      *(v3 + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 72) = 0;
    }

    if (a2)
    {
      *(a1 + 64) = a2;
    }
  }
}

uint64_t sub_193545250(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if ((a2 & 0x80000000) == 0 || !*(a1 + 72))
  {
    v2 = *(a1 + 33);
    if (v2 > 0x80000000)
    {
      return OUTLINED_FUNCTION_46_4(~v2);
    }

    return OUTLINED_FUNCTION_46_4(-1);
  }

  return OUTLINED_FUNCTION_46_4(*a1 + 0x7FFFFFFF);
}

double sub_193545290(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 72) = 1;
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

      return OUTLINED_FUNCTION_139_7(a1, -a2);
    }

    *(a1 + 72) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_139_7(a1, -a2);
    }
  }

  return result;
}

uint64_t sub_1935452EC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48) & 0x1FFLL | (a2 << 62);
  *(result + 32) = *(result + 32);
  *(result + 48) = v2;
  return result;
}

uint64_t sub_1935453D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 >= 0xFD && *(a1 + 34))
  {
    return OUTLINED_FUNCTION_46_4(*a1 + 252);
  }

  v3 = *(a1 + 33);
  if (v3 > 2)
  {
    return OUTLINED_FUNCTION_46_4((v3 ^ 0xFF) - 1);
  }

  else
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }
}

uint64_t sub_193545410(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = ~a2;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_293Tm(uint64_t a1, int a2)
{
  if (a2 == 252)
  {
    v3 = *(a1 + 33);
    if (v3 <= 2)
    {
      return 0;
    }

    else
    {
      return v3 ^ 0xFF;
    }
  }

  else
  {
    OUTLINED_FUNCTION_184_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
    v5 = OUTLINED_FUNCTION_101(*(v2 + 20));

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }
}

void __swift_store_extra_inhabitant_index_294Tm()
{
  OUTLINED_FUNCTION_91_0();
  if (v3 == 252)
  {
    *(v1 + 33) = ~v0;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
    v5 = *(v4 + 20);
    OUTLINED_FUNCTION_112_0();

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

void sub_193545664()
{
  OUTLINED_FUNCTION_202_0();
  sub_19349D1FC(319, v0);
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_20_14();
    sub_193544D68(319, v2, v3, MEMORY[0x1E69E6720]);
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t _s27IntelligencePlatformLibrary27IntelligenceFlowPlatformPnRV7StartedVwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
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
      return OUTLINED_FUNCTION_46_4((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_46_4((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_46_4((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v8);
}

_BYTE *_s27IntelligencePlatformLibrary27IntelligenceFlowPlatformPnRV7StartedVwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_193545890(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if (a2 >= 0xFE && *(a1 + 34))
  {
    return OUTLINED_FUNCTION_46_4(*a1 + 253);
  }

  v3 = *(a1 + 33);
  if (v3 > 2)
  {
    return OUTLINED_FUNCTION_46_4(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }
}

uint64_t sub_1935458CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = -a2;
    }
  }

  return result;
}

uint64_t sub_193545924()
{
  result = type metadata accessor for ResponseGeneration.Event.Generation(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ResponseGeneration.Event.CacheManagerCall(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ResponseGeneration.Event.GMSCall(319);
      if (v3 <= 0x3F)
      {
        OUTLINED_FUNCTION_107_6();
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_193545A00()
{
  sub_193544D68(319, qword_1ED507308, type metadata accessor for PlanGeneration.StateInfo, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1ED506858);
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_20_14();
      sub_193544D68(319, v2, v3, MEMORY[0x1E69E6720]);
      if (v4 <= 0x3F)
      {
        OUTLINED_FUNCTION_15_2();
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_193545B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  result = a5(319);
  if (v6 <= 0x3F)
  {
    OUTLINED_FUNCTION_107_6();
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_193545BEC(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 126);
    }

    v3 = *a1;
    OUTLINED_FUNCTION_277_0();
    if (v4 >= 0x7E)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

uint64_t __swift_get_extra_inhabitant_index_401Tm()
{
  OUTLINED_FUNCTION_207();
  if (v2)
  {
    v3 = *(v0 + 24);
    OUTLINED_FUNCTION_71();
    return (v4 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_184_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
    v6 = OUTLINED_FUNCTION_101(*(v1 + 24));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void __swift_store_extra_inhabitant_index_402Tm()
{
  OUTLINED_FUNCTION_91_0();
  if (v2 == 2147483646)
  {
    *(v1 + 24) = v0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_221_0();
    OUTLINED_FUNCTION_112_0();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

void sub_193545DC4()
{
  sub_19349D1FC(319, &qword_1ED506860);
  if (v0 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1ED508290);
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_20_14();
      sub_193544D68(319, v2, v3, MEMORY[0x1E69E6720]);
      if (v4 <= 0x3F)
      {
        OUTLINED_FUNCTION_15_2();
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_193545E98(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 33))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483645);
    }

    OUTLINED_FUNCTION_234_0(a1);
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_193545EE0(uint64_t result, int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 2147483646);
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_231_0(result, a2);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary14PlanGenerationV5EventO14ModelInferenceV9StateInfoOSg(uint64_t a1)
{
  v1 = (*(a1 + 48) >> 7) & 0x7C | (*(a1 + 48) >> 14);
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x7D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_193545FB4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 50))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 124);
    }

    v3 = (*(a1 + 48) >> 7) & 0x7C | (*(a1 + 48) >> 14);
    v4 = v3 ^ 0x7F;
    v5 = 126 - v3;
    if (v4 >= 0x7D)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v5);
}

void sub_193546004(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    OUTLINED_FUNCTION_278_0(a1);
    *(v3 + 48) = 0;
    *v3 = v4;
    if (v5 >= 0x7D)
    {
      *(v3 + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(a1 + 50) = 0;
    }

    if (a2)
    {
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      OUTLINED_FUNCTION_198_1(a1, ((a2 ^ 0x7F) << 7) & 0xFE00 | ((a2 ^ 0x7F) << 14));
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PlanGeneration.Event.ModelInference.Started(_BYTE *result, int a2, int a3)
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

uint64_t sub_19354613C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    v3 = *(a1 + 40);
    OUTLINED_FUNCTION_71();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v4);
}

void sub_193546188(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    OUTLINED_FUNCTION_278_0(a1);
    *v3 = v4;
    if (v5 >= 0x7FFFFFFF)
    {
      *(v3 + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 48) = 0;
    }

    if (a2)
    {
      *(a1 + 40) = a2;
    }
  }
}

uint64_t sub_1935461FC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 50))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483645);
    }

    OUTLINED_FUNCTION_234_0(a1);
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}