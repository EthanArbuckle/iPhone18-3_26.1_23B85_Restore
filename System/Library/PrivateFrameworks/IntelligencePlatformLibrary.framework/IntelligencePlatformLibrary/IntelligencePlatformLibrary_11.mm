uint64_t CacheManagerTelemetryEventMetadata.init()()
{
  OUTLINED_FUNCTION_8_4();
  v1 = sub_19393BE60();
  v2 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  v5 = *(type metadata accessor for CacheManagerTelemetryEventMetadata(0) + 20);
  v6 = OUTLINED_FUNCTION_42_13();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
  v10 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v1);
  sub_19344E6DC(v0 + v5, &qword_1EAE3AA88, &qword_19394F9C0);
  v13 = OUTLINED_FUNCTION_42_13();

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

BOOL static CacheManagerTelemetryEventMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_4();
  v4 = sub_19393BE60();
  v5 = OUTLINED_FUNCTION_0(v4);
  v56 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v53 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v12 = OUTLINED_FUNCTION_47(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  v52 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  v21 = OUTLINED_FUNCTION_4_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6();
  v26 = v24 - v25;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v51 - v29;
  v31 = *(v28 + 48);
  v54 = v2;
  sub_193448804(v2, &v51 - v29, &qword_1EAE3AA88, &qword_19394F9C0);
  v55 = a2;
  sub_193448804(a2, &v30[v31], &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_31(v30);
  if (v32)
  {
    OUTLINED_FUNCTION_31(&v30[v31]);
    if (v32)
    {
      sub_19344E6DC(v30, &qword_1EAE3AA88, &qword_19394F9C0);
      goto LABEL_11;
    }

LABEL_9:
    v33 = v30;
LABEL_20:
    sub_19344E6DC(v33, &qword_1EAE3B4E8, &unk_193952CF0);
    return 0;
  }

  sub_193448804(v30, v19, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_31(&v30[v31]);
  if (v32)
  {
    (*(v56 + 8))(v19, v4);
    goto LABEL_9;
  }

  v34 = v56;
  (*(v56 + 32))(v53, &v30[v31], v4);
  OUTLINED_FUNCTION_0_34();
  sub_193509E00(v35, v36);
  v37 = sub_19393C550();
  v38 = *(v34 + 8);
  v39 = OUTLINED_FUNCTION_13_0();
  v38(v39);
  (v38)(v19, v4);
  sub_19344E6DC(v30, &qword_1EAE3AA88, &qword_19394F9C0);
  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v40 = *(type metadata accessor for CacheManagerTelemetryEventMetadata(0) + 20);
  v41 = *(v20 + 48);
  sub_193448804(v54 + v40, v26, &qword_1EAE3AA88, &qword_19394F9C0);
  sub_193448804(v55 + v40, v26 + v41, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_31(v26);
  if (v32)
  {
    OUTLINED_FUNCTION_31(v26 + v41);
    if (v32)
    {
      sub_19344E6DC(v26, &qword_1EAE3AA88, &qword_19394F9C0);
      return 1;
    }

    goto LABEL_19;
  }

  v42 = v52;
  sub_193448804(v26, v52, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_31(v26 + v41);
  if (v43)
  {
    (*(v56 + 8))(v42, v4);
LABEL_19:
    v33 = v26;
    goto LABEL_20;
  }

  v45 = v56;
  (*(v56 + 32))(v53, v26 + v41, v4);
  OUTLINED_FUNCTION_0_34();
  sub_193509E00(v46, v47);
  v48 = sub_19393C550();
  v49 = *(v45 + 8);
  v50 = OUTLINED_FUNCTION_13_0();
  v49(v50);
  (v49)(v42, v4);
  sub_19344E6DC(v26, &qword_1EAE3AA88, &qword_19394F9C0);
  return (v48 & 1) != 0;
}

uint64_t CacheManagerTelemetryEventMetadata.hash(into:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_3_4();
  v2 = sub_19393BE60();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v12 = OUTLINED_FUNCTION_47(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v27 - v19;
  sub_193448804(v1, &v27 - v19, &qword_1EAE3AA88, &qword_19394F9C0);
  if (__swift_getEnumTagSinglePayload(v20, 1, v2) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v5 + 32))(v10, v20, v2);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_34();
    sub_193509E00(v21, v22);
    OUTLINED_FUNCTION_33();
    (*(v5 + 8))(v10, v2);
  }

  v23 = type metadata accessor for CacheManagerTelemetryEventMetadata(0);
  sub_193448804(v1 + *(v23 + 20), v17, &qword_1EAE3AA88, &qword_19394F9C0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v2) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  (*(v5 + 32))(v10, v17, v2);
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_0_34();
  sub_193509E00(v25, v26);
  OUTLINED_FUNCTION_33();
  return (*(v5 + 8))(v10, v2);
}

uint64_t sub_193509E00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CacheManagerRequestInvocation.namespace.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for CacheManagerRequestInvocation(v2);
  v4 = (v1 + *(result + 20));
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 9);
  *v0 = v5;
  *(v0 + 8) = v6;
  *(v0 + 9) = v4;
  return result;
}

uint64_t CacheManagerRequestInvocation.namespace.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = type metadata accessor for CacheManagerRequestInvocation(0);
  v6 = v1 + *(result + 20);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = v4;
  return result;
}

uint64_t CacheManagerRequestInvocation.namespace.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = *(type metadata accessor for CacheManagerRequestInvocation(v0) + 20);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t CacheManagerRequestInvocation.init()()
{
  OUTLINED_FUNCTION_8_4();
  v1 = sub_19393BE60();
  v2 = OUTLINED_FUNCTION_28_0();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  v5 = v0 + *(type metadata accessor for CacheManagerRequestInvocation(0) + 20);
  *v5 = 0;
  *(v5 + 8) = 256;
  sub_19344E6DC(v0, &qword_1EAE3AA88, &qword_19394F9C0);
  v6 = OUTLINED_FUNCTION_28_0();
  result = __swift_storeEnumTagSinglePayload(v6, v7, v8, v1);
  *v5 = 0;
  *(v5 + 8) = 256;
  return result;
}

uint64_t sub_19350A0B8@<X0>(uint64_t *a1@<X8>)
{
  result = CacheManagerRequestInvocation.CacheManagerNamespace.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19350A0E0@<X0>(char **a1@<X8>)
{
  result = static CacheManagerRequestInvocation.CacheManagerNamespace.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19350A13C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_19350A1CC()
{
  OUTLINED_FUNCTION_179_0();
  v2 = v1(v0);
  return MEMORY[0x193B18030](v2);
}

uint64_t sub_19350A240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t static CacheManagerRequestInvocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE60();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v14 = OUTLINED_FUNCTION_47(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v43 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  v20 = OUTLINED_FUNCTION_47(v19);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v43 - v24;
  v26 = *(v23 + 56);
  sub_193448804(a1, &v43 - v24, &qword_1EAE3AA88, &qword_19394F9C0);
  sub_193448804(a2, &v25[v26], &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_31(v25);
  if (!v27)
  {
    sub_193448804(v25, v18, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_31(&v25[v26]);
    if (!v27)
    {
      (*(v7 + 32))(v12, &v25[v26], v4);
      OUTLINED_FUNCTION_0_34();
      sub_193509E00(v29, v30);
      v31 = sub_19393C550();
      v32 = *(v7 + 8);
      v32(v12, v4);
      v32(v18, v4);
      sub_19344E6DC(v25, &qword_1EAE3AA88, &qword_19394F9C0);
      if ((v31 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    (*(v7 + 8))(v18, v4);
LABEL_9:
    sub_19344E6DC(v25, &qword_1EAE3B4E8, &unk_193952CF0);
    return 0;
  }

  OUTLINED_FUNCTION_31(&v25[v26]);
  if (!v27)
  {
    goto LABEL_9;
  }

  sub_19344E6DC(v25, &qword_1EAE3AA88, &qword_19394F9C0);
LABEL_13:
  v33 = *(type metadata accessor for CacheManagerRequestInvocation(0) + 20);
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 9);
  v36 = (a2 + v33);
  v37 = *(v36 + 9);
  if (v35)
  {
    if (*(v36 + 9))
    {
      return 1;
    }
  }

  else if ((*(v36 + 9) & 1) == 0)
  {
    v38 = *v34;
    v39 = *(v34 + 8);
    v40 = *v36;
    v41 = *(v36 + 8);
    v45 = v38;
    v46 = v39 & 1;
    v43 = v40;
    v44 = v41 & 1;
    v42 = CacheManagerRequestInvocation.CacheManagerNamespace.rawValue.getter();
    if (v42 == CacheManagerRequestInvocation.CacheManagerNamespace.rawValue.getter())
    {
      return 1;
    }
  }

  return 0;
}

uint64_t CacheManagerRequestInvocation.hash(into:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_3_4();
  v2 = sub_19393BE60();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v12 = OUTLINED_FUNCTION_47(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - v15;
  sub_193448804(v1, &v24 - v15, &qword_1EAE3AA88, &qword_19394F9C0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v2) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v5 + 32))(v10, v16, v2);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_0_34();
    sub_193509E00(v17, v18);
    sub_19393C540();
    (*(v5 + 8))(v10, v2);
  }

  v19 = v1 + *(type metadata accessor for CacheManagerRequestInvocation(0) + 20);
  if (*(v19 + 9) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v21 = *(v19 + 8);
  v22 = *v19;
  OUTLINED_FUNCTION_103_0();
  v24 = v22;
  v25 = v21 & 1;
  v23 = CacheManagerRequestInvocation.CacheManagerNamespace.rawValue.getter();
  return MEMORY[0x193B18030](v23);
}

uint64_t sub_19350A858(void (*a1)(_BYTE *))
{
  sub_19393CAB0();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_19350A8C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

BOOL static CacheManagerInsert.Ended.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

void CacheManagerInsert.Failed.reason.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 10);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 10) = v3;
}

uint64_t CacheManagerInsert.Failed.reason.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 10);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 10) = v3;
  return result;
}

uint64_t CacheManagerInsert.hashValue.getter()
{
  OUTLINED_FUNCTION_17_15();
  sub_19393CAB0();
  CacheManagerInsert.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19350AA7C()
{
  OUTLINED_FUNCTION_17_15();
  sub_19393CAB0();
  CacheManagerInsert.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19350AAC8@<X0>(uint64_t *a1@<X8>)
{
  result = CacheManagerSearch.CacheManagerSearchStrategy.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19350AAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static CacheManagerSearch.CacheManagerSearchStrategy.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t _s27IntelligencePlatformLibrary18CacheManagerInsertO5EndedV4hash4intoys6HasherVz_tF_0()
{
  if (*v0 != 2)
  {
    sub_19393CAD0();
  }

  return sub_19393CAD0();
}

uint64_t _s27IntelligencePlatformLibrary18CacheManagerInsertO5EndedV9hashValueSivg_0()
{
  v1 = *v0;
  sub_19393CAB0();
  if (v1 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  return sub_19393CB00();
}

uint64_t sub_19350ACA8()
{
  v1 = *v0;
  sub_19393CAB0();
  if (v1 != 2)
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  return sub_19393CB00();
}

uint64_t CacheManagerSearch.Ended.resultCount.setter(uint64_t result)
{
  *(v1 + 12) = result;
  *(v1 + 16) = BYTE4(result) & 1;
  return result;
}

uint64_t CacheManagerSearch.Ended.highestMatchScore.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t CacheManagerSearch.Ended.highestMatchScore.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t CacheManagerSearch.Ended.lowestMatchScore.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t CacheManagerSearch.Ended.lowestMatchScore.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

void CacheManagerSearch.Ended.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  *(a1 + 12) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
}

uint64_t static CacheManagerSearch.Ended.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a2 + 9);
  v9 = *(a2 + 12);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
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

    v15 = OUTLINED_FUNCTION_9_16(a1, a2);
    v16 = CacheManagerSearch.CacheManagerSearchStrategy.rawValue.getter(v15);
    if (v16 != CacheManagerSearch.CacheManagerSearchStrategy.rawValue.getter(v16))
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v9)
    {
      v17 = v10;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v11)
    {
      v18 = v12;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  if (v7)
  {
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == v13)
    {
      v20 = v14;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t CacheManagerSearch.Ended.hash(into:)()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 16);
  v3 = v0[3];
  v4 = *(v0 + 32);
  v5 = v0[5];
  v6 = *(v0 + 48);
  if (*(v0 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *(v0 + 8);
    v11 = *v0;
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_179_0();
    v13 = CacheManagerSearch.CacheManagerSearchStrategy.rawValue.getter(v12);
    MEMORY[0x193B18030](v13);
    if (!v2)
    {
LABEL_3:
      OUTLINED_FUNCTION_103_0();
      sub_19393CAE0();
      if (!v4)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_104_0();
  if (!v4)
  {
LABEL_4:
    OUTLINED_FUNCTION_103_0();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x193B18060](v7);
    if (!v6)
    {
      goto LABEL_8;
    }

    return OUTLINED_FUNCTION_104_0();
  }

LABEL_14:
  OUTLINED_FUNCTION_104_0();
  if (v6)
  {
    return OUTLINED_FUNCTION_104_0();
  }

LABEL_8:
  OUTLINED_FUNCTION_103_0();
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return MEMORY[0x193B18060](v8);
}

uint64_t CacheManagerSearch.Ended.hashValue.getter()
{
  sub_19393CAB0();
  CacheManagerSearch.Ended.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19350B070()
{
  sub_19393CAB0();
  CacheManagerSearch.Ended.hash(into:)();
  return sub_19393CB00();
}

BOOL _s27IntelligencePlatformLibrary18CacheManagerInsertO6FailedV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 10);
  if ((*(a1 + 10) & 1) == 0)
  {
    v3 = *a2;
    v4 = *(a2 + 4);
    v5 = *(a1 + 4);
    v9 = *a1;
    v10 = v5;
    v11 = 0;
    if (v2)
    {
      return 0;
    }

    v7 = v3;
    v8 = v4 & 0x1FF;
    return static CacheManagerError.== infix(_:_:)(&v9, &v7);
  }

  return (*(a2 + 10) & 1) != 0;
}

uint64_t _s27IntelligencePlatformLibrary18CacheManagerInsertO6FailedV4hash4intoys6HasherVz_tF_0()
{
  if (*(v0 + 10) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v1 = *v0;
  v2 = *(v0 + 4);
  OUTLINED_FUNCTION_103_0();
  if ((v2 & 0x100) != 0)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_179_0();
  v3 = CacheManagerError.ErrorType.rawValue.getter();
  return MEMORY[0x193B18030](v3);
}

uint64_t _s27IntelligencePlatformLibrary18CacheManagerInsertO6FailedV9hashValueSivg_0()
{
  OUTLINED_FUNCTION_40_4();
  sub_19393CAB0();
  if (v0 == 1 || (OUTLINED_FUNCTION_32_0(), (v1 & 0x100) != 0))
  {
    OUTLINED_FUNCTION_45_1();
  }

  else
  {
    OUTLINED_FUNCTION_32_0();
    v2 = OUTLINED_FUNCTION_12_18();
    MEMORY[0x193B18030](v2);
  }

  return sub_19393CB00();
}

uint64_t sub_19350B224()
{
  OUTLINED_FUNCTION_40_4();
  sub_19393CAB0();
  if (v0 == 1 || (OUTLINED_FUNCTION_32_0(), (v1 & 0x100) != 0))
  {
    OUTLINED_FUNCTION_45_1();
  }

  else
  {
    OUTLINED_FUNCTION_32_0();
    v2 = OUTLINED_FUNCTION_12_18();
    MEMORY[0x193B18030](v2);
  }

  return sub_19393CB00();
}

uint64_t CacheManagerSearch.hashValue.getter()
{
  OUTLINED_FUNCTION_18_17();
  sub_19393CAB0();
  CacheManagerSearch.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19350B2D4()
{
  OUTLINED_FUNCTION_18_17();
  sub_19393CAB0();
  CacheManagerSearch.hash(into:)();
  return sub_19393CB00();
}

uint64_t sub_19350B34C@<X0>(uint64_t *a1@<X8>)
{
  result = CacheManagerError.ErrorType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19350B374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  result = static CacheManagerError.ErrorType.allCases.getter(a1, a2, a3);
  *a4 = result;
  return result;
}

BOOL static CacheManagerError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 9);
  if ((*(a1 + 9) & 1) == 0)
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    OUTLINED_FUNCTION_9_16(a1, a2);
    v3 = CacheManagerError.ErrorType.rawValue.getter();
    return v3 == CacheManagerError.ErrorType.rawValue.getter();
  }

  return (*(a2 + 9) & 1) != 0;
}

uint64_t CacheManagerError.hash(into:)()
{
  if (*(v0 + 9) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v2 = *(v0 + 8);
  v3 = *v0;
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_179_0();
  v4 = CacheManagerError.ErrorType.rawValue.getter();
  return MEMORY[0x193B18030](v4);
}

uint64_t CacheManagerError.hashValue.getter()
{
  OUTLINED_FUNCTION_41_1();
  sub_19393CAB0();
  if (v0 == 1)
  {
    OUTLINED_FUNCTION_45_1();
  }

  else
  {
    OUTLINED_FUNCTION_32_0();
    v1 = OUTLINED_FUNCTION_12_18();
    MEMORY[0x193B18030](v1);
  }

  return sub_19393CB00();
}

uint64_t sub_19350B598()
{
  OUTLINED_FUNCTION_41_1();
  sub_19393CAB0();
  if (v0 == 1)
  {
    OUTLINED_FUNCTION_45_1();
  }

  else
  {
    OUTLINED_FUNCTION_32_0();
    v1 = OUTLINED_FUNCTION_12_18();
    MEMORY[0x193B18030](v1);
  }

  return sub_19393CB00();
}

unint64_t sub_19350B700()
{
  result = qword_1EAE3BFE0;
  if (!qword_1EAE3BFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BFE0);
  }

  return result;
}

unint64_t sub_19350B7A0()
{
  result = qword_1EAE3BFF0;
  if (!qword_1EAE3BFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BFF0);
  }

  return result;
}

unint64_t sub_19350B7F8()
{
  result = qword_1EAE3BFF8;
  if (!qword_1EAE3BFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3BFF8);
  }

  return result;
}

unint64_t sub_19350B850()
{
  result = qword_1EAE3C000;
  if (!qword_1EAE3C000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C000);
  }

  return result;
}

unint64_t sub_19350B8A8()
{
  result = qword_1EAE3C008;
  if (!qword_1EAE3C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C008);
  }

  return result;
}

unint64_t sub_19350B930()
{
  result = qword_1EAE3C020;
  if (!qword_1EAE3C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C020);
  }

  return result;
}

unint64_t sub_19350B988()
{
  result = qword_1EAE3C028;
  if (!qword_1EAE3C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C028);
  }

  return result;
}

unint64_t sub_19350B9E0()
{
  result = qword_1EAE3C030;
  if (!qword_1EAE3C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C030);
  }

  return result;
}

unint64_t sub_19350BA38()
{
  result = qword_1EAE3C038;
  if (!qword_1EAE3C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C038);
  }

  return result;
}

unint64_t sub_19350BA90()
{
  result = qword_1EAE3C040;
  if (!qword_1EAE3C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C040);
  }

  return result;
}

unint64_t sub_19350BB18()
{
  result = qword_1EAE3C058;
  if (!qword_1EAE3C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C058);
  }

  return result;
}

unint64_t sub_19350BB70()
{
  result = qword_1EAE3C060;
  if (!qword_1EAE3C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C060);
  }

  return result;
}

void sub_19350BBF0(uint64_t a1)
{
  OUTLINED_FUNCTION_35_11(a1, &qword_1ED5082C0);
  if (v1 <= 0x3F)
  {
    sub_19349D198();
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_35_11(v2, &qword_1ED5079C0);
      if (v5 <= 0x3F)
      {
        OUTLINED_FUNCTION_35_11(v4, &qword_1ED507A78);
        if (v7 <= 0x3F)
        {
          OUTLINED_FUNCTION_35_11(v6, &qword_1ED507A80);
          if (v8 <= 0x3F)
          {
            OUTLINED_FUNCTION_15_2();
            swift_cvw_initStructMetadataWithLayoutString();
            OUTLINED_FUNCTION_10_1();
          }
        }
      }
    }
  }
}

void sub_19350BD10(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_19393C860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_19350BD8C(uint64_t a1)
{
  OUTLINED_FUNCTION_13_13(a1, &qword_1ED508298);
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_15_2();
    swift_cvw_initStructMetadataWithLayoutString();
    OUTLINED_FUNCTION_10_1();
  }
}

uint64_t sub_19350BDF0()
{
  result = type metadata accessor for CacheManagerRequestInvocation(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return OUTLINED_FUNCTION_10_1();
  }

  return result;
}

void sub_19350BE88(uint64_t a1)
{
  OUTLINED_FUNCTION_13_13(a1, &qword_1ED508298);
  if (v1 <= 0x3F)
  {
    sub_19350BF04();
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_10_1();
    }
  }
}

void sub_19350BF04()
{
  if (!qword_1ED506768[0])
  {
    v0 = sub_19393C860();
    if (!v1)
    {
      atomic_store(v0, qword_1ED506768);
    }
  }
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CacheManagerInsert(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 11))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 125);
    }

    v3 = ((*(a1 + 10) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 10) >> 1) & 0x1F))) ^ 0x7F;
    if (v3 >= 0x7D)
    {
      return OUTLINED_FUNCTION_46_4(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t storeEnumTagSinglePayload for CacheManagerInsert(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 10) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_19350C028(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = a1 + 8;
  v3 = ((v2 | (*(v1 + 2) << 16)) >> 16) & 0x3F;
  return OUTLINED_FUNCTION_34_9(v1, v2);
}

uint64_t sub_19350C03C(uint64_t a1, int a2)
{
  v3 = *(a1 + 8);
  v2 = a1 + 8;
  v4 = ((v3 | (*(v2 + 2) << 16)) & 0x1FFFF | (a2 << 22)) >> 16;
  return OUTLINED_FUNCTION_34_9(v2, v3);
}

uint64_t getEnumTagSinglePayload for CacheManagerInsert.Failed(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 11))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CacheManagerInsert.Failed(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 10) = 0;
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

  *(result + 11) = v3;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for CacheManagerSearch(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for CacheManagerSearch(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
  }

  if ((a2 & 0x80000000) == 0 || !*(a1 + 49))
  {
    v2 = (HIWORD(*(a1 + 8)) >> 1) | (*(a1 + 16) >> 1 << 15);
    if (v2 > 0x80000000)
    {
      return OUTLINED_FUNCTION_46_4(~v2);
    }

    return OUTLINED_FUNCTION_46_4(-1);
  }

  return OUTLINED_FUNCTION_46_4(*a1 + 0x7FFFFFFF);
}

uint64_t storeEnumTagSinglePayload for CacheManagerSearch(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *result = 0;
      *(result + 8) = (-a2 & 0x7FFF) << 17;
      *(result + 16) = (-a2 >> 14) & 0x3FFFE;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 48) = 0;
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int8x16_t sub_19350C1EC(uint64_t a1, char a2)
{
  v2 = *(a1 + 32) & 1;
  v3 = *(a1 + 48) & 1 | (a2 << 6);
  result = vandq_s8(*(a1 + 8), xmmword_19395A310);
  *(a1 + 8) = result;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  return result;
}

uint64_t _s27IntelligencePlatformLibrary32IntelligenceFlowFeedbackLearningV21ToolCandidateCategoryVwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_4(-1);
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
      return OUTLINED_FUNCTION_46_4((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_46_4((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_46_4((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v7);
}

_BYTE *_s27IntelligencePlatformLibrary18CacheManagerInsertO5EndedVwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_19350C3BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return OUTLINED_FUNCTION_6_2(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19350C3D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
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

  *(result + 49) = v3;
  return result;
}

void sub_19350C4EC()
{
  OUTLINED_FUNCTION_62_3();
  v3 = v2;
  v5 = v4;
  v7 = *v0;
  v6 = v0[1];
  if (v2 != 0x6E69616D6F64 || v1 != 0xE600000000000000)
  {
    v9 = v1;
    v10 = *(v0 + 4);
    v11 = *(v0 + 20);
    v18 = v0[3];
    v12 = *(v0 + 32);
    OUTLINED_FUNCTION_116_4();
    if ((sub_19393CA30() & 1) == 0)
    {
      v13 = v3 == 1701080931 && v9 == 0xE400000000000000;
      if (v13 || (OUTLINED_FUNCTION_116_4(), (sub_19393CA30() & 1) != 0))
      {
        if ((v11 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (v3 != 0x646F43726F727265 || v9 != 0xE900000000000065)
        {
          OUTLINED_FUNCTION_116_4();
          if ((sub_19393CA30() & 1) == 0)
          {
            sub_19349AB64();
            OUTLINED_FUNCTION_13_9();
            v16 = v15;
            *v15 = v3;
            v15[1] = v9;
            v15[5] = &type metadata for IntelligenceFlowError;
            v17 = swift_allocObject();
            v16[2] = v17;
            *(v17 + 16) = v7;
            *(v17 + 24) = v6;
            *(v17 + 32) = v10;
            *(v17 + 36) = v11;
            *(v17 + 40) = v18;
            *(v17 + 48) = v12;
            *(v16 + 48) = 1;
            swift_willThrow();

            goto LABEL_15;
          }
        }

        if ((v12 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

LABEL_14:
      *v5 = 0u;
      v5[1] = 0u;
      goto LABEL_15;
    }
  }

  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_7:
  sub_1934948FC();
LABEL_15:
  OUTLINED_FUNCTION_54_0();
}

void sub_19350C6D0()
{
  OUTLINED_FUNCTION_184_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_77_7();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9_6();
  v13 = sub_19393BE60();
  v14 = OUTLINED_FUNCTION_0(v13);
  v28 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8_28();
  v18 = v6 == v2 && v4 == 111;
  if (v18 || (OUTLINED_FUNCTION_67() & 1) != 0)
  {
    if (*(v0 + 4) >> 8 != 0xFFFFFFFFLL)
    {
      v29 = *v0;
      v30 = v0[1];
      v31 = *(v0 + 4);
      v32 = *(v0 + 5);
      sub_193494798(&type metadata for IntelligenceFlowPlatformPnR.StateInfo, &off_1F07C57E0, v8);
      goto LABEL_9;
    }
  }

  else
  {
    if (v6 != OUTLINED_FUNCTION_17_12() || v4 != 100)
    {
      OUTLINED_FUNCTION_142();
      if ((OUTLINED_FUNCTION_67() & 1) == 0)
      {
        sub_19349AB64();
        OUTLINED_FUNCTION_13_9();
        OUTLINED_FUNCTION_106_0();
        *v26 = v6;
        v26[1] = v4;
        v27 = type metadata accessor for IntelligenceFlowPlatformPnR(0);
        OUTLINED_FUNCTION_152(v27);
        OUTLINED_FUNCTION_141();
        sub_1935159EC();
        OUTLINED_FUNCTION_48_4();
        swift_willThrow();

        goto LABEL_9;
      }
    }

    v20 = *(type metadata accessor for IntelligenceFlowPlatformPnR(0) + 20);
    sub_19344F184();
    OUTLINED_FUNCTION_6_3(v1, 1, v13);
    if (!v18)
    {
      v21 = OUTLINED_FUNCTION_76_5();
      v22(v21);
      OUTLINED_FUNCTION_93_4();
      sub_1934948FC();
      v23 = *(v28 + 8);
      v24 = OUTLINED_FUNCTION_93_4();
      v25(v24);
      goto LABEL_9;
    }

    sub_19344E6DC(v1, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  OUTLINED_FUNCTION_104();
LABEL_9:
  OUTLINED_FUNCTION_183();
}

uint64_t sub_19350CB08(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_19350CB5C()
{
  OUTLINED_FUNCTION_145_0();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_26_9();
  v8 = *v0;
  v9 = v0[1];
  v10 = v0[2];
  v26 = v0[3];
  v12 = v0[4];
  v11 = v0[5];
  v13 = v4 == v5 && v6 == 0xE700000000000000;
  if (!v13)
  {
    OUTLINED_FUNCTION_25_14();
    v0 = v14;
    v15 = sub_19393CA30();
    v7 = v0;
    if ((v15 & 1) == 0)
    {
      if (v4 != OUTLINED_FUNCTION_34_10() || v2 != 0xE500000000000000)
      {
        OUTLINED_FUNCTION_25_14();
        if ((sub_19393CA30() & 1) == 0)
        {
          OUTLINED_FUNCTION_33_9();
          if (v13 && v2 == 0xE600000000000000)
          {
            if (v12 >> 62 != 2)
            {
              goto LABEL_24;
            }
          }

          else
          {
            OUTLINED_FUNCTION_25_14();
            if ((sub_19393CA30() & 1) == 0 || (v12 & 0xC000000000000000) != 0x8000000000000000)
            {
              goto LABEL_24;
            }
          }

          OUTLINED_FUNCTION_169_1();
          v16 = &type metadata for IntelligenceFlowPlatformPnR.Failed;
          v17 = &off_1F07C57D0;
          goto LABEL_8;
        }
      }

      if (v12 >> 62 == 1)
      {
        OUTLINED_FUNCTION_169_1();
        v16 = &type metadata for IntelligenceFlowPlatformPnR.Ended;
        v17 = &off_1F07C57C0;
        goto LABEL_8;
      }

LABEL_24:
      sub_19349AB64();
      v20 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_53_6(v20, v21);
      *(v22 + 40) = &type metadata for IntelligenceFlowPlatformPnR.StateInfo;
      OUTLINED_FUNCTION_133();
      v23 = swift_allocObject();
      v0[2] = v23;
      v23[2] = v8;
      v23[3] = v9;
      v23[4] = v10;
      v23[5] = v26;
      v23[6] = v12;
      v23[7] = v11;
      OUTLINED_FUNCTION_26_0();

      v24 = OUTLINED_FUNCTION_165_1();
      sub_19350CD7C(v24, v25, v10, v26, v12);
      goto LABEL_25;
    }
  }

  if (v12 >> 62)
  {
    goto LABEL_24;
  }

  v16 = &type metadata for IntelligenceFlowPlatformPnR.Started;
  v17 = &off_1F07C57B0;
LABEL_8:
  sub_193494798(v16, v17, v7);
LABEL_25:
  OUTLINED_FUNCTION_143_0();
}

uint64_t sub_19350CD1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5 >> 62 == 2)
  {

    return sub_193456418(result, a2);
  }

  else if (a5 >> 62 == 1)
  {
    sub_193456418(result, a2);
  }

  return result;
}

uint64_t sub_19350CD7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5 >> 62 == 2)
  {

    return sub_19350CB08(result, a2);
  }

  else if (a5 >> 62 == 1)
  {
    sub_19350CB08(result, a2);
  }

  return result;
}

uint64_t sub_19350CDF4()
{
  v2 = OUTLINED_FUNCTION_106_6();
  v5 = *v0;
  if (v1 == (v2 & 0xFFFF0000FFFFFFFFLL | 0x737400000000) && v3 == 0xE600000000000000)
  {
    return sub_1934948FC();
  }

  v7 = v4;
  v8 = v3;
  if (OUTLINED_FUNCTION_156_2())
  {
    return sub_1934948FC();
  }

  sub_19349AB64();
  v10 = OUTLINED_FUNCTION_13_9();
  *v11 = v1;
  *(v11 + 8) = v8;
  *(v11 + 40) = v7;
  *(v11 + 16) = v5;
  OUTLINED_FUNCTION_23_2(v10, v11);
}

void sub_19350CED0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_101_5(v3);
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_6();
  v10 = sub_19393BE60();
  v11 = OUTLINED_FUNCTION_0(v10);
  v43 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_28();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C068, &unk_19395C2A0);
  OUTLINED_FUNCTION_47(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_5_14();
  v20 = type metadata accessor for ResponseGeneration.Event(v19);
  v21 = OUTLINED_FUNCTION_4_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_1();
  v26 = v25 - v24;
  v27 = v5 == 0x746E657665 && v1 == 0xE500000000000000;
  if (!v27 && (OUTLINED_FUNCTION_67() & 1) == 0)
  {
    if (v5 != OUTLINED_FUNCTION_17_12() || v1 != v33)
    {
      OUTLINED_FUNCTION_142();
      if ((OUTLINED_FUNCTION_67() & 1) == 0)
      {
        sub_19349AB64();
        OUTLINED_FUNCTION_13_9();
        OUTLINED_FUNCTION_114_4();
        *v41 = v5;
        v41[1] = v1;
        v42 = type metadata accessor for ResponseGeneration(0);
        OUTLINED_FUNCTION_126(v42);
        OUTLINED_FUNCTION_136_1();
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        goto LABEL_10;
      }
    }

    v35 = *(type metadata accessor for ResponseGeneration(0) + 20);
    sub_19344F184();
    OUTLINED_FUNCTION_6_3(v2, 1, v10);
    if (!v27)
    {
      v36 = OUTLINED_FUNCTION_76_5();
      v37(v36);
      OUTLINED_FUNCTION_93_4();
      sub_1934948FC();
      v38 = *(v43 + 8);
      v39 = OUTLINED_FUNCTION_93_4();
      v40(v39);
      goto LABEL_10;
    }

    v30 = &qword_1EAE3AA88;
    v31 = &qword_19394F9C0;
    v32 = v2;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_179_1();
  v28 = OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_6_3(v28, v29, v20);
  if (v27)
  {
    v30 = &qword_1EAE3C068;
    v31 = &unk_19395C2A0;
    v32 = v0;
LABEL_9:
    sub_19344E6DC(v32, v30, v31);
    OUTLINED_FUNCTION_109_5();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_13_0();
  sub_1935156A0();
  sub_193494798(v20, &off_1F07C5810, v44);
  sub_1935156F8(v26, type metadata accessor for ResponseGeneration.Event);
LABEL_10:
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_27();
}

void sub_19350D1FC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_26_10();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C070, &qword_19395AF28);
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_9_6();
  v9 = type metadata accessor for ResponseGeneration.Event.EventType(v8);
  v10 = OUTLINED_FUNCTION_14_7(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_28();
  v13 = v1 == 0x707954746E657665 && v0 == 0xE900000000000065;
  if (v13 || (OUTLINED_FUNCTION_85_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_151_3();
    OUTLINED_FUNCTION_23_4();
    if (v13)
    {
      sub_19344E6DC(v2, &qword_1EAE3C070, &qword_19395AF28);
      OUTLINED_FUNCTION_104();
    }

    else
    {
      OUTLINED_FUNCTION_38_10();
      v14 = sub_1935156A0();
      OUTLINED_FUNCTION_80_0(v14, v15, &off_1F07C5AA0);
      OUTLINED_FUNCTION_1_33();
      sub_1935156F8(v3, v16);
    }
  }

  else
  {
    sub_19349AB64();
    v17 = OUTLINED_FUNCTION_13_9();
    v19 = OUTLINED_FUNCTION_51_0(v17, v18);
    v20 = type metadata accessor for ResponseGeneration.Event(v19);
    OUTLINED_FUNCTION_152(v20);
    OUTLINED_FUNCTION_112_6();
    sub_1935159EC();
    OUTLINED_FUNCTION_48_4();
    swift_willThrow();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19350D3AC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_77_7();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C078, &qword_19395C2B0);
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_9_6();
  v10 = type metadata accessor for ResponseGeneration.Event.Generation.StateInfo(v9);
  v11 = OUTLINED_FUNCTION_14_7(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_28();
  v14 = v1 == v4 && v0 == 111;
  if (v14 || (OUTLINED_FUNCTION_98_5(), (OUTLINED_FUNCTION_85_5() & 1) != 0))
  {
    OUTLINED_FUNCTION_151_3();
    OUTLINED_FUNCTION_23_4();
    if (v14)
    {
      sub_19344E6DC(v2, &qword_1EAE3C078, &qword_19395C2B0);
      OUTLINED_FUNCTION_104();
    }

    else
    {
      OUTLINED_FUNCTION_38_10();
      v15 = sub_1935156A0();
      OUTLINED_FUNCTION_80_0(v15, v16, &off_1F07C5860);
      OUTLINED_FUNCTION_18_18();
      sub_1935156F8(v3, v17);
    }
  }

  else
  {
    sub_19349AB64();
    v18 = OUTLINED_FUNCTION_13_9();
    v20 = OUTLINED_FUNCTION_51_0(v18, v19);
    v21 = type metadata accessor for ResponseGeneration.Event.Generation(v20);
    OUTLINED_FUNCTION_152(v21);
    OUTLINED_FUNCTION_112_6();
    sub_1935159EC();
    OUTLINED_FUNCTION_48_4();
    swift_willThrow();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19350D548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = 0x676E697473697865;
  v7 = *v3;
  v8 = a1 == 0x676E697473697865 && a2 == 0xE800000000000000;
  if (v8 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v7 == 2)
    {
      *a3 = 0u;
      a3[1] = 0u;
    }

    else
    {
      return sub_1934948FC();
    }
  }

  else
  {
    sub_19349AB64();
    v10 = OUTLINED_FUNCTION_13_9();
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 40) = &type metadata for ResponseGeneration.Event.Generation.Started;
    *(v11 + 16) = v7;
    OUTLINED_FUNCTION_23_2(v10, v11);
  }

  return result;
}

void sub_19350D654()
{
  OUTLINED_FUNCTION_184_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_6();
  v12 = sub_19393BE60();
  v13 = OUTLINED_FUNCTION_0(v12);
  v43 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8_28();
  v17 = v5 == 0x4564656C646E6168 && v3 == 0xEC000000726F7272;
  if (v17 || (OUTLINED_FUNCTION_113_3(), (OUTLINED_FUNCTION_67() & 1) != 0))
  {
    if (v0[1] != 1)
    {
      v44 = *v0;
      v49 = v0[2];
      v50 = v0[3];
      v51 = v0[4] & 1;
      sub_193494798(&type metadata for IntelligenceFlowError, &off_1F07C5790, v7);
      goto LABEL_24;
    }

    goto LABEL_7;
  }

  v18 = v5 == 0x656372756F73 && v3 == 0xE600000000000000;
  if (v18 || (OUTLINED_FUNCTION_67() & 1) != 0)
  {
    if (*(v0 + 49))
    {
      goto LABEL_7;
    }

    v45 = v0[5];
    v47 = v0[6] & 1;
LABEL_23:
    sub_1934948FC();
    goto LABEL_24;
  }

  v19 = v5 == 0x6574636172616863 && v3 == 0xEE00746E756F4372;
  if (v19 || (OUTLINED_FUNCTION_67() & 1) != 0)
  {
    if (v0[7])
    {
      goto LABEL_7;
    }

    v20 = *(v0 + 13);
    goto LABEL_23;
  }

  v21 = v5 == 0x6E756F4364726F77 && v3 == 0xE900000000000074;
  if (v21 || (OUTLINED_FUNCTION_67() & 1) != 0)
  {
    if (v0[8])
    {
      goto LABEL_7;
    }

    v22 = *(v0 + 15);
    goto LABEL_23;
  }

  v23 = v5 == 0x6B6361626C6C6166 && v3 == 0xEE006E6F73616552;
  if (v23 || (OUTLINED_FUNCTION_67() & 1) != 0)
  {
    if (*(v0 + 81))
    {
      goto LABEL_7;
    }

    v46 = v0[9];
    v48 = v0[10] & 1;
    goto LABEL_23;
  }

  v24 = v5 == 0x5379616C70736964 && v3 == 0xED0000676E697274;
  if (v24 || (OUTLINED_FUNCTION_67() & 1) != 0)
  {
    if (!v0[12])
    {
      goto LABEL_7;
    }

    v25 = v0[11];
    goto LABEL_23;
  }

  v26 = v5 == 0x74536E656B6F7073 && v3 == 0xEC000000676E6972;
  if (v26 || (OUTLINED_FUNCTION_67() & 1) != 0)
  {
    if (!v0[14])
    {
      goto LABEL_7;
    }

    v27 = v0[13];
    goto LABEL_23;
  }

  v28 = v5 == 0x6449746163 && v3 == 0xE500000000000000;
  if (v28 || (OUTLINED_FUNCTION_67() & 1) != 0)
  {
    if (!v0[16])
    {
      goto LABEL_7;
    }

    v29 = v0[15];
    goto LABEL_23;
  }

  v30 = v5 == 0x6944636974617473 && v3 == 0xEE006449676F6C61;
  if (!v30 && (OUTLINED_FUNCTION_67() & 1) == 0)
  {
    OUTLINED_FUNCTION_168();
    if (v5 != v33 || v32 != v3)
    {
      OUTLINED_FUNCTION_49_1();
      if ((OUTLINED_FUNCTION_67() & 1) == 0)
      {
        sub_19349AB64();
        OUTLINED_FUNCTION_13_9();
        OUTLINED_FUNCTION_100_6();
        *v41 = v5;
        v41[1] = v3;
        v42 = type metadata accessor for ResponseGeneration.Event.Generation.Ended(0);
        OUTLINED_FUNCTION_126(v42);
        OUTLINED_FUNCTION_141();
        sub_1935159EC();
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        goto LABEL_24;
      }
    }

    v35 = *(type metadata accessor for ResponseGeneration.Event.Generation.Ended(0) + 52);
    sub_19344F184();
    OUTLINED_FUNCTION_6_3(v1, 1, v12);
    if (!v17)
    {
      v36 = OUTLINED_FUNCTION_76_5();
      v37(v36);
      OUTLINED_FUNCTION_93_4();
      sub_1934948FC();
      v38 = *(v43 + 8);
      v39 = OUTLINED_FUNCTION_93_4();
      v40(v39);
      goto LABEL_24;
    }

    sub_19344E6DC(v1, &qword_1EAE3AA88, &qword_19394F9C0);
    goto LABEL_7;
  }

  if (v0[18])
  {
    v31 = v0[17];
    goto LABEL_23;
  }

LABEL_7:
  OUTLINED_FUNCTION_104();
LABEL_24:
  OUTLINED_FUNCTION_160_3();
  OUTLINED_FUNCTION_183();
}

void sub_19350DB6C()
{
  OUTLINED_FUNCTION_26();
  v7 = OUTLINED_FUNCTION_46_6(v6);
  v8 = type metadata accessor for ResponseGeneration.Event.Generation.Ended(v7);
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = OUTLINED_FUNCTION_14_5();
  v13 = type metadata accessor for ResponseGeneration.Event.Generation.StateInfo(v12);
  v14 = OUTLINED_FUNCTION_4_1(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_16_16();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_49_5();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_61_4();
  v19 = v3 == v2 && v1 == 0xE700000000000000;
  if (v19 || (OUTLINED_FUNCTION_19_20() & 1) != 0)
  {
    OUTLINED_FUNCTION_6_24();
    OUTLINED_FUNCTION_145_1();
    sub_1935159EC();
    v20 = OUTLINED_FUNCTION_180_1();
    if (!v20)
    {
      v38 = *v0;
      OUTLINED_FUNCTION_155_1(v20, &type metadata for ResponseGeneration.Event.Generation.Started, &off_1F07C5830);
      goto LABEL_17;
    }

    sub_19349AB64();
    v21 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_56_3(v21, v22);
    OUTLINED_FUNCTION_6_24();
    sub_1935159EC();
    OUTLINED_FUNCTION_48_4();
    swift_willThrow();

    OUTLINED_FUNCTION_18_18();
    v24 = v0;
  }

  else
  {
    v25 = v3 == OUTLINED_FUNCTION_34_10() && v1 == 0xE500000000000000;
    if (v25 || (OUTLINED_FUNCTION_19_20() & 1) != 0)
    {
      OUTLINED_FUNCTION_6_24();
      OUTLINED_FUNCTION_120_1();
      sub_1935159EC();
      OUTLINED_FUNCTION_93_4();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_119_0();
        v26 = sub_1935156A0();
        OUTLINED_FUNCTION_154_3(v26, v27, &off_1F07C5840);
        OUTLINED_FUNCTION_178_1();
        goto LABEL_17;
      }

      sub_19349AB64();
      v28 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_32_13(v28, v29);
      OUTLINED_FUNCTION_6_24();
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      OUTLINED_FUNCTION_18_18();
      v24 = v5;
    }

    else
    {
      v30 = v3 == OUTLINED_FUNCTION_35_12() && v1 == 0xE600000000000000;
      if (!v30 && (OUTLINED_FUNCTION_19_20() & 1) == 0)
      {
        sub_19349AB64();
        v36 = OUTLINED_FUNCTION_13_9();
        OUTLINED_FUNCTION_32_13(v36, v37);
        OUTLINED_FUNCTION_6_24();
        sub_1935159EC();
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        goto LABEL_17;
      }

      OUTLINED_FUNCTION_6_24();
      OUTLINED_FUNCTION_120_1();
      sub_1935159EC();
      OUTLINED_FUNCTION_121_0();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_60_7();
        OUTLINED_FUNCTION_155_1(v31, &type metadata for ResponseGeneration.Event.Generation.Failed, &off_1F07C5850);
        v32 = OUTLINED_FUNCTION_50_6();
        sub_193456418(v32, v33);
        goto LABEL_17;
      }

      sub_19349AB64();
      v34 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_32_13(v34, v35);
      OUTLINED_FUNCTION_6_24();
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      OUTLINED_FUNCTION_18_18();
      v24 = v4;
    }
  }

  sub_1935156F8(v24, v23);
LABEL_17:
  OUTLINED_FUNCTION_164_1();
  OUTLINED_FUNCTION_27();
}

void sub_19350DEA8()
{
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_15_26();
  v2 = v2 && v0 == v1;
  if (v2 || (OUTLINED_FUNCTION_54_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_162_2();
    if (!v2 & v3)
    {
      OUTLINED_FUNCTION_171_0();
    }

    else
    {
      OUTLINED_FUNCTION_65_7();
      OUTLINED_FUNCTION_182_2(v4, &type metadata for ResponseGeneration.Event.RequestValidation.StateInfo, &off_1F07C58B0);
    }
  }

  else
  {
    sub_19349AB64();
    v5 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_108_8(v5, v6);
    *(v7 + 40) = &type metadata for ResponseGeneration.Event.RequestValidation;
    OUTLINED_FUNCTION_79_6();
    v8 = swift_allocObject();
    OUTLINED_FUNCTION_48_6(v8);

    v9 = OUTLINED_FUNCTION_27_12();
    sub_19345D634(v9, v10, v11, v12, v13);
  }

  OUTLINED_FUNCTION_143_0();
}

void sub_19350E16C()
{
  OUTLINED_FUNCTION_28_8();
  memcpy(__dst, v2, sizeof(__dst));
  v4 = v3 == 0x666E496574617473 && v0 == 0xE90000000000006FLL;
  if (v4 || (OUTLINED_FUNCTION_98_5(), (OUTLINED_FUNCTION_85_5() & 1) != 0))
  {
    if (__dst[4] >> 8 == 0xFFFFFFFFLL && __dst[6] < 0x200uLL)
    {
      OUTLINED_FUNCTION_104();
    }

    else
    {
      v5 = v2[1];
      v8[0] = *v2;
      v8[1] = v5;
      v9 = __dst[4];
      v10 = __dst[5];
      v11 = __dst[6];
      v12 = *(v2 + 56);
      sub_193494798(&type metadata for ResponseGeneration.Event.Override.StateInfo, &off_1F07C5900, v1);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_106_0();
    *v6 = v3;
    v6[1] = v0;
    v6[5] = &type metadata for ResponseGeneration.Event.Override;
    OUTLINED_FUNCTION_127_3();
    v7 = swift_allocObject();
    v1[2] = v7;
    memcpy((v7 + 16), __dst, 0x48uLL);
    OUTLINED_FUNCTION_48_4();
    swift_willThrow();

    sub_19350E350(__dst, v8);
  }
}

uint64_t sub_19350E2C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  switch(a7 >> 62)
  {
    case 1uLL:
      sub_193456418(result, a2);
      goto LABEL_6;
    case 2uLL:

      result = sub_193456418(result, a2);
      break;
    case 3uLL:
      return result;
    default:
LABEL_6:

      break;
  }

  return result;
}

uint64_t sub_19350E3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  result = memcpy(__dst, v4, sizeof(__dst));
  if (a1 != 0x4564656C646E6168 || a2 != 0xEC000000726F7272)
  {
    OUTLINED_FUNCTION_29_12();
    result = sub_19393CA30();
    if ((result & 1) == 0)
    {
      v10 = a1 == 1701869940 && a2 == 0xE400000000000000;
      if (v10 || (OUTLINED_FUNCTION_130(), result = sub_19393CA30(), (result & 1) != 0))
      {
        if ((__dst[6] & 0x100) != 0)
        {
          goto LABEL_7;
        }

        OUTLINED_FUNCTION_33_4();
      }

      else
      {
        if (a1 != 25705 || a2 != 0xE200000000000000)
        {
          OUTLINED_FUNCTION_130();
          result = sub_19393CA30();
          if ((result & 1) == 0)
          {
            sub_19349AB64();
            OUTLINED_FUNCTION_13_9();
            OUTLINED_FUNCTION_32_3();
            *v12 = a1;
            v12[1] = a2;
            v12[5] = &type metadata for ResponseGeneration.Event.Override.Ended;
            OUTLINED_FUNCTION_127_3();
            v13 = swift_allocObject();
            a3[2] = v13;
            memcpy((v13 + 16), __dst, 0x48uLL);
            OUTLINED_FUNCTION_26_0();

            return sub_19350E5E4(__dst, &v14);
          }
        }

        if (!__dst[8])
        {
          goto LABEL_7;
        }

        v14 = __dst[7];
        v15 = __dst[8];
      }

      return sub_1934948FC();
    }
  }

  if (__dst[1] == 1)
  {
LABEL_7:
    *a3 = 0u;
    *(a3 + 1) = 0u;
    return result;
  }

  v14 = __dst[0];
  v15 = __dst[1];
  v16 = __dst[2];
  v17 = BYTE4(__dst[2]) & 1;
  v18 = __dst[3];
  v19 = __dst[4] & 1;
  return sub_193494798(&type metadata for IntelligenceFlowError, &off_1F07C5790, a3);
}

id sub_19350E680()
{
  OUTLINED_FUNCTION_115_5();
  v3 = v2;
  memcpy(__dst, v4, 0x48uLL);
  v5 = v1 == 0x64657472617473 && v0 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_19_20() & 1) != 0)
  {
    if (!(*&__dst[3] >> 62))
    {
      v13 = __dst[0];
      v6 = &type metadata for ResponseGeneration.Event.Override.Started;
      v7 = &off_1F07C58D0;
      return sub_193494798(v6, v7, v3);
    }
  }

  else
  {
    v9 = v1 == OUTLINED_FUNCTION_34_10() && v0 == 0xE500000000000000;
    if (v9 || (OUTLINED_FUNCTION_19_20() & 1) != 0)
    {
      if (*&__dst[3] >> 62 == 1)
      {
        v13 = __dst[0];
        v14 = __dst[1];
        v15 = __dst[2];
        v16 = *&__dst[3] & 0x3FFFFFFFFFFFFFFFLL;
        v17 = *(&__dst[3] + 8);
        v6 = &type metadata for ResponseGeneration.Event.Override.Ended;
        v7 = &off_1F07C58E0;
        return sub_193494798(v6, v7, v3);
      }
    }

    else
    {
      v10 = v1 == OUTLINED_FUNCTION_35_12() && v0 == 0xE600000000000000;
      if (v10 || (OUTLINED_FUNCTION_19_20()) && *&__dst[3] >> 62 == 2)
      {
        v13 = __dst[0];
        v14 = __dst[1];
        LOBYTE(v15) = __dst[2];
        v6 = &type metadata for ResponseGeneration.Event.Override.Failed;
        v7 = &off_1F07C58F0;
        return sub_193494798(v6, v7, v3);
      }
    }
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_106_0();
  *v11 = v1;
  v11[1] = v0;
  v11[5] = &type metadata for ResponseGeneration.Event.Override.StateInfo;
  OUTLINED_FUNCTION_127_3();
  v12 = swift_allocObject();
  v3[2] = v12;
  memcpy((v12 + 16), __dst, 0x48uLL);
  OUTLINED_FUNCTION_48_4();
  swift_willThrow();

  return sub_19350E860(__dst, &v13);
}

void sub_19350E8D4()
{
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_15_26();
  v2 = v2 && v0 == v1;
  if (v2 || (OUTLINED_FUNCTION_54_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_162_2();
    if (!v2 & v3)
    {
      OUTLINED_FUNCTION_171_0();
    }

    else
    {
      OUTLINED_FUNCTION_65_7();
      OUTLINED_FUNCTION_182_2(v4, &type metadata for ResponseGeneration.Event.ResponseCatalog.StateInfo, &off_1F07C5950);
    }
  }

  else
  {
    sub_19349AB64();
    v5 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_108_8(v5, v6);
    *(v7 + 40) = &type metadata for ResponseGeneration.Event.ResponseCatalog;
    OUTLINED_FUNCTION_79_6();
    v8 = swift_allocObject();
    OUTLINED_FUNCTION_48_6(v8);

    v9 = OUTLINED_FUNCTION_27_12();
    sub_19345D634(v9, v10, v11, v12, v13);
  }

  OUTLINED_FUNCTION_143_0();
}

uint64_t objectdestroy_17Tm()
{
  if (HIBYTE(*(v0 + 48)) <= 0xFEu)
  {
    v1 = OUTLINED_FUNCTION_107_4();
    sub_19350F244(v1, v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_79_6();

  return MEMORY[0x1EEE6BDD0](v7, v8, v9);
}

uint64_t objectdestroy_26Tm()
{
  v1 = OUTLINED_FUNCTION_107_4();
  sub_19350F244(v1, v2, v3, v4, *(v0 + 48), *(v0 + 49));
  OUTLINED_FUNCTION_79_6();

  return MEMORY[0x1EEE6BDD0](v5, v6, v7);
}

void sub_19350EC18()
{
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_15_26();
  v2 = v2 && v0 == v1;
  if (v2 || (OUTLINED_FUNCTION_54_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_162_2();
    if (!v2 & v3)
    {
      OUTLINED_FUNCTION_171_0();
    }

    else
    {
      OUTLINED_FUNCTION_65_7();
      OUTLINED_FUNCTION_182_2(v4, &type metadata for ResponseGeneration.Event.ModelInference.StateInfo, &off_1F07C59A0);
    }
  }

  else
  {
    sub_19349AB64();
    v5 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_108_8(v5, v6);
    *(v7 + 40) = &type metadata for ResponseGeneration.Event.ModelInference;
    OUTLINED_FUNCTION_79_6();
    v8 = swift_allocObject();
    OUTLINED_FUNCTION_48_6(v8);

    v9 = OUTLINED_FUNCTION_27_12();
    sub_19350ED50(v9, v10, v11, v12, v13);
  }

  OUTLINED_FUNCTION_143_0();
}

uint64_t sub_19350ECD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 2 || a6 == 1)
  {

    return sub_193456418(result, a2);
  }

  else if (!a6)
  {
  }

  return result;
}

uint64_t sub_19350ED50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE1(a5) != 255)
  {
    return sub_19350ED64(result, a2, a3, a4, a5, SBYTE1(a5));
  }

  return result;
}

uint64_t sub_19350ED64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 2 || a6 == 1)
  {

    return sub_19350CB08(result, a2);
  }

  else if (!a6)
  {
  }

  return result;
}

void sub_19350EDFC()
{
  OUTLINED_FUNCTION_62_3();
  v2 = v1;
  v4 = v3;
  v6 = *v0;
  v5 = v0[1];
  if (v3 != 0x7265566C65646F6DLL || v1 != 0xEC0000006E6F6973)
  {
    v9 = v0[2];
    v8 = v0[3];
    if ((OUTLINED_FUNCTION_134_3() & 1) == 0)
    {
      v11 = v4 == (OUTLINED_FUNCTION_105_6() & 0xFFFFFFFFFFFFLL | 0x6556000000000000) && v2 == v10;
      if (!v11 && (OUTLINED_FUNCTION_134_3() & 1) == 0)
      {
        sub_19349AB64();
        OUTLINED_FUNCTION_13_9();
        v13 = v12;
        *v12 = v4;
        v12[1] = v2;
        v12[5] = &type metadata for ResponseGeneration.Event.ModelInference.Started;
        v14 = swift_allocObject();
        v13[2] = v14;
        v14[2] = v6;
        v14[3] = v5;
        v14[4] = v9;
        v14[5] = v8;
        OUTLINED_FUNCTION_48_4();
        swift_willThrow();

        goto LABEL_15;
      }

      if (v8)
      {
        goto LABEL_7;
      }

LABEL_14:
      OUTLINED_FUNCTION_35();
      goto LABEL_15;
    }
  }

  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_7:
  sub_1934948FC();
LABEL_15:
  OUTLINED_FUNCTION_54_0();
}

uint64_t objectdestroy_113Tm()
{
  v1 = OUTLINED_FUNCTION_107_4();
  v2 = *(v0 + 49);
  v3 = *(v0 + 48);
  v4(v1);
  OUTLINED_FUNCTION_79_6();

  return MEMORY[0x1EEE6BDD0](v5, v6, v7);
}

void sub_19350F18C()
{
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_15_26();
  v2 = v2 && v0 == v1;
  if (v2 || (OUTLINED_FUNCTION_54_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_162_2();
    if (!v2 & v3)
    {
      OUTLINED_FUNCTION_171_0();
    }

    else
    {
      OUTLINED_FUNCTION_65_7();
      OUTLINED_FUNCTION_182_2(v4, &type metadata for ResponseGeneration.Event.HallucinationDetection.StateInfo, &off_1F07C59F0);
    }
  }

  else
  {
    sub_19349AB64();
    v5 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_108_8(v5, v6);
    *(v7 + 40) = &type metadata for ResponseGeneration.Event.HallucinationDetection;
    OUTLINED_FUNCTION_79_6();
    v8 = swift_allocObject();
    OUTLINED_FUNCTION_48_6(v8);

    v9 = OUTLINED_FUNCTION_27_12();
    sub_19345D634(v9, v10, v11, v12, v13);
  }

  OUTLINED_FUNCTION_143_0();
}

uint64_t sub_19350F244(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 2 || a6 == 1)
  {
    return sub_193456418(result, a2);
  }

  if (!a6)
  {
  }

  return result;
}

uint64_t sub_19350F26C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 2 || a6 == 1)
  {
    return sub_19350CB08(result, a2);
  }

  if (!a6)
  {
  }

  return result;
}

uint64_t sub_19350F2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  result = 0x7265567465737361;
  v10 = *v4;
  v9 = v4[1];
  v11 = a1 == 0x7265567465737361 && a2 == 0xEC0000006E6F6973;
  if (v11 || (result = OUTLINED_FUNCTION_134_3(), (result & 1) != 0))
  {
    if (v9)
    {
      return sub_1934948FC();
    }

    else
    {
      *a4 = 0u;
      a4[1] = 0u;
    }
  }

  else
  {
    sub_19349AB64();
    v13 = OUTLINED_FUNCTION_13_9();
    *v14 = a1;
    v14[1] = a2;
    v14[5] = a3;
    v14[2] = v10;
    v14[3] = v9;
    OUTLINED_FUNCTION_23_2(v13, v14);
  }

  return result;
}

void sub_19350F7D8()
{
  OUTLINED_FUNCTION_184_0();
  v32 = v3;
  v33 = v2;
  v34 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_177_2();
  v16 = OUTLINED_FUNCTION_0(v15);
  v31 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5_1();
  v20 = v8 == 0x666E496574617473 && v6 == 0xE90000000000006FLL;
  if (v20 || (OUTLINED_FUNCTION_98_5(), (OUTLINED_FUNCTION_117_2() & 1) != 0))
  {
    if (HIBYTE(*(v0 + 16)) <= 0xFEu)
    {
      v35 = *v0;
      v36 = v0[1];
      sub_193494798(v33, v34, v10);
      goto LABEL_9;
    }
  }

  else
  {
    v21 = v8 == 0x64496563617274 && v6 == 0xE700000000000000;
    if (!v21 && (OUTLINED_FUNCTION_117_2() & 1) == 0)
    {
      sub_19349AB64();
      OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_100_6();
      *v29 = v8;
      v29[1] = v6;
      v30 = v32(0);
      OUTLINED_FUNCTION_126(v30);
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      goto LABEL_9;
    }

    v22 = *(v32(0) + 20);
    sub_19344F184();
    OUTLINED_FUNCTION_24_13(v1);
    if (!v20)
    {
      v23 = *(v31 + 32);
      v24 = OUTLINED_FUNCTION_82_5();
      v25(v24);
      OUTLINED_FUNCTION_165_1();
      sub_1934948FC();
      v26 = *(v31 + 8);
      v27 = OUTLINED_FUNCTION_165_1();
      v28(v27);
      goto LABEL_9;
    }

    sub_19344E6DC(v1, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  OUTLINED_FUNCTION_104();
LABEL_9:
  OUTLINED_FUNCTION_160_3();
  OUTLINED_FUNCTION_183();
}

uint64_t sub_19350FA94()
{
  v2 = OUTLINED_FUNCTION_106_6();
  v5 = *v0;
  if (v1 == (v2 | 0x676E697400000000) && v3 == 0xE800000000000000)
  {
    return sub_1934948FC();
  }

  v7 = v4;
  v8 = v3;
  if (OUTLINED_FUNCTION_156_2())
  {
    return sub_1934948FC();
  }

  sub_19349AB64();
  v10 = OUTLINED_FUNCTION_13_9();
  *v11 = v1;
  *(v11 + 8) = v8;
  *(v11 + 40) = v7;
  *(v11 + 16) = v5;
  OUTLINED_FUNCTION_23_2(v10, v11);
}

void sub_19350FB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = OUTLINED_FUNCTION_86_5();
  v11 = *(v3 + 16);
  v10 = *(v3 + 24);
  v12 = *(v3 + 32);
  v13 = v6 == v8 && v5 == v9;
  if (v13 || (OUTLINED_FUNCTION_134_3() & 1) != 0)
  {
    if (v4 == 1)
    {
      *v7 = 0u;
      v7[1] = 0u;
    }

    else
    {
      OUTLINED_FUNCTION_118_3();
      OUTLINED_FUNCTION_174_1(v14, &type metadata for IntelligenceFlowError, &off_1F07C5790, v15, v16, v17, v18, v19, a3, v35);
      sub_193494798(v20, v21, v22);
    }
  }

  else
  {
    sub_19349AB64();
    v23 = OUTLINED_FUNCTION_13_9();
    v31 = OUTLINED_FUNCTION_123_3(v23, v24, v25, v26, v27, v28, v29, v30, a3);
    OUTLINED_FUNCTION_128_2(v31);

    v32 = OUTLINED_FUNCTION_27_12();
    sub_19350CB08(v32, v33);
  }

  OUTLINED_FUNCTION_143_0();
}

void sub_19350FE20()
{
  OUTLINED_FUNCTION_26();
  v122 = v2;
  v123 = v0;
  v4 = v3;
  v6 = v5;
  v116 = type metadata accessor for ResponseGeneration.Event.GMSCall(0);
  v7 = OUTLINED_FUNCTION_4_1(v116);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v115 = v11 - v10;
  v118 = type metadata accessor for ResponseGeneration.Event.CacheManagerCall(0);
  v12 = OUTLINED_FUNCTION_4_1(v118);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v117 = v16 - v15;
  v17 = type metadata accessor for ResponseGeneration.Event.Generation(0);
  v18 = OUTLINED_FUNCTION_4_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_1();
  v23 = v22 - v21;
  v124 = type metadata accessor for ResponseGeneration.Event.EventType(0);
  v24 = *(*(v124 - 8) + 64);
  MEMORY[0x1EEE9AC00](0x69746172656E6567);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_20_3();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_20_3();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_20_3();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v114 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v114 - v32;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_49_5();
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v114 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v114 - v39;
  v41 = v6 == v38 && v4 == 0xEA00000000006E6FLL;
  if (v41 || (OUTLINED_FUNCTION_84_4() & 1) != 0)
  {
    OUTLINED_FUNCTION_0_35();
    OUTLINED_FUNCTION_145_1();
    sub_1935159EC();
    v42 = v124;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_19349AB64();
      v43 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_62_10(v43, v44);
      *(v45 + 40) = v42;
      __swift_allocate_boxed_opaque_existential_1Tm((v45 + 16));
      OUTLINED_FUNCTION_0_35();
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      OUTLINED_FUNCTION_1_33();
      v47 = v40;
    }

    else
    {
      sub_1935156A0();
      sub_193494798(v17, &off_1F07C5820, v122);
      v46 = type metadata accessor for ResponseGeneration.Event.Generation;
      v47 = v23;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_38();
  v49 = v6 == 0xD000000000000011 && v48 == v4;
  if (v49 || (OUTLINED_FUNCTION_84_4() & 1) != 0)
  {
    OUTLINED_FUNCTION_0_35();
    OUTLINED_FUNCTION_120_1();
    sub_1935159EC();
    v50 = v124;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v52 = *v37;
      v53 = *(v37 + 1);
      v54 = *(v37 + 2);
      v55 = *(v37 + 3);
      v56 = *(v37 + 16);
      v126[0] = v52;
      v126[1] = v53;
      v126[2] = v54;
      v126[3] = v55;
      LOWORD(v126[4]) = v56;
      OUTLINED_FUNCTION_181_2(EnumCaseMultiPayload, &type metadata for ResponseGeneration.Event.RequestValidation, &off_1F07C5870);
      v57 = v52;
      v58 = v53;
      v59 = v54;
      v60 = v55;
      v61 = v56;
LABEL_17:
      sub_19345D748(v57, v58, v59, v60, v61);
      goto LABEL_18;
    }

    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    v63 = v62;
    *v62 = v6;
    v62[1] = v4;
    v62[5] = v50;
    __swift_allocate_boxed_opaque_existential_1Tm(v62 + 2);
    OUTLINED_FUNCTION_0_35();
    sub_1935159EC();
    *(v63 + 48) = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_1_33();
    v47 = v37;
    goto LABEL_9;
  }

  v64 = v6 == 0x656469727265766FLL && v4 == 0xE800000000000000;
  if (v64 || (OUTLINED_FUNCTION_84_4() & 1) != 0)
  {
    OUTLINED_FUNCTION_0_35();
    OUTLINED_FUNCTION_82_5();
    sub_1935159EC();
    v65 = v124;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      memcpy(v126, v1, 0x48uLL);
      memcpy(v125, v1, sizeof(v125));
      sub_193494798(&type metadata for ResponseGeneration.Event.Override, &off_1F07C58C0, v122);
      sub_193510818(v126);
      goto LABEL_18;
    }

    sub_19349AB64();
    v66 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_62_10(v66, v67);
    *(v68 + 40) = v65;
    __swift_allocate_boxed_opaque_existential_1Tm((v68 + 16));
    OUTLINED_FUNCTION_0_35();
    sub_1935159EC();
    OUTLINED_FUNCTION_15_24();
    swift_willThrow();

    OUTLINED_FUNCTION_1_33();
    v47 = v1;
    goto LABEL_9;
  }

  v69 = v6 == 0x65736E6F70736572 && v4 == 0xEF676F6C61746143;
  if (!v69 && (OUTLINED_FUNCTION_84_4() & 1) == 0)
  {
    v80 = v6 == (OUTLINED_FUNCTION_52_9() & 0xFFFFFFFFFFFFLL | 0x666E000000000000) && v4 == v79;
    v81 = v124;
    if (v80 || (OUTLINED_FUNCTION_84_4() & 1) != 0)
    {
      OUTLINED_FUNCTION_0_35();
      OUTLINED_FUNCTION_166();
      sub_1935159EC();
      v82 = swift_getEnumCaseMultiPayload();
      if (v82 == 4)
      {
        v83 = *v30;
        v84 = *(v30 + 1);
        v85 = *(v30 + 2);
        v86 = *(v30 + 3);
        v87 = *(v30 + 16);
        v126[0] = v83;
        v126[1] = v84;
        v126[2] = v85;
        v126[3] = v86;
        LOWORD(v126[4]) = v87;
        OUTLINED_FUNCTION_181_2(v82, &type metadata for ResponseGeneration.Event.ModelInference, &off_1F07C5960);
        v88 = OUTLINED_FUNCTION_13_0();
        sub_193510804(v88, v89, v85, v86, v87);
        goto LABEL_18;
      }

      sub_19349AB64();
      OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_114_4();
      *v90 = v6;
      v90[1] = v4;
      v90[5] = v81;
      __swift_allocate_boxed_opaque_existential_1Tm(v90 + 2);
      OUTLINED_FUNCTION_0_35();
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      OUTLINED_FUNCTION_1_33();
      v47 = v30;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_38();
    v92 = v6 == 0xD000000000000016 && v91 == v4;
    if (v92 || (OUTLINED_FUNCTION_84_4() & 1) != 0)
    {
      OUTLINED_FUNCTION_0_35();
      v93 = v121;
      sub_1935159EC();
      v94 = swift_getEnumCaseMultiPayload();
      if (v94 == 5)
      {
        v95 = *v93;
        v96 = *(v93 + 8);
        v97 = *(v93 + 16);
        v98 = *(v93 + 24);
        v99 = *(v93 + 32);
        v126[0] = v95;
        v126[1] = v96;
        v126[2] = v97;
        v126[3] = v98;
        LOWORD(v126[4]) = v99;
        OUTLINED_FUNCTION_181_2(v94, &type metadata for ResponseGeneration.Event.HallucinationDetection, &off_1F07C59B0);
        v57 = v95;
        v58 = v96;
        v59 = v97;
        v60 = v98;
        v61 = v99;
        goto LABEL_17;
      }

      goto LABEL_59;
    }

    OUTLINED_FUNCTION_38();
    v101 = v6 == 0xD000000000000010 && v100 == v4;
    if (v101 || (OUTLINED_FUNCTION_84_4() & 1) != 0)
    {
      OUTLINED_FUNCTION_0_35();
      v93 = v120;
      sub_1935159EC();
      if (swift_getEnumCaseMultiPayload() != 6)
      {
LABEL_59:
        sub_19349AB64();
        v104 = OUTLINED_FUNCTION_13_9();
        OUTLINED_FUNCTION_62_10(v104, v105);
        *(v106 + 40) = v81;
        __swift_allocate_boxed_opaque_existential_1Tm((v106 + 16));
        OUTLINED_FUNCTION_0_35();
        sub_1935159EC();
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        OUTLINED_FUNCTION_1_33();
        v47 = v93;
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_141();
      v102 = v117;
      sub_1935156A0();
      sub_193494798(v118, &off_1F07C5A00, v122);
      v103 = type metadata accessor for ResponseGeneration.Event.CacheManagerCall;
    }

    else
    {
      v107 = v6 == 0x6C6C6143736D67 && v4 == 0xE700000000000000;
      if (!v107 && (OUTLINED_FUNCTION_84_4() & 1) == 0)
      {
        sub_19349AB64();
        v111 = OUTLINED_FUNCTION_13_9();
        OUTLINED_FUNCTION_62_10(v111, v112);
        *(v113 + 40) = v81;
        __swift_allocate_boxed_opaque_existential_1Tm((v113 + 16));
        OUTLINED_FUNCTION_0_35();
        sub_1935159EC();
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        goto LABEL_18;
      }

      OUTLINED_FUNCTION_0_35();
      sub_1935159EC();
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        sub_19349AB64();
        v108 = OUTLINED_FUNCTION_13_9();
        OUTLINED_FUNCTION_62_10(v108, v109);
        *(v110 + 40) = v124;
        __swift_allocate_boxed_opaque_existential_1Tm((v110 + 16));
        OUTLINED_FUNCTION_0_35();
        sub_1935159EC();
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        OUTLINED_FUNCTION_1_33();
        v47 = v119;
        goto LABEL_9;
      }

      v102 = v115;
      sub_1935156A0();
      sub_193494798(v116, &off_1F07C5A50, v122);
      v103 = type metadata accessor for ResponseGeneration.Event.GMSCall;
    }

    v46 = v103;
    v47 = v102;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_35();
  OUTLINED_FUNCTION_165_1();
  sub_1935159EC();
  v70 = v124;
  v71 = swift_getEnumCaseMultiPayload();
  if (v71 == 3)
  {
    v72 = *(v33 + 1);
    v73 = *(v33 + 2);
    v74 = *(v33 + 3);
    v75 = *(v33 + 16);
    v126[0] = *v33;
    v126[1] = v72;
    v126[2] = v73;
    v126[3] = v74;
    LOWORD(v126[4]) = v75;
    OUTLINED_FUNCTION_181_2(v71, &type metadata for ResponseGeneration.Event.ResponseCatalog, &off_1F07C5910);
    v57 = OUTLINED_FUNCTION_50_6();
    goto LABEL_17;
  }

  sub_19349AB64();
  v76 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_62_10(v76, v77);
  *(v78 + 40) = v70;
  __swift_allocate_boxed_opaque_existential_1Tm((v78 + 16));
  OUTLINED_FUNCTION_0_35();
  sub_1935159EC();
  OUTLINED_FUNCTION_15_24();
  swift_willThrow();

  OUTLINED_FUNCTION_1_33();
  v47 = v33;
LABEL_9:
  sub_1935156F8(v47, v46);
LABEL_18:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193510804(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE1(a5) != 255)
  {
    return sub_19350ECD0(result, a2, a3, a4, a5, SBYTE1(a5));
  }

  return result;
}

void sub_193510884()
{
  OUTLINED_FUNCTION_26();
  v66 = v1;
  v67 = v0;
  v3 = v2;
  v5 = v4;
  v65 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  v8 = OUTLINED_FUNCTION_47(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v62 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62 - v14;
  v16 = sub_19393BE60();
  v17 = OUTLINED_FUNCTION_0(v16);
  v63 = v18;
  v64 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_61_4();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C080, &unk_19395C2E0);
  OUTLINED_FUNCTION_47(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v62 - v29;
  v31 = type metadata accessor for PlanGeneration.StateInfo(0);
  v32 = OUTLINED_FUNCTION_4_1(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_1();
  v37 = v36 - v35;
  v38 = v5 == 0x666E496574617473 && v3 == 0xE90000000000006FLL;
  if (!v38 && (OUTLINED_FUNCTION_124_3() & 1) == 0)
  {
    OUTLINED_FUNCTION_173_2();
    v44 = v38 && v3 == 0xE500000000000000;
    if (v44 || (OUTLINED_FUNCTION_124_3() & 1) != 0)
    {
      if ((~*(v67 + *(type metadata accessor for PlanGeneration(0) + 20)) & 0xF000000000000007) != 0)
      {
        sub_193494798(&type metadata for PlanGeneration.Event, &off_1F07C5B00, v65);
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v46 = v5 == OUTLINED_FUNCTION_17_12() && v3 == v45;
    if (v46 || (OUTLINED_FUNCTION_142(), (OUTLINED_FUNCTION_124_3() & 1) != 0))
    {
      v47 = *(type metadata accessor for PlanGeneration(0) + 24);
      sub_19344F184();
      OUTLINED_FUNCTION_6_3(v15, 1, v64);
      if (!v38)
      {
        v48 = v63;
        v49 = *(v63 + 32);
        v50 = OUTLINED_FUNCTION_113_3();
        v51(v50);
        OUTLINED_FUNCTION_13_0();
        sub_1934948FC();
        v52 = *(v48 + 8);
        v53 = OUTLINED_FUNCTION_13_0();
        v54(v53);
        goto LABEL_11;
      }

      v39 = &qword_1EAE3AA88;
      v40 = &qword_19394F9C0;
      v41 = v15;
    }

    else
    {
      v55 = v5 == 0x6E6576456E616C70 && v3 == 0xEB00000000644974;
      if (!v55 && (OUTLINED_FUNCTION_124_3() & 1) == 0)
      {
        sub_19349AB64();
        OUTLINED_FUNCTION_13_9();
        OUTLINED_FUNCTION_114_4();
        *v60 = v5;
        v60[1] = v3;
        v61 = type metadata accessor for PlanGeneration(0);
        OUTLINED_FUNCTION_126(v61);
        sub_1935159EC();
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        goto LABEL_11;
      }

      v56 = *(type metadata accessor for PlanGeneration(0) + 28);
      v57 = v62;
      sub_19344F184();
      v58 = v64;
      OUTLINED_FUNCTION_6_3(v57, 1, v64);
      if (!v38)
      {
        v59 = v63;
        (*(v63 + 32))(v23, v57, v58);
        sub_1934948FC();
        (*(v59 + 8))(v23, v58);
        goto LABEL_11;
      }

      v39 = &qword_1EAE3AA88;
      v40 = &qword_19394F9C0;
      v41 = v57;
    }

LABEL_9:
    sub_19344E6DC(v41, v39, v40);
LABEL_10:
    v42 = v65;
    *v65 = 0u;
    *(v42 + 1) = 0u;
    goto LABEL_11;
  }

  sub_19344F184();
  OUTLINED_FUNCTION_6_3(v30, 1, v31);
  if (v38)
  {
    v39 = &qword_1EAE3C080;
    v40 = &unk_19395C2E0;
    v41 = v30;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_112_6();
  sub_1935156A0();
  sub_193494798(v31, &off_1F07C5AF0, v65);
  OUTLINED_FUNCTION_20_12();
  sub_1935156F8(v37, v43);
LABEL_11:
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_27();
}

void sub_193510E04()
{
  OUTLINED_FUNCTION_26();
  v7 = OUTLINED_FUNCTION_46_6(v6);
  v8 = type metadata accessor for PlanGeneration.Ended(v7);
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = OUTLINED_FUNCTION_14_5();
  v13 = type metadata accessor for PlanGeneration.StateInfo(v12);
  v14 = OUTLINED_FUNCTION_4_1(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_16_16();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_49_5();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_61_4();
  v19 = v3 == v2 && v1 == 0xE700000000000000;
  if (v19 || (OUTLINED_FUNCTION_19_20() & 1) != 0)
  {
    OUTLINED_FUNCTION_5_29();
    OUTLINED_FUNCTION_145_1();
    sub_1935159EC();
    v20 = OUTLINED_FUNCTION_180_1();
    if (!v20)
    {
      v38 = *v0;
      v39 = v0[1];
      OUTLINED_FUNCTION_155_1(v20, &type metadata for PlanGeneration.Started, &off_1F07C5AC0);

      goto LABEL_17;
    }

    sub_19349AB64();
    v21 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_56_3(v21, v22);
    OUTLINED_FUNCTION_5_29();
    sub_1935159EC();
    OUTLINED_FUNCTION_48_4();
    swift_willThrow();

    OUTLINED_FUNCTION_20_12();
    v24 = v0;
  }

  else
  {
    v25 = v3 == OUTLINED_FUNCTION_34_10() && v1 == 0xE500000000000000;
    if (v25 || (OUTLINED_FUNCTION_19_20() & 1) != 0)
    {
      OUTLINED_FUNCTION_5_29();
      OUTLINED_FUNCTION_120_1();
      sub_1935159EC();
      OUTLINED_FUNCTION_93_4();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_119_0();
        v26 = sub_1935156A0();
        OUTLINED_FUNCTION_154_3(v26, v27, &off_1F07C5AD0);
        OUTLINED_FUNCTION_178_1();
        goto LABEL_17;
      }

      sub_19349AB64();
      v28 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_32_13(v28, v29);
      OUTLINED_FUNCTION_5_29();
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      OUTLINED_FUNCTION_20_12();
      v24 = v5;
    }

    else
    {
      v30 = v3 == OUTLINED_FUNCTION_35_12() && v1 == 0xE600000000000000;
      if (!v30 && (OUTLINED_FUNCTION_19_20() & 1) == 0)
      {
        sub_19349AB64();
        v36 = OUTLINED_FUNCTION_13_9();
        OUTLINED_FUNCTION_32_13(v36, v37);
        OUTLINED_FUNCTION_5_29();
        sub_1935159EC();
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        goto LABEL_17;
      }

      OUTLINED_FUNCTION_5_29();
      OUTLINED_FUNCTION_120_1();
      sub_1935159EC();
      OUTLINED_FUNCTION_121_0();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_60_7();
        OUTLINED_FUNCTION_155_1(v31, &type metadata for PlanGeneration.Failed, &off_1F07C5AE0);
        v32 = OUTLINED_FUNCTION_50_6();
        sub_193456418(v32, v33);
        goto LABEL_17;
      }

      sub_19349AB64();
      v34 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_32_13(v34, v35);
      OUTLINED_FUNCTION_5_29();
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      OUTLINED_FUNCTION_20_12();
      v24 = v4;
    }
  }

  sub_1935156F8(v24, v23);
LABEL_17:
  OUTLINED_FUNCTION_164_1();
  OUTLINED_FUNCTION_27();
}

void sub_193511148()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_172_0();
  v3 = v2;
  v18 = v4;
  v5 = type metadata accessor for PlanGeneration.Event.PlanCreation(0);
  v6 = OUTLINED_FUNCTION_4_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_1();
  v11 = v10 - v9;
  v12 = *v0;
  if (v3 != 0x616572436E616C70 || v1 != 0xEC0000006E6F6974)
  {
    OUTLINED_FUNCTION_130();
    if ((sub_19393CA30() & 1) == 0)
    {
      v15 = v3 == (OUTLINED_FUNCTION_52_9() & 0xFFFFFFFFFFFFLL | 0x666E000000000000) && v1 == v14;
      if (v15 || (OUTLINED_FUNCTION_130(), (sub_19393CA30() & 1) != 0))
      {
        if (v12 < 0)
        {
          v19 = *((v12 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
          v20 = *((v12 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
          v21 = *((v12 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
          v22 = *((v12 & 0x7FFFFFFFFFFFFFFFLL) + 0x40);
          sub_193494798(&type metadata for PlanGeneration.Event.ModelInference, &off_1F07C5B60, v18);
          goto LABEL_16;
        }
      }

      goto LABEL_14;
    }
  }

  if (v12 < 0)
  {
LABEL_14:
    sub_19349AB64();
    v16 = OUTLINED_FUNCTION_13_9();
    *v17 = v3;
    v17[1] = v1;
    v17[5] = &type metadata for PlanGeneration.Event;
    v17[2] = v12;
    OUTLINED_FUNCTION_23_2(v16, v17);

    goto LABEL_16;
  }

  swift_projectBox();
  OUTLINED_FUNCTION_88_5();
  sub_1935159EC();
  sub_193494798(v5, &off_1F07C5B10, v18);
  sub_1935156F8(v11, type metadata accessor for PlanGeneration.Event.PlanCreation);
LABEL_16:
  OUTLINED_FUNCTION_183();
}

void sub_193511320()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_77_7();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C088, &qword_19395AF30);
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_9_6();
  v10 = type metadata accessor for PlanGeneration.Event.PlanCreation.StateInfo(v9);
  v11 = OUTLINED_FUNCTION_14_7(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_28();
  v14 = v1 == v4 && v0 == 111;
  if (v14 || (OUTLINED_FUNCTION_98_5(), (OUTLINED_FUNCTION_85_5() & 1) != 0))
  {
    OUTLINED_FUNCTION_151_3();
    OUTLINED_FUNCTION_23_4();
    if (v14)
    {
      sub_19344E6DC(v2, &qword_1EAE3C088, &qword_19395AF30);
      OUTLINED_FUNCTION_104();
    }

    else
    {
      OUTLINED_FUNCTION_38_10();
      v15 = sub_1935156A0();
      OUTLINED_FUNCTION_80_0(v15, v16, &off_1F07C5B50);
      OUTLINED_FUNCTION_19_22();
      sub_1935156F8(v3, v17);
    }
  }

  else
  {
    sub_19349AB64();
    v18 = OUTLINED_FUNCTION_13_9();
    v20 = OUTLINED_FUNCTION_51_0(v18, v19);
    v21 = type metadata accessor for PlanGeneration.Event.PlanCreation(v20);
    OUTLINED_FUNCTION_152(v21);
    OUTLINED_FUNCTION_88_5();
    sub_1935159EC();
    OUTLINED_FUNCTION_48_4();
    swift_willThrow();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1935114B0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = OUTLINED_FUNCTION_105_6();
  v9 = *v2;
  v8 = v2[1];
  v10 = a1 == result && v6 == 0xE600000000000000;
  if (v10 || (v11 = v7, v12 = v6, result = OUTLINED_FUNCTION_134_3(), (result & 1) != 0))
  {
    if (v8)
    {
      return sub_1934948FC();
    }

    else
    {
      *a2 = 0u;
      a2[1] = 0u;
    }
  }

  else
  {
    sub_19349AB64();
    v13 = OUTLINED_FUNCTION_13_9();
    *v14 = a1;
    v14[1] = v12;
    v14[5] = v11;
    v14[2] = v9;
    v14[3] = v8;
    OUTLINED_FUNCTION_23_2(v13, v14);
  }

  return result;
}

void sub_1935115B4()
{
  OUTLINED_FUNCTION_184_0();
  v32 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_177_2();
  v12 = OUTLINED_FUNCTION_0(v11);
  v31 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v18 = v17 - v16;
  v19 = v6 == 0x526572756C696166 && v4 == 0xED00006E6F736165;
  if (v19 || (OUTLINED_FUNCTION_117_2() & 1) != 0)
  {
    if (*(v0 + 9))
    {
      goto LABEL_7;
    }

    v33 = *v0;
    v35 = v0[1] & 1;
LABEL_16:
    sub_1934948FC();
    goto LABEL_17;
  }

  v21 = v6 == (OUTLINED_FUNCTION_105_6() & 0xFFFFFFFFFFFFLL | 0x6552000000000000) && v4 == v20;
  if (!v21 && (OUTLINED_FUNCTION_117_2() & 1) == 0)
  {
    OUTLINED_FUNCTION_168();
    if (v6 != v23 || v22 != v4)
    {
      OUTLINED_FUNCTION_49_1();
      if ((OUTLINED_FUNCTION_117_2() & 1) == 0)
      {
        sub_19349AB64();
        OUTLINED_FUNCTION_13_9();
        OUTLINED_FUNCTION_100_6();
        *v29 = v6;
        v29[1] = v4;
        v30 = v32(0);
        OUTLINED_FUNCTION_126(v30);
        sub_1935159EC();
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        goto LABEL_17;
      }
    }

    v25 = *(v32(0) + 24);
    sub_19344F184();
    OUTLINED_FUNCTION_24_13(v1);
    if (!v19)
    {
      v26 = *(v31 + 32);
      v27 = OUTLINED_FUNCTION_170_0();
      v28(v27);
      sub_1934948FC();
      (*(v31 + 8))(v18, v11);
      goto LABEL_17;
    }

    sub_19344E6DC(v1, &qword_1EAE3AA88, &qword_19394F9C0);
    goto LABEL_7;
  }

  if (v0[3])
  {
    v34 = v0[2];
    goto LABEL_16;
  }

LABEL_7:
  OUTLINED_FUNCTION_104();
LABEL_17:
  OUTLINED_FUNCTION_160_3();
  OUTLINED_FUNCTION_183();
}

void sub_1935118B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = OUTLINED_FUNCTION_111_1();
  v11 = *v4;
  v10 = v4[1];
  v13 = v4[2];
  v12 = v4[3];
  v14 = *(v4 + 32);
  v15 = a1 == v8 && a2 == v9;
  if (v15 || (OUTLINED_FUNCTION_134_3() & 1) != 0)
  {
    if (v10 == 1)
    {
      *a4 = 0u;
      a4[1] = 0u;
    }

    else
    {
      OUTLINED_FUNCTION_118_3();
      OUTLINED_FUNCTION_174_1(v16, &type metadata for IntelligenceFlowError, &off_1F07C5790, v17, v18, v19, v20, v21, a3, v37);
      sub_193494798(v22, v23, v24);
    }
  }

  else
  {
    sub_19349AB64();
    v25 = OUTLINED_FUNCTION_13_9();
    v33 = OUTLINED_FUNCTION_123_3(v25, v26, v27, v28, v29, v30, v31, v32, a3);
    OUTLINED_FUNCTION_128_2(v33);

    v34 = OUTLINED_FUNCTION_27_12();
    sub_19350CB08(v34, v35);
  }

  OUTLINED_FUNCTION_143_0();
}

void sub_1935119B8()
{
  OUTLINED_FUNCTION_26();
  v7 = OUTLINED_FUNCTION_46_6(v6);
  v8 = type metadata accessor for PlanGeneration.Event.PlanCreation.Ended(v7);
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = OUTLINED_FUNCTION_14_5();
  v13 = type metadata accessor for PlanGeneration.Event.PlanCreation.StateInfo(v12);
  v14 = OUTLINED_FUNCTION_4_1(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_16_16();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_49_5();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_61_4();
  v19 = v3 == v2 && v1 == 0xE700000000000000;
  if (v19 || (OUTLINED_FUNCTION_19_20() & 1) != 0)
  {
    OUTLINED_FUNCTION_3_31();
    OUTLINED_FUNCTION_145_1();
    sub_1935159EC();
    v20 = OUTLINED_FUNCTION_180_1();
    if (!v20)
    {
      v38 = *v0;
      v39 = v0[1];
      OUTLINED_FUNCTION_155_1(v20, &type metadata for PlanGeneration.Event.PlanCreation.Started, &off_1F07C5B20);

      goto LABEL_17;
    }

    sub_19349AB64();
    v21 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_56_3(v21, v22);
    OUTLINED_FUNCTION_3_31();
    sub_1935159EC();
    OUTLINED_FUNCTION_48_4();
    swift_willThrow();

    OUTLINED_FUNCTION_19_22();
    v24 = v0;
  }

  else
  {
    v25 = v3 == OUTLINED_FUNCTION_34_10() && v1 == 0xE500000000000000;
    if (v25 || (OUTLINED_FUNCTION_19_20() & 1) != 0)
    {
      OUTLINED_FUNCTION_3_31();
      OUTLINED_FUNCTION_120_1();
      sub_1935159EC();
      OUTLINED_FUNCTION_93_4();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_119_0();
        v26 = sub_1935156A0();
        OUTLINED_FUNCTION_154_3(v26, v27, &off_1F07C5B30);
        OUTLINED_FUNCTION_178_1();
        goto LABEL_17;
      }

      sub_19349AB64();
      v28 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_32_13(v28, v29);
      OUTLINED_FUNCTION_3_31();
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      OUTLINED_FUNCTION_19_22();
      v24 = v5;
    }

    else
    {
      v30 = v3 == OUTLINED_FUNCTION_35_12() && v1 == 0xE600000000000000;
      if (!v30 && (OUTLINED_FUNCTION_19_20() & 1) == 0)
      {
        sub_19349AB64();
        v36 = OUTLINED_FUNCTION_13_9();
        OUTLINED_FUNCTION_32_13(v36, v37);
        OUTLINED_FUNCTION_3_31();
        sub_1935159EC();
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        goto LABEL_17;
      }

      OUTLINED_FUNCTION_3_31();
      OUTLINED_FUNCTION_120_1();
      sub_1935159EC();
      OUTLINED_FUNCTION_121_0();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_60_7();
        OUTLINED_FUNCTION_155_1(v31, &type metadata for PlanGeneration.Event.PlanCreation.Failed, &off_1F07C5B40);
        v32 = OUTLINED_FUNCTION_50_6();
        sub_193456418(v32, v33);
        goto LABEL_17;
      }

      sub_19349AB64();
      v34 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_32_13(v34, v35);
      OUTLINED_FUNCTION_3_31();
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      OUTLINED_FUNCTION_19_22();
      v24 = v4;
    }
  }

  sub_1935156F8(v24, v23);
LABEL_17:
  OUTLINED_FUNCTION_164_1();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193511CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = 0x666E496574617473;
  v6 = *v3;
  v7 = v3[1];
  v9 = v3[2];
  v8 = v3[3];
  v11 = v3[4];
  v10 = v3[5];
  v12 = a1 == 0x666E496574617473 && a2 == 0xE90000000000006FLL;
  v13 = *(v3 + 24);
  if (v12)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_98_5();
  v32 = v13;
  v15 = v7;
  v16 = v9;
  v17 = v8;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  result = sub_19393CA30();
  a3 = v25;
  v26 = v23;
  v13 = v32;
  if (result)
  {
LABEL_6:
    if (v13 >> 9 <= 0x7E)
    {
      return sub_193494798(&type metadata for PlanGeneration.Event.ModelInference.StateInfo, &off_1F07C5BA0, a3);
    }

    else
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {
    v27 = a2;
    v28 = v26;
    v31 = v26;
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_32_3();
    *v29 = a1;
    v29[1] = v27;
    v29[5] = &type metadata for PlanGeneration.Event.ModelInference;
    OUTLINED_FUNCTION_150_3();
    v30 = swift_allocObject();
    *(v21 + 16) = v30;
    *(v30 + 16) = v28;
    *(v30 + 24) = v15;
    *(v30 + 32) = v16;
    *(v30 + 40) = v17;
    *(v30 + 48) = v19;
    *(v30 + 56) = v21;
    *(v30 + 64) = v32;
    OUTLINED_FUNCTION_26_0();

    return sub_193511ED8(v31, v15, v16, v17, v19, v21, v32);
  }

  return result;
}

uint64_t sub_193511EB4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int16 a7)
{
  v7 = a7 >> 14;
  if (v7 == 2)
  {
    return sub_193456418(result, a2);
  }

  if (v7 == 1)
  {
  }

  return result;
}

uint64_t sub_193511ED8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int16 a7)
{
  if ((a7 >> 9) <= 0x7Eu)
  {
    return sub_193511EEC(result, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_193511EEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int16 a7)
{
  v7 = a7 >> 14;
  if (v7 == 2)
  {
    return sub_19350CB08(result, a2);
  }

  if (v7 == 1)
  {
  }

  return result;
}

uint64_t sub_193511F28()
{
  OUTLINED_FUNCTION_91_0();
  sub_19349AB64();
  v2 = OUTLINED_FUNCTION_13_9();
  *v3 = v1;
  v3[1] = v0;
  v3[5] = &type metadata for PlanGeneration.Event.ModelInference.Started;
  OUTLINED_FUNCTION_23_2(v2, v3);
}

void sub_193511FA0()
{
  OUTLINED_FUNCTION_172_0();
  v3 = v2;
  v4 = v0[1];
  v13 = *v0;
  v14 = v4;
  v15 = v0[2];
  v5 = v2 == 0x526572756C696166 && v1 == 0xED00006E6F736165;
  if (v5 || (OUTLINED_FUNCTION_130(), (sub_19393CA30() & 1) != 0))
  {
    if (BYTE9(v13))
    {
LABEL_7:
      OUTLINED_FUNCTION_35();
      return;
    }

    goto LABEL_8;
  }

  v7 = v3 == (OUTLINED_FUNCTION_52_9() & 0xFFFFFFFFFFFFLL | 0x746E000000000000) && v1 == v6;
  if (v7 || (OUTLINED_FUNCTION_130(), (sub_19393CA30() & 1) != 0))
  {
    if (BYTE9(v14))
    {
      goto LABEL_7;
    }

LABEL_8:
    OUTLINED_FUNCTION_33_4();
LABEL_9:
    sub_1934948FC();
    return;
  }

  v8 = v3 == 0x6564496C65646F6DLL && v1 == 0xEF7265696669746ELL;
  if (v8 || (OUTLINED_FUNCTION_130(), (sub_19393CA30() & 1) != 0))
  {
    if (!*(&v15 + 1))
    {
      goto LABEL_7;
    }

    v12[0] = v15;
    goto LABEL_9;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_32_3();
  *v9 = v3;
  v9[1] = v1;
  v9[5] = &type metadata for PlanGeneration.Event.ModelInference.Ended;
  OUTLINED_FUNCTION_133();
  v10 = swift_allocObject();
  *(v0 + 2) = v10;
  v11 = v15;
  v10[2] = v14;
  v10[3] = v11;
  v10[1] = v13;
  OUTLINED_FUNCTION_26_0();

  sub_19351216C(&v13, v12);
}

void sub_1935121E0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  OUTLINED_FUNCTION_111_1();
  OUTLINED_FUNCTION_102_3();
  v23 = *(v3 + 48);
  v9 = a1 == v8 && a2 == v7;
  if (v9 || (OUTLINED_FUNCTION_124_3() & 1) != 0)
  {
    if (*(&v20 + 1) == 1)
    {
LABEL_7:
      OUTLINED_FUNCTION_104();
      return;
    }

    v15 = v20;
    v16 = v21;
    v17 = BYTE4(v21) & 1;
    v18 = *(&v21 + 1);
    v19 = v22 & 1;
    sub_193494798(&type metadata for IntelligenceFlowError, &off_1F07C5790, a3);
  }

  else
  {
    v11 = a1 == (OUTLINED_FUNCTION_52_9() & 0xFFFFFFFFFFFFLL | 0x746E000000000000) && a2 == v10;
    if (v11 || (OUTLINED_FUNCTION_124_3() & 1) != 0)
    {
      if ((v23 & 0x100) != 0)
      {
        goto LABEL_7;
      }

      *&v15 = *(&v22 + 1);
      BYTE8(v15) = v23 & 1;
      sub_1934948FC();
    }

    else
    {
      sub_19349AB64();
      OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_32_3();
      *v12 = a1;
      v12[1] = a2;
      v12[5] = &type metadata for PlanGeneration.Event.ModelInference.Failed;
      OUTLINED_FUNCTION_150_3();
      v13 = swift_allocObject();
      *(v3 + 16) = v13;
      *(v13 + 64) = v23;
      v14 = v22;
      *(v13 + 32) = v21;
      *(v13 + 48) = v14;
      *(v13 + 16) = v20;
      OUTLINED_FUNCTION_26_0();

      sub_1935123C0(&v20, &v15);
    }
  }
}

uint64_t objectdestroy_5Tm(uint64_t a1)
{
  if (*(v1 + 24) != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

id sub_193512434(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_26_9();
  v9 = *v2;
  v8 = *(v2 + 8);
  v11 = *(v2 + 16);
  v10 = *(v2 + 24);
  v12 = *(v2 + 32);
  v28 = *(v2 + 40);
  v13 = a1 == v5 && v6 == 0xE700000000000000;
  v14 = *(v2 + 48);
  if (v13 || (OUTLINED_FUNCTION_138_2(), v16 = v15, v17 = sub_19393CA30(), v7 = v16, (v17 & 1) != 0))
  {
    if ((v14 & 0xC000) == 0)
    {
      return sub_193494798(&type metadata for PlanGeneration.Event.ModelInference.Started, &off_1F07C5B70, v7);
    }

    goto LABEL_24;
  }

  v20 = a1 == OUTLINED_FUNCTION_34_10() && a2 == 0xE500000000000000;
  if (v20 || (OUTLINED_FUNCTION_138_2(), v21 = sub_19393CA30(), v19 = v16, (v21 & 1) != 0))
  {
    if ((v14 & 0xC000) == 0x4000)
    {
      v22 = &type metadata for PlanGeneration.Event.ModelInference.Ended;
      v23 = &off_1F07C5B80;
      return sub_193494798(v22, v23, v19);
    }
  }

  else
  {
    if (a1 != OUTLINED_FUNCTION_35_12() || a2 != 0xE600000000000000)
    {
      OUTLINED_FUNCTION_138_2();
      if ((sub_19393CA30() & 1) == 0)
      {
        goto LABEL_24;
      }

      v19 = v16;
    }

    if ((v14 & 0xC000) == 0x8000)
    {
      v22 = &type metadata for PlanGeneration.Event.ModelInference.Failed;
      v23 = &off_1F07C5B90;
      return sub_193494798(v22, v23, v19);
    }
  }

LABEL_24:
  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  v26 = v25;
  *v25 = a1;
  v25[1] = a2;
  v25[5] = &type metadata for PlanGeneration.Event.ModelInference.StateInfo;
  OUTLINED_FUNCTION_150_3();
  v27 = swift_allocObject();
  v26[2] = v27;
  *(v27 + 16) = v9;
  *(v27 + 24) = v8;
  *(v27 + 32) = v11;
  *(v27 + 40) = v10;
  *(v27 + 48) = v12;
  *(v27 + 56) = v28;
  *(v27 + 64) = v14;
  *(v26 + 48) = 1;
  swift_willThrow();

  return sub_193511EEC(v9, v8, v11, v10, v12, v28, v14);
}

void sub_19351268C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_101_5(v4);
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C090, &qword_19395AF38);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_8();
  v12 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event(v11);
  v13 = OUTLINED_FUNCTION_14_7(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8_28();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C098, &unk_19395C300);
  OUTLINED_FUNCTION_47(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_5_14();
  v21 = type metadata accessor for IntelligenceFlowFeedbackLearning.Metadata(v20);
  v22 = OUTLINED_FUNCTION_4_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_129_2();
  v25 = v6 == 0x617461646174656DLL && v1 == 0xE800000000000000;
  if (v25 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    OUTLINED_FUNCTION_179_1();
    v26 = OUTLINED_FUNCTION_131_0();
    OUTLINED_FUNCTION_6_3(v26, v27, v21);
    if (!v25)
    {
      OUTLINED_FUNCTION_113_3();
      sub_1935156A0();
      OUTLINED_FUNCTION_143_1();
      sub_193494798(v21, v31, v32);
      v33 = type metadata accessor for IntelligenceFlowFeedbackLearning.Metadata;
      v34 = v3;
LABEL_10:
      sub_1935156F8(v34, v33);
      goto LABEL_11;
    }

    v28 = &qword_1EAE3C098;
    v29 = &unk_19395C300;
    v30 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_173_2();
    v35 = v25 && v1 == 0xE500000000000000;
    if (!v35 && (OUTLINED_FUNCTION_0_18() & 1) == 0)
    {
      sub_19349AB64();
      v37 = OUTLINED_FUNCTION_13_9();
      v39 = OUTLINED_FUNCTION_103_4(v37, v38);
      v40 = type metadata accessor for IntelligenceFlowFeedbackLearning(v39);
      OUTLINED_FUNCTION_126(v40);
      OUTLINED_FUNCTION_136_1();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      goto LABEL_11;
    }

    v36 = type metadata accessor for IntelligenceFlowFeedbackLearning(0);
    OUTLINED_FUNCTION_153_3(*(v36 + 20));
    OUTLINED_FUNCTION_24_13(v2);
    if (!v25)
    {
      OUTLINED_FUNCTION_170_0();
      sub_1935156A0();
      OUTLINED_FUNCTION_125_2(&off_1F07C5BC0, v41);
      v34 = OUTLINED_FUNCTION_68_4();
      goto LABEL_10;
    }

    v28 = &qword_1EAE3C090;
    v29 = &qword_19395AF38;
    v30 = v2;
  }

  sub_19344E6DC(v30, v28, v29);
  OUTLINED_FUNCTION_109_5();
LABEL_11:
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_27();
}

void sub_193512970()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_26_10();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0A0, &unk_19395C310);
  OUTLINED_FUNCTION_47(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_9_6();
  v9 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.EventValue(v8);
  v10 = OUTLINED_FUNCTION_14_7(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_28();
  v13 = v1 == 0x6C6156746E657665 && v0 == 0xEA00000000006575;
  if (v13 || (OUTLINED_FUNCTION_85_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_151_3();
    OUTLINED_FUNCTION_23_4();
    if (v13)
    {
      sub_19344E6DC(v2, &qword_1EAE3C0A0, &unk_19395C310);
      OUTLINED_FUNCTION_104();
    }

    else
    {
      OUTLINED_FUNCTION_38_10();
      v14 = sub_1935156A0();
      OUTLINED_FUNCTION_80_0(v14, v15, &off_1F07C5C60);
      OUTLINED_FUNCTION_39_10();
      sub_1935156F8(v3, v16);
    }
  }

  else
  {
    sub_19349AB64();
    v17 = OUTLINED_FUNCTION_13_9();
    v19 = OUTLINED_FUNCTION_51_0(v17, v18);
    v20 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event(v19);
    OUTLINED_FUNCTION_152(v20);
    OUTLINED_FUNCTION_112_6();
    sub_1935159EC();
    OUTLINED_FUNCTION_48_4();
    swift_willThrow();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193512B20()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_101_5(v7);
  OUTLINED_FUNCTION_146_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v12 = type metadata accessor for AIML.UUID();
  v13 = OUTLINED_FUNCTION_14_7(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8_28();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0A8, &qword_19395AF40);
  OUTLINED_FUNCTION_47(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_5_14();
  v21 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.StateInfo(v20);
  v22 = OUTLINED_FUNCTION_144_2(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_99_6();
  v26 = v26 && v3 == v25;
  if (v26 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    OUTLINED_FUNCTION_179_1();
    v27 = OUTLINED_FUNCTION_131_0();
    OUTLINED_FUNCTION_6_3(v27, v28, v2);
    if (!v26)
    {
      OUTLINED_FUNCTION_113_3();
      sub_1935156A0();
      OUTLINED_FUNCTION_143_1();
      sub_193494798(v2, v32, v33);
      OUTLINED_FUNCTION_17_16();
      v35 = v6;
LABEL_10:
      sub_1935156F8(v35, v34);
      goto LABEL_11;
    }

    v29 = &qword_1EAE3C0A8;
    v30 = &qword_19395AF40;
    v31 = v0;
  }

  else
  {
    if (v5 != OUTLINED_FUNCTION_17_12() || v3 != v1)
    {
      OUTLINED_FUNCTION_142();
      if ((OUTLINED_FUNCTION_0_18() & 1) == 0)
      {
        sub_19349AB64();
        v38 = OUTLINED_FUNCTION_13_9();
        v40 = OUTLINED_FUNCTION_103_4(v38, v39);
        v41 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation(v40);
        OUTLINED_FUNCTION_126(v41);
        OUTLINED_FUNCTION_136_1();
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        goto LABEL_11;
      }
    }

    v37 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation(0);
    OUTLINED_FUNCTION_153_3(*(v37 + 20));
    OUTLINED_FUNCTION_24_13(v4);
    if (!v26)
    {
      OUTLINED_FUNCTION_4_24();
      OUTLINED_FUNCTION_170_0();
      sub_1935156A0();
      OUTLINED_FUNCTION_125_2(&off_1F07C3F90, v42);
      v35 = OUTLINED_FUNCTION_2_31();
      goto LABEL_10;
    }

    v29 = &qword_1EAE3BCA0;
    v30 = &unk_19395C320;
    v31 = v4;
  }

  sub_19344E6DC(v31, v29, v30);
  OUTLINED_FUNCTION_109_5();
LABEL_11:
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_27();
}

void sub_193512DD4()
{
  OUTLINED_FUNCTION_184_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_6();
  v12 = type metadata accessor for AIML.UUID();
  v13 = OUTLINED_FUNCTION_14_7(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8_28();
  v16 = v5 == 0x6F69737365536669 && v3 == 0xEB0000000064496ELL;
  if (!v16)
  {
    OUTLINED_FUNCTION_113_3();
    if ((OUTLINED_FUNCTION_59_0() & 1) == 0)
    {
      OUTLINED_FUNCTION_38();
      v22 = v5 == 0xD000000000000011 && v21 == v3;
      if (v22 || (OUTLINED_FUNCTION_49_1(), (OUTLINED_FUNCTION_59_0() & 1) != 0))
      {
        v23 = (v0 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(0) + 20));
        if (v23[1])
        {
          goto LABEL_9;
        }

        v34 = *v23;
      }

      else
      {
        v24 = v5 == 0x6C6176456B736174 && v3 == 0xEE006E6F69746175;
        if (v24 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
        {
          v25 = (v0 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(0) + 24));
          if (v25[6])
          {
            v26 = v25[1];
            v35 = *v25;
            v37 = *(v25 + 1);
            v38 = v25[4];
            v39 = v25[5];
            sub_193494798(&type metadata for IntelligenceFlowFeedbackLearning.TaskEvaluation, &off_1F07C5C80, v7);
            goto LABEL_25;
          }

          goto LABEL_9;
        }

        OUTLINED_FUNCTION_38();
        v28 = v5 == 0xD000000000000014 && v27 == v3;
        if (v28 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
        {
          v36 = *(v0 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(0) + 28));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0B0, &qword_19395AF48);
        }

        else
        {
          v30 = v5 == (OUTLINED_FUNCTION_139_4() & 0xFFFFFFFFFFFFLL | 0x6974000000000000) && v3 == v29;
          if (!v30 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
          {
            sub_19349AB64();
            OUTLINED_FUNCTION_13_9();
            OUTLINED_FUNCTION_100_6();
            *v32 = v5;
            v32[1] = v3;
            v33 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(0);
            OUTLINED_FUNCTION_126(v33);
            OUTLINED_FUNCTION_141();
            sub_1935159EC();
            OUTLINED_FUNCTION_15_24();
            swift_willThrow();

            goto LABEL_25;
          }

          v31 = v0 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(0) + 32);
          if (*(v31 + 9))
          {
            goto LABEL_9;
          }

          OUTLINED_FUNCTION_149_4(v31);
        }
      }

      sub_1934948FC();
      goto LABEL_25;
    }
  }

  sub_19344F184();
  OUTLINED_FUNCTION_23_4();
  if (v16)
  {
    sub_19344E6DC(v1, &qword_1EAE3BCA0, &unk_19395C320);
LABEL_9:
    OUTLINED_FUNCTION_104();
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_4_24();
  OUTLINED_FUNCTION_82_5();
  v17 = sub_1935156A0();
  OUTLINED_FUNCTION_80_0(v17, v18, &off_1F07C3F90);
  v19 = OUTLINED_FUNCTION_2_31();
  sub_1935156F8(v19, v20);
LABEL_25:
  OUTLINED_FUNCTION_160_3();
  OUTLINED_FUNCTION_183();
}

void sub_193513170()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_115_5();
  v32 = v5;
  v6 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Ended(0);
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v10 = OUTLINED_FUNCTION_14_5();
  v11 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.StateInfo(v10);
  v12 = OUTLINED_FUNCTION_4_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_16_16();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_49_5();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_61_4();
  v17 = v2 == 0x64657472617473 && v1 == 0xE700000000000000;
  if (!v17 && (OUTLINED_FUNCTION_19_20() & 1) == 0)
  {
    v24 = v2 == OUTLINED_FUNCTION_34_10() && v1 == 0xE500000000000000;
    if (v24 || (OUTLINED_FUNCTION_19_20() & 1) != 0)
    {
      OUTLINED_FUNCTION_7_25();
      sub_1935159EC();
      OUTLINED_FUNCTION_93_4();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_119_0();
        sub_1935156A0();
        sub_193494798(v6, &off_1F07C5BF0, v32);
        OUTLINED_FUNCTION_178_1();
        goto LABEL_18;
      }

      sub_19349AB64();
      v25 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_32_13(v25, v26);
      OUTLINED_FUNCTION_7_25();
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      OUTLINED_FUNCTION_17_16();
      v21 = v4;
      goto LABEL_8;
    }

    v27 = v2 == OUTLINED_FUNCTION_35_12() && v1 == 0xE600000000000000;
    if (!v27 && (OUTLINED_FUNCTION_19_20() & 1) == 0)
    {
      sub_19349AB64();
      v30 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_32_13(v30, v31);
      OUTLINED_FUNCTION_7_25();
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      goto LABEL_18;
    }

    OUTLINED_FUNCTION_7_25();
    sub_1935159EC();
    OUTLINED_FUNCTION_121_0();
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_19349AB64();
      v28 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_32_13(v28, v29);
      OUTLINED_FUNCTION_7_25();
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      OUTLINED_FUNCTION_17_16();
      v21 = v3;
      goto LABEL_8;
    }

    v34 = *v3;
    v22 = &type metadata for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Failed;
    v23 = &off_1F07C5C00;
LABEL_10:
    sub_193494798(v22, v23, v32);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_7_25();
  sub_1935159EC();
  if (!OUTLINED_FUNCTION_180_1())
  {
    v33 = *v0;
    v22 = &type metadata for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation.Started;
    v23 = &off_1F07C5BE0;
    goto LABEL_10;
  }

  sub_19349AB64();
  v18 = OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_56_3(v18, v19);
  OUTLINED_FUNCTION_7_25();
  sub_1935159EC();
  OUTLINED_FUNCTION_48_4();
  swift_willThrow();

  OUTLINED_FUNCTION_17_16();
  v21 = v0;
LABEL_8:
  sub_1935156F8(v21, v20);
LABEL_18:
  OUTLINED_FUNCTION_164_1();
  OUTLINED_FUNCTION_27();
}

void sub_1935134E4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_101_5(v7);
  OUTLINED_FUNCTION_146_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v12 = type metadata accessor for AIML.UUID();
  v13 = OUTLINED_FUNCTION_14_7(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8_28();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0B8, &qword_19395AF50);
  OUTLINED_FUNCTION_47(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_5_14();
  v21 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.StateInfo(v20);
  v22 = OUTLINED_FUNCTION_144_2(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_99_6();
  v26 = v26 && v3 == v25;
  if (v26 || (OUTLINED_FUNCTION_0_18() & 1) != 0)
  {
    OUTLINED_FUNCTION_179_1();
    v27 = OUTLINED_FUNCTION_131_0();
    OUTLINED_FUNCTION_6_3(v27, v28, v2);
    if (!v26)
    {
      OUTLINED_FUNCTION_113_3();
      sub_1935156A0();
      OUTLINED_FUNCTION_143_1();
      sub_193494798(v2, v32, v33);
      OUTLINED_FUNCTION_40_5();
      v35 = v6;
LABEL_10:
      sub_1935156F8(v35, v34);
      goto LABEL_11;
    }

    v29 = &qword_1EAE3C0B8;
    v30 = &qword_19395AF50;
    v31 = v0;
  }

  else
  {
    if (v5 != OUTLINED_FUNCTION_17_12() || v3 != v1)
    {
      OUTLINED_FUNCTION_142();
      if ((OUTLINED_FUNCTION_0_18() & 1) == 0)
      {
        sub_19349AB64();
        v38 = OUTLINED_FUNCTION_13_9();
        v40 = OUTLINED_FUNCTION_103_4(v38, v39);
        v41 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation(v40);
        OUTLINED_FUNCTION_126(v41);
        OUTLINED_FUNCTION_136_1();
        OUTLINED_FUNCTION_15_24();
        swift_willThrow();

        goto LABEL_11;
      }
    }

    v37 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation(0);
    OUTLINED_FUNCTION_153_3(*(v37 + 20));
    OUTLINED_FUNCTION_24_13(v4);
    if (!v26)
    {
      OUTLINED_FUNCTION_4_24();
      OUTLINED_FUNCTION_170_0();
      sub_1935156A0();
      OUTLINED_FUNCTION_125_2(&off_1F07C3F90, v42);
      v35 = OUTLINED_FUNCTION_2_31();
      goto LABEL_10;
    }

    v29 = &qword_1EAE3BCA0;
    v30 = &unk_19395C320;
    v31 = v4;
  }

  sub_19344E6DC(v31, v29, v30);
  OUTLINED_FUNCTION_109_5();
LABEL_11:
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_27();
}

void sub_193513798()
{
  OUTLINED_FUNCTION_26();
  v73 = v2;
  v74 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v68 - v11;
  v69 = type metadata accessor for AIML.UUID();
  v12 = OUTLINED_FUNCTION_4_1(v69);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8_28();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v16 = OUTLINED_FUNCTION_47(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_61_4();
  v23 = sub_19393BE00();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](0x6574756C6F736261);
  OUTLINED_FUNCTION_6();
  v28 = v26 - v27;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v68 - v31;
  v71 = v6;
  v72 = v4;
  v33 = v6 == v30 && v4 == 0xEC000000656D6954;
  if (!v33 && (OUTLINED_FUNCTION_18_13() & 1) == 0)
  {
    v40 = v71 == 0x6E6F6974616E6F64 && v72 == 0xEC000000656D6954;
    if (v40 || (OUTLINED_FUNCTION_18_13() & 1) != 0)
    {
      v41 = *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0) + 20);
      sub_19344F184();
      OUTLINED_FUNCTION_6_3(v21, 1, v23);
      if (!v33)
      {
        (*(v24 + 32))(v28, v21, v23);
        sub_1934948FC();
        (*(v24 + 8))(v28, v23);
        goto LABEL_12;
      }

      v36 = &qword_1EAE3A9E8;
      v37 = &qword_19394F800;
      v38 = v21;
      goto LABEL_10;
    }

    v42 = v71 == 0x6F69737365536669 && v72 == 0xEB0000000064496ELL;
    if (!v42 && (OUTLINED_FUNCTION_18_13() & 1) == 0)
    {
      OUTLINED_FUNCTION_168();
      v51 = v71 == v50 && v49 == v72;
      if (v51 || (OUTLINED_FUNCTION_49_1(), (OUTLINED_FUNCTION_18_13() & 1) != 0))
      {
        v52 = v74 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0) + 28);
        if (*(v52 + 4))
        {
          goto LABEL_11;
        }

        LODWORD(v75) = *v52;
      }

      else
      {
        v53 = v71 == 0x6E6F6974616E6F64 && v72 == 0xEF72656767697254;
        if (v53 || (OUTLINED_FUNCTION_18_13() & 1) != 0)
        {
          v54 = v74 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0) + 32);
          if (*(v54 + 9))
          {
            goto LABEL_11;
          }

          OUTLINED_FUNCTION_149_4(v54);
          v75 = v55;
          LOBYTE(v76) = v56 & 1;
        }

        else
        {
          v57 = v71 == 0x656C707554736177 && v72 == 0xEF646574616E6F44;
          if (v57 || (OUTLINED_FUNCTION_18_13() & 1) != 0)
          {
            v58 = *(v74 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0) + 36));
            if (v58 == 2)
            {
              goto LABEL_11;
            }

            LOBYTE(v75) = v58 & 1;
          }

          else
          {
            v59 = v71 == 0x656C707574 && v72 == 0xE500000000000000;
            if (v59 || (OUTLINED_FUNCTION_18_13() & 1) != 0)
            {
              v60 = (v74 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0) + 40));
              v61 = *v60;
              if (*v60)
              {
                v62 = *(v60 + 8);
                v63 = v60[1];
                v75 = v61;
                v76 = v63;
                v77 = v62 & 0x1FF;
                sub_193494798(&type metadata for IntelligenceFlowFeedbackLearning.TupleInteraction, &off_1F07C5CC0, v73);
                goto LABEL_12;
              }

              goto LABEL_11;
            }

            v64 = v71 == 0x74616469646E6163 && v72 == 0xEA00000000007365;
            if (!v64 && (OUTLINED_FUNCTION_18_13() & 1) == 0)
            {
              sub_19349AB64();
              OUTLINED_FUNCTION_13_9();
              OUTLINED_FUNCTION_114_4();
              v65 = v72;
              *v66 = v71;
              v66[1] = v65;
              v67 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0);
              OUTLINED_FUNCTION_126(v67);
              sub_1935159EC();
              OUTLINED_FUNCTION_15_24();
              swift_willThrow();

              goto LABEL_12;
            }

            v75 = *(v74 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0) + 44));
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0C0, &qword_19395AF58);
          }
        }
      }

      sub_1934948FC();
      goto LABEL_12;
    }

    v43 = *(type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0) + 24);
    v0 = v70;
    sub_19344F184();
    v44 = OUTLINED_FUNCTION_131_0();
    v45 = v69;
    OUTLINED_FUNCTION_6_3(v44, v46, v69);
    if (!v33)
    {
      OUTLINED_FUNCTION_4_24();
      sub_1935156A0();
      sub_193494798(v45, &off_1F07C3F90, v73);
      v47 = OUTLINED_FUNCTION_2_31();
      sub_1935156F8(v47, v48);
      goto LABEL_12;
    }

    v36 = &qword_1EAE3BCA0;
    v37 = &unk_19395C320;
LABEL_9:
    v38 = v0;
LABEL_10:
    sub_19344E6DC(v38, v36, v37);
LABEL_11:
    v39 = v73;
    *v73 = 0u;
    *(v39 + 1) = 0u;
    goto LABEL_12;
  }

  sub_19344F184();
  v34 = OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_6_3(v34, v35, v23);
  if (v33)
  {
    v36 = &qword_1EAE3A9E8;
    v37 = &qword_19394F800;
    goto LABEL_9;
  }

  (*(v24 + 32))(v32, v0, v23);
  sub_1934948FC();
  (*(v24 + 8))(v32, v23);
LABEL_12:
  OUTLINED_FUNCTION_27();
}

void sub_193513E4C()
{
  OUTLINED_FUNCTION_26();
  v27 = v5;
  OUTLINED_FUNCTION_115_5();
  v6 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended(0);
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_129_2();
  v10 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.StateInfo(0);
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_16_16();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_167_1();
  v15 = v15 && v0 == 0xE700000000000000;
  if (v15 || (OUTLINED_FUNCTION_19_20() & 1) != 0)
  {
    OUTLINED_FUNCTION_9_38();
    sub_1935159EC();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v28 = *v2;
      sub_193494798(&type metadata for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Started, &off_1F07C5C30, v27);
      goto LABEL_10;
    }

    sub_19349AB64();
    v16 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_45_8(v16, v17);
    OUTLINED_FUNCTION_9_38();
    sub_1935159EC();
    OUTLINED_FUNCTION_15_24();
    swift_willThrow();

    OUTLINED_FUNCTION_40_5();
    v19 = v2;
  }

  else
  {
    v20 = v1 == OUTLINED_FUNCTION_34_10() && v0 == 0xE500000000000000;
    if (!v20 && (OUTLINED_FUNCTION_19_20() & 1) == 0)
    {
      sub_19349AB64();
      v25 = OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_45_8(v25, v26);
      OUTLINED_FUNCTION_9_38();
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      goto LABEL_10;
    }

    OUTLINED_FUNCTION_9_38();
    sub_1935159EC();
    OUTLINED_FUNCTION_121_0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1935156A0();
      OUTLINED_FUNCTION_143_1();
      sub_193494798(v6, v21, v22);
      sub_1935156F8(v4, type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation.Ended);
      goto LABEL_10;
    }

    sub_19349AB64();
    v23 = OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_45_8(v23, v24);
    OUTLINED_FUNCTION_9_38();
    sub_1935159EC();
    OUTLINED_FUNCTION_15_24();
    swift_willThrow();

    OUTLINED_FUNCTION_40_5();
    v19 = v3;
  }

  sub_1935156F8(v19, v18);
LABEL_10:
  OUTLINED_FUNCTION_27();
}

void sub_193514100()
{
  OUTLINED_FUNCTION_26();
  v38 = v3;
  v39 = v1;
  OUTLINED_FUNCTION_115_5();
  v37 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.InteractionDonation(0);
  v4 = OUTLINED_FUNCTION_4_1(v37);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8_28();
  v7 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation(0);
  v8 = OUTLINED_FUNCTION_4_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_1();
  v13 = v12 - v11;
  v14 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.EventValue(0);
  v15 = OUTLINED_FUNCTION_4_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v36 - v22;
  OUTLINED_FUNCTION_38();
  v25 = v2 == 0xD000000000000010 && v24 == v0;
  if (v25 || (OUTLINED_FUNCTION_19_20() & 1) != 0)
  {
    OUTLINED_FUNCTION_11_18();
    OUTLINED_FUNCTION_121_0();
    sub_1935159EC();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_19349AB64();
      OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_100_6();
      OUTLINED_FUNCTION_157_2(v26, v27);
      OUTLINED_FUNCTION_11_18();
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      OUTLINED_FUNCTION_39_10();
      v29 = v23;
    }

    else
    {
      sub_1935156A0();
      sub_193494798(v7, &off_1F07C5BD0, v38);
      v28 = type metadata accessor for IntelligenceFlowFeedbackLearning.Event.ActionEvaluation;
      v29 = v13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_38();
    v31 = v2 == 0xD000000000000013 && v30 == v0;
    if (!v31 && (OUTLINED_FUNCTION_19_20() & 1) == 0)
    {
      sub_19349AB64();
      OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_100_6();
      OUTLINED_FUNCTION_157_2(v34, v35);
      OUTLINED_FUNCTION_11_18();
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      goto LABEL_10;
    }

    OUTLINED_FUNCTION_11_18();
    sub_1935159EC();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1935156A0();
      sub_193494798(v37, &off_1F07C5C20, v38);
      v29 = OUTLINED_FUNCTION_68_4();
    }

    else
    {
      sub_19349AB64();
      OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_100_6();
      OUTLINED_FUNCTION_157_2(v32, v33);
      OUTLINED_FUNCTION_11_18();
      sub_1935159EC();
      OUTLINED_FUNCTION_15_24();
      swift_willThrow();

      OUTLINED_FUNCTION_39_10();
      v29 = v20;
    }
  }

  sub_1935156F8(v29, v28);
LABEL_10:
  OUTLINED_FUNCTION_27();
}

void sub_193514454()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_28_8();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_6();
  v7 = type metadata accessor for AIML.UUID();
  v8 = OUTLINED_FUNCTION_14_7(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_28();
  v11 = v1 == 1682533478 && v0 == 0xE400000000000000;
  if (v11 || (OUTLINED_FUNCTION_85_5() & 1) != 0)
  {
    OUTLINED_FUNCTION_151_3();
    OUTLINED_FUNCTION_23_4();
    if (v11)
    {
      sub_19344E6DC(v2, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_104();
    }

    else
    {
      OUTLINED_FUNCTION_4_24();
      OUTLINED_FUNCTION_82_5();
      v12 = sub_1935156A0();
      OUTLINED_FUNCTION_80_0(v12, v13, &off_1F07C3F90);
      v14 = OUTLINED_FUNCTION_2_31();
      sub_1935156F8(v14, v15);
    }
  }

  else
  {
    sub_19349AB64();
    v16 = OUTLINED_FUNCTION_13_9();
    v18 = OUTLINED_FUNCTION_51_0(v16, v17);
    v19 = type metadata accessor for IntelligenceFlowFeedbackLearning.Metadata(v18);
    OUTLINED_FUNCTION_152(v19);
    OUTLINED_FUNCTION_112_6();
    sub_1935159EC();
    OUTLINED_FUNCTION_48_4();
    swift_willThrow();
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1935145E8()
{
  OUTLINED_FUNCTION_172_0();
  v3 = v2;
  OUTLINED_FUNCTION_102_3();
  v22 = *(v0 + 48);
  OUTLINED_FUNCTION_168();
  v7 = v4 == v6 && v5 == v1;
  if (v7 || (v8 = v4, OUTLINED_FUNCTION_130(), (sub_19393CA30() & 1) != 0))
  {
    if (BYTE9(v19))
    {
LABEL_7:
      OUTLINED_FUNCTION_35();
      return;
    }

    v15 = v19;
    LOBYTE(v16) = BYTE8(v19) & 1;
    goto LABEL_9;
  }

  v9 = v8 == 0x6374754F6B736174 && v1 == 0xEB00000000656D6FLL;
  if (v9 || (OUTLINED_FUNCTION_130(), (sub_19393CA30() & 1) != 0))
  {
    if (BYTE10(v21))
    {
      goto LABEL_7;
    }

    v15 = v20;
    v16 = WORD4(v20) & 0x1FF;
    v17 = v21;
    v18 = WORD4(v21) & 0x1FF;
    sub_193494798(&type metadata for IntelligenceFlowFeedbackLearning.TaskOutcome, &off_1F07C5D10, v3);
  }

  else
  {
    v11 = v8 == (OUTLINED_FUNCTION_139_4() & 0xFFFFFFFFFFFFLL | 0x6974000000000000) && v1 == v10;
    if (v11 || (OUTLINED_FUNCTION_130(), (sub_19393CA30() & 1) != 0))
    {
      v15 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0C8, &qword_19395AF60);
LABEL_9:
      sub_1934948FC();
      return;
    }

    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_32_3();
    *v12 = v8;
    v12[1] = v1;
    v12[5] = &type metadata for IntelligenceFlowFeedbackLearning.TaskEvaluation;
    v13 = swift_allocObject();
    *(v0 + 16) = v13;
    *(v13 + 64) = v22;
    v14 = v21;
    *(v13 + 32) = v20;
    *(v13 + 48) = v14;
    *(v13 + 16) = v19;
    OUTLINED_FUNCTION_26_0();

    sub_193514800(&v19, &v15);
  }
}

void sub_193514874()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_26_10();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_6();
  v7 = type metadata accessor for AIML.UUID();
  v8 = OUTLINED_FUNCTION_14_7(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_28();
  v11 = v1 == 0x74616469646E6163 && v0 == 0xEB00000000644965;
  if (v11 || (OUTLINED_FUNCTION_113_3(), (OUTLINED_FUNCTION_85_5() & 1) != 0))
  {
    OUTLINED_FUNCTION_151_3();
    OUTLINED_FUNCTION_23_4();
    if (v11)
    {
      sub_19344E6DC(v2, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_104();
    }

    else
    {
      OUTLINED_FUNCTION_4_24();
      OUTLINED_FUNCTION_82_5();
      v12 = sub_1935156A0();
      OUTLINED_FUNCTION_80_0(v12, v13, &off_1F07C3F90);
      v14 = OUTLINED_FUNCTION_2_31();
      sub_1935156F8(v14, v15);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_100_6();
    *v16 = v1;
    v16[1] = v0;
    v17 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateIdentifier(0);
    OUTLINED_FUNCTION_126(v17);
    OUTLINED_FUNCTION_112_6();
    sub_1935159EC();
    OUTLINED_FUNCTION_15_24();
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

void sub_193514A1C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_139_4();
  v8 = *v2;
  v9 = *(v2 + 8);
  v10 = *(v2 + 9);
  v11 = a1 == (v5 & 0xFFFFFFFFFFFFLL | 0x6F74000000000000) && v6 == v7;
  if (v11 || (v12 = v6, v19 = v2[2], v20 = *(v2 + 24), v13 = *(v2 + 25), v14 = v2[4], (OUTLINED_FUNCTION_0_32() & 1) != 0))
  {
    if (v10)
    {
LABEL_7:
      OUTLINED_FUNCTION_104();
      return;
    }

    goto LABEL_8;
  }

  v15 = a1 == 0x746C75736572 && v12 == 0xE600000000000000;
  if (v15 || (OUTLINED_FUNCTION_0_32() & 1) != 0)
  {
    if (v13)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v16 = a1 == 0x73656372756F73 && v12 == 0xE700000000000000;
  if (v16 || (OUTLINED_FUNCTION_0_32() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0D0, &qword_19395AF68);
LABEL_8:
    sub_1934948FC();
    return;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_106_0();
  *v17 = a1;
  v17[1] = v12;
  v17[5] = &type metadata for IntelligenceFlowFeedbackLearning.TaskEvaluationNode;
  v18 = swift_allocObject();
  *(a2 + 16) = v18;
  *(v18 + 16) = v8;
  *(v18 + 24) = v9;
  *(v18 + 25) = v10;
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  *(v18 + 41) = v13;
  *(v18 + 48) = v14;
  OUTLINED_FUNCTION_48_4();
  swift_willThrow();
}

void sub_193514C24()
{
  OUTLINED_FUNCTION_26();
  v41 = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0D8, &qword_19395AF70);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_9_6();
  v13 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateIdentifier(v12);
  v14 = OUTLINED_FUNCTION_14_7(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8_28();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0E0, &unk_19395C350);
  OUTLINED_FUNCTION_47(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_129_2();
  v21 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateCategory(0);
  v22 = OUTLINED_FUNCTION_4_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_1();
  v27 = v26 - v25;
  OUTLINED_FUNCTION_38();
  v29 = v7 == 0xD000000000000011 && v28 == v5;
  if (!v29)
  {
    OUTLINED_FUNCTION_49_1();
    if ((OUTLINED_FUNCTION_59_0() & 1) == 0)
    {
      OUTLINED_FUNCTION_38();
      v32 = v7 == 0xD000000000000013 && v31 == v5;
      if (v32 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
      {
        v33 = *(type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateEvaluation(0) + 20);
        sub_19344F184();
        OUTLINED_FUNCTION_23_4();
        if (!v29)
        {
          OUTLINED_FUNCTION_38_10();
          sub_1935156A0();
          OUTLINED_FUNCTION_125_2(&off_1F07C5C90, v41);
          v34 = OUTLINED_FUNCTION_68_4();
          sub_1935156F8(v34, v35);
          goto LABEL_9;
        }

        sub_19344E6DC(v1, &qword_1EAE3C0D8, &qword_19395AF70);
LABEL_18:
        *v41 = 0u;
        *(v41 + 16) = 0u;
        goto LABEL_9;
      }

      v36 = v7 == 0x6974756C6F736572 && v5 == 0xEA00000000006E6FLL;
      if (v36 || (OUTLINED_FUNCTION_59_0() & 1) != 0)
      {
        v37 = v0 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateEvaluation(0) + 24);
        if (*(v37 + 9))
        {
          goto LABEL_18;
        }
      }

      else
      {
        v38 = v7 == 0x656D6F6374756FLL && v5 == 0xE700000000000000;
        if (!v38 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_13_9();
          OUTLINED_FUNCTION_114_4();
          *v39 = v7;
          v39[1] = v5;
          v40 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateEvaluation(0);
          OUTLINED_FUNCTION_126(v40);
          sub_1935159EC();
          OUTLINED_FUNCTION_15_24();
          swift_willThrow();

          goto LABEL_9;
        }

        v37 = v0 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateEvaluation(0) + 28);
        if (*(v37 + 9))
        {
          goto LABEL_18;
        }
      }

      OUTLINED_FUNCTION_149_4(v37);
      sub_1934948FC();
      goto LABEL_9;
    }
  }

  sub_19344F184();
  OUTLINED_FUNCTION_6_3(v2, 1, v21);
  if (v29)
  {
    sub_19344E6DC(v2, &qword_1EAE3C0E0, &unk_19395C350);
    *v41 = 0u;
    *(v41 + 16) = 0u;
  }

  else
  {
    sub_1935156A0();
    sub_193494798(v21, &off_1F07C5CE0, v41);
    OUTLINED_FUNCTION_41_7();
    sub_1935156F8(v27, v30);
  }

LABEL_9:
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193515038()
{
  OUTLINED_FUNCTION_172_0();
  v3 = v2;
  v5 = v4;
  v6 = *v0;
  v7 = v2 == 0x696669746E656469 && v1 == 0xEB00000000737265;
  if (v7 || (v8 = v0[1], v9 = *(v0 + 16), v10 = *(v0 + 17), OUTLINED_FUNCTION_116_4(), (sub_19393CA30() & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0E8, &qword_19395AF78);
    return sub_1934948FC();
  }

  result = OUTLINED_FUNCTION_122_2();
  v13 = v7 && v1 == v12;
  if (v13 || (OUTLINED_FUNCTION_116_4(), result = sub_19393CA30(), (result & 1) != 0))
  {
    if ((v10 & 1) == 0)
    {
      return sub_1934948FC();
    }

    *v5 = 0u;
    v5[1] = 0u;
  }

  else
  {
    sub_19349AB64();
    v14 = OUTLINED_FUNCTION_13_9();
    *v15 = v3;
    *(v15 + 8) = v1;
    *(v15 + 40) = &type metadata for IntelligenceFlowFeedbackLearning.TupleInteraction;
    *(v15 + 16) = v6;
    *(v15 + 24) = v8;
    *(v15 + 32) = v9;
    *(v15 + 33) = v10;
    OUTLINED_FUNCTION_23_2(v14, v15);
  }

  return result;
}

void sub_1935151A4()
{
  OUTLINED_FUNCTION_184_0();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C0D8, &qword_19395AF70);
  OUTLINED_FUNCTION_47(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_9_6();
  v11 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateIdentifier(v10);
  v12 = OUTLINED_FUNCTION_14_7(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8_28();
  v15 = v5 == 0x696669746E656469 && v3 == 0xEA00000000007265;
  if (!v15 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
  {
    OUTLINED_FUNCTION_122_2();
    v21 = v15 && v3 == v20;
    if (!v21 && (OUTLINED_FUNCTION_59_0() & 1) == 0)
    {
      sub_19349AB64();
      OUTLINED_FUNCTION_13_9();
      OUTLINED_FUNCTION_106_0();
      *v23 = v5;
      v23[1] = v3;
      v24 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateInteraction(0);
      OUTLINED_FUNCTION_152(v24);
      OUTLINED_FUNCTION_141();
      sub_1935159EC();
      OUTLINED_FUNCTION_48_4();
      swift_willThrow();

      goto LABEL_10;
    }

    v22 = v0 + *(type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateInteraction(0) + 20);
    if ((*(v22 + 9) & 1) == 0)
    {
      OUTLINED_FUNCTION_149_4(v22);
      sub_1934948FC();
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  sub_19344F184();
  OUTLINED_FUNCTION_23_4();
  if (v15)
  {
    sub_19344E6DC(v1, &qword_1EAE3C0D8, &qword_19395AF70);
LABEL_9:
    OUTLINED_FUNCTION_104();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_38_10();
  v16 = sub_1935156A0();
  OUTLINED_FUNCTION_80_0(v16, v17, &off_1F07C5C90);
  v18 = OUTLINED_FUNCTION_68_4();
  sub_1935156F8(v18, v19);
LABEL_10:
  OUTLINED_FUNCTION_183();
}

void sub_1935153E0()
{
  OUTLINED_FUNCTION_26();
  v30 = v5;
  OUTLINED_FUNCTION_115_5();
  v6 = type metadata accessor for IntelligenceFlowFeedbackLearning.ParameterCandidateCategory(0);
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_129_2();
  v10 = type metadata accessor for IntelligenceFlowFeedbackLearning.CandidateCategory(0);
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_16_16();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_167_1();
  v15 = v15 && v0 == 0xE400000000000000;
  if (v15 || (OUTLINED_FUNCTION_19_20() & 1) != 0)
  {
    OUTLINED_FUNCTION_10_21();
    sub_1935159EC();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v31 = *v2;
      sub_193494798(&type metadata for IntelligenceFlowFeedbackLearning.ToolCandidateCategory, &off_1F07C5CF0, v30);
      goto LABEL_10;
    }

    sub_19349AB64();
    v16 = OUTLINED_FUNCTION_13_9();
    v18 = v17;
    OUTLINED_FUNCTION_56_3(v16, v17);
    OUTLINED_FUNCTION_10_21();
    sub_1935159EC();
    *(v18 + 48) = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_41_7();
    v20 = v2;
  }

  else
  {
    v21 = v1 == 0x6574656D61726170 && v0 == 0xE900000000000072;
    if (!v21 && (OUTLINED_FUNCTION_19_20() & 1) == 0)
    {
      sub_19349AB64();
      v27 = OUTLINED_FUNCTION_13_9();
      v29 = v28;
      OUTLINED_FUNCTION_56_3(v27, v28);
      OUTLINED_FUNCTION_10_21();
      sub_1935159EC();
      *(v29 + 48) = 1;
      swift_willThrow();

      goto LABEL_10;
    }

    OUTLINED_FUNCTION_10_21();
    sub_1935159EC();
    OUTLINED_FUNCTION_121_0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1935156A0();
      OUTLINED_FUNCTION_143_1();
      sub_193494798(v6, v22, v23);
      sub_1935156F8(v4, type metadata accessor for IntelligenceFlowFeedbackLearning.ParameterCandidateCategory);
      goto LABEL_10;
    }

    sub_19349AB64();
    v24 = OUTLINED_FUNCTION_13_9();
    v26 = v25;
    OUTLINED_FUNCTION_56_3(v24, v25);
    OUTLINED_FUNCTION_10_21();
    sub_1935159EC();
    *(v26 + 48) = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_41_7();
    v20 = v3;
  }

  sub_1935156F8(v20, v19);
LABEL_10:
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_1935156A0()
{
  OUTLINED_FUNCTION_91_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_4_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_13_0();
  v6(v5);
  return v0;
}

uint64_t sub_1935156F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_193515768()
{
  v2 = OUTLINED_FUNCTION_106_6();
  v5 = *v0;
  v6 = v1 == (v2 & 0xFFFF0000FFFFFFFFLL | 0x737400000000) && v3 == 0xE600000000000000;
  if (v6 || (v7 = v4, v8 = v3, (OUTLINED_FUNCTION_156_2() & 1) != 0))
  {
    if (v5 == 2)
    {
      OUTLINED_FUNCTION_35();
    }

    else
    {
      sub_1934948FC();
    }
  }

  else
  {
    sub_19349AB64();
    v9 = OUTLINED_FUNCTION_13_9();
    *v10 = v1;
    *(v10 + 8) = v8;
    *(v10 + 40) = v7;
    *(v10 + 16) = v5;
    OUTLINED_FUNCTION_23_2(v9, v10);
  }
}

void sub_193515858()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_26_10();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3BCA0, &unk_19395C320);
  OUTLINED_FUNCTION_47(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_6();
  v7 = type metadata accessor for AIML.UUID();
  v8 = OUTLINED_FUNCTION_14_7(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_28();
  v11 = v1 == 0x6574656D61726170 && v0 == 0xEF6449656D614E72;
  if (v11 || (OUTLINED_FUNCTION_113_3(), (OUTLINED_FUNCTION_85_5() & 1) != 0))
  {
    OUTLINED_FUNCTION_151_3();
    OUTLINED_FUNCTION_23_4();
    if (v11)
    {
      sub_19344E6DC(v2, &qword_1EAE3BCA0, &unk_19395C320);
      OUTLINED_FUNCTION_104();
    }

    else
    {
      OUTLINED_FUNCTION_4_24();
      OUTLINED_FUNCTION_82_5();
      v12 = sub_1935156A0();
      OUTLINED_FUNCTION_80_0(v12, v13, &off_1F07C3F90);
      v14 = OUTLINED_FUNCTION_2_31();
      sub_1935156F8(v14, v15);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_100_6();
    *v16 = v1;
    v16[1] = v0;
    v17 = type metadata accessor for IntelligenceFlowFeedbackLearning.ParameterCandidateCategory(0);
    OUTLINED_FUNCTION_126(v17);
    OUTLINED_FUNCTION_112_6();
    sub_1935159EC();
    OUTLINED_FUNCTION_15_24();
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1935159EC()
{
  OUTLINED_FUNCTION_91_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_4_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_13_0();
  v6(v5);
  return v0;
}

void sub_193515A5C()
{
  OUTLINED_FUNCTION_62_3();
  v3 = v2;
  v4 = *v0;
  v5 = *(v0 + 8);
  v6 = *(v0 + 9);
  if (v2 != 0x746174536B736174 || v1 != 0xEA00000000007375)
  {
    v8 = v1;
    v9 = v0[2];
    v16[0] = *(v0 + 24);
    v10 = *(v0 + 25);
    if ((sub_19393CA30() & 1) == 0)
    {
      v12 = v3 == (OUTLINED_FUNCTION_105_6() & 0xFFFFFFFFFFFFLL | 0x7453000000000000) && v8 == v11;
      if (!v12 && (sub_19393CA30() & 1) == 0)
      {
        sub_19349AB64();
        OUTLINED_FUNCTION_13_9();
        v14 = v13;
        *v13 = v3;
        v13[1] = v8;
        v13[5] = &type metadata for IntelligenceFlowFeedbackLearning.TaskOutcome;
        v15 = swift_allocObject();
        v14[2] = v15;
        *(v15 + 16) = v4;
        *(v15 + 24) = v5;
        *(v15 + 25) = v6;
        *(v15 + 32) = v9;
        *(v15 + 40) = v16[0];
        *(v15 + 41) = v10;
        OUTLINED_FUNCTION_48_4();
        swift_willThrow();

        goto LABEL_9;
      }

      if (v10)
      {
        goto LABEL_7;
      }

LABEL_8:
      sub_1934948FC();
      goto LABEL_9;
    }
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_35();
LABEL_9:
  OUTLINED_FUNCTION_54_0();
}

uint64_t OUTLINED_FUNCTION_48_6(uint64_t a1)
{
  *(v6 + 16) = a1;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = v2;
  *(a1 + 48) = v1;
  *(v6 + 48) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_54_5()
{

  return sub_19393CA30();
}

void OUTLINED_FUNCTION_60_7()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  *(v1 - 120) = *v0;
  *(v1 - 112) = v2;
  *(v1 - 104) = v3;
  *(v1 - 96) = v4;
  *(v1 - 88) = v5;
}

uint64_t OUTLINED_FUNCTION_86_5()
{
  result = 0x4564656C646E6168;
  v3 = *v0;
  v2 = v0[1];
  return result;
}

void OUTLINED_FUNCTION_101_5(uint64_t a1@<X8>)
{
  *(v3 - 96) = a1;
  *(v3 - 88) = v2;
  *(v3 - 72) = v1;
}

uint64_t OUTLINED_FUNCTION_103_4(uint64_t a1, void *a2)
{
  *a2 = v3;
  a2[1] = v2;
  return 0;
}

double OUTLINED_FUNCTION_109_5()
{
  result = 0.0;
  v2 = *(v0 - 96);
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_123_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a2 = v10;
  a2[1] = v9;
  a2[5] = a9;

  return swift_allocObject();
}

id OUTLINED_FUNCTION_125_2@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{

  return sub_193494798(v2, a1, a2);
}

uint64_t OUTLINED_FUNCTION_128_2(uint64_t a1)
{
  *(v6 + 16) = a1;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = v2;
  *(a1 + 48) = v1;
  *(v6 + 48) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_144_2(uint64_t a1)
{
  result = v1;
  v4 = *(a1 - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_151_3()
{

  return sub_19344F184();
}

uint64_t OUTLINED_FUNCTION_153_3@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 - 72) + a1;

  return sub_19344F184();
}

id OUTLINED_FUNCTION_154_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v4 - 136);

  return sub_193494798(v3, a3, v6);
}

id OUTLINED_FUNCTION_155_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 136);

  return sub_193494798(a2, a3, v5);
}

uint64_t OUTLINED_FUNCTION_156_2()
{

  return sub_19393CA30();
}

uint64_t *OUTLINED_FUNCTION_157_2(uint64_t a1, void *a2)
{
  *a2 = v3;
  a2[1] = v2;
  a2[5] = v4;

  return __swift_allocate_boxed_opaque_existential_1Tm(a2 + 2);
}

id OUTLINED_FUNCTION_159_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_193494798(a2, a3, v3);
}

uint64_t OUTLINED_FUNCTION_178_1()
{

  return sub_1935156F8(v1, v0);
}

id OUTLINED_FUNCTION_181_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 256);

  return sub_193494798(a2, a3, v5);
}

id OUTLINED_FUNCTION_182_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_193494798(a2, a3, v3);
}

uint64_t static IntelligenceFlowPlatformPnR.StateInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[5];
  v84 = a1[5];
  if (v6 >> 62)
  {
    if (v6 >> 62 == 1)
    {
      if (v11 >> 62 == 1)
      {
        v91 = *a1;
        v92 = v3;
        v93 = v5;
        v94 = v4;
        v95 = v6;
        v96 = v84;
        v85 = v8;
        v86 = v7;
        v87 = v9;
        v88 = v10;
        v89 = v11;
        v90 = v12;
        OUTLINED_FUNCTION_73_4();
        v81 = v4;
        v14 = v13;
        v16 = v15;
        sub_19350CD7C(v17, v18, v19, v10, v11);
        OUTLINED_FUNCTION_183_1();
        sub_19350CD7C(v20, v21, v22, v23, v24);
        OUTLINED_FUNCTION_40_6();
        sub_19350CD7C(v25, v26, v27, v28, v29);
        sub_19350CD7C(v16, v14, v5, v81, v6);
        static IntelligenceFlowPlatformPnR.Ended.== infix(_:_:)();
        v31 = v30;
        sub_19350CD1C(v16, v14, v5, v81, v6);
        OUTLINED_FUNCTION_40_6();
        sub_19350CD1C(v32, v33, v34, v35, v36);
        OUTLINED_FUNCTION_40_6();
        sub_19350CD1C(v37, v38, v39, v40, v41);
        v42 = v16;
        v43 = v14;
        v44 = v5;
        v45 = v81;
LABEL_9:
        v48 = v6;
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_111_6();
    }

    else
    {
      if (v11 >> 62 == 2)
      {
        v91 = *a1;
        v92 = v3;
        v93 = v5;
        v94 = v4;
        v95 = v6;
        v85 = v8;
        v86 = v7;
        v87 = v9;
        v88 = v10;
        v89 = v11;
        OUTLINED_FUNCTION_73_4();
        v80 = v49;
        v82 = v4;
        v51 = v50;
        sub_19350CD7C(v52, v53, v54, v10, v11);
        OUTLINED_FUNCTION_183_1();
        sub_19350CD7C(v55, v56, v57, v58, v59);
        OUTLINED_FUNCTION_40_6();
        sub_19350CD7C(v60, v61, v62, v63, v64);
        sub_19350CD7C(v51, v80, v5, v82, v6);
        v31 = static IntelligenceFlowPlatformPnR.Failed.== infix(_:_:)(&v91, &v85);
        v65 = OUTLINED_FUNCTION_55();
        sub_19350CD1C(v65, v66, v5, v82, v6);
        OUTLINED_FUNCTION_40_6();
        sub_19350CD1C(v67, v68, v69, v70, v71);
        OUTLINED_FUNCTION_40_6();
        sub_19350CD1C(v72, v73, v74, v75, v76);
        v42 = v51;
        v43 = v80;
        v45 = v82;
        v44 = v5;
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_111_6();
    }

LABEL_13:
    sub_19350CD7C(v8, v7, v2, v83, v11);
    v77 = OUTLINED_FUNCTION_114_0();
    sub_19350CD1C(v77, v78, v5, v4, v6);
    sub_19350CD1C(v8, v7, v2, v83, v11);
    v31 = 0;
    return v31 & 1;
  }

  v2 = a2[2];
  v83 = a2[3];
  if (v11 >> 62)
  {
    goto LABEL_13;
  }

  LOBYTE(v91) = *a1 & 1;
  LOBYTE(v85) = v8 & 1;
  v31 = static IntelligenceFlowPlatformPnR.Started.== infix(_:_:)(&v91, &v85);
  v46 = OUTLINED_FUNCTION_114_0();
  sub_19350CD1C(v46, v47, v5, v4, v6);
  v42 = v8;
  v43 = v7;
  v44 = v9;
  v45 = v10;
  v48 = v11;
LABEL_10:
  sub_19350CD1C(v42, v43, v44, v45, v48);
  return v31 & 1;
}

uint64_t IntelligenceFlowPlatformPnR.StateInfo.hash(into:)()
{
  v1 = *v0;
  v2 = v0[4] >> 62;
  if (v2)
  {
    v4 = *v0;
    v5 = v0[1];
    v6 = v0[2];
    v7 = v0[3];
    if (v2 == 1)
    {
      v8 = v0[5];
      sub_1935164CC();
    }

    else
    {
      sub_193516478();
    }
  }

  else
  {
    sub_193516520();
  }

  return sub_19393C540();
}

unint64_t sub_193516478()
{
  result = qword_1EAE3C0F0;
  if (!qword_1EAE3C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C0F0);
  }

  return result;
}

unint64_t sub_1935164CC()
{
  result = qword_1EAE3C0F8;
  if (!qword_1EAE3C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C0F8);
  }

  return result;
}

unint64_t sub_193516520()
{
  result = qword_1EAE3C100;
  if (!qword_1EAE3C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3C100);
  }

  return result;
}

uint64_t ResponseGeneration.Event.Generation.Ended.Source.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
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
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static ResponseGeneration.Event.Generation.Ended.Source.allCases.getter()
{
  v2 = OUTLINED_FUNCTION_95_0();
  v8 = sub_1934B0FCC(v2, v3, v4, v5, v6, v7);
  v9 = OUTLINED_FUNCTION_16_0(v8);
  if (!(!v15 & v14))
  {
    v53 = OUTLINED_FUNCTION_39(v13);
    v57 = OUTLINED_FUNCTION_84_2(v53, v54, v55, v56, &qword_1EAE3C3E8, &qword_19395BB58);
    v9 = OUTLINED_FUNCTION_17_2(v57);
  }

  OUTLINED_FUNCTION_13_6(v9, v10, v11, v12);
  if (v21 != v22)
  {
    v58 = OUTLINED_FUNCTION_39(v20);
    v62 = OUTLINED_FUNCTION_85(v58, v59, v60, v61, &qword_1EAE3C3E8, &qword_19395BB58);
    v16 = OUTLINED_FUNCTION_17_2(v62);
  }

  OUTLINED_FUNCTION_8_5(v16, v17, v18, v19);
  if (v21 != v22)
  {
    OUTLINED_FUNCTION_39(v27);
    OUTLINED_FUNCTION_57();
    v23 = sub_1934B0FCC(v63, v64, v65, v66, v67, v68);
    v26 = v23;
  }

  OUTLINED_FUNCTION_9_7(v23, v24, v25, v26);
  if (!(v21 ^ v22 | v15))
  {
    v69 = OUTLINED_FUNCTION_39(v32);
    v28 = OUTLINED_FUNCTION_84_2(v69, v70, v71, v72, &qword_1EAE3C3E8, &qword_19395BB58);
    v31 = v28;
  }

  OUTLINED_FUNCTION_3_7(v28, v29, v30, v31);
  if (!(v21 ^ v22 | v15))
  {
    v73 = OUTLINED_FUNCTION_39(v37);
    v33 = OUTLINED_FUNCTION_85(v73, v74, v75, v76, &qword_1EAE3C3E8, &qword_19395BB58);
    v36 = v33;
  }

  OUTLINED_FUNCTION_5_11(v33, v34, v35, v36);
  if (!(v21 ^ v22 | v15))
  {
    v77 = OUTLINED_FUNCTION_39(v42);
    v38 = OUTLINED_FUNCTION_84_2(v77, v78, v79, v80, &qword_1EAE3C3E8, &qword_19395BB58);
    v41 = v38;
  }

  OUTLINED_FUNCTION_50(v38, v39, v40, v41);
  OUTLINED_FUNCTION_4(v43, v44);
  if (v1 + 7 > (v49 >> 1))
  {
    v81 = OUTLINED_FUNCTION_39(v49);
    v45 = OUTLINED_FUNCTION_85(v81, v82, v83, v84, &qword_1EAE3C3E8, &qword_19395BB58);
    v48 = v45;
  }

  OUTLINED_FUNCTION_47_5(v45, v46, v47, v48);
  *(v50 + 32) = 5;
  *(v50 + 40) = v0;
  return v51;
}

uint64_t ResponseGeneration.Event.Generation.Ended.Source.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 1819242324;
  switch(*v0)
  {
    case 1:
      result = 0x6B6361626C6C6146;
      break;
    case 2:
      result = 0x656469727265764FLL;
      break;
    case 3:
      result = OUTLINED_FUNCTION_165_2();
      break;
    case 4:
      result = OUTLINED_FUNCTION_159();
      break;
    case 5:
      result = 0x6C65646F4D676C4ELL;
      break;
    default:
      return result;
  }

  return result;
}

void ResponseGeneration.Event.Generation.Ended.Source.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 1819242324 && v0 == 0xE400000000000000;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_141_0();
      v6 = v3 && v0 == 0xE800000000000000;
      if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v7 = v1 == 0x656469727265764FLL && v0 == 0xE800000000000000;
        if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v9 = v1 == OUTLINED_FUNCTION_165_2() && v0 == v8;
          if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v11 = v1 == OUTLINED_FUNCTION_159() && v0 == v10;
            if (v11 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else if (v1 == 0x6C65646F4D676C4ELL && v0 == 0xE800000000000000)
            {

              OUTLINED_FUNCTION_83();
            }

            else
            {
              OUTLINED_FUNCTION_0_9();
              OUTLINED_FUNCTION_89();
              v4 = 5;
              if ((v1 & 1) == 0)
              {
                v4 = 0;
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t ResponseGeneration.Event.Generation.Ended.FallbackReason.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
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
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static ResponseGeneration.Event.Generation.Ended.FallbackReason.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  v7 = sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  v8 = OUTLINED_FUNCTION_16_0(v7);
  if (!(!v14 & v13))
  {
    v73 = OUTLINED_FUNCTION_39(v12);
    v77 = OUTLINED_FUNCTION_84_2(v73, v74, v75, v76, &qword_1EAE3C3E0, &qword_19395BB50);
    v8 = OUTLINED_FUNCTION_17_2(v77);
  }

  OUTLINED_FUNCTION_13_6(v8, v9, v10, v11);
  if (v20 != v21)
  {
    v78 = OUTLINED_FUNCTION_39(v19);
    v82 = OUTLINED_FUNCTION_85(v78, v79, v80, v81, &qword_1EAE3C3E0, &qword_19395BB50);
    v15 = OUTLINED_FUNCTION_17_2(v82);
  }

  OUTLINED_FUNCTION_8_5(v15, v16, v17, v18);
  if (v20 != v21)
  {
    OUTLINED_FUNCTION_39(v26);
    OUTLINED_FUNCTION_57();
    v22 = sub_1934B0FCC(v83, v84, v85, v86, v87, v88);
    v25 = v22;
  }

  OUTLINED_FUNCTION_9_7(v22, v23, v24, v25);
  if (!(v20 ^ v21 | v14))
  {
    v89 = OUTLINED_FUNCTION_39(v31);
    v27 = OUTLINED_FUNCTION_84_2(v89, v90, v91, v92, &qword_1EAE3C3E0, &qword_19395BB50);
    v30 = v27;
  }

  OUTLINED_FUNCTION_3_7(v27, v28, v29, v30);
  if (!(v20 ^ v21 | v14))
  {
    v93 = OUTLINED_FUNCTION_39(v36);
    v32 = OUTLINED_FUNCTION_85(v93, v94, v95, v96, &qword_1EAE3C3E0, &qword_19395BB50);
    v35 = v32;
  }

  OUTLINED_FUNCTION_5_11(v32, v33, v34, v35);
  if (!(v20 ^ v21 | v14))
  {
    v97 = OUTLINED_FUNCTION_39(v41);
    v37 = OUTLINED_FUNCTION_84_2(v97, v98, v99, v100, &qword_1EAE3C3E0, &qword_19395BB50);
    v40 = v37;
  }

  OUTLINED_FUNCTION_50(v37, v38, v39, v40);
  OUTLINED_FUNCTION_4(v42, v43);
  if (v0 + 7 > (v48 >> 1))
  {
    v101 = OUTLINED_FUNCTION_39(v48);
    v44 = OUTLINED_FUNCTION_85(v101, v102, v103, v104, &qword_1EAE3C3E0, &qword_19395BB50);
    v47 = v44;
  }

  OUTLINED_FUNCTION_47_5(v44, v45, v46, v47);
  OUTLINED_FUNCTION_4(v49, v50);
  if (v0 + 8 > (v55 >> 1))
  {
    v105 = OUTLINED_FUNCTION_39(v55);
    v51 = OUTLINED_FUNCTION_84_2(v105, v106, v107, v108, &qword_1EAE3C3E0, &qword_19395BB50);
    v54 = v51;
  }

  OUTLINED_FUNCTION_50(v51, v52, v53, v54);
  OUTLINED_FUNCTION_4(v56, v57);
  if (v0 + 9 > (v62 >> 1))
  {
    v109 = OUTLINED_FUNCTION_39(v62);
    v58 = OUTLINED_FUNCTION_85(v109, v110, v111, v112, &qword_1EAE3C3E0, &qword_19395BB50);
    v61 = v58;
  }

  OUTLINED_FUNCTION_47_5(v58, v59, v60, v61);
  OUTLINED_FUNCTION_4(v63, v64);
  if (v0 + 10 > (v69 >> 1))
  {
    v113 = OUTLINED_FUNCTION_39(v69);
    v65 = OUTLINED_FUNCTION_84_2(v113, v114, v115, v116, &qword_1EAE3C3E0, &qword_19395BB50);
    v68 = v65;
  }

  OUTLINED_FUNCTION_50(v65, v66, v67, v68);
  return OUTLINED_FUNCTION_38_1(v70, v71);
}

void ResponseGeneration.Event.Generation.Ended.FallbackReason.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
      case 5:
        return;
      case 2:
        OUTLINED_FUNCTION_158();
        break;
      case 4:
        OUTLINED_FUNCTION_101_6(10);
        break;
      case 7:
        OUTLINED_FUNCTION_38();
        break;
      default:
        OUTLINED_FUNCTION_187_1();
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void ResponseGeneration.Event.Generation.Ended.FallbackReason.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_52_5();
    v6 = v1 == 17 && v5 == v0;
    if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v7 = v1 == 0x6C6C416E49746F4ELL && v0 == 0xEE007473694C776FLL;
      if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v9 = v1 == OUTLINED_FUNCTION_158() && v0 == v8;
        if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v10 = v1 == 30 && 0x8000000193A199C0 == v0;
          if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_142_0();
            v12 = v3 && v11 == v0;
            if (v12 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v13 = v1 == 0x646469727265764FLL && v0 == 0xEA00000000006E65;
              if (v13 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                OUTLINED_FUNCTION_138();
                v15 = v3 && v14 == v0;
                if (v15 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  OUTLINED_FUNCTION_26_4();
                  v17 = v3 && v16 == v0;
                  if (v17 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else if (v1 == 19 && 0x8000000193A19940 == v0)
                  {

                    v4 = 8;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_0_9();
                    OUTLINED_FUNCTION_89();
                    v4 = 8;
                    if ((v1 & 1) == 0)
                    {
                      v4 = 0;
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

  OUTLINED_FUNCTION_12_1(v4);
}

void static ResponseGeneration.Event.Generation.StateInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v3 = OUTLINED_FUNCTION_133_4();
  v4 = type metadata accessor for ResponseGeneration.Event.Generation.Ended(v3);
  v5 = OUTLINED_FUNCTION_47(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_38_11();
  v10 = type metadata accessor for ResponseGeneration.Event.Generation.StateInfo(v9);
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_66_4();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_97_4();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_98_6();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C108, &qword_19395B510);
  OUTLINED_FUNCTION_47(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_53_7();
  v21 = (v0 + *(v20 + 56));
  sub_19351E57C();
  OUTLINED_FUNCTION_107_5();
  sub_19351E57C();
  v22 = OUTLINED_FUNCTION_162_3();
  if (!v22)
  {
    OUTLINED_FUNCTION_9_39();
    OUTLINED_FUNCTION_186();
    OUTLINED_FUNCTION_55();
    if (!swift_getEnumCaseMultiPayload())
    {
      v23 = *v21;
      v37[0] = *v2;
      v36[0] = v23;
      static ResponseGeneration.Event.Generation.Started.== infix(_:_:)(v37, v36);
      goto LABEL_9;
    }

LABEL_12:
    sub_19344E6DC(v0, &qword_1EAE3C108, &qword_19395B510);
    goto LABEL_13;
  }

  if (v22 != 1)
  {
    OUTLINED_FUNCTION_9_39();
    OUTLINED_FUNCTION_114_0();
    sub_19351E57C();
    v25 = *v1;
    v24 = v1[1];
    v27 = v1[2];
    v26 = v1[3];
    v28 = *(v1 + 32);
    OUTLINED_FUNCTION_55();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v29 = OUTLINED_FUNCTION_30_7();
      static ResponseGeneration.Event.Generation.Failed.== infix(_:_:)(v29);
      v30 = OUTLINED_FUNCTION_125_3();
      sub_193456418(v30, v31);
      v32 = OUTLINED_FUNCTION_44_7();
      OUTLINED_FUNCTION_160_4(v32, v33);
      goto LABEL_9;
    }

    v34 = OUTLINED_FUNCTION_44_7();
    OUTLINED_FUNCTION_160_4(v34, v35);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_9_39();
  OUTLINED_FUNCTION_102_4();
  sub_19351E57C();
  OUTLINED_FUNCTION_55();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_77_8();
    sub_19351E634();
    goto LABEL_12;
  }

  sub_19351E5D8();
  OUTLINED_FUNCTION_120_2();
  OUTLINED_FUNCTION_94_5();
  static ResponseGeneration.Event.Generation.Ended.== infix(_:_:)();
  sub_19351E634();
  OUTLINED_FUNCTION_127();
  sub_19351E634();
LABEL_9:
  OUTLINED_FUNCTION_153_4();
LABEL_13:
  OUTLINED_FUNCTION_123_4();
  OUTLINED_FUNCTION_116();
}

uint64_t ResponseGeneration.Event.Generation.StateInfo.hash(into:)()
{
  v1 = OUTLINED_FUNCTION_57_3();
  v2 = type metadata accessor for ResponseGeneration.Event.Generation.Ended(v1);
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = OUTLINED_FUNCTION_5_30();
  v7 = type metadata accessor for ResponseGeneration.Event.Generation.StateInfo(v6);
  v8 = OUTLINED_FUNCTION_4_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_9_39();
  OUTLINED_FUNCTION_55();
  sub_19351E57C();
  OUTLINED_FUNCTION_109_6();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_95_5();
      sub_19351E688(&qword_1EAE3C118, type metadata accessor for ResponseGeneration.Event.Generation.Ended);
      OUTLINED_FUNCTION_21_1();
      sub_19393C540();
      OUTLINED_FUNCTION_77_8();
      return sub_19351E634();
    }

    else
    {
      OUTLINED_FUNCTION_59_9();
      sub_19351D85C();
      OUTLINED_FUNCTION_163_2();
      v13 = OUTLINED_FUNCTION_94_5();
      return OUTLINED_FUNCTION_161_2(v13, v14);
    }
  }

  else
  {
    v15 = *v0;
    sub_19351D8B0();
    return OUTLINED_FUNCTION_163_2();
  }
}

uint64_t ResponseGeneration.Event.RequestValidation.StateInfo.hash(into:)()
{
  OUTLINED_FUNCTION_132_3();
  if (v0)
  {
    OUTLINED_FUNCTION_138_3();
    if (v1)
    {
      OUTLINED_FUNCTION_58_7();
      sub_19351D958();
    }

    else
    {
      OUTLINED_FUNCTION_58_7();
      sub_19351D904();
    }
  }

  else
  {
    sub_19351D9AC();
  }

  return OUTLINED_FUNCTION_154_0();
}

uint64_t ResponseGeneration.Event.Override.Ended.OverrideType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x6944676E69727453;
  if (*v0 != 1)
  {
    v1 = 0x6F6C616944746143;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B6361626C6C6146;
  }
}

void ResponseGeneration.Event.Override.Ended.OverrideType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_141_0();
    v6 = v3 && v0 == v5;
    if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v7 = v1 == 0x6944676E69727453 && v0 == 0xEC000000676F6C61;
      if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else if (v1 == 0x6F6C616944746143 && v0 == 0xE900000000000067)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_0_9();
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_152_0();
        if (v3)
        {
          v4 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t static ResponseGeneration.Event.Override.StateInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_185_2(&v89);
  memcpy(__dst, v0, 0x48uLL);
  OUTLINED_FUNCTION_185_2(v95);
  v1 = memcpy(v96, v0, sizeof(v96));
  if (!(v92 >> 62))
  {
    if (!(*&__dst[3] >> 62))
    {
      v10 = OUTLINED_FUNCTION_166_2(v1, v2, v3, v4, v5, v6, v7, v8, *&__dst[0], *(&__dst[0] + 1), v70, v71, v72, v73, v74, v75, v76, v77, v89, *(&v89 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82, *(&v82 + 1), v83, v84);
      v18 = OUTLINED_FUNCTION_167_2(v10, v11, v12, v13, v14, v15, v16, v17, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82, *(&v82 + 1), v83, v84, *(&v84 + 1), v85, *(&v85 + 1), v86, *(&v86 + 1), v87, v88, *(&v88 + 1), v89);
      v26 = OUTLINED_FUNCTION_167_2(v18, v19, v20, v21, v22, v23, v24, v25, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82, *(&v82 + 1), v83, v84, *(&v84 + 1), v85, *(&v85 + 1), v86, *(&v86 + 1), v87, v88, *(&v88 + 1), v89);
      OUTLINED_FUNCTION_166_2(v26, v27, v28, v29, v30, v31, v32, v33, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82, *(&v82 + 1), v83, v84);
      v9 = static ResponseGeneration.Event.Override.Started.== infix(_:_:)(&v78, &v68);
      goto LABEL_9;
    }

LABEL_10:
    v59 = OUTLINED_FUNCTION_167_2(v1, v2, v3, v4, v5, v6, v7, v8, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82, *(&v82 + 1), v83, v84, *(&v84 + 1), v85, *(&v85 + 1), v86, *(&v86 + 1), v87, v88, *(&v88 + 1), v89);
    OUTLINED_FUNCTION_166_2(v59, v60, v61, v62, v63, v64, v65, v66, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82, *(&v82 + 1), v83, v84);
    sub_19344E6DC(v95, &qword_1EAE3C140, &qword_19395B518);
    v58 = 0;
    return v58 & 1;
  }

  if (v92 >> 62 != 1)
  {
    if (*&__dst[3] >> 62 == 2)
    {
      LOBYTE(v80) = v91;
      LOBYTE(v72) = __dst[2];
      v34 = OUTLINED_FUNCTION_166_2(v1, v2, v3, v4, v5, v6, v7, v8, *&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), v72, v73, v74, v75, v76, v77, v89, *(&v89 + 1), v90, *(&v90 + 1), v80, *(&v80 + 1), v81, v82, *(&v82 + 1), v83, v84);
      v42 = OUTLINED_FUNCTION_167_2(v34, v35, v36, v37, v38, v39, v40, v41, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82, *(&v82 + 1), v83, v84, *(&v84 + 1), v85, *(&v85 + 1), v86, *(&v86 + 1), v87, v88, *(&v88 + 1), v89);
      v50 = OUTLINED_FUNCTION_167_2(v42, v43, v44, v45, v46, v47, v48, v49, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82, *(&v82 + 1), v83, v84, *(&v84 + 1), v85, *(&v85 + 1), v86, *(&v86 + 1), v87, v88, *(&v88 + 1), v89);
      OUTLINED_FUNCTION_166_2(v50, v51, v52, v53, v54, v55, v56, v57, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82, *(&v82 + 1), v83, v84);
      v9 = static ResponseGeneration.Event.Override.Failed.== infix(_:_:)(&v78, &v68);
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (*&__dst[3] >> 62 != 1)
  {
    goto LABEL_10;
  }

  v84 = v89;
  v85 = v90;
  v86 = v91;
  v87 = v92 & 0x3FFFFFFFFFFFFFFFLL;
  v88 = v93;
  v78 = __dst[0];
  v79 = __dst[1];
  v80 = __dst[2];
  v81 = *&__dst[3] & 0x3FFFFFFFFFFFFFFFLL;
  v82 = *(&__dst[3] + 8);
  sub_19350E860(__dst, &v68);
  sub_19350E860(&v89, &v68);
  sub_19350E860(&v89, &v68);
  sub_19350E860(__dst, &v68);
  v9 = static ResponseGeneration.Event.Override.Ended.== infix(_:_:)(&v84, &v78);
LABEL_9:
  v58 = v9;
  sub_19344E6DC(v95, &qword_1EAE3C140, &qword_19395B518);
  sub_19351DA00(__dst);
  sub_19351DA00(&v89);
  return v58 & 1;
}

uint64_t ResponseGeneration.Event.Override.StateInfo.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[6] >> 62;
  if (v3)
  {
    v4 = v0[4];
    v6 = *v0;
    v8 = v0[1];
    v10 = v0[2];
    v11 = v0[3];
    if (v3 == 1)
    {
      v12 = v0[4];
      v13 = v0[5];
      v14 = *(v0 + 7);
      sub_19351DAA8();
    }

    else
    {
      sub_19351DA54();
    }
  }

  else
  {
    v7 = *v0;
    v9 = v0[1];
    sub_19351DAFC();
  }

  return OUTLINED_FUNCTION_154_0();
}

uint64_t ResponseGeneration.Event.ResponseCatalog.StateInfo.hash(into:)()
{
  OUTLINED_FUNCTION_132_3();
  if (v0)
  {
    OUTLINED_FUNCTION_138_3();
    if (v1)
    {
      OUTLINED_FUNCTION_58_7();
      sub_19351DBA4();
    }

    else
    {
      OUTLINED_FUNCTION_58_7();
      sub_19351DB50();
    }
  }

  else
  {
    sub_19351DBF8();
  }

  return OUTLINED_FUNCTION_154_0();
}

uint64_t ResponseGeneration.Event.ModelInference.StateInfo.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 33))
  {
    v3 = *v0;
    v5 = v0[1];
    v7 = v0[2];
    v9 = v0[3];
    v11 = *(v0 + 32);
    if (*(v0 + 33) == 1)
    {
      sub_19351DCA0();
    }

    else
    {
      sub_19351DC4C();
    }
  }

  else
  {
    v4 = *v0;
    v6 = v0[1];
    v8 = v0[2];
    v10 = v0[3];
    sub_19351DCF4();
  }

  return OUTLINED_FUNCTION_154_0();
}

uint64_t ResponseGeneration.Event.HallucinationDetection.StateInfo.hash(into:)()
{
  OUTLINED_FUNCTION_132_3();
  if (v0)
  {
    OUTLINED_FUNCTION_138_3();
    if (v1)
    {
      OUTLINED_FUNCTION_58_7();
      sub_19351DD9C();
    }

    else
    {
      OUTLINED_FUNCTION_58_7();
      sub_19351DD48();
    }
  }

  else
  {
    sub_19351DDF0();
  }

  return OUTLINED_FUNCTION_154_0();
}

uint64_t ResponseGeneration.Event.CacheManagerCall.StateInfo.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 33))
  {
    OUTLINED_FUNCTION_172_2();
    if (v2)
    {
      OUTLINED_FUNCTION_103_5();
      sub_19351DE98();
    }

    else
    {
      OUTLINED_FUNCTION_103_5();
      sub_19351DE44();
    }
  }

  else
  {
    sub_19351DEEC();
  }

  return OUTLINED_FUNCTION_154_0();
}

uint64_t ResponseGeneration.Event.GMSCall.StateInfo.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 33))
  {
    OUTLINED_FUNCTION_172_2();
    if (v2)
    {
      OUTLINED_FUNCTION_103_5();
      sub_19351DF94();
    }

    else
    {
      OUTLINED_FUNCTION_103_5();
      sub_19351DF40();
    }
  }

  else
  {
    sub_19351DFE8();
  }

  return OUTLINED_FUNCTION_154_0();
}

void static ResponseGeneration.Event.EventType.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v120 = v3;
  v121 = v4;
  v5 = type metadata accessor for ResponseGeneration.Event.GMSCall(0);
  v6 = OUTLINED_FUNCTION_47(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15_8();
  v116[5] = v9;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v10);
  v116[4] = v116 - v11;
  v12 = type metadata accessor for ResponseGeneration.Event.CacheManagerCall(0);
  v13 = OUTLINED_FUNCTION_47(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15_8();
  v116[3] = v16;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v17);
  v116[2] = v116 - v18;
  v19 = type metadata accessor for ResponseGeneration.Event.Generation(0);
  v20 = OUTLINED_FUNCTION_47(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15_8();
  v116[1] = v23;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v24);
  v116[0] = v116 - v25;
  v26 = type metadata accessor for ResponseGeneration.Event.EventType(0);
  v27 = OUTLINED_FUNCTION_4_1(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15_8();
  v119 = v30;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v31);
  v118 = v116 - v32;
  OUTLINED_FUNCTION_47_3();
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = v116 - v35;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_134_4();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_173_3();
  MEMORY[0x1EEE9AC00](v38);
  v117 = v116 - v39;
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_66_4();
  MEMORY[0x1EEE9AC00](v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C1D8, &qword_19395B520);
  OUTLINED_FUNCTION_47(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_3_0();
  v46 = MEMORY[0x1EEE9AC00](v45);
  v48 = v116 - v47;
  v49 = v116 + *(v46 + 56) - v47;
  sub_19351E57C();
  v121 = v49;
  sub_19351E57C();
  OUTLINED_FUNCTION_88_6();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_1_34();
      sub_19351E57C();
      v52 = v48;
      v87 = *v2;
      v86 = v2[1];
      v88 = v2[2];
      v70 = v2[3];
      v72 = *(v2 + 16);
      if (OUTLINED_FUNCTION_87_6() == 1)
      {
        v89 = *v26;
        v90 = v26[1];
        v120 = v52;
        OUTLINED_FUNCTION_63_6();
        v126[0] = v87;
        v126[1] = v86;
        v126[2] = v88;
        v126[3] = v70;
        LOWORD(v126[4]) = v72;
        v124 = v89;
        v125 = v90;
        v92 = OUTLINED_FUNCTION_62_11(v91);
        static ResponseGeneration.Event.RequestValidation.== infix(_:_:)(v92, v93);
        goto LABEL_16;
      }

      v110 = OUTLINED_FUNCTION_44_7();
      goto LABEL_26;
    case 2u:
      OUTLINED_FUNCTION_1_34();
      v67 = v117;
      sub_19351E57C();
      memcpy(v126, v67, 0x48uLL);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_185_2(&v124);
        memcpy(v123, v67, sizeof(v123));
        OUTLINED_FUNCTION_185_2(&v122);
        static ResponseGeneration.Event.Override.== infix(_:_:)();
        sub_193510818(&v124);
        sub_193510818(v126);
        goto LABEL_33;
      }

      sub_193510818(v126);
      goto LABEL_30;
    case 3u:
      OUTLINED_FUNCTION_1_34();
      sub_19351E57C();
      v69 = *v1;
      v68 = v1[1];
      v52 = v48;
      v71 = v1[2];
      v70 = v1[3];
      v72 = *(v1 + 16);
      if (OUTLINED_FUNCTION_87_6() == 3)
      {
        v73 = *v26;
        v74 = v26[1];
        v120 = v52;
        OUTLINED_FUNCTION_63_6();
        v126[0] = v69;
        v126[1] = v68;
        v126[2] = v71;
        v126[3] = v70;
        LOWORD(v126[4]) = v72;
        v124 = v73;
        v125 = v74;
        v76 = OUTLINED_FUNCTION_62_11(v75);
        static ResponseGeneration.Event.ResponseCatalog.== infix(_:_:)(v76, v77);
        OUTLINED_FUNCTION_109_6();
        OUTLINED_FUNCTION_136_2();
        sub_19345D748(v78, v79, v80, v81, v82);
        v83 = OUTLINED_FUNCTION_19_3();
        v85 = v71;
        goto LABEL_17;
      }

      v110 = OUTLINED_FUNCTION_19_3();
      v112 = v71;
LABEL_26:
      sub_19345D748(v110, v111, v112, v70, v72);
      goto LABEL_27;
    case 4u:
      OUTLINED_FUNCTION_1_34();
      OUTLINED_FUNCTION_166();
      sub_19351E57C();
      v51 = *v0;
      v50 = v0[1];
      v52 = v48;
      v54 = v0[2];
      v53 = v0[3];
      v55 = *(v0 + 16);
      if (OUTLINED_FUNCTION_87_6() == 4)
      {
        v56 = *v26;
        v57 = v26[1];
        v120 = v52;
        OUTLINED_FUNCTION_63_6();
        v126[0] = v51;
        v126[1] = v50;
        v126[2] = v54;
        v126[3] = v53;
        LOWORD(v126[4]) = v55;
        v124 = v56;
        v125 = v57;
        v59 = OUTLINED_FUNCTION_62_11(v58);
        static ResponseGeneration.Event.ModelInference.== infix(_:_:)(v59);
        OUTLINED_FUNCTION_136_2();
        sub_193510804(v60, v61, v62, v63, v64);
        v65 = OUTLINED_FUNCTION_19_3();
        sub_193510804(v65, v66, v54, v53, v55);
        goto LABEL_33;
      }

      v108 = OUTLINED_FUNCTION_19_3();
      sub_193510804(v108, v109, v54, v53, v55);
LABEL_27:
      v48 = v52;
      goto LABEL_30;
    case 5u:
      OUTLINED_FUNCTION_1_34();
      sub_19351E57C();
      v94 = v48;
      v96 = *v36;
      v95 = *(v36 + 1);
      v97 = *(v36 + 2);
      v70 = *(v36 + 3);
      v72 = *(v36 + 16);
      if (OUTLINED_FUNCTION_87_6() != 5)
      {
        v113 = OUTLINED_FUNCTION_44_7();
        sub_19345D748(v113, v114, v115, v70, v72);
        v48 = v94;
        goto LABEL_30;
      }

      v120 = v94;
      v98 = *v26;
      v99 = v26[1];
      OUTLINED_FUNCTION_63_6();
      v126[0] = v96;
      v126[1] = v95;
      v126[2] = v97;
      v126[3] = v70;
      LOWORD(v126[4]) = v72;
      v124 = v98;
      v125 = v99;
      v101 = OUTLINED_FUNCTION_62_11(v100);
      static ResponseGeneration.Event.HallucinationDetection.== infix(_:_:)(v101, v102);
LABEL_16:
      OUTLINED_FUNCTION_136_2();
      sub_19345D748(v103, v104, v105, v106, v107);
      v83 = OUTLINED_FUNCTION_44_7();
LABEL_17:
      sub_19345D748(v83, v84, v85, v70, v72);
      goto LABEL_33;
    case 6u:
      OUTLINED_FUNCTION_1_34();
      sub_19351E57C();
      if (OUTLINED_FUNCTION_87_6() != 6)
      {
        goto LABEL_29;
      }

      sub_19351E5D8();
      sub_19351E5D8();
      OUTLINED_FUNCTION_55();
      static ResponseGeneration.Event.CacheManagerCall.== infix(_:_:)();
      goto LABEL_20;
    case 7u:
      OUTLINED_FUNCTION_1_34();
      sub_19351E57C();
      if (OUTLINED_FUNCTION_87_6() != 7)
      {
        goto LABEL_29;
      }

      sub_19351E5D8();
      sub_19351E5D8();
      OUTLINED_FUNCTION_55();
      static ResponseGeneration.Event.GMSCall.== infix(_:_:)();
LABEL_20:
      sub_19351E634();
      goto LABEL_32;
    default:
      OUTLINED_FUNCTION_1_34();
      sub_19351E57C();
      if (OUTLINED_FUNCTION_87_6())
      {
        OUTLINED_FUNCTION_83_6();
LABEL_29:
        sub_19351E634();
LABEL_30:
        sub_19344E6DC(v48, &qword_1EAE3C1D8, &qword_19395B520);
      }

      else
      {
        sub_19351E5D8();
        sub_19351E5D8();
        OUTLINED_FUNCTION_107_5();
        static ResponseGeneration.Event.Generation.== infix(_:_:)();
        sub_19351E634();
LABEL_32:
        sub_19351E634();
LABEL_33:
        OUTLINED_FUNCTION_76_6();
        sub_19351E634();
      }

      OUTLINED_FUNCTION_116();
      return;
  }
}

void ResponseGeneration.Event.EventType.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for ResponseGeneration.Event.GMSCall(v0);
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = OUTLINED_FUNCTION_5_30();
  v6 = type metadata accessor for ResponseGeneration.Event.CacheManagerCall(v5);
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v10 = type metadata accessor for ResponseGeneration.Event.Generation(0);
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v14 = type metadata accessor for ResponseGeneration.Event.EventType(0);
  v15 = OUTLINED_FUNCTION_4_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_1();
  v20 = (v19 - v18);
  OUTLINED_FUNCTION_1_34();
  sub_19351E57C();
  OUTLINED_FUNCTION_125_3();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_36_12();
      sub_19351E18C();
      goto LABEL_9;
    case 2u:
      memcpy(v32, v20, sizeof(v32));
      memcpy(v31, v20, sizeof(v31));
      sub_19351E138();
      sub_19393C540();
      sub_193510818(v32);
      goto LABEL_12;
    case 3u:
      OUTLINED_FUNCTION_36_12();
      sub_19351E0E4();
      goto LABEL_9;
    case 4u:
      OUTLINED_FUNCTION_36_12();
      sub_19351E090();
      sub_19393C540();
      v21 = OUTLINED_FUNCTION_148_3();
      sub_193510804(v21, v22, v23, v24, v25);
      goto LABEL_12;
    case 5u:
      OUTLINED_FUNCTION_36_12();
      sub_19351E03C();
LABEL_9:
      sub_19393C540();
      v26 = OUTLINED_FUNCTION_148_3();
      sub_19345D748(v26, v27, v28, v29, v30);
      goto LABEL_12;
    case 6u:
      sub_19351E5D8();
      sub_19351E688(&qword_1EAE3C1E8, type metadata accessor for ResponseGeneration.Event.CacheManagerCall);
      OUTLINED_FUNCTION_21_1();
      sub_19393C540();
      goto LABEL_11;
    case 7u:
      sub_19351E5D8();
      sub_19351E688(&qword_1EAE3C1E0, type metadata accessor for ResponseGeneration.Event.GMSCall);
      OUTLINED_FUNCTION_21_1();
      sub_19393C540();
      goto LABEL_11;
    default:
      OUTLINED_FUNCTION_19_3();
      sub_19351E5D8();
      sub_19351E688(&qword_1EAE3C218, type metadata accessor for ResponseGeneration.Event.Generation);
      OUTLINED_FUNCTION_21_1();
      sub_19393C540();
      OUTLINED_FUNCTION_83_6();
LABEL_11:
      sub_19351E634();
LABEL_12:
      OUTLINED_FUNCTION_116();
      return;
  }
}

void PlanGeneration.PlanGenerationFailureReason.init(rawValue:)(void *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = a2;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t PlanGeneration.PlanGenerationFailureReason.rawValue.getter()
{
  if (v0[8])
  {
    return 1;
  }

  else
  {
    return *v0;
  }
}

uint64_t static PlanGeneration.PlanGenerationFailureReason.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  v6 = sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v7 >> 1 <= v8)
  {
    v18 = OUTLINED_FUNCTION_39(v7);
    v22 = OUTLINED_FUNCTION_84_2(v18, v19, v20, v21, &qword_1EAE3C3D0, &qword_19395BB40);
    OUTLINED_FUNCTION_17_2(v22);
  }

  *(v6 + 2) = v8 + 1;
  OUTLINED_FUNCTION_92_4();
  if (v14 < (v8 + 2))
  {
    v23 = OUTLINED_FUNCTION_39(v13);
    v9 = OUTLINED_FUNCTION_85(v23, v24, v25, v26, &qword_1EAE3C3D0, &qword_19395BB40);
    v12 = v9;
  }

  OUTLINED_FUNCTION_47_5(v9, v10, v11, v12);
  *(v15 + 32) = 0;
  *(v15 + 40) = 1;
  return v16;
}

unint64_t PlanGeneration.PlanGenerationFailureReason.description.getter()
{
  if (*(v0 + 8))
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x6E776F6E6B6E55;
  }

  *(v0 + 8);
  return result;
}

uint64_t PlanGeneration.PlanGenerationFailureReason.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    LOBYTE(v2) = 0;
  }

  else if (v2 == 0xD000000000000010 && 0x8000000193A19A00 == v1)
  {

    LOBYTE(v2) = 1;
  }

  else
  {
    OUTLINED_FUNCTION_25_7();
    result = OUTLINED_FUNCTION_89();
  }

  *v0 = 0;
  *(v0 + 8) = v2 & 1;
  *(v0 + 9) = 0;
  return result;
}

void static PlanGeneration.StateInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v3 = OUTLINED_FUNCTION_133_4();
  v4 = type metadata accessor for PlanGeneration.Ended(v3);
  v5 = OUTLINED_FUNCTION_47(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_38_11();
  v10 = type metadata accessor for PlanGeneration.StateInfo(v9);
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_66_4();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_97_4();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_98_6();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C220, &qword_19395B528);
  OUTLINED_FUNCTION_47(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_53_7();
  v21 = v0 + *(v20 + 56);
  sub_19351E57C();
  OUTLINED_FUNCTION_107_5();
  sub_19351E57C();
  v22 = OUTLINED_FUNCTION_162_3();
  if (v22)
  {
    if (v22 == 1)
    {
      OUTLINED_FUNCTION_12_20();
      OUTLINED_FUNCTION_102_4();
      sub_19351E57C();
      OUTLINED_FUNCTION_55();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_19351E5D8();
        OUTLINED_FUNCTION_120_2();
        OUTLINED_FUNCTION_94_5();
        static PlanGeneration.Ended.== infix(_:_:)();
        sub_19351E634();
        OUTLINED_FUNCTION_127();
        sub_19351E634();
LABEL_13:
        OUTLINED_FUNCTION_153_4();
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_86_6();
      sub_19351E634();
    }

    else
    {
      OUTLINED_FUNCTION_12_20();
      OUTLINED_FUNCTION_114_0();
      sub_19351E57C();
      v25 = *v1;
      v24 = v1[1];
      v27 = v1[2];
      v26 = v1[3];
      v28 = *(v1 + 32);
      OUTLINED_FUNCTION_55();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v29 = OUTLINED_FUNCTION_30_7();
        static PlanGeneration.Failed.== infix(_:_:)(v29);
        v30 = OUTLINED_FUNCTION_125_3();
        sub_193456418(v30, v31);
        v32 = OUTLINED_FUNCTION_44_7();
        OUTLINED_FUNCTION_160_4(v32, v33);
        goto LABEL_13;
      }

      v34 = OUTLINED_FUNCTION_44_7();
      OUTLINED_FUNCTION_160_4(v34, v35);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_20();
    OUTLINED_FUNCTION_186();
    v23 = *(v2 + 8);
    OUTLINED_FUNCTION_55();
    if (!swift_getEnumCaseMultiPayload())
    {
      v36 = OUTLINED_FUNCTION_128_3();
      static PlanGeneration.Started.== infix(_:_:)(v36);

      goto LABEL_13;
    }
  }

  sub_19344E6DC(v0, &qword_1EAE3C220, &qword_19395B528);
LABEL_14:
  OUTLINED_FUNCTION_123_4();
  OUTLINED_FUNCTION_116();
}

uint64_t PlanGeneration.StateInfo.hash(into:)()
{
  v1 = OUTLINED_FUNCTION_57_3();
  v2 = type metadata accessor for PlanGeneration.Ended(v1);
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = OUTLINED_FUNCTION_5_30();
  v7 = type metadata accessor for PlanGeneration.StateInfo(v6);
  v8 = OUTLINED_FUNCTION_4_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_12_20();
  OUTLINED_FUNCTION_55();
  sub_19351E57C();
  OUTLINED_FUNCTION_109_6();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_95_5();
      sub_19351E688(&qword_1EAE3C230, type metadata accessor for PlanGeneration.Ended);
      OUTLINED_FUNCTION_21_1();
      sub_19393C540();
      OUTLINED_FUNCTION_86_6();
      return sub_19351E634();
    }

    else
    {
      OUTLINED_FUNCTION_59_9();
      sub_19351E1E0();
      OUTLINED_FUNCTION_163_2();
      v13 = OUTLINED_FUNCTION_94_5();
      return OUTLINED_FUNCTION_161_2(v13, v14);
    }
  }

  else
  {
    v15 = *v0;
    v16 = v0[1];
    sub_19351E234();
    OUTLINED_FUNCTION_163_2();
  }
}

BOOL static PlanGeneration.Event.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_3_4();
  v5 = type metadata accessor for PlanGeneration.Event.PlanCreation(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v9);
  v10 = *v2;
  v11 = *a2;
  if (v10 < 0)
  {
    if (v11 < 0)
    {
      v14 = v10 & 0x7FFFFFFFFFFFFFFFLL;
      v15 = *(v14 + 64);
      v16 = v11 & 0x7FFFFFFFFFFFFFFFLL;
      v17 = *(v16 + 64);
      v18 = *(v14 + 32);
      v23[0] = *(v14 + 16);
      v23[1] = v18;
      v23[2] = *(v14 + 48);
      v24 = v15;
      v19 = *(v16 + 32);
      v21[0] = *(v16 + 16);
      v21[1] = v19;
      v21[2] = *(v16 + 48);
      v22 = v17;

      v13 = static PlanGeneration.Event.ModelInference.== infix(_:_:)(v23, v21);
      goto LABEL_7;
    }
  }

  else if ((v11 & 0x8000000000000000) == 0)
  {
    swift_projectBox();
    swift_projectBox();
    sub_19351E57C();
    sub_19351E57C();

    static PlanGeneration.Event.PlanCreation.== infix(_:_:)();
    v13 = v12;
    sub_19351E634();
    OUTLINED_FUNCTION_109_6();
    sub_19351E634();
LABEL_7:

    return v13;
  }

  return 0;
}

uint64_t PlanGeneration.Event.hash(into:)()
{
  v1 = OUTLINED_FUNCTION_3_4();
  v2 = type metadata accessor for PlanGeneration.Event.PlanCreation(v1);
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_7();
  v6 = *v0;
  if (*v0 < 0)
  {
    v8 = *((v6 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v9 = *((v6 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v10 = *((v6 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
    v11 = *((v6 & 0x7FFFFFFFFFFFFFFFLL) + 0x40);
    sub_19351E288();
    return sub_19393C540();
  }

  else
  {
    swift_projectBox();
    sub_19351E57C();
    sub_19351E688(&qword_1EAE3C248, type metadata accessor for PlanGeneration.Event.PlanCreation);
    OUTLINED_FUNCTION_21_1();
    sub_19393C540();
    return sub_19351E634();
  }
}

void static PlanGeneration.Event.PlanCreation.StateInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v3 = OUTLINED_FUNCTION_133_4();
  v4 = type metadata accessor for PlanGeneration.Event.PlanCreation.Ended(v3);
  v5 = OUTLINED_FUNCTION_47(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_47_3();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_38_11();
  v10 = type metadata accessor for PlanGeneration.Event.PlanCreation.StateInfo(v9);
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_66_4();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_97_4();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_98_6();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3C250, &qword_19395B530);
  OUTLINED_FUNCTION_47(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_53_7();
  v21 = v0 + *(v20 + 56);
  sub_19351E57C();
  OUTLINED_FUNCTION_107_5();
  sub_19351E57C();
  v22 = OUTLINED_FUNCTION_162_3();
  if (v22)
  {
    if (v22 == 1)
    {
      OUTLINED_FUNCTION_11_19();
      OUTLINED_FUNCTION_102_4();
      sub_19351E57C();
      OUTLINED_FUNCTION_55();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_19351E5D8();
        OUTLINED_FUNCTION_120_2();
        OUTLINED_FUNCTION_94_5();
        static PlanGeneration.Event.PlanCreation.Ended.== infix(_:_:)();
        sub_19351E634();
        OUTLINED_FUNCTION_127();
        sub_19351E634();
LABEL_13:
        OUTLINED_FUNCTION_153_4();
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_85_6();
      sub_19351E634();
    }

    else
    {
      OUTLINED_FUNCTION_11_19();
      OUTLINED_FUNCTION_114_0();
      sub_19351E57C();
      v25 = *v1;
      v24 = v1[1];
      v27 = v1[2];
      v26 = v1[3];
      v28 = *(v1 + 32);
      OUTLINED_FUNCTION_55();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v29 = OUTLINED_FUNCTION_30_7();
        static PlanGeneration.Event.PlanCreation.Failed.== infix(_:_:)(v29);
        v30 = OUTLINED_FUNCTION_125_3();
        sub_193456418(v30, v31);
        v32 = OUTLINED_FUNCTION_44_7();
        OUTLINED_FUNCTION_160_4(v32, v33);
        goto LABEL_13;
      }

      v34 = OUTLINED_FUNCTION_44_7();
      OUTLINED_FUNCTION_160_4(v34, v35);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_19();
    OUTLINED_FUNCTION_186();
    v23 = *(v2 + 8);
    OUTLINED_FUNCTION_55();
    if (!swift_getEnumCaseMultiPayload())
    {
      v36 = OUTLINED_FUNCTION_128_3();
      static PlanGeneration.Event.PlanCreation.Started.== infix(_:_:)(v36);

      goto LABEL_13;
    }
  }

  sub_19344E6DC(v0, &qword_1EAE3C250, &qword_19395B530);
LABEL_14:
  OUTLINED_FUNCTION_123_4();
  OUTLINED_FUNCTION_116();
}

uint64_t PlanGeneration.Event.PlanCreation.StateInfo.hash(into:)()
{
  v1 = OUTLINED_FUNCTION_57_3();
  v2 = type metadata accessor for PlanGeneration.Event.PlanCreation.Ended(v1);
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = OUTLINED_FUNCTION_5_30();
  v7 = type metadata accessor for PlanGeneration.Event.PlanCreation.StateInfo(v6);
  v8 = OUTLINED_FUNCTION_4_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_11_19();
  OUTLINED_FUNCTION_55();
  sub_19351E57C();
  OUTLINED_FUNCTION_109_6();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_95_5();
      sub_19351E688(&qword_1EAE3C260, type metadata accessor for PlanGeneration.Event.PlanCreation.Ended);
      OUTLINED_FUNCTION_21_1();
      sub_19393C540();
      OUTLINED_FUNCTION_85_6();
      return sub_19351E634();
    }

    else
    {
      OUTLINED_FUNCTION_59_9();
      sub_19351E2DC();
      OUTLINED_FUNCTION_163_2();
      v13 = OUTLINED_FUNCTION_94_5();
      return OUTLINED_FUNCTION_161_2(v13, v14);
    }
  }

  else
  {
    v15 = *v0;
    v16 = v0[1];
    sub_19351E330();
    OUTLINED_FUNCTION_163_2();
  }
}

uint64_t sub_193519CFC()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_56_4();
  v9 = sub_1934B0FCC(v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_105_1(v9);
  if (!(!v15 & v14))
  {
    v38 = OUTLINED_FUNCTION_33_5((v13 > 1), v10, v11, v12);
    OUTLINED_FUNCTION_17_2(v38);
  }

  *(v12 + 16) = v0;
  OUTLINED_FUNCTION_92_4();
  if (v21 < v1 + 2)
  {
    v39 = OUTLINED_FUNCTION_39_2((v20 > 1), v17, v18, v19);
    v16 = OUTLINED_FUNCTION_17_2(v39);
  }

  OUTLINED_FUNCTION_100_7(v16, v17, v18, v19);
  OUTLINED_FUNCTION_176_0();
  if (v27 != v28)
  {
    v22 = OUTLINED_FUNCTION_33_5((v26 > 1), v23, v24, v25);
    v25 = v22;
  }

  OUTLINED_FUNCTION_160_1(v22, v23, v24, v25);
  *(v33 + 32) = v2;
  *(v33 + 40) = v2;
  v34 = *(v32 + 24);
  if (v1 + 4 > (v34 >> 1))
  {
    v29 = OUTLINED_FUNCTION_39_2((v34 > 1), v30, v31, v32);
    v32 = v29;
  }

  OUTLINED_FUNCTION_149(v29, v30, v31, v32);
  return OUTLINED_FUNCTION_38_1(v35, v36);
}

uint64_t PlanGeneration.Event.ModelInference.Interface.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0xD000000000000020;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000033;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

void PlanGeneration.Event.ModelInference.Interface.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_26_4();
    v6 = v3 && v5 == v0;
    if (v6 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v7 = v1 == 0xD000000000000020 && 0x8000000193A19A60 == v0;
      if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else if (v1 == 0xD000000000000033 && 0x8000000193A19A20 == v0)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_0_9();
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_152_0();
        if (v3)
        {
          v4 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t static PlanGeneration.Event.ModelInference.StateInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v110 = v4;
  v111 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *a2;
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v11 = *(a2 + 40);
  v13 = *(a2 + 48);
  if (!(v7 >> 14))
  {
    v107 = *(a2 + 16);
    v48 = *(a1 + 48);
    if ((*(a2 + 48) & 0xC000) == 0)
    {
      v105 = *(a2 + 48);
      v98 = static PlanGeneration.Event.ModelInference.Started.== infix(_:_:)();
      v49 = OUTLINED_FUNCTION_131_4();
      sub_193511EB4(v49, v50, v51, v110, v6, v111, v7);
      OUTLINED_FUNCTION_137_1();
      sub_193511EB4(v52, v53, v54, v55, v56, v57, v105);
      return v98 & 1;
    }

    goto LABEL_12;
  }

  v104 = *(a2 + 48);
  if (v7 >> 14 != 1)
  {
    v102 = *a2;
    if ((v13 & 0xC000) == 0x8000)
    {
      v59 = *(a2 + 24);
      v101 = *(a2 + 8);
      v60 = *(a2 + 16);
      v61 = *(a2 + 32);
      v100 = *a1;
      sub_193511EEC(v8, v101, v9, v59, v61, v11, v13);
      v62 = OUTLINED_FUNCTION_131_4();
      sub_193511EEC(v62, v63, v64, v4, v6, v111, v7);
      sub_193511EEC(v102, v101, v60, v59, v61, v11, v104);
      v65 = OUTLINED_FUNCTION_125_3();
      v109 = v7;
      sub_193511EEC(v65, v66, v5, v4, v6, v111, v7);
      v67 = OUTLINED_FUNCTION_170_1();
      v25 = static PlanGeneration.Event.ModelInference.Failed.== infix(_:_:)(v67);
      v68 = OUTLINED_FUNCTION_125_3();
      sub_193511EB4(v68, v69, v5, v4, v6, v111, v7);
      sub_193511EB4(v102, v101, v60, v59, v61, v11, v104);
      OUTLINED_FUNCTION_56_4();
      sub_193511EB4(v70, v71, v72, v73, v74, v75, v104);
      v43 = v100;
      v44 = v3;
      v45 = v5;
      v46 = v4;
      v47 = v6;
      goto LABEL_9;
    }

    v108 = *(a2 + 16);
    v78 = OUTLINED_FUNCTION_170_1();
    v48 = v7;
    sub_1935123C0(v78, v79);
LABEL_12:
    OUTLINED_FUNCTION_137_1();
    v81 = v80;
    sub_193511EEC(v82, v83, v84, v85, v86, v87, v80);
    v88 = OUTLINED_FUNCTION_131_4();
    sub_193511EB4(v88, v89, v90, v110, v6, v111, v48);
    OUTLINED_FUNCTION_137_1();
    sub_193511EB4(v91, v92, v93, v94, v95, v96, v81);
    v25 = 0;
    return v25 & 1;
  }

  v106 = *(a2 + 16);
  if ((v13 & 0xC000) != 0x4000)
  {
    v103 = *a2;
    v76 = OUTLINED_FUNCTION_170_1();
    v48 = v7;
    sub_19351216C(v76, v77);
    goto LABEL_12;
  }

  v97 = *(a1 + 8);
  v14 = *(a2 + 32);
  v15 = *(a2 + 16);
  sub_193511EEC(v8, *(a2 + 8), v9, v10, v14, v11, v13);
  sub_193511EEC(v2, v97, v5, v4, v6, v111, v7);
  v16 = OUTLINED_FUNCTION_102_4();
  sub_193511EEC(v16, v17, v15, v10, v14, v11, v104);
  v99 = v2;
  OUTLINED_FUNCTION_183_1();
  v109 = v7;
  sub_193511EEC(v18, v19, v20, v21, v22, v111, v7);
  v23 = OUTLINED_FUNCTION_170_1();
  v25 = static PlanGeneration.Event.ModelInference.Ended.== infix(_:_:)(v23, v24);
  OUTLINED_FUNCTION_183_1();
  sub_193511EB4(v26, v27, v28, v29, v30, v111, v7);
  OUTLINED_FUNCTION_56_4();
  sub_193511EB4(v31, v32, v33, v34, v35, v36, v104);
  OUTLINED_FUNCTION_56_4();
  sub_193511EB4(v37, v38, v39, v40, v41, v42, v104);
  v43 = v99;
  v44 = v97;
  v45 = v5;
  v46 = v4;
  v47 = v6;
LABEL_9:
  sub_193511EB4(v43, v44, v45, v46, v47, v111, v109);
  return v25 & 1;
}

uint64_t PlanGeneration.Event.ModelInference.StateInfo.hash(into:)()
{
  v1 = *(v0 + 24);
  if (v1 >> 14)
  {
    v3 = *v0;
    v2 = v0[1];
    v5 = v0[2];
    v4 = v0[3];
    v7 = v0[4];
    v6 = v0[5];
    if (v1 >> 14 == 1)
    {
      v10 = v0[2];
      v13 = v0[4];
      v14 = v0[5];
      sub_19351E3D8();
    }

    else
    {
      v9 = v0[1];
      v11 = v0[2];
      v12 = v0[3];
      v15 = v0[5];
      sub_19351E384();
    }
  }

  else
  {
    sub_19351E42C();
  }

  return sub_19393C540();
}

void IntelligenceFlowFeedbackLearning.EvaluationType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
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

uint64_t IntelligenceFlowFeedbackLearning.EvaluationType.rawValue.getter()
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

uint64_t IntelligenceFlowFeedbackLearning.EvaluationType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0x6C6176456C6C7546;
  }

  return 0x6C61764574736146;
}

void IntelligenceFlowFeedbackLearning.EvaluationType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0 || (v1 == 0x6C61764574736146 ? (v4 = v0 == 0xED0000726F746175) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else if (v1 == 0x6C6176456C6C7546 && v0 == 0xED0000726F746175)
  {

    v5 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_9();

    v5 = v7 & 1;
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t sub_19351A6CC()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_56_4();
  v9 = sub_1934B0FCC(v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_105_1(v9);
  if (!(!v15 & v14))
  {
    v32 = OUTLINED_FUNCTION_33_5((v13 > 1), v10, v11, v12);
    OUTLINED_FUNCTION_17_2(v32);
  }

  *(v12 + 16) = v0;
  OUTLINED_FUNCTION_92_4();
  if (v21 < v1 + 2)
  {
    v33 = OUTLINED_FUNCTION_39_2((v20 > 1), v17, v18, v19);
    v16 = OUTLINED_FUNCTION_17_2(v33);
  }

  OUTLINED_FUNCTION_100_7(v16, v17, v18, v19);
  OUTLINED_FUNCTION_176_0();
  if (v27 != v28)
  {
    v22 = OUTLINED_FUNCTION_33_5((v26 > 1), v23, v24, v25);
    v25 = v22;
  }

  OUTLINED_FUNCTION_160_1(v22, v23, v24, v25);
  *(v29 + 32) = v2;
  *(v29 + 40) = v2;
  return v30;
}

uint64_t IntelligenceFlowFeedbackLearning.ActionResolutionState.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    result = 0x6574656C706D6F43;
  }

  else
  {
    result = 0x656C706D6F636E49;
  }

  *v0;
  return result;
}

void IntelligenceFlowFeedbackLearning.ActionResolutionState.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0 || (v1 == 0x656C706D6F636E49 ? (v4 = v0 == 0xEA00000000006574) : (v4 = 0), v4 || (OUTLINED_FUNCTION_0_9() & 1) != 0))
  {

    v5 = 0;
  }

  else if (v1 == 0x6574656C706D6F43 && v0 == 0xE800000000000000)
  {

    v5 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_9();

    v5 = v7 & 1;
  }

  OUTLINED_FUNCTION_12_1(v5);
}

void IntelligenceFlowFeedbackLearning.TaskStatus.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_156_3();
        break;
      case 2:
        OUTLINED_FUNCTION_38();
        break;
      case 3:
        OUTLINED_FUNCTION_101_6(9);
        break;
      case 7:
        OUTLINED_FUNCTION_155_2();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void IntelligenceFlowFeedbackLearning.TaskStatus.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x6E55746C75736552 && v0 == 0xED00006E776F6E6BLL;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v7 = v1 == OUTLINED_FUNCTION_156_3() && v0 == v6;
      if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_26_4();
        v9 = v3 && v8 == v0;
        if (v9 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v10 = v1 == 0xD00000000000001FLL && 0x8000000193A19AD0 == v0;
          if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v11 = v1 == 0xD00000000000001ELL && 0x8000000193A19AB0 == v0;
            if (v11 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v12 = v1 == 0x656E6F646E616241 && v0 == 0xE900000000000064;
              if (v12 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v13 = v1 == 0x656C6C65636E6143 && v0 == 0xE900000000000064;
                if (v13 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else if (v1 == OUTLINED_FUNCTION_155_2() && v0 == v14)
                {

                  OUTLINED_FUNCTION_91_3();
                }

                else
                {
                  OUTLINED_FUNCTION_0_9();
                  OUTLINED_FUNCTION_89();
                  v4 = 7;
                  if ((v1 & 1) == 0)
                  {
                    v4 = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t IntelligenceFlowFeedbackLearning.TaskPromptStatus.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
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
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t IntelligenceFlowFeedbackLearning.TaskPromptStatus.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 1701736270;
  switch(*v0)
  {
    case 1:
    case 2:
      result = 0x616D7269666E6F43;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

void IntelligenceFlowFeedbackLearning.TaskPromptStatus.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 1701736270 && v0 == 0xE400000000000000;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v6 = v1 == 0x616D7269666E6F43 && v0 == 0xEF7365596E6F6974;
      if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v7 = v1 == 0x616D7269666E6F43 && v0 == 0xEE006F4E6E6F6974;
        if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else if (v1 == 0xD000000000000013 && 0x8000000193A19B10 == v0)
        {

          OUTLINED_FUNCTION_59();
        }

        else
        {
          OUTLINED_FUNCTION_25_7();
          OUTLINED_FUNCTION_89();
          v4 = 3;
          if ((v1 & 1) == 0)
          {
            v4 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t sub_19351AE88()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_56_4();
  v9 = sub_1934B0FCC(v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_63_2(v9);
  if (!(!v15 & v14))
  {
    v69 = OUTLINED_FUNCTION_33_5((v13 > 1), v10, v11, v12);
    OUTLINED_FUNCTION_17_2(v69);
  }

  *(v12 + 16) = v0;
  OUTLINED_FUNCTION_92_4();
  if (v21 < v2 + 2)
  {
    v70 = OUTLINED_FUNCTION_39_2((v20 > 1), v17, v18, v19);
    v16 = OUTLINED_FUNCTION_17_2(v70);
  }

  OUTLINED_FUNCTION_100_7(v16, v17, v18, v19);
  OUTLINED_FUNCTION_175_3();
  if (v26 != v27)
  {
    OUTLINED_FUNCTION_56_4();
    v22 = sub_1934B0FCC(v71, v72, v73, v74, v75, v76);
    v25 = v22;
  }

  OUTLINED_FUNCTION_45_0(v22, v23, v24, v25);
  if (!(v26 ^ v27 | v15))
  {
    v28 = OUTLINED_FUNCTION_33_5((v32 > 1), v29, v30, v31);
    v31 = v28;
  }

  OUTLINED_FUNCTION_32(v28, v29, v30, v31);
  if (!(v26 ^ v27 | v15))
  {
    v33 = OUTLINED_FUNCTION_39_2((v37 > 1), v34, v35, v36);
    v36 = v33;
  }

  OUTLINED_FUNCTION_149(v33, v34, v35, v36);
  OUTLINED_FUNCTION_90_7(v38, v39);
  if (v2 + 6 > (v44 >> 1))
  {
    v40 = OUTLINED_FUNCTION_33_5((v44 > 1), v41, v42, v43);
    v43 = v40;
  }

  OUTLINED_FUNCTION_160_1(v40, v41, v42, v43);
  OUTLINED_FUNCTION_90_7(v45, v46);
  if (v2 + 7 > (v51 >> 1))
  {
    v47 = OUTLINED_FUNCTION_39_2((v51 > 1), v48, v49, v50);
    v50 = v47;
  }

  OUTLINED_FUNCTION_149(v47, v48, v49, v50);
  OUTLINED_FUNCTION_90_7(v52, v53);
  if (v2 + 8 > (v58 >> 1))
  {
    v54 = OUTLINED_FUNCTION_33_5((v58 > 1), v55, v56, v57);
    v57 = v54;
  }

  OUTLINED_FUNCTION_160_1(v54, v55, v56, v57);
  OUTLINED_FUNCTION_90_7(v59, v60);
  if (v2 + 9 > (v65 >> 1))
  {
    v61 = OUTLINED_FUNCTION_39_2((v65 > 1), v62, v63, v64);
    v64 = v61;
  }

  OUTLINED_FUNCTION_149(v61, v62, v63, v64);
  *(v66 + 32) = 7;
  *(v66 + 40) = v1;
  return v67;
}

void IntelligenceFlowFeedbackLearning.UserAlignmentCategory.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
      case 2:
      case 4:
      case 5:
        OUTLINED_FUNCTION_38();
        break;
      case 7:
        OUTLINED_FUNCTION_164_2();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void IntelligenceFlowFeedbackLearning.UserAlignmentCategory.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x79726F6765746143 && v0 == 0xEF6E776F6E6B6E55;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_26_4();
      v7 = v3 && v6 == v0;
      if (v7 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_26_4();
        v9 = v3 && v8 == v0;
        if (v9 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_142_2();
          v10 = v3 && v0 == 0xE800000000000000;
          if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_26_4();
            v12 = v3 && v11 == v0;
            if (v12 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_26_4();
              v14 = v3 && v13 == v0;
              if (v14 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v15 = v1 == 0xD000000000000023 && 0x8000000193A19B30 == v0;
                if (v15 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else if (v1 == OUTLINED_FUNCTION_164_2() && v0 == v16)
                {

                  OUTLINED_FUNCTION_91_3();
                }

                else
                {
                  OUTLINED_FUNCTION_0_9();
                  OUTLINED_FUNCTION_89();
                  v4 = 7;
                  if ((v1 & 1) == 0)
                  {
                    v4 = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t _s27IntelligencePlatformLibrary0A20FlowFeedbackLearningV10TaskStatusO8rawValueAESgSi_tcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
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
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

void IntelligenceFlowFeedbackLearning.EvaluationSource.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 2:
      case 3:
      case 5:
        OUTLINED_FUNCTION_38();
        break;
      case 4:
        return;
      case 6:
        OUTLINED_FUNCTION_102_5();
        break;
      default:
        OUTLINED_FUNCTION_129_3();
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void IntelligenceFlowFeedbackLearning.EvaluationSource.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_52_5();
    v6 = v1 == 26 && v5 == v0;
    if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v7 = v1 == 17 && 0x8000000193A19C80 == v0;
      if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_26_4();
        v9 = v3 && v8 == v0;
        if (v9 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_26_4();
          v11 = v3 && v10 == v0;
          if (v11 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v12 = v1 == 0x61436E6F69746341 && v0 == 0xEF64656C6C65636ELL;
            if (v12 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_26_4();
              v14 = v3 && v13 == v0;
              if (v14 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                OUTLINED_FUNCTION_180_2();
                v16 = v3 && v15 == v0;
                if (v16 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else if (v1 == 25 && 0x8000000193A19BE0 == v0)
                {

                  OUTLINED_FUNCTION_91_3();
                }

                else
                {
                  OUTLINED_FUNCTION_0_9();
                  OUTLINED_FUNCTION_89();
                  v4 = 7;
                  if ((v1 & 1) == 0)
                  {
                    v4 = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

void IntelligenceFlowFeedbackLearning.EvaluationVote.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
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

uint64_t IntelligenceFlowFeedbackLearning.EvaluationVote.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    return *&aAbstain_0[8 * *v0];
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

void IntelligenceFlowFeedbackLearning.EvaluationVote.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x6E696174736241 && v0 == 0xE700000000000000;
    if (v5 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v6 = v1 == 0x73736563637553 && v0 == 0xE700000000000000;
      if (v6 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
      {

        v4 = 1;
      }

      else if (v1 == 0x6572756C696146 && v0 == 0xE700000000000000)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_22_7();
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_152_0();
        if (v3)
        {
          v4 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t sub_19351B888()
{
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_56_4();
  v9 = sub_1934B0FCC(v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_63_2(v9);
  if (!(!v15 & v14))
  {
    v41 = OUTLINED_FUNCTION_33_5((v13 > 1), v10, v11, v12);
    OUTLINED_FUNCTION_17_2(v41);
  }

  *(v12 + 16) = v0;
  OUTLINED_FUNCTION_92_4();
  if (v21 < v2 + 2)
  {
    v42 = OUTLINED_FUNCTION_39_2((v20 > 1), v17, v18, v19);
    v16 = OUTLINED_FUNCTION_17_2(v42);
  }

  OUTLINED_FUNCTION_100_7(v16, v17, v18, v19);
  OUTLINED_FUNCTION_175_3();
  if (v26 != v27)
  {
    OUTLINED_FUNCTION_56_4();
    v22 = sub_1934B0FCC(v43, v44, v45, v46, v47, v48);
    v25 = v22;
  }

  OUTLINED_FUNCTION_45_0(v22, v23, v24, v25);
  if (!(v26 ^ v27 | v15))
  {
    v28 = OUTLINED_FUNCTION_33_5((v32 > 1), v29, v30, v31);
    v31 = v28;
  }

  OUTLINED_FUNCTION_32(v28, v29, v30, v31);
  if (!(v26 ^ v27 | v15))
  {
    v33 = OUTLINED_FUNCTION_39_2((v37 > 1), v34, v35, v36);
    v36 = v33;
  }

  OUTLINED_FUNCTION_149(v33, v34, v35, v36);
  *(v38 + 32) = 3;
  *(v38 + 40) = v1;
  return v39;
}

void IntelligenceFlowFeedbackLearning.CandidateResolution.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_187_1();
        break;
      case 2:
        OUTLINED_FUNCTION_38();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void IntelligenceFlowFeedbackLearning.CandidateResolution.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x766C6F7365726E55 && v0 == 0xEA00000000006465;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_52_5();
      v7 = v1 == 19 && v6 == v0;
      if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_26_4();
        v9 = v3 && v8 == v0;
        if (v9 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_142_2();
          if (v3 && v0 == 0xE800000000000000)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_0_9();
            OUTLINED_FUNCTION_89();
            v4 = 3;
            if ((v1 & 1) == 0)
            {
              v4 = 0;
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t IntelligenceFlowFeedbackLearning.CandidateOutcome.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
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
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}