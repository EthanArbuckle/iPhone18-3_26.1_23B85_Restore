uint64_t sub_216EEEA88(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216EEEAE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216EEEB58(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216EEEBB8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216EEEC24()
{
  result = qword_280E2FC48[0];
  if (!qword_280E2FC48[0])
  {
    type metadata accessor for ToggleContactCheckAllowedAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2FC48);
  }

  return result;
}

uint64_t sub_216EEEC7C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0);
  v2 = sub_21700E244();
  type metadata accessor for UserSocialProfileCoordinator();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v3 = v23;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    v23 = *a1;
    v24 = v4;
    LOBYTE(v25) = v5 & 1;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20);
    MEMORY[0x21CE9BEE0]((&v22 + 7), v6);
    v7 = HIBYTE(v22);
  }

  else
  {
    v7 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x8000000217082A90;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = v7;
  v9 = sub_21700E384();
  sub_216CAE468(v9, v10, v11, v12, v13, v14, v15, v16, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);

  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  *(v17 + 24) = v7;
  *(v17 + 32) = v2;
  v18 = sub_2166AF2EC();
  swift_retain_n();
  v19 = v3;
  v20 = sub_21700EE84();
  v26 = v18;
  v27 = MEMORY[0x277D225C0];
  v23 = v20;
  sub_21700E1C4();

  __swift_destroy_boxed_opaque_existential_1Tm(&v23);
  return v2;
}

void sub_216EEEE98(_BYTE *a1, uint64_t a2, char a3)
{
  v5 = sub_21700D2A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    sub_216CB4528(a3 & 1);
    (*(v6 + 104))(v8, *MEMORY[0x277D21CA8], v5);
    sub_21700E224();
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    sub_216EEF024();
    v9 = swift_allocError();
    sub_21700E214();
  }
}

unint64_t sub_216EEF024()
{
  result = qword_27CACCD08;
  if (!qword_27CACCD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCD08);
  }

  return result;
}

_BYTE *_s7MusicUI22UpdateUserProfileErrorOwst_0(_BYTE *result, int a2, int a3)
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

unint64_t sub_216EEF128()
{
  result = qword_27CACCD10;
  if (!qword_27CACCD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCD10);
  }

  return result;
}

void sub_216EEF1CC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetWidth(*&a1);
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  CGRectGetHeight(v20);
  v8 = sub_21700B4A4();
  OUTLINED_FUNCTION_5(v8, v9, v10, v11, v12, v13, v14, v15, v17, v16, v18, v19);
}

double sub_216EEF258@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_216EEF1CC(a2, a3, a4, a5);
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_216EEF2A4(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_217007EB4();
  return sub_216EEF92C;
}

uint64_t sub_216EEF318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216EEF8D0();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_216EEF37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216EEF8D0();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_216EEF3E0(uint64_t a1)
{
  v2 = sub_216EEF8D0();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_216EEF430()
{
  result = qword_280E31918[0];
  if (!qword_280E31918[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E31918);
  }

  return result;
}

unint64_t sub_216EEF488()
{
  result = qword_280E31910;
  if (!qword_280E31910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E31910);
  }

  return result;
}

uint64_t sub_216EEF50C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_216EEF560()
{
  v0 = sub_21700B4A4();
  *&result = OUTLINED_FUNCTION_5(v0, v1, v2, v3, v4, v5, v6, v7, v10, v8, v11, v12).n128_u64[0];
  return result;
}

double sub_216EEF5FC@<D0>(uint64_t a1@<X8>)
{
  sub_216EEF560();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

void (*sub_216EEF640(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_217007EB4();
  return sub_216EEF6B4;
}

uint64_t sub_216EEF6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216EEF87C();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_216EEF71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216EEF87C();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_216EEF780(uint64_t a1)
{
  v2 = sub_216EEF87C();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_216EEF7D0()
{
  result = qword_280E3AA60[0];
  if (!qword_280E3AA60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3AA60);
  }

  return result;
}

unint64_t sub_216EEF828()
{
  result = qword_280E3AA58;
  if (!qword_280E3AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3AA58);
  }

  return result;
}

unint64_t sub_216EEF87C()
{
  result = qword_27CACCD38;
  if (!qword_27CACCD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCD38);
  }

  return result;
}

unint64_t sub_216EEF8D0()
{
  result = qword_27CACCD40;
  if (!qword_27CACCD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCD40);
  }

  return result;
}

uint64_t type metadata accessor for PlaylistDetailPageIntent()
{
  result = qword_27CACCD48;
  if (!qword_27CACCD48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216EEF9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v57 = &v52 - v7;
  v8 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v56 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - v14;
  v61 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v55 = v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v52 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v52 - v24;
  v26 = type metadata accessor for ContentDescriptor();
  v27 = OUTLINED_FUNCTION_36(v26);
  MEMORY[0x28223BE20](v27);
  v29 = &v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;
  sub_21700CE04();
  v30 = *(v10 + 16);
  v62 = v8;
  v54 = v30;
  v30(v15, a2, v8);
  v31 = v59;
  ContentDescriptor.init(deserializing:using:)(v25, v15, v32, v33, v34, v35, v36, v37, v52, v53, SWORD2(v53), SBYTE6(v53), SHIBYTE(v53));
  if (v31)
  {
    (*(v10 + 8))(a2, v62);
    return (*(v17 + 8))(v60, v61);
  }

  else
  {
    v53 = v10;
    v39 = v29;
    v40 = v58;
    sub_216EF0414(v39, v58, type metadata accessor for ContentDescriptor);
    v41 = v60;
    sub_21700CE04();
    v42 = sub_21700CDB4();
    v44 = v43;
    v45 = *(v17 + 8);
    v59 = v17 + 8;
    v52 = v45;
    v45(v22, v61);
    v46 = type metadata accessor for PlaylistDetailPageIntent();
    v47 = (v40 + *(v46 + 20));
    *v47 = v42;
    v47[1] = v44;
    v48 = v55;
    sub_21700CE04();
    v49 = v56;
    v54(v56, a2, v62);
    v50 = v57;
    ReferrerInfo.init(deserializing:using:)(v48, v49, v57);
    (*(v53 + 8))(a2, v62);
    v52(v41, v61);
    v51 = type metadata accessor for ReferrerInfo();
    __swift_storeEnumTagSinglePayload(v50, 0, 1, v51);
    return sub_21693FB5C(v50, v58 + *(v46 + 24));
  }
}

id sub_216EEFE24(JSContext a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = v16 - v6;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v9 = result;
    ContentDescriptor.makeValue(in:)(a1);
    sub_21700F0B4();
    v10 = type metadata accessor for PlaylistDetailPageIntent();
    v11 = (v1 + *(v10 + 20));
    v12 = v11[1];
    if (v12)
    {
      v16[0] = *v11;
      v16[1] = v12;
      sub_21700DF14();
      v13 = sub_21700DD04();
    }

    else
    {
      v13 = 0;
    }

    sub_2166F1F64(v13);
    sub_2168CC268(v2 + *(v10 + 24), v7);
    v14 = type metadata accessor for ReferrerInfo();
    if (__swift_getEnumTagSinglePayload(v7, 1, v14) == 1)
    {
      sub_216697664(v7, &qword_27CAB6FD0);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(a1).super.isa;
      sub_2168CC340(v7);
    }

    sub_2166F1F64(isa);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_216EF0020(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ReferrerInfo();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCD68);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  if ((static ContentDescriptor.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v15 = type metadata accessor for PlaylistDetailPageIntent();
  v16 = *(v15 + 20);
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }

    v21 = *v17 == *v19 && v18 == v20;
    if (!v21 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v22 = *(v15 + 24);
  v23 = *(v11 + 48);
  sub_2168CC268(a1 + v22, v14);
  sub_2168CC268(a2 + v22, &v14[v23]);
  OUTLINED_FUNCTION_12_4(v14);
  if (v21)
  {
    OUTLINED_FUNCTION_12_4(&v14[v23]);
    if (v21)
    {
      sub_216697664(v14, &qword_27CAB6FD0);
      return 1;
    }

    goto LABEL_19;
  }

  sub_2168CC268(v14, v10);
  OUTLINED_FUNCTION_12_4(&v14[v23]);
  if (v24)
  {
    sub_2168CC340(v10);
LABEL_19:
    sub_216697664(v14, &qword_27CACCD68);
    return 0;
  }

  sub_216EF0414(&v14[v23], v6, type metadata accessor for ReferrerInfo);
  v26 = static ReferrerInfo.== infix(_:_:)(v10, v6);
  sub_2168CC340(v6);
  sub_2168CC340(v10);
  sub_216697664(v14, &qword_27CAB6FD0);
  return (v26 & 1) != 0;
}

uint64_t sub_216EF02F0(uint64_t a1)
{
  result = sub_2166CEAEC(&qword_27CACCD58, type metadata accessor for PlaylistDetailPageIntent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216EF0390(uint64_t a1)
{
  *(a1 + 8) = sub_2166CEAEC(&qword_27CACCD58, type metadata accessor for PlaylistDetailPageIntent);
  result = sub_2166CEAEC(&qword_27CACCD60, type metadata accessor for PlaylistDetailPageIntent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_216EF0414(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for QueueGenericMusicItemsAction.InsertionPosition(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216EF0658()
{
  result = qword_27CACCD70;
  if (!qword_27CACCD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCD70);
  }

  return result;
}

uint64_t sub_216EF0704(uint64_t a1)
{
  v2 = sub_21700D2A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0);
  v6 = sub_21700E244();
  if (*(a1 + *(type metadata accessor for OpenExternalURLAction() + 20)) == 1 && (v7 = [objc_opt_self() defaultWorkspace]) != 0)
  {
    v8 = v7;
    v9 = sub_217005E04();
    v10 = sub_21700E384();
    sub_2169C5BD4(v9, v10, v8);

    (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
    sub_21700E224();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v11 = [objc_opt_self() sharedApplication];
    v12 = sub_217005E04();
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_216EF0BBC(&qword_27CAB6868, type metadata accessor for OpenExternalURLOptionsKey);
    sub_21700E384();
    v13 = sub_21700E344();

    aBlock[4] = sub_216EF0C04;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_216EF0B64;
    aBlock[3] = &block_descriptor_46;
    v14 = _Block_copy(aBlock);

    [v11 openURL:v12 options:v13 completionHandler:v14];
    _Block_release(v14);
  }

  return v6;
}

void sub_216EF0A18(char a1)
{
  v2 = sub_21700D2A4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v3 + 104))(v6, *MEMORY[0x277D21CA8], v2, v4);
    sub_21700E224();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    sub_216EF0C0C();
    v7 = swift_allocError();
    sub_21700E214();
  }
}

uint64_t sub_216EF0B64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_216EF0BBC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_216EF0C0C()
{
  result = qword_27CACCD78;
  if (!qword_27CACCD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCD78);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OpenExternalURLActionImplementation.OpenExternalURLActionImplementationError(_BYTE *result, int a2, int a3)
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

unint64_t sub_216EF0D10()
{
  result = qword_27CACCD80;
  if (!qword_27CACCD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCD80);
  }

  return result;
}

uint64_t sub_216EF0D64(void *a1)
{
  result = sub_216EF0E5C();
  if (!v1)
  {
    sub_217005834();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_217007A04();
    return sub_217005824();
  }

  return result;
}

uint64_t sub_216EF0E5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - v2;
  v4 = sub_217005EF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for BaseURLRequest();
  if (!*(v0 + *(v11 + 24) + 8))
  {
    sub_216EF11F8();
    swift_allocError();
    v14 = 0;
    goto LABEL_5;
  }

  v12 = v11;
  sub_21700DF14();
  sub_217005ED4();

  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_216846CF0(v3);
    sub_216EF11F8();
    swift_allocError();
    v14 = 1;
LABEL_5:
    *v13 = v14;
    return swift_willThrow();
  }

  (*(v5 + 32))(v10, v3, v4);
  (*(v5 + 16))(v7, v10, v4);
  sub_2170057E4();
  v16 = OUTLINED_FUNCTION_0_259(v12[7]);
  sub_216EF1104(v16, v17);
  sub_217005784();
  sub_21700DF14();
  sub_2170057C4();
  v18 = OUTLINED_FUNCTION_0_259(v12[8]);
  sub_216EF11DC(v18, v19);
  sub_217005794();
  if ((*(v0 + v12[9] + 8) & 1) == 0)
  {
    sub_2170057A4();
  }

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_216EF1104(uint64_t a1, char a2)
{
  result = 5522759;
  if (a2)
  {
    switch(a1)
    {
      case 2:
        result = 1145128264;
        break;
      case 3:
        result = 0x4843544150;
        break;
      case 4:
        result = 1414745936;
        break;
      case 5:
        result = 5526864;
        break;
      case 6:
        result = 0x4554454C4544;
        break;
      case 7:
        result = 0x5443454E4E4F43;
        break;
      case 8:
        result = 0x534E4F4954504FLL;
        break;
      case 9:
        result = 0x4543415254;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_216EF11DC(uint64_t a1, char a2)
{
  if (a2)
  {
    return qword_21706F670[a1];
  }

  else
  {
    return 0;
  }
}

unint64_t sub_216EF11F8()
{
  result = qword_27CACCD88;
  if (!qword_27CACCD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCD88);
  }

  return result;
}

_BYTE *_s5ErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216EF132C()
{
  result = qword_27CACCD90;
  if (!qword_27CACCD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCD90);
  }

  return result;
}

uint64_t sub_216EF1380(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_216EF13C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_216EF143C()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_11_93(v3, v4);
  OUTLINED_FUNCTION_3_121();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_171();
  v6 = OUTLINED_FUNCTION_14_63();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v6);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_260();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8_115();
  v12 = type metadata accessor for SuggestionItem();
  v13 = OUTLINED_FUNCTION_14_87(v12);
  if (v18)
  {
    v15 = &unk_27CAB90C0;
    v16 = v2;
LABEL_7:
    sub_216699778(v16, v15);
    v19 = OUTLINED_FUNCTION_35_40();
    OUTLINED_FUNCTION_1_219(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38_41(v13, v14, &qword_27CAB6D58);
  OUTLINED_FUNCTION_27_55();
  v17 = sub_21700D7A4();
  OUTLINED_FUNCTION_6_127(v17);
  if (v18)
  {
    v15 = &qword_27CAB6D58;
    v16 = v1;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_122();
  OUTLINED_FUNCTION_16_77();
  v20 = OUTLINED_FUNCTION_113();
  v21(v20);
  OUTLINED_FUNCTION_18_74();
LABEL_8:
  sub_21700DAE4();
  type metadata accessor for SuggestionItemView(0);
  sub_216EF8E18(qword_280E3E620, type metadata accessor for SuggestionItemView);
  OUTLINED_FUNCTION_5_144();
  v22 = OUTLINED_FUNCTION_15_77();
  v23(v22);
  sub_216699778(v0, &qword_27CAB6D58);
  OUTLINED_FUNCTION_26();
}

void sub_216EF1668()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_11_93(v3, v4);
  OUTLINED_FUNCTION_3_121();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_171();
  v6 = OUTLINED_FUNCTION_14_63();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v6);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_260();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8_115();
  v12 = type metadata accessor for TextListComponentModel();
  OUTLINED_FUNCTION_31_2(v2, 1, v12);
  if (v16)
  {
    v13 = &qword_27CAB9868;
    v14 = v2;
LABEL_7:
    sub_216699778(v14, v13);
    v17 = OUTLINED_FUNCTION_35_40();
    OUTLINED_FUNCTION_1_219(v17);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_47_35(&qword_27CAB6D58, *(v12 + 20));
  OUTLINED_FUNCTION_32_38();
  v15 = sub_21700D7A4();
  OUTLINED_FUNCTION_6_127(v15);
  if (v16)
  {
    v13 = &qword_27CAB6D58;
    v14 = v1;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_122();
  OUTLINED_FUNCTION_16_77();
  v18 = OUTLINED_FUNCTION_113();
  v19(v18);
  OUTLINED_FUNCTION_18_74();
LABEL_8:
  sub_21700DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9880);
  sub_216852000();
  OUTLINED_FUNCTION_5_144();
  v20 = OUTLINED_FUNCTION_15_77();
  v21(v20);
  sub_216699778(v0, &qword_27CAB6D58);
  OUTLINED_FUNCTION_26();
}

void sub_216EF1894()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v29[0] = v5;
  v29[1] = v4;
  v7 = v6;
  v8 = sub_21700DAF4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v14 = v13 - v12;
  v15 = _s6LockupVMa();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  v21 = OUTLINED_FUNCTION_36(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_117_0();
  MEMORY[0x28223BE20](v22);
  v24 = v29 - v23;
  v25 = v0[1];
  v30 = *v0;
  v31 = v25;
  v32 = *(v0 + 4);
  if (!v7)
  {
    goto LABEL_5;
  }

  sub_216DE9318();
  sub_216683A80(v19 + *(v15 + 20), v1, &qword_27CAB6D58);
  OUTLINED_FUNCTION_32_38();
  v26 = sub_21700D7A4();
  OUTLINED_FUNCTION_31_2(v1, 1, v26);
  if (v27)
  {
    sub_216699778(v1, &qword_27CAB6D58);
LABEL_5:
    v28 = sub_21700D7A4();
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v28);
    goto LABEL_6;
  }

  sub_216BE5AD4(v3 & 1, v24);
  (*(*(v26 - 8) + 8))(v1, v26);
  OUTLINED_FUNCTION_44_30();
LABEL_6:
  sub_21700DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB98D0);
  sub_2168521E8();
  sub_21700A1C4();
  (*(v10 + 8))(v14, v8);
  sub_216699778(v24, &qword_27CAB6D58);
  OUTLINED_FUNCTION_26();
}

void sub_216EF1B4C()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_11_93(v3, v4);
  OUTLINED_FUNCTION_3_121();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_171();
  v6 = OUTLINED_FUNCTION_14_63();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v6);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_260();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8_115();
  v12 = type metadata accessor for SuggestionItem();
  v13 = OUTLINED_FUNCTION_14_87(v12);
  if (v18)
  {
    v15 = &qword_27CAB90C0;
    v16 = v2;
LABEL_7:
    sub_216699778(v16, v15);
    v19 = OUTLINED_FUNCTION_35_40();
    OUTLINED_FUNCTION_1_219(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38_41(v13, v14, &qword_27CAB6D58);
  OUTLINED_FUNCTION_27_55();
  v17 = sub_21700D7A4();
  OUTLINED_FUNCTION_6_127(v17);
  if (v18)
  {
    v15 = &qword_27CAB6D58;
    v16 = v1;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_122();
  OUTLINED_FUNCTION_16_77();
  v20 = OUTLINED_FUNCTION_113();
  v21(v20);
  OUTLINED_FUNCTION_18_74();
LABEL_8:
  sub_21700DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB98F8);
  sub_216852300();
  OUTLINED_FUNCTION_5_144();
  v22 = OUTLINED_FUNCTION_15_77();
  v23(v22);
  sub_216699778(v0, &qword_27CAB6D58);
  OUTLINED_FUNCTION_26();
}

void sub_216EF1D54()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_11_93(v3, v4);
  OUTLINED_FUNCTION_3_121();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_171();
  v6 = OUTLINED_FUNCTION_14_63();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v6);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_260();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8_115();
  v12 = type metadata accessor for PopoverSelector();
  v13 = OUTLINED_FUNCTION_14_87(v12);
  if (v18)
  {
    v15 = &unk_27CAB9960;
    v16 = v2;
LABEL_7:
    sub_216699778(v16, v15);
    v19 = OUTLINED_FUNCTION_35_40();
    OUTLINED_FUNCTION_1_219(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38_41(v13, v14, &qword_27CAB6D58);
  OUTLINED_FUNCTION_32_38();
  v17 = sub_21700D7A4();
  OUTLINED_FUNCTION_6_127(v17);
  if (v18)
  {
    v15 = &qword_27CAB6D58;
    v16 = v1;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_122();
  OUTLINED_FUNCTION_16_77();
  v20 = OUTLINED_FUNCTION_113();
  v21(v20);
  OUTLINED_FUNCTION_18_74();
LABEL_8:
  sub_21700DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9978);
  sub_2168525DC();
  OUTLINED_FUNCTION_5_144();
  v22 = OUTLINED_FUNCTION_15_77();
  v23(v22);
  sub_216699778(v0, &qword_27CAB6D58);
  OUTLINED_FUNCTION_26();
}

void sub_216EF1F6C()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_11_93(v3, v4);
  OUTLINED_FUNCTION_3_121();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_171();
  v6 = OUTLINED_FUNCTION_14_63();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v6);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_260();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8_115();
  v12 = type metadata accessor for ParagraphComponentModel();
  v13 = OUTLINED_FUNCTION_14_87(v12);
  if (v18)
  {
    v15 = &unk_27CAB9990;
    v16 = v2;
LABEL_7:
    sub_216699778(v16, v15);
    v19 = OUTLINED_FUNCTION_35_40();
    OUTLINED_FUNCTION_1_219(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38_41(v13, v14, &qword_27CAB6D58);
  OUTLINED_FUNCTION_32_38();
  v17 = sub_21700D7A4();
  OUTLINED_FUNCTION_6_127(v17);
  if (v18)
  {
    v15 = &qword_27CAB6D58;
    v16 = v1;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_122();
  OUTLINED_FUNCTION_16_77();
  v20 = OUTLINED_FUNCTION_113();
  v21(v20);
  OUTLINED_FUNCTION_18_74();
LABEL_8:
  sub_21700DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB99A8);
  sub_2168526D0();
  OUTLINED_FUNCTION_5_144();
  v22 = OUTLINED_FUNCTION_15_77();
  v23(v22);
  sub_216699778(v0, &qword_27CAB6D58);
  OUTLINED_FUNCTION_26();
}

void sub_216EF2184()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_11_93(v3, v4);
  OUTLINED_FUNCTION_3_121();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_171();
  v6 = OUTLINED_FUNCTION_14_63();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v6);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_260();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8_115();
  v12 = type metadata accessor for LinkComponentModel();
  v13 = OUTLINED_FUNCTION_14_87(v12);
  if (v18)
  {
    v15 = &qword_27CAB7A30;
    v16 = v2;
LABEL_7:
    sub_216699778(v16, v15);
    v19 = OUTLINED_FUNCTION_35_40();
    OUTLINED_FUNCTION_1_219(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38_41(v13, v14, &qword_27CAB6D58);
  OUTLINED_FUNCTION_32_38();
  v17 = sub_21700D7A4();
  OUTLINED_FUNCTION_6_127(v17);
  if (v18)
  {
    v15 = &qword_27CAB6D58;
    v16 = v1;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_122();
  OUTLINED_FUNCTION_16_77();
  v20 = OUTLINED_FUNCTION_113();
  v21(v20);
  OUTLINED_FUNCTION_18_74();
LABEL_8:
  sub_21700DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB99D0);
  sub_2168527C4();
  OUTLINED_FUNCTION_5_144();
  v22 = OUTLINED_FUNCTION_15_77();
  v23(v22);
  sub_216699778(v0, &qword_27CAB6D58);
  OUTLINED_FUNCTION_26();
}

void sub_216EF239C()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_11_93(v3, v4);
  OUTLINED_FUNCTION_3_121();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_171();
  v6 = OUTLINED_FUNCTION_14_63();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v6);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_260();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8_115();
  v12 = type metadata accessor for InlineUpsell();
  OUTLINED_FUNCTION_31_2(v2, 1, v12);
  if (v16)
  {
    v13 = &unk_27CAB99E8;
    v14 = v2;
LABEL_7:
    sub_216699778(v14, v13);
    v17 = OUTLINED_FUNCTION_35_40();
    OUTLINED_FUNCTION_1_219(v17);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_47_35(&qword_27CAB6D58, *(v12 + 20));
  OUTLINED_FUNCTION_32_38();
  v15 = sub_21700D7A4();
  OUTLINED_FUNCTION_6_127(v15);
  if (v16)
  {
    v13 = &qword_27CAB6D58;
    v14 = v1;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_122();
  OUTLINED_FUNCTION_16_77();
  v18 = OUTLINED_FUNCTION_113();
  v19(v18);
  OUTLINED_FUNCTION_18_74();
LABEL_8:
  sub_21700DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9A00);
  sub_2168528B8();
  OUTLINED_FUNCTION_5_144();
  v20 = OUTLINED_FUNCTION_15_77();
  v21(v20);
  sub_216699778(v0, &qword_27CAB6D58);
  OUTLINED_FUNCTION_26();
}

void sub_216EF25C8()
{
  OUTLINED_FUNCTION_49();
  v2 = v0;
  v4 = v3;
  v26[0] = v6;
  v26[1] = v5;
  v8 = v7;
  v9 = sub_21700DAF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v15 = v14 - v13;
  v16 = type metadata accessor for HeaderComponentModel();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  v19 = OUTLINED_FUNCTION_36(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_0_260();
  MEMORY[0x28223BE20](v20);
  v22 = v26 - v21;
  memcpy(v27, v2, sizeof(v27));
  if (!v8)
  {
    goto LABEL_5;
  }

  sub_216DE9868();
  OUTLINED_FUNCTION_47_35(&qword_27CAB6D58, *(v16 + 20));
  OUTLINED_FUNCTION_32_38();
  v23 = sub_21700D7A4();
  OUTLINED_FUNCTION_31_2(v1, 1, v23);
  if (v24)
  {
    sub_216699778(v1, &qword_27CAB6D58);
LABEL_5:
    v25 = sub_21700D7A4();
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v25);
    goto LABEL_6;
  }

  sub_216BE5AD4(v4 & 1, v22);
  (*(*(v23 - 8) + 8))(v1, v23);
  OUTLINED_FUNCTION_44_30();
LABEL_6:
  sub_21700DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9A78);
  sub_216852B94();
  sub_21700A1C4();
  (*(v11 + 8))(v15, v9);
  sub_216699778(v22, &qword_27CAB6D58);
  OUTLINED_FUNCTION_26();
}

void sub_216EF2878()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_11_93(v3, v4);
  OUTLINED_FUNCTION_3_121();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_171();
  v6 = OUTLINED_FUNCTION_14_63();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v6);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_260();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8_115();
  v12 = type metadata accessor for GroupedTextListLockup();
  v13 = OUTLINED_FUNCTION_14_87(v12);
  if (v18)
  {
    v15 = &unk_27CAB9AB0;
    v16 = v2;
LABEL_7:
    sub_216699778(v16, v15);
    v19 = OUTLINED_FUNCTION_35_40();
    OUTLINED_FUNCTION_1_219(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38_41(v13, v14, &qword_27CAB6D58);
  OUTLINED_FUNCTION_32_38();
  v17 = sub_21700D7A4();
  OUTLINED_FUNCTION_6_127(v17);
  if (v18)
  {
    v15 = &qword_27CAB6D58;
    v16 = v1;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_122();
  OUTLINED_FUNCTION_16_77();
  v20 = OUTLINED_FUNCTION_113();
  v21(v20);
  OUTLINED_FUNCTION_18_74();
LABEL_8:
  sub_21700DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AC8);
  sub_216852C84();
  OUTLINED_FUNCTION_5_144();
  v22 = OUTLINED_FUNCTION_15_77();
  v23(v22);
  sub_216699778(v0, &qword_27CAB6D58);
  OUTLINED_FUNCTION_26();
}

void sub_216EF2A90()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_11_93(v3, v4);
  OUTLINED_FUNCTION_3_121();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_171();
  v6 = OUTLINED_FUNCTION_14_63();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v6);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_260();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8_115();
  v12 = type metadata accessor for EmptyStateLockup();
  OUTLINED_FUNCTION_31_2(v2, 1, v12);
  if (v16)
  {
    v13 = &unk_27CAB9B08;
    v14 = v2;
LABEL_7:
    sub_216699778(v14, v13);
    v17 = OUTLINED_FUNCTION_35_40();
    OUTLINED_FUNCTION_1_219(v17);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_47_35(&qword_27CAB6D58, *(v12 + 20));
  OUTLINED_FUNCTION_32_38();
  v15 = sub_21700D7A4();
  OUTLINED_FUNCTION_6_127(v15);
  if (v16)
  {
    v13 = &qword_27CAB6D58;
    v14 = v1;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_122();
  OUTLINED_FUNCTION_16_77();
  v18 = OUTLINED_FUNCTION_113();
  v19(v18);
  OUTLINED_FUNCTION_18_74();
LABEL_8:
  sub_21700DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B20);
  sub_216852E6C();
  OUTLINED_FUNCTION_5_144();
  v20 = OUTLINED_FUNCTION_15_77();
  v21(v20);
  sub_216699778(v0, &qword_27CAB6D58);
  OUTLINED_FUNCTION_26();
}

void sub_216EF2CBC()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_11_93(v3, v4);
  OUTLINED_FUNCTION_3_121();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_171();
  v6 = OUTLINED_FUNCTION_14_63();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v6);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_260();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8_115();
  v12 = type metadata accessor for SearchLandingBrickLockup();
  v13 = OUTLINED_FUNCTION_14_87(v12);
  if (v18)
  {
    v15 = &qword_27CAB9B38;
    v16 = v2;
LABEL_7:
    sub_216699778(v16, v15);
    v19 = OUTLINED_FUNCTION_35_40();
    OUTLINED_FUNCTION_1_219(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38_41(v13, v14, &qword_27CAB6D58);
  OUTLINED_FUNCTION_32_38();
  v17 = sub_21700D7A4();
  OUTLINED_FUNCTION_6_127(v17);
  if (v18)
  {
    v15 = &qword_27CAB6D58;
    v16 = v1;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_122();
  OUTLINED_FUNCTION_16_77();
  v20 = OUTLINED_FUNCTION_113();
  v21(v20);
  OUTLINED_FUNCTION_18_74();
LABEL_8:
  sub_21700DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B50);
  sub_216853068();
  OUTLINED_FUNCTION_5_144();
  v22 = OUTLINED_FUNCTION_15_77();
  v23(v22);
  sub_216699778(v0, &qword_27CAB6D58);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216EF2ED4@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  v6 = sub_21700DAF4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v21 - v14;
  if (a1)
  {
    v21[1] = a3;
    v16 = sub_2170076F4();
    sub_21700EDC4();

    v17 = sub_21700D7A4();
    if (__swift_getEnumTagSinglePayload(v12, 1, v17) != 1)
    {
      sub_216BE5AD4(a2 & 1, v15);
      (*(*(v17 - 8) + 8))(v12, v17);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v17);
      goto LABEL_6;
    }

    sub_216699778(v12, &qword_27CAB6D58);
  }

  v18 = sub_21700D7A4();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v18);
LABEL_6:
  sub_21700DAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCE00);
  v19 = sub_216EF6C88();
  v21[2] = &_s20BubbleTipPopoverViewVN;
  v21[3] = v19;
  swift_getOpaqueTypeConformance2();
  sub_21700A1C4();
  (*(v7 + 8))(v9, v6);
  return sub_216699778(v15, &qword_27CAB6D58);
}

void sub_216EF31A4()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = _s27BannerNavigationItemAdaptorVMa(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = (v11 - v10);
  v14 = *v7;
  v13 = v7[1];
  *v12 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7858);
  swift_storeEnumTagMultiPayload();
  v15 = (v12 + *(v8 + 20));
  *v15 = v14;
  v15[1] = v13;
  *(v12 + *(v8 + 24)) = v5;
  sub_21700DF14();

  MEMORY[0x21CE9B900](v12, v3, v8, v1);
  sub_216EF8278(v12, _s27BannerNavigationItemAdaptorVMa);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216EF3354(void (*a1)(void))
{
  a1();
  sub_217009104();
  return v2;
}

uint64_t sub_216EF3404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a1;
  v85 = a2;
  v86 = sub_2170099D4();
  OUTLINED_FUNCTION_1();
  v84 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v83 = v9 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCEB8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_105();
  v79 = v11;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCEC0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_105();
  v82 = v13;
  v71 = sub_2170098A4();
  OUTLINED_FUNCTION_1();
  v76 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v17 - v16);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8708);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  v20 = &v70 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  v22 = OUTLINED_FUNCTION_36(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_117_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v70 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v70 - v27;
  sub_2170090F4();
  OUTLINED_FUNCTION_3_121();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_0_171();
  v72 = _s15PaddingModifierVMa(0);
  v32 = *(v72 + 24);
  v78 = v2;
  v33 = v2 + v32;
  v34 = *v33;
  v35 = *(v33 + 8);
  v74 = v28;
  if (v35 != 1)
  {

    sub_21700ED94();
    v36 = sub_217009C34();
    OUTLINED_FUNCTION_45_32();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v34, 0);
    (*(v30 + 8))(v4, v3);
  }

  sub_216EF32B4();
  v38 = v37;
  v77 = v39;
  v41 = v40;
  if (v35)
  {
    v42 = *&v34;
  }

  else
  {

    sub_21700ED94();
    v43 = sub_217009C34();
    OUTLINED_FUNCTION_45_32();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v34, 0);
    (*(v30 + 8))(v4, v3);
    v42 = v88;
  }

  v44 = v74;
  sub_217007784();
  OUTLINED_FUNCTION_42_0();
  v73 = swift_dynamicCastClass();
  sub_216C0C900();
  v45 = v76;
  v46 = v71;
  (*(v76 + 104))(v25, *MEMORY[0x277CE0558], v71);
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v46);
  v47 = *(v75 + 48);
  sub_216683A80(v44, v20, &qword_27CAB8600);
  sub_216683A80(v25, &v20[v47], &qword_27CAB8600);
  OUTLINED_FUNCTION_31_2(v20, 1, v46);
  if (!v48)
  {
    sub_216683A80(v20, v5, &qword_27CAB8600);
    OUTLINED_FUNCTION_31_2(&v20[v47], 1, v46);
    if (!v48)
    {
      v49 = v70;
      (*(v45 + 32))(v70, &v20[v47], v46);
      sub_216EF8E18(&qword_280E2A858, MEMORY[0x277CE0570]);
      LODWORD(v75) = sub_21700E494();
      v50 = *(v45 + 8);
      v50(v49, v46);
      sub_216699778(v25, &qword_27CAB8600);
      sub_216699778(v44, &qword_27CAB8600);
      v50(v5, v46);
      v51 = OUTLINED_FUNCTION_14_63();
      sub_216699778(v51, v52);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_48_27(v25);
    OUTLINED_FUNCTION_48_27(v44);
    (*(v45 + 8))(v5, v46);
LABEL_14:
    sub_216699778(v20, &qword_27CAB8708);
    LODWORD(v75) = 0;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_48_27(v25);
  OUTLINED_FUNCTION_48_27(v44);
  OUTLINED_FUNCTION_31_2(&v20[v47], 1, v46);
  if (!v48)
  {
    goto LABEL_14;
  }

  sub_216699778(v20, &qword_27CAB8600);
  LODWORD(v75) = 1;
LABEL_15:
  sub_217009CB4();
  sub_217007F24();
  OUTLINED_FUNCTION_42_35();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCEC8);
  OUTLINED_FUNCTION_34();
  v54 = v79;
  (*(v53 + 16))(v79, v87);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCED0);
  OUTLINED_FUNCTION_34_37(v55);
  sub_217009CD4();
  sub_217007F24();
  OUTLINED_FUNCTION_42_35();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCED8);
  OUTLINED_FUNCTION_34_37(v56);
  v57 = sub_217009C94();
  sub_217007F24();
  v58 = v54 + *(v80 + 36);
  *v58 = v57;
  *(v58 + 8) = v59;
  *(v58 + 16) = v60;
  *(v58 + 24) = v61;
  *(v58 + 32) = v62;
  *(v58 + 40) = 0;
  v63 = sub_21700B314();
  MEMORY[0x28223BE20](v63);
  MEMORY[0x28223BE20](v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCEE0);
  sub_216EF8B14();
  sub_216EF8B74(&qword_280E2AE50, &qword_27CACCEE0, &unk_21706FCC8, sub_216EF8B14);
  v65 = v82;
  sub_21700AB34();
  sub_216699778(v54, &qword_27CACCEB8);
  KeyPath = swift_getKeyPath();
  v67 = v65 + *(v81 + 36);
  *v67 = KeyPath;
  *(v67 + 8) = v42 - v38 - v41;
  v68 = v83;
  sub_2170099C4();
  sub_216EF8CAC();
  OUTLINED_FUNCTION_8();
  sub_21700A784();
  (*(v84 + 8))(v68, v86);
  return sub_216699778(v65, &qword_27CACCEC0);
}

uint64_t sub_216EF3D78@<X0>(uint64_t a1@<X0>, char a2@<W2>, char a3@<W3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  v14 = sub_217009CA4();
  sub_216EF3E5C(a2, a3, a5, a6, a7);
  sub_217007F24();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_216683A80(a1, a4, &qword_27CACCEB8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCEE0);
  v24 = a4 + *(result + 36);
  *v24 = v14;
  *(v24 + 8) = v16;
  *(v24 + 16) = v18;
  *(v24 + 24) = v20;
  *(v24 + 32) = v22;
  *(v24 + 40) = 0;
  return result;
}

double sub_216EF3E5C(char a1, char a2, double a3, double a4, double a5)
{
  v9 = sub_2170090F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v13 = [objc_opt_self() currentDevice];
    v14 = [v13 userInterfaceIdiom];

    if (v14)
    {
      if ((a2 & 1) == 0)
      {
        v16 = _s15PaddingModifierVMa(0);
        v17 = v5 + *(v16 + 28);
        v18 = *v17;
        if (*(v17 + 8) == 1)
        {
          if ((v18 & 1) == 0)
          {
            return a5;
          }
        }

        else
        {

          sub_21700ED94();
          v19 = sub_217009C34();
          sub_217007BC4();

          sub_2170090E4();
          swift_getAtKeyPath();
          sub_216684F5C(v18, 0);
          (*(v10 + 8))(v12, v9);
          if (v23[15] != 1)
          {
            return a5;
          }
        }

        v20 = v5 + *(v16 + 32);
        v21 = *v20;
        if (*(v20 + 8) == 1)
        {
          if (v21)
          {
            return a5;
          }
        }

        else
        {

          sub_21700ED94();
          v22 = sub_217009C34();
          sub_217007BC4();

          sub_2170090E4();
          swift_getAtKeyPath();
          sub_216684F5C(v21, 0);
          (*(v10 + 8))(v12, v9);
          if (v23[14] == 1)
          {
            return a5;
          }
        }
      }

      return 38.0;
    }

    else if (a2)
    {
      return 38.0;
    }
  }

  return a5;
}

uint64_t sub_216EF40FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_217009CA4();
  sub_217007F24();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_216683A80(a1, a2, &qword_27CACCEB8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCEE0);
  v14 = a2 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_216EF41A8()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  v8 = v0[2];
  v7 = v0[3];

  if ((v6 & 1) == 0)
  {
    sub_21700ED94();
    v9 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v2 + 8))(v4, v1);
    v5 = v16[1];
  }

  if (!v5 || (v10 = sub_216A53B88(), , !v10) || (v12 = *(v10 + 24), v11 = *(v10 + 32), sub_21700DF14(), , !v11))
  {
    if (!v7)
    {

      v14 = 1;
      return v14 & 1;
    }

    goto LABEL_13;
  }

  if (!v7)
  {
LABEL_13:

    v14 = 0;
    return v14 & 1;
  }

  if (v12 == v8 && v11 == v7)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_21700F7D4();
  }

  return v14 & 1;
}

void sub_216EF4390()
{
  OUTLINED_FUNCTION_49();
  v41 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v40 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v4 - v3);
  v42 = sub_2170098F4();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_7();
  v7 = (v6 - v5);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCDA8);
  OUTLINED_FUNCTION_1();
  v49 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v10);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCDB0);
  OUTLINED_FUNCTION_1();
  v48 = v11;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v13);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCDB8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v15);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCDC0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v17);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCDC8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v19);
  memcpy(v57, v0, sizeof(v57));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCDD0);
  sub_21700AED4();
  OUTLINED_FUNCTION_26_52();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_21_71(v20);
  OUTLINED_FUNCTION_36_44();
  *v7 = sub_21700AEF4();
  (*(v43 + 104))(v7, *MEMORY[0x277CDE248], v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCDD8);
  type metadata accessor for PopoverProvider.Popover();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCDE0);
  OUTLINED_FUNCTION_2_22();
  sub_21680DFBC(v21, &qword_27CACCDD8);
  sub_216EF8E18(&qword_27CACCDF0, type metadata accessor for PopoverProvider.Popover);
  sub_216EF6B94();
  sub_21700AAC4();

  (*(v43 + 8))(v7, v42);

  v59 = v57[1];
  v22 = v57[0];
  v58 = v57[0];
  v23 = v57[1];

  if ((v23 & 1) == 0)
  {
    sub_21700ED94();
    v24 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    OUTLINED_FUNCTION_8();
    swift_getAtKeyPath();
    sub_216699778(&v58, &unk_27CACCE10);
    (*(v40 + 8))(v39, v41);
    v22 = v56;
  }

  if (v22)
  {
    sub_216A53B88();
  }

  OUTLINED_FUNCTION_26_52();
  v25 = swift_allocObject();
  OUTLINED_FUNCTION_21_71(v25);
  OUTLINED_FUNCTION_36_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABC350);
  swift_getOpaqueTypeConformance2();
  sub_216EF6CE4();
  sub_21700AB04();

  (*(v49 + 8))(v55, v51);
  OUTLINED_FUNCTION_26_52();
  v26 = swift_allocObject();
  OUTLINED_FUNCTION_21_71(v26);
  (*(v48 + 32))(v47, v45, v50);
  v27 = (v47 + *(v44 + 36));
  *v27 = sub_216EF6D98;
  v27[1] = v26;
  v27[2] = 0;
  v27[3] = 0;
  OUTLINED_FUNCTION_26_52();
  v28 = swift_allocObject();
  OUTLINED_FUNCTION_21_71(v28);
  sub_2167C5834(v47, v52, &qword_27CACCDB8);
  v29 = (v52 + *(v46 + 36));
  *v29 = 0;
  v29[1] = 0;
  v29[2] = sub_216EF6DA0;
  v29[3] = v28;
  OUTLINED_FUNCTION_26_52();
  v30 = swift_allocObject();
  OUTLINED_FUNCTION_21_71(v30);
  OUTLINED_FUNCTION_36_44();
  OUTLINED_FUNCTION_36_44();
  OUTLINED_FUNCTION_36_44();
  type metadata accessor for MusicTabChangePublisher();
  sub_216EF8E18(&qword_280E46AC8, type metadata accessor for MusicTabChangePublisher);
  OUTLINED_FUNCTION_42_0();
  v31 = sub_217008CF4();
  v33 = v32;
  sub_2167C5834(v52, v54, &qword_27CACCDC0);
  v34 = (v54 + *(v53 + 36));
  *v34 = v31;
  v34[1] = v33;
  v34[2] = sub_216EF6DC8;
  v34[3] = v30;
  OUTLINED_FUNCTION_26_52();
  v35 = swift_allocObject();
  OUTLINED_FUNCTION_21_71(v35);
  OUTLINED_FUNCTION_26_52();
  v36 = swift_allocObject();
  OUTLINED_FUNCTION_21_71(v36);
  OUTLINED_FUNCTION_26_52();
  v37 = swift_allocObject();
  OUTLINED_FUNCTION_21_71(v37);
  OUTLINED_FUNCTION_26_52();
  v38 = swift_allocObject();
  OUTLINED_FUNCTION_21_71(v38);
  OUTLINED_FUNCTION_36_44();
  OUTLINED_FUNCTION_36_44();
  OUTLINED_FUNCTION_36_44();
  OUTLINED_FUNCTION_36_44();
  sub_216EF6E30();
  sub_216DE8638();
  sub_21700A7E4();

  sub_216699778(v54, &qword_27CACCDC8);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216EF4D8C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v26 = sub_2170090F4();
  v5 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCE00);
  v8 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v10 = &v25 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCE50);
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v12 = &v25 - v11;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCDE0);
  MEMORY[0x28223BE20](v27);
  v14 = &v25 - v13;
  v15 = *(*a1 + 16);
  KeyPath = swift_getKeyPath();
  v32[0] = v15;
  v32[1] = KeyPath;
  v33 = 0;
  sub_216EF6C88();
  sub_21700A264();

  v35 = a2[8];
  v17 = *a2;
  v34 = *a2;
  v18 = v35;

  if ((v18 & 1) == 0)
  {
    sub_21700ED94();
    v19 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216699778(&v34, &unk_27CACCE10);
    (*(v5 + 8))(v7, v26);
    v17 = v32[0];
  }

  if (v17 && (v20 = sub_216A53B88(), , v20))
  {
    v21 = *(v20 + 16);
  }

  else
  {
    v21 = 0;
  }

  sub_216EF2ED4(v21, 1, v12);

  (*(v8 + 8))(v10, v29);
  v22 = swift_allocObject();
  memcpy((v22 + 16), a2, 0x48uLL);
  (*(v28 + 32))(v14, v12, v30);
  v23 = &v14[*(v27 + 36)];
  *v23 = 0;
  *(v23 + 1) = 0;
  *(v23 + 2) = sub_216EF8270;
  *(v23 + 3) = v22;
  sub_2167C5834(v14, v31, &qword_27CACCDE0);
  return sub_216EF6B5C(a2, v32);
}

uint64_t sub_216EF51A0(uint64_t *a1)
{
  v2 = sub_2170090F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(a1 + 8);
  v6 = *a1;
  v13 = *a1;
  v7 = v14;

  if ((v7 & 1) == 0)
  {
    sub_21700ED94();
    v9 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216699778(&v13, &unk_27CACCE10);
    result = (*(v3 + 8))(v5, v2);
    v6 = v12;
  }

  if (v6)
  {
    v11 = *(a1 + 1);
    v12 = v11;
    sub_216EF8210(&v12, v10);
    sub_216A57208(&v11);
  }

  return result;
}

uint64_t sub_216EF533C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = sub_2170090F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v8 = sub_217007CA4();
  __swift_project_value_buffer(v8, qword_280E73D20);
  sub_216EF6B5C(a3, __dst);
  v9 = sub_217007C84();
  v10 = sub_21700EDA4();
  sub_216EF7174(a3);
  if (os_log_type_enabled(v9, v10))
  {
    v29 = v4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32 = v12;
    *v11 = 136446466;
    v13 = *(a3 + 2);
    v14 = *(a3 + 3);
    __dst[0] = 46;
    __dst[1] = 0xE100000000000000;
    MEMORY[0x21CE9F490](v13, v14);
    v15 = sub_2166A85FC(__dst[0], __dst[1], &v32);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v35 = a3[8];
    v16 = *a3;
    v34 = *a3;
    LOBYTE(v15) = v35;

    if ((v15 & 1) == 0)
    {
      sub_21700ED94();
      v17 = sub_217009C34();
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();
      sub_216699778(&v34, &unk_27CACCE10);
      (*(v5 + 8))(v7, v29);
      v16 = __dst[0];
    }

    if (v16)
    {
      v18 = sub_216A53B88();

      if (v18)
      {
        v19 = *(v18 + 24);
        v16 = *(v18 + 32);
        sub_21700DF14();
      }

      else
      {
        v19 = 0;
        v16 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    __dst[0] = v19;
    __dst[1] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40);
    v20 = sub_21700E594();
    v22 = sub_2166A85FC(v20, v21, &v32);

    *(v11 + 14) = v22;
    _os_log_impl(&dword_216679000, v9, v10, "💬 activePopoverChanged %{public}s -> %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v12, -1, -1);
    MEMORY[0x21CEA1440](v11, -1, -1);

    v4 = v29;
  }

  else
  {
  }

  memcpy(__dst, a3, sizeof(__dst));
  v33 = a3[8];
  v23 = *a3;
  v32 = *a3;
  v24 = v33;

  if ((v24 & 1) == 0)
  {
    sub_21700ED94();
    v25 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216699778(&v32, &unk_27CACCE10);
    (*(v5 + 8))(v7, v4);
    v23 = v30;
  }

  if (v23)
  {
    v26 = sub_216A53B88();
  }

  else
  {
    v26 = 0;
  }

  sub_216EF5774(v26);
}

uint64_t sub_216EF5774(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v5 = *(v1 + 48);
  v4 = *(v1 + 56);
  v6 = *(v1 + 64);
  if (a1 && ((v29 = *(v1 + 40), *(a1 + 24) == v3) ? (v8 = *(a1 + 32) == v2) : (v8 = 0), v8 || (sub_21700F7D4() & 1) != 0))
  {
    v9 = qword_280E416F8;

    sub_21700DF14();
    if (v9 != -1)
    {
      swift_once();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_280E73D20);
    j__swift_retain_0();

    sub_21700DF14();

    v11 = v6;
    v12 = sub_217007C84();
    v13 = sub_21700EDA4();
    j__swift_release();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 136446466;
      v30 = v15;
      v31 = 46;
      v32 = 0xE100000000000000;
      MEMORY[0x21CE9F490](v3, v2);

      v16 = sub_2166A85FC(46, 0xE100000000000000, &v30);

      *(v14 + 4) = v16;
      *(v14 + 12) = 2082;
      v17 = v29;
      LOBYTE(v31) = v29;
      v32 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCE48);
      sub_21700AEB4();
      v18 = sub_21700E594();
      v20 = sub_2166A85FC(v18, v19, &v30);

      *(v14 + 14) = v20;
      _os_log_impl(&dword_216679000, v12, v13, "💬 Should show popover for placement: %{public}s during view state: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v15, -1, -1);
      MEMORY[0x21CEA1440](v14, -1, -1);
    }

    else
    {

      v17 = v29;
    }

    LOBYTE(v31) = v17;
    v32 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCE48);
    sub_21700AEB4();
    if (v30 != 2)
    {
    }

    v31 = v4;
    v32 = v11;
    v30 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCDD0);
  }

  else
  {
    v31 = v4;
    v32 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCDD0);
    sub_21700AEB4();
    result = v30;
    if (!v30)
    {
      return result;
    }

    if (qword_280E416F8 != -1)
    {
      swift_once();
    }

    v22 = sub_217007CA4();
    __swift_project_value_buffer(v22, qword_280E73D20);
    j__swift_retain_0();

    sub_21700DF14();

    v23 = sub_217007C84();
    v24 = v6;
    v25 = sub_21700EDA4();
    j__swift_release();

    if (os_log_type_enabled(v23, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 136446210;
      v30 = v27;
      v31 = 46;
      v32 = 0xE100000000000000;
      MEMORY[0x21CE9F490](v3, v2);
      v28 = sub_2166A85FC(46, 0xE100000000000000, &v30);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_216679000, v23, v25, "💬 Should dismiss popover for placement: %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x21CEA1440](v27, -1, -1);
      MEMORY[0x21CEA1440](v26, -1, -1);
    }

    v31 = v4;
    v32 = v24;
    v30 = 0;
  }

  return sub_21700AEC4();
}

uint64_t sub_216EF5C7C(uint64_t a1)
{
  v2 = sub_2170090F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v6 = sub_217007CA4();
  __swift_project_value_buffer(v6, qword_280E73D20);
  sub_216EF6B5C(a1, &v20);
  v7 = sub_217007C84();
  v8 = sub_21700EDA4();
  sub_216EF7174(a1);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v21 = v10;
    *v9 = 136446210;
    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    *&v20 = 46;
    *(&v20 + 1) = 0xE100000000000000;
    MEMORY[0x21CE9F490](v11, v12);
    v13 = sub_2166A85FC(v20, *(&v20 + 1), &v21);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_216679000, v7, v8, "💬 onAppear %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x21CEA1440](v10, -1, -1);
    MEMORY[0x21CEA1440](v9, -1, -1);
  }

  v20 = *(a1 + 40);
  v21 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCE48);
  result = sub_21700AEB4();
  if (!v19)
  {
    v21 = v20;
    LOBYTE(v19) = 2;
    sub_21700AEC4();
    v23 = *(a1 + 8);
    v15 = *a1;
    v22 = *a1;
    v16 = v23;

    if ((v16 & 1) == 0)
    {
      sub_21700ED94();
      v17 = sub_217009C34();
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();
      sub_216699778(&v22, &unk_27CACCE10);
      result = (*(v3 + 8))(v5, v2);
      v15 = v21;
    }

    if (v15)
    {
      v21 = *(a1 + 16);
      v19 = *(a1 + 16);
      sub_216EF8210(&v21, v18);
      sub_216A54608(&v19);
    }
  }

  return result;
}

void sub_216EF5FAC(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, a2, 0x48uLL);
  if (sub_216EF41A8())
  {
    *__dst = *(a2 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCE48);
    sub_21700AEB4();
    if (v15 - 3 > 1)
    {
      if (qword_280E416F8 != -1)
      {
        swift_once();
      }

      v11 = sub_217007CA4();
      __swift_project_value_buffer(v11, qword_280E73D20);
      v12 = sub_217007C84();
      v13 = sub_21700EDA4();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_216679000, v12, v13, "💬 Tab changed back to the popover view", v14, 2u);
        MEMORY[0x21CEA1440](v14, -1, -1);
      }
    }

    else
    {
      *__dst = *(a2 + 56);
      v15 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCDD0);
      sub_21700AEC4();
      if (qword_280E416F8 != -1)
      {
        swift_once();
      }

      v3 = sub_217007CA4();
      __swift_project_value_buffer(v3, qword_280E73D20);
      sub_216EF6B5C(a2, __dst);
      v4 = sub_217007C84();
      v5 = sub_21700EDA4();
      sub_216EF7174(a2);
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v15 = v7;
        *v6 = 136446210;
        v8 = *(a2 + 16);
        v9 = *(a2 + 24);
        __dst[0] = 46;
        __dst[1] = 0xE100000000000000;
        MEMORY[0x21CE9F490](v8, v9);
        v10 = sub_2166A85FC(__dst[0], __dst[1], &v15);

        *(v6 + 4) = v10;
        _os_log_impl(&dword_216679000, v4, v5, "💬 Tab changed to another view, popover should disappear: %{public}s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v7);
        MEMORY[0x21CEA1440](v7, -1, -1);
        MEMORY[0x21CEA1440](v6, -1, -1);
      }
    }
  }
}

uint64_t sub_216EF6250(uint64_t a1)
{
  v2 = sub_2170090F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v6 = sub_217007CA4();
  __swift_project_value_buffer(v6, qword_280E73D20);
  sub_216EF6B5C(a1, v20);
  v7 = sub_217007C84();
  v8 = sub_21700EDA4();
  sub_216EF7174(a1);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v19 = v10;
    *v9 = 136446210;
    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    v20[0] = 46;
    v20[1] = 0xE100000000000000;
    MEMORY[0x21CE9F490](v11, v12);
    v13 = sub_2166A85FC(v20[0], v20[1], &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_216679000, v7, v8, "💬 handlePopoverViewWillAppear %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x21CEA1440](v10, -1, -1);
    MEMORY[0x21CEA1440](v9, -1, -1);
  }

  *v20 = *(a1 + 40);
  LOBYTE(v19) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCE48);
  sub_21700AEC4();
  v22 = *(a1 + 8);
  v14 = *a1;
  v21 = *a1;
  v15 = v22;

  if ((v15 & 1) == 0)
  {
    sub_21700ED94();
    v17 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216699778(&v21, &unk_27CACCE10);
    result = (*(v3 + 8))(v5, v2);
    v14 = v20[0];
  }

  if (v14)
  {
    v19 = *(a1 + 16);
    *v20 = v19;
    sub_216EF8210(v20, v18);
    sub_216A54608(&v19);
  }

  return result;
}

uint64_t sub_216EF6558(uint64_t a1)
{
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v2 = sub_217007CA4();
  __swift_project_value_buffer(v2, qword_280E73D20);
  sub_216EF6B5C(a1, &v12);
  v3 = sub_217007C84();
  v4 = sub_21700EDA4();
  sub_216EF7174(a1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    *&v12 = 46;
    *(&v12 + 1) = 0xE100000000000000;
    MEMORY[0x21CE9F490](v7, v8);
    v9 = sub_2166A85FC(v12, *(&v12 + 1), &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_216679000, v3, v4, "💬 handlePopoverViewWillDisappear %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x21CEA1440](v6, -1, -1);
    MEMORY[0x21CEA1440](v5, -1, -1);
  }

  v12 = *(a1 + 40);
  LOBYTE(v11) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCE48);
  sub_21700AEC4();
  v12 = *(a1 + 56);
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCDD0);
  return sub_21700AEC4();
}

uint64_t sub_216EF6730(uint64_t a1, const char *a2, char a3)
{
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v6 = sub_217007CA4();
  __swift_project_value_buffer(v6, qword_280E73D20);
  sub_216EF6B5C(a1, &v16);
  v7 = sub_217007C84();
  v8 = sub_21700EDA4();
  sub_216EF7174(a1);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    *&v16 = 46;
    *(&v16 + 1) = 0xE100000000000000;
    MEMORY[0x21CE9F490](v11, v12);
    v13 = sub_2166A85FC(v16, *(&v16 + 1), &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_216679000, v7, v8, a2, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x21CEA1440](v10, -1, -1);
    MEMORY[0x21CEA1440](v9, -1, -1);
  }

  v16 = *(a1 + 40);
  LOBYTE(v15) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCE48);
  return sub_21700AEC4();
}

void sub_216EF68E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v26 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7();
  v32 = v31 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7858);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  v35 = &a9 - v34;
  sub_216683A80(v23, &a9 - v34, &qword_27CAB7858);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21700DA84();
    OUTLINED_FUNCTION_34();
    (*(v36 + 32))(v25, v35);
  }

  else
  {
    sub_21700ED94();
    v37 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v28 + 8))(v32, v26);
  }

  OUTLINED_FUNCTION_26();
}

unint64_t sub_216EF6AAC()
{
  result = qword_27CACCD98;
  if (!qword_27CACCD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCD98);
  }

  return result;
}

unint64_t sub_216EF6B00()
{
  result = qword_27CACCDA0;
  if (!qword_27CACCDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCDA0);
  }

  return result;
}

unint64_t sub_216EF6B94()
{
  result = qword_27CACCDF8;
  if (!qword_27CACCDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCDE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCE00);
    sub_216EF6C88();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCDF8);
  }

  return result;
}

unint64_t sub_216EF6C88()
{
  result = qword_27CACCE08;
  if (!qword_27CACCE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCE08);
  }

  return result;
}

unint64_t sub_216EF6CE4()
{
  result = qword_27CACCE18;
  if (!qword_27CACCE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC350);
    sub_216EF8E18(&qword_27CACCE20, type metadata accessor for PopoverProvider.Popover);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCE18);
  }

  return result;
}

unint64_t sub_216EF6E30()
{
  result = qword_27CACCE28;
  if (!qword_27CACCE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCDC8);
    sub_216EF6EBC();
    sub_216EF7120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCE28);
  }

  return result;
}

unint64_t sub_216EF6EBC()
{
  result = qword_27CACCE30;
  if (!qword_27CACCE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCDC0);
    sub_216EF6F48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCE30);
  }

  return result;
}

unint64_t sub_216EF6F48()
{
  result = qword_27CACCE38;
  if (!qword_27CACCE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCDB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCDA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABC350);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCDD8);
    type metadata accessor for PopoverProvider.Popover();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCDE0);
    sub_21680DFBC(&qword_27CACCDE8, &qword_27CACCDD8);
    sub_216EF8E18(&qword_27CACCDF0, type metadata accessor for PopoverProvider.Popover);
    sub_216EF6B94();
    swift_getOpaqueTypeConformance2();
    sub_216EF6CE4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCE38);
  }

  return result;
}

unint64_t sub_216EF7120()
{
  result = qword_27CACCE40;
  if (!qword_27CACCE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCE40);
  }

  return result;
}

double sub_216EF7538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a3;
  v3 = sub_217007504();
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170084B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2170085B4();
  sub_216EF8E18(&qword_27CABE790, MEMORY[0x277CDF7F8]);
  sub_21700EC54();
  sub_21700EC94();
  if (sub_21700EC84() == 1)
  {
    sub_2170085C4();
    v18[0] = 0;
    v20 = 0;
    sub_217008484();
    v11 = v10;
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    sub_2170074E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCF08);
    sub_2170074D4();
    *(swift_allocObject() + 16) = xmmword_217013D90;
    v19 = &_s16PopoverContainerVN;
    v12 = AMSLogKey();
    if (v12)
    {
      v13 = v12;
      sub_21700E514();
    }

    sub_2170074C4();

    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    sub_2170074B4();
    sub_2170074F4();

    (*(v16 + 8))(v5, v17);
    return 0.0;
  }

  return v11;
}

void (*sub_216EF7904(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_217007EB4();
  return sub_2167CA09C;
}

uint64_t sub_216EF7978(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_2170090F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a3 & 1) == 0)
  {

    sub_21700ED94();
    v9 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(a2, 0);
    (*(v6 + 8))(v8, v5);
    LOBYTE(a2) = v11[15];
  }

  return a2 & 1;
}

uint64_t sub_216EF7ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a1)
  {

    sub_216EF7B54(v7, v7, a2, a3 & 1, a4);

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCE60);

  return __swift_storeEnumTagSinglePayload(a4, v8, 1, v9);
}

uint64_t sub_216EF7B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v39 = a4;
  v40 = a3;
  v38 = a2;
  v33 = a1;
  v46 = a5;
  v47 = sub_217008AF4();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_217009BD4();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_217009854();
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_217009734();
  v31 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_217007624();
  v11 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCE68);
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCE70);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v29 - v19;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCE78);
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v22 = &v29 - v21;

  sub_217007614();
  sub_21700B3B4();
  sub_217008BB4();
  (*(v11 + 32))(v16, v13, v30);
  memcpy(&v16[*(v14 + 36)], __src, 0x70uLL);
  sub_217009724();
  v23 = sub_216EF84F8();
  sub_21700A7F4();
  (*(v31 + 8))(v10, v32);
  sub_216699778(v16, &qword_27CACCE68);
  sub_217009844();
  v48 = v14;
  v49 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21700A914();
  (*(v36 + 8))(v8, v37);
  (*(v18 + 8))(v20, v17);
  if (sub_216EF7978(v38, v40, v39 & 1))
  {
    v25 = v41;
    sub_217009BB4();
  }

  else
  {
    v25 = v41;
    sub_217009BC4();
  }

  v26 = v44;
  sub_217008AE4();
  v48 = v17;
  v49 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v27 = v35;
  sub_21700A934();
  (*(v45 + 8))(v26, v47);
  (*(v42 + 8))(v25, v43);
  return (*(v34 + 8))(v22, v27);
}

uint64_t sub_216EF8278(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216EF82F0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 17))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216EF8344(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

_BYTE *_s15PopoverModifierV9ViewStateOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_216EF8488()
{
  result = qword_27CACCE58;
  if (!qword_27CACCE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCE58);
  }

  return result;
}

unint64_t sub_216EF84F8()
{
  result = qword_27CACCE80;
  if (!qword_27CACCE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCE68);
    sub_216EF8E18(&qword_280E48610, MEMORY[0x277CEE7B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCE80);
  }

  return result;
}

void sub_216EF861C()
{
  sub_217007714();
  if (v0 <= 0x3F)
  {
    sub_2167FCA6C();
    if (v1 <= 0x3F)
    {
      sub_216EF8810(319, &qword_280E2B480, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_216EF8810(319, &qword_280E2B438, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_216EF8750()
{
  sub_2167C86F8();
  if (v0 <= 0x3F)
  {
    sub_216EF8810(319, &qword_280E44FC8, &type metadata for PlacementID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObjectGraph();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216EF8810(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_216EF8860()
{
  result = qword_27CACCE88;
  if (!qword_27CACCE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCE90);
    sub_216EF88E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCE88);
  }

  return result;
}

unint64_t sub_216EF88E4()
{
  result = qword_27CACCE98;
  if (!qword_27CACCE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCE60);
    sub_21680DFBC(&qword_27CACCEA0, &unk_27CACCEA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCE78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCE70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCE68);
    sub_216EF84F8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCE98);
  }

  return result;
}

unint64_t sub_216EF8A64()
{
  result = qword_27CACCEB0;
  if (!qword_27CACCEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCEB0);
  }

  return result;
}

uint64_t sub_216EF8B74(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_100(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_216EF8BF4()
{
  result = qword_280E2B200;
  if (!qword_280E2B200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCED0);
    sub_21680DFBC(&qword_280E2A878, &unk_27CACCEC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B200);
  }

  return result;
}

unint64_t sub_216EF8CAC()
{
  result = qword_27CACCEE8;
  if (!qword_27CACCEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCEC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCEB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCEE0);
    sub_216EF8B14();
    sub_216EF8B74(&qword_280E2AE50, &qword_27CACCEE0, &unk_21706FCC8, sub_216EF8B14);
    swift_getOpaqueTypeConformance2();
    sub_21680DFBC(&qword_280E2A758, &qword_27CAB93F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACCEE8);
  }

  return result;
}

uint64_t sub_216EF8E18(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_42_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_216EF8E5C()
{
  result = qword_280E2AA20;
  if (!qword_280E2AA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CACCF10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCF00);
    type metadata accessor for UnifiedMessagesBannerNavigationItemAdaptor(255);
    sub_21680DFBC(&qword_280E2A870, &qword_27CACCF00);
    sub_216EF8E18(qword_280E2D080, type metadata accessor for UnifiedMessagesBannerNavigationItemAdaptor);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AA20);
  }

  return result;
}

uint64_t sub_216EF9070()
{
  swift_getAssociatedTypeWitness();
  result = sub_21700F164();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_216EF9120@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_21700F164();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_216EF9210()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0);
  sub_2170089F4();
  v4 = *((v2 & v1) + 0x58);
  v36 = *(v4 + 8);
  v37 = sub_21698EDC8();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = OpaqueTypeMetadata2;
  v33[0] = OpaqueTypeMetadata2;
  v33[1] = MEMORY[0x277CE1428];
  v28 = OpaqueTypeConformance2;
  v33[2] = OpaqueTypeConformance2;
  v34 = MEMORY[0x277CE1410];
  v7 = sub_217009884();
  OUTLINED_FUNCTION_16();
  v30 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v31 = v4;
  v32 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_21700F164();
  OUTLINED_FUNCTION_16();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  OUTLINED_FUNCTION_16();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v28 - v22;
  sub_216EF9120(v18);
  if (__swift_getEnumTagSinglePayload(v18, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v15 + 8))(v18, v13);
  }

  (*(v20 + 32))(v23, v18, AssociatedTypeWitness);
  [v0 frame];
  CGRectGetWidth(v38);
  v26 = MEMORY[0x28223BE20](v25);
  v27 = v31;
  *(&v28 - 4) = v32;
  *(&v28 - 3) = v27;
  *(&v28 - 2) = v23;
  *(&v28 - 1) = v26;
  sub_217009874();
  sub_217009C84();
  v34 = v7;
  WitnessTable = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(v33);
  sub_217009864();
  (*(v30 + 8))(v11, v7);
  MEMORY[0x21CE9FE00](v33);
  return (*(v20 + 8))(v23, AssociatedTypeWitness);
}

uint64_t sub_216EF960C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v54 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_21700F164();
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x28223BE20](v10);
  v51 = &v40 - v11;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v49 = *(a2 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0);
  v19 = sub_2170089F4();
  v50 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v42 = *(a3 + 8);
  v20 = v42;
  v43 = &v40 - v21;
  v22 = sub_21698EDC8();
  v57 = v20;
  v58 = v22;
  WitnessTable = swift_getWitnessTable();
  v55 = *&v19;
  v56 = WitnessTable;
  v45 = WitnessTable;
  v46 = MEMORY[0x277D7EDB8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v25 = *(OpaqueTypeMetadata2 - 8);
  v47 = OpaqueTypeMetadata2;
  v48 = v25;
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v41 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v27);
  v44 = &v40 - v29;
  v30 = *(v12 + 16);
  v30(v15, a1, AssociatedTypeWitness, v28);
  v40 = a3;
  (*(a3 + 40))(v15, a2, a3);
  swift_getKeyPath();
  v55 = a5;
  v31 = v43;
  sub_21700A3D4();

  (*(v49 + 8))(v18, a2);
  v32 = v51;
  (v30)(v51, a1, AssociatedTypeWitness);
  __swift_storeEnumTagSinglePayload(v32, 0, 1, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = v41;
  v35 = v45;
  sub_216BE53B0(v32, 0, 1, v19, AssociatedTypeWitness, v45, AssociatedConformanceWitness, v41);
  (*(v52 + 8))(v32, v53);
  (*(v50 + 8))(v31, v19);
  v55 = *&v19;
  v56 = v35;
  swift_getOpaqueTypeConformance2();
  v36 = v44;
  v37 = v47;
  sub_2166C24DC(v34, v47);
  v38 = *(v48 + 8);
  v38(v34, v37);
  sub_2166C24DC(v36, v37);
  return (v38)(v36, v37);
}

id sub_216EF9B24(double a1, double a2, double a3, double a4)
{
  v9 = *((*MEMORY[0x277D85000] & *v4) + 0x60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_storeEnumTagSinglePayload(v4 + v9, 1, 1, AssociatedTypeWitness);
  v12.receiver = v4;
  v12.super_class = type metadata accessor for ItemViewCell();
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_216EF9C48(void *a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, AssociatedTypeWitness);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ItemViewCell();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id sub_216EF9D68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ItemViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_216EF9DD8(char *a1)
{
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  swift_getAssociatedTypeWitness();
  v3 = sub_21700F164();
  v4 = *(*(v3 - 8) + 8);

  return v4(&a1[v2], v3);
}

uint64_t sub_216EF9F18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = sub_2170093B4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCF98);
  sub_216EFA16C(v2, (a1 + *(v10 + 44)));
  v11 = v2 + *(type metadata accessor for SocialProfileFollowRequestResponseHeaderView() + 20);
  v13 = *v11;
  v12 = *(v11 + 16);
  LOBYTE(v11) = *(v11 + 32);
  v25 = v13;
  v26 = v12;
  if ((v11 & 1) == 0)
  {
    v14 = v13;

    sub_21700ED94();
    v15 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_21680E444(v14, *(&v25 + 1), v26, *(&v26 + 1), 0);
    (*(v6 + 8))(v9, v4);
    v25 = v27;
    v26 = v28;
  }

  v16 = sub_217009C84();
  v17 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCFA0) + 36);
  *v17 = v16;
  v18 = v25;
  *(v17 + 24) = v26;
  *(v17 + 8) = v18;
  *(v17 + 40) = 0;
  v19 = sub_217009C74();
  v20 = sub_217008A34();
  v21 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCFA8) + 36);
  *v21 = v20;
  *(v21 + 8) = v19;
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCFB0) + 36);
  sub_21700B2B4();
  v23 = sub_217009C84();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B20);
  *(v22 + *(result + 36)) = v23;
  return result;
}

uint64_t sub_216EFA16C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCFB8);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7518);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  v11 = (a1 + *(type metadata accessor for SocialProfileFollowRequestResponseHeader() + 24));
  v13 = *v11;
  v12 = v11[1];
  *(inited + 56) = MEMORY[0x277D837D0];
  *(inited + 64) = sub_2167C6E08();
  *(inited + 32) = v13;
  *(inited + 40) = v12;
  sub_21700DF14();
  v14 = sub_216983808(37);
  v39 = v15;
  v40 = v14;
  v16 = v15;
  v17 = sub_21700AD14();
  KeyPath = swift_getKeyPath();
  LOBYTE(inited) = sub_217009C84();
  sub_217007F24();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  LOBYTE(v46[0]) = 0;
  *v9 = sub_2170091A4();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCFC0);
  sub_216EFA4AC(a1, &v9[*(v27 + 44)]);
  sub_21700B3B4();
  sub_2170083C4();
  v28 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCFC8) + 36)];
  v29 = v43;
  *v28 = v42;
  *(v28 + 1) = v29;
  *(v28 + 2) = v44;
  LOBYTE(a1) = sub_217009CA4();
  sub_217007F24();
  v30 = &v9[*(v4 + 44)];
  *v30 = a1;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  sub_2166A6E54(v9, v6, &qword_27CACCFB8);
  v45[0] = v14;
  v45[1] = v16;
  v45[2] = 0;
  v45[3] = MEMORY[0x277D84F90];
  v45[4] = KeyPath;
  v45[5] = v17;
  LOBYTE(v45[6]) = inited;
  LOBYTE(v14) = inited;
  v45[7] = v20;
  v45[8] = v22;
  v45[9] = v24;
  v45[10] = v26;
  LOBYTE(v45[11]) = 0;
  v35 = v41;
  memcpy(v41, v45, 0x59uLL);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCFD0);
  sub_2166A6E54(v6, v35 + *(v36 + 48), &qword_27CACCFB8);
  sub_2166A6E54(v45, v46, &qword_27CAC40C8);
  sub_216697664(v9, &qword_27CACCFB8);
  sub_216697664(v6, &qword_27CACCFB8);
  v46[0] = v40;
  v46[1] = v39;
  v46[2] = 0;
  v46[3] = MEMORY[0x277D84F90];
  v46[4] = KeyPath;
  v46[5] = v17;
  v47 = v14;
  v48 = v20;
  v49 = v22;
  v50 = v24;
  v51 = v26;
  v52 = 0;
  return sub_216697664(v46, &qword_27CAC40C8);
}

uint64_t sub_216EFA4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCFD8);
  MEMORY[0x28223BE20](v4);
  v6 = (&v35 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCFE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  v19 = type metadata accessor for SocialProfileFollowRequestResponseHeader();
  sub_2166A6E54(a1 + *(v19 + 36), &v35, &qword_27CAB6DB0);
  if (v36)
  {
    sub_2166A0F18(&v35, v37);
    sub_2166A0F18(v37, v6);
    v20 = v4[11];
    v21 = sub_217007F04();
    __swift_storeEnumTagSinglePayload(v6 + v20, 1, 1, v21);
    v22 = v4[12];
    *(v6 + v22) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
    swift_storeEnumTagMultiPayload();
    v23 = v6 + v4[13];
    *v23 = swift_getKeyPath();
    v23[40] = 0;
    v6[7] = 0;
    v6[8] = 0;
    v6[5] = sub_216EFA914;
    v6[6] = 0;
    sub_21678818C(v6, v18, &qword_27CACCFD8);
    v24 = v18;
    v25 = 0;
  }

  else
  {
    sub_216697664(&v35, &qword_27CAB6DB0);
    v24 = v18;
    v25 = 1;
  }

  __swift_storeEnumTagSinglePayload(v24, v25, 1, v4);
  sub_2166A6E54(a1 + *(v19 + 32), &v35, &qword_27CAB6DB0);
  if (v36)
  {
    sub_2166A0F18(&v35, v37);
    sub_2166A0F18(v37, v6);
    v26 = v4[11];
    v27 = sub_217007F04();
    __swift_storeEnumTagSinglePayload(v6 + v26, 1, 1, v27);
    v28 = v4[12];
    *(v6 + v28) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
    swift_storeEnumTagMultiPayload();
    v29 = v6 + v4[13];
    *v29 = swift_getKeyPath();
    v29[40] = 0;
    v6[7] = 0;
    v6[8] = 0;
    v6[5] = sub_216EFA930;
    v6[6] = 0;
    sub_21678818C(v6, v15, &qword_27CACCFD8);
    v30 = v15;
    v31 = 0;
  }

  else
  {
    sub_216697664(&v35, &qword_27CAB6DB0);
    v30 = v15;
    v31 = 1;
  }

  __swift_storeEnumTagSinglePayload(v30, v31, 1, v4);
  sub_2166A6E54(v18, v12, &qword_27CACCFE0);
  sub_2166A6E54(v15, v9, &qword_27CACCFE0);
  sub_2166A6E54(v12, a2, &qword_27CACCFE0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCFE8);
  v33 = a2 + *(v32 + 48);
  *v33 = 0x402C000000000000;
  *(v33 + 8) = 0;
  sub_2166A6E54(v9, a2 + *(v32 + 64), &qword_27CACCFE0);
  sub_216697664(v15, &qword_27CACCFE0);
  sub_216697664(v18, &qword_27CACCFE0);
  sub_216697664(v9, &qword_27CACCFE0);
  return sub_216697664(v12, &qword_27CACCFE0);
}

void *sub_216EFA94C@<X0>(__int16 a1@<W0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCFF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &__src[-v7];
  *v8 = sub_21700B3B4();
  v8[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACCFF8);
  sub_216EFAA98(a1, a2, v8 + *(v10 + 44));
  sub_21700B3B4();
  sub_217008BB4();
  sub_21678818C(v8, a3, &qword_27CACCFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD000);
  return memcpy((a3 + *(v11 + 36)), __src, 0x70uLL);
}

uint64_t sub_216EFAA98@<X0>(__int16 a1@<W0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EA0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v46 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD008);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  v20 = *(sub_217008B44() + 20);
  v21 = *MEMORY[0x277CE0118];
  sub_217009294();
  OUTLINED_FUNCTION_34();
  (*(v22 + 104))(&v19[v20], v21);
  __asm { FMOV            V0.2D, #10.0 }

  *v19 = _Q0;
  v28 = sub_21700ACF4();
  KeyPath = swift_getKeyPath();
  v30 = &v19[*(v14 + 44)];
  *v30 = KeyPath;
  v30[1] = v28;
  v31 = sub_216983738(a1);
  v33 = v32;
  v34 = a2();
  v35 = swift_getKeyPath();
  v36 = sub_217009EA4();
  v37 = swift_getKeyPath();
  *&v48 = v31;
  *(&v48 + 1) = v33;
  *&v49 = 0;
  *(&v49 + 1) = MEMORY[0x277D84F90];
  *&v50 = v35;
  *(&v50 + 1) = v34;
  *&v51 = v37;
  *(&v51 + 1) = v36;
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E88);
  sub_2167D95A8();
  sub_21700A304();
  v52[0] = v48;
  v52[1] = v49;
  v52[2] = v50;
  v52[3] = v51;
  sub_216697664(v52, &qword_27CAB7E88);
  v45 = v16;
  sub_2166A6E54(v19, v16, &qword_27CACD008);
  v38 = *(v7 + 16);
  v39 = v46;
  v38(v46, v12, v5);
  v40 = v47;
  sub_2166A6E54(v16, v47, &qword_27CACD008);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD010);
  v38(v40 + *(v41 + 48), v39, v5);
  v42 = *(v7 + 8);
  v42(v12, v5);
  sub_216697664(v19, &qword_27CACD008);
  v42(v39, v5);
  return sub_216697664(v45, &qword_27CACD008);
}

uint64_t type metadata accessor for SocialProfileFollowRequestResponseHeaderView()
{
  result = qword_280E2CD08;
  if (!qword_280E2CD08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216EFAE4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialProfileFollowRequestResponseHeader();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_216EFAED8()
{
  type metadata accessor for SocialProfileFollowRequestResponseHeader();
  if (v0 <= 0x3F)
  {
    sub_21692ED34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_216EFAF5C()
{
  result = qword_27CACD018;
  if (!qword_27CACD018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCFB0);
    sub_216EFB014();
    sub_2166D9530(&qword_27CAB7B18, &qword_27CAB7B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD018);
  }

  return result;
}

unint64_t sub_216EFB014()
{
  result = qword_27CACD020;
  if (!qword_27CACD020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCFA8);
    sub_216EFB0A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD020);
  }

  return result;
}

unint64_t sub_216EFB0A0()
{
  result = qword_27CACD028;
  if (!qword_27CACD028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACCFA0);
    sub_2166D9530(&qword_27CACD030, &qword_27CACD038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD028);
  }

  return result;
}

uint64_t type metadata accessor for ClearRecentSearchesAction()
{
  result = qword_280E35AF8;
  if (!qword_280E35AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216EFB1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v25 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v21 = v16;
  v22 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v19 = v18 - v17;
  sub_21700CE04();
  (*(v7 + 16))(v11, a2, v5);
  sub_21700D224();
  (*(v7 + 8))(a2, v5);
  if (v24)
  {
    return (*(v13 + 8))(a1, v25);
  }

  (*(v13 + 8))(a1, v25);
  return (*(v21 + 32))(a3, v19, v22);
}

uint64_t sub_216EFB44C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD078);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = _s11PlaceholderO20ArtworkConfigurationVMa(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_21700B304() & 1) != 0 && a2 >= 0xA)
  {
    *a3 = a1;
    a3[1] = a2;
    _s11PlaceholderO5ModelOMa(0);
    swift_storeEnumTagMultiPayload();

    return sub_21700DF14();
  }

  else
  {
    sub_216EFB604(a1, a2, v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_216EFCA98(v8);
      *a3 = sub_216EFB6B4(a1, a2);
      a3[1] = v13;
      a3[2] = v14;
      a3[3] = v15;
    }

    else
    {
      sub_216EFC9D8(v8, v11);
      sub_216EFC9D8(v11, a3);
    }

    _s11PlaceholderO5ModelOMa(0);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_216EFB604@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 >= 0xA)
  {
    sub_216685F4C(0, &qword_280E29CF8);
    sub_216EFB834(a1, a2);
    sub_21700C3C4();
    v4 = _s11PlaceholderO20ArtworkConfigurationVMa(0);
    *(a3 + *(v4 + 20)) = 0x3FF0000000000000;
    v5 = a3;
    v6 = 0;
  }

  else
  {
    v4 = _s11PlaceholderO20ArtworkConfigurationVMa(0);
    v5 = a3;
    v6 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v5, v6, 1, v4);
}

unint64_t sub_216EFB6B4(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 1:
      v2 = 0x636973756DLL;
      goto LABEL_11;
    case 2:
      v2 = 0x6F6E2E636973756DLL;
      goto LABEL_11;
    case 3:
      v2 = 0x7265646C6F66;
      goto LABEL_13;
    case 4:
      v2 = 0x6F6E2E636973756DLL;
      goto LABEL_13;
    case 5:
      v2 = 30324;
      goto LABEL_13;
    case 6:
      v2 = 0x696D2E636973756DLL;
      goto LABEL_13;
    case 7:
      v2 = 0x6F69646172;
      goto LABEL_13;
    case 8:
      v2 = 0x73726174697567;
      goto LABEL_11;
    case 9:
      v2 = 0xD000000000000013;
LABEL_11:
      sub_217009DB4();
      break;
    default:
      v2 = 0x662E6E6F73726570;
LABEL_13:
      sub_217009DD4();
      break;
  }

  return v2;
}

id sub_216EFB834(uint64_t a1, uint64_t a2)
{
  objc_allocWithZone(type metadata accessor for MonogramArtworkToken());
  sub_21700DF14();
  v4 = sub_216C49400(a1, a2, 0);
  if (qword_280E354B0 != -1)
  {
    swift_once();
  }

  v5 = [objc_allocWithZone(MEMORY[0x277CD5D50]) initWithToken:v4 dataSource:qword_280E73C20];

  return v5;
}

uint64_t sub_216EFB8F4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = sub_21700ACD4();
  sub_21700B3B4();
  sub_2170083C4();
  if (qword_280E396A0 != -1)
  {
    swift_once();
  }

  v4 = qword_280E396A8;
  v5 = sub_217009C84();

  v6 = sub_21700B3B4();
  v8 = v7;
  v9 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD040) + 36);
  sub_216EFBA6C(a1, a2, v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD048);
  v11 = (v9 + *(result + 36));
  *v11 = v6;
  v11[1] = v8;
  *a3 = v14;
  *(a3 + 8) = v15;
  *(a3 + 16) = v16;
  *(a3 + 24) = v17;
  *(a3 + 32) = v18;
  *(a3 + 40) = v19;
  *(a3 + 48) = v20;
  *(a3 + 56) = v4;
  *(a3 + 64) = v5;
  return result;
}

uint64_t sub_216EFBA6C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a1;
  v53 = a2;
  v57 = a3;
  v58 = sub_217006744();
  v45 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v44 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_21700ADC4();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD050);
  MEMORY[0x28223BE20](v50);
  v46 = &v42 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD058);
  MEMORY[0x28223BE20](v54);
  v56 = &v42 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD060);
  MEMORY[0x28223BE20](v47);
  v48 = &v42 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD068);
  MEMORY[0x28223BE20](v55);
  v51 = &v42 - v9;
  v10 = sub_21700C4B4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_217007474();
  v14 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s11PlaceholderO20ArtworkConfigurationVMa(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = _s11PlaceholderO5ModelOMa(0);
  MEMORY[0x28223BE20](v20);
  v22 = (&v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_216EFB44C(v52, v53, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_216EFC9D8(v22, v19);
      (*(v11 + 16))(v13, v19, v10);
      sub_217007484();
      v24 = v49;
      (*(v14 + 16))(v48, v16, v49);
      swift_storeEnumTagMultiPayload();
      sub_216EFC990(&qword_280E4A3F0, MEMORY[0x277CE43D0]);
      sub_216EFC83C();
      v25 = v51;
      sub_217009554();
      sub_216681B64(v25, v56, &qword_27CACD068);
      swift_storeEnumTagMultiPayload();
      sub_216EFC780();
      sub_216EFC990(&qword_280E4A488, MEMORY[0x277CFBF00]);
      sub_217009554();
      sub_21669987C(v25, &qword_27CACD068);
      (*(v14 + 8))(v16, v24);
      return sub_216EFCA3C(v19);
    }

    else
    {
      v37 = *v22;
      v38 = v22[1];
      sub_216685F4C(0, &qword_280E29B00);
      sub_216873ED4(v37, v38, 0);
      v39 = v44;
      sub_217006734();
      v40 = v45;
      v41 = v58;
      (*(v45 + 16))(v56, v39, v58);
      swift_storeEnumTagMultiPayload();
      sub_216EFC780();
      sub_216EFC990(&qword_280E4A488, MEMORY[0x277CFBF00]);
      sub_217009554();
      return (*(v40 + 8))(v39, v41);
    }
  }

  else
  {
    sub_21700DF14();
    sub_21700ADD4();
    v27 = v42;
    v28 = v43;
    (*(v42 + 104))(v5, *MEMORY[0x277CE0FE0], v43);
    v29 = sub_21700AE04();

    (*(v27 + 8))(v5, v28);
    v30 = [objc_opt_self() tertiaryLabelColor];
    v31 = sub_21700AC44();
    *&v59 = v29;
    *(&v59 + 1) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA3F8);
    sub_2168751F8();
    v32 = v46;
    sub_21700A304();

    v33 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD070) + 36);
    *v33 = 0;
    *(v33 + 8) = 1;
    sub_21700B3B4();
    sub_2170083C4();
    v34 = (v32 + *(v50 + 36));
    v35 = v60;
    *v34 = v59;
    v34[1] = v35;
    v34[2] = v61;
    sub_216681B64(v32, v48, &qword_27CACD050);
    swift_storeEnumTagMultiPayload();
    sub_216EFC990(&qword_280E4A3F0, MEMORY[0x277CE43D0]);
    sub_216EFC83C();
    v36 = v51;
    sub_217009554();
    sub_216681B64(v36, v56, &qword_27CACD068);
    swift_storeEnumTagMultiPayload();
    sub_216EFC780();
    sub_216EFC990(&qword_280E4A488, MEMORY[0x277CFBF00]);
    sub_217009554();
    sub_21669987C(v36, &qword_27CACD068);
    return sub_21669987C(v32, &qword_27CACD050);
  }
}

uint64_t sub_216EFC454()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);
  sub_216847A1C(sub_216EFC4A8, 0);
  result = sub_21700AC44();
  qword_280E396A8 = result;
  return result;
}

id sub_216EFC4A8(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(MEMORY[0x277D75348]);
  if (v1 == 2)
  {
    v3 = 0.149019608;
    v4 = 0.160784314;
  }

  else
  {
    v3 = 0.91372549;
    v4 = 0.917647059;
  }

  return [v2 initWithRed:v3 green:v3 blue:v4 alpha:1.0];
}

uint64_t sub_216EFC538@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  return sub_2167B8890(a1, a2);
}

uint64_t get_enum_tag_for_layout_string_7MusicUI7ArtworkV11PlaceholderO(uint64_t a1)
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

uint64_t sub_216EFC570(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF5 && *(a1 + 16))
  {
    return (*a1 + 2147483638);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 8;
  if (v5 >= 0xA)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216EFC5D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF6)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483638;
    if (a3 >= 0x7FFFFFF6)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF6)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 9;
    }
  }

  return result;
}

void *sub_216EFC624(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_216EFC660(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFF5 && *(a1 + 32))
    {
      v2 = *a1 + 2147483637;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 9;
      if (v4 < 9)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216EFC6C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF6)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2147483638;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFF5)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFF5)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 9;
    }
  }

  return result;
}

unint64_t sub_216EFC780()
{
  result = qword_280E2ABD8;
  if (!qword_280E2ABD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD068);
    sub_216EFC990(&qword_280E4A3F0, MEMORY[0x277CE43D0]);
    sub_216EFC83C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2ABD8);
  }

  return result;
}

unint64_t sub_216EFC83C()
{
  result = qword_280E2AFE0;
  if (!qword_280E2AFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD050);
    sub_216EFC8C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AFE0);
  }

  return result;
}

unint64_t sub_216EFC8C8()
{
  result = qword_280E2B1A8;
  if (!qword_280E2B1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD070);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA3F8);
    sub_2168751F8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B1A8);
  }

  return result;
}

uint64_t sub_216EFC990(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216EFC9D8(uint64_t a1, uint64_t a2)
{
  v4 = _s11PlaceholderO20ArtworkConfigurationVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216EFCA3C(uint64_t a1)
{
  v2 = _s11PlaceholderO20ArtworkConfigurationVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216EFCA98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD078);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216EFCB00()
{
  result = _s11PlaceholderO20ArtworkConfigurationVMa(319);
  if (v1 <= 0x3F)
  {
    result = sub_216EFCB80();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_216EFCB80()
{
  result = qword_280E2A090;
  if (!qword_280E2A090)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_280E2A090);
  }

  return result;
}

unint64_t sub_216EFCBE0()
{
  result = qword_280E2AEC8;
  if (!qword_280E2AEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD040);
    sub_216EFCC98();
    sub_2166D9530(&qword_280E2ACE8, &qword_27CACD048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AEC8);
  }

  return result;
}

unint64_t sub_216EFCC98()
{
  result = qword_280E2AFB0;
  if (!qword_280E2AFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CACD080);
    sub_216DE8AEC();
    sub_2166D9530(&qword_280E2A840, &qword_27CAB7BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AFB0);
  }

  return result;
}

void sub_216EFCDB0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  type metadata accessor for PushNotifications.Subscription(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  sub_216EFCF94();
  v14 = OBJC_IVAR____TtC7MusicUI17PushNotifications_subscriptionsByTopic;
  swift_beginAccess();
  v15 = a2;
  v16 = sub_21693B60C(a2, a3, *(a1 + v14));
  swift_endAccess();
  if (!v16)
  {
    sub_217006224();
    sub_2166A8A94();
    sub_21700E384();
  }

  *a6 = v15;
  a6[1] = a3;
  a6[2] = a4;
  a6[3] = a5;
  sub_21700DF14();

  sub_21700DF14();
  sub_217006214();
  sub_216EFE478(a6, v13);
  swift_isUniquelyReferenced_nonNull_native();
  sub_21693AD84();
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v19 = *(a1 + v14);
  sub_21693AD70();
  *(a1 + v14) = v19;
  swift_endAccess();
  if (v16)
  {
  }

  else
  {
    sub_216EFCFE4();
  }
}

uint64_t sub_216EFCF94()
{
  os_unfair_lock_assert_owner(*(*(v0 + OBJC_IVAR____TtC7MusicUI17PushNotifications_lock) + 16));
  v1 = sub_216EFD92C();
  sub_216EFDBF0(v1, v2);
}

void sub_216EFCFE4()
{
  os_unfair_lock_assert_owner(*(*(v0 + OBJC_IVAR____TtC7MusicUI17PushNotifications_lock) + 16));
  swift_beginAccess();
  v1 = sub_21700DF14();
  v2 = sub_216AB428C(v1);
  v3 = *(v0 + OBJC_IVAR____TtC7MusicUI17PushNotifications_connection);
  if (v3)
  {
    sub_216EFE69C(v2, v3);
  }

  else
  {
  }
}

void sub_216EFD060(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACD120);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - v6;
  v8 = *a2;
  v9 = a2[1];
  v10 = OBJC_IVAR____TtC7MusicUI17PushNotifications_subscriptionsByTopic;
  swift_beginAccess();
  v11 = *(a1 + v10);
  if (!*(v11 + 16))
  {
    goto LABEL_8;
  }

  v12 = sub_2166AF66C(v8, v9);
  if ((v13 & 1) == 0)
  {
    goto LABEL_8;
  }

  v30 = v9;
  v14 = *(*(v11 + 56) + 8 * v12);
  swift_endAccess();
  v15 = type metadata accessor for PushNotifications.Subscription(0);
  sub_21700DF14();
  v16 = sub_2166ABD84();
  if (v17)
  {
    v18 = v16;
    swift_isUniquelyReferenced_nonNull_native();
    v29 = v2;
    v31 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1D8);
    sub_21700F554();
    v14 = v31;
    v19 = *(v31 + 48);
    v20 = sub_217006224();
    (*(*(v20 - 8) + 8))(v19 + *(*(v20 - 8) + 72) * v18, v20);
    sub_216B6B5B8(*(v14 + 56) + *(*(v15 - 8) + 72) * v18, v7);
    sub_2166A8A94();
    sub_21700F574();
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  __swift_storeEnumTagSinglePayload(v7, v21, 1, v15);
  sub_216697664(v7, &unk_27CACD120);
  if (*(v14 + 16))
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v32 = *(a1 + v10);
    sub_21693AD70();
    *(a1 + v10) = v32;
LABEL_8:
    swift_endAccess();
    return;
  }

  swift_beginAccess();
  sub_216A52008(v8, v30, v22, v23, v24, v25, v26, v27, v28, v29);
  swift_endAccess();

  sub_216EFCFE4();
}

void sub_216EFD3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v7 = type metadata accessor for PushNotifications.Subscription(0);
  v51 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_7();
  v50 = v9 - v8;
  v56 = sub_217006224();
  v10 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_7();
  v49 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD110);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  v19 = *&v4[OBJC_IVAR____TtC7MusicUI17PushNotifications_lock];
  sub_21700DF14();
  sub_216E121AC(v19, v4, a2, a3);
  if (v20)
  {
    v21 = v20 + 64;
    v22 = 1 << *(v20 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v20 + 64);
    v25 = (v22 + 63) >> 6;
    v44 = v10 + 32;
    v45 = v10 + 16;
    v48 = v10;
    v54 = (v10 + 8);
    v52 = v20;
    sub_21700DF14();
    v26 = 0;
    v46 = v18;
    v47 = v15;
    v43 = v21;
    v53 = v25;
    if (v24)
    {
      while (1)
      {
        v27 = v26;
LABEL_10:
        v28 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        v29 = v28 | (v27 << 6);
        v30 = v52;
        v31 = v48;
        v32 = v49;
        v33 = v56;
        (*(v48 + 16))(v49, *(v52 + 48) + *(v48 + 72) * v29, v56);
        v34 = v50;
        sub_216EFE478(*(v30 + 56) + *(v51 + 72) * v29, v50);
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD118);
        v36 = *(v35 + 48);
        v37 = *(v31 + 32);
        v15 = v47;
        v37(v47, v32, v33);
        sub_216B6B5B8(v34, &v15[v36]);
        __swift_storeEnumTagSinglePayload(v15, 0, 1, v35);
        v18 = v46;
        v21 = v43;
LABEL_11:
        sub_216EFE4DC(v15, v18);
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD118);
        if (__swift_getEnumTagSinglePayload(v18, 1, v38) == 1)
        {
          break;
        }

        v39 = &v18[*(v38 + 48)];
        v40 = *(v39 + 16);

        sub_216B6B61C(v39);
        if (!v55)
        {
          goto LABEL_19;
        }

        v40();

        (*v54)(v18, v56);
        v25 = v53;
        if (!v24)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v27 >= v25)
        {
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD118);
          __swift_storeEnumTagSinglePayload(v15, 1, 1, v41);
          v24 = 0;
          goto LABEL_11;
        }

        v24 = *(v21 + 8 * v27);
        ++v26;
        if (v24)
        {
          v26 = v27;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
    }
  }
}

uint64_t sub_216EFD8AC()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CACD090);
  __swift_project_value_buffer(v0, qword_27CACD090);
  return sub_217007C94();
}

uint64_t sub_216EFD92C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACD130);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - v2;
  v4 = *MEMORY[0x277D7FA00];
  sub_21700DF44();

  sub_21700DF84();
  (*(v1 + 8))(v3, v0);
  if (v16[0])
  {
    v14 = 0x6D6E6F7269766E65;
    v15 = 0xEB00000000746E65;
    sub_21700F364();
    sub_216934FBC();

    sub_216788110(v16);
    if (!v18)
    {
      sub_216697664(v17, &unk_27CABF7A0);
      return sub_21700E514();
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      return sub_21700E514();
    }

    v5 = v14;
    v6 = v15;
    v7 = objc_opt_self();
    if ((sub_216EFE654(v5, v6, v7) & 1) == 0)
    {

      return sub_21700E514();
    }
  }

  else
  {
    if (qword_27CAB6258 != -1)
    {
      swift_once();
    }

    v8 = sub_217007CA4();
    __swift_project_value_buffer(v8, qword_27CACD090);
    v9 = sub_217007C84();
    v10 = sub_21700ED84();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_216679000, v9, v10, "No push configuration in bag, disabling push notification observation.", v11, 2u);
      MEMORY[0x21CEA1440](v11, -1, -1);
    }

    return 0;
  }

  return v5;
}

void sub_216EFDBF0(uint64_t a1, unint64_t a2)
{
  os_unfair_lock_assert_owner(*(*(v2 + OBJC_IVAR____TtC7MusicUI17PushNotifications_lock) + 16));
  if (a2)
  {
    v5 = v2 + OBJC_IVAR____TtC7MusicUI17PushNotifications_connection;
    v6 = *(v2 + OBJC_IVAR____TtC7MusicUI17PushNotifications_connection);
    if (v6)
    {
      v7 = *(v5 + 8) == a1 && *(v5 + 16) == a2;
      if (!v7 && (sub_21700F7D4() & 1) == 0)
      {
        v14 = v6;
        sub_21700DF14();
        v11 = sub_216EFE144(a1, a2);
        sub_216EFE0A8(v11, v12, v13);
      }

      return;
    }

    v8 = sub_216EFE144(a1, a2);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  sub_216EFE0A8(v8, v9, v10);
}

void sub_216EFDD18(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = &qword_27CAB6000;
  if (a1)
  {
    v9 = qword_27CAB6258;
    v10 = a1;
    sub_21700DF14();
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = sub_217007CA4();
    __swift_project_value_buffer(v11, qword_27CACD090);
    v12 = v10;
    sub_21700DF14();
    v13 = sub_217007C84();
    v14 = sub_21700EDA4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32 = v16;
      *v15 = 136446210;
      sub_21700DF14();
      v17 = sub_2166A85FC(a2, a3, &v32);

      *(v15 + 4) = v17;
      _os_log_impl(&dword_216679000, v13, v14, "Ending APSConnection with environment %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x21CEA1440](v16, -1, -1);
      v18 = v15;
      v6 = &qword_27CAB6000;
      MEMORY[0x21CEA1440](v18, -1, -1);
    }

    else
    {
    }
  }

  v19 = v4 + OBJC_IVAR____TtC7MusicUI17PushNotifications_connection;
  v20 = *(v4 + OBJC_IVAR____TtC7MusicUI17PushNotifications_connection);
  if (v20)
  {
    v22 = *(v19 + 8);
    v21 = *(v19 + 16);
    v23 = v6[75];
    v24 = v20;
    sub_21700DF14();
    if (v23 != -1)
    {
      swift_once();
    }

    v25 = sub_217007CA4();
    __swift_project_value_buffer(v25, qword_27CACD090);
    v26 = v24;
    sub_21700DF14();
    v27 = sub_217007C84();
    v28 = sub_21700EDA4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v32 = v30;
      *v29 = 136446210;
      sub_21700DF14();
      v31 = sub_2166A85FC(v22, v21, &v32);

      *(v29 + 4) = v31;
      _os_log_impl(&dword_216679000, v27, v28, "Starting APSConnection with environment %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x21CEA1440](v30, -1, -1);
      MEMORY[0x21CEA1440](v29, -1, -1);
    }

    else
    {
    }
  }

  os_unfair_lock_assert_owner(*(*(v4 + OBJC_IVAR____TtC7MusicUI17PushNotifications_lock) + 16));
  if (a1)
  {
    [a1 setDelegate_];
    [a1 shutdown];
  }

  if (*v19)
  {
    [*v19 setDelegate_];
  }

  sub_216EFCFE4();
}

void *sub_216EFE0A8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (v3 + OBJC_IVAR____TtC7MusicUI17PushNotifications_connection);
  v6 = *(v3 + OBJC_IVAR____TtC7MusicUI17PushNotifications_connection);
  v7 = *(v3 + OBJC_IVAR____TtC7MusicUI17PushNotifications_connection + 8);
  v8 = *(v3 + OBJC_IVAR____TtC7MusicUI17PushNotifications_connection + 16);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  sub_216EFE708(a1);
  sub_216EFDD18(v6, v7, v8);
  sub_216EFE54C(v6);

  return sub_216EFE54C(a1);
}

id sub_216EFE144(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    if (qword_27CAB6258 != -1)
    {
      swift_once();
    }

    v11 = sub_217007CA4();
    __swift_project_value_buffer(v11, qword_27CACD090);
    v12 = sub_217007C84();
    v13 = sub_21700ED84();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_15;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Environment name is empty.";
    goto LABEL_14;
  }

  v5 = sub_21700E514();
  v7 = v6;
  sub_2166AF2EC();
  v8 = sub_21700EE84();
  objc_allocWithZone(MEMORY[0x277CEEA10]);
  sub_21700DF14();
  v9 = sub_216EFE5A8(a1, a2, v5, v7, v8);
  if (!v9)
  {
    if (qword_27CAB6258 != -1)
    {
      swift_once();
    }

    v16 = sub_217007CA4();
    __swift_project_value_buffer(v16, qword_27CACD090);
    v12 = sub_217007C84();
    v13 = sub_21700ED84();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_15;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Failed to initialize APSConnection";
LABEL_14:
    _os_log_impl(&dword_216679000, v12, v13, v15, v14, 2u);
    MEMORY[0x21CEA1440](v14, -1, -1);
LABEL_15:

    return 0;
  }

  v10 = v9;
  sub_21700DF14();
  return v10;
}

uint64_t sub_216EFE478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushNotifications.Subscription(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216EFE4DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD110);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_216EFE54C(void *result)
{
  if (result)
  {
  }

  return result;
}

id sub_216EFE5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_21700E4D4();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_21700E4D4();

LABEL_6:
  v10 = [v5 initWithEnvironmentName:v8 namedDelegatePort:v9 queue:a5];

  return v10;
}

id sub_216EFE654(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21700E4D4();
  v5 = [a3 isValidEnvironment_];

  return v5;
}

void sub_216EFE69C(uint64_t a1, void *a2)
{
  v3 = sub_21700E804();

  [a2 _setEnabledTopics_];
}

void *sub_216EFE708(void *result)
{
  if (result)
  {
    v1 = result;

    return sub_21700DF14();
  }

  return result;
}

uint64_t type metadata accessor for TVEpisodeDetailPageIntent()
{
  result = qword_27CACD150;
  if (!qword_27CACD150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216EFE804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v43 - v5;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v45 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v48 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v44 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v21 = type metadata accessor for ContentDescriptor();
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v24 = *(v8 + 16);
  v50 = v6;
  v24(v13, v51, v6);
  v25 = v49;
  ContentDescriptor.init(deserializing:using:)(v20, v13, v26, v27, v28, v29, v30, v31, v43, v44, SWORD2(v44), SBYTE6(v44), SHIBYTE(v44));
  if (v25)
  {
    (*(v8 + 8))(v51, v50);
    return (*(v15 + 8))(a1, v48);
  }

  else
  {
    v43 = v15;
    v49 = v8;
    v33 = v47;
    v34 = v48;
    sub_2168ED900(v23, v47);
    v35 = v44;
    sub_21700CE04();
    v36 = v45;
    v37 = v51;
    (v24)(v45);
    v38 = v46;
    ReferrerInfo.init(deserializing:using:)(v35, v36, v46);
    v39 = v34;
    v40 = v43;
    (*(v49 + 8))(v37, v50);
    (*(v40 + 8))(a1, v39);
    v41 = type metadata accessor for ReferrerInfo();
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v41);
    v42 = type metadata accessor for TVEpisodeDetailPageIntent();
    return sub_21693FB5C(v38, v33 + *(v42 + 20));
  }
}

id sub_216EFEB94(JSContext a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v7 = result;
    ContentDescriptor.makeValue(in:)(a1);
    sub_21700F0B4();
    v8 = type metadata accessor for TVEpisodeDetailPageIntent();
    sub_2168CC268(v1 + *(v8 + 20), v5);
    v9 = type metadata accessor for ReferrerInfo();
    if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
    {
      sub_2168CC2D8(v5);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(a1).super.isa;
      sub_2168CC340(v5);
    }

    sub_2166F1F64(isa);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216EFED68(uint64_t a1)
{
  result = sub_2166CEB34(&qword_27CACD160, type metadata accessor for TVEpisodeDetailPageIntent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216EFEE08(uint64_t a1)
{
  *(a1 + 8) = sub_2166CEB34(&qword_27CACD160, type metadata accessor for TVEpisodeDetailPageIntent);
  result = sub_2166CEB34(&qword_27CACD168, type metadata accessor for TVEpisodeDetailPageIntent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_216EFEE8C(uint64_t a1)
{
  result = sub_2166CEB7C(&qword_27CABB870, type metadata accessor for AnyPageRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216EFEEE4(uint64_t a1)
{
  result = sub_2166CEB7C(&qword_27CAB6F30, type metadata accessor for AnyReplayRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216EFEF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_116(a1, a2, a3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_4_151();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_9_109();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = (v11 - v10);
  v13 = type metadata accessor for AnyPageRequestBody(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v17 = v16 - v15;
  sub_2166CEB7C(&qword_27CAC8E18, type metadata accessor for AnyPageRequestBody);
  OUTLINED_FUNCTION_7_123();
  v18 = *(type metadata accessor for AnyPageRequest(0) + 20);
  sub_216697664(v3 + v18, &qword_27CACD170);
  sub_216EFF61C(v17, v3 + v18, type metadata accessor for AnyPageRequestBody);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v13);
  sub_2167DE934(v30, v4);
  sub_2167DE934(v4, v5);
  v22 = sub_217005EF4();
  if (__swift_getEnumTagSinglePayload(v5, 1, v22) == 1)
  {
    OUTLINED_FUNCTION_30_46(v5);
    sub_216EF11F8();
    v23 = swift_allocError();
    OUTLINED_FUNCTION_10_106(v23, v24);
    return OUTLINED_FUNCTION_30_46(v4);
  }

  else
  {
    sub_217005DE4();
    OUTLINED_FUNCTION_5_145();
    (*(v26 + 8))(v5, v22);
    sub_216F8A97C(v12);
    sub_216697664(v4, &qword_27CABA820);

    OUTLINED_FUNCTION_1_220();
    sub_216697664(v3 + v5, &qword_27CACD178);
    OUTLINED_FUNCTION_2_185();
    OUTLINED_FUNCTION_41();
    return __swift_storeEnumTagSinglePayload(v27, v28, v29, v8);
  }
}

uint64_t sub_216EFF28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_116(a1, a2, a3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_4_151();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_9_109();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = (v11 - v10);
  v13 = type metadata accessor for AnyReplayRequestBody(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v17 = v16 - v15;
  sub_2166CEB7C(&qword_27CAC92C0, type metadata accessor for AnyReplayRequestBody);
  OUTLINED_FUNCTION_7_123();
  v18 = *(type metadata accessor for AnyReplayRequest(0) + 20);
  sub_216697664(v3 + v18, &qword_27CACD188);
  sub_216EFF61C(v17, v3 + v18, type metadata accessor for AnyReplayRequestBody);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v13);
  sub_2167DE934(v30, v4);
  sub_2167DE934(v4, v5);
  v22 = sub_217005EF4();
  if (__swift_getEnumTagSinglePayload(v5, 1, v22) == 1)
  {
    OUTLINED_FUNCTION_30_46(v5);
    sub_216EF11F8();
    v23 = swift_allocError();
    OUTLINED_FUNCTION_10_106(v23, v24);
    return OUTLINED_FUNCTION_30_46(v4);
  }

  else
  {
    sub_217005DE4();
    OUTLINED_FUNCTION_5_145();
    (*(v26 + 8))(v5, v22);
    sub_216F8A97C(v12);
    sub_216697664(v4, &qword_27CABA820);

    OUTLINED_FUNCTION_1_220();
    sub_216697664(v3 + v5, &qword_27CACD178);
    OUTLINED_FUNCTION_2_185();
    OUTLINED_FUNCTION_41();
    return __swift_storeEnumTagSinglePayload(v27, v28, v29, v8);
  }
}

uint64_t sub_216EFF55C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  sub_216697664(a1, a3);
  sub_216EFF67C(a2, a1, a5);
  a6(0);
  OUTLINED_FUNCTION_41();
  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_216EFF61C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216EFF67C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216EFF704@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v44 = a2;
  v45 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v43 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v39 = v6;
  v7 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v38 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  v40 = v10;
  v11 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v37 - v19;
  v46 = a1;
  sub_21700CE04();
  v21 = sub_21700CDB4();
  v23 = v22;
  v24 = *(v13 + 8);
  v24(v20, v11);
  if (v23)
  {
    v37 = v7;
    v25 = v42;
    v26 = v43;
    *v42 = v21;
    *(v25 + 8) = v23;
    sub_21700CE04();
    sub_216EFFBBC();
    v27 = v41;
    sub_21700CCD4();
    if (v27)
    {
      (*(v26 + 8))(v44, v45);
      v24(v46, v11);
      v24(v17, v11);
    }

    else
    {
      v24(v17, v11);
      *(v42 + 16) = v47;
      sub_21700CE04();
      v32 = v26;
      v33 = *(v26 + 16);
      v34 = v44;
      v33(v39, v44, v45);
      sub_21700D224();
      (*(v32 + 8))(v34, v45);
      v24(v46, v11);
      v36 = type metadata accessor for FollowRequestResponseAction();
      return (*(v38 + 32))(v42 + *(v36 + 24), v40, v37);
    }
  }

  else
  {
    v28 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    v30 = v29;
    v31 = type metadata accessor for FollowRequestResponseAction();
    *v30 = 0x72506C6169636F73;
    v30[1] = 0xEF4449656C69666FLL;
    v30[2] = v31;
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D22530], v28);
    swift_willThrow();
    (*(v43 + 8))(v44, v45);
    return (v24)(v46, v11);
  }
}

unint64_t sub_216EFFBBC()
{
  result = qword_27CACD198;
  if (!qword_27CACD198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD198);
  }

  return result;
}

uint64_t sub_216EFFC4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  sub_21700CE04();
  v12 = sub_21700CDB4();
  v14 = v13;
  v15 = *(v7 + 8);
  v15(v11, v5);
  if (v14)
  {
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v16 + 8))(a2);
    v17 = type metadata accessor for OpaqueProtoRequestConvertibleIntent();
    result = (*(v7 + 32))(a3 + *(v17 + 36), a1, v5);
    *a3 = v12;
    a3[1] = v14;
  }

  else
  {
    v19 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    v21 = v20;
    v22 = type metadata accessor for OpaqueProtoRequestConvertibleIntent();
    *v21 = 0x646E696B24;
    v21[1] = 0xE500000000000000;
    v21[2] = v22;
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D22530], v19);
    swift_willThrow();
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v23 + 8))(a2);
    return (v15)(a1, v5);
  }

  return result;
}

uint64_t sub_216EFFE90()
{
  v29 = *MEMORY[0x277D85DE8];
  v0 = sub_21700E574();
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_7();
  v1 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  v8 = OUTLINED_FUNCTION_109();
  v9(v8);
  sub_21700CDD4();
  (*(v3 + 8))(v7, v1);
  if (!v26)
  {
    sub_216697CFC(&v25);
    return 0;
  }

  sub_2166EF9C4(&v25, &v27);
  v10 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(&v27, v28);
  v11 = sub_21700F7B4();
  *&v25 = 0;
  v12 = [v10 dataWithJSONObject:v11 options:0 error:&v25];
  swift_unknownObjectRelease();
  v13 = v25;
  if (!v12)
  {
    v18 = v13;
    v19 = sub_217005D34();

    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93C0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_217013DA0;
    *&v25 = 0;
    *(&v25 + 1) = 0xE000000000000000;
    sub_21700F3B4();
    MEMORY[0x21CE9F490](0xD000000000000022, 0x80000002170909D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
    sub_21700F544();
    v21 = v25;
    *(v20 + 56) = MEMORY[0x277D837D0];
    *(v20 + 32) = v21;
    sub_21700F8D4();

LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(&v27);
    return 0;
  }

  sub_217005FB4();

  sub_21700E564();
  OUTLINED_FUNCTION_109();
  sub_21700E534();
  if (!v14)
  {
    v22 = OUTLINED_FUNCTION_109();
    sub_21677A524(v22, v23);
    goto LABEL_8;
  }

  sub_2166F1DCC();
  v15 = sub_21700F084();

  v16 = OUTLINED_FUNCTION_109();
  sub_21677A524(v16, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(&v27);
  return v15;
}

id sub_216F001F4(void *a1)
{
  v2 = sub_216EFFE90();
  if (v2)
  {
    return v2;
  }

  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v3 = result;
    sub_2166F1DCC();
    v5 = sub_21700CEA4();
    v9[3] = MEMORY[0x277D837D0];
    v9[0] = v5;
    v9[1] = v6;
    v7 = a1;
    v8 = sub_2166F1E10(v9, a1);
    sub_2166F1F64(v8);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_216F00324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_21700CDF4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id sub_216F003D0(void *a1)
{
  swift_getWitnessTable();

  return sub_216F001F4(a1);
}

uint64_t sub_216F004A4(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_216F00518@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a2;
  v69 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v60 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v58 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v58 - v18;
  sub_21700D7A4();
  OUTLINED_FUNCTION_2_0();
  sub_21700CE04();
  v62 = v6;
  v21 = *(v6 + 16);
  v20 = v6 + 16;
  v67 = v4;
  v63 = v21;
  v21(v9, v68, v4);
  v22 = type metadata accessor for LiveRadioGridLockup();
  v61 = *(v22 + 24);
  v64 = v9;
  sub_21700D734();
  v66 = a1;
  sub_21700CE04();
  v23 = sub_21700CDB4();
  v25 = v24;
  v26 = v16;
  v27 = *(v11 + 8);
  v65 = v11 + 8;
  v27(v26, v77);
  if (v25)
  {
    v58[0] = v23;
    *&v74 = v23;
    *(&v74 + 1) = v25;
    sub_21700DF14();
    sub_21700F364();
    type metadata accessor for ContentDescriptor();
    v61 = v27;
    OUTLINED_FUNCTION_2_0();
    sub_21700CE04();
    v28 = v68;
    v58[1] = v20;
    v63(v64, v68, v67);
    v59 = v22;
    sub_2166D5234(qword_280E40390, type metadata accessor for ContentDescriptor);
    v29 = v69;
    sub_21700D734();
    sub_21700CE04();
    sub_21700D2E4();
    v61(v19, v77);
    v30 = v72;
    v31 = v28;
    if (v72)
    {
      v32 = v73;
      __swift_project_boxed_opaque_existential_1(v71, v72);
      *&v74 = v58[0];
      *(&v74 + 1) = v25;
      sub_21700F364();
      sub_216BA9D20(v70, v30, v32, &v74);
      sub_216788110(v70);
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
    }

    else
    {

      sub_21669987C(v71, &qword_27CAB6DB0);
      v74 = 0u;
      v75 = 0u;
      v76 = 0;
    }

    v38 = v59;
    v39 = v29 + *(v59 + 36);
    v40 = v75;
    *v39 = v74;
    *(v39 + 16) = v40;
    *(v39 + 32) = v76;
    type metadata accessor for Artwork();
    v41 = v66;
    sub_21700CE04();
    v63(v64, v31, v67);
    sub_2166D5234(&qword_280E2BF60, type metadata accessor for Artwork);
    sub_21700D734();
    sub_21700CE04();
    OUTLINED_FUNCTION_100_1();
    sub_21700D2E4();
    v42 = v77;
    v43 = v61;
    v61(v19, v77);
    sub_21700CE04();
    sub_21700D2E4();
    v44 = OUTLINED_FUNCTION_100_1();
    v43(v44);
    v45 = v60;
    sub_21700CE04();
    v46 = sub_21700CD44();
    (v43)(v45, v42);
    *(v29 + *(v38 + 28)) = v46 & 1;
    sub_21700CE04();
    v47 = sub_21700CDB4();
    v49 = v48;
    v50 = OUTLINED_FUNCTION_100_1();
    v43(v50);
    *(v29 + 40) = v47;
    *(v29 + 48) = v49;
    sub_21700CE04();
    v51 = sub_21700CDB4();
    v53 = v52;
    v54 = OUTLINED_FUNCTION_1_221();
    v55(v54);
    (v43)(v41, v42);
    v56 = OUTLINED_FUNCTION_100_1();
    result = (v43)(v56);
    v57 = (v29 + *(v38 + 48));
    *v57 = v51;
    v57[1] = v53;
  }

  else
  {
    v33 = sub_21700E2E4();
    sub_2166D5234(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    *v34 = 25705;
    v34[1] = 0xE200000000000000;
    v34[2] = v22;
    (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D22530], v33);
    swift_willThrow();
    v35 = OUTLINED_FUNCTION_1_221();
    v36(v35);
    v27(v66, v77);
    return sub_21669987C(v61 + v69, &qword_27CAB6D58);
  }

  return result;
}

uint64_t sub_216F00D7C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_21700EC74();
  if (!v19)
  {
    return sub_21700E894();
  }

  v41 = v19;
  v45 = sub_21700F4D4();
  v32 = sub_21700F4E4();
  sub_21700F484();
  result = sub_21700EC54();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_21700ECE4();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_21700F4C4();
      result = sub_21700ECA4();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_216F01198()
{
  v0 = type metadata accessor for MappedSection(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  v4 = v3 - v2;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  v9 = OUTLINED_FUNCTION_23_61();
  v10(v9);
  if (__swift_getEnumTagSinglePayload(v8, 1, v0) != 1)
  {
    sub_216F04E54(v8, v4, type metadata accessor for MappedSection);
    sub_21700DF14();
    sub_216F04EB4(v4, type metadata accessor for MappedSection);
  }

  return OUTLINED_FUNCTION_7_4();
}

uint64_t sub_216F012F0(uint64_t a1)
{
  v3 = type metadata accessor for MappedSection(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  (*(v12 + 16))(v10 - v9, v1, a1);
  if (__swift_getEnumTagSinglePayload(v11, 1, v3) == 1)
  {
    sub_216F01198();
  }

  else
  {
    sub_216F04E54(v11, v7, type metadata accessor for MappedSection);
    sub_21700DF14();
    sub_216F04EB4(v7, type metadata accessor for MappedSection);
  }

  return OUTLINED_FUNCTION_7_4();
}

uint64_t sub_216F01444()
{
  OUTLINED_FUNCTION_3_2();
  sub_2166D9530(v0, v1);

  return sub_217008684();
}

uint64_t sub_216F014C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216F01198();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_216F014F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_216F012F0(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_216F01518()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v60 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6F08);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v51 - v6;
  v8 = type metadata accessor for MappedSection(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v55 = v11 - v10;
  v12 = *(v2 + 24);
  OUTLINED_FUNCTION_16();
  v54 = v13;
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v53 = &v51 - v16;
  OUTLINED_FUNCTION_36_45();
  v58 = v17;
  v18 = type metadata accessor for CompositeLibraryCatalogView.Section();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  v23 = &v51 - v22;
  OUTLINED_FUNCTION_36_45();
  v59 = v4;
  v24 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v57 = v25;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_105();
  v56 = v27;
  (*(v20 + 16))(v23, v0 + *(v2 + 60), v18);
  if (__swift_getEnumTagSinglePayload(v23, 1, v8) == 1)
  {
    (*v0)();
    v28 = v53;
    v29 = OUTLINED_FUNCTION_33_41();
    v30 = v58;
    sub_2166C24DC(v29, v31);
    v32 = *(v54 + 1);
    v33 = OUTLINED_FUNCTION_33_41();
    v32(v33);
    sub_2166C24DC(v28, v12);
    OUTLINED_FUNCTION_2_186();
    sub_2166D9530(v34, v35);
    v36 = v56;
    OUTLINED_FUNCTION_33_41();
    sub_2166C2718();
    v37 = OUTLINED_FUNCTION_33_41();
    v32(v37);
    (v32)(v28, v12);
  }

  else
  {
    v54 = type metadata accessor for MappedSection;
    v38 = v55;
    sub_216F04E54(v23, v55, type metadata accessor for MappedSection);
    sub_2167CC3A4(v38, v7);
    v39 = *(v0 + *(v2 + 68));
    v52 = *(v0 + *(v2 + 64));
    v53 = v39;
    v40 = *(v0 + 32);
    v41 = v59;
    v42 = &v7[v59[13]];

    *v42 = swift_getKeyPath();
    v42[8] = 0;
    v43 = &v7[v41[12]];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AA0);
    OUTLINED_FUNCTION_3_2();
    sub_2166D9530(v44, &qword_27CAB9AA0);
    *v43 = sub_217008684();
    v43[1] = v45;
    *&v7[v41[9]] = v40;
    v46 = v53;
    *&v7[v41[10]] = v52;
    *&v7[v41[11]] = v46;
    OUTLINED_FUNCTION_2_186();
    sub_2166D9530(v47, &qword_27CAC6F08);
    v36 = v56;
    v30 = v58;
    sub_2166C2CB0();
    sub_216697664(v7, &qword_27CAC6F08);
    sub_216F04EB4(v55, v54);
  }

  OUTLINED_FUNCTION_2_186();
  v50 = sub_2166D9530(v48, v49);
  v61 = v30;
  v62 = v50;
  OUTLINED_FUNCTION_6_1();
  swift_getWitnessTable();
  sub_2166C24DC(v36, v24);
  (*(v57 + 8))(v36, v24);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F019E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = sub_216F01444();
  *(a7 + 3) = v12;
  *(a7 + 4) = a3;
  v13 = type metadata accessor for CompositeLibraryCatalogView.SectionView();
  v14 = v13[15];
  type metadata accessor for CompositeLibraryCatalogView.Section();
  OUTLINED_FUNCTION_34();
  result = (*(v15 + 32))(&a7[v14], a4);
  *&a7[v13[16]] = a5;
  *&a7[v13[17]] = a6;
  return result;
}

void sub_216F01AD8()
{
  OUTLINED_FUNCTION_49();
  v287 = v0;
  v2 = v1;
  v278 = v3;
  v4 = sub_21700D704();
  v5 = OUTLINED_FUNCTION_36(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v276 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  v277 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9180);
  OUTLINED_FUNCTION_36(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_105();
  v274 = v13;
  v272 = sub_2170080D4();
  OUTLINED_FUNCTION_1();
  v275 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v273 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAA8);
  OUTLINED_FUNCTION_36(v18);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_105();
  v271 = v20;
  v288 = v2;
  OUTLINED_FUNCTION_34_38(v293, v2[1], v2[1]);
  v228 = v22;
  v229 = v21;
  type metadata accessor for CompositeLibraryCatalogView.Section();
  v23 = sub_21700E984();
  v24 = v302;
  v339.val[0] = v293[0];
  v339.val[1] = v293[1];
  vst2q_f64(v24, v339);
  v25 = type metadata accessor for CompositeLibraryCatalogView.SectionView();
  OUTLINED_FUNCTION_5_104();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_20_69();
  v27 = swift_getWitnessTable();
  OUTLINED_FUNCTION_19_63();
  v28 = swift_getWitnessTable();
  *&v302[0] = v23;
  *(&v302[0] + 1) = v25;
  *&v302[1] = MEMORY[0x277CE1428];
  *(&v302[1] + 1) = WitnessTable;
  *&v302[2] = v27;
  *(&v302[2] + 1) = MEMORY[0x277CE1410];
  *&v302[3] = &off_2816C2F28;
  *(&v302[3] + 1) = v28;
  type metadata accessor for ShelfCollection();
  OUTLINED_FUNCTION_0_228();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  v29 = sub_217008B64();
  OUTLINED_FUNCTION_10_105();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  v222 = v29;
  v223 = v30;
  v31 = sub_21700B0A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB9F8);
  OUTLINED_FUNCTION_19_0();
  v32 = sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA00);
  OUTLINED_FUNCTION_19_0();
  v33 = sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA18);
  OUTLINED_FUNCTION_19_0();
  v34 = sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA20);
  OUTLINED_FUNCTION_19_0();
  v35 = sub_2170089F4();
  v36 = type metadata accessor for ObjectGraph();
  v279 = v36;
  OUTLINED_FUNCTION_10_56();
  v226 = v31;
  v37 = swift_getWitnessTable();
  OUTLINED_FUNCTION_7_5();
  v39 = v38;
  v41 = sub_2166D9530(v40, &qword_27CABB9F8);
  v221 = v37;
  v337 = v37;
  v338 = v41;
  OUTLINED_FUNCTION_8_72();
  v230 = v32;
  v42 = swift_getWitnessTable();
  v43 = sub_2166D9530(&qword_280E2A7D8, &qword_27CABBA00);
  v225 = v42;
  v335 = v42;
  v336 = v43;
  v235 = v33;
  v44 = swift_getWitnessTable();
  v293[0].n128_u64[0] = v39;
  v45 = sub_2166D9530(&qword_280E2A7E8, &qword_27CABBA18);
  v227 = v44;
  v333 = v44;
  v334 = v45;
  v240 = v34;
  v46 = swift_getWitnessTable();
  v47 = sub_2166D9530(&qword_280E2A7A8, &qword_27CABBA20);
  v233 = v46;
  v331 = v46;
  v332 = v47;
  OUTLINED_FUNCTION_46_1();
  v281 = swift_getWitnessTable();
  *&v302[0] = v35;
  v48 = v35;
  *(&v302[0] + 1) = v36;
  *&v302[1] = v281;
  v292 = MEMORY[0x277D7EDC8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v238 = v50;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_105();
  v237 = v52;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACD1A0);
  OUTLINED_FUNCTION_72_0();
  v239 = OpaqueTypeMetadata2;
  v53 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v249 = v54;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_105();
  v282 = v56;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA68);
  OUTLINED_FUNCTION_36_45();
  v57 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v258 = v58;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_105();
  v257 = v60;
  v61 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v261 = v62;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_105();
  v260 = v64;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA70);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  v267 = sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA78);
  OUTLINED_FUNCTION_19_0();
  v280 = sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA80);
  OUTLINED_FUNCTION_19_0();
  v289 = sub_2170089F4();
  v290 = sub_217009564();
  v291 = sub_217009564();
  v285 = sub_217009564();
  OUTLINED_FUNCTION_16();
  v265 = v65;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_105();
  v283 = v67;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9278);
  OUTLINED_FUNCTION_72_0();
  v284 = sub_2170089F4();
  OUTLINED_FUNCTION_16();
  v264 = v68;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_105();
  v263 = v70;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6E70);
  OUTLINED_FUNCTION_72_0();
  v71 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v266 = v72;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_105();
  v286 = v74;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9290);
  v270 = sub_2170089F4();
  v75 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v269 = v76;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_105();
  v268 = v78;
  v247 = v48;
  *&v302[0] = v48;
  *(&v302[0] + 1) = v279;
  *&v302[1] = v281;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_22_62();
  v81 = sub_2166D9530(v80, &qword_27CACD1A0);
  v219 = OpaqueTypeConformance2;
  v329 = OpaqueTypeConformance2;
  v330 = v81;
  v251 = v53;
  v82 = swift_getWitnessTable();
  v83 = sub_2166D9530(&qword_280E2A7B0, &qword_27CABBA68);
  v220 = v82;
  v327 = v82;
  v328 = v83;
  v259 = v57;
  v224 = swift_getWitnessTable();
  v325 = v224;
  v326 = v83;
  v262 = v61;
  v84 = swift_getWitnessTable();
  v85 = sub_2166D9530(&qword_280E2AC10, &qword_27CABBA70);
  v323 = v84;
  v324 = v85;
  OUTLINED_FUNCTION_7_4();
  v86 = swift_getWitnessTable();
  v321 = v84;
  v322 = v86;
  v87 = swift_getWitnessTable();
  v88 = sub_2166D9530(&qword_280E2AC08, &qword_27CABBA78);
  v319 = v84;
  v320 = v88;
  v89 = swift_getWitnessTable();
  v90 = sub_2166D9530(&qword_280E2ABE8, &qword_27CABBA80);
  v317 = v84;
  v318 = v90;
  v91 = swift_getWitnessTable();
  v315 = v89;
  v316 = v91;
  v92 = swift_getWitnessTable();
  v313 = v87;
  v314 = v92;
  v311 = swift_getWitnessTable();
  v231 = v84;
  v312 = v84;
  v93 = swift_getWitnessTable();
  v94 = sub_2166D9530(&qword_280E2A738, &qword_27CAB9278);
  v232 = v93;
  v309 = v93;
  v310 = v94;
  v95 = swift_getWitnessTable();
  v96 = sub_2166D9530(&qword_27CAC6E68, &qword_27CAC6E70);
  v234 = v95;
  v307 = v95;
  v308 = v96;
  v267 = v71;
  v97 = swift_getWitnessTable();
  v98 = sub_2166D9530(&qword_280E2A768, &qword_27CAB9290);
  v236 = v97;
  v305 = v97;
  v306 = v98;
  v99 = v287;
  v303 = swift_getWitnessTable();
  v304 = v98;
  v100 = swift_getWitnessTable();
  *&v302[0] = v75;
  *(&v302[0] + 1) = v100;
  v101 = swift_getOpaqueTypeMetadata2();
  v270 = v75;
  *&v302[0] = v75;
  v245 = v100;
  *(&v302[0] + 1) = v100;
  v102 = swift_getOpaqueTypeConformance2();
  *&v302[0] = v101;
  *(&v302[0] + 1) = v102;
  OUTLINED_FUNCTION_12_91();
  v103 = swift_getOpaqueTypeMetadata2();
  *&v302[0] = v101;
  *(&v302[0] + 1) = v102;
  v104 = swift_getOpaqueTypeConformance2();
  v243 = v103;
  *&v302[0] = v103;
  v241 = v104;
  *(&v302[0] + 1) = v104;
  v105 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v244 = v106;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_105();
  v242 = v108;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9298);
  OUTLINED_FUNCTION_72_0();
  v246 = v105;
  v109 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v253 = v110;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_105();
  v248 = v112;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB92A0);
  OUTLINED_FUNCTION_72_0();
  v254 = v109;
  sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v255 = v114;
  v256 = v113;
  MEMORY[0x28223BE20](v113);
  v250 = &v217 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v116);
  v252 = &v217 - v117;
  if (*v99)
  {
    v118 = v288;
    v119 = *(v99 + v288[3].n128_i32[0]);

    sub_216E9C900(v120, v119);

    v121 = v99 + *(v118 + 40);
    v122 = *(v121 + 1);
    v293[0].n128_u64[0] = *v121;
    v291 = v122;
    LODWORD(v290) = v121[16];
    v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AA0);
    OUTLINED_FUNCTION_3_2();
    v289 = sub_2166D9530(v123, &qword_27CAB9AA0);
    v124 = sub_2170081B4();
    v125 = sub_216C522F4(v124);

    v217 = type metadata accessor for MenuBuilder();
    v126 = sub_216C65C14();
    v127 = swift_allocObject();
    *(v127 + 16) = v126;
    v218 = type metadata accessor for AddToPlaylistMenuBuilder();
    v280 = swift_allocObject();
    *(v280 + 16) = v125;

    v128 = sub_21700B354();
    MEMORY[0x28223BE20](v128);
    v129 = v228;
    *(&v217 - 4) = v229;
    *(&v217 - 3) = v129;
    *(&v217 - 2) = v99;
    swift_checkMetadataState();
    sub_21700B094();
    v298[0] = v299[0];
    v298[1] = v299[1];
    type metadata accessor for MusicEntityAnnotationWrapper();
    v279 = swift_checkMetadataState();
    sub_21700E094();
    swift_checkMetadataState();
    sub_2166B4D7C(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper);
    sub_21700A654();

    v298[0] = v302[0];
    v298[1] = v302[1];
    v298[2] = v302[2];
    type metadata accessor for PlaybackPresenter();
    sub_21700E094();
    swift_checkMetadataState();
    sub_2166B4D7C(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);
    OUTLINED_FUNCTION_44_21();
    sub_21700A654();

    v298[0] = v299[0];
    v298[1] = v299[1];
    v298[2] = v299[2];
    v298[3] = v299[3];
    v130 = swift_checkMetadataState();
    sub_2166B4D7C(qword_280E45220, type metadata accessor for MenuBuilder);
    v235 = v127;
    sub_21700A654();
    v300[0] = v298[0];
    v300[1] = v298[1];
    v300[2] = v298[2];
    v300[3] = v298[3];
    (*(*(v130 - 8) + 8))(v300, v130);
    memcpy(v298, v302, 0x50uLL);
    v131 = swift_checkMetadataState();
    sub_2166B4D7C(qword_280E36F00, type metadata accessor for AddToPlaylistMenuBuilder);
    sub_21700A654();
    memcpy(v301, v298, sizeof(v301));
    (*(*(v131 - 8) + 8))(v301, v131);
    memcpy(v298, v299, sizeof(v298));
    v132 = swift_checkMetadataState();
    v133 = v237;
    v247 = v125;
    sub_21700A1E4();
    memcpy(v302, v298, sizeof(v302));
    (*(*(v132 - 8) + 8))(v302, v132);
    v134 = v292;
    *&v299[0] = sub_2170081B4();
    v135 = v239;
    sub_2167C9688(v299, v239, v134, v219);

    (*(v238 + 8))(v133, v135);
    v136 = sub_2170081B4();
    MEMORY[0x28223BE20](v136);
    v137 = type metadata accessor for Page(0);
    *(&v217 - 2) = v137;
    v138 = sub_2166B4D7C(&qword_280E2C548, type metadata accessor for Page);
    *(&v217 - 1) = v138;
    swift_getKeyPath();
    OUTLINED_FUNCTION_32_39();
    MEMORY[0x28223BE20](v139);
    OUTLINED_FUNCTION_2_121();
    *(v140 - 16) = v137;
    *(v140 - 8) = v138;
    swift_getKeyPath();
    OUTLINED_FUNCTION_37_46();
    v141 = v271;
    OUTLINED_FUNCTION_23_61();
    sub_217007DE4();

    v281 = type metadata accessor for BackgroundConfiguration(0);
    v142 = OUTLINED_FUNCTION_33_6();
    __swift_storeEnumTagSinglePayload(v142, v143, v144, v145);
    v146 = v257;
    v147 = v251;
    v148 = v282;
    sub_2169850F0();
    sub_216697664(v141, &qword_27CABBAA8);
    (*(v249 + 8))(v148, v147);
    v149 = sub_2170081B4();
    MEMORY[0x28223BE20](v149);
    OUTLINED_FUNCTION_2_121();
    v279 = v137;
    *(v150 - 16) = v137;
    *(v150 - 8) = v138;
    swift_getKeyPath();
    OUTLINED_FUNCTION_37_46();
    MEMORY[0x28223BE20](v151);
    OUTLINED_FUNCTION_2_121();
    *(v152 - 16) = v137;
    *(v152 - 8) = v138;
    swift_getKeyPath();
    OUTLINED_FUNCTION_27_56();

    v153 = OUTLINED_FUNCTION_33_6();
    __swift_storeEnumTagSinglePayload(v153, v154, v155, v281);
    v156 = v259;
    v157 = v260;
    sub_2169850FC();
    sub_216697664(v141, &qword_27CABBAA8);
    (*(v258 + 8))(v146, v156);
    v158 = sub_2170081B4();
    MEMORY[0x28223BE20](v158);
    OUTLINED_FUNCTION_2_121();
    v159 = v279;
    *(v160 - 16) = v279;
    *(v160 - 8) = v138;
    swift_getKeyPath();
    OUTLINED_FUNCTION_37_46();
    MEMORY[0x28223BE20](v161);
    OUTLINED_FUNCTION_2_121();
    *(v162 - 16) = v159;
    *(v162 - 8) = v138;
    swift_getKeyPath();
    OUTLINED_FUNCTION_27_56();

    v163 = OUTLINED_FUNCTION_33_6();
    __swift_storeEnumTagSinglePayload(v163, v164, v165, v281);
    v166 = v262;
    sub_216985178(v141, v262, v231, v283);
    sub_216697664(v141, &qword_27CABBAA8);
    (*(v261 + 8))(v157, v166);
    v167 = sub_2170081B4();
    MEMORY[0x28223BE20](v167);
    OUTLINED_FUNCTION_2_121();
    v168 = v279;
    *(v169 - 16) = v279;
    *(v169 - 8) = v138;
    swift_getKeyPath();
    OUTLINED_FUNCTION_32_39();
    MEMORY[0x28223BE20](v170);
    OUTLINED_FUNCTION_2_121();
    *(v171 - 16) = v168;
    *(v171 - 8) = v138;
    swift_getKeyPath();
    OUTLINED_FUNCTION_37_46();
    v172 = v274;
    OUTLINED_FUNCTION_23_61();
    sub_217007DE4();

    v173 = v272;
    if (__swift_getEnumTagSinglePayload(v172, 1, v272) == 1)
    {
      v181 = v273;
      sub_216F04690(v288, v174, v175, v176, v177, v178, v179, v180, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v172, 1, v173);
      v183 = v275;
      if (EnumTagSinglePayload != 1)
      {
        sub_216697664(v172, &qword_27CAB9180);
      }
    }

    else
    {
      v183 = v275;
      v181 = v273;
      (*(v275 + 32))(v273, v172, v173);
    }

    v184 = v263;
    sub_21700A384();
    (*(v183 + 8))(v181, v173);
    v185 = OUTLINED_FUNCTION_46_1();
    v186(v185);
    sub_2170081B4();
    v187 = v284;
    sub_21700A654();

    (*(v264 + 8))(v184, v187);
    v188 = sub_2170081B4();
    v189 = *(v188 + *(*v188 + 176));

    type metadata accessor for SocialBadgingRequestCoordinator();
    v190 = sub_2166B4D7C(&qword_280E2FFC0, type metadata accessor for SocialBadgingRequestCoordinator);
    v191 = v267;
    v192 = v286;
    sub_2168532E4(v189, v236, v190, v268);

    (*(v266 + 8))(v192, v191);
    v193 = MEMORY[0x277D84F90];
    sub_21700E384();
    sub_21700D6F4();
    sub_216C5570C(v193);
    v194 = v277;
    OUTLINED_FUNCTION_23_61();
    sub_21700D124();
    sub_21700D194();
    v195 = OUTLINED_FUNCTION_33_6();
    __swift_storeEnumTagSinglePayload(v195, v196, v197, v198);
    v199 = sub_2170081B4();
    v200 = *(v199 + *(*v199 + 160));

    v201 = v242;
    sub_216AD2BF8(v194, 0, 0, 0xD00000000000002ALL, 0x8000000217090A00, v200, v270, v245, v242);

    sub_216697664(v194, &qword_27CAB8DF8);
    v202 = OUTLINED_FUNCTION_44_21();
    v203(v202);
    type metadata accessor for UserSocialProfileCoordinator();
    *&v299[0] = v243;
    *(&v299[0] + 1) = v241;
    v204 = swift_getOpaqueTypeConformance2();
    sub_2166B4D7C(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator);
    v205 = v248;
    v206 = v246;
    sub_21700A654();
    (*(v244 + 8))(v201, v206);
    type metadata accessor for SocialGraphController();
    v207 = sub_2166D9530(&qword_280E2A778, &qword_27CAB9298);
    v296 = v204;
    v297 = v207;
    v208 = v254;
    v209 = swift_getWitnessTable();
    sub_2166B4D7C(&qword_280E39AC8, type metadata accessor for SocialGraphController);
    OUTLINED_FUNCTION_46_1();
    sub_21700A654();

    (*(v253 + 8))(v205, v208);
    v210 = sub_2166D9530(&qword_280E2A7B8, &qword_27CAB92A0);
    v294 = v209;
    v295 = v210;
    v211 = v256;
    swift_getWitnessTable();
    v212 = v252;
    v213 = OUTLINED_FUNCTION_44_21();
    sub_2166C24DC(v213, v214);
    v215 = *(v255 + 8);
    v216 = OUTLINED_FUNCTION_44_21();
    v215(v216);
    sub_2166C24DC(v212, v211);
    (v215)(v212, v211);
    OUTLINED_FUNCTION_26();
  }

  else
  {
    type metadata accessor for MusicStackAuthority();
    sub_2166B4D7C(&qword_280E46D08, type metadata accessor for MusicStackAuthority);
    sub_217008CD4();
    __break(1u);
  }
}

uint64_t sub_216F038E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CompositeLibraryCatalogView();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  (*(v7 + 16))(&v21 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  type metadata accessor for CompositeLibraryCatalogView.Section();
  v13 = sub_21700E984();
  v23 = a2;
  v24 = a2;
  v25 = a3;
  v26 = a3;
  v14 = type metadata accessor for CompositeLibraryCatalogView.SectionView();
  WitnessTable = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v23 = v13;
  v24 = v14;
  v25 = MEMORY[0x277CE1428];
  v26 = WitnessTable;
  v27 = v16;
  v28 = MEMORY[0x277CE1410];
  v29 = &off_2816C2F28;
  v30 = v17;
  type metadata accessor for ShelfCollection();
  swift_getWitnessTable();
  v21 = sub_217008B54();
  v22 = v18;
  v19 = sub_217008B64();
  swift_getWitnessTable();
  sub_2166C24DC(&v21, v19);

  v21 = v23;
  v22 = v24;
  sub_2166C24DC(&v21, v19);
}

uint64_t sub_216F03BA4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v28 = a4;
  v7 = type metadata accessor for CompositeLibraryCatalogView();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  *&v37 = sub_216F03F4C(v11);
  (*(v8 + 16))(v10, a1, v7);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v10, v7);
  type metadata accessor for CompositeLibraryCatalogView.Section();
  v14 = sub_21700E984();
  *&v41 = a2;
  *(&v41 + 1) = a2;
  *&v42 = a3;
  *(&v42 + 1) = a3;
  v15 = type metadata accessor for CompositeLibraryCatalogView.SectionView();
  WitnessTable = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v19 = sub_216922514();
  v21 = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  *(v22 + 24) = v21;
  sub_216922530(&v37, 0, 0, 0, 0, sub_216F04998, v13, sub_216F04A44, v22, v14, v15, MEMORY[0x277CE1428], WitnessTable, v17, MEMORY[0x277CE1410], &off_2816C2F28, v18, v26, v27, v28, v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1));
  v29 = v41;
  v30 = v42;
  v31 = v43;
  v32 = v44;
  *&v37 = v14;
  *(&v37 + 1) = v15;
  *&v38 = MEMORY[0x277CE1428];
  *(&v38 + 1) = WitnessTable;
  *&v39 = v17;
  *(&v39 + 1) = MEMORY[0x277CE1410];
  *&v40 = &off_2816C2F28;
  *(&v40 + 1) = v18;
  v23 = type metadata accessor for ShelfCollection();
  swift_getWitnessTable();
  sub_2166C24DC(&v29, v23);
  v37 = v29;
  v38 = v30;
  v39 = v31;
  v40 = v32;
  v24 = *(*(v23 - 8) + 8);
  v24(&v37, v23);
  v29 = v33;
  v30 = v34;
  v31 = v35;
  v32 = v36;
  sub_2166C24DC(&v29, v23);
  v41 = v29;
  v42 = v30;
  v43 = v31;
  v44 = v32;
  return (v24)(&v41, v23);
}

uint64_t sub_216F03F4C(uint64_t a1)
{
  v2 = type metadata accessor for MappedCatalogPage(0);
  MEMORY[0x28223BE20](v2);
  v33 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D28);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AA0);
  sub_2166D9530(&qword_27CAB9AA8, &qword_27CAB9AA0);
  sub_2170081B4();
  v10 = type metadata accessor for Page(0);
  v36 = v10;
  v11 = sub_2166B4D7C(&qword_280E2C548, type metadata accessor for Page);
  v37 = v11;
  swift_getKeyPath();
  v34 = v10;
  v35 = v11;
  swift_getKeyPath();
  sub_217007DE4();

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D30);
  if (__swift_getEnumTagSinglePayload(v9, 1, v12) != 1)
  {
    sub_216681B04(v9, v6, &qword_27CAC6D28);
    if (!swift_getEnumCaseMultiPayload())
    {
      v19 = v33;
      sub_216F04E54(v6, v33, type metadata accessor for MappedCatalogPage);
      v21 = *(a1 + 16);
      v20 = *(a1 + 24);
      v22 = type metadata accessor for CompositeLibraryCatalogView.Section();
      sub_21700F794();
      swift_allocObject();
      v23 = sub_21700E854();
      v25 = v24;
      v26 = type metadata accessor for MappedSection(0);
      __swift_storeEnumTagSinglePayload(v25, 1, 1, v26);
      v27 = sub_216A3FD4C(v23);
      v38 = *(v19 + *(v2 + 24));
      v39 = v27;
      MEMORY[0x28223BE20](v27);
      *(&v32 - 2) = v21;
      *(&v32 - 1) = v20;
      sub_21700DF14();
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9000);
      v29 = sub_2166D9530(qword_27CACD1B0, &qword_27CAB9000);
      v31 = sub_216F00D7C(sub_216F04A6C, (&v32 - 4), v28, v22, MEMORY[0x277D84A98], v29, MEMORY[0x277D84AC0], v30);

      v38 = v31;
      sub_21700E984();
      swift_getWitnessTable();
      sub_21700E8E4();
      sub_216F04EB4(v19, type metadata accessor for MappedCatalogPage);
      v17 = v39;
      goto LABEL_5;
    }

    sub_216697664(v6, &qword_27CAC6D30);
  }

  type metadata accessor for CompositeLibraryCatalogView.Section();
  sub_21700F794();
  swift_allocObject();
  v13 = sub_21700E854();
  v15 = v14;
  v16 = type metadata accessor for MappedSection(0);
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  v17 = sub_216A3FD4C(v13);
LABEL_5:
  sub_216697664(v9, &qword_27CAC6D28);
  return v17;
}

uint64_t sub_216F044C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v23 = a2;
  v24 = a3;
  v21 = a1;
  v22 = a6;
  v19 = a5;
  v20 = type metadata accessor for CompositeLibraryCatalogView.Section();
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = &v15 - v8;
  v10 = type metadata accessor for CompositeLibraryCatalogView();
  v11 = (a4 + *(v10 + 44));
  v12 = v11[1];
  v18 = *v11;
  v16 = a4;
  v17 = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AA0);
  sub_2166D9530(&qword_27CAB9AA8, &qword_27CAB9AA0);
  sub_2170081B4();
  v13 = *(v16 + *(v10 + 52));
  (*(v7 + 16))(v9, v21, v20);

  return sub_216F019E8(v18, v17, v13, v9, v23, v24, v22);
}

void sub_216F04690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7();
  v33 = v32 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  v36 = &a9 - v35;
  sub_216681B04(v20 + *(v24 + 36), &a9 - v35, &qword_27CAB9128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_34();
    (*(v37 + 32))(v26, v36);
  }

  else
  {
    sub_21700ED94();
    v38 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v29 + 8))(v33, v27);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216F0485C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2167CC3A4(a1, a2);
  v3 = type metadata accessor for MappedSection(0);
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v3);
}

uint64_t sub_216F04900@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for CompositeLibraryCatalogView();
  OUTLINED_FUNCTION_36(v5);
  v7 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_216F03BA4(v7, v3, v4, a1);
}

uint64_t sub_216F04998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v9 = *(v4 + 16);
  OUTLINED_FUNCTION_36_45();
  v10 = type metadata accessor for CompositeLibraryCatalogView();
  OUTLINED_FUNCTION_36(v10);
  v12 = v4 + ((*(v11 + 80) + 32) & ~*(v11 + 80));

  return sub_216F044C0(a1, a2, a3, v12, v9, a4);
}

void sub_216F04A8C()
{
  sub_2166B0B84();
  if (v0 <= 0x3F)
  {
    sub_216F04D74(319, &qword_27CAC6E90, MEMORY[0x277CDF860]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObjectGraph();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CompositeLibraryCatalogView.Section();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_216F04B9C()
{
  v0 = type metadata accessor for MappedSection(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_216F04C1C()
{
  sub_2166B49AC();
  if (v0 <= 0x3F)
  {
    sub_216820EBC();
    if (v1 <= 0x3F)
    {
      sub_216F04D74(319, &qword_27CACD338, MEMORY[0x277CDF4A0]);
      if (v2 <= 0x3F)
      {
        sub_2166B0B84();
        if (v3 <= 0x3F)
        {
          type metadata accessor for AppDestinationPageProviderBox();
          if (v4 <= 0x3F)
          {
            type metadata accessor for ObjectGraph();
            if (v5 <= 0x3F)
            {
              type metadata accessor for UserSocialProfileCoordinator();
              if (v6 <= 0x3F)
              {
                type metadata accessor for SocialGraphController();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_216F04D74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9AA0);
    OUTLINED_FUNCTION_3_2();
    v8 = sub_2166D9530(v7, &qword_27CAB9AA0);
    v9 = a3(a1, v6, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_216F04E54(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216F04EB4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216F04F64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  OUTLINED_FUNCTION_1();
  v24 = v1;
  v25 = v0;
  MEMORY[0x28223BE20](v0);
  v3 = &v23 - v2;
  v4 = sub_21700DA84();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v23 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v15 = type metadata accessor for ModalFlowAction();
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700D234();
  type metadata accessor for FlowAction.Destination(0);
  swift_storeEnumTagMultiPayload();
  *&v17[*(v15 + 24)] = xmmword_217015580;
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  sub_21700E094();
  v26[3] = v15;
  v26[4] = sub_216F052D8(qword_280E426A8, type metadata accessor for ModalFlowAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  sub_216B9DD8C(v17, boxed_opaque_existential_1);
  (*(v6 + 16))(v3, v9, v4);
  v20 = v24;
  v19 = v25;
  (*(v24 + 104))(v3, *MEMORY[0x277D21E10], v25);
  v21 = sub_21700D5E4();
  (*(v20 + 8))(v3, v19);
  (*(v6 + 8))(v9, v4);
  (*(v23 + 8))(v14, v10);
  sub_216B9DDF0(v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  return v21;
}

uint64_t sub_216F052D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216F05378(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v61 = a1;
  sub_21700D2A4();
  OUTLINED_FUNCTION_1();
  v71 = v3;
  v72 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  v70 = v5 - v4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  OUTLINED_FUNCTION_1();
  v65 = v6;
  MEMORY[0x28223BE20](v7);
  v63 = v58 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v66 = v9;
  MEMORY[0x28223BE20](v10);
  v64 = v58 - v11;
  v62 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v60 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v16 = v15 - v14;
  v58[1] = type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v20 = v19 - v18;
  v21 = sub_21700D704();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  v26 = v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = v58 - v28;
  v59 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7();
  v35 = v34 - v33;
  v36 = type metadata accessor for FlowAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7();
  v40 = v39 - v38;
  if (sub_21688D828(3, 48))
  {
    sub_21700D234();
  }

  else
  {
    sub_21700D6F4();
    sub_21700D6D4();
    (*(v23 + 16))(v26, v29, v21);
    sub_21700D244();
    (*(v23 + 8))(v29, v21);
  }

  sub_216F05AB8(v61, v20, type metadata accessor for GoToArtistContext);
  swift_storeEnumTagMultiPayload();
  v75 = 0;
  v73 = 0u;
  v74 = 0u;
  v41 = sub_217005EF4();
  OUTLINED_FUNCTION_3_27(v41);
  v42 = type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_3_27(v42);
  v43 = type metadata accessor for ReferrerInfo();
  OUTLINED_FUNCTION_3_27(v43);
  v44 = v40 + v36[10];
  *(v44 + 32) = 0;
  *v44 = 0u;
  *(v44 + 16) = 0u;
  v45 = v59;
  (*(v31 + 16))(v40, v35, v59);
  sub_216F05AB8(v20, v40 + v36[5], type metadata accessor for FlowAction.Destination);
  sub_217006214();
  v46 = sub_2170061F4();
  v48 = v47;
  (*(v60 + 8))(v16, v62);
  sub_2167B96B4(v20, type metadata accessor for FlowAction.Destination);
  (*(v31 + 8))(v35, v45);
  v49 = (v40 + v36[6]);
  *v49 = v46;
  v49[1] = v48;
  *(v40 + v36[7]) = 0;
  sub_2167A66B4(&v73, v44);
  type metadata accessor for ObjectGraph();
  v50 = v64;
  v51 = v68;
  sub_21700E094();
  *(&v74 + 1) = v36;
  v75 = sub_216F05A70(qword_280E45BB8, type metadata accessor for FlowAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v73);
  sub_216F05AB8(v40, boxed_opaque_existential_1, type metadata accessor for FlowAction);
  v53 = v65;
  v54 = v63;
  v55 = v67;
  (*(v65 + 104))(v63, *MEMORY[0x277D21E18], v67);
  sub_21700D5E4();

  (*(v53 + 8))(v54, v55);
  __swift_destroy_boxed_opaque_existential_1Tm(&v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0);
  (*(v71 + 104))(v70, *MEMORY[0x277D21CA8], v72);
  v56 = sub_21700E1F4();
  (*(v66 + 8))(v50, v51);
  sub_2167B96B4(v40, type metadata accessor for FlowAction);
  return v56;
}

uint64_t sub_216F05A70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216F05AB8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216F05B18@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  sub_217006224();
  OUTLINED_FUNCTION_1();
  v78 = v2;
  v79 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  v77 = v4 - v3;
  v5 = OUTLINED_FUNCTION_4_1();
  v73 = type metadata accessor for FlowAction.Destination(v5);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v72 = (v8 - v7);
  OUTLINED_FUNCTION_4_1();
  sub_21700D704();
  OUTLINED_FUNCTION_1();
  v68 = v10;
  v69 = v9;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v68 - v14;
  v76 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v74 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v20 = v19 - v18;
  v21 = type metadata accessor for RecordLabelDetailPageIntent();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7();
  v25 = v24 - v23;
  v26 = type metadata accessor for ContentDescriptor();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7();
  v29 = v28 - v27;
  v30 = sub_21700BE64();
  v32 = v31;
  LOBYTE(v80[0]) = 1;
  sub_217005EF4();
  OUTLINED_FUNCTION_38_2();
  v71 = v33;
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
  *v29 = 17;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  *(v29 + 40) = 0u;
  *(v29 + 56) = 0u;
  *(v29 + 72) = 0u;
  *(v29 + 88) = v30;
  *(v29 + 96) = v32;
  *(v29 + 104) = 0;
  *(v29 + 112) = 1;
  sub_216F068A4(v29, v25, type metadata accessor for ContentDescriptor);
  v37 = type metadata accessor for ReferrerInfo();
  v38 = v25;
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v37);
  if (sub_21688D828(32, 48))
  {
    v42 = v20;
    sub_21700D234();
  }

  else
  {
    sub_21700D6F4();
    sub_21700D6D4();
    v44 = v68;
    v43 = v69;
    (*(v68 + 16))(v13, v15, v69);
    v42 = v20;
    sub_21700D244();
    (*(v44 + 8))(v15, v43);
  }

  v45 = v72;
  v72[3] = v21;
  v45[4] = sub_216F0685C(&qword_27CAC9E90, type metadata accessor for RecordLabelDetailPageIntent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
  v70 = v38;
  sub_216F068A4(v38, boxed_opaque_existential_1, type metadata accessor for RecordLabelDetailPageIntent);
  swift_storeEnumTagMultiPayload();
  v47 = type metadata accessor for FlowAction(0);
  v81 = 0;
  memset(v80, 0, sizeof(v80));
  v48 = v75;
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v71);
  type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v37);
  v59 = v48 + v47[10];
  *(v59 + 32) = 0;
  *v59 = 0u;
  *(v59 + 16) = 0u;
  v60 = v74;
  v61 = v76;
  (*(v74 + 16))(v48, v42, v76);
  sub_216F068A4(v45, v48 + v47[5], type metadata accessor for FlowAction.Destination);
  v62 = v77;
  sub_217006214();
  v63 = sub_2170061F4();
  v73 = v64;
  (*(v78 + 8))(v62, v79);
  (*(v60 + 8))(v42, v61);
  sub_216F06904(v70, type metadata accessor for RecordLabelDetailPageIntent);
  sub_216F06904(v29, type metadata accessor for ContentDescriptor);
  sub_216F06904(v45, type metadata accessor for FlowAction.Destination);
  v65 = (v48 + v47[6]);
  v66 = v73;
  *v65 = v63;
  v65[1] = v66;
  *(v48 + v47[7]) = 0;
  return sub_2167A66B4(v80, v59);
}

uint64_t sub_216F060C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v73 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v79 = v7 - v6;
  v8 = OUTLINED_FUNCTION_4_1();
  v78 = type metadata accessor for FlowAction(v8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v77 = v11 - v10;
  OUTLINED_FUNCTION_4_1();
  v76 = sub_21700BEA4();
  OUTLINED_FUNCTION_1();
  v72 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v75 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD340);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v65 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACBAF0);
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v65 - v23;
  __src[0] = sub_21700C164();
  __src[1] = v25;
  sub_21700DF14();
  MEMORY[0x21CE9F490](0x7265746F6F66, 0xE600000000000000);

  v26 = type metadata accessor for ContainerDetailTracklistFooterLockup();
  sub_21700F364();
  type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  sub_216BC8BF0();
  v31 = (a2 + v26[8]);
  *v31 = v32;
  v31[1] = v33;
  sub_21700C0F4();
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_216F06790(v18);
LABEL_5:
    v34 = (a2 + v26[9]);
    *v34 = 0;
    v34[1] = 0;
    v34[2] = 0;
    goto LABEL_14;
  }

  (*(v21 + 32))(v24, v18, v19);
  if (sub_216E9A370())
  {
    (*(v21 + 8))(v24, v19);
    goto LABEL_5;
  }

  v35 = sub_216F067F8();
  v36 = sub_21700EC74();
  v37 = MEMORY[0x277D84F90];
  if (v36)
  {
    v38 = v36;
    v65 = v21;
    v66 = v26;
    v67 = a1;
    v68 = a2;
    v83 = MEMORY[0x277D84F90];
    sub_216AB96F8(0, v36 & ~(v36 >> 63), 0);
    v37 = v83;
    result = sub_21700EC54();
    if (v38 < 0)
    {
      __break(1u);
      return result;
    }

    v74 = (v72 + 2);
    ++v73;
    ++v72;
    v71 = v24;
    v70 = v35;
    v69 = v19;
    do
    {
      v40 = sub_21700ECE4();
      v42 = v75;
      v41 = v76;
      (*v74)(v75);
      v40(v81, 0);
      v43 = v77;
      sub_216F05B18(v77);
      v44 = sub_21700BE84();
      v46 = v45;
      __src[7] = v78;
      __src[8] = sub_216F0685C(qword_280E45BB8, type metadata accessor for FlowAction);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&__src[4]);
      sub_216F068A4(v43, boxed_opaque_existential_1, type metadata accessor for FlowAction);
      v48 = v79;
      sub_217006214();
      v49 = sub_2170061F4();
      v51 = v50;
      (*v73)(v48, v80);
      sub_216F06904(v43, type metadata accessor for FlowAction);
      (*v72)(v42, v41);
      __src[0] = v49;
      __src[1] = v51;
      __src[2] = v44;
      __src[3] = v46;
      v83 = v37;
      v53 = *(v37 + 16);
      v52 = *(v37 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_216AB96F8(v52 > 1, v53 + 1, 1);
        v37 = v83;
      }

      *(v37 + 16) = v53 + 1;
      memcpy((v37 + 72 * v53 + 32), __src, 0x48uLL);
      v24 = v71;
      v19 = v69;
      sub_21700ECA4();
      --v38;
    }

    while (v38);
    a2 = v68;
    a1 = v67;
    v26 = v66;
    v21 = v65;
  }

  v54 = sub_216983738(228);
  v56 = v55;
  (*(v21 + 8))(v24, v19);
  v57 = (a2 + v26[9]);
  *v57 = v54;
  v57[1] = v56;
  v57[2] = v37;
LABEL_14:
  v58 = sub_21700C144();
  if (v58 == 2 || (v58 & 1) == 0)
  {
    v59 = MEMORY[0x277D84F90];
  }

  else
  {
    v59 = &unk_28290EB00;
  }

  sub_21700C1E4();
  OUTLINED_FUNCTION_34();
  (*(v60 + 8))(a1);
  *(a2 + v26[10]) = v59;
  sub_21700D7A4();
  OUTLINED_FUNCTION_38_2();
  result = __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  *(a2 + v26[7]) = 0;
  return result;
}

uint64_t sub_216F06790(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216F067F8()
{
  result = qword_27CACBAF8;
  if (!qword_27CACBAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CACBAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACBAF8);
  }

  return result;
}

uint64_t sub_216F0685C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216F068A4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216F06904(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216F069A4()
{
  OUTLINED_FUNCTION_6_8();
  sub_21700E614();
  return sub_21700F944();
}

uint64_t sub_216F06A00()
{
  OUTLINED_FUNCTION_6_8();
  sub_21700E614();
  return sub_21700F944();
}

uint64_t sub_216F06B1C(uint64_t a1)
{
  OUTLINED_FUNCTION_6_8();
  MEMORY[0x21CEA0720](a1);
  return sub_21700F944();
}

uint64_t sub_216F06CB8()
{
  OUTLINED_FUNCTION_6_8();
  sub_21700E614();
  return sub_21700F944();
}

uint64_t sub_216F06DA8(char a1)
{
  OUTLINED_FUNCTION_6_8();
  MEMORY[0x21CEA0720](qword_217070FE0[a1]);
  return sub_21700F944();
}

uint64_t sub_216F06DF4(char a1)
{
  OUTLINED_FUNCTION_6_8();
  MEMORY[0x21CEA0720](qword_217071010[a1]);
  return sub_21700F944();
}

uint64_t sub_216F06F54(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_6_8();
  a2(v5, a1);
  return sub_21700F944();
}

uint64_t sub_216F06FFC(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_6_8();
  a2(a1);
  sub_21700E614();

  return sub_21700F944();
}

uint64_t sub_216F0706C()
{
  OUTLINED_FUNCTION_20_3();
  if (!v3)
  {
    return 1;
  }

  OUTLINED_FUNCTION_5_146();
  v5 = v5 && v4 == v0;
  if (v5 || (sub_21700F7D4() & 1) != 0)
  {
    return 5;
  }

  v7 = *(v1 + 32);
  v8 = *(v7 + 16);

  sub_21700DF14();
  os_unfair_lock_lock(v8);
  v9 = sub_216F08C30();
  v10 = sub_2169356A4(v2, v0, v9);

  os_unfair_lock_unlock(*(v7 + 16));

  if (v10 == 6)
  {
    return 1;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_216F07138()
{
  v0 = sub_21700F5E4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216F0718C(char a1)
{
  if (a1)
  {
    return 0x656E696C636564;
  }

  else
  {
    return 0x747065636361;
  }
}

uint64_t sub_216F071C0()
{
  v0 = sub_21700F5E4();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_216F0720C(uint64_t a1, char a2)
{
  v5 = *(v2 + 32);
  v6 = *(v5 + 16);

  sub_21700DF14();
  os_unfair_lock_lock(v6);
  sub_216F08750(a2, v2, a1);
  os_unfair_lock_unlock(*(v5 + 16));
}

uint64_t sub_216F072A0(uint64_t a1)
{
  v17[3] = MEMORY[0x277D84FA0];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      v6 = HIBYTE(*v3) & 0xF;
      if ((*v3 & 0x2000000000000000) == 0)
      {
        v6 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (v6)
      {
        v7 = v1[5] == v4 && v1[6] == v5;
        if (!v7 && (sub_21700F7D4() & 1) == 0)
        {
          sub_21700DF14();
          sub_2168A140C(v17, v4, v5, v8, v9, v10, v11, v12, v17[0], v17[1]);
        }
      }

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  v13 = v1[4];
  v14 = *(v13 + 16);

  os_unfair_lock_lock(v14);
  swift_beginAccess();
  v15 = sub_21700DF14();
  sub_216AB3F0C(v15);
  swift_endAccess();
  os_unfair_lock_unlock(*(v13 + 16));
}

uint64_t sub_216F073C4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_20_3();
  if (!v2)
  {
    return 0;
  }

  MEMORY[0x21CE9F490]();
  return 64;
}

id sub_216F0742C()
{
  v0 = sub_21700E804();

  v1 = [swift_getObjCClassFromMetadata() propertySetWithProperties_];

  return v1;
}

uint64_t sub_216F07498(char a1)
{
  v2 = 126;
  v3 = 0;
  switch(a1)
  {
    case 1:
      v2 = 122;
      return sub_216983738(v2);
    case 2:
      v2 = 273;
      return sub_216983738(v2);
    case 3:
      v2 = 348;
      return sub_216983738(v2);
    case 4:
      return v3;
    case 5:
      v2 = 95;
      return sub_216983738(v2);
    default:
      return sub_216983738(v2);
  }
}

uint64_t sub_216F0750C(char a1)
{
  result = 0x2064656B636F6C62;
  switch(a1)
  {
    case 1:
      v3 = 177;
      return sub_216983738(v3);
    case 2:
      v3 = 273;
      return sub_216983738(v3);
    case 3:
      v3 = 42;
      return sub_216983738(v3);
    case 4:
      return result;
    case 5:
      return 1919251317;
    default:
      v3 = 126;
      return sub_216983738(v3);
  }
}

uint64_t sub_216F07590(uint64_t a1)
{
  v3 = type metadata accessor for ContentDescriptor();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  v10 = sub_216982D68();
  v38 = v1;
  sub_216F0720C(v10, 1);

  v36 = type metadata accessor for UserSocialProfileGraph(0);
  v37 = a1;
  v11 = *(a1 + *(v36 + 28));
  v12 = *(v11 + 16);
  v35 = v4;
  if (v12)
  {
    v13 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v14 = *(v4 + 72);
    v15 = MEMORY[0x277D84F90];
    do
    {
      sub_21695BC04(v13, v9);
      v16 = *(v9 + 3);
      v17 = *(v9 + 4);
      sub_21700DF14();
      sub_2168F3F20(v9);
      if (v17)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21693776C();
          v15 = v20;
        }

        v18 = *(v15 + 16);
        if (v18 >= *(v15 + 24) >> 1)
        {
          sub_21693776C();
          v15 = v21;
        }

        *(v15 + 16) = v18 + 1;
        v19 = v15 + 16 * v18;
        *(v19 + 32) = v16;
        *(v19 + 40) = v17;
      }

      v13 += v14;
      --v12;
    }

    while (v12);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v22 = v38;
  sub_216F072A0(v15);

  v23 = *(v37 + *(v36 + 24));
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = v23 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v26 = *(v35 + 72);
    do
    {
      sub_21695BC04(v25, v7);
      v27 = *(v7 + 3);
      v28 = *(v7 + 4);
      sub_21700DF14();
      sub_2168F3F20(v7);
      if (v28)
      {
        v29 = HIBYTE(v28) & 0xF;
        if ((v28 & 0x2000000000000000) == 0)
        {
          v29 = v27 & 0xFFFFFFFFFFFFLL;
        }

        if (v29)
        {
          sub_216F07A9C(1, v27, v28, 0);
        }
      }

      v25 += v26;
      --v24;
    }

    while (v24);
  }

  v30 = *(v22 + 32);
  v31 = *(v30 + 16);

  os_unfair_lock_lock(v31);
  v32 = OBJC_IVAR____TtC7MusicUI21SocialGraphController_requestedToFollowProfileIDs;
  swift_beginAccess();
  v33 = *(*(v22 + v32) + 16);
  os_unfair_lock_unlock(*(v30 + 16));

  v39 = v33;
  return sub_21700CC34();
}

uint64_t sub_216F07870(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for ContentDescriptor();
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    return 0;
  }

  v9 = *(v5 + 24);
  v10 = sub_217005EF4();
  __swift_storeEnumTagSinglePayload(&v7[v9], 1, 1, v10);
  *v7 = 18;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *(v7 + 3) = a1;
  *(v7 + 4) = a2;
  *(v7 + 40) = 0u;
  *(v7 + 56) = 0u;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 13) = 0;
  v7[112] = 1;
  type metadata accessor for SocialGraphController();
  sub_21700DF14();
  v11 = sub_216F08658();
  v12 = v11;
  if (a2 && (v13 = ContentDescriptor.modelObject(with:)(v11)) != 0)
  {
    v14 = v13;
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();

    if (!v15)
    {
    }
  }

  else
  {

    v15 = 0;
  }

  sub_2168F3F20(v7);
  return v15;
}

void sub_216F079D4()
{
  OUTLINED_FUNCTION_20_3();
  if (v3)
  {
    OUTLINED_FUNCTION_6_128();
    v5 = v5 && v4 == v0;
    if (!v5 && (OUTLINED_FUNCTION_4_152() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_177();
      sub_21700DF14();
      os_unfair_lock_lock(v1);
      sub_216F088B0();
      os_unfair_lock_unlock(*(v2 + 16));
    }
  }
}

uint64_t sub_216F07A9C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v5 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = v4;
    v9 = result;
    result = *(v4 + 40);
    if (result != a2 || *(v4 + 48) != a3)
    {
      result = OUTLINED_FUNCTION_4_152();
      if ((result & 1) == 0)
      {
        v12 = *(v6 + 32);
        v13 = *(v12 + 16);

        sub_21700DF14();
        os_unfair_lock_lock(v13);
        sub_216F089A0(v9 & 1, v6, a2, a3);
        os_unfair_lock_unlock(*(v12 + 16));

        if (a4)
        {
          v14 = *(v12 + 16);

          os_unfair_lock_lock(v14);
          swift_beginAccess();
          os_unfair_lock_unlock(*(v12 + 16));

          sub_21700CC34();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDAA0);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_217013DA0;
          *(v15 + 32) = a2;
          *(v15 + 40) = a3;
          sub_21700DF14();
          sub_21700CC34();
        }
      }
    }
  }

  return result;
}

uint64_t sub_216F07C18(uint64_t result, uint64_t a2, char a3)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v7 = result;
    v8 = (a2 + 40);
    v9 = v4 + 1;
    while (--v9)
    {
      result = *(v3 + 40);
      if (result != *&v8[-2]._os_unfair_lock_opaque || *(v3 + 48) != *&v8->_os_unfair_lock_opaque)
      {
        v8 += 4;
        result = sub_21700F7D4();
        if ((result & 1) == 0)
        {
          continue;
        }
      }

      return result;
    }

    OUTLINED_FUNCTION_3_177();
    sub_21700DF14();
    os_unfair_lock_lock(v8);
    sub_216F08A70(v7 & 1, v3, a2);
    os_unfair_lock_unlock(MEMORY[0x10]);

    if (a3)
    {
      return sub_21700CC34();
    }
  }

  return result;
}

uint64_t sub_216F07CF8()
{
  OUTLINED_FUNCTION_20_3();
  if (!v5 || ((OUTLINED_FUNCTION_5_146(), v8) ? (v8 = v6 == v0) : (v8 = 0), v8 || (v9 = v7, (sub_21700F7D4() & 1) != 0)))
  {
    v10 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_3_177();
    sub_21700DF14();
    os_unfair_lock_lock(v3);
    v12 = *v9;
    swift_beginAccess();
    v13 = *(v1 + v12);
    sub_21700DF14();
    v10 = sub_216CE11AC(v2, v0, v13);

    os_unfair_lock_unlock(*(v4 + 16));
  }

  return v10 & 1;
}

void sub_216F07DD0()
{
  OUTLINED_FUNCTION_20_3();
  if (v3)
  {
    OUTLINED_FUNCTION_6_128();
    v6 = v6 && v4 == v0;
    if (!v6)
    {
      v7 = v5;
      if ((OUTLINED_FUNCTION_4_152() & 1) == 0)
      {
        v8 = *(v1 + 32);
        v9 = *(v8 + 16);

        sub_21700DF14();
        os_unfair_lock_lock(v9);
        sub_216F08B60(v1, v2, v0);
        os_unfair_lock_unlock(*(v8 + 16));

        if (v7)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDAA0);
          v10 = swift_allocObject();
          *(v10 + 16) = xmmword_217013DA0;
          *(v10 + 32) = v2;
          *(v10 + 40) = v0;
          sub_21700DF14();
          sub_21700CC34();
        }
      }
    }
  }
}

uint64_t sub_216F07EC8()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  sub_216F08CA4(v0);
  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t sub_216F07F34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return 0;
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *(a1 + 24) & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  result = ContentDescriptor.modelObject(with:)(a2);
  if (result)
  {
    v5 = result;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_216F07FB4(char a1)
{
  result = 0x6E69776F6C6C6F66;
  switch(a1)
  {
    case 1:
      result = 0x6F6C6C6F46746F6ELL;
      break;
    case 2:
      result = 0x6574736575716572;
      break;
    case 3:
      result = 0x64656B636F6C62;
      break;
    case 4:
      result = 0x4264656B636F6C62;
      break;
    case 5:
      result = 1718379891;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_216F080C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216F071C0();
  *a1 = result;
  return result;
}

uint64_t sub_216F080F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216F07FB4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_216F08140@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216F07138();
  *a1 = result;
  return result;
}

uint64_t sub_216F08170@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216F0718C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_216F0824C(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_216F082A4(a1, a2);
  return v4;
}

uint64_t sub_216F082A4(char *a1, uint64_t a2)
{
  v4 = v2;
  v23 = a2;
  v22[1] = *v2;
  v6 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D20);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v22 - v13;
  sub_21700CE04();
  sub_21700CCB4();
  v15 = *(v8 + 8);
  v15(v11, v6);
  v16 = sub_21700D3E4();
  if (__swift_getEnumTagSinglePayload(v14, 1, v16) == 1)
  {
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v17 + 8))(v23);
    v15(a1, v6);
    sub_2169CADB0(v14);
    v18 = 0;
LABEL_5:
    v4[2] = v18;
    return v4;
  }

  v19 = sub_21700D3C4();
  if (!v3)
  {
    v18 = v19;
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v20 + 8))(v23);
    v15(a1, v6);
    (*(*(v16 - 8) + 8))(v14, v16);
    goto LABEL_5;
  }

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_216F08580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_216F09658();
  result = sub_21700CD14();
  v7 = v8;
  if (v8 == 6)
  {
    a1 = 0;
    a2 = 0;
    v7 = 0;
  }

  else
  {
    result = sub_21700DF14();
  }

  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v7;
  return result;
}

uint64_t sub_216F0862C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_216F0824C(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id sub_216F08658()
{
  v0 = sub_216F08DC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = sub_21700E514();
  *(inited + 40) = v2;
  *(inited + 48) = sub_216F08DC8();
  sub_216F09614();
  v3 = sub_21700E384();
  v4 = objc_allocWithZone(MEMORY[0x277CD6018]);
  v5 = sub_216F09214(MEMORY[0x277D84F90], v3);
  v6 = [v0 propertySetByCombiningWithPropertySet_];

  return v6;
}

uint64_t sub_216F08750(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    sub_21700DF14();
    return sub_216F08840();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21700DF14();
    v5 = sub_217007DD4();
    sub_216F092C8(a3, sub_216F095D0, 0, v6);
    v5(&v7, 0);
  }
}

uint64_t sub_216F08840()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_216F088B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v0 = sub_217007DD4();
  v2 = v1;
  swift_isUniquelyReferenced_nonNull_native();
  v5 = *v2;
  sub_21693A574();
  *v2 = v5;
  v0(&v4, 0);
}

uint64_t sub_216F089A0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_beginAccess();
    sub_21700DF14();
    sub_2168A140C(&v13, a3, a4, v6, v7, v8, v9, v10, v12, v13);
    swift_endAccess();
  }

  else
  {
    swift_beginAccess();
    sub_216ABB244(a3, a4);
    swift_endAccess();
  }
}

uint64_t sub_216F08A70(char a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC7MusicUI21SocialGraphController_requestedToFollowProfileIDs;
  if (a1)
  {
    swift_beginAccess();
    v6 = sub_21700DF14();
    sub_216AB3FD4(v6);
  }

  else
  {
    swift_beginAccess();
    if (*(*(a2 + v5) + 16))
    {
      v7 = *(a3 + 16);
      for (i = (a3 + 40); v7; --v7)
      {
        v9 = *(i - 1);
        v10 = *i;
        sub_21700DF14();
        sub_216ABB244(v9, v10);

        i += 2;
      }
    }
  }

  return swift_endAccess();
}

uint64_t sub_216F08B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_21700DF14();
  sub_2168A140C(v13, a2, a3, v5, v6, v7, v8, v9, v11, v12);
  swift_endAccess();

  swift_beginAccess();
  sub_216ABB244(a2, a3);
  swift_endAccess();
}

uint64_t sub_216F08C30()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

uint64_t sub_216F08CA4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = sub_217007DD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACD358);
  sub_21700E3D4();
  v2(v7, 0);

  v3 = OBJC_IVAR____TtC7MusicUI21SocialGraphController_requestedToFollowProfileIDs;
  swift_beginAccess();
  v4 = MEMORY[0x277D84FA0];
  *(a1 + v3) = MEMORY[0x277D84FA0];

  v5 = OBJC_IVAR____TtC7MusicUI21SocialGraphController_removedFollowersProfileIDs;
  swift_beginAccess();
  *(a1 + v5) = v4;
}

id sub_216F08DC8()
{
  sub_216F09614();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDAA0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21703A490;
  *(v0 + 32) = sub_21700E514();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_21700E514();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_21700E514();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_21700E514();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_21700E514();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_21700E514();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_21700E514();
  *(v0 + 136) = v7;
  return sub_216F0742C();
}

uint64_t sub_216F08EE0()
{

  v1 = OBJC_IVAR____TtC7MusicUI21SocialGraphController__followStateMap;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6340);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_216F08F90()
{
  sub_216F08EE0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

_BYTE *storeEnumTagSinglePayload for Social.FollowState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_216F090D0()
{
  result = qword_27CACD348;
  if (!qword_27CACD348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD348);
  }

  return result;
}

uint64_t sub_216F091BC(uint64_t a1, uint64_t a2)
{
  result = sub_21668F258(&qword_27CACD350, a2, type metadata accessor for Social.FollowStateMapResponse);
  *(a1 + 8) = result;
  return result;
}

id sub_216F09214(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = 0;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = sub_21700E804();

  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_216F09614();
  v5 = sub_21700E344();

LABEL_6:
  v6 = [v2 initWithProperties:v4 relationships:v5];

  return v6;
}

uint64_t sub_216F092C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_216F0933C(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_216F0933C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v42 = a5;
  sub_216ABEAA0(v41);
  v6 = v41[1];
  v7 = v41[3];
  v8 = v41[4];
  v33 = v41[5];
  v34 = v41[0];
  v9 = (v41[2] + 64) >> 6;
  sub_21700DF14();

  v32 = v6;
  if (v8)
  {
    while (1)
    {
      v35 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v34 + 48) + 16 * v12);
      v14 = v13[1];
      LOBYTE(v12) = *(*(v34 + 56) + v12);
      v39[0] = *v13;
      v39[1] = v14;
      v40 = v12;
      sub_21700DF14();
      v33(&v36, v39);

      v15 = v36;
      v16 = v37;
      v17 = v38;
      v18 = *v42;
      v20 = sub_2166AF66C(v36, v37);
      v21 = v18[2];
      v22 = (v19 & 1) == 0;
      if (__OFADD__(v21, v22))
      {
        break;
      }

      v23 = v19;
      if (v18[3] >= v21 + v22)
      {
        if ((v35 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD118);
          sub_21700F564();
        }
      }

      else
      {
        sub_216AB9554();
        v24 = sub_2166AF66C(v15, v16);
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_24;
        }

        v20 = v24;
      }

      v8 &= v8 - 1;
      v26 = *v42;
      if (v23)
      {

        *(v26[7] + v20) = v17;
      }

      else
      {
        v26[(v20 >> 6) + 8] |= 1 << v20;
        v27 = (v26[6] + 16 * v20);
        *v27 = v15;
        v27[1] = v16;
        *(v26[7] + v20) = v17;
        v28 = v26[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_23;
        }

        v26[2] = v30;
      }

      a4 = 1;
      v7 = v10;
      v6 = v32;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_216687978();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v35 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_21700F824();
  __break(1u);
  return result;
}

uint64_t sub_216F095D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_216ABC480(&v6, *a1, *(a1 + 8), *(a1 + 16));
  v4 = v6;
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  return result;
}

unint64_t sub_216F09614()
{
  result = qword_280E29D70;
  if (!qword_280E29D70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29D70);
  }

  return result;
}

unint64_t sub_216F09658()
{
  result = qword_27CACD368;
  if (!qword_27CACD368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD368);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Social.FollowRequestResponse(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216F0978C()
{
  result = qword_27CACD370;
  if (!qword_27CACD370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CACD370);
  }

  return result;
}

uint64_t type metadata accessor for LinkView()
{
  result = qword_280E2BAD0;
  if (!qword_280E2BAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216F09858()
{
  type metadata accessor for LinkComponentModel();
  if (v0 <= 0x3F)
  {
    sub_2167D1C30();
    if (v1 <= 0x3F)
    {
      sub_21692ED34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_216F09910@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2169936D0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_216F099A0(uint64_t *a1, uint64_t a2, unint64_t *a3)
{
  v6 = type metadata accessor for ActionButtonListStyle(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_22_0();
  *v3 = sub_217007F94() & 1;
  *(v3 + 8) = v8;
  *(v3 + 16) = v9 & 1;
  sub_21700AEA4();
  *(v3 + 24) = v13;
  *(v3 + 32) = v14;
  v10 = *(v6 + 24);
  *(v3 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  swift_storeEnumTagMultiPayload();
  v11 = v3 + *(v6 + 28);
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  sub_216F0AE68(a3, a1);
  sub_216F0AB3C(&qword_27CAC36D0, type metadata accessor for ActionButtonListStyle);
  sub_21700A364();
  return sub_216F0AB84(v3);
}