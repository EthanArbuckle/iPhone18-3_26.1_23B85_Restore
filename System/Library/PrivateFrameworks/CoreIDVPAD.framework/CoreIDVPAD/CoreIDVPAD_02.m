uint64_t sub_2456B52EC(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_2456B533C()
{
  v1 = *(v0 + 104);
  *(v0 + 96) = 0;
  if (v1)
  {

    v1(v2);
    sub_2456AB080(v1);
    v3 = *(v0 + 104);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 104) = 0;
  *(v0 + 112) = 0;

  return sub_2456AB080(v3);
}

uint64_t sub_2456B53B8()
{
  v1 = sub_2456CAF68();
  v12 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2456CAF88();
  v4 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 56);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_2456B5894;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2456A7CA8;
  aBlock[3] = &block_descriptor_2;
  v8 = _Block_copy(aBlock);

  sub_2456CAF78();
  v13 = MEMORY[0x277D84F90];
  sub_2456B5BD4(&qword_27EE21220, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21228);
  sub_2456B5C1C(&qword_27EE21230, &qword_27EE21228);
  sub_2456CB2B8();
  MEMORY[0x245D6E740](0, v6, v3, v8);
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

uint64_t sub_2456B568C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2456B56E4();
  }

  return result;
}

uint64_t sub_2456B56E4()
{
  v1 = v0;
  v3 = sub_2456B3188();
  if (*(v2 + 24))
  {
    v4 = v2;

    *(v4 + 24) = MEMORY[0x277D84F98];
  }

  (v3)(v6, 0);
  swift_beginAccess();
  *(v1 + 48) = MEMORY[0x277D84F90];

  swift_beginAccess();
  sub_2456CB238();
  *(v1 + 64) = 0;
  sub_2456CB248();
  result = swift_endAccess();
  *(v1 + 96) = 0;
  return result;
}

uint64_t sub_2456B57AC()
{

  sub_2456AB080(*(v0 + 104));

  return v0;
}

uint64_t sub_2456B5804()
{
  sub_2456B57AC();

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

uint64_t sub_2456B585C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2456B58B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_2456B5B1C(&v12, v10 + 40 * a1 + 32);
}

unint64_t sub_2456B594C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_2456A3E28(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_2456C6EC0(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_2456B5A0C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2456B5B1C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2456B5B34()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2456B5B8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2456B5BD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2456B5C1C(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_2456B5CBC()
{
  v1 = *v0;
  sub_2456CB588();
  MEMORY[0x245D6EAC0](v1);
  return sub_2456CB5A8();
}

uint64_t sub_2456B5D30()
{
  v1 = *v0;
  sub_2456CB588();
  MEMORY[0x245D6EAC0](v1);
  return sub_2456CB5A8();
}

uint64_t sub_2456B5D74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2456B5DB4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2456B5DB4(uint64_t result)
{
  if ((result + 10) >= 0xB)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2456B5DD0()
{
  result = qword_27EE212E8;
  if (!qword_27EE212E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE212E8);
  }

  return result;
}

unint64_t PADSWAssessmentLabel.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t PADSWGesture.description.getter(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 <= 7)
    {
      if (a1 == 4)
      {
        v1 = 1936682083;
        return v1 | 0x6579456500000000;
      }

      if (a1 == 5)
      {
        return 0x656C696D73;
      }
    }

    else
    {
      switch(a1)
      {
        case 8:
          return 0x74756F4D6E65706FLL;
        case 9:
          v1 = 1936286066;
          return v1 | 0x6579456500000000;
        case 10:
          return 1701602409;
      }
    }

    goto LABEL_22;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x686769526E727574;
    }

    if (a1 == 1)
    {
      return 0x7466654C6E727574;
    }

LABEL_22:
    result = sub_2456CB548();
    __break(1u);
    return result;
  }

  if (a1 == 2)
  {
    return 0x70556B6F6F6CLL;
  }

  else
  {
    return 0x6E776F446B6F6F6CLL;
  }
}

uint64_t PADSWGesture.type.getter(unint64_t a1)
{
  if (a1 > 9)
  {
    return 3;
  }

  else
  {
    return qword_2456CE9D8[a1];
  }
}

unint64_t sub_2456B6024@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2456B651C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t PADSWGestureType.init(rawValue:)(unint64_t result)
{
  if (result > 3 || result == 1)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_2456B613C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 3 || v2 == 1;
  if (v3)
  {
    v2 = 0;
  }

  v4 = v3;
  *a2 = v2;
  *(a2 + 8) = v4;
  return result;
}

uint64_t PADSWGestureAssessment.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x64657070696B73;
    }

    if (a1 == 1)
    {
      return 0x6465746365746564;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x6573657250746F6ELL;
      case 3:
        return 0x6365746544746F6ELL;
      case 4:
        return 0xD000000000000011;
    }
  }

  result = sub_2456CB548();
  __break(1u);
  return result;
}

unint64_t sub_2456B624C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2456B654C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t *sub_2456B6338@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_2456B6404()
{
  result = sub_2456CAFD8();
  qword_27EE212F0 = result;
  return result;
}

uint64_t sub_2456B6460()
{
  result = sub_2456CAFD8();
  qword_27EE212F8 = result;
  return result;
}

id sub_2456B64BC(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

unint64_t sub_2456B651C(unint64_t result)
{
  if (result > 0xA || ((1 << result) & 0x73F) == 0)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2456B654C(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2456B6560()
{
  result = qword_27EE21300;
  if (!qword_27EE21300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21300);
  }

  return result;
}

unint64_t sub_2456B65B8()
{
  result = qword_27EE21308;
  if (!qword_27EE21308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE20F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21308);
  }

  return result;
}

unint64_t sub_2456B6620()
{
  result = qword_27EE21310;
  if (!qword_27EE21310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21310);
  }

  return result;
}

unint64_t sub_2456B6678()
{
  result = qword_27EE21318;
  if (!qword_27EE21318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21318);
  }

  return result;
}

unint64_t sub_2456B66D0()
{
  result = qword_27EE21320;
  if (!qword_27EE21320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21320);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PADSWNotificationName(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PADSWNotificationName(_WORD *result, int a2, int a3)
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

unint64_t sub_2456B6844()
{
  result = qword_27EE21328;
  if (!qword_27EE21328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21328);
  }

  return result;
}

unint64_t sub_2456B6898()
{
  result = qword_27EE21330;
  if (!qword_27EE21330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21330);
  }

  return result;
}

unint64_t sub_2456B68EC()
{
  result = qword_27EE21338;
  if (!qword_27EE21338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21338);
  }

  return result;
}

uint64_t sub_2456B6954(uint64_t a1, unint64_t a2)
{
  v4 = sub_2456CAEF8();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      return MEMORY[0x277D84F90];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      return MEMORY[0x277D84F90];
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      return MEMORY[0x277D84F90];
    }

LABEL_8:
    while (1)
    {
      v13 = sub_2456B6B44(v10, 0);
      v14 = sub_2456CAEB8();
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        return MEMORY[0x277D84F90];
      }
    }
  }

  return result;
}

void sub_2456B6AB8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

void *sub_2456B6B44(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21188);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

id sub_2456B6BB8(void *a1, void *a2)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v4 = sub_2456CAF58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(MEMORY[0x277CE2C48]);
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2456B6AB8;
  aBlock[3] = &block_descriptor_3;
  v9 = _Block_copy(aBlock);

  v10 = [v8 initWithCompletionHandler_];
  _Block_release(v9);
  aBlock[0] = 0;
  if ([v10 setRevision:3737841667 error:aBlock])
  {
    v11 = aBlock[0];
  }

  else
  {
    v12 = aBlock[0];
    v13 = sub_2456CAE08();

    swift_willThrow();
    if (qword_27EE20D00 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v4, qword_27EE20D08);
    (*(v5 + 16))(v7, v14, v4);
    v15 = sub_2456CAF38();
    v16 = sub_2456CB1D8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_245686000, v15, v16, "Unable to set faceprint request revision to 3_1MD3, falling back to revision2", v17, 2u);
      MEMORY[0x245D6F740](v17, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }

  return v10;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_2456B6E90(void *a1, void *a2)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v4 = sub_2456CAF58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(MEMORY[0x277CE2C08]);
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2456B6AB8;
  aBlock[3] = &block_descriptor_3;
  v9 = _Block_copy(aBlock);

  v10 = [v8 initWithCompletionHandler_];
  _Block_release(v9);
  aBlock[0] = 0;
  if ([v10 setRevision:3737841666 error:aBlock])
  {
    v11 = aBlock[0];
  }

  else
  {
    v12 = aBlock[0];
    v13 = sub_2456CAE08();

    swift_willThrow();
    if (qword_27EE20D00 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v4, qword_27EE20D08);
    (*(v5 + 16))(v7, v14, v4);
    v15 = sub_2456CAF38();
    v16 = sub_2456CB1D8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_245686000, v15, v16, "SelfieAnalysisController failed to set private faceAttributes revision. Using default revision.", v17, 2u);
      MEMORY[0x245D6F740](v17, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }

  return v10;
}

void sub_2456B7150(void *a1)
{
  v2 = sub_2456CAF58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 faceprint];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v6;
  if ([v7 elementCount] < 1)
  {

LABEL_6:
    if (qword_27EE20D00 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v2, qword_27EE20D08);
    (*(v3 + 16))(v5, v14, v2);
    v15 = sub_2456CAF38();
    v16 = sub_2456CB1D8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      MEMORY[0x245D6F740](v17, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return;
  }

  v8 = [v7 descriptorData];
  if (v8)
  {
    v9 = v8;
    v10 = sub_2456CAED8();
    v12 = v11;

    v13 = sub_2456B6954(v10, v12);
    sub_2456A4960(v10, v12);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v18 = [v7 elementCount];

  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!v18)
    {
LABEL_21:

      return;
    }

    if (v18 <= *(v13 + 16))
    {
      v19 = MEMORY[0x277D84F90];
      v20 = 32;
      do
      {
        v21 = *(v13 + v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_2456A2F38(0, *(v19 + 2) + 1, 1, v19);
        }

        v23 = *(v19 + 2);
        v22 = *(v19 + 3);
        if (v23 >= v22 >> 1)
        {
          v19 = sub_2456A2F38((v22 > 1), v23 + 1, 1, v19);
        }

        *(v19 + 2) = v23 + 1;
        *&v19[4 * v23 + 32] = v21;
        ++v20;
        --v18;
      }

      while (v18);
      goto LABEL_21;
    }
  }

  __break(1u);
}

uint64_t PADTrajectoryAnalysisMode.description.getter()
{
  v1 = 7827308;
  v2 = 0x745365726F6E6769;
  if (*v0 != 2)
  {
    v2 = 1885956979;
  }

  if (*v0)
  {
    v1 = 1751607656;
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

CoreIDVPAD::PADTrajectoryAnalysisMode_optional __swiftcall PADTrajectoryAnalysisMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2456B7518()
{
  v1 = 7827308;
  v2 = 0x745365726F6E6769;
  if (*v0 != 2)
  {
    v2 = 1885956979;
  }

  if (*v0)
  {
    v1 = 1751607656;
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

uint64_t sub_2456B7584()
{
  v1 = 0x6544686374697473;
  if (*v0 != 1)
  {
    v1 = 0x616E67695363636ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D617473656D6974;
  }
}

uint64_t sub_2456B75F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2456B8850(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2456B7624(uint64_t a1)
{
  v2 = sub_2456B7850();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2456B7660(uint64_t a1)
{
  v2 = sub_2456B7850();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PADTrajectoryAnalysisAssessment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21340);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2456B7850();
  sub_2456CB5C8();
  v11 = 0;
  sub_2456CB4C8();
  if (!v1)
  {
    v10 = 1;
    sub_2456CB4B8();
    v9 = 2;
    sub_2456CB4D8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2456B7850()
{
  result = qword_27EE21348;
  if (!qword_27EE21348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21348);
  }

  return result;
}

uint64_t PADTrajectoryAnalysisAssessment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21350);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2456B7850();
  sub_2456CB5B8();
  if (!v2)
  {
    v18 = 0;
    sub_2456CB468();
    v10 = v9;
    v17 = 1;
    v11 = sub_2456CB458();
    v16 = 2;
    sub_2456CB478();
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 8) = v11 & 1;
    *(a2 + 12) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_2456B7A84()
{
  result = qword_27EE21358;
  if (!qword_27EE21358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21358);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PADTrajectoryAnalysisMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PADTrajectoryAnalysisMode(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PADTrajectoryAnalysisAssessment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PADTrajectoryAnalysisAssessment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2456B7CFC(char *a1)
{
  v2 = v1;
  v4 = sub_2456CAF58();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v53[-1] - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v53[-1] - v10;
  v12 = *(v2 + 185);
  if (v12 != 3)
  {
    *(v2 + 184) = 1;
    v17 = v12 == 1;
    v18 = *&a1[OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_buffer];
    v19 = sub_2456BD97C(v18, v17);
    v21 = v20;

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21380);
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D83A90];
    *(v22 + 16) = xmmword_2456CE280;
    v24 = MEMORY[0x277D83B08];
    *(v22 + 56) = v23;
    *(v22 + 64) = v24;
    *(v22 + 32) = v21;
    v25 = 0xE500000000000000;
    v26 = sub_2456CB018();
    v28 = v27;
    time.value = 0;
    *&time.timescale = 0xE000000000000000;
    sub_2456CB348();

    time.value = 0xD000000000000013;
    *&time.timescale = 0x80000002456D14E0;
    if (v19)
    {
      v29 = 1702195828;
    }

    else
    {
      v29 = 0x65736C6166;
    }

    if (v19)
    {
      v25 = 0xE400000000000000;
    }

    MEMORY[0x245D6E590](v29, v25);

    MEMORY[0x245D6E590](0x67695363636E202CLL, 0xEC0000003D6C616ELL);
    MEMORY[0x245D6E590](v26, v28);

    sub_245693BAC(time.value, *&time.timescale);

    swift_beginAccess();
    sub_2456CB238();
    v30 = *(v2 + 128);
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      __break(1u);
LABEL_40:
      swift_once();
LABEL_31:
      v41 = __swift_project_value_buffer(v4, qword_27EE20D08);
      (*(v5 + 16))(v11, v41, v4);
      v42 = a1;

      v43 = sub_2456CAF38();
      v44 = sub_2456CB1D8();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 134218496;
        *(v45 + 4) = v21;
        *(v45 + 12) = 2048;
        v46 = *&v42[OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_time + 16];
        time.value = *&v42[OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_time];
        *&time.timescale = *&v42[OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_time + 8];
        time.epoch = v46;
        *(v45 + 14) = CMTimeGetSeconds(&time);
        *(v45 + 22) = 1024;
        *(v45 + 24) = *(v2 + 185) == 2;

        _os_log_impl(&dword_245686000, v43, v44, "Stitch detected, nccSignal: %f, timestamp: %f, shouldIgnore: %{BOOL}d", v45, 0x1Cu);
        MEMORY[0x245D6F740](v45, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v11, v4);
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v47 = result;
        v48 = *(v2 + 185);
        v49 = OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_delegate;
        swift_beginAccess();
        sub_2456B89A8(v47 + v49, &time);
        if (v57)
        {
          sub_24569B370(&time, v53);
          sub_2456B8A18(&time);
          v50 = v54;
          v51 = v55;
          __swift_project_boxed_opaque_existential_1(v53, v54);
          (*(v51 + 32))(v42, v48 == 2, v50, v51);
          swift_unknownObjectRelease();
          result = __swift_destroy_boxed_opaque_existential_0(v53);
          *(v2 + 184) = 0;
          return result;
        }

        swift_unknownObjectRelease();
        result = sub_2456B8A18(&time);
      }

      goto LABEL_38;
    }

    *(v2 + 128) = v32;
    sub_2456CB248();
    result = swift_endAccess();
    v33 = *(v2 + 185);
    if (*(v2 + 185))
    {
      if (v33 == 1)
      {
        v34 = *(v2 + 180);
        if (v34 < v21)
        {
          v34 = v21;
        }

        *(v2 + 180) = v34;
      }

      if ((v19 & 1) == 0)
      {
LABEL_38:
        *(v2 + 184) = 0;
        return result;
      }
    }

    else
    {
      v36 = *(v2 + 176);
      if (v36 < v21)
      {
        v36 = v21;
      }

      *(v2 + 176) = v36;
      if ((v19 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    if (v33 == 2)
    {
      swift_beginAccess();
      result = sub_2456CB238();
      v37 = *(v2 + 144);
      v31 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (!v31)
      {
        *(v2 + 144) = v38;
        goto LABEL_30;
      }

      __break(1u);
    }

    else
    {
      swift_beginAccess();
      result = sub_2456CB238();
      v39 = *(v2 + 160);
      v31 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (!v31)
      {
        *(v2 + 160) = v40;
LABEL_30:
        sub_2456CB248();
        swift_endAccess();
        if (qword_27EE20D00 == -1)
        {
          goto LABEL_31;
        }

        goto LABEL_40;
      }
    }

    __break(1u);
    return result;
  }

  if (qword_27EE20D00 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, qword_27EE20D08);
  (*(v5 + 16))(v9, v13, v4);
  v14 = sub_2456CAF38();
  v15 = sub_2456CB1C8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_245686000, v14, v15, "Trajectory Analysis Controller mode sent to skip. Frame will not be processed by TA.", v16, 2u);
    MEMORY[0x245D6F740](v16, -1, -1);
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_2456B8518()
{

  return sub_2456B8980((v0 + 25));
}

uint64_t sub_2456B8560()
{
  v0 = sub_2456B57AC();
  v1 = *(v0 + 136);

  sub_2456B8980(v0 + 200);

  return MEMORY[0x2821FE8D8](v0, 216, 7);
}

uint64_t getEnumTagSinglePayload for PADFaceActionMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PADFaceActionMode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2456B874C()
{
  result = qword_27EE21360;
  if (!qword_27EE21360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21360);
  }

  return result;
}

unint64_t sub_2456B87A4()
{
  result = qword_27EE21368;
  if (!qword_27EE21368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21368);
  }

  return result;
}

unint64_t sub_2456B87FC()
{
  result = qword_27EE21370;
  if (!qword_27EE21370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21370);
  }

  return result;
}

uint64_t sub_2456B8850(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_2456CB538() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6544686374697473 && a2 == 0xEE00646574636574 || (sub_2456CB538() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616E67695363636ELL && a2 == 0xE90000000000006CLL)
  {

    return 2;
  }

  else
  {
    v5 = sub_2456CB538();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2456B89A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE213C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2456B8A18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE213C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2456B8A98(void *a1, uint64_t a2)
{
  if (*(v2 + 128))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = sub_2456C9B24(MEMORY[0x277D84F90]);
      v6 = sub_2456CB008();
      v8 = v7;
      v24 = MEMORY[0x277D837D0];
      *&v23 = 0xD000000000000054;
      *(&v23 + 1) = 0x80000002456D1630;
      sub_2456A52E8(&v23, &v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v5;
      sub_2456C8F34(&v19, v6, v8, isUniquelyReferenced_nonNull_native);

      v10 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v11 = sub_2456CAFD8();
      v12 = sub_2456CAFA8();

      v13 = [v10 initWithDomain:v11 code:-1 userInfo:v12];

      v14 = OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_delegate;
      swift_beginAccess();
      sub_2456B89A8(v4 + v14, &v23);
      if (v24)
      {
        sub_24569B370(&v23, &v19);
        sub_24569BFE0(&v23, &qword_27EE213C0);
        v15 = v20;
        v16 = v21;
        __swift_project_boxed_opaque_existential_1(&v19, v20);
        (*(v16 + 56))(v13, v15, v16);

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0(&v19);
      }

      else
      {

        swift_unknownObjectRelease();
        sub_24569BFE0(&v23, &qword_27EE213C0);
      }
    }
  }

  else
  {
    *(v2 + 128) = a1;
    *(v2 + 136) = a2;

    v18 = a1;

    sub_2456B34D0(v18);
  }
}

void *sub_2456B8CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = *MEMORY[0x277D85DE8];
  v7 = sub_2456CAF58();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v3[16];
  if (v11)
  {
    v12 = v3[17];
    v13 = swift_allocObject();
    v13[2] = a2;
    v13[3] = a3;
    sub_2456BA9BC(v11);

    v14 = sub_2456B6E90(sub_2456BAABC, v13);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE21390);
    inited = swift_initStackObject();
    v63 = a1;
    v16 = inited;
    *(inited + 16) = xmmword_2456CE280;
    v8 = &off_285873C78;
    *(inited + 56) = sub_2456AB00C(0, &qword_27EE21570);
    v16[8] = &off_285873C78;
    v16[4] = v14;
    v17 = swift_allocObject();
    v17[2] = a2;
    v17[3] = a3;

    v62 = v14;
    v18 = sub_2456B6BB8(sub_2456BAAFC, v17);

    v19 = v63;
    v20 = sub_2456A3AC8(1, 2, 1, v16);
    v67 = sub_2456AB00C(0, &unk_27EE213A0);
    v68 = &off_285873C78;
    *&v66 = v18;
    v20[2] = 2;
    sub_2456B5B1C(&v66, (v20 + 9));
    v10 = OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_faces;
    swift_beginAccess();
    v21 = *&v10[v19];
    if (v21 >> 62)
    {
      v22 = sub_2456CB3F8();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v22)
    {
      v60 = v3;
      v59 = v12;
      v58 = v11;
      v57 = v10;
      if ((v21 & 0xC000000000000001) != 0)
      {

        v54 = MEMORY[0x245D6E880](0, v21);

        v23 = v54;
      }

      else
      {
        if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_35;
        }

        v23 = *(v21 + 32);
      }

      v24 = *&v23[OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_bounds];
      v25 = *&v23[OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_bounds + 8];
      v26 = *&v23[OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_bounds + 16];
      v27 = *&v23[OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_bounds + 24];

      v28 = [objc_opt_self() observationWithRequestRevision:3737841670 boundingBox:{v24, v25, v26, v27}];
      v61 = v20;
      v29 = v20[2];
      if (v29)
      {
        v30 = (v61 + 4);
        v64 = xmmword_2456CED80;
        do
        {
          sub_24569B370(v30, &v66);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE214E0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE213B0);
          if (swift_dynamicCast())
          {
            v31 = v65;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE214F0);
            v8 = swift_allocObject();
            *(v8 + 1) = v64;
            v8[4] = v28;
            sub_2456AB00C(0, &qword_27EE21378);
            v32 = v28;
            v33 = sub_2456CB0C8();

            [v31 setInputFaceObservations_];
            swift_unknownObjectRelease();
          }

          v30 += 40;
          --v29;
        }

        while (v29);
      }

      v3 = v60;
      v11 = v58;
      v20 = v61;
      v19 = v63;
      v10 = v57;
    }

    v7 = *&v10[v19];
    if (v7 >> 62)
    {
      if (sub_2456CB3F8())
      {
        goto LABEL_16;
      }
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_16:
      if ((v7 & 0xC000000000000001) != 0)
      {

        v55 = MEMORY[0x245D6E880](0, v7);

        v34 = v55;
LABEL_19:
        v35 = *&v34[OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_bounds];
        v36 = *&v34[OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_bounds + 8];
        v37 = *&v34[OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_bounds + 16];
        v38 = *&v34[OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_bounds + 24];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21380);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_2456CED90;
        v40 = MEMORY[0x277D85048];
        *(v39 + 56) = MEMORY[0x277D85048];
        v41 = sub_2456BAA30();
        *(v39 + 64) = v41;
        *(v39 + 32) = v35;
        *(v39 + 96) = v40;
        *(v39 + 104) = v41;
        *(v39 + 72) = v36;
        v70.origin.x = v35;
        v70.origin.y = v36;
        v70.size.width = v37;
        v70.size.height = v38;
        Width = CGRectGetWidth(v70);
        *(v39 + 136) = v40;
        *(v39 + 144) = v41;
        *(v39 + 112) = Width;
        v71.origin.x = v35;
        v71.origin.y = v36;
        v71.size.width = v37;
        v71.size.height = v38;
        Height = CGRectGetHeight(v71);
        *(v39 + 176) = v40;
        *(v39 + 184) = v41;
        *(v39 + 152) = Height;
        v21 = sub_2456CB018();
        v8 = v44;
        swift_beginAccess();
        v10 = v3[20];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v3[20] = v10;
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_20:
          v47 = *(v10 + 2);
          v46 = *(v10 + 3);
          if (v47 >= v46 >> 1)
          {
            v10 = sub_2456A3C10((v46 > 1), v47 + 1, 1, v10);
          }

          *(v10 + 2) = v47 + 1;
          v48 = &v10[16 * v47];
          *(v48 + 4) = v21;
          *(v48 + 5) = v8;
          v3[20] = v10;
          swift_endAccess();

          goto LABEL_30;
        }

LABEL_35:
        v10 = sub_2456A3C10(0, *(v10 + 2) + 1, 1, v10);
        v3[20] = v10;
        goto LABEL_20;
      }

      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v34 = *(v7 + 32);
        goto LABEL_19;
      }

      __break(1u);
      goto LABEL_37;
    }

LABEL_30:

    return v20;
  }

  if (qword_27EE20D00 != -1)
  {
LABEL_37:
    swift_once();
  }

  v49 = __swift_project_value_buffer(v7, qword_27EE20D08);
  (v8[2])(v10, v49, v7);
  v50 = sub_2456CAF38();
  v51 = sub_2456CB1D8();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_245686000, v50, v51, "Attempting to run a selfie through the Selfie Analysis Controller without a request set.", v52, 2u);
    MEMORY[0x245D6F740](v52, -1, -1);
  }

  (v8[1])(v10, v7);
  return MEMORY[0x277D84F90];
}

void sub_2456B94D4(void *a1)
{
  v2 = v1;
  v4 = sub_2456CAF58();
  v5 = MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  v8 = &v130 - v7;
  v9 = *(v2 + 128);
  if (!v9)
  {
    v21 = sub_2456C9B24(MEMORY[0x277D84F90]);
    v22 = sub_2456CB008();
    v24 = v23;
    *(&v152 + 1) = MEMORY[0x277D837D0];
    *&v151 = 0xD000000000000037;
    *(&v151 + 1) = 0x80000002456D1560;
    sub_2456A52E8(&v151, v148);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v147 = v21;
    sub_2456C8F34(v148, v22, v24, isUniquelyReferenced_nonNull_native);

    v26 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v27 = sub_2456CAFD8();
    v28 = sub_2456CAFA8();

    v29 = [v26 initWithDomain:v27 code:-1 userInfo:v28];

    sub_2456BA690(v29);
    return;
  }

  v10 = *(v2 + 136);
  if (!a1[2])
  {
    sub_2456BA9BC(*(v2 + 128));
    v30 = sub_2456C9B24(MEMORY[0x277D84F90]);
    v31 = sub_2456CB008();
    v33 = v32;
    *(&v152 + 1) = MEMORY[0x277D837D0];
    *&v151 = 0xD000000000000039;
    *(&v151 + 1) = 0x80000002456D15F0;
    sub_2456A52E8(&v151, v148);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v147 = v30;
    sub_2456C8F34(v148, v31, v33, v34);

    v35 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v36 = sub_2456CAFD8();
    v37 = sub_2456CAFA8();

    v38 = [v35 initWithDomain:v36 code:-1 userInfo:v37];

    sub_2456BA690(v38);
LABEL_21:

    return;
  }

  v145 = v2;
  v146 = v6;
  v12 = a1[6];
  v11 = a1[7];
  v14 = a1[4];
  v13 = a1[5];

  v144 = v9;
  sub_2456BA9BC(v9);
  v15 = sub_2456BFD34(v14, v13, v12, v11);
  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
    goto LABEL_16;
  }

  if (!*(v15 + 16))
  {

    goto LABEL_16;
  }

  v143 = v10;
  sub_2456A530C(v15 + 32, &v151);

  sub_2456AB00C(0, &qword_27EE21378);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

    v39 = v144;
    if (qword_27EE20D00 != -1)
    {
      swift_once();
    }

    v40 = __swift_project_value_buffer(v4, qword_27EE20D08);
    (*(v146 + 16))(v8, v40, v4);
    v41 = sub_2456CAF38();
    v42 = sub_2456CB1D8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_245686000, v41, v42, "PADSelfieAnalysisController no faceprint observation received. Returning failing result (0.0 ID matching assessment)", v43, 2u);
      MEMORY[0x245D6F740](v43, -1, -1);
    }

    (*(v146 + 8))(v8, v4);
    LODWORD(v148[0]) = 0;
    *(v148 + 8) = 0u;
    *(&v148[1] + 8) = 0u;
    *(&v148[2] + 8) = 0u;
    *(&v148[3] + 8) = 0u;
    *(&v148[4] + 8) = 0u;
    *(&v148[5] + 8) = 0u;
    *(&v148[6] + 8) = 0u;
    *(&v148[7] + 1) = v16;
    *&v149 = 0;
    *(&v149 + 1) = 0xE000000000000000;
    *&v150 = v16;
    *(&v150 + 1) = v16;
    v151 = v148[0];
    v152 = v148[1];
    v155 = v148[4];
    v156 = v148[5];
    v153 = v148[2];
    v154 = v148[3];
    v159 = v149;
    v160 = v150;
    v157 = v148[6];
    v158 = v148[7];
    sub_2456BA554(&v151);
    sub_2456BAA00(v148);

    goto LABEL_21;
  }

  v142 = *&v148[0];
  sub_2456B7150(*&v148[0]);
  if (v17)
  {
    v16 = v17;
  }

  v18 = sub_2456BFEC4(v14, v13, v12, v11);

  if (!v18)
  {

    v19 = v144;
LABEL_25:
    v44 = sub_2456C9B24(MEMORY[0x277D84F90]);
    v45 = sub_2456CB008();
    v47 = v46;
    *(&v152 + 1) = MEMORY[0x277D837D0];
    *&v151 = 0xD00000000000002DLL;
    *(&v151 + 1) = 0x80000002456D15A0;
    sub_2456A52E8(&v151, v148);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v147 = v44;
    sub_2456C8F34(v148, v45, v47, v48);

    v49 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v50 = sub_2456CAFD8();
    v51 = sub_2456CAFA8();

    v52 = [v49 initWithDomain:v50 code:-1 userInfo:v51];

    sub_2456BA690(v52);
    goto LABEL_21;
  }

  v141 = v16;
  v19 = v144;
  if (!*(v18 + 16))
  {

    goto LABEL_24;
  }

  sub_2456A530C(v18 + 32, &v151);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:

    goto LABEL_25;
  }

  v140 = *&v148[0];
  v20 = v143;
  if (v143)
  {

    sub_2456BD3A8(v141, v20);
    v54 = v53;
  }

  else
  {
    v54 = -1.0;
  }

  v55 = OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_faces;
  swift_beginAccess();
  v56 = *&v19[v55];
  if (v56 >> 62)
  {
    v69 = sub_2456CB3F8();
    v57 = v140;
    if (v69)
    {
      goto LABEL_29;
    }

LABEL_34:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21380);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_2456CED90;
    v71 = MEMORY[0x277D85048];
    *(v70 + 56) = MEMORY[0x277D85048];
    v72 = sub_2456BAA30();
    *(v70 + 32) = 0;
    *(v70 + 96) = v71;
    *(v70 + 104) = v72;
    *(v70 + 64) = v72;
    *(v70 + 72) = 0;
    v163.origin.x = 0.0;
    v163.origin.y = 0.0;
    v163.size.width = 0.0;
    v163.size.height = 0.0;
    Width = CGRectGetWidth(v163);
    *(v70 + 136) = v71;
    *(v70 + 144) = v72;
    *(v70 + 112) = Width;
    v164.origin.x = 0.0;
    v164.origin.y = 0.0;
    v164.size.width = 0.0;
    v164.size.height = 0.0;
    Height = CGRectGetHeight(v164);
    *(v70 + 176) = v71;
    *(v70 + 184) = v72;
    *(v70 + 152) = Height;
    v146 = sub_2456CB018();
    v139 = v75;
    goto LABEL_35;
  }

  v57 = v140;
  if (!*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

LABEL_29:
  if ((v56 & 0xC000000000000001) != 0)
  {

    v58 = MEMORY[0x245D6E880](0, v56);
  }

  else
  {
    if (!*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v58 = *(v56 + 32);
  }

  v59 = *&v58[OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_bounds];
  v60 = *&v58[OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_bounds + 8];
  v61 = *&v58[OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_bounds + 16];
  v62 = *&v58[OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_bounds + 24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21380);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_2456CED90;
  v64 = MEMORY[0x277D85048];
  *(v63 + 56) = MEMORY[0x277D85048];
  v65 = sub_2456BAA30();
  *(v63 + 64) = v65;
  *(v63 + 32) = v59;
  *(v63 + 96) = v64;
  *(v63 + 104) = v65;
  *(v63 + 72) = v60;
  v161.origin.x = v59;
  v161.origin.y = v60;
  v161.size.width = v61;
  v161.size.height = v62;
  v66 = CGRectGetWidth(v161);
  *(v63 + 136) = v64;
  *(v63 + 144) = v65;
  *(v63 + 112) = v66;
  v162.origin.x = v59;
  v162.origin.y = v60;
  v162.size.width = v61;
  v162.size.height = v62;
  v67 = CGRectGetHeight(v162);
  *(v63 + 176) = v64;
  *(v63 + 184) = v65;
  *(v63 + 152) = v67;
  v146 = sub_2456CB018();
  v139 = v68;

LABEL_35:
  v76 = [v57 faceAttributes];
  if (v76)
  {
    v77 = v76;
    v78 = [v76 ageCategory];

    v79 = [v78 label];
    v80 = [v79 identifier];

    v81 = sub_2456CB008();
    v137 = v82;
    v138 = v81;
  }

  else
  {
    v137 = 0;
    v138 = 0;
  }

  v83 = [v57 faceAttributes];
  if (v83)
  {
    v84 = v83;
    v85 = [v83 VN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE];

    v86 = [v85 label];
    v87 = [v86 identifier];

    v88 = sub_2456CB008();
    v135 = v89;
    v136 = v88;
  }

  else
  {
    v135 = 0;
    v136 = 0;
  }

  v90 = [v57 faceAttributes];
  if (v90)
  {
    v91 = v90;
    v92 = [v90 VN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq];

    v93 = [v92 label];
    v94 = [v93 identifier];

    v95 = sub_2456CB008();
    v133 = v96;
    v134 = v95;
  }

  else
  {
    v133 = 0;
    v134 = 0;
  }

  v97 = [v57 faceAttributes];
  if (v97)
  {
    v98 = v97;
    v99 = [v97 VN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB];

    v100 = [v99 label];
    v101 = [v100 identifier];

    v102 = sub_2456CB008();
    v131 = v103;
    v132 = v102;
  }

  else
  {
    v131 = 0;
    v132 = 0;
  }

  v104 = [v57 faceAttributes];
  if (v104)
  {
    v105 = v104;
    v106 = [v104 faceHairCategory];

    v107 = [v106 label];
    v108 = [v107 identifier];

    v130 = sub_2456CB008();
    v110 = v109;
  }

  else
  {
    v130 = 0;
    v110 = 0;
  }

  v111 = [v57 faceAttributes];
  if (v111)
  {
    v112 = v111;
    v113 = [v111 VN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP];

    v114 = [v113 label];
    v115 = [v114 identifier];

    v116 = sub_2456CB008();
    v118 = v117;
  }

  else
  {
    v116 = 0;
    v118 = 0;
  }

  v119 = [v57 faceAttributes];
  if (v119)
  {
    v120 = v119;
    v121 = [v119 glassesCategory];

    v122 = [v121 label];
    v123 = [v122 off_278E83678];

    v124 = sub_2456CB008();
    v126 = v125;
  }

  else
  {
    v124 = 0;
    v126 = 0;
  }

  if (v143)
  {
    v127 = v143;
  }

  else
  {
    v127 = MEMORY[0x277D84F90];
  }

  v128 = v145;
  swift_beginAccess();
  v129 = *(v128 + 160);
  *v148 = v54;
  *(&v148[0] + 1) = v138;
  *&v148[1] = v137;
  *(&v148[1] + 1) = v136;
  *&v148[2] = v135;
  *(&v148[2] + 1) = v134;
  *&v148[3] = v133;
  *(&v148[3] + 1) = v132;
  *&v148[4] = v131;
  *(&v148[4] + 1) = v130;
  *&v148[5] = v110;
  *(&v148[5] + 1) = v116;
  *&v148[6] = v118;
  *(&v148[6] + 1) = v124;
  *&v148[7] = v126;
  *(&v148[7] + 1) = v141;
  *&v149 = v146;
  *(&v149 + 1) = v139;
  *&v150 = v127;
  *(&v150 + 1) = v129;
  v157 = v148[6];
  v158 = v148[7];
  v151 = v148[0];
  v152 = v148[1];
  v155 = v148[4];
  v156 = v148[5];
  v153 = v148[2];
  v154 = v148[3];
  v159 = v149;
  v160 = v150;

  sub_2456BA554(&v151);

  sub_2456BAA00(v148);
}

void *sub_2456BA554(__int128 *a1)
{
  v2 = v1;
  v4 = a1[7];
  v46 = a1[6];
  v47 = v4;
  v5 = a1[9];
  v48 = a1[8];
  v49 = v5;
  v6 = a1[3];
  v42 = a1[2];
  v43 = v6;
  v7 = a1[5];
  v44 = a1[4];
  v45 = v7;
  v8 = a1[1];
  v40 = *a1;
  v41 = v8;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v35 = v46;
    v36 = v47;
    v37 = v48;
    v38 = v49;
    v31 = v42;
    v32 = v43;
    v33 = v44;
    v34 = v45;
    v29 = v40;
    v30 = v41;
    nullsub_1(&v29);
    v11 = (v10 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_selfieResult);
    v12 = *(v10 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_selfieResult + 16);
    v39[0] = *(v10 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_selfieResult);
    v39[1] = v12;
    v13 = *(v10 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_selfieResult + 80);
    v15 = *(v10 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_selfieResult + 32);
    v14 = *(v10 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_selfieResult + 48);
    v39[4] = *(v10 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_selfieResult + 64);
    v39[5] = v13;
    v39[2] = v15;
    v39[3] = v14;
    v16 = *(v10 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_selfieResult + 144);
    v18 = *(v10 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_selfieResult + 96);
    v17 = *(v10 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_selfieResult + 112);
    v39[8] = *(v10 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_selfieResult + 128);
    v39[9] = v16;
    v39[6] = v18;
    v39[7] = v17;
    v19 = v30;
    *v11 = v29;
    v11[1] = v19;
    v20 = v31;
    v21 = v32;
    v22 = v34;
    v11[4] = v33;
    v11[5] = v22;
    v11[2] = v20;
    v11[3] = v21;
    v23 = v35;
    v24 = v36;
    v25 = v38;
    v11[8] = v37;
    v11[9] = v25;
    v11[6] = v23;
    v11[7] = v24;
    sub_24569BFE0(v39, &qword_27EE210C8);
    sub_2456BAAC4(a1, &v28);
    sub_245698FD0();
    swift_unknownObjectRelease();
  }

  v26 = *(v2 + 128);
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  return sub_2456BA97C(v26);
}

void *sub_2456BA690(uint64_t a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_delegate;
    swift_beginAccess();
    sub_2456B89A8(v5 + v6, v14);
    if (v15)
    {
      sub_24569B370(v14, v11);
      sub_24569BFE0(v14, &qword_27EE213C0);
      v7 = v12;
      v8 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      (*(v8 + 56))(a1, v7, v8);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v11);
    }

    else
    {
      swift_unknownObjectRelease();
      sub_24569BFE0(v14, &qword_27EE213C0);
    }
  }

  v9 = *(v2 + 128);
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  return sub_2456BA97C(v9);
}

uint64_t sub_2456BA7AC()
{
  sub_2456BA97C(*(v0 + 128));
  sub_2456B8980(v0 + 144);
}

uint64_t sub_2456BA7E4()
{
  v0 = sub_2456B57AC();
  v1 = *(v0 + 128);

  sub_2456BA97C(v1);
  sub_2456B8980(v0 + 144);

  return MEMORY[0x2821FE8D8](v0, 168, 7);
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_2456BA8BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2456BA904(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_2456BA97C(void *result)
{
  if (result)
  {
  }

  return result;
}

id sub_2456BA9BC(id result)
{
  if (result)
  {
    v1 = result;

    return v1;
  }

  return result;
}

unint64_t sub_2456BAA30()
{
  result = qword_27EE21388;
  if (!qword_27EE21388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21388);
  }

  return result;
}

uint64_t sub_2456BAA84()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2456BAB64()
{
  v1 = 7823737;
  if (*v0 != 1)
  {
    v1 = 1819045746;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6863746970;
  }
}

uint64_t sub_2456BABAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2456BC574(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2456BABD4(uint64_t a1)
{
  v2 = sub_2456BAE48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2456BAC10(uint64_t a1)
{
  v2 = sub_2456BAE48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PADSWPose.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE213C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2456BAE48();
  sub_2456CB5C8();
  v11 = *(v3 + OBJC_IVAR____TtC10CoreIDVPAD9PADSWPose_pitch);
  HIBYTE(v10) = 0;
  sub_2456BAE9C();
  sub_2456CB4F8();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v11 = *(v3 + OBJC_IVAR____TtC10CoreIDVPAD9PADSWPose_yaw);
  HIBYTE(v10) = 1;
  sub_2456CB4F8();
  v11 = *(v3 + OBJC_IVAR____TtC10CoreIDVPAD9PADSWPose_roll);
  HIBYTE(v10) = 2;
  sub_2456CB4F8();
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2456BAE48()
{
  result = qword_27EE213D0;
  if (!qword_27EE213D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE213D0);
  }

  return result;
}

unint64_t sub_2456BAE9C()
{
  result = qword_27EE213E0;
  if (!qword_27EE213E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE213E0);
  }

  return result;
}

void *PADSWPose.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE213F8);
  v6 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v8 = &v14 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2456BAE48();
  v10 = ObjectType;
  sub_2456CB5B8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v6;
    v16 = 0;
    sub_2456BB1B4();
    v12 = v14;
    sub_2456CB498();
    *&v3[OBJC_IVAR____TtC10CoreIDVPAD9PADSWPose_pitch] = v17;
    v16 = 1;
    sub_2456CB498();
    *&v3[OBJC_IVAR____TtC10CoreIDVPAD9PADSWPose_yaw] = v17;
    v16 = 2;
    sub_2456CB498();
    *&v3[OBJC_IVAR____TtC10CoreIDVPAD9PADSWPose_roll] = v17;
    v15.receiver = v3;
    v15.super_class = v10;
    v9 = objc_msgSendSuper2(&v15, sel_init);
    (*(v11 + 8))(v8, v12);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v9;
}

unint64_t sub_2456BB1B4()
{
  result = qword_27EE21400;
  if (!qword_27EE21400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21400);
  }

  return result;
}

void *sub_2456BB208@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = PADSWPose.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

id sub_2456BB2E0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id PADSWFrame.__allocating_init(time:buffer:faces:orientation:gesture:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a2;
  v25 = *MEMORY[0x277D85DE8];
  v15 = HIDWORD(a2);
  v16 = objc_allocWithZone(v7);
  v17 = v16;
  v18 = &v16[OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_time];
  *v18 = a1;
  *(v18 + 2) = v13;
  *(v18 + 3) = v15;
  *(v18 + 2) = a3;
  *&v16[OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_buffer] = a4;
  *&v16[OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_faces] = a5;
  *&v16[OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_gesture] = a7;
  if ((a6 & 0x100000000) != 0)
  {
    attachmentModeOut = 0;
    v20 = CMGetAttachment(a4, *MEMORY[0x277CD3410], &attachmentModeOut);
    swift_unknownObjectRelease();
    *&v17[OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_orientation] = attachmentModeOut;
  }

  else
  {
    *&v16[OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_orientation] = a6;
    v19 = a4;
  }

  v23.receiver = v17;
  v23.super_class = v7;
  v21 = objc_msgSendSuper2(&v23, sel_init);

  return v21;
}

id PADSWFrame.init(time:buffer:faces:orientation:gesture:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = &v7[OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_time];
  *v9 = a1;
  *(v9 + 1) = a2;
  *(v9 + 2) = a3;
  *&v7[OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_buffer] = a4;
  *&v7[OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_faces] = a5;
  *&v7[OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_gesture] = a7;
  if ((a6 & 0x100000000) != 0)
  {
    attachmentModeOut = 0;
    v11 = CMGetAttachment(a4, *MEMORY[0x277CD3410], &attachmentModeOut);
    swift_unknownObjectRelease();
    *&v7[OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_orientation] = attachmentModeOut;
  }

  else
  {
    *&v7[OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_orientation] = a6;
    v10 = a4;
  }

  v14.receiver = v7;
  v14.super_class = type metadata accessor for PADSWFrame();
  v12 = objc_msgSendSuper2(&v14, sel_init);

  return v12;
}

id PADSWFrame.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_27EE20D30 != -1)
  {
    swift_once();
  }

  [v1 postNotificationName:qword_27EE212F0 object:0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for PADSWFrame();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2456BB76C()
{
  v54 = *MEMORY[0x277D85DE8];
  v1 = OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_faces;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    if (sub_2456CB3F8())
    {
      return;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v3 = [objc_allocWithZone(MEMORY[0x277CE2E10]) init];
  v4 = [objc_allocWithZone(MEMORY[0x277CE2C88]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE214F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2456CED80;
  *(v5 + 32) = v4;
  sub_2456AB00C(0, &unk_27EE21510);
  v6 = v4;
  v7 = sub_2456CB0C8();

  v8 = *(v0 + OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_buffer);
  v9 = *(v0 + OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_orientation);
  *&v52 = 0;
  v10 = [v3 performRequests:v7 onCVPixelBuffer:v8 orientation:v9 error:&v52];

  if (v10)
  {
    v11 = v52;
    v12 = &selRef_processFrame_;
    v13 = [v6 results];
    if (!v13)
    {
LABEL_21:
      *&v52 = 0;
      *(&v52 + 1) = 0xE000000000000000;
      sub_2456CB348();
      MEMORY[0x245D6E590](0xD000000000000048, 0x80000002456D1860);
      v37 = [v6 v12[7]];
      if (v37)
      {
        sub_2456AB00C(0, &qword_27EE21378);
        v38 = sub_2456CB0D8();

        if (v38 >> 62)
        {
          v37 = sub_2456CB3F8();
        }

        else
        {
          v37 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }
      }

      *&v51[0] = v37;
      v39 = sub_2456CB518();
      MEMORY[0x245D6E590](v39);

      v40 = v52;
      v41 = sub_2456C9B24(MEMORY[0x277D84F90]);
      v42 = sub_2456CB008();
      v44 = v43;
      v53 = MEMORY[0x277D837D0];
      v52 = v40;
      sub_2456A52E8(&v52, v51);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v41;
      sub_2456C8F34(v51, v42, v44, isUniquelyReferenced_nonNull_native);

      v46 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v47 = sub_2456CAFD8();
      v36 = sub_2456CAFA8();

      [v46 initWithDomain:v47 code:0 userInfo:v36];

      goto LABEL_26;
    }

    v14 = v13;
    sub_2456AB00C(0, &qword_27EE21378);
    v15 = sub_2456CB0D8();

    if (v15 >> 62)
    {
      if (sub_2456CB3F8())
      {
LABEL_7:
        if ((v15 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x245D6E880](0, v15);
        }

        else
        {
          if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_31;
          }

          v16 = *(v15 + 32);
        }

        v14 = v16;

        v12 = &selRef_processFrame_;
        v17 = [v6 results];
        if (!v17)
        {
LABEL_16:

          goto LABEL_21;
        }

        v18 = v17;
        v19 = sub_2456CB0D8();

        if (!(v19 >> 62))
        {
          v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_13;
        }

LABEL_31:
        v20 = sub_2456CB3F8();
LABEL_13:

        v12 = &selRef_processFrame_;
        if (v20 == 1)
        {
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_2456CED80;
          [v14 boundingBox];
          v23 = v22;
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v30 = type metadata accessor for PADSWPose();
          v31 = objc_allocWithZone(v30);
          *&v31[OBJC_IVAR____TtC10CoreIDVPAD9PADSWPose_pitch] = 0;
          *&v31[OBJC_IVAR____TtC10CoreIDVPAD9PADSWPose_yaw] = 0;
          *&v31[OBJC_IVAR____TtC10CoreIDVPAD9PADSWPose_roll] = 0;
          v49.receiver = v31;
          v49.super_class = v30;
          v32 = objc_msgSendSuper2(&v49, sel_init);
          v33 = type metadata accessor for PADSWFace();
          v34 = objc_allocWithZone(v33);
          v35 = &v34[OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_bounds];
          *v35 = v23;
          *(v35 + 1) = v25;
          *(v35 + 2) = v27;
          *(v35 + 3) = v29;
          *&v34[OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_pose] = v32;
          v48.receiver = v34;
          v48.super_class = v33;
          *(v21 + 32) = objc_msgSendSuper2(&v48, sel_init);

          *(v0 + v1) = v21;

          return;
        }

        goto LABEL_16;
      }
    }

    else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

    v12 = &selRef_processFrame_;
    goto LABEL_21;
  }

  v36 = v52;
  sub_2456CAE08();
LABEL_26:

  swift_willThrow();
}

id sub_2456BBD5C()
{
  v47 = *MEMORY[0x277D85DE8];
  v1 = OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_faces;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_14:
    v26 = 0x80000002456D1820;
    sub_2456C9B24(MEMORY[0x277D84F90]);
    v27 = sub_2456CB008();
    v29 = v38;
    v46 = MEMORY[0x277D837D0];
    v30 = 0xD000000000000033;
    goto LABEL_15;
  }

  if (!sub_2456CB3F8())
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {

    v43 = MEMORY[0x245D6E880](0, v2);

    v3 = v43;
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v3 = *(v2 + 32);
  }

  v4 = *&v3[OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_bounds];
  v5 = *&v3[OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_bounds + 8];
  v6 = *&v3[OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_bounds + 16];
  v7 = *&v3[OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_bounds + 24];

  v48.origin.x = v4;
  v48.origin.y = v5;
  v48.size.width = v6;
  v48.size.height = v7;
  v8 = CGRectGetWidth(v48) * -0.765 * 0.5;
  v49.origin.x = v4;
  v49.origin.y = v5;
  v49.size.width = v6;
  v49.size.height = v7;
  v9 = CGRectGetHeight(v49) * -0.765 * 0.5;
  v50.origin.x = v4;
  v50.origin.y = v5;
  v50.size.width = v6;
  v50.size.height = v7;
  v51 = CGRectInset(v50, v8, v9);
  x = v51.origin.x;
  y = v51.origin.y;
  width = v51.size.width;
  height = v51.size.height;
  v51.origin.x = 0.0;
  v51.origin.y = 0.0;
  v51.size.width = 1.0;
  v51.size.height = 1.0;
  v56.origin.x = x;
  v56.origin.y = y;
  v56.size.width = width;
  v56.size.height = height;
  if (CGRectContainsRect(v51, v56))
  {
    v52.origin.x = 0.0;
    v52.origin.y = 0.0;
    v52.size.width = 1.0;
    v52.size.height = 1.0;
    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = width;
    v57.size.height = height;
    v53 = CGRectIntersection(v52, v57);
    x = v53.origin.x;
    y = v53.origin.y;
    width = v53.size.width;
    height = v53.size.height;
  }

  v14 = OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_buffer;
  v15 = CVPixelBufferGetWidth(*(v0 + OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_buffer));
  CVPixelBufferGetHeight(*(v0 + v14));
  CVPixelBufferGetWidth(*(v0 + v14));
  v16 = CVPixelBufferGetHeight(*(v0 + v14));
  v54.origin.x = x * v15;
  v54.size.width = width * v15;
  v54.origin.y = y * v16;
  v54.size.height = height * v16;
  v55 = CGRectIntegral(v54);
  v17 = v55.origin.x;
  v18 = v55.origin.y;
  v19 = v55.size.width;
  v20 = v55.size.height;
  v21 = [objc_allocWithZone(MEMORY[0x277CE2D40]) initWithCVPixelBuffer:*(v0 + v14) orientation:*(v0 + OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_orientation) options:0];
  if (!v21)
  {
    v26 = 0x80000002456D17B0;
    sub_2456C9B24(MEMORY[0x277D84F90]);
    v27 = sub_2456CB008();
    v29 = v28;
    v46 = MEMORY[0x277D837D0];
    v30 = 0xD000000000000030;
LABEL_15:
    *&v45 = v30;
    *(&v45 + 1) = v26;
    sub_2456A52E8(&v45, v44);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2456C8F34(v44, v27, v29, isUniquelyReferenced_nonNull_native);

    v25 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v40 = sub_2456CAFD8();
    v41 = sub_2456CAFA8();

    [v25 initWithDomain:v40 code:0 userInfo:v41];

    swift_willThrow();
    return v25;
  }

  v22 = v21;
  PixelFormatType = CVPixelBufferGetPixelFormatType(*(v0 + v14));
  *&v45 = 0;
  v24 = [v22 cropAndScaleBufferWithWidth:128 height:128 cropRect:PixelFormatType format:2 imageCropAndScaleOption:0 options:&v45 error:v17 calculatedNormalizedOriginOffset:v18 calculatedScaleX:v19 calculatedScaleY:{v20, 0, 0, 0}];
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v31 = v45;
    sub_2456C9B24(MEMORY[0x277D84F90]);
    v32 = sub_2456CB008();
    v34 = v33;
    v46 = MEMORY[0x277D837D0];
    *&v45 = 0xD000000000000027;
    *(&v45 + 1) = 0x80000002456D17F0;
    sub_2456A52E8(&v45, v44);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    sub_2456C8F34(v44, v32, v34, v35);

    v25 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v36 = sub_2456CAFD8();
    v37 = sub_2456CAFA8();

    [v25 initWithDomain:v36 code:0 userInfo:v37];

    swift_willThrow();
  }

  return v25;
}

id PADSWFrame.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_2456BC470()
{
  result = qword_27EE21440;
  if (!qword_27EE21440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21440);
  }

  return result;
}

unint64_t sub_2456BC4C8()
{
  result = qword_27EE21448;
  if (!qword_27EE21448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21448);
  }

  return result;
}

unint64_t sub_2456BC520()
{
  result = qword_27EE21450;
  if (!qword_27EE21450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21450);
  }

  return result;
}

uint64_t sub_2456BC574(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6863746970 && a2 == 0xE500000000000000;
  if (v4 || (sub_2456CB538() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7823737 && a2 == 0xE300000000000000 || (sub_2456CB538() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1819045746 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2456CB538();

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

uint64_t sub_2456BC694(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2456BC6DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_2456BC784(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v81 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  result = v2;
  v5 = result;
  if (v3)
  {
    v6 = 0;
    v7 = a1 + 56;
    v8 = 0x277CCA000;
    v9 = 0x1FA9F7000;
    v74 = result;
    while (1)
    {
      v10 = (v7 + 32 * v6);
      v11 = v6;
      while (1)
      {
        if (v11 >= *(a1 + 16))
        {
          __break(1u);
          return result;
        }

        v12 = *v10;
        v75 = type metadata accessor for PADFacePoseRequest();

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE214D0);
        v13 = sub_2456CB038();
        if (*(v12 + 16))
        {
          break;
        }

LABEL_5:
        ++v11;
        v10 += 4;
        if (v3 == v11)
        {
          v5 = v74;
          goto LABEL_58;
        }
      }

      v15 = v9;
      v16 = v8;
      v17 = sub_2456C85D4(v13, v14);
      v19 = v18;

      if ((v19 & 1) == 0)
      {
        break;
      }

      v20 = *(*(v12 + 56) + 8 * v17);
      if (!*(v20 + 16))
      {
        break;
      }

      sub_2456A530C(v20 + 32, v80);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v8 = v16;

LABEL_13:
        v9 = v15;
        goto LABEL_5;
      }

      v21 = [objc_allocWithZone(PADAlgorithmFacePoseInput) init];
      [v21 setPitch_];
      [v21 setYaw_];
      [v21 setRoll_];
      [v21 setSmile_];

      v76 = sub_2456AB00C(0, &unk_27EE21500);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21468);
      v22 = sub_2456CB038();
      if (*(v12 + 16))
      {
        v24 = sub_2456C85D4(v22, v23);
        v26 = v25;

        if (v26)
        {
          v27 = *(*(v12 + 56) + 8 * v24);
          if (*(v27 + 16))
          {
            sub_2456A530C(v27 + 32, v80);
            sub_2456AB00C(0, &qword_27EE21378);
            if (swift_dynamicCast())
            {
              v28 = v76;
              v29 = [v28 landmarks];
              if (v29 && (v30 = v29, v31 = [v29 allPoints], v30, v31))
              {
                v70 = v28;
                v71 = v21;
                v73 = v31;
                v32 = sub_2456CB258();
                v33 = *(v32 + 16);
                if (v33)
                {
                  v34 = (v32 + 40);
                  v35 = MEMORY[0x277D84F90];
                  do
                  {
                    v37 = *(v34 - 1);
                    v36 = *v34;
                    v38 = v35;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v38 = sub_2456A2F38(0, *(v38 + 2) + 1, 1, v38);
                    }

                    v35 = v38;
                    v39 = *(v38 + 2);
                    v40 = *(v35 + 3);
                    v41 = v40 >> 1;
                    v42 = v39 + 1;
                    if (v40 >> 1 <= v39)
                    {
                      v35 = sub_2456A2F38((v40 > 1), v39 + 1, 1, v35);
                      v40 = *(v35 + 3);
                      v41 = v40 >> 1;
                    }

                    v43 = v37;
                    *(v35 + 2) = v42;
                    *&v35[4 * v39 + 32] = v43;
                    v44 = v39 + 2;
                    if (v41 < v44)
                    {
                      v35 = sub_2456A2F38((v40 > 1), v44, 1, v35);
                    }

                    v45 = v36;
                    *(v35 + 2) = v44;
                    *&v35[4 * v42 + 32] = v45;
                    v34 += 2;
                    --v33;
                  }

                  while (v33);
                }

                else
                {
                  v35 = MEMORY[0x277D84F90];
                }

                v47 = v35;

                v48 = *(v47 + 2);
                if (v48)
                {
                  v80[0] = MEMORY[0x277D84F90];
                  sub_2456CB3A8();
                  v49 = 32;
                  do
                  {
                    v50 = *&v47[v49];
                    v51 = objc_allocWithZone(MEMORY[0x277CCABB0]);
                    LODWORD(v52) = v50;
                    [v51 initWithFloat_];
                    sub_2456CB388();
                    sub_2456CB3B8();
                    sub_2456CB3C8();
                    sub_2456CB398();
                    v49 += 4;
                    --v48;
                  }

                  while (v48);
                }

                sub_2456AB00C(0, &qword_27EE21068);
                v46 = sub_2456CB0C8();

                v21 = v71;
                v28 = v70;
              }

              else
              {

                v46 = 0;
              }

              [v21 setLandmarks_];
            }
          }
        }
      }

      else
      {
      }

      v77 = sub_2456AB00C(0, &unk_27EE213A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21470);
      v53 = sub_2456CB038();
      if (*(v12 + 16))
      {
        v72 = v21;
        v55 = sub_2456C85D4(v53, v54);
        v57 = v56;

        if ((v57 & 1) != 0 && (v58 = *(*(v12 + 56) + 8 * v55), *(v58 + 16)))
        {
          sub_2456A530C(v58 + 32, v80);

          sub_2456AB00C(0, &qword_27EE21378);
          v59 = v72;
          if (swift_dynamicCast())
          {
            v60 = v77;
            sub_2456B7150(v77);
            if (v61)
            {
              v62 = v61;
              v63 = *(v61 + 16);
              if (v63)
              {
                v80[0] = MEMORY[0x277D84F90];
                sub_2456CB3A8();
                v64 = 32;
                do
                {
                  v65 = *(v62 + v64);
                  v66 = objc_allocWithZone(MEMORY[0x277CCABB0]);
                  LODWORD(v67) = v65;
                  [v66 initWithFloat_];
                  sub_2456CB388();
                  sub_2456CB3B8();
                  sub_2456CB3C8();
                  sub_2456CB398();
                  v64 += 4;
                  --v63;
                }

                while (v63);

                v60 = v77;
                v59 = v72;
              }

              else
              {
              }

              sub_2456AB00C(0, &qword_27EE21068);
              v68 = sub_2456CB0C8();
            }

            else
            {
              v68 = 0;
            }

            [v59 setFaceprint_];
          }
        }

        else
        {
        }
      }

      else
      {
      }

      MEMORY[0x245D6E5E0]();
      if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2456CB0F8();
      }

      v6 = v11 + 1;
      result = sub_2456CB118();
      v7 = a1 + 56;
      v5 = v74;
      v8 = v16;
      v9 = v15;
      if (v3 - 1 == v11)
      {
        goto LABEL_58;
      }
    }

    v8 = v16;
    goto LABEL_13;
  }

LABEL_58:

  sub_2456AB00C(0, &qword_27EE21478);
  v69 = sub_2456CB0C8();

  [v5 setFacePoseValues_];

  return v5;
}

uint64_t sub_2456BD040(uint64_t a1, unint64_t a2, SEL *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a2 == 9 || a2 == 4;
  v5 = 96;
  if (v4)
  {
    v5 = 104;
  }

  v6 = *(v3 + v5);
  if (*(a1 + 16) < v6)
  {
    sub_2456CB348();
    MEMORY[0x245D6E590](0xD00000000000001ALL, 0x80000002456D19E0);
    v7 = sub_2456CB518();
    MEMORY[0x245D6E590](v7);

    MEMORY[0x245D6E590](0xD000000000000014, 0x80000002456D1A00);
    *&v28[0] = v6;
    v8 = sub_2456CB518();
    MEMORY[0x245D6E590](v8);

    MEMORY[0x245D6E590](46, 0xE100000000000000);
    v9 = sub_2456C9B24(MEMORY[0x277D84F90]);
    v10 = sub_2456CB008();
    v12 = v11;
    v30 = MEMORY[0x277D837D0];
    *&v29 = 0;
    *(&v29 + 1) = 0xE000000000000000;
    sub_2456A52E8(&v29, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2456C8F34(v28, v10, v12, isUniquelyReferenced_nonNull_native);

    v14 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v15 = sub_2456CAFD8();
    v16 = sub_2456CAFA8();

    [v14 initWithDomain:v15 code:-5 userInfo:{v16, v9, *&v28[0]}];

    swift_willThrow();
    return v15;
  }

  v18 = v3;
  sub_2456AB00C(0, &qword_27EE21458);

  v21 = sub_2456BC784(v20);
  if (a2 < 6 || a2 - 8 < 3)
  {
    v22 = *(v18 + 16);
    *&v29 = 0;
    v23 = [v22 *a3];
    v15 = v29;
    if (v23)
    {
      v24 = v23;
      v25 = v29;
      v15 = sub_2456BDA9C(v24);
    }

    else
    {
      v26 = v29;
      sub_2456CAE08();

      swift_willThrow();
    }

    return v15;
  }

  result = sub_2456CB548();
  __break(1u);
  return result;
}

void sub_2456BD3A8(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = 0;
      while (v3 != v5)
      {
        v6 = v5 + 1;
        v7 = *(*(a2 + 32 + 8 * v5++) + 16);
        if (v7 != v4)
        {
          sub_2456CB348();
          MEMORY[0x245D6E590](0xD000000000000020, 0x80000002456D1990);
          *&v40[0] = v6 - 1;
          v8 = sub_2456CB518();
          MEMORY[0x245D6E590](v8);

          MEMORY[0x245D6E590](0xD000000000000015, 0x80000002456D19C0);
          sub_2456C9B24(MEMORY[0x277D84F90]);
          v9 = sub_2456CB008();
          v11 = v10;
          v42 = MEMORY[0x277D837D0];
          *&v41 = 0;
          *(&v41 + 1) = 0xE000000000000000;
          goto LABEL_10;
        }
      }

      *&v41 = MEMORY[0x277D84F90];
      v38 = a2 + 32;
      sub_2456C5BD8(0, v3, 0);
      v20 = v38;
      v21 = 0;
      v22 = v41;
      v37 = v3;
      do
      {
        v23 = *(v20 + 8 * v21);
        v24 = *(v23 + 16);
        if (v24)
        {
          v39 = v22;
          *&v40[0] = MEMORY[0x277D84F90];

          sub_2456CB3A8();
          v25 = 32;
          do
          {
            v26 = *(v23 + v25);
            v27 = objc_allocWithZone(MEMORY[0x277CCABB0]);
            LODWORD(v28) = v26;
            [v27 initWithFloat_];
            sub_2456CB388();
            sub_2456CB3B8();
            sub_2456CB3C8();
            sub_2456CB398();
            v25 += 4;
            --v24;
          }

          while (v24);

          v29 = *&v40[0];
          v3 = v37;
          v20 = v38;
          v22 = v39;
        }

        else
        {
          v29 = MEMORY[0x277D84F90];
        }

        *&v41 = v22;
        v31 = *(v22 + 16);
        v30 = *(v22 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_2456C5BD8((v30 > 1), v31 + 1, 1);
          v20 = v38;
          v22 = v41;
        }

        ++v21;
        *(v22 + 16) = v31 + 1;
        *(v22 + 8 * v31 + 32) = v29;
      }

      while (v21 != v3);
      sub_2456BD8AC(a1);
      v32 = *(v2 + 16);
      sub_2456AB00C(0, &qword_27EE21068);
      v33 = sub_2456CB0C8();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21550);
      v34 = sub_2456CB0C8();

      *&v41 = 0;
      [v32 performIDMatching:v33 toFaceprints:v34 error:&v41];

      v35 = v41;
      if (v41)
      {
        swift_willThrow();
        v35;
      }

      return;
    }

    v12 = 0x80000002456D1950;
    sub_2456C9B24(MEMORY[0x277D84F90]);
    v9 = sub_2456CB008();
    v11 = v15;
    v42 = MEMORY[0x277D837D0];
    v14 = 0xD000000000000034;
  }

  else
  {
    v12 = 0x80000002456D1910;
    sub_2456C9B24(MEMORY[0x277D84F90]);
    v9 = sub_2456CB008();
    v11 = v13;
    v42 = MEMORY[0x277D837D0];
    v14 = 0xD00000000000003BLL;
  }

  *&v41 = v14;
  *(&v41 + 1) = v12;
LABEL_10:
  sub_2456A52E8(&v41, v40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2456C8F34(v40, v9, v11, isUniquelyReferenced_nonNull_native);

  v17 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v18 = sub_2456CAFD8();
  v19 = sub_2456CAFA8();

  [v17 initWithDomain:v18 code:-1 userInfo:v19];

  swift_willThrow();
}

uint64_t sub_2456BD8AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v8 = MEMORY[0x277D84F90];
    sub_2456CB3A8();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v6 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      LODWORD(v7) = v5;
      [v6 initWithFloat_];
      sub_2456CB388();
      sub_2456CB3B8();
      sub_2456CB3C8();
      sub_2456CB398();
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2456BD97C(uint64_t a1, char a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = 0xBFF0000000000000;
  v10 = 0;
  v4 = *(v2 + 16);
  v9 = 0;
  [v4 performTA:a1 nccSignal:v11 stitchDetected:&v10 isSensitive:a2 & 1 error:&v9];
  v5 = v9;
  if (v9)
  {
    swift_willThrow();
    v6 = v5;
  }

  else
  {
    v7 = v10;
  }

  return v7 & 1;
}

uint64_t sub_2456BDA38()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8D8](v0, 240, 7);
}

unint64_t sub_2456BDA9C(void *a1)
{
  v1 = [a1 assessment];
  v2 = 0x278E83000uLL;
  if (v1)
  {
    v3 = v1;
    v4 = [v1 integerValue];
  }

  else
  {
    v4 = -1;
  }

  v5 = sub_2456B654C(v4);
  LOBYTE(v7) = v6;
  v8 = [a1 faceprints];
  sub_2456AB00C(0, &qword_27EE21460);
  v9 = sub_2456CB0D8();

  if (v9 >> 62)
  {
    goto LABEL_44;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v11 = MEMORY[0x277D84F90];
  v41 = v5;
  v40 = v7;
  if (v10)
  {
    v48 = MEMORY[0x277D84F90];
    result = sub_2456C5D38(0, v10 & ~(v10 >> 63), 0);
    if ((v10 & 0x8000000000000000) == 0)
    {
      v13 = 0;
      v45 = v10;
      v46 = v9 & 0xC000000000000001;
      v14 = v48;
      v44 = v9 & 0xFFFFFFFFFFFFFF8;
      v43 = v9 + 32;
      v9 = 0x278E83000uLL;
      while (1)
      {
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          v10 = sub_2456CB3F8();
          goto LABEL_6;
        }

        if (v46)
        {
          v16 = MEMORY[0x245D6E880]();
        }

        else
        {
          if (v13 >= *(v44 + 16))
          {
            goto LABEL_43;
          }

          v16 = *(v43 + 8 * v13);
        }

        v17 = v16;
        v18 = [v16 faceprint];
        sub_2456AB00C(0, &qword_27EE21068);
        v5 = sub_2456CB0D8();

        if (v5 >> 62)
        {
          v7 = sub_2456CB3F8();
          if (!v7)
          {
LABEL_26:

            v20 = v11;
            goto LABEL_27;
          }
        }

        else
        {
          v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v7)
          {
            goto LABEL_26;
          }
        }

        v47 = v17;
        v2 = v14;
        sub_2456C5CE8(0, v7 & ~(v7 >> 63), 0);
        if (v7 < 0)
        {
          goto LABEL_42;
        }

        v19 = 0;
        v20 = v11;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x245D6E880](v19, v5);
          }

          else
          {
            v21 = *(v5 + 8 * v19 + 32);
          }

          v22 = v21;
          [v21 floatValue];
          v24 = v23;

          v26 = *(v11 + 16);
          v25 = *(v11 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_2456C5CE8((v25 > 1), v26 + 1, 1);
          }

          ++v19;
          *(v11 + 16) = v26 + 1;
          *(v11 + 4 * v26 + 32) = v24;
        }

        while (v7 != v19);

        v14 = v2;
        v11 = MEMORY[0x277D84F90];
        v17 = v47;
LABEL_27:
        v27 = [v17 index];

        v7 = *(v14 + 16);
        v28 = *(v14 + 24);
        v5 = v7 + 1;
        if (v7 >= v28 >> 1)
        {
          sub_2456C5D38((v28 > 1), v7 + 1, 1);
        }

        *(v14 + 16) = v5;
        v29 = v14 + 16 * v7;
        *(v29 + 32) = v20;
        *(v29 + 40) = v27;
        v13 = v15;
        v2 = 0x278E83000;
        if (v15 == v45)
        {
          goto LABEL_30;
        }
      }
    }

    __break(1u);
    goto LABEL_50;
  }

LABEL_30:

  [a1 isHeadMovementDetected];
  v30 = [a1 referenceFrameIndices];
  sub_2456AB00C(0, &qword_27EE21068);
  v31 = sub_2456CB0D8();

  if (v31 >> 62)
  {
    v32 = sub_2456CB3F8();
    if (!v32)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v32)
    {
      goto LABEL_46;
    }
  }

  result = sub_2456C5D08(0, v32 & ~(v32 >> 63), 0);
  if (v32 < 0)
  {
LABEL_50:
    __break(1u);
    return result;
  }

  v33 = 0;
  v34 = v11;
  do
  {
    if ((v31 & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x245D6E880](v33, v31);
    }

    else
    {
      v35 = *(v31 + 8 * v33 + 32);
    }

    v36 = v35;
    v37 = [v35 *(v2 + 2888)];

    v39 = *(v34 + 16);
    v38 = *(v34 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_2456C5D08((v38 > 1), v39 + 1, 1);
    }

    ++v33;
    *(v34 + 16) = v39 + 1;
    *(v34 + 8 * v39 + 32) = v37;
  }

  while (v32 != v33);
LABEL_46:

  if (v40)
  {
    return 3;
  }

  else
  {
    return v41;
  }
}

unint64_t sub_2456BDFC0()
{
  v1 = 0x6863746970;
  v2 = 1819045746;
  if (*v0 != 2)
  {
    v2 = 7823737;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_2456BE02C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2456BF49C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2456BE060(uint64_t a1)
{
  v2 = sub_2456BE2F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2456BE09C(uint64_t a1)
{
  v2 = sub_2456BE2F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PADPrintReplayAssessment.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21480);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v9 = *v1;
  v8 = v1[1];
  v11 = v1[2];
  v10 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2456BE2F4();
  sub_2456CB5C8();
  v14 = v9;
  HIBYTE(v13) = 0;
  sub_2456BAE9C();
  sub_2456CB4F8();
  if (!v2)
  {
    v14 = v8;
    HIBYTE(v13) = 1;
    sub_2456CB4F8();
    v14 = v11;
    HIBYTE(v13) = 2;
    sub_2456CB4F8();
    v14 = v10;
    HIBYTE(v13) = 3;
    sub_2456CB4F8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2456BE2F4()
{
  result = qword_27EE21488;
  if (!qword_27EE21488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21488);
  }

  return result;
}

uint64_t PADPrintReplayAssessment.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21490);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2456BE2F4();
  sub_2456CB5B8();
  if (!v2)
  {
    HIBYTE(v14) = 0;
    sub_2456BB1B4();
    sub_2456CB498();
    v9 = v15;
    HIBYTE(v14) = 1;
    sub_2456CB498();
    v10 = v15;
    HIBYTE(v14) = 2;
    sub_2456CB498();
    v12 = v15;
    HIBYTE(v14) = 3;
    sub_2456CB498();
    (*(v6 + 8))(v8, v5);
    v13 = v15;
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v12;
    a2[3] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

float sub_2456BE5E8()
{
  v1 = sub_2456CAF58();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 128);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    v8 = 0.0;
    v9 = v6;
    do
    {
      v10 = *v7;
      v7 += 4;
      if (*(*(v0 + 120) + 136) < v10)
      {
        v8 = v8 + 1.0;
      }

      --v9;
    }

    while (v9);
    return v8 / v6;
  }

  else
  {
    if (qword_27EE20D00 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v1, qword_27EE20D08);
    (*(v2 + 16))(v4, v12, v1);
    v13 = sub_2456CAF38();
    v14 = sub_2456CB1D8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      MEMORY[0x245D6F740](v15, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    return -1.0;
  }
}

float sub_2456BE7C4()
{
  v1 = sub_2456CAF58();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 128);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    v8 = 0.0;
    v9 = v6;
    do
    {
      v10 = *v7;
      v7 += 4;
      if (v10 < *(*(v0 + 120) + 152))
      {
        v8 = v8 + 1.0;
      }

      --v9;
    }

    while (v9);
    return v8 / v6;
  }

  else
  {
    if (qword_27EE20D00 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v1, qword_27EE20D08);
    (*(v2 + 16))(v4, v12, v1);
    v13 = sub_2456CAF38();
    v14 = sub_2456CB1D8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      MEMORY[0x245D6F740](v15, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    return -1.0;
  }
}

BOOL sub_2456BE9A0(char *a1)
{
  v2 = sub_2456CAF58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_faces;
  swift_beginAccess();
  v7 = *&a1[v6];
  if (v7 >> 62)
  {
    v8 = sub_2456CB3F8();
    if (v8 == 1)
    {
      return v8 == 1;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 == 1)
    {
      return v8 == 1;
    }
  }

  if (qword_27EE20D00 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, qword_27EE20D08);
  (*(v3 + 16))(v5, v9, v2);
  v10 = a1;
  v11 = sub_2456CAF38();
  v12 = sub_2456CB1D8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    v14 = *&a1[v6];
    if (v14 >> 62)
    {
      v18 = v13;
      v15 = sub_2456CB3F8();
      v13 = v18;
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v13 + 4) = v15;
    v16 = v13;

    _os_log_impl(&dword_245686000, v11, v12, "Found %ld faces in the frame. Skipping PRD.", v16, 0xCu);
    MEMORY[0x245D6F740](v16, -1, -1);
  }

  else
  {

    v11 = v10;
  }

  (*(v3 + 8))(v5, v2);
  return v8 == 1;
}

uint64_t sub_2456BEC04(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_time + 16);
  *(v1 + 136) = *(a1 + OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_time);
  *(v1 + 152) = v2;
  *(v1 + 160) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE21390);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2456CF200;
  swift_weakLoadStrong();
  v4 = type metadata accessor for PADFacePoseRequest();
  v5 = swift_allocObject();
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 1;
  swift_weakInit();
  swift_weakAssign();

  *(v3 + 56) = v4;
  *(v3 + 64) = &off_285873C90;
  *(v3 + 32) = v5;
  swift_weakLoadStrong();
  v6 = type metadata accessor for PADPrintReplayRequest();
  v7 = swift_allocObject();
  *(v7 + 24) = xmmword_2456CF210;
  swift_weakInit();
  swift_weakAssign();

  *(v3 + 96) = v6;
  *(v3 + 104) = &off_285873C90;
  *(v3 + 72) = v7;
  return v3;
}

uint64_t sub_2456BED54(uint64_t a1)
{
  swift_beginAccess();
  sub_2456BF670(v1 + 168, v9);
  if (!v10)
  {
    return sub_2456BF608(v9);
  }

  sub_24569B370(v9, v6);
  sub_2456BF608(v9);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 8))(a1, v3, v4);
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

void sub_2456BEE08(void *a1)
{
  v2 = v1;
  v4 = sub_2456CAF58();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - v9;
  swift_beginAccess();
  sub_2456BF670(v1 + 168, v44);
  if (v45)
  {
    sub_24569B370(v44, &v40);
    sub_2456BF608(v44);
    v11 = v42;
    v12 = v43;
    __swift_project_boxed_opaque_existential_1(&v40, v42);
    (*(v12 + 8))(0, v11, v12);
    __swift_destroy_boxed_opaque_existential_0(&v40);
  }

  else
  {
    sub_2456BF608(v44);
  }

  v13 = a1[2];
  if (v13 == 1)
  {
    v14 = a1[6];
    v15 = a1[7];
    v18 = a1 + 4;
    v16 = a1[4];
    v17 = v18[1];

    v19 = sub_2456BFDFC(v16, v17, v14, v15);

    if (v19)
    {
      if (*(v19 + 16))
      {
        sub_2456A530C(v19 + 32, v44);

        if (swift_dynamicCast())
        {
          v20 = v41;
          if (v41)
          {
            v21 = *&v41[OBJC_IVAR____TtC10CoreIDVPAD9PADSWPose_pitch];
            v22 = *&v41[OBJC_IVAR____TtC10CoreIDVPAD9PADSWPose_roll];
            v23 = *&v41[OBJC_IVAR____TtC10CoreIDVPAD9PADSWPose_yaw];
          }

          else
          {
            v23 = -1.0;
            v22 = -1.0;
            v21 = -1.0;
          }

          v32 = *&v40;
          v33 = *(v2 + 128);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v2 + 128) = v33;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v33 = sub_2456A39C4(0, *(v33 + 2) + 1, 1, v33);
            *(v2 + 128) = v33;
          }

          v35 = v32;
          v37 = *(v33 + 2);
          v36 = *(v33 + 3);
          if (v37 >= v36 >> 1)
          {
            v33 = sub_2456A39C4((v36 > 1), v37 + 1, 1, v33);
          }

          *(v33 + 2) = v37 + 1;
          v38 = &v33[32 * v37];
          v38[4] = v35;
          v38[5] = v21;
          v38[6] = v22;
          v38[7] = v23;
          *(v2 + 128) = v33;

          return;
        }
      }

      else
      {
      }
    }

    if (qword_27EE20D00 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v4, qword_27EE20D08);
    (*(v5 + 16))(v10, v28, v4);
    v29 = sub_2456CAF38();
    v30 = sub_2456CB1D8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_245686000, v29, v30, "PADPrintReplayRequest did not generate an observation for the current frame.", v31, 2u);
      MEMORY[0x245D6F740](v31, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
  }

  else
  {
    if (qword_27EE20D00 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v4, qword_27EE20D08);
    (*(v5 + 16))(v8, v24, v4);

    v25 = sub_2456CAF38();
    v26 = sub_2456CB1D8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = v13;

      _os_log_impl(&dword_245686000, v25, v26, "Received unexpected number of PRD results: %ld. Expected 1.", v27, 0xCu);
      MEMORY[0x245D6F740](v27, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_2456BF2D0()
{

  return sub_2456BF608(v0 + 168);
}

uint64_t sub_2456BF300()
{
  v0 = sub_2456B57AC();

  sub_2456BF608(v0 + 168);

  return MEMORY[0x2821FE8D8](v0, 208, 7);
}

unint64_t sub_2456BF398()
{
  result = qword_27EE21498;
  if (!qword_27EE21498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21498);
  }

  return result;
}

unint64_t sub_2456BF3F0()
{
  result = qword_27EE214A0;
  if (!qword_27EE214A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE214A0);
  }

  return result;
}

unint64_t sub_2456BF448()
{
  result = qword_27EE214A8;
  if (!qword_27EE214A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE214A8);
  }

  return result;
}

uint64_t sub_2456BF49C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000002456D1A70 == a2 || (sub_2456CB538() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6863746970 && a2 == 0xE500000000000000 || (sub_2456CB538() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1819045746 && a2 == 0xE400000000000000 || (sub_2456CB538() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7823737 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_2456CB538();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2456BF608(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21098);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2456BF670(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21098);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2456BF6E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_2456C9EB8(MEMORY[0x277D84F90]);
  v4 = sub_2456CB198();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2456C9200(v4, 0x65727574736567, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v6 = v3;
  v7 = sub_2456CB198();
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_2456C9200(v7, 0x746C75736572, 0xE600000000000000, v8);
  v9 = sub_2456CB198();
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_2456C9200(v9, 0x6F43726566667562, 0xEB00000000746E75, v10);
  if (!a2)
  {
    v11 = sub_2456CB128();
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_2456C9200(v11, 0xD00000000000001FLL, 0x80000002456D1AE0, v12);
  }

  return v6;
}

id sub_2456BF844(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_2456BFBB0();
    v4 = sub_2456CAFA8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_2456BF8D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_2456CAF58();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EE20D00 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_27EE20D08);
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_2456CAF38();
  v14 = sub_2456CB1C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134218752;
    *(v15 + 4) = a1;
    *(v15 + 12) = 2048;
    *(v15 + 14) = a2;
    *(v15 + 22) = 2048;
    *(v15 + 24) = a3;
    *(v15 + 32) = 1024;
    *(v15 + 34) = a4 & 1;
    _os_log_impl(&dword_245686000, v13, v14, "PADAnalytics.sendGestureCompleteEvent gesture = %ld, result = %ld, bufferCount = %ld, wasSkippedWithAccessibility = %{BOOL}d", v15, 0x26u);
    MEMORY[0x245D6F740](v15, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v16 = sub_2456CAFD8();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4 & 1;
  aBlock[4] = sub_2456BFB88;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2456BF844;
  aBlock[3] = &block_descriptor_4;
  v18 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v18);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2456BFBB0()
{
  result = qword_27EE214B0;
  if (!qword_27EE214B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE214B0);
  }

  return result;
}

uint64_t sub_2456BFBFC(uint64_t result, unint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (result)
  {
    if ((a2 & 0x8000000000000000) != 0 || (v4 = *v3, *(*v3 + 16) <= a2))
    {
    }

    else
    {
      v7 = result;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = a3(v4);
        v4 = result;
      }

      if (*(v4 + 16) <= a2)
      {
        __break(1u);
      }

      else
      {
        *(v4 + 8 * a2 + 32) = v7;

        *v3 = v4;
      }
    }
  }

  return result;
}

uint64_t sub_2456BFCB4(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v8[3] = sub_2456AB00C(0, &unk_27EE21510);
  v8[4] = &off_285873C78;
  v8[0] = a1;
  v6 = a1;
  a3(v8, a2);
  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t sub_2456BFD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t *a7)
{
  sub_2456AB00C(0, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(a7);
  v9 = sub_2456CB038();
  if (*(a4 + 16))
  {
    sub_2456C85D4(v9, v10);
    v12 = v11;

    if (v12)
    {
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_2456BFE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t *a6)
{
  a5(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  v8 = sub_2456CB038();
  if (*(a4 + 16))
  {
    sub_2456C85D4(v8, v9);
    v11 = v10;

    if (v11)
    {
    }
  }

  else
  {
  }

  return 0;
}

uint64_t PADFaceActionMode.description.getter()
{
  v1 = 0xD000000000000016;
  if (*v0 != 1)
  {
    v1 = 0x646573756170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6547746365746564;
  }
}

CoreIDVPAD::PADFaceActionMode_optional __swiftcall PADFaceActionMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_2456BFF70()
{
  result = qword_27EE214C0;
  if (!qword_27EE214C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE214C0);
  }

  return result;
}

uint64_t sub_2456BFFCC()
{
  v1 = 0xD000000000000016;
  if (*v0 != 1)
  {
    v1 = 0x646573756170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6547746365746564;
  }
}

uint64_t sub_2456C0044()
{
  swift_beginAccess();
  v1 = *(v0 + 264);
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = MEMORY[0x277D84F90];
    v4 = 32;
    do
    {
      if (*(v1 + v4) == 1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2456C5B08(0, *(v3 + 16) + 1, 1);
        }

        v6 = *(v3 + 16);
        v5 = *(v3 + 24);
        if (v6 >= v5 >> 1)
        {
          sub_2456C5B08((v5 > 1), v6 + 1, 1);
        }

        *(v3 + 16) = v6 + 1;
        *(v3 + 8 * v6 + 32) = 1;
      }

      v4 += 8;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v7 = *(v3 + 16);

  return v7;
}

uint64_t sub_2456C0164(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v3[18] = a1;

  v3[19] = a2;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v20 = MEMORY[0x277D84F90];
    sub_2456C5B78(0, v6, 0);
    v8 = v20;
    v9 = *(v20 + 16);
    v10 = v6;
    do
    {
      v11 = *(v20 + 24);
      if (v9 >= v11 >> 1)
      {
        sub_2456C5B78((v11 > 1), v9 + 1, 1);
      }

      *(v20 + 16) = v9 + 1;
      *(v20 + 8 * v9++ + 32) = v7;
      --v10;
    }

    while (v10);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v3[34] = v8;

  v12 = v3[34];
  swift_beginAccess();
  v3[35] = v12;

  v13 = v3[34];

  swift_beginAccess();
  v3[36] = v13;

  v14 = MEMORY[0x277D84F90];
  if (v6)
  {
    v19 = MEMORY[0x277D84F90];
    sub_2456C5B38(0, v6, 0);
    v15 = v19;
    v16 = *(v19 + 16);
    do
    {
      v17 = *(v19 + 24);
      if (v16 >= v17 >> 1)
      {
        sub_2456C5B38((v17 > 1), v16 + 1, 1);
      }

      *(v19 + 16) = v16 + 1;
      *(v19 + 8 * v16++ + 32) = v14;
      --v6;
    }

    while (v6);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v3[37] = v15;

  return sub_2456C2F7C();
}

uint64_t sub_2456C0374()
{
  v1 = v0;
  v2 = sub_2456CAF58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EE20D00 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_27EE20D08);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2456CAF38();
  v8 = sub_2456CB1C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_245686000, v7, v8, "FAC Module: AX has been enabled", v9, 2u);
    MEMORY[0x245D6F740](v9, -1, -1);
  }

  result = (*(v3 + 8))(v5, v2);
  *(v1 + 257) = 1;
  return result;
}

void sub_2456C0514()
{
  v1 = v0;
  v2 = sub_2456CAF58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = *(v0 + 160);
  v7 = *(v0 + 144);
  v8 = *(v0 + 168);

  sub_2456CB238();
  sub_2456CB248();
  if ((v6 & 0x8000000000000000) != 0 || v6 >= *(v7 + 16))
  {
  }

  else
  {
    v9 = *(v7 + 8 * v6 + 32);

    if (v9 != 10)
    {
      v10 = *(v1 + 257);
      *(v1 + 258) = v10;
      if (v10 != 1)
      {
LABEL_18:
        sub_2456C32E0(0, MEMORY[0x277D84F90]);
        return;
      }

      v11 = *(v1 + 160);
      v12 = *(v1 + 144);
      v13 = *(v1 + 168);

      sub_2456CB238();
      sub_2456CB248();
      if ((v11 & 0x8000000000000000) != 0 || v11 >= *(v12 + 16))
      {
      }

      else
      {
        v14 = *(v12 + 8 * v11 + 32);

        if (v14 < 0xA)
        {
          v15 = qword_2456CF730[v14];
LABEL_17:
          swift_beginAccess();
          sub_2456C63FC(&v21, v15);
          swift_endAccess();
          goto LABEL_18;
        }
      }

      v15 = 3;
      goto LABEL_17;
    }
  }

  if (qword_27EE20D00 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v2, qword_27EE20D08);
  (*(v3 + 16))(v5, v16, v2);
  v17 = sub_2456CAF38();
  v18 = sub_2456CB1C8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_245686000, v17, v18, "Requested to skip gesture, but no gesture is being monitored currently.", v19, 2u);
    MEMORY[0x245D6F740](v19, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_2456C0810(char a1, const char *a2)
{
  v5 = v2;
  v6 = sub_2456CAF58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(v2 + 160);
  v11 = *(v2 + 144);
  v12 = *(v2 + 168);

  sub_2456CB238();
  sub_2456CB248();
  if ((v10 & 0x8000000000000000) != 0 || v10 >= *(v11 + 16))
  {
  }

  else
  {
    v13 = *(v11 + 8 * v10 + 32);

    if (v13 != 10)
    {
      *(v5 + 256) = a1;
      return sub_2456C2C98();
    }
  }

  if (qword_27EE20D00 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v6, qword_27EE20D08);
  (*(v7 + 16))(v9, v15, v6);
  v16 = sub_2456CAF38();
  v17 = sub_2456CB1C8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_245686000, v16, v17, a2, v18, 2u);
    MEMORY[0x245D6F740](v18, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2456C0A38()
{
  v1 = sub_2456CAF58();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v5 = *(v0 + 160);
  v6 = *(v0 + 144);
  v7 = *(v0 + 168);

  sub_2456CB238();
  sub_2456CB248();
  if ((v5 & 0x8000000000000000) != 0 || v5 >= *(v6 + 16))
  {
  }

  else
  {
    v8 = *(v6 + 8 * v5 + 32);

    if (v8 != 10)
    {
      return sub_2456C2C98();
    }
  }

  if (qword_27EE20D00 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v1, qword_27EE20D08);
  (*(v2 + 16))(v4, v10, v1);
  v11 = sub_2456CAF38();
  v12 = sub_2456CB1C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_245686000, v11, v12, "Requested to resume gesture detection, but no gesture is being monitored currently.", v13, 2u);
    MEMORY[0x245D6F740](v13, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_2456C0C50(char *a1)
{
  v3 = sub_2456CAF58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_faces;
  swift_beginAccess();
  v8 = *&a1[v7];
  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (qword_27EE20D00 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v3, qword_27EE20D08);
    (*(v4 + 16))(v6, v12, v3);
    v13 = a1;
    v14 = sub_2456CAF38();
    v15 = sub_2456CB1D8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      v17 = *&a1[v7];
      if (v17 >> 62)
      {
        v20 = v16;
        v18 = sub_2456CB3F8();
        v16 = v20;
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v16 + 4) = v18;
      v19 = v16;

      _os_log_impl(&dword_245686000, v14, v15, "Found %ld in frame. Invalidating current FAC buffer.", v19, 0xCu);
      MEMORY[0x245D6F740](v19, -1, -1);
    }

    else
    {

      v14 = v13;
    }

    (*(v4 + 8))(v6, v3);
    sub_2456C2C98();
    return 0;
  }

  if (sub_2456CB3F8() != 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v1 + 256) != 2)
  {
    v9 = *&a1[OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_time + 16];
    v10 = *&a1[OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_time + 8];
    *(v1 + 224) = *&a1[OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_time];
    *(v1 + 232) = v10;
    *(v1 + 240) = v9;
    return 1;
  }

  return 0;
}

uint64_t sub_2456C0EF8()
{
  v1 = *(v0 + 120);
  swift_beginAccess();
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 168);

  sub_2456CB238();
  sub_2456CB248();
  if ((v2 & 0x8000000000000000) != 0 || v2 >= *(v3 + 16))
  {

    v7 = 96;
  }

  else
  {
    v5 = *(v3 + 8 * v2 + 32);

    v6 = v5 == 9 || v5 == 4;
    v7 = 96;
    if (v6)
    {
      v7 = 104;
    }
  }

  return *(v1 + v7);
}

uint64_t sub_2456C0FAC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE21390);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2456CE280;
  swift_weakLoadStrong();
  v8 = type metadata accessor for PADFacePoseRequest();
  v9 = swift_allocObject();
  *(v9 + 24) = 0u;
  *(v9 + 40) = 0u;
  *(v9 + 56) = 1;
  swift_weakInit();
  swift_weakAssign();

  *(v7 + 56) = v8;
  *(v7 + 64) = &off_285873C90;
  *(v7 + 32) = v9;
  v10 = *(sub_2456C1558() + 16);

  if (v10 > 1)
  {
    swift_beginAccess();
    v13 = *(v3 + 160);
    v19 = *(v3 + 144);
    v17 = *(v3 + 168);

    sub_2456CB238();
    sub_2456CB248();
    if ((v13 & 0x8000000000000000) != 0 || v13 >= *(v19 + 16))
    {

      goto LABEL_11;
    }

    v13 = *(v19 + 8 * v13 + 32);

    if (v13 > 9 || ((1 << v13) & 0x310) == 0)
    {
      goto LABEL_11;
    }

    v20 = swift_allocObject();
    v20[2] = a2;
    v20[3] = a3;

    v17 = sub_245694864(sub_2456BAABC, v20);

    v7 = sub_2456A3AC8(1, 2, 1, v7);
    v37 = sub_2456AB00C(0, &unk_27EE21500);
    v38 = &off_285873C78;
    *&v36 = v17;
    *(v7 + 16) = 2;
    v18 = v7 + 72;
    goto LABEL_4;
  }

  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;

  v12 = sub_2456B6BB8(sub_2456BAAFC, v11);

  v7 = sub_2456A3AC8(1, 2, 1, v7);
  v13 = &off_285873C78;
  v37 = sub_2456AB00C(0, &unk_27EE213A0);
  v38 = &off_285873C78;
  *&v36 = v12;
  *(v7 + 16) = 2;
  sub_2456B5B1C(&v36, v7 + 72);
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;

  v15 = sub_245694864(sub_2456BAAFC, v14);

  a3 = *(v7 + 16);
  v16 = *(v7 + 24);
  v17 = (a3 + 1);
  if (a3 >= v16 >> 1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v37 = sub_2456AB00C(0, &unk_27EE21500);
    v38 = v13;
    *&v36 = v15;
    *(v7 + 16) = v17;
    v18 = v7 + 40 * a3 + 32;
LABEL_4:
    sub_2456B5B1C(&v36, v18);
LABEL_11:
    v21 = OBJC_IVAR____TtC10CoreIDVPAD10PADSWFrame_faces;
    swift_beginAccess();
    v15 = *(a1 + v21);
    if (v15 >> 62)
    {
      if (!sub_2456CB3F8())
      {
        return v7;
      }
    }

    else if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v7;
    }

    if ((v15 & 0xC000000000000001) != 0)
    {
      break;
    }

    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      v22 = *(v15 + 4);
      goto LABEL_16;
    }

    __break(1u);
LABEL_27:
    v7 = sub_2456A3AC8((v16 > 1), v17, 1, v7);
  }

  v34 = MEMORY[0x245D6E880](0, v15);

  v22 = v34;
LABEL_16:
  v23 = *&v22[OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_bounds];
  v24 = *&v22[OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_bounds + 8];
  v25 = *&v22[OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_bounds + 16];
  v26 = *&v22[OBJC_IVAR____TtC10CoreIDVPAD9PADSWFace_bounds + 24];

  v27 = [objc_opt_self() observationWithRequestRevision:3737841670 boundingBox:{v23, v24, v25, v26}];
  v28 = *(v7 + 16);
  if (v28)
  {
    v29 = v7 + 32;
    do
    {
      sub_24569B370(v29, &v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE214E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE213B0);
      if (swift_dynamicCast())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE214F0);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_2456CED80;
        *(v30 + 32) = v27;
        sub_2456AB00C(0, &qword_27EE21378);
        v31 = v27;
        v32 = sub_2456CB0C8();

        [v35 setInputFaceObservations_];
        swift_unknownObjectRelease();
      }

      v29 += 40;
      --v28;
    }

    while (v28);
  }

  return v7;
}

uint64_t sub_2456C1558()
{
  swift_beginAccess();
  v1 = v0[20];
  v2 = v0[21];
  swift_beginAccess();
  v3 = v0[37];
  v4 = v2;

  sub_2456CB238();
  sub_2456CB248();
  if ((v1 & 0x8000000000000000) != 0 || v1 >= *(v3 + 16))
  {

    return MEMORY[0x277D84F90];
  }

  else
  {
    v5 = *(v3 + 8 * v1 + 32);

    return v5;
  }
}

uint64_t sub_2456C1614(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  result = (*(v2 + 8))(v1, v2);
  if (result)
  {
    if (*(result + 16) != 1)
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_2456C167C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 104);
  *(v4 + 96) = 0;
  if (v9)
  {

    v9(v10);
    sub_2456AB080(v9);
    v11 = *(v4 + 104);
  }

  else
  {
    v11 = 0;
  }

  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  sub_2456AB080(v11);
  result = sub_2456BFE24(a1, a2, a3, a4, type metadata accessor for PADFacePoseRequest, &unk_27EE214D0);
  if (result)
  {
    if (*(result + 16))
    {
      sub_2456A530C(result + 32, &v20);

      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
        return result;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21380);
      v13 = swift_allocObject();
      v14 = MEMORY[0x277D83A90];
      *(v13 + 16) = xmmword_2456CF440;
      v15 = MEMORY[0x277D83B08];
      *(v13 + 56) = v14;
      *(v13 + 64) = v15;
      *(v13 + 32) = v17;
      *(v13 + 96) = v14;
      *(v13 + 104) = v15;
      *(v13 + 72) = v19;
      *(v13 + 136) = v14;
      *(v13 + 144) = v15;
      *(v13 + 112) = v18;
      v16 = sub_2456CB018();
      v20 = 0x65736F5065636146;
      v21 = 0xEA0000000000203ALL;
      MEMORY[0x245D6E590](v16);

      sub_245693BAC(v20, v21);
    }
  }

  return result;
}

void sub_2456C1868(uint64_t a1)
{
  v3 = sub_2456CAF58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 256))
  {
    if (*(v1 + 256) == 1)
    {

      sub_2456C1EF0(a1);
    }

    else
    {
      if (qword_27EE20D00 != -1)
      {
        swift_once();
      }

      v7 = __swift_project_value_buffer(v3, qword_27EE20D08);
      (*(v4 + 16))(v6, v7, v3);
      v8 = sub_2456CAF38();
      v9 = sub_2456CB1C8();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_245686000, v8, v9, "Ignoring FAC composite set: classifier is paused", v10, 2u);
        MEMORY[0x245D6F740](v10, -1, -1);
      }

      (*(v4 + 8))(v6, v3);
    }
  }

  else
  {

    sub_2456C1A64(a1);
  }
}

void sub_2456C1A64(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2456CAF58();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  swift_beginAccess();
  v9 = *(v1 + 160);
  v10 = *(v1 + 144);
  v11 = *(v1 + 168);

  sub_2456CB238();
  sub_2456CB248();
  if ((v9 & 0x8000000000000000) != 0 || v9 >= *(v10 + 16))
  {

    return;
  }

  v12 = *(v10 + 8 * v9 + 32);

  v13 = sub_2456BC72C(a1, v12);
  if (*(a1 + 16) >= *(v14 + 16))
  {
    v21 = v15;
    v22 = v13;
    sub_2456C2304(v13, v14, 0, v16, a1);
    if (v12 <= 9 && ((1 << v12) & 0x330) != 0)
    {
      v23 = *(v2 + 256);

      v24 = v23 == 2;
      v25 = 2;
    }

    else
    {

      if ((v22 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        if (v21)
        {
          v26 = 4;
        }

        else
        {
          v26 = 2;
        }

        goto LABEL_17;
      }

      v24 = *(v2 + 256) == 2;
      v25 = 3;
    }

    if (v24)
    {
      v26 = v25;
    }

    else
    {
      v26 = v22;
    }

LABEL_17:
    sub_2456C32E0(v26, a1);
    return;
  }

  if (qword_27EE20D00 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v4, qword_27EE20D08);
  (*(v5 + 16))(v8, v17, v4);
  v18 = sub_2456CAF38();
  v19 = sub_2456CB1D8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_245686000, v18, v19, "Received more faceprints than FAC timestamps. Each frame should contain no more than one faceprint.", v20, 2u);
    MEMORY[0x245D6F740](v20, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
}

uint64_t sub_2456C1EF0(uint64_t a1)
{
  v3 = sub_2456CAF58();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  swift_beginAccess();
  v8 = *(v1 + 160);
  v9 = *(v1 + 144);
  v10 = *(v1 + 168);

  sub_2456CB238();
  sub_2456CB248();
  if ((v8 & 0x8000000000000000) != 0 || v8 >= *(v9 + 16))
  {

    v12 = 10;
  }

  else
  {
    v11 = *(v9 + 8 * v8 + 32);

    v12 = v11;
  }

  v13 = sub_2456BCFE8(a1, v12);
  if (*(a1 + 16) >= *(v14 + 16))
  {
    sub_2456C2304(v13, v14, 0, v15, a1);
  }

  else
  {

    if (qword_27EE20D00 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v3, qword_27EE20D08);
    (*(v4 + 16))(v7, v16, v3);
    v17 = sub_2456CAF38();
    v18 = sub_2456CB1D8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_245686000, v17, v18, "Received more faceprints than FAC timestamps. Each frame should contain no more than one faceprint.", v19, 2u);
      MEMORY[0x245D6F740](v19, -1, -1);
    }

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_2456C2304(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v92 = a4;
  v8 = sub_2456CAF58();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v90 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v87 - v13;
  v15 = *(v5 + 260);
  v95 = a5;
  v96 = v5;
  v91 = v12;
  v88 = v9;
  if ((v15 & 1) == 0 && (*(v5 + 261) & 1) == 0 && !*(a2 + 2))
  {
    if (qword_27EE20D00 == -1)
    {
      goto LABEL_44;
    }

    goto LABEL_71;
  }

  if (*(a2 + 2))
  {
    *(v5 + 261) = 1;
  }

  else
  {
    a2 = MEMORY[0x277D84F90];
  }

LABEL_7:
  v94 = a2;
  v16 = *(a2 + 2);
  v17 = v96;
  if (v16)
  {
    v18 = (v94 + 40);
    v19 = MEMORY[0x277CC08F0];
    do
    {
      v26 = *v18;
      if ((*v18 & 0x8000000000000000) != 0)
      {
        v21 = v19;
      }

      else
      {
        v20 = v26 >= *(a5 + 16);
        v21 = (a5 + 32 + 32 * v26);
        if (v20)
        {
          v21 = v19;
        }
      }

      v18 += 2;
      v23 = v21[1];
      v22 = v21[2];
      v24 = *v21;

      sub_2456C4BD0(v25, v24, v23, v22);

      --v16;
    }

    while (v16);
  }

  v28 = *(v92 + 16);
  if (v28)
  {
    v9 = v92 + 32;
    swift_beginAccess();
    result = swift_beginAccess();
    v94 = (a5 + 32);
    v29 = v88++;
    v89 = (v29 + 2);
    *&v30 = 136315138;
    v87 = v30;
    do
    {
      v32 = *v9;
      v9 += 8;
      v31 = v32;
      if ((v32 & 0x8000000000000000) == 0 && v31 < *(a5 + 16))
      {
        v33 = &v94[32 * v31];
        v34 = *v33;
        v35 = *(v33 + 2);
        v36 = *(v33 + 3);
        v37 = *(v33 + 2);
        if (sub_2456CAF98())
        {
          v39 = v17[20];
          v38 = v17[21];
          v40 = v17[35];
          v41 = v38;

          sub_2456CB238();
          sub_2456CB248();
          if ((v39 & 0x8000000000000000) != 0 || v39 >= *(v40 + 16))
          {

            v42 = MEMORY[0x277D84F90];
          }

          else
          {
            v42 = *(v40 + 8 * v39 + 32);
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v17 = v96;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v42 = sub_2456A329C(0, *(v42 + 2) + 1, 1, v42);
          }

          v55 = *(v42 + 2);
          v54 = *(v42 + 3);
          if (v55 >= v54 >> 1)
          {
            v42 = sub_2456A329C((v54 > 1), v55 + 1, 1, v42);
          }

          *(v42 + 2) = v55 + 1;
          v56 = &v42[24 * v55];
          *(v56 + 4) = v34;
          *(v56 + 10) = v35;
          *(v56 + 11) = v36;
          *(v56 + 6) = v37;
          v14 = v17[20];
          v57 = v17[21];
          swift_beginAccess();
          v58 = v57;
          sub_2456CB238();
          sub_2456CB248();
          if ((v14 & 0x8000000000000000) != 0)
          {

            a5 = v95;
          }

          else
          {
            v59 = v17;
            v60 = v17[35];
            a5 = v95;
            if (v14 >= v60[2])
            {

              v17 = v59;
            }

            else
            {
              v61 = swift_isUniquelyReferenced_nonNull_native();
              v59[35] = v60;
              if ((v61 & 1) == 0)
              {
                v60 = sub_2456C7DF0(v60);
                *(v96 + 280) = v60;
              }

              if (v14 >= v60[2])
              {
                while (1)
                {
                  __break(1u);
LABEL_71:
                  v86 = v12;
                  swift_once();
                  v12 = v86;
LABEL_44:
                  v63 = v12;
                  v64 = __swift_project_value_buffer(v12, qword_27EE20D08);
                  (*(v9 + 16))(v14, v64, v63);
                  v65 = sub_2456CAF38();
                  v66 = sub_2456CB1C8();
                  if (os_log_type_enabled(v65, v66))
                  {
                    v67 = swift_slowAlloc();
                    *v67 = 0;
                    _os_log_impl(&dword_245686000, v65, v66, "ID matching frames not selected for gesture. Selecting 2 random frames to use as default.", v67, 2u);
                    MEMORY[0x245D6F740](v67, -1, -1);
                  }

                  result = (*(v9 + 8))(v14, v63);
                  v9 = *(a5 + 16);
                  if (!v9)
                  {
                    break;
                  }

                  v94 = (a5 + 32);
                  v93 = sub_2456AB00C(0, &unk_27EE213A0);
                  v68 = 0;
                  a2 = MEMORY[0x277D84F90];
                  v69 = -1;
                  v70 = -v9 % v9;
                  while (1)
                  {
                    v71 = v68;
                    v14 = v69;
                    do
                    {
                      v97[0] = 0;
                      v12 = MEMORY[0x245D6F750](v97, 8);
                      v69 = (v97[0] * v9) >> 64;
                      if (v9 > v97[0] * v9 && v70 > v97[0] * v9)
                      {
                        do
                        {
                          v97[0] = 0;
                          v12 = MEMORY[0x245D6F750](v97, 8);
                        }

                        while (v70 > v97[0] * v9);
                        v69 = (v97[0] * v9) >> 64;
                      }
                    }

                    while (v14 == v69);
                    if (v69 >= v9)
                    {
                      break;
                    }

                    v72 = *&v94[32 * v69 + 24];
                    v102 = v93;

                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21470);
                    v73 = sub_2456CB038();
                    if (*(v72 + 16))
                    {
                      v75 = sub_2456C85D4(v73, v74);
                      v77 = v76;

                      if ((v77 & 1) != 0 && (v78 = *(*(v72 + 56) + 8 * v75), , , *(v78 + 16)))
                      {
                        sub_2456A530C(v78 + 32, v97);

                        sub_2456AB00C(0, &qword_27EE21378);
                        v79 = swift_dynamicCast();
                        a5 = v95;
                        if (v79)
                        {
                          v80 = v102;
                          sub_2456B7150(v102);
                          if (v81)
                          {
                            v82 = v81;
                            *(v96 + 260) = 1;
                            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                            {
                              a2 = sub_2456A3D1C(0, *(a2 + 2) + 1, 1, a2);
                            }

                            v84 = *(a2 + 2);
                            v83 = *(a2 + 3);
                            if (v84 >= v83 >> 1)
                            {
                              a2 = sub_2456A3D1C((v83 > 1), v84 + 1, 1, a2);
                            }

                            *(a2 + 2) = v84 + 1;
                            v85 = &a2[16 * v84];
                            *(v85 + 4) = v82;
                            *(v85 + 5) = v69;
                            a5 = v95;
                          }

                          else
                          {
                          }
                        }
                      }

                      else
                      {

                        a5 = v95;
                      }
                    }

                    else
                    {
                    }

                    v68 = 1;
                    if (v71)
                    {
                      goto LABEL_7;
                    }
                  }

                  __break(1u);
                }

                __break(1u);
                return result;
              }

              v60[v14 + 4] = v42;

              v62 = v96;
              *(v96 + 280) = v60;
              v17 = v62;
            }
          }

          result = swift_endAccess();
        }

        else
        {
          v92 = v36;
          v93 = v35;
          if (qword_27EE20D00 != -1)
          {
            swift_once();
          }

          v43 = v91;
          v44 = __swift_project_value_buffer(v91, qword_27EE20D08);
          v45 = v90;
          (*v89)(v90, v44, v43);
          v46 = sub_2456CAF38();
          v47 = sub_2456CB1C8();
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            v100 = v37;
            v101 = v49;
            *v48 = v87;
            v97[4] = v34;
            v98 = v93;
            v99 = v92;
            type metadata accessor for CMTime(0);
            v50 = sub_2456CB038();
            v52 = sub_2456A3F34(v50, v51, &v101);

            *(v48 + 4) = v52;
            _os_log_impl(&dword_245686000, v46, v47, "Invalid reference frame timestamp received: %s", v48, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v49);
            MEMORY[0x245D6F740](v49, -1, -1);
            MEMORY[0x245D6F740](v48, -1, -1);
          }

          result = (*v88)(v45, v43);
          a5 = v95;
          v17 = v96;
        }
      }

      --v28;
    }

    while (v28);
  }

  return result;
}

uint64_t sub_2456C2BDC()
{
  swift_beginAccess();
  v1 = v0[20];
  v2 = v0[21];
  swift_beginAccess();
  v3 = v0[35];
  v4 = v2;

  sub_2456CB238();
  sub_2456CB248();
  if ((v1 & 0x8000000000000000) != 0 || v1 >= *(v3 + 16))
  {

    return MEMORY[0x277D84F90];
  }

  else
  {
    v5 = *(v3 + 8 * v1 + 32);

    return v5;
  }
}

uint64_t sub_2456C2C98()
{
  v1 = v0;
  v2 = sub_2456CAF58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27EE20D00 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_27EE20D08);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2456CAF38();
  v8 = sub_2456CB1C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_245686000, v7, v8, "Invaliding current FAC buffer", v9, 2u);
    MEMORY[0x245D6F740](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_2456C2EC0();

  swift_beginAccess();
  v11 = *(v1 + 160);
  v10 = *(v1 + 168);
  swift_beginAccess();
  v12 = v10;
  sub_2456CB238();
  sub_2456CB248();
  sub_2456BFBFC(MEMORY[0x277D84F90], v11, sub_2456C7DF0);
  swift_endAccess();

  return sub_2456B53B8();
}

uint64_t sub_2456C2EC0()
{
  swift_beginAccess();
  v1 = v0[20];
  v2 = v0[21];
  swift_beginAccess();
  v3 = v0[34];
  v4 = v2;

  sub_2456CB238();
  sub_2456CB248();
  if ((v1 & 0x8000000000000000) != 0 || v1 >= *(v3 + 16))
  {

    return MEMORY[0x277D84F90];
  }

  else
  {
    v5 = *(v3 + 8 * v1 + 32);

    return v5;
  }
}

uint64_t sub_2456C2F7C()
{
  v1 = v0;
  v2 = sub_2456CAF58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 258) = 0;
  swift_beginAccess();
  v6 = *(v0 + 160);
  v7 = *(v0 + 144);
  v8 = *(v0 + 168);

  sub_2456CB238();
  sub_2456CB248();
  if ((v6 & 0x8000000000000000) != 0 || v6 >= *(v7 + 16))
  {

    return sub_2456C51BC();
  }

  v9 = *(v7 + 8 * v6 + 32);

  swift_beginAccess();
  v10 = *(v1 + 176);
  v11 = *(v1 + 152);
  v12 = *(v1 + 184);
  sub_2456CB238();
  sub_2456CB248();

  if (v10 >= v11)
  {
    return sub_2456C51BC();
  }

  if (qword_27EE20D00 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v2, qword_27EE20D08);
  (*(v3 + 16))(v5, v13, v2);
  v14 = sub_2456CAF38();
  v15 = sub_2456CB1C8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31[0] = v17;
    *v16 = 136315138;
    v18 = PADSWGesture.description.getter(v9);
    v27 = v9;
    v20 = sub_2456A3F34(v18, v19, v31);
    v9 = v27;

    *(v16 + 4) = v20;
    _os_log_impl(&dword_245686000, v14, v15, "Will start monitoring gesture %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x245D6F740](v17, -1, -1);
    MEMORY[0x245D6F740](v16, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = result;
    v23 = OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_delegate;
    swift_beginAccess();
    sub_2456B89A8(v22 + v23, v31);
    if (v31[3])
    {
      sub_24569B370(v31, v28);
      sub_2456B8A18(v31);
      v24 = v29;
      v25 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      (*(v25 + 8))(v9, v24, v25);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v28);
    }

    else
    {
      swift_unknownObjectRelease();
      return sub_2456B8A18(v31);
    }
  }

  return result;
}

void sub_2456C32E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v190 = a2;
  v5 = sub_2456CAF58();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v186 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v186 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v186 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v186 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v186 - v19;
  swift_beginAccess();
  sub_2456CB238();
  v21 = *(v2 + 192);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
  }

  else
  {
    *(v2 + 192) = v23;
    sub_2456CB248();
    swift_endAccess();
    if ((a1 - 2) >= 3)
    {
      *&v193 = a1;
      v188 = v15;
      v187 = v12;
      if (qword_27EE20D00 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_136;
    }

    swift_beginAccess();
    sub_2456CB238();
    v24 = *(v2 + 192);
    v22 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v22)
    {
      *(v2 + 192) = v25;
      sub_2456CB248();
      swift_endAccess();
      if (a1 != 4)
      {
        swift_beginAccess();
        sub_2456CB238();
        *(v2 + 208) = 0;
        goto LABEL_14;
      }

      swift_beginAccess();
      sub_2456CB238();
      v26 = *(v2 + 208);
      v22 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (!v22)
      {
        *(v2 + 208) = v27;
LABEL_14:
        sub_2456CB248();
        swift_endAccess();
        swift_beginAccess();
        v41 = *(v2 + 208);
        v42 = *(v2 + 216);
        sub_2456CB238();
        sub_2456CB248();

        if (v41 >= 10)
        {
          swift_beginAccess();
          sub_2456CB238();
          *(v3 + 208) = 0;
          sub_2456CB248();
          swift_endAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v44 = Strong;
            swift_beginAccess();
            v45 = *(v3 + 160);
            v46 = *(v3 + 144);
            v47 = *(v3 + 168);

            sub_2456CB238();
            sub_2456CB248();
            if ((v45 & 0x8000000000000000) != 0 || v45 >= *(v46 + 16))
            {

              v48 = 10;
            }

            else
            {
              v48 = *(v46 + 8 * v45 + 32);
            }

            v183 = OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_delegate;
            swift_beginAccess();
            sub_2456B89A8(v44 + v183, &v201);
            if (v202)
            {
              sub_24569B370(&v201, v198);
              sub_2456B8A18(&v201);
              v184 = v199;
              v185 = v200;
              __swift_project_boxed_opaque_existential_1(v198, v199);
              (*(v185 + 16))(v48, v184, v185);
              swift_unknownObjectRelease();
              __swift_destroy_boxed_opaque_existential_0(v198);
            }

            else
            {
              swift_unknownObjectRelease();
              sub_2456B8A18(&v201);
            }
          }
        }

        return;
      }

      goto LABEL_139;
    }
  }

  __break(1u);
LABEL_136:
  swift_once();
LABEL_8:
  v28 = __swift_project_value_buffer(v5, qword_27EE20D08);
  v29 = *(v6 + 16);
  v197 = v28;
  v196 = v6 + 16;
  v195 = v29;
  (v29)(v20);

  v30 = v6;
  v31 = sub_2456CAF38();
  v32 = sub_2456CB1C8();

  v33 = os_log_type_enabled(v31, v32);
  v191 = v5;
  v192 = v9;
  v189 = v30;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v201.value = v35;
    *v34 = 136315394;
    swift_beginAccess();
    v36 = *(v3 + 160);
    v37 = *(v3 + 144);
    v38 = *(v3 + 168);

    sub_2456CB238();
    sub_2456CB248();
    if ((v36 & 0x8000000000000000) != 0 || v36 >= *(v37 + 16))
    {

      v39 = 10;
    }

    else
    {
      v39 = *(v37 + 8 * v36 + 32);
    }

    v49 = PADSWGesture.description.getter(v39);
    v51 = sub_2456A3F34(v49, v50, &v201.value);

    *(v34 + 4) = v51;
    *(v34 + 12) = 2080;
    if (v193)
    {
      v5 = v191;
      if (v193 != 1)
      {
LABEL_140:
        v198[0] = v193;
        sub_2456CB548();
        __break(1u);
        return;
      }

      v52 = 0xE800000000000000;
      v53 = 0x6465746365746564;
    }

    else
    {
      v52 = 0xE700000000000000;
      v53 = 0x64657070696B73;
      v5 = v191;
    }

    v54 = sub_2456A3F34(v53, v52, &v201.value);

    *(v34 + 14) = v54;
    _os_log_impl(&dword_245686000, v31, v32, "Did finish monitoring gesture %s with assessment %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D6F740](v35, -1, -1);
    MEMORY[0x245D6F740](v34, -1, -1);

    v40 = v189;
    v194 = *(v189 + 8);
    v194(v20, v5);
    v9 = v192;
  }

  else
  {

    v194 = *(v30 + 8);
    v194(v20, v5);
    v40 = v30;
  }

  swift_beginAccess();
  v55 = *(v3 + 264);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 264) = v55;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v55 = sub_2456A3288(0, *(v55 + 2) + 1, 1, v55);
    *(v3 + 264) = v55;
  }

  v58 = *(v55 + 2);
  v57 = *(v55 + 3);
  if (v58 >= v57 >> 1)
  {
    v55 = sub_2456A3288((v57 > 1), v58 + 1, 1, v55);
  }

  *(v55 + 2) = v58 + 1;
  v59 = v193;
  *&v55[8 * v58 + 32] = v193;
  *(v3 + 264) = v55;
  swift_endAccess();
  v60 = v59 == 1;
  v61 = v190;
  if (v60)
  {
    swift_beginAccess();
    sub_2456CB238();
    v62 = *(v3 + 176);
    v22 = __OFADD__(v62, 1);
    v63 = v62 + 1;
    if (v22)
    {
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    *(v3 + 176) = v63;
    sub_2456CB248();
    swift_endAccess();
  }

  v64 = *(v61 + 16);
  value = MEMORY[0x277D84F90];
  if (v64)
  {
    v201.value = MEMORY[0x277D84F90];
    sub_2456C5BB8(0, v64, 0);
    value = v201.value;
    v66 = *(v201.value + 16);
    v67 = 24 * v66 + 48;
    v68 = (v61 + 48);
    do
    {
      v69 = *(v68 - 2);
      v70 = *(v68 - 1);
      v71 = *v68;
      v201.value = value;
      v72 = value[3];
      v73 = v66 + 1;
      if (v66 >= v72 >> 1)
      {
        sub_2456C5BB8((v72 > 1), v66 + 1, 1);
        value = v201.value;
      }

      v68 += 4;
      value[2] = v73;
      v74 = (value + v67);
      *(v74 - 2) = v69;
      *(v74 - 1) = v70;
      *v74 = v71;
      v67 += 24;
      v66 = v73;
      --v64;
    }

    while (v64);
    v5 = v191;
    v9 = v192;
    v40 = v189;
  }

  if (v193 != 1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE21520);
    value = swift_allocObject();
    *(value + 1) = xmmword_2456CE280;
    v75 = *(v3 + 240);
    value[4] = *(v3 + 224);
    value[5] = *(v3 + 232);
    value[6] = v75;
  }

  swift_beginAccess();
  v77 = *(v3 + 160);
  v76 = *(v3 + 168);
  swift_beginAccess();
  v78 = v76;
  sub_2456CB238();
  sub_2456CB248();
  sub_2456BFBFC(value, v77, sub_2456C7DF0);
  swift_endAccess();

  v20 = MEMORY[0x277D84F90];
  v79 = MEMORY[0x277D84F90];
  if (v193 == 1)
  {
    v79 = sub_2456C2BDC();
  }

  v81 = *(v3 + 160);
  v80 = *(v3 + 168);
  swift_beginAccess();
  v82 = v80;
  sub_2456CB238();
  sub_2456CB248();
  sub_2456BFBFC(v79, v81, sub_2456C7DF0);
  swift_endAccess();

  v195(v18, v197, v5);

  v83 = sub_2456CAF38();
  v84 = sub_2456CB1C8();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v201.value = v86;
    *v85 = 136315138;
    v87 = sub_2456C2EC0();
    type metadata accessor for CMTime(0);
    v89 = MEMORY[0x245D6E610](v87, v88);
    v91 = v90;

    v92 = sub_2456A3F34(v89, v91, &v201.value);
    v9 = v192;

    *(v85 + 4) = v92;
    _os_log_impl(&dword_245686000, v83, v84, "Current Gesture Timestamps FAC: %s", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v86);
    v93 = v86;
    v40 = v189;
    MEMORY[0x245D6F740](v93, -1, -1);
    v94 = v85;
    v20 = MEMORY[0x277D84F90];
    MEMORY[0x245D6F740](v94, -1, -1);
  }

  v194(v18, v5);
  v95 = *(sub_2456C49E8() + 16);

  if (v95 <= 1)
  {
    v195(v188, v197, v5);

    v96 = sub_2456CAF38();
    v97 = sub_2456CB1D8();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 134217984;
      v99 = *(sub_2456C1558() + 16);

      *(v98 + 4) = v99;

      _os_log_impl(&dword_245686000, v96, v97, "Obtained less faceprints than expected (%ld)", v98, 0xCu);
      MEMORY[0x245D6F740](v98, -1, -1);
    }

    else
    {
    }

    v194(v188, v5);
  }

  v100 = *(v3 + 160);
  v101 = *(v3 + 144);
  v102 = *(v3 + 168);

  sub_2456CB238();
  sub_2456CB248();
  if ((v100 & 0x8000000000000000) != 0 || v100 >= *(v101 + 16))
  {

    v103 = 10;
  }

  else
  {
    v103 = *(v101 + 8 * v100 + 32);
  }

  v104 = *(v3 + 192);
  v105 = *(v3 + 200);
  sub_2456CB238();
  sub_2456CB248();

  sub_2456BF8D0(v103, v193, v104, *(v3 + 258));
  sub_2456C2EC0();

  sub_2456C1558();

  sub_2456C49E8();

  v106 = swift_unknownObjectWeakLoadStrong();
  if (v106)
  {
    v107 = v106;
    v108 = *(v3 + 160);
    v109 = *(v3 + 144);
    v110 = *(v3 + 168);

    sub_2456CB238();
    sub_2456CB248();
    if ((v108 & 0x8000000000000000) != 0 || v108 >= *(v109 + 16))
    {

      v111 = 10;
    }

    else
    {
      v111 = *(v109 + 8 * v108 + 32);
    }

    v112 = OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_delegate;
    swift_beginAccess();
    sub_2456B89A8(v107 + v112, &v201);
    if (v202)
    {
      sub_24569B370(&v201, v198);
      sub_2456B8A18(&v201);
      v113 = v199;
      v114 = v200;
      __swift_project_boxed_opaque_existential_1(v198, v199);
      v115 = *(v114 + 24);
      v116 = v114;
      v20 = MEMORY[0x277D84F90];
      v115(v111, v113, v116);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v198);
    }

    else
    {
      swift_unknownObjectRelease();
      sub_2456B8A18(&v201);
    }
  }

  swift_beginAccess();
  sub_2456CB238();
  v117 = *(v3 + 160);
  v22 = __OFADD__(v117, 1);
  v118 = v117 + 1;
  if (v22)
  {
    __break(1u);
    goto LABEL_138;
  }

  *(v3 + 160) = v118;
  sub_2456CB248();
  swift_endAccess();
  swift_beginAccess();
  sub_2456CB238();
  *(v3 + 192) = 0;
  sub_2456CB248();
  swift_endAccess();
  sub_2456C07E0();
  if (!sub_2456C4AA4())
  {
    v119 = *(v3 + 160);
    v120 = *(*(v3 + 144) + 16);
    v121 = *(v3 + 168);
    sub_2456CB238();
    sub_2456CB248();

    if (v119 < v120)
    {
      v18 = (v40 + 8);
      *&v122 = 136315138;
      v193 = v122;
      v190 = xmmword_2456CE280;
      do
      {
        v123 = *(v3 + 160);
        v124 = *(v3 + 168);
        sub_2456CB238();
        sub_2456CB248();

        if (!sub_2456C501C(v123))
        {
          break;
        }

        v125 = *(v3 + 160);
        v126 = *(v3 + 168);
        sub_2456CB238();
        sub_2456CB248();

        if ((v125 & 0x8000000000000000) == 0 && (v127 = *(v3 + 144), v125 < *(v127 + 16)) && *(v127 + 8 * v125 + 32) == 4 && *(v3 + 257) == 1 && !_AXSAttentionAwarenessFeaturesEnabled())
        {
          v161 = v187;
          v195(v187, v197, v5);

          v162 = sub_2456CAF38();
          v163 = sub_2456CB1D8();

          if (os_log_type_enabled(v162, v163))
          {
            v164 = swift_slowAlloc();
            v165 = swift_slowAlloc();
            v201.value = v165;
            *v164 = v193;
            v166 = *(v3 + 160);
            v167 = *(v3 + 144);
            v168 = *(v3 + 168);

            sub_2456CB238();
            sub_2456CB248();
            if ((v166 & 0x8000000000000000) != 0 || v166 >= *(v167 + 16))
            {

              v169 = 10;
            }

            else
            {
              v169 = *(v167 + 8 * v166 + 32);
            }

            v170 = PADSWGesture.description.getter(v169);
            v172 = sub_2456A3F34(v170, v171, &v201.value);

            *(v164 + 4) = v172;
            _os_log_impl(&dword_245686000, v162, v163, "Skipping gesture %s because attention awareness features are disabled.", v164, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v165);
            MEMORY[0x245D6F740](v165, -1, -1);
            MEMORY[0x245D6F740](v164, -1, -1);

            v5 = v191;
            v194(v187, v191);
            v9 = v192;
            v20 = MEMORY[0x277D84F90];
          }

          else
          {

            v194(v161, v5);
          }

          CMTimeMake(&v201, 1, 1000000000);
          v173 = v201.value;
          epoch = v201.epoch;
          v175 = *&v201.timescale;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE21520);
          v176 = swift_allocObject();
          *(v176 + 16) = v190;
          *(v176 + 32) = v173;
          *(v176 + 40) = v175;
          *(v176 + 48) = epoch;
          v178 = *(v3 + 160);
          v177 = *(v3 + 168);
          swift_beginAccess();
          v179 = v177;
          sub_2456CB238();
          sub_2456CB248();
          sub_2456BFBFC(v176, v178, sub_2456C7DF0);
          swift_endAccess();

          swift_beginAccess();
          v143 = *(v3 + 264);
          v180 = swift_isUniquelyReferenced_nonNull_native();
          *(v3 + 264) = v143;
          if ((v180 & 1) == 0)
          {
            v143 = sub_2456A3288(0, *(v143 + 2) + 1, 1, v143);
            *(v3 + 264) = v143;
          }

          v182 = *(v143 + 2);
          v181 = *(v143 + 3);
          if (v182 >= v181 >> 1)
          {
            v143 = sub_2456A3288((v181 > 1), v182 + 1, 1, v143);
          }

          *(v143 + 2) = v182 + 1;
          *&v143[8 * v182 + 32] = 3;
        }

        else
        {
          v195(v9, v197, v5);

          v128 = sub_2456CAF38();
          v129 = sub_2456CB1C8();

          if (os_log_type_enabled(v128, v129))
          {
            v130 = swift_slowAlloc();
            v131 = swift_slowAlloc();
            v201.value = v131;
            *v130 = v193;
            v132 = *(v3 + 160);
            v133 = *(v3 + 144);
            v134 = *(v3 + 168);

            sub_2456CB238();
            sub_2456CB248();
            if ((v132 & 0x8000000000000000) != 0 || v132 >= *(v133 + 16))
            {

              v136 = 10;
            }

            else
            {
              v135 = *(v133 + 8 * v132 + 32);

              v136 = v135;
            }

            v137 = PADSWGesture.description.getter(v136);
            v139 = sub_2456A3F34(v137, v138, &v201.value);

            *(v130 + 4) = v139;
            _os_log_impl(&dword_245686000, v128, v129, "Skipping gesture %s because accessibility option is enabled.", v130, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v131);
            MEMORY[0x245D6F740](v131, -1, -1);
            MEMORY[0x245D6F740](v130, -1, -1);

            v9 = v192;
            v5 = v191;
            v194(v192, v191);
            v20 = MEMORY[0x277D84F90];
          }

          else
          {

            v194(v9, v5);
          }

          v6 = *(v3 + 160);
          v140 = *(v3 + 168);
          swift_beginAccess();
          v141 = v140;
          sub_2456CB238();
          sub_2456CB248();
          if ((v6 & 0x8000000000000000) == 0)
          {
            v142 = *(v3 + 272);
            if (v6 < v142[2])
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v142 = sub_2456C7DF0(v142);
              }

              if (v6 >= v142[2])
              {
                goto LABEL_134;
              }

              v142[v6 + 4] = v20;

              *(v3 + 272) = v142;
            }
          }

          swift_endAccess();
          swift_beginAccess();
          v143 = *(v3 + 264);
          v144 = swift_isUniquelyReferenced_nonNull_native();
          *(v3 + 264) = v143;
          if ((v144 & 1) == 0)
          {
            v143 = sub_2456A3288(0, *(v143 + 2) + 1, 1, v143);
            *(v3 + 264) = v143;
          }

          v146 = *(v143 + 2);
          v145 = *(v143 + 3);
          if (v146 >= v145 >> 1)
          {
            v143 = sub_2456A3288((v145 > 1), v146 + 1, 1, v143);
          }

          *(v143 + 2) = v146 + 1;
          *&v143[8 * v146 + 32] = 0;
        }

        *(v3 + 264) = v143;
        swift_endAccess();
        v6 = *(v3 + 160);
        v147 = *(v3 + 168);
        swift_beginAccess();
        v148 = v147;
        sub_2456CB238();
        sub_2456CB248();
        if ((v6 & 0x8000000000000000) == 0)
        {
          v149 = *(v3 + 296);
          if (v6 < v149[2])
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v149 = sub_2456C7E04(v149);
            }

            if (v6 >= v149[2])
            {
              goto LABEL_131;
            }

            v149[v6 + 4] = v20;

            *(v3 + 296) = v149;
          }
        }

        swift_endAccess();
        v6 = *(v3 + 160);
        v150 = *(v3 + 168);
        swift_beginAccess();
        v151 = v150;
        sub_2456CB238();
        sub_2456CB248();
        if ((v6 & 0x8000000000000000) == 0)
        {
          v152 = *(v3 + 288);
          if (v6 < v152[2])
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v152 = sub_2456C7DF0(v152);
            }

            if (v6 >= v152[2])
            {
              goto LABEL_132;
            }

            v152[v6 + 4] = v20;

            *(v3 + 288) = v152;
          }
        }

        swift_endAccess();
        v6 = *(v3 + 160);
        v153 = *(v3 + 168);
        swift_beginAccess();
        v154 = v153;
        sub_2456CB238();
        sub_2456CB248();
        if ((v6 & 0x8000000000000000) == 0)
        {
          v155 = *(v3 + 280);
          if (v6 < v155[2])
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v155 = sub_2456C7DF0(v155);
            }

            if (v6 >= v155[2])
            {
              goto LABEL_133;
            }

            v155[v6 + 4] = v20;

            *(v3 + 280) = v155;
          }
        }

        swift_endAccess();
        swift_beginAccess();
        sub_2456CB238();
        v156 = *(v3 + 160);
        v22 = __OFADD__(v156, 1);
        v157 = v156 + 1;
        if (v22)
        {
          __break(1u);
          goto LABEL_130;
        }

        *(v3 + 160) = v157;
        sub_2456CB248();
        swift_endAccess();
        v158 = *(v3 + 160);
        v159 = *(*(v3 + 144) + 16);
        v160 = *(v3 + 168);
        sub_2456CB238();
        sub_2456CB248();
      }

      while (v158 < v159);
    }
  }

  sub_2456C2F7C();
}

uint64_t sub_2456C49E8()
{
  swift_beginAccess();
  v1 = v0[20];
  v2 = v0[21];
  swift_beginAccess();
  v3 = v0[36];
  v4 = v2;

  sub_2456CB238();
  sub_2456CB248();
  if ((v1 & 0x8000000000000000) != 0 || v1 >= *(v3 + 16))
  {

    return MEMORY[0x277D84F90];
  }

  else
  {
    v5 = *(v3 + 8 * v1 + 32);

    return v5;
  }
}

BOOL sub_2456C4AA4()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 264);
  v3 = *(v2 + 16);
  if (v3)
  {

    v4 = MEMORY[0x277D84F90];
    v5 = 32;
    do
    {
      if (*(v2 + v5) == 1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2456C5B08(0, *(v4 + 16) + 1, 1);
        }

        v7 = *(v4 + 16);
        v6 = *(v4 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2456C5B08((v6 > 1), v7 + 1, 1);
        }

        *(v4 + 16) = v7 + 1;
        *(v4 + 8 * v7 + 32) = 1;
      }

      v5 += 8;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v8 = *(v4 + 16);

  return v8 >= *(v1 + 152);
}

void sub_2456C4BD0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = a3;
  v10 = HIDWORD(a3);
  v11 = sub_2456C49E8();
  v12 = v11 + 48;
  v13 = *(v11 + 16) + 1;
  while (--v13)
  {
    v14 = v12 + 24;
    v15 = sub_2456CB278();
    v12 = v14;
    if (v15)
    {

      return;
    }
  }

  v16 = *(sub_2456C1558() + 16);

  if (v16 == 2)
  {
    v17 = sub_2456C1558();
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v18 - 1) > v19[3] >> 1)
      {
        v19 = sub_2456A33B8(isUniquelyReferenced_nonNull_native, v18, 1, v19);
      }

      sub_2456C6F80(0, 1, 0);
      swift_beginAccess();
      v22 = *(v5 + 160);
      v21 = *(v5 + 168);
      swift_beginAccess();
      v23 = v21;
      sub_2456CB238();
      sub_2456CB248();
      sub_2456BFBFC(v19, v22, sub_2456C7E04);
      swift_endAccess();

      v24 = sub_2456C49E8();
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = v24;
        v27 = swift_isUniquelyReferenced_nonNull_native();
        if (!v27 || (v25 - 1) > *(v26 + 3) >> 1)
        {
          v26 = sub_2456A329C(v27, v25, 1, v26);
        }

        sub_2456C7050(0, 1, 0);
        v29 = *(v5 + 160);
        v28 = *(v5 + 168);
        swift_beginAccess();
        v30 = v28;
        sub_2456CB238();
        sub_2456CB248();
        sub_2456BFBFC(v26, v29, sub_2456C7DF0);
        swift_endAccess();

        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_17:

  v31 = sub_2456C1558();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v31 = sub_2456A33B8(0, v31[2] + 1, 1, v31);
  }

  v33 = v31[2];
  v32 = v31[3];
  if (v33 >= v32 >> 1)
  {
    v31 = sub_2456A33B8((v32 > 1), v33 + 1, 1, v31);
  }

  v31[2] = v33 + 1;
  v31[v33 + 4] = a1;
  swift_beginAccess();
  v35 = *(v5 + 160);
  v34 = *(v5 + 168);
  swift_beginAccess();
  v36 = v34;
  sub_2456CB238();
  sub_2456CB248();
  sub_2456BFBFC(v31, v35, sub_2456C7E04);
  swift_endAccess();

  v37 = sub_2456C49E8();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v37 = sub_2456A329C(0, *(v37 + 16) + 1, 1, v37);
  }

  v39 = *(v37 + 16);
  v38 = *(v37 + 24);
  if (v39 >= v38 >> 1)
  {
    v37 = sub_2456A329C((v38 > 1), v39 + 1, 1, v37);
  }

  *(v37 + 16) = v39 + 1;
  v40 = v37 + 24 * v39;
  *(v40 + 32) = a2;
  *(v40 + 40) = v7;
  *(v40 + 44) = v10;
  *(v40 + 48) = a4;
  v42 = *(v5 + 160);
  v41 = *(v5 + 168);
  swift_beginAccess();
  v43 = v41;
  sub_2456CB238();
  sub_2456CB248();
  sub_2456BFBFC(v37, v42, sub_2456C7DF0);
  swift_endAccess();
}

BOOL sub_2456C501C(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    v2 = *(v1 + 144);
    if (*(v2 + 16) > a1)
    {
      v4 = *(v2 + 8 * a1 + 32);
      swift_beginAccess();
      v5 = *(v1 + 248);
      if (v4 > 9)
      {
        if (!sub_2456C50F0(3, v5))
        {
          goto LABEL_5;
        }
      }

      else if (!sub_2456C50F0(qword_2456CF730[v4], v5))
      {
LABEL_5:
        v6 = *(v1 + 144);
        if (*(v6 + 16) > a1 && *(v6 + 8 * a1 + 32) == 4 && *(v1 + 257) == 1)
        {
          return _AXSAttentionAwarenessFeaturesEnabled() == 0;
        }

        return 0;
      }

      return 1;
    }
  }

  return 0;
}

BOOL sub_2456C50F0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_2456CB588();
  MEMORY[0x245D6EAC0](a1);
  v4 = sub_2456CB5A8();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_2456C51BC()
{
  v1 = *(v0[18] + 16);
  swift_beginAccess();
  v2 = v0[33];
  v3 = *(v2 + 2);
  v4 = (v1 - v3);
  if (v4 < 0)
  {
    goto LABEL_100;
  }

  v59 = v0;
  if (v4)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v0;
    v0[33] = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_4;
  }

LABEL_8:
  swift_beginAccess();
  v10 = v59;
  v11 = *(v59[34] + 16);
  if (v11)
  {
    swift_beginAccess();
    v10 = v59;
    v12 = MEMORY[0x277D84F90];
    v13 = 4;
    v2 = MEMORY[0x277D84F90];
    while (1)
    {
      v14 = v13 - 4;
      v15 = v10[33];
      if ((v13 - 4) >= *(v15 + 16) || *(v15 + 8 * v13) != 1)
      {
        v26 = v10[34];
        if (v14 < *(v26 + 16) && (v27 = *(v26 + 8 * v13), v27[2]))
        {
          v3 = v27[4];
          v4 = v27[6];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE21520);
          v18 = swift_allocObject();
          v28 = v27[5];
          *(v18 + 16) = xmmword_2456CE280;
          *(v18 + 32) = v3;
          *(v18 + 40) = v28;
          *(v18 + 48) = v4;
        }

        else
        {
          v18 = v12;
        }

        goto LABEL_26;
      }

      v16 = v10[35];
      if (v14 >= *(v16 + 16))
      {
        goto LABEL_94;
      }

      v17 = v10[34];
      if (v14 >= *(v17 + 16))
      {
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        v57 = sub_2456A3288(0, v3 + 1, 1, v2);
        v6 = v59;
        v2 = v57;
        do
        {
LABEL_4:
          v6[33] = v2;
          v8 = *(v2 + 2);
          v7 = *(v2 + 3);
          v3 = v8 + 1;
          if (v8 >= v7 >> 1)
          {
            v9 = sub_2456A3288((v7 > 1), v8 + 1, 1, v2);
            v6 = v59;
            v2 = v9;
          }

          *(v2 + 2) = v3;
          *&v2[8 * v8 + 32] = 2;
          v6[33] = v2;
          v4 = (v4 - 1);
        }

        while (v4);
        swift_endAccess();
        goto LABEL_8;
      }

      v18 = *(v16 + 8 * v13);
      v19 = *(v17 + 8 * v13);
      v20 = *(v19 + 16);
      v3 = *(v18 + 16);
      v4 = (v3 + v20);
      if (__OFADD__(v3, v20))
      {
        goto LABEL_96;
      }

      v21 = swift_isUniquelyReferenced_nonNull_native();
      if (v21 && v4 <= *(v18 + 24) >> 1)
      {
        if (*(v19 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v3 <= v4)
        {
          v31 = v3 + v20;
        }

        else
        {
          v31 = v3;
        }

        v18 = sub_2456A329C(v21, v31, 1, v18);
        if (*(v19 + 16))
        {
LABEL_18:
          v22 = *(v18 + 16);
          if ((*(v18 + 24) >> 1) - v22 < v20)
          {
            goto LABEL_98;
          }

          memcpy((v18 + 24 * v22 + 32), (v19 + 32), 24 * v20);

          if (v20)
          {
            v23 = *(v18 + 16);
            v24 = __OFADD__(v23, v20);
            v25 = v23 + v20;
            if (v24)
            {
              goto LABEL_99;
            }

            *(v18 + 16) = v25;
          }

          goto LABEL_26;
        }
      }

      if (v20)
      {
        goto LABEL_97;
      }

LABEL_26:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_2456A33DC(0, *(v2 + 2) + 1, 1, v2);
      }

      v30 = *(v2 + 2);
      v29 = *(v2 + 3);
      v10 = v59;
      if (v30 >= v29 >> 1)
      {
        v10 = v59;
        v2 = sub_2456A33DC((v29 > 1), v30 + 1, 1, v2);
      }

      *(v2 + 2) = v30 + 1;
      *&v2[8 * v30 + 32] = v18;
      ++v13;
      if (!--v11)
      {
        goto LABEL_39;
      }
    }
  }

  v2 = MEMORY[0x277D84F90];
LABEL_39:
  if (v10[19])
  {
    v10 = v59;
    v32 = sub_2456C0044() / v59[19];
  }

  else
  {
    v32 = 0.0;
  }

  v33 = v10[33];
  swift_beginAccess();
  v34 = v10[37];
  v35 = *(v34 + 16);
  v58 = v33;

  if (v35)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v3 >= *(v34 + 16))
      {
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      v36 = *(v34 + 32 + 8 * v3);
      v37 = *(v36 + 16);
      v38 = v4[2];
      v39 = v38 + v37;
      if (__OFADD__(v38, v37))
      {
        goto LABEL_85;
      }

      v40 = swift_isUniquelyReferenced_nonNull_native();
      if (v40 && v39 <= v4[3] >> 1)
      {
        if (*(v36 + 16))
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v38 <= v39)
        {
          v41 = v38 + v37;
        }

        else
        {
          v41 = v38;
        }

        v4 = sub_2456A33B8(v40, v41, 1, v4);
        if (*(v36 + 16))
        {
LABEL_56:
          if ((v4[3] >> 1) - v4[2] < v37)
          {
            goto LABEL_90;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20FD8);
          swift_arrayInitWithCopy();

          if (v37)
          {
            v42 = v4[2];
            v24 = __OFADD__(v42, v37);
            v43 = v42 + v37;
            if (v24)
            {
              goto LABEL_92;
            }

            v4[2] = v43;
          }

          goto LABEL_45;
        }
      }

      if (v37)
      {
        goto LABEL_86;
      }

LABEL_45:
      if (v35 == ++v3)
      {
        goto LABEL_61;
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
LABEL_61:

  swift_beginAccess();
  v44 = v59[36];
  v45 = *(v44 + 16);

  if (v45)
  {
    v3 = 0;
    v46 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v3 >= *(v44 + 16))
      {
        goto LABEL_87;
      }

      v47 = *(v44 + 32 + 8 * v3);
      v48 = *(v47 + 16);
      v49 = *(v46 + 2);
      v50 = v49 + v48;
      if (__OFADD__(v49, v48))
      {
        goto LABEL_88;
      }

      v51 = swift_isUniquelyReferenced_nonNull_native();
      if (v51 && v50 <= *(v46 + 3) >> 1)
      {
        if (!*(v47 + 16))
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (v49 <= v50)
        {
          v52 = v49 + v48;
        }

        else
        {
          v52 = v49;
        }

        v46 = sub_2456A329C(v51, v52, 1, v46);
        if (!*(v47 + 16))
        {
LABEL_63:

          if (v48)
          {
            goto LABEL_89;
          }

          goto LABEL_64;
        }
      }

      v53 = *(v46 + 2);
      if ((*(v46 + 3) >> 1) - v53 < v48)
      {
        goto LABEL_91;
      }

      memcpy(&v46[24 * v53 + 32], (v47 + 32), 24 * v48);

      if (v48)
      {
        v54 = *(v46 + 2);
        v24 = __OFADD__(v54, v48);
        v55 = v54 + v48;
        if (v24)
        {
          goto LABEL_93;
        }

        *(v46 + 2) = v55;
      }

LABEL_64:
      if (v45 == ++v3)
      {
        goto LABEL_80;
      }
    }
  }

  v46 = MEMORY[0x277D84F90];
LABEL_80:

  *v60 = v32;
  v60[1] = v58;
  v60[2] = v2;
  v60[3] = v4;
  v60[4] = v46;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_245698E24(v60);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_2456C5888()
{
  sub_2456B8980((v0 + 16));
}

id *sub_2456C5908()
{
  v0 = sub_2456B57AC();
  sub_2456B8980((v0 + 16));

  return v0;
}

uint64_t sub_2456C5990()
{
  v0 = sub_2456C5908();

  return MEMORY[0x2821FE8D8](v0, 304, 7);
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

uint64_t sub_2456C59F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2456C5A40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_2456C5A98(char *a1, int64_t a2, char a3)
{
  result = sub_2456C60B8(a1, a2, a3, *v3, &qword_27EE21580);
  *v3 = result;
  return result;
}

void *sub_2456C5AC8(void *a1, int64_t a2, char a3)
{
  result = sub_2456C5F84(a1, a2, a3, *v3, &qword_27EE21588, &unk_2456CF6C0, &qword_27EE21590);
  *v3 = result;
  return result;
}

char *sub_2456C5B08(char *a1, int64_t a2, char a3)
{
  result = sub_2456C60B8(a1, a2, a3, *v3, &unk_27EE21530);
  *v3 = result;
  return result;
}

void *sub_2456C5B38(void *a1, int64_t a2, char a3)
{
  result = sub_2456C5F84(a1, a2, a3, *v3, &qword_27EE21130, &unk_2456CF700, &unk_27EE215D0);
  *v3 = result;
  return result;
}

void *sub_2456C5B78(void *a1, int64_t a2, char a3)
{
  result = sub_2456C5F84(a1, a2, a3, *v3, &qword_27EE21128, &unk_2456CF710, &unk_27EE215E0);
  *v3 = result;
  return result;
}

char *sub_2456C5BB8(char *a1, int64_t a2, char a3)
{
  result = sub_2456C5D58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2456C5BD8(void *a1, int64_t a2, char a3)
{
  result = sub_2456C5F84(a1, a2, a3, *v3, &qword_27EE21548, &unk_2456CF698, &qword_27EE21550);
  *v3 = result;
  return result;
}

void *sub_2456C5C18(void *a1, int64_t a2, char a3)
{
  result = sub_2456C5F84(a1, a2, a3, *v3, &unk_27EE215B0, &unk_2456CF6E8, &qword_27EE211F8);
  *v3 = result;
  return result;
}

char *sub_2456C5C58(char *a1, int64_t a2, char a3)
{
  result = sub_2456C5E74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2456C5C78(void *a1, int64_t a2, char a3)
{
  result = sub_2456C5F84(a1, a2, a3, *v3, &unk_27EE215A0, &unk_2456CDE50, &qword_27EE20FD8);
  *v3 = result;
  return result;
}

char *sub_2456C5CB8(char *a1, int64_t a2, char a3)
{
  result = sub_2456C60B8(a1, a2, a3, *v3, &qword_27EE21178);
  *v3 = result;
  return result;
}

char *sub_2456C5CE8(char *a1, int64_t a2, char a3)
{
  result = sub_2456C61B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2456C5D08(char *a1, int64_t a2, char a3)
{
  result = sub_2456C60B8(a1, a2, a3, *v3, &qword_27EE21558);
  *v3 = result;
  return result;
}

char *sub_2456C5D38(char *a1, int64_t a2, char a3)
{
  result = sub_2456C62B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2456C5D58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE21520);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_2456C5E74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21598);
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

void *sub_2456C5F84(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_2456C60B8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

char *sub_2456C61B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE21560);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_2456C62B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21138);
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

uint64_t sub_2456C63C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2456C63FC(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_2456CB588();
  MEMORY[0x245D6EAC0](a2);
  v6 = sub_2456CB5A8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_2456C6744(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2456C64F4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE215C0);
  result = sub_2456CB318();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_2456CB588();
      MEMORY[0x245D6EAC0](v16);
      result = sub_2456CB5A8();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_2456C6744(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2456C64F4();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2456C6890();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2456C69D0();
  }

  v8 = *v3;
  sub_2456CB588();
  MEMORY[0x245D6EAC0](v4);
  result = sub_2456CB5A8();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2456CB558();
  __break(1u);
  return result;
}

void *sub_2456C6890()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE215C0);
  v2 = *v0;
  v3 = sub_2456CB308();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2456C69D0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE215C0);
  result = sub_2456CB318();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      sub_2456CB588();
      MEMORY[0x245D6EAC0](v15);
      result = sub_2456CB5A8();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_2456C6BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v24 = a2;
  v25 = a1;
  v22 = sub_2456CB1F8();
  v4 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2456CB1E8();
  MEMORY[0x28223BE20](v7);
  v8 = sub_2456CAF88();
  MEMORY[0x28223BE20](v8 - 8);
  *(v3 + 136) = 0;
  swift_unknownObjectWeakInit();
  v9 = MEMORY[0x277D84F90];
  *(v3 + 144) = MEMORY[0x277D84F90];
  *(v3 + 152) = 3;
  v10 = dispatch_semaphore_create(1);
  *(v3 + 160) = 0;
  *(v3 + 168) = v10;
  v11 = dispatch_semaphore_create(1);
  *(v3 + 176) = 0;
  *(v3 + 184) = v11;
  v12 = dispatch_semaphore_create(1);
  *(v3 + 192) = 0;
  *(v3 + 200) = v12;
  v13 = dispatch_semaphore_create(1);
  *(v3 + 208) = 0;
  *(v3 + 216) = v13;
  v14 = MEMORY[0x277CC08F0];
  v15 = *(MEMORY[0x277CC08F0] + 16);
  *(v3 + 224) = *MEMORY[0x277CC08F0];
  v16 = *(v14 + 8);
  v17 = MEMORY[0x277D84FA0];
  *(v3 + 232) = v16;
  *(v3 + 240) = v15;
  *(v3 + 248) = v17;
  *(v3 + 256) = 1;
  *(v3 + 257) = 0;
  *(v3 + 261) = 0;
  *(v3 + 264) = v9;
  *(v3 + 272) = v9;
  *(v3 + 280) = v9;
  *(v3 + 288) = v9;
  *(v3 + 296) = v9;
  sub_2456AB00C(0, &qword_27EE21218);
  sub_2456CAF78();
  v26 = v9;
  sub_2456C7108();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE212E0);
  sub_2456C7160();
  sub_2456CB2B8();
  (*(v4 + 104))(v6, *MEMORY[0x277D85260], v22);
  v18 = sub_2456CB228();
  v19 = sub_2456B31D8(v18, v23);
  *(v19 + 136) = v24;
  swift_unknownObjectWeakAssign();
  return v19;
}

unint64_t sub_2456C6EC0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_2456C6F80(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20FD8);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_2456C7050(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 24 * result + 24 * a3;
  v10 = (v6 + 32 + 24 * a2);
  if (result != v10 || result >= v10 + 24 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 24 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}