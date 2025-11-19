uint64_t SomeEvent.isLegacySecurityEvent.getter()
{
  sub_2541DA834(v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  LOBYTE(v0) = (*(v1 + 32))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v0 & 1;
}

uint64_t SomeEvent.tags.getter()
{
  sub_2541DA834(v4);
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v2 = (*(v1 + 48))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

uint64_t _s13HomeKitEvents9SomeEventO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = type metadata accessor for EnergyKit.SomeEnergyKitEvent();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HomeActivityStateEvent(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SomeAccessoryEvent();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SomeEvent();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v38 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v38 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB170, &unk_25425D858);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v38 - v27;
  v29 = *(v26 + 56);
  sub_2541DD76C(a1, &v38 - v27, type metadata accessor for SomeEvent);
  sub_2541DD76C(v39, &v28[v29], type metadata accessor for SomeEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2541DD76C(v28, v21, type metadata accessor for SomeEvent);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_2541DD7D4(&v28[v29], v9, type metadata accessor for HomeActivityStateEvent);
        v31 = static HomeActivityStateEvent.== infix(_:_:)(v21, v9);
        v32 = type metadata accessor for HomeActivityStateEvent;
        sub_2541DD70C(v9, type metadata accessor for HomeActivityStateEvent);
        v33 = v21;
LABEL_13:
        sub_2541DD70C(v33, v32);
        sub_2541DD70C(v28, type metadata accessor for SomeEvent);
        return v31 & 1;
      }

      v34 = type metadata accessor for HomeActivityStateEvent;
      v35 = v21;
    }

    else
    {
      sub_2541DD76C(v28, v18, type metadata accessor for SomeEvent);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v36 = v38;
        sub_2541DD7D4(&v28[v29], v38, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        v31 = _s13HomeKitEvents06EnergyB0O04SomedB5EventO2eeoiySbAE_AEtFZ_0(v18, v36);
        v32 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
        sub_2541DD70C(v36, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        v33 = v18;
        goto LABEL_13;
      }

      v34 = type metadata accessor for EnergyKit.SomeEnergyKitEvent;
      v35 = v18;
    }
  }

  else
  {
    sub_2541DD76C(v28, v23, type metadata accessor for SomeEvent);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_2541DD7D4(&v28[v29], v13, type metadata accessor for SomeAccessoryEvent);
      v31 = _s13HomeKitEvents18SomeAccessoryEventO2eeoiySbAC_ACtFZ_0(v23, v13);
      v32 = type metadata accessor for SomeAccessoryEvent;
      sub_2541DD70C(v13, type metadata accessor for SomeAccessoryEvent);
      v33 = v23;
      goto LABEL_13;
    }

    v34 = type metadata accessor for SomeAccessoryEvent;
    v35 = v23;
  }

  sub_2541DD70C(v35, v34);
  sub_2541DD6A4(v28);
  v31 = 0;
  return v31 & 1;
}

uint64_t type metadata accessor for SomeEvent()
{
  result = qword_27F5BB100;
  if (!qword_27F5BB100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2541DCEF4()
{
  result = qword_27F5BB090;
  if (!qword_27F5BB090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB090);
  }

  return result;
}

unint64_t sub_2541DCF48()
{
  result = qword_27F5BB098;
  if (!qword_27F5BB098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB098);
  }

  return result;
}

unint64_t sub_2541DCF9C()
{
  result = qword_27F5BB0A8;
  if (!qword_27F5BB0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB0A8);
  }

  return result;
}

unint64_t sub_2541DCFF0()
{
  result = qword_27F5BB0B0;
  if (!qword_27F5BB0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB0B0);
  }

  return result;
}

uint64_t sub_2541DD08C()
{
  result = type metadata accessor for SomeAccessoryEvent();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for HomeActivityStateEvent(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for EnergyKit.SomeEnergyKitEvent();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2541DD158()
{
  result = qword_27F5BB110;
  if (!qword_27F5BB110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB110);
  }

  return result;
}

unint64_t sub_2541DD1B0()
{
  result = qword_27F5BB118;
  if (!qword_27F5BB118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB118);
  }

  return result;
}

unint64_t sub_2541DD208()
{
  result = qword_27F5BB120;
  if (!qword_27F5BB120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB120);
  }

  return result;
}

unint64_t sub_2541DD260()
{
  result = qword_27F5BB128;
  if (!qword_27F5BB128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB128);
  }

  return result;
}

unint64_t sub_2541DD2B8()
{
  result = qword_27F5BB130;
  if (!qword_27F5BB130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB130);
  }

  return result;
}

unint64_t sub_2541DD310()
{
  result = qword_27F5BB138;
  if (!qword_27F5BB138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB138);
  }

  return result;
}

unint64_t sub_2541DD368()
{
  result = qword_27F5BB140;
  if (!qword_27F5BB140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB140);
  }

  return result;
}

unint64_t sub_2541DD3C0()
{
  result = qword_27F5BB148;
  if (!qword_27F5BB148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB148);
  }

  return result;
}

unint64_t sub_2541DD418()
{
  result = qword_27F5BB150;
  if (!qword_27F5BB150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB150);
  }

  return result;
}

unint64_t sub_2541DD470()
{
  result = qword_27F5BB158;
  if (!qword_27F5BB158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB158);
  }

  return result;
}

unint64_t sub_2541DD4C8()
{
  result = qword_27F5BB160;
  if (!qword_27F5BB160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB160);
  }

  return result;
}

unint64_t sub_2541DD520()
{
  result = qword_27F5BB168;
  if (!qword_27F5BB168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB168);
  }

  return result;
}

uint64_t sub_2541DD574(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726F737365636361 && a2 == 0xE900000000000079 || (sub_25424EAB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002542513A0 == a2 || (sub_25424EAB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x694B796772656E65 && a2 == 0xE900000000000074)
  {

    return 2;
  }

  else
  {
    v5 = sub_25424EAB8();

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

uint64_t sub_2541DD6A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB170, &unk_25425D858);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2541DD70C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2541DD76C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2541DD7D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2541DD83C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_2541DD888(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B9280, &qword_2542545D8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for LubyRackoffEncryptionKey();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v28 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v27 = &v24 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v17 = a3 + 32;
  v24 = v14;
  v18 = (v14 + 48);
  v19 = MEMORY[0x277D84F90];
  v25 = v10;
  v26 = a1;
  while (1)
  {
    a1(v17);
    if (v3)
    {
      break;
    }

    if ((*v18)(v9, 1, v10) == 1)
    {
      sub_254132E5C(v9, &unk_27F5B9280, &qword_2542545D8);
    }

    else
    {
      v20 = v27;
      sub_2541DF3BC(v9, v27);
      sub_2541DF3BC(v20, v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_2541B0D14(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_2541B0D14(v21 > 1, v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_2541DF3BC(v28, v19 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22);
      v10 = v25;
      a1 = v26;
    }

    v17 += 40;
    if (!--v16)
    {
      return v19;
    }
  }

  return v19;
}

void *sub_2541DDB14(void (*a1)(uint64_t *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9268, &qword_2542545B8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B90E8, &qword_2542544F8);
  v30 = *(v14 - 8);
  v15 = *(v30 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v33 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v28 - v18;
  if (a4 < a3)
  {
    goto LABEL_25;
  }

  v34 = a4;
  a1(&v34);
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_4:
  }

  else
  {
    v31 = *(v30 + 48);
    v32 = v30 + 48;
    v21 = v31(v13, 1, v14);
    v29 = v14;
    if (v21 != 1)
    {
      sub_2541DF34C(v13, v19);
      sub_2541DF34C(v19, v33);
      v6 = MEMORY[0x277D84F90];
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }

    sub_254132E5C(v13, &qword_27F5B9268, &qword_2542545B8);
    v6 = MEMORY[0x277D84F90];
    while (a4 != a3)
    {
      v28 = a1;
      while (a4 > a3)
      {
        v34 = --a4;
        a1(&v34);
        if (v5)
        {
          goto LABEL_4;
        }

        if (v31(v13, 1, v14) == 1)
        {
          sub_254132E5C(v13, &qword_27F5B9268, &qword_2542545B8);
          if (a3 == a4)
          {
            return v6;
          }
        }

        else
        {
          sub_2541DF34C(v13, v19);
          sub_2541DF34C(v19, v33);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_2541B0F18(0, v6[2] + 1, 1, v6);
          }

          v26 = v6[2];
          v25 = v6[3];
          if (v26 >= v25 >> 1)
          {
            v6 = sub_2541B0F18(v25 > 1, v26 + 1, 1, v6);
          }

          v6[2] = v26 + 1;
          sub_2541DF34C(v33, v6 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26);
          a1 = v28;
          v14 = v29;
          if (a3 == a4)
          {
            return v6;
          }
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v6 = sub_2541B0F18(0, v6[2] + 1, 1, v6);
LABEL_9:
      v23 = v6[2];
      v22 = v6[3];
      v24 = (v23 + 1);
      if (v23 >= v22 >> 1)
      {
        v28 = (v23 + 1);
        v27 = sub_2541B0F18(v22 > 1, v23 + 1, 1, v6);
        v24 = v28;
        v6 = v27;
      }

      v6[2] = v24;
      sub_2541DF34C(v33, v6 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v23);
      v14 = v29;
    }
  }

  return v6;
}

uint64_t sub_2541DDF14(void *a1, uint64_t (*a2)(void *, uint64_t, uint64_t))
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return a2(v4, v2, v3);
}

uint64_t sub_2541DDF98(uint64_t a1, uint64_t (*a2)(uint64_t *, uint64_t, uint64_t))
{
  sub_2541DA834(v10);
  v3 = v11;
  v4 = v12;
  v5 = __swift_project_boxed_opaque_existential_1(v10, v11);
  v13[3] = v3;
  v6 = *(v4 + 8);
  v13[4] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  __swift_destroy_boxed_opaque_existential_1(v10);
  v8 = a2(boxed_opaque_existential_1, v3, v6);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v8;
}

uint64_t sub_2541DE084@<X0>(unint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, unint64_t *a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v30 = a7;
  v31 = a6;
  v34 = a5;
  LODWORD(v29) = a4;
  v32 = a8;
  v11 = sub_25424D8B8();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  MEMORY[0x28223BE20](v13);
  v14 = sub_25424D218();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  result = MEMORY[0x28223BE20](v14);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = *a1 / 6 - 255 * (((*a1 / 6 * 0x4040404040404041uLL) >> 64) >> 6);
  v33 = a2;
  if (v20 == a3)
  {
    v29 = result;
    result = sub_25424D1F8();
LABEL_12:
    v24 = *v34;
    if (*v34 == v31)
    {
      sub_25424D1D8();
LABEL_17:
      sub_25424D1E8();
      v25 = _s13HomeKitEvents9EventTagsO8CategoryO4tags3for12dateIntervalSay10Foundation4DataVGShyAA0dF0OG_AI04DateJ0VtFZ_0(v30);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B90E8, &qword_2542544F8);
      v27 = *(v26 + 48);
      v28 = v32;
      (*(v15 + 32))(v32, v19, v29);
      *(v28 + v27) = v25;
      result = (*(*(v26 - 8) + 56))(v28, 0, 1, v26);
      *v34 = v20;
      goto LABEL_18;
    }

    if (is_mul_ok(v24, 0x3CuLL))
    {
      if (is_mul_ok(60 * v24, 0x3CuLL))
      {
        sub_25424D568();
        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v21 != v29 || *a2 == v21)
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B90E8, &qword_2542544F8);
    result = (*(*(v23 - 8) + 56))(v32, 1, 1, v23);
LABEL_18:
    *v33 = v21;
    return result;
  }

  if (!is_mul_ok(v20, 0x3CuLL))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (is_mul_ok(60 * v20, 0x3CuLL))
  {
    v29 = result;
    result = sub_25424D568();
    goto LABEL_12;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_2541DE3EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{

  v6 = sub_2541DEB88(v5);

  v7 = a3(v6, a2);

  return v7;
}

uint64_t sub_2541DE450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25424D8B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v12 + 16))(v15, a1, a2);
  (*(a3 + 48))(&v20, a2, a3);
  LOBYTE(a1) = v20;
  (*(a3 + 32))(a2, a3);
  LOBYTE(a3) = sub_2541DE894();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9380, &qword_254254800);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2542542D0;
  *(v16 + 32) = a3;
  *(v16 + 33) = 0xFF070504030201uLL >> (8 * a1);
  v17 = sub_2541B1AC4(v16);

  (*(v7 + 8))(v11, v6);
  (*(v12 + 8))(v15, a2);
  return v17;
}

uint64_t sub_2541DE690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25424D8B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, a2);
  (*(a3 + 32))(a2, a3);
  LOBYTE(a3) = sub_2541DE894();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9380, &qword_254254800);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2542542D0;
  *(v16 + 32) = a3;
  *(v16 + 33) = -1;
  v17 = sub_2541B1AC4(v16);

  (*(v7 + 8))(v11, v6);
  (*(v12 + 8))(v15, a2);
  return v17;
}

uint64_t sub_2541DE894()
{
  result = sub_25424D578();
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 1.84467441e19)
  {
    return (v1 / 0x5460) - 255 * ((v1 / 0x5460 * 0x101010101010102uLL) >> 64);
  }

LABEL_7:
  __break(1u);
  return result;
}

void *_s13HomeKitEvents9EventTagsO8CategoryO15tagsSplitByDate3for12dateIntervalSay10Foundation0jM0VAH_SayAI4DataVG0G0tGShyAA0dF0OG_AKtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25424D8B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25424D1F8();
  sub_25424D578();
  v10 = v9;
  v11 = v9;
  v12 = *(v5 + 8);
  result = v12(v8, v4);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v10 <= -1.0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v10 >= 1.84467441e19)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_25424D1D8();
  sub_25424D578();
  v15 = v14;
  v16 = v14;
  result = v12(v8, v4);
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v15 <= -1.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v15 >= 1.84467441e19)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v22 = v15 / 0x5460 + ((v15 / 0x5460 * 0x101010101010102uLL) >> 64);
  v21 = v15 / 0xE10;
  if (v21 >= v10 / 0xE10)
  {
    MEMORY[0x28223BE20](result);
    *&v20[-64] = &v22;
    *&v20[-56] = v17;
    v20[-48] = v18;
    *&v20[-40] = &v21;
    *&v20[-32] = a2;
    *&v20[-24] = v19;
    *&v20[-16] = a1;
    return sub_2541DDB14(sub_2541DF324, &v20[-80], v17, v19);
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2541DEB88(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2541BB3C0();
  v4 = MEMORY[0x259C06190](v2, &type metadata for EventCategory, v3);
  if (!v2)
  {
    return v4;
  }

  v5 = 0;
  while (1)
  {
    v6 = v4 + 56;
    while (1)
    {
      v7 = *(a1 + 32 + v5++);
      v8 = *(v4 + 40);
      sub_25424EBD8();
      v9 = qword_25425D8A8[v7];
      MEMORY[0x259C06AA0](v9);
      v10 = sub_25424EC28();
      v11 = -1 << *(v4 + 32);
      v12 = v10 & ~v11;
      if (((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        break;
      }

      v13 = ~v11;
      while (qword_25425D8A8[*(*(v4 + 48) + v12)] != v9)
      {
        v12 = (v12 + 1) & v13;
        if (((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      if (v5 == v2)
      {
        return v4;
      }
    }

LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v4 + 16);
    if (*(v4 + 24) > v15)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25416A1C0();
      }

      goto LABEL_21;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      sub_25417E910(v15 + 1);
    }

    else
    {
      sub_25417E90C(v15 + 1);
    }

    v16 = *(v4 + 40);
    sub_25424EBD8();
    MEMORY[0x259C06AA0](v9);
    v17 = sub_25424EC28();
    v18 = -1 << *(v4 + 32);
    v12 = v17 & ~v18;
    if ((*(v4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      break;
    }

LABEL_21:
    *(v4 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v12;
    *(*(v4 + 48) + v12) = v7;
    v20 = *(v4 + 16);
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      __break(1u);
      goto LABEL_25;
    }

    *(v4 + 16) = v22;
    if (v5 == v2)
    {
      return v4;
    }
  }

  v19 = ~v18;
  while (qword_25425D8A8[*(*(v4 + 48) + v12)] != v9)
  {
    v12 = (v12 + 1) & v19;
    if (((*(v4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

LABEL_25:
  result = sub_25424EB28();
  __break(1u);
  return result;
}

char *_s13HomeKitEvents9EventTagsO8CategoryO4tags3for12dateIntervalSay10Foundation4DataVGShyAA0dF0OG_AI04DateJ0VtFZ_0(uint64_t a1)
{
  v56[5] = *MEMORY[0x277D85DE8];
  v2 = sub_25424D8B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424D1F8();
  sub_25424D578();
  v8 = v7;
  v9 = v7;
  v10 = *(v3 + 8);
  v10(v6, v2);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v8 <= -1.0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v8 >= 1.84467441e19)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  sub_25424D1D8();
  sub_25424D578();
  v12 = v11;
  v13 = v11;
  v10(v6, v2);
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v12 <= -1.0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v12 >= 1.84467441e19)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v14 = v12 / 0x5460;
  v15 = v14 - v8 / 0x5460;
  if (v14 < v8 / 0x5460)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v16 = v15 + 1;
  if (v15 == -1)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  v17 = *(a1 + 16);
  if ((v16 * v17) >> 64 != (v16 * v17) >> 63)
  {
    goto LABEL_52;
  }

  v18 = sub_2541B09E0(0, (v16 * v17) & ~((v16 * v17) >> 63), 0, MEMORY[0x277D84F90]);
  v19 = 0;
  v20 = a1 + 56;
  v53 = v14 - 255 * ((v14 * 0x101010101010102uLL) >> 64);
  if (v16 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v16;
  }

  v48 = v21;
  v52 = xmmword_2542542D0;
  v49 = v16;
  while (2)
  {
    v50 = v19 + 1;
    v23 = 1 << *(a1 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(a1 + 56);
    v26 = (v23 + 63) >> 6;

    v27 = 0;
    if (v25)
    {
      goto LABEL_27;
    }

    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      if (v28 >= v26)
      {
        break;
      }

      v25 = *(v20 + 8 * v28);
      ++v27;
      if (v25)
      {
        v27 = v28;
        do
        {
LABEL_27:
          v29 = a1;
          v30 = 0xFF070504030201uLL >> (8 * *(*(a1 + 48) + (__clz(__rbit64(v25)) | (v27 << 6))));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9380, &qword_254254800);
          v31 = swift_allocObject();
          *(v31 + 16) = v52;
          *(v31 + 32) = v53;
          *(v31 + 33) = v30;
          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA2D0, &qword_254258C40);
          v56[3] = v32;
          v56[4] = sub_2541DF2C0();
          v56[0] = v31;
          v33 = __swift_project_boxed_opaque_existential_1(v56, v32);
          v34 = *v33;
          v35 = *(*v33 + 16);
          if (v35)
          {
            if (v35 <= 0xE)
            {
              memset(__dst, 0, sizeof(__dst));
              v55 = v35;
              memcpy(__dst, (v34 + 32), v35);
              v41 = *__dst;
              v42 = v51 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v55 << 16)) << 32);
              v51 = v42;
            }

            else
            {
              v36 = sub_25424D2B8();
              v37 = *(v36 + 48);
              v38 = *(v36 + 52);
              swift_allocObject();
              v39 = sub_25424D258();
              v40 = v39;
              if (v35 >= 0x7FFFFFFF)
              {
                sub_25424D468();
                v41 = swift_allocObject();
                *(v41 + 16) = 0;
                *(v41 + 24) = v35;
                v42 = v40 | 0x8000000000000000;
              }

              else
              {
                v41 = v35 << 32;
                v42 = v39 | 0x4000000000000000;
              }
            }
          }

          else
          {
            v41 = 0;
            v42 = 0xC000000000000000;
          }

          __swift_destroy_boxed_opaque_existential_1(v56);
          v44 = *(v18 + 2);
          v43 = *(v18 + 3);
          if (v44 >= v43 >> 1)
          {
            v18 = sub_2541B09E0((v43 > 1), v44 + 1, 1, v18);
          }

          v25 &= v25 - 1;
          *(v18 + 2) = v44 + 1;
          v45 = &v18[16 * v44];
          *(v45 + 4) = v41;
          *(v45 + 5) = v42;
          a1 = v29;
        }

        while (v25);
      }
    }

    if (v53)
    {
      v19 = v50;
      if (v50 == v49)
      {
        break;
      }

      v22 = v53 - 1;
      goto LABEL_18;
    }

    v19 = v50;
    if (v50 != v49)
    {
      v22 = 255;
LABEL_18:
      v53 = v22;
      if (v19 == v48)
      {
        goto LABEL_42;
      }

      continue;
    }

    break;
  }

  v46 = *MEMORY[0x277D85DE8];
  return v18;
}

unint64_t sub_2541DF2C0()
{
  result = qword_27F5BA2D8;
  if (!qword_27F5BA2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BA2D0, &qword_254258C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA2D8);
  }

  return result;
}

uint64_t sub_2541DF34C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B90E8, &qword_2542544F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2541DF3BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LubyRackoffEncryptionKey();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t asyncCache<A, B>(of:withKeysOf:expirationDuration:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>, double a5@<D0>)
{
  if (a5 > 0.0)
  {
    v9 = type metadata accessor for ExpiringAsyncCache();
    v10 = ExpiringAsyncCache.__allocating_init(expirationDuration:)(a5);
    a4[3] = v9;
LABEL_6:
    result = swift_getWitnessTable();
    a4[4] = result;
    *a4 = v10;
    return result;
  }

  if (a5 == 0.0)
  {
    v11 = type metadata accessor for SimpleAsyncCache();
    v10 = SimpleAsyncCache.__allocating_init()();
    a4[3] = v11;
    goto LABEL_6;
  }

  a4[3] = type metadata accessor for DiscardingAsyncCache();
  a4[4] = swift_getWitnessTable();

  return DiscardingAsyncCache.init()(a1, a2, a3);
}

uint64_t dispatch thunk of AsyncCache.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_25412F818;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AsyncCache.get(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2541A5FB8;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AsyncCache.set(_:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_25412F724;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AsyncCache.clear(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25412F818;

  return v11(a1, a2, a3);
}

HomeKitEvents::WindowEvent::State_optional __swiftcall WindowEvent.State.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t WindowEvent.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WindowEvent();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for WindowEvent()
{
  result = qword_27F5BB1F0;
  if (!qword_27F5BB1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WindowEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D8B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WindowEvent.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventBase(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t WindowEvent.roomName.getter()
{
  v1 = (v0 + *(type metadata accessor for AccessoryEventBase(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t WindowEvent.accessoryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessoryEventBase(0) + 28);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WindowEvent.accessoryName.getter()
{
  v1 = (v0 + *(type metadata accessor for AccessoryEventBase(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t WindowEvent.userIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessoryEventBase(0) + 36);

  return sub_254149770(v3, a1);
}

BOOL static WindowEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    return 0;
  }

  v4 = type metadata accessor for WindowEvent();
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t WindowEvent.hash(into:)()
{
  v1 = v0;
  v2 = sub_25424D948();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - v9;
  sub_25424D8B8();
  sub_2541E08DC(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  v11 = type metadata accessor for EventBase(0);
  v12 = *(v11 + 20);
  sub_2541E08DC(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_25425DC30[*(v1 + *(v11 + 24))]);
  v13 = type metadata accessor for AccessoryEventBase(0);
  v14 = v1 + v13[5];
  sub_25424DC28();
  v15 = (v1 + v13[6]);
  v16 = *v15;
  v17 = v15[1];
  sub_25424DD88();
  v18 = v1 + v13[7];
  sub_25424DC28();
  v19 = (v1 + v13[8]);
  v20 = *v19;
  v21 = v19[1];
  sub_25424DD88();
  sub_254149770(v1 + v13[9], v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_25424EBF8();
    sub_25424DC28();
    (*(v3 + 8))(v6, v2);
  }

  v22 = type metadata accessor for WindowEvent();
  return MEMORY[0x259C06AA0](*(v1 + *(v22 + 20)));
}

uint64_t WindowEvent.hashValue.getter()
{
  sub_25424EBD8();
  WindowEvent.hash(into:)();
  return sub_25424EC28();
}

uint64_t sub_2541E0054()
{
  sub_25424EBD8();
  WindowEvent.hash(into:)();
  return sub_25424EC28();
}

uint64_t sub_2541E0098()
{
  sub_25424EBD8();
  WindowEvent.hash(into:)();
  return sub_25424EC28();
}

uint64_t WindowEvent.init(date:homeIdentifier:roomIdentifier:roomName:accessoryIdentifier:accessoryName:state:userIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11)
{
  v30 = *a10;
  v17 = sub_25424D8B8();
  (*(*(v17 - 8) + 32))(a9, a1, v17);
  v18 = type metadata accessor for EventBase(0);
  v19 = v18[5];
  v20 = sub_25424D948();
  v21 = *(*(v20 - 8) + 32);
  v21(a9 + v19, a2, v20);
  *(a9 + v18[6]) = 1;
  v22 = (a9 + v18[7]);
  *v22 = 15;
  v23 = type metadata accessor for AccessoryEventBase(0);
  v22[1] = 0;
  v22[2] = 0;
  v21(a9 + v23[5], a3, v20);
  v24 = (a9 + v23[6]);
  *v24 = a4;
  v24[1] = a5;
  v21(a9 + v23[7], a6, v20);
  v25 = (a9 + v23[8]);
  *v25 = a7;
  v25[1] = a8;
  sub_25414A348(a11, a9 + v23[9]);
  result = type metadata accessor for WindowEvent();
  *(a9 + *(result + 20)) = v30;
  return result;
}

uint64_t WindowEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AccessoryEventBaseLegacy(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v12);
  sub_254231924(v12, v8);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_254149170(a1, v12);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v10 = v12[0];
  sub_25414A414(v8, a2);
  result = type metadata accessor for WindowEvent();
  *(a2 + *(result + 20)) = v10;
  return result;
}

uint64_t WindowEvent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E60, &qword_254254A10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  result = sub_254231F94(a1);
  if (!v2)
  {
    v11[15] = *(v1 + *(type metadata accessor for WindowEvent() + 20));
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25412F1C4();
    sub_25424EC78();
    v11[14] = 1;
    sub_2541E05D0();
    sub_25424EA18();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

unint64_t sub_2541E05D0()
{
  result = qword_27F5BB178;
  if (!qword_27F5BB178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB178);
  }

  return result;
}

unint64_t sub_2541E0628()
{
  result = qword_27F5BB180;
  if (!qword_27F5BB180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB180);
  }

  return result;
}

unint64_t sub_2541E0680()
{
  result = qword_27F5BB188;
  if (!qword_27F5BB188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BB190, &qword_25425D9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB188);
  }

  return result;
}

unint64_t sub_2541E06E8()
{
  result = qword_27F5BB198;
  if (!qword_27F5BB198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB198);
  }

  return result;
}

uint64_t sub_2541E073C(void *a1)
{
  a1[1] = sub_2541E08DC(&qword_27F5BB1A8, type metadata accessor for WindowEvent);
  a1[2] = sub_2541E08DC(&qword_27F5BB1B0, type metadata accessor for WindowEvent);
  result = sub_2541E08DC(&qword_27F5BB1B8, type metadata accessor for WindowEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_2541E0830(void *a1)
{
  a1[1] = sub_2541E08DC(&qword_27F5BB1C8, type metadata accessor for WindowEvent);
  a1[2] = sub_2541E08DC(&qword_27F5BB1D0, type metadata accessor for WindowEvent);
  result = sub_2541E08DC(&qword_27F5BB1D8, type metadata accessor for WindowEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_2541E08DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2541E096C(void *a1)
{
  a1[1] = sub_25414ACD4();
  a1[2] = sub_2541E05D0();
  result = sub_2541E09A4();
  a1[3] = result;
  return result;
}

unint64_t sub_2541E09A4()
{
  result = qword_27F5BB1E0;
  if (!qword_27F5BB1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB1E0);
  }

  return result;
}

unint64_t sub_2541E09F8(uint64_t a1)
{
  result = sub_2541E0A20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2541E0A20()
{
  result = qword_27F5BB1E8;
  if (!qword_27F5BB1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB1E8);
  }

  return result;
}

unint64_t sub_2541E0A74(uint64_t a1)
{
  result = sub_2541E06E8();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2541E0AC4()
{
  result = type metadata accessor for AccessoryEventBaseLegacy(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2541E0B48()
{
  result = qword_27F5BB200;
  if (!qword_27F5BB200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB200);
  }

  return result;
}

uint64_t DigestQuery.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for QueryBase() + 20);
  v4 = sub_25424D8B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DigestQuery.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for QueryBase() + 24);
  v4 = sub_25424D8B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DigestQuery.scope.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for QueryBase();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t DigestQuery.homeIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D948();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double sub_2541E0D58@<D0>(uint64_t a1@<X8>)
{
  sub_2541E3BBC(v1, a1, type metadata accessor for DigestQuery.AsyncEventSequence);
  v3 = type metadata accessor for DigestQuery.AsyncEventSequence.AsyncIterator(0);
  v4 = a1 + v3[5];
  *(v4 + 32) = 0;
  result = 0.0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  v6 = a1 + v3[6];
  *(v6 + 32) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(a1 + v3[7]) = 0;
  return result;
}

uint64_t sub_2541E0DCC(uint64_t a1)
{
  v2[55] = a1;
  v2[56] = v1;
  v3 = sub_25424D3C8();
  v2[57] = v3;
  v4 = *(v3 - 8);
  v2[58] = v4;
  v5 = *(v4 + 64) + 15;
  v2[59] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B92E0, &qword_2542546F8);
  v2[60] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[61] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BC800, &unk_25425DD60) - 8) + 64) + 15;
  v2[62] = swift_task_alloc();
  v9 = type metadata accessor for DigestRecord(0);
  v2[63] = v9;
  v10 = *(v9 - 8);
  v2[64] = v10;
  v11 = *(v10 + 64) + 15;
  v2[65] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB230, &unk_254263DF0);
  v2[66] = v12;
  v13 = *(v12 - 8);
  v2[67] = v13;
  v14 = *(v13 + 64) + 15;
  v2[68] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB238, &unk_25425DD70);
  v2[69] = v15;
  v16 = *(v15 - 8);
  v2[70] = v16;
  v17 = *(v16 + 64) + 15;
  v2[71] = swift_task_alloc();
  v18 = type metadata accessor for DigestQuery.AsyncEventSequence(0);
  v2[72] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v2[73] = swift_task_alloc();
  v20 = sub_25424D218();
  v2[74] = v20;
  v21 = *(v20 - 8);
  v2[75] = v21;
  v22 = *(v21 + 64) + 15;
  v2[76] = swift_task_alloc();
  v23 = type metadata accessor for EnergyKit.SomeEnergyKitEvent();
  v2[77] = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  v25 = type metadata accessor for SomeAccessoryEvent();
  v2[80] = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v27 = sub_25424D8B8();
  v2[83] = v27;
  v28 = *(v27 - 8);
  v2[84] = v28;
  v29 = *(v28 + 64) + 15;
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9110, &qword_254254530) - 8) + 64) + 15;
  v2[87] = swift_task_alloc();
  v31 = type metadata accessor for SomeEvent();
  v2[88] = v31;
  v32 = *(v31 - 8);
  v2[89] = v32;
  v33 = *(v32 + 64) + 15;
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2541E1238, 0, 0);
}

uint64_t sub_2541E1238()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 448);
  v3 = type metadata accessor for DigestQuery.AsyncEventSequence.AsyncIterator(0);
  *(v0 + 736) = v3;
  v4 = *(v3 + 28);
  *(v0 + 800) = v4;
  v5 = *(v1 + 20);
  v6 = *(v2 + v4);
  *(v0 + 744) = v6;
  if (v6 != *(v2 + v5))
  {
    v19 = *(v3 + 24);
    *(v0 + 804) = v19;
    v20 = v2 + v19;
    *(v0 + 808) = *MEMORY[0x277D858A0];
    if (*(v2 + v19 + 24))
    {
      sub_254140708(v20, v0 + 16);
      if (*(v0 + 40))
      {
LABEL_7:
        v21 = *(v0 + 448) + *(v0 + 804);
        v22 = __swift_destroy_boxed_opaque_existential_1((v0 + 16));
        v25 = *(v21 + 24);
        if (v25)
        {
          v26 = *(v0 + 448) + *(v0 + 804);
          v27 = *(v26 + 32);
          __swift_mutable_project_boxed_opaque_existential_1(v26, *(v21 + 24));
          v28 = *(MEMORY[0x277D856D0] + 4);
          v29 = swift_task_alloc();
          *(v0 + 752) = v29;
          *v29 = v0;
          v29[1] = sub_2541E186C;
          v22 = *(v0 + 696);
          v23 = v25;
          v24 = v27;
          goto LABEL_15;
        }

        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {
      v30 = *v20;
      v31 = *(v20 + 16);
      *(v0 + 48) = *(v20 + 32);
      *(v0 + 16) = v30;
      *(v0 + 32) = v31;
      if (*(v0 + 40))
      {
        goto LABEL_7;
      }
    }

    v32 = *(v0 + 448);
    v33 = v32 + *(*(v0 + 736) + 20);
    if (*(v33 + 24))
    {
      sub_254140708(v32 + *(*(v0 + 736) + 20), v0 + 56);
      if (*(v0 + 80))
      {
LABEL_12:
        v22 = __swift_destroy_boxed_opaque_existential_1((v0 + 56));
        goto LABEL_13;
      }
    }

    else
    {
      v38 = *v33;
      v39 = *(v33 + 16);
      *(v0 + 88) = *(v33 + 32);
      *(v0 + 72) = v39;
      *(v0 + 56) = v38;
      if (*(v0 + 80))
      {
        goto LABEL_12;
      }
    }

    sub_25424E1E8();
    v54 = *(v0 + 808);
    v40 = *(v0 + 680);
    v41 = *(v0 + 672);
    v42 = *(v0 + 584);
    v56 = *(v0 + 568);
    v58 = *(v0 + 664);
    v60 = *(v0 + 552);
    v62 = *(v0 + 560);
    v43 = *(v0 + 544);
    v44 = *(v0 + 536);
    v45 = *(v0 + 528);
    v46 = *(v0 + 504);
    sub_2541E3CDC(*(v0 + 448), v42, type metadata accessor for DigestQuery.AsyncEventSequence);
    sub_25424D898();
    v47 = swift_task_alloc();
    *(v47 + 16) = v42;
    *(v47 + 24) = v40;
    (*(v44 + 104))(v43, v54, v45);
    sub_25424E278();

    (*(v41 + 8))(v40, v58);
    sub_2541E3D44(v42, type metadata accessor for EventDigestQuery);
    *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB240, &qword_25425DD80);
    *(v0 + 128) = sub_25414081C(&qword_27F5BB248, &qword_27F5BB240, &qword_25425DD80);
    __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    sub_25424E178();
    v22 = (*(v62 + 8))(v56, v60);
    v48 = *(v0 + 120);
    if (*(v33 + 24))
    {
      v22 = __swift_destroy_boxed_opaque_existential_1(v33);
      if (v48)
      {
LABEL_21:
        v22 = sub_25412DC4C((v0 + 96), v33);
        goto LABEL_13;
      }
    }

    else if (v48)
    {
      goto LABEL_21;
    }

    v49 = *(v0 + 96);
    v50 = *(v0 + 112);
    *(v33 + 32) = *(v0 + 128);
    *v33 = v49;
    *(v33 + 16) = v50;
LABEL_13:
    v34 = *(v33 + 24);
    if (v34)
    {
      v35 = *(v33 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v33, *(v33 + 24));
      v36 = *(MEMORY[0x277D856D0] + 4);
      v37 = swift_task_alloc();
      *(v0 + 768) = v37;
      *v37 = v0;
      v37[1] = sub_2541E29D0;
      v22 = *(v0 + 496);
      v23 = v34;
      v24 = v35;
LABEL_15:

      return MEMORY[0x282200308](v22, v23, v24);
    }

LABEL_25:
    __break(1u);
    return MEMORY[0x282200308](v22, v23, v24);
  }

  (*(*(v0 + 712) + 56))(*(v0 + 440), 1, 1, *(v0 + 704));
  v7 = *(v0 + 728);
  v8 = *(v0 + 720);
  v9 = *(v0 + 696);
  v10 = *(v0 + 688);
  v11 = *(v0 + 680);
  v12 = *(v0 + 656);
  v13 = *(v0 + 648);
  v14 = *(v0 + 632);
  v15 = *(v0 + 624);
  v16 = *(v0 + 608);
  v51 = *(v0 + 584);
  v52 = *(v0 + 568);
  v53 = *(v0 + 544);
  v55 = *(v0 + 520);
  v57 = *(v0 + 496);
  v59 = *(v0 + 488);
  v61 = *(v0 + 472);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2541E186C()
{
  v2 = *(*v1 + 752);
  v5 = *v1;
  *(*v1 + 760) = v0;

  if (v0)
  {
    v3 = sub_2541E34FC;
  }

  else
  {
    v3 = sub_2541E1980;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2541E1980()
{
  v1 = *(v0 + 696);
  if ((*(*(v0 + 712) + 48))(v1, 1, *(v0 + 704)) != 1)
  {
    v13 = *(v0 + 728);
    v14 = *(v0 + 720);
    sub_2541E3BBC(v1, v13, type metadata accessor for SomeEvent);
    sub_2541E3CDC(v13, v14, type metadata accessor for SomeEvent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v16 = *(v0 + 720);
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v17 = *(v0 + 720);
        *(v0 + 280) = type metadata accessor for HomeActivityStateEvent(0);
        *(v0 + 288) = sub_2541E3C94(&qword_27F5B9190, type metadata accessor for HomeActivityStateEvent);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 256));
        sub_2541E3BBC(v17, boxed_opaque_existential_1, type metadata accessor for HomeActivityStateEvent);
        goto LABEL_34;
      }

      v26 = *(v0 + 632);
      v27 = *(v0 + 624);
      v28 = *(v0 + 616);
      sub_2541E3BBC(v16, v26, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
      sub_2541E3CDC(v26, v27, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
      v29 = swift_getEnumCaseMultiPayload();
      v30 = *(v0 + 624);
      if (v29)
      {
        if (v29 == 1)
        {
          *(v0 + 360) = type metadata accessor for EnergyKit.LoadSessionEvent(0);
          v31 = sub_2541E3C94(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent);
          v32 = type metadata accessor for EnergyKit.LoadSessionEvent;
        }

        else
        {
          *(v0 + 360) = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
          v31 = sub_2541E3C94(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
          v32 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
        }
      }

      else
      {
        *(v0 + 360) = type metadata accessor for EnergyKit.LoadEvent(0);
        v31 = sub_2541E3C94(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent);
        v32 = type metadata accessor for EnergyKit.LoadEvent;
      }

      v33 = v32;
      *(v0 + 368) = v31;
      v34 = __swift_allocate_boxed_opaque_existential_1((v0 + 336));
      sub_2541E3BBC(v30, v34, v33);
      v35 = *(v0 + 632);
      sub_25412DC4C((v0 + 336), v0 + 296);
      v36 = *(v0 + 320);
      v37 = *(v0 + 328);
      v38 = __swift_project_boxed_opaque_existential_1((v0 + 296), v36);
      *(v0 + 280) = v36;
      *(v0 + 288) = *(v37 + 16);
      v39 = __swift_allocate_boxed_opaque_existential_1((v0 + 256));
      (*(*(v36 - 8) + 16))(v39, v38, v36);
      sub_2541E3D44(v35, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
      v40 = (v0 + 296);
    }

    else
    {
      v19 = *(v0 + 656);
      v20 = *(v0 + 648);
      v21 = *(v0 + 640);
      sub_2541E3BBC(v16, v19, type metadata accessor for SomeAccessoryEvent);
      sub_2541E3CDC(v19, v20, type metadata accessor for SomeAccessoryEvent);
      v22 = swift_getEnumCaseMultiPayload();
      v23 = *(v0 + 648);
      if (v22 > 4)
      {
        if (v22 <= 6)
        {
          if (v22 == 5)
          {
            *(v0 + 400) = type metadata accessor for SmokeDetectorEvent();
            v24 = sub_2541E3C94(&qword_27F5B91B8, type metadata accessor for SmokeDetectorEvent);
            v25 = type metadata accessor for SmokeDetectorEvent;
          }

          else
          {
            *(v0 + 400) = type metadata accessor for ThermostatAutomationEvent(0);
            v24 = sub_2541E3C94(&qword_27F5B91B0, type metadata accessor for ThermostatAutomationEvent);
            v25 = type metadata accessor for ThermostatAutomationEvent;
          }
        }

        else if (v22 == 7)
        {
          *(v0 + 400) = type metadata accessor for ThermostatAutomationFailureEvent();
          v24 = sub_2541E3C94(&qword_27F5B91A8, type metadata accessor for ThermostatAutomationFailureEvent);
          v25 = type metadata accessor for ThermostatAutomationFailureEvent;
        }

        else if (v22 == 8)
        {
          *(v0 + 400) = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
          v24 = sub_2541E3C94(&qword_27F5B91A0, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
          v25 = type metadata accessor for ThermostatReducedEnergyAutomationEvent;
        }

        else
        {
          *(v0 + 400) = type metadata accessor for WindowEvent();
          v24 = sub_2541E3C94(&qword_27F5B9198, type metadata accessor for WindowEvent);
          v25 = type metadata accessor for WindowEvent;
        }
      }

      else if (v22 <= 1)
      {
        if (v22)
        {
          *(v0 + 400) = type metadata accessor for DoorEvent();
          v24 = sub_2541E3C94(&qword_27F5B91D8, type metadata accessor for DoorEvent);
          v25 = type metadata accessor for DoorEvent;
        }

        else
        {
          *(v0 + 400) = type metadata accessor for ContactSensorEvent();
          v24 = sub_2541E3C94(&qword_27F5B91E0, type metadata accessor for ContactSensorEvent);
          v25 = type metadata accessor for ContactSensorEvent;
        }
      }

      else if (v22 == 2)
      {
        *(v0 + 400) = type metadata accessor for GarageDoorEvent();
        v24 = sub_2541E3C94(&qword_27F5B91D0, type metadata accessor for GarageDoorEvent);
        v25 = type metadata accessor for GarageDoorEvent;
      }

      else if (v22 == 3)
      {
        *(v0 + 400) = type metadata accessor for LockEvent();
        v24 = sub_2541E3C94(&qword_27F5B91C8, type metadata accessor for LockEvent);
        v25 = type metadata accessor for LockEvent;
      }

      else
      {
        *(v0 + 400) = type metadata accessor for SecuritySystemEvent();
        v24 = sub_2541E3C94(&qword_27F5B91C0, type metadata accessor for SecuritySystemEvent);
        v25 = type metadata accessor for SecuritySystemEvent;
      }

      v41 = v25;
      *(v0 + 408) = v24;
      v42 = __swift_allocate_boxed_opaque_existential_1((v0 + 376));
      sub_2541E3BBC(v23, v42, v41);
      v43 = *(v0 + 656);
      v44 = *(v0 + 400);
      v45 = *(v0 + 408);
      v46 = __swift_project_boxed_opaque_existential_1((v0 + 376), v44);
      *(v0 + 280) = v44;
      *(v0 + 288) = *(v45 + 16);
      v47 = __swift_allocate_boxed_opaque_existential_1((v0 + 256));
      (*(*(v44 - 8) + 16))(v47, v46, v44);
      sub_2541E3D44(v43, type metadata accessor for SomeAccessoryEvent);
      v40 = (v0 + 376);
    }

    __swift_destroy_boxed_opaque_existential_1(v40);
LABEL_34:
    v48 = *(v0 + 688);
    v49 = *(v0 + 680);
    v50 = *(v0 + 672);
    v137 = *(v0 + 608);
    v141 = *(v0 + 664);
    v51 = *(v0 + 600);
    v52 = *(v0 + 584);
    v129 = *(v0 + 448);
    v133 = *(v0 + 592);
    v54 = *(v0 + 280);
    v53 = *(v0 + 288);
    __swift_project_boxed_opaque_existential_1((v0 + 256), v54);
    *(v0 + 240) = v54;
    v55 = *(v53 + 8);
    *(v0 + 248) = v55;
    __swift_allocate_boxed_opaque_existential_1((v0 + 216));
    (*(*(v54 - 8) + 16))();
    __swift_destroy_boxed_opaque_existential_1((v0 + 256));
    (*(v55 + 32))(v54, v55);
    __swift_destroy_boxed_opaque_existential_1((v0 + 216));
    sub_2541E3CDC(v129, v52, type metadata accessor for DigestQuery.AsyncEventSequence);
    v56 = type metadata accessor for EventDigestQuery.Configuration(0);
    (*(v51 + 16))(v137, v52 + *(v56 + 32), v133);
    sub_2541E3D44(v52, type metadata accessor for EventDigestQuery);
    sub_25424D1F8();
    LOBYTE(v53) = sub_25424D838();
    v57 = *(v50 + 8);
    v57(v49, v141);
    if (v53)
    {
      v58 = *(v0 + 728);
      v59 = *(v0 + 712);
      v60 = *(v0 + 704);
      v61 = *(v0 + 688);
      v62 = *(v0 + 664);
      v63 = *(v0 + 440);
      (*(*(v0 + 600) + 8))(*(v0 + 608), *(v0 + 592));
      v57(v61, v62);
      sub_2541E3D44(v58, type metadata accessor for SomeEvent);
      (*(v59 + 56))(v63, 1, 1, v60);
      goto LABEL_43;
    }

    v64 = *(v0 + 688);
    v65 = *(v0 + 680);
    v66 = *(v0 + 664);
    v67 = *(v0 + 608);
    v68 = *(v0 + 600);
    v69 = *(v0 + 592);
    sub_25424D1D8();
    v70 = sub_25424D828();
    v57(v65, v66);
    (*(v68 + 8))(v67, v69);
    v71 = (v57)(v64, v66);
    if ((v70 & 1) == 0)
    {
      v81 = *(v0 + 744);
      v82 = __OFADD__(v81, 1);
      v83 = v81 + 1;
      if (v82)
      {
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v84 = *(v0 + 728);
      v85 = *(v0 + 712);
      v86 = *(v0 + 704);
      v87 = *(v0 + 440);
      *(*(v0 + 448) + *(v0 + 800)) = v83;
      sub_2541E3BBC(v84, v87, type metadata accessor for SomeEvent);
      (*(v85 + 56))(v87, 0, 1, v86);
LABEL_43:
      v88 = *(v0 + 728);
      v89 = *(v0 + 720);
      v90 = *(v0 + 696);
      v91 = *(v0 + 688);
      v92 = *(v0 + 680);
      v93 = *(v0 + 656);
      v94 = *(v0 + 648);
      v95 = *(v0 + 632);
      v96 = *(v0 + 624);
      v97 = *(v0 + 608);
      v122 = *(v0 + 584);
      v124 = *(v0 + 568);
      v126 = *(v0 + 544);
      v130 = *(v0 + 520);
      v134 = *(v0 + 496);
      v138 = *(v0 + 488);
      v142 = *(v0 + 472);

      v12 = *(v0 + 8);
      goto LABEL_44;
    }

    sub_2541E3D44(*(v0 + 728), type metadata accessor for SomeEvent);
    v2 = *(v0 + 760);
    v74 = *(v0 + 448) + *(v0 + 804);
    if (*(v74 + 24))
    {
      sub_254140708(v74, v0 + 16);
      if (*(v0 + 40))
      {
        goto LABEL_39;
      }
    }

    else
    {
      v99 = *v74;
      v100 = *(v74 + 16);
      *(v0 + 48) = *(v74 + 32);
      *(v0 + 16) = v99;
      *(v0 + 32) = v100;
      if (*(v0 + 40))
      {
LABEL_39:
        v75 = *(v0 + 448) + *(v0 + 804);
        v71 = __swift_destroy_boxed_opaque_existential_1((v0 + 16));
        v76 = *(v75 + 24);
        if (v76)
        {
          v77 = *(v0 + 448) + *(v0 + 804);
          v78 = *(v77 + 32);
          __swift_mutable_project_boxed_opaque_existential_1(v77, *(v75 + 24));
          v79 = *(MEMORY[0x277D856D0] + 4);
          v80 = swift_task_alloc();
          *(v0 + 752) = v80;
          *v80 = v0;
          v80[1] = sub_2541E186C;
          v71 = *(v0 + 696);
          v72 = v76;
          v73 = v78;
          goto LABEL_53;
        }

LABEL_65:
        __break(1u);
        return MEMORY[0x282200308](v71, v72, v73);
      }
    }

LABEL_48:
    v101 = *(v0 + 448);
    v102 = v101 + *(*(v0 + 736) + 20);
    if (*(v102 + 24))
    {
      sub_254140708(v101 + *(*(v0 + 736) + 20), v0 + 56);
      if (*(v0 + 80))
      {
LABEL_50:
        v71 = __swift_destroy_boxed_opaque_existential_1((v0 + 56));
        goto LABEL_51;
      }
    }

    else
    {
      v107 = *v102;
      v108 = *(v102 + 16);
      *(v0 + 88) = *(v102 + 32);
      *(v0 + 72) = v108;
      *(v0 + 56) = v107;
      if (*(v0 + 80))
      {
        goto LABEL_50;
      }
    }

    sub_25424E1E8();
    if (v2)
    {
      goto LABEL_3;
    }

    v127 = *(v0 + 808);
    v109 = *(v0 + 680);
    v110 = *(v0 + 672);
    v111 = *(v0 + 584);
    v131 = *(v0 + 568);
    v135 = *(v0 + 664);
    v139 = *(v0 + 552);
    v143 = *(v0 + 560);
    v112 = *(v0 + 544);
    v113 = *(v0 + 536);
    v114 = *(v0 + 528);
    v115 = *(v0 + 504);
    sub_2541E3CDC(*(v0 + 448), v111, type metadata accessor for DigestQuery.AsyncEventSequence);
    sub_25424D898();
    v116 = swift_task_alloc();
    *(v116 + 16) = v111;
    *(v116 + 24) = v109;
    (*(v113 + 104))(v112, v127, v114);
    sub_25424E278();

    (*(v110 + 8))(v109, v135);
    sub_2541E3D44(v111, type metadata accessor for EventDigestQuery);
    *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB240, &qword_25425DD80);
    *(v0 + 128) = sub_25414081C(&qword_27F5BB248, &qword_27F5BB240, &qword_25425DD80);
    __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    sub_25424E178();
    v71 = (*(v143 + 8))(v131, v139);
    v117 = *(v0 + 120);
    if (*(v102 + 24))
    {
      v71 = __swift_destroy_boxed_opaque_existential_1(v102);
      if (v117)
      {
LABEL_60:
        v71 = sub_25412DC4C((v0 + 96), v102);
        goto LABEL_51;
      }
    }

    else if (v117)
    {
      goto LABEL_60;
    }

    v118 = *(v0 + 96);
    v119 = *(v0 + 112);
    *(v102 + 32) = *(v0 + 128);
    *v102 = v118;
    *(v102 + 16) = v119;
LABEL_51:
    v103 = *(v102 + 24);
    if (v103)
    {
      v104 = *(v102 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v102, *(v102 + 24));
      v105 = *(MEMORY[0x277D856D0] + 4);
      v106 = swift_task_alloc();
      *(v0 + 768) = v106;
      *v106 = v0;
      v106[1] = sub_2541E29D0;
      v71 = *(v0 + 496);
      v72 = v103;
      v73 = v104;
LABEL_53:

      return MEMORY[0x282200308](v71, v72, v73);
    }

    goto LABEL_64;
  }

  v2 = *(v0 + 760);
  sub_254132E5C(v1, &qword_27F5B9110, &qword_254254530);
  sub_25424E1E8();
  if (!v2)
  {
    goto LABEL_48;
  }

LABEL_3:
  v3 = *(v0 + 728);
  v4 = *(v0 + 720);
  v5 = *(v0 + 696);
  v6 = *(v0 + 688);
  v7 = *(v0 + 680);
  v8 = *(v0 + 656);
  v9 = *(v0 + 648);
  v10 = *(v0 + 632);
  v11 = *(v0 + 624);
  v120 = *(v0 + 608);
  v121 = *(v0 + 584);
  v123 = *(v0 + 568);
  v125 = *(v0 + 544);
  v128 = *(v0 + 520);
  v132 = *(v0 + 496);
  v136 = *(v0 + 488);
  v140 = *(v0 + 472);

  v12 = *(v0 + 8);
LABEL_44:

  return v12();
}

uint64_t sub_2541E29D0()
{
  v2 = *(*v1 + 768);
  v5 = *v1;
  *(*v1 + 776) = v0;

  if (v0)
  {
    v3 = sub_2541E3654;
  }

  else
  {
    v3 = sub_2541E2AE4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2541E2AE4()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 496);
  if ((*(*(v0 + 512) + 48))(v2, 1, v1) != 1)
  {
    v19 = *(v0 + 480);
    v18 = *(v0 + 488);
    v20 = *(v0 + 464);
    v108 = *(v0 + 472);
    v100 = v19;
    v104 = *(v0 + 456);
    sub_2541E3BBC(v2, *(v0 + 520), type metadata accessor for DigestRecord);
    v21 = *(v1 + 32);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B92D0, &qword_2542546F0);
    *(v0 + 200) = v22;
    *(v0 + 208) = sub_25414081C(&qword_27F5B92D8, &qword_27F5B92D0, &qword_2542546F0);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
    sub_25424D3D8();
    *(boxed_opaque_existential_1 + *(v19 + 36)) = 0x4000;
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5B92E8, &unk_254254700);
    *(boxed_opaque_existential_1 + *(v96 + 36)) = 1;
    *(boxed_opaque_existential_1 + *(v22 + 36)) = 0;
    v24 = *(v0 + 200);
    v25 = __swift_project_boxed_opaque_existential_1((v0 + 176), v24);
    v26 = *(v24 - 8);
    v27 = *(v26 + 64) + 15;
    v28 = swift_task_alloc();
    (*(v26 + 16))(v28, v25, v24);
    *(v0 + 160) = swift_getAssociatedTypeWitness();
    *(v0 + 168) = swift_getAssociatedConformanceWitness();
    v29 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
    sub_2541E3C24(v28, v18);
    (*(v20 + 16))(v108, v18, v104);
    sub_2541E3C94(&qword_27F5BB250, MEMORY[0x277CC91B0]);
    sub_25424E208();
    v30 = *(v18 + *(v100 + 36));
    v31 = sub_254132E5C(v18, &qword_27F5B92E0, &qword_2542546F8);
    if (v30 < 1)
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v34 = *(v0 + 520);
    v35 = *(v0 + 448) + *(v0 + 804);
    v36 = *(v0 + 416);
    v37 = *(v0 + 424);
    *(v0 + 792) = 1;
    v38 = *(v28 + *(v96 + 36));
    *(v0 + 814) = *(v0 + 817);
    *(v0 + 812) = *(v0 + 815);
    *(v0 + 785) = *(v0 + 793);
    *(v0 + 788) = *(v0 + 796);
    *(v0 + 784) = 1;
    v39 = *(v28 + *(v22 + 36));
    *v29 = v36;
    *(v29 + 1) = v37;
    v29[3] = v30;
    *(v29 + 2) = xmmword_254252DB0;
    v40 = MEMORY[0x277D84F90];
    v29[6] = 0;
    v29[7] = v40;
    v29[8] = 0;
    v29[9] = 0;
    *(v29 + 80) = 1;
    v41 = *(v0 + 812);
    *(v29 + 83) = *(v0 + 814);
    *(v29 + 81) = v41;
    *(v29 + 21) = 0;
    *(v29 + 88) = 1;
    v42 = *(v0 + 785);
    *(v29 + 23) = *(v0 + 788);
    *(v29 + 89) = v42;
    *(v29 + 6) = xmmword_254252DB0;
    *(v29 + 7) = xmmword_254252DB0;
    *(v29 + 8) = xmmword_254252DB0;
    *(v29 + 144) = v38;
    v29[19] = 0;
    v29[20] = 0;
    *(v29 + 168) = 2;
    v29[22] = v40;
    v29[23] = 0;
    v29[24] = 0;
    v29[25] = 0;
    *(v29 + 208) = 1;
    v29[27] = 0;
    *(v29 + 224) = v39;
    (*(v26 + 8))(v28, v24);
    sub_2541E3D44(v34, type metadata accessor for DigestRecord);

    v43 = *(v0 + 160);
    v44 = *(v0 + 804);
    v45 = *(v0 + 448);
    v46 = v45 + v44;
    if (*(v35 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1((v45 + v44));
      v46 = *(v0 + 448) + *(v0 + 804);
      if (v43)
      {
LABEL_9:
        sub_25412DC4C((v0 + 136), v46);
        goto LABEL_12;
      }
    }

    else if (v43)
    {
      goto LABEL_9;
    }

    v47 = *(v0 + 136);
    v48 = *(v0 + 152);
    *(v46 + 32) = *(v0 + 168);
    *v46 = v47;
    *(v46 + 16) = v48;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1((v0 + 176));
    v49 = *(v0 + 776);
    v50 = *(v0 + 448) + *(v0 + 804);
    if (*(v50 + 24))
    {
      sub_254140708(v50, v0 + 16);
      if (*(v0 + 40))
      {
        goto LABEL_14;
      }
    }

    else
    {
      v57 = *v50;
      v58 = *(v50 + 16);
      *(v0 + 48) = *(v50 + 32);
      *(v0 + 16) = v57;
      *(v0 + 32) = v58;
      if (*(v0 + 40))
      {
LABEL_14:
        v51 = *(v0 + 448) + *(v0 + 804);
        v31 = __swift_destroy_boxed_opaque_existential_1((v0 + 16));
        v52 = *(v51 + 24);
        if (v52)
        {
          v53 = *(v0 + 448) + *(v0 + 804);
          v54 = *(v53 + 32);
          __swift_mutable_project_boxed_opaque_existential_1(v53, *(v51 + 24));
          v55 = *(MEMORY[0x277D856D0] + 4);
          v56 = swift_task_alloc();
          *(v0 + 752) = v56;
          *v56 = v0;
          v56[1] = sub_2541E186C;
          v31 = *(v0 + 696);
          v32 = v52;
          v33 = v54;
          goto LABEL_22;
        }

        goto LABEL_34;
      }
    }

    v59 = *(v0 + 448);
    v60 = v59 + *(*(v0 + 736) + 20);
    if (*(v60 + 24))
    {
      sub_254140708(v59 + *(*(v0 + 736) + 20), v0 + 56);
      if (*(v0 + 80))
      {
LABEL_19:
        v31 = __swift_destroy_boxed_opaque_existential_1((v0 + 56));
        goto LABEL_20;
      }
    }

    else
    {
      v65 = *v60;
      v66 = *(v60 + 16);
      *(v0 + 88) = *(v60 + 32);
      *(v0 + 72) = v66;
      *(v0 + 56) = v65;
      if (*(v0 + 80))
      {
        goto LABEL_19;
      }
    }

    sub_25424E1E8();
    if (v49)
    {
      v67 = *(v0 + 728);
      v68 = *(v0 + 720);
      v69 = *(v0 + 696);
      v70 = *(v0 + 688);
      v71 = *(v0 + 680);
      v72 = *(v0 + 656);
      v73 = *(v0 + 648);
      v74 = *(v0 + 632);
      v75 = *(v0 + 624);
      v87 = *(v0 + 608);
      v89 = *(v0 + 584);
      v91 = *(v0 + 568);
      v93 = *(v0 + 544);
      v97 = *(v0 + 520);
      v101 = *(v0 + 496);
      v105 = *(v0 + 488);
      v109 = *(v0 + 472);

      v16 = *(v0 + 8);
      goto LABEL_3;
    }

    v94 = *(v0 + 808);
    v76 = *(v0 + 680);
    v77 = *(v0 + 672);
    v78 = *(v0 + 584);
    v98 = *(v0 + 568);
    v102 = *(v0 + 664);
    v106 = *(v0 + 552);
    v110 = *(v0 + 560);
    v79 = *(v0 + 544);
    v80 = *(v0 + 536);
    v81 = *(v0 + 528);
    v82 = *(v0 + 504);
    sub_2541E3CDC(*(v0 + 448), v78, type metadata accessor for DigestQuery.AsyncEventSequence);
    sub_25424D898();
    v83 = swift_task_alloc();
    *(v83 + 16) = v78;
    *(v83 + 24) = v76;
    (*(v80 + 104))(v79, v94, v81);
    sub_25424E278();

    (*(v77 + 8))(v76, v102);
    sub_2541E3D44(v78, type metadata accessor for EventDigestQuery);
    *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BB240, &qword_25425DD80);
    *(v0 + 128) = sub_25414081C(&qword_27F5BB248, &qword_27F5BB240, &qword_25425DD80);
    __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    sub_25424E178();
    v31 = (*(v110 + 8))(v98, v106);
    v84 = *(v0 + 120);
    if (*(v60 + 24))
    {
      v31 = __swift_destroy_boxed_opaque_existential_1(v60);
      if (v84)
      {
LABEL_30:
        v31 = sub_25412DC4C((v0 + 96), v60);
        goto LABEL_20;
      }
    }

    else if (v84)
    {
      goto LABEL_30;
    }

    v85 = *(v0 + 96);
    v86 = *(v0 + 112);
    *(v60 + 32) = *(v0 + 128);
    *v60 = v85;
    *(v60 + 16) = v86;
LABEL_20:
    v61 = *(v60 + 24);
    if (v61)
    {
      v62 = *(v60 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v60, *(v60 + 24));
      v63 = *(MEMORY[0x277D856D0] + 4);
      v64 = swift_task_alloc();
      *(v0 + 768) = v64;
      *v64 = v0;
      v64[1] = sub_2541E29D0;
      v31 = *(v0 + 496);
      v32 = v61;
      v33 = v62;
LABEL_22:

      return MEMORY[0x282200308](v31, v32, v33);
    }

LABEL_35:
    __break(1u);
    return MEMORY[0x282200308](v31, v32, v33);
  }

  v3 = *(v0 + 712);
  v4 = *(v0 + 704);
  v5 = *(v0 + 440);
  sub_254132E5C(v2, &unk_27F5BC800, &unk_25425DD60);
  (*(v3 + 56))(v5, 1, 1, v4);
  v6 = *(v0 + 728);
  v7 = *(v0 + 720);
  v8 = *(v0 + 696);
  v9 = *(v0 + 688);
  v10 = *(v0 + 680);
  v11 = *(v0 + 656);
  v12 = *(v0 + 648);
  v13 = *(v0 + 632);
  v14 = *(v0 + 624);
  v15 = *(v0 + 608);
  v88 = *(v0 + 584);
  v90 = *(v0 + 568);
  v92 = *(v0 + 544);
  v95 = *(v0 + 520);
  v99 = *(v0 + 496);
  v103 = *(v0 + 488);
  v107 = *(v0 + 472);

  v16 = *(v0 + 8);
LABEL_3:

  return v16();
}

uint64_t sub_2541E34FC()
{
  v20 = v0[95];
  v1 = v0[91];
  v2 = v0[90];
  v3 = v0[87];
  v4 = v0[86];
  v5 = v0[85];
  v6 = v0[82];
  v7 = v0[81];
  v8 = v0[79];
  v9 = v0[78];
  v10 = v0[76];
  v13 = v0[73];
  v14 = v0[71];
  v15 = v0[68];
  v16 = v0[65];
  v17 = v0[62];
  v18 = v0[61];
  v19 = v0[59];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2541E3654()
{
  v20 = v0[97];
  v1 = v0[91];
  v2 = v0[90];
  v3 = v0[87];
  v4 = v0[86];
  v5 = v0[85];
  v6 = v0[82];
  v7 = v0[81];
  v8 = v0[79];
  v9 = v0[78];
  v10 = v0[76];
  v13 = v0[73];
  v14 = v0[71];
  v15 = v0[68];
  v16 = v0[65];
  v17 = v0[62];
  v18 = v0[61];
  v19 = v0[59];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2541E37AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25412F724;

  return sub_2541E0DCC(a1);
}

uint64_t sub_2541E3844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_2541A78F4;

  return sub_2541E0DCC(a1);
}

uint64_t sub_2541E3908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a5;
  v12 = sub_25424D948();
  (*(*(v12 - 8) + 16))(a6, a1, v12);
  Base = type metadata accessor for QueryBase();
  v14 = Base[5];
  v15 = sub_25424D8B8();
  v16 = *(*(v15 - 8) + 16);
  v16(a6 + v14, a2, v15);
  v16(a6 + Base[6], a3, v15);
  *(a6 + Base[7]) = a4;
  *(a6 + Base[8]) = v11;
  result = type metadata accessor for DigestQuery(0);
  *(a6 + *(result + 20)) = 1;
  return result;
}

uint64_t sub_2541E3AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2541E3BBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2541E3C24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B92E0, &qword_2542546F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2541E3C94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2541E3CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2541E3D44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2541E3DCC()
{
  type metadata accessor for DigestQuery.AsyncEventSequence(319);
  if (v0 <= 0x3F)
  {
    sub_2541E3EA0(319, &qword_27F5BB268, &qword_27F5BB270, &qword_25425DDD8);
    if (v1 <= 0x3F)
    {
      sub_2541E3EA0(319, &qword_27F5BB278, &qword_27F5BB280, &qword_25425DDE0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2541E3EA0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_25424E598();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t static HMVCommands.submitTaskRequestForIdentifier(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2541E3F18, 0, 0);
}

uint64_t sub_2541E3F18()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_2541B244C;

  return sub_25412FDA0(sub_25412FDA0, sub_2541E40D8, v3);
}

void sub_2541E3FF0(void *a1, uint64_t a2)
{
  v4 = sub_25424DCA8();
  v6[4] = sub_2541E42D8;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2541ED26C;
  v6[3] = &block_descriptor_12;
  v5 = _Block_copy(v6);

  [a1 hmvutilSubmitTaskRequestForIdentifierWithIdentifier:v4 reply:v5];
  _Block_release(v5);
}

void sub_2541E40D8(void *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_2541E3FF0(a1, a2);
}

uint64_t sub_2541E40E0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  if (a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v9 = sub_25424E128();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a2;
    v10[5] = sub_25412F60C;
    v10[6] = v8;

    v11 = a1;
    v12 = &unk_254254328;
    v13 = v7;
    v14 = v10;
  }

  else
  {
    v15 = sub_25424E128();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a2;
    v16[5] = sub_25412F540;
    v16[6] = 0;

    v12 = &unk_254252CB0;
    v13 = v7;
    v14 = v16;
  }

  sub_25419CC1C(0, 0, v13, v12, v14);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2541E42F8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_25412DCA8(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_2541AE2C8(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = sub_25424E848();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_254132E5C(a1, &qword_27F5BB2C0, &qword_25425E0F8);
    sub_2541E9E2C(a2, v10);
    v8 = sub_25424E848();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_254132E5C(v10, &qword_27F5BB2C0, &qword_25425E0F8);
  }

  return result;
}

void EventRecord.init(from:)(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_25424D8B8();
  v71 = *(v4 - 8);
  v5 = *(v71 + 64);
  MEMORY[0x28223BE20](v4);
  v74 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EventRecord.DecodedEvent(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v75 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v63 - v12;
  v14 = sub_25424D948();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v73 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v72 = &v63 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v76 = &v63 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v63 - v23;
  if (sub_25424E558() == 0x746E657645 && v25 == 0xE500000000000000)
  {
  }

  else
  {
    v26 = sub_25424EAB8();

    if ((v26 & 1) == 0)
    {
      v37 = type metadata accessor for EventRecord(0);
      *v81 = 0;
      *&v81[8] = 0xE000000000000000;
      sub_25424E688();

      *v81 = 0xD00000000000001FLL;
      *&v81[8] = 0x8000000254250D10;
      v42 = sub_25424E558();
      MEMORY[0x259C05CA0](v42);

      v36 = *&v81[8];
      v35 = *v81;
      goto LABEL_10;
    }
  }

  v69 = a2;
  v70 = v4;
  v77 = v24;
  v27 = [a1 recordID];
  v28 = [v27 recordName];

  sub_25424DCB8();
  sub_25424D8C8();

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_254132E5C(v13, &unk_27F5B8E50, &qword_254254390);
    v29 = type metadata accessor for EventRecord(0);
    *v81 = 0;
    *&v81[8] = 0xE000000000000000;
    sub_25424E688();

    *v81 = 0xD00000000000002FLL;
    *&v81[8] = 0x8000000254250D30;
    v30 = [a1 recordID];
    v31 = [v30 recordName];

    v32 = sub_25424DCB8();
    v34 = v33;

    MEMORY[0x259C05CA0](v32, v34);

    v36 = *&v81[8];
    v35 = *v81;
    v37 = v29 | 0x8000000000000000;
LABEL_10:
    sub_2541BB760();
    swift_allocError();
    *v43 = v37;
    v43[1] = v35;
    v43[2] = v36;
    swift_willThrow();

    return;
  }

  v38 = v77;
  (*(v15 + 32))(v77, v13, v14);
  v39 = [a1 encryptedValues];
  v40 = v84;
  v41 = sub_25422F9F4(1, v39);
  if (v40)
  {
    swift_unknownObjectRelease();

    (*(v15 + 8))(v38, v14);
  }

  else
  {
    v44 = v41;
    EventRecord.DataType.init(rawValue:)(v41);
    v45 = v81[0];
    if (v81[0] == 15)
    {
      v46 = type metadata accessor for EventRecord(0);
      *v81 = 0;
      *&v81[8] = 0xE000000000000000;
      sub_25424E688();

      *v81 = 0xD000000000000020;
      *&v81[8] = 0x80000002542513C0;
      v78[0] = v44;
      v47 = sub_25424EA58();
      MEMORY[0x259C05CA0](v47);

      v48 = *v81;
      sub_2541BB760();
      swift_allocError();
      *v49 = v46 | 0x2000000000000000;
      *(v49 + 8) = v48;
      swift_willThrow();
      swift_unknownObjectRelease();

      (*(v15 + 8))(v77, v14);
    }

    else
    {
      swift_unknownObjectRetain();
      sub_25422FC64(0, v39, v81);
      swift_unknownObjectRelease();
      v50 = *v81;
      v67 = *(v15 + 16);
      v67(v76, v77, v14);
      v81[0] = v45;
      *&v81[8] = v50;
      v68 = *(&v50 + 1);
      v84 = v50;
      sub_254140660(v50, *(&v50 + 1));
      static EventRecord.decodeEvent(encoded:retainEncodedEvent:)(v81, 0, v75);
      v67(v72, v76, v14);
      EventRecord.DecodedEvent.anyEvent.getter(v81);
      v65 = v82;
      v66 = v39;
      v51 = v83;
      __swift_project_boxed_opaque_existential_1(v81, v82);
      (*(v51 + 40))(v65, v51);
      EventRecord.DecodedEvent.anyEvent.getter(v78);
      v52 = v79;
      v53 = v80;
      __swift_project_boxed_opaque_existential_1(v78, v79);
      (*(v53 + 32))(v52, v53);
      sub_254140660(v84, v68);
      v64 = EventRecord.DecodedEvent.tags.getter();
      v54 = v69;
      v55 = v67;
      v67(v69, v72, v14);
      v56 = type metadata accessor for EventRecord(0);
      v55(&v54[v56[5]], v73, v14);
      v57 = v71;
      (*(v71 + 16))(&v54[v56[6]], v74, v70);
      v58 = v56;
      v65 = v56;
      v54[v56[7]] = v45;
      v59 = &v54[v56[8]];
      v60 = v84;
      v61 = v68;
      *v59 = v84;
      *(v59 + 1) = v61;
      *&v54[v58[9]] = v64;
      type metadata accessor for Configuration();
      v67 = static Configuration.cloudKitRecordDateCoalescingWindowSeconds.getter();
      sub_254134D04(v60, v61);
      swift_unknownObjectRelease();

      sub_254134D04(v60, v61);
      (*(v57 + 8))(v74, v70);
      v62 = *(v15 + 8);
      v62(v73, v14);
      v62(v72, v14);
      sub_2541E9064(v75, type metadata accessor for EventRecord.DecodedEvent);
      v62(v76, v14);
      v62(v77, v14);
      *&v54[*(v65 + 40)] = v67;
      __swift_destroy_boxed_opaque_existential_1(v78);
      __swift_destroy_boxed_opaque_existential_1(v81);
    }
  }
}

HomeKitEvents::EventRecord::DataType_optional __swiftcall EventRecord.DataType.init(rawValue:)(Swift::Int64 rawValue)
{
  if ((rawValue - 1) > 0x24)
  {
    *v1 = 15;
  }

  else
  {
    *v1 = byte_25425E102[rawValue - 1];
  }

  return rawValue;
}

uint64_t static EventRecord.decodeEvent(encoded:retainEncodedEvent:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  switch(*a1)
  {
    case 1:
      result = sub_2541E66A4(1, v5, v6, a2 & 1, a3);
      break;
    case 2:
      result = sub_2541E69D4(2, v5, v6, a2 & 1, a3);
      break;
    case 3:
      result = sub_2541E6D04(3, v5, v6, a2 & 1, a3);
      break;
    case 4:
      result = sub_2541E7034(4, v5, v6, a2 & 1, a3);
      break;
    case 5:
      result = sub_2541E7364(5, v5, v6, a2 & 1, a3);
      break;
    case 6:
      result = sub_2541E7694(6, v5, v6, a2 & 1, a3);
      break;
    case 7:
      v8 = sub_25424D168();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      sub_25424D158();
      type metadata accessor for FakeEvent();
      sub_2541E9F08(&qword_27F5BA258, type metadata accessor for FakeEvent);
      sub_25424D138();

      if (!v3)
      {
        type metadata accessor for EventRecord.DecodedEvent(0);
        result = swift_storeEnumTagMultiPayload();
      }

      break;
    case 8:
      result = sub_2541E79C4(8, v5, v6, a2 & 1, a3);
      break;
    case 9:
      result = sub_2541E866C(9, v5, v6, a2 & 1, a3);
      break;
    case 0xA:
      result = sub_2541E899C(10, v5, v6, a2 & 1, a3);
      break;
    case 0xB:
      result = sub_2541E8CCC(11, v5, v6, a2 & 1, a3);
      break;
    case 0xC:
      result = sub_2541E7CDC(12, v5, v6, a2 & 1, a3);
      break;
    case 0xD:
      result = sub_2541E833C(13, v5, v6, a2 & 1, a3);
      break;
    case 0xE:
      result = sub_2541E800C(14, v5, v6, a2 & 1, a3);
      break;
    default:
      result = sub_2541E6374(0, v5, v6, a2 & 1, a3);
      break;
  }

  return result;
}

uint64_t static EventRecord.encodeEvent(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25424D188();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for EventRecord.DecodedEvent(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  v14 = type metadata accessor for SomeEvent();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v49 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v41 = &v40 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v40 - v20;
  sub_2541E8FFC(a1, v13, type metadata accessor for EventRecord.DecodedEvent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2541E9064(v13, type metadata accessor for EventRecord.DecodedEvent);
  }

  else
  {
    v40 = v11;
    v22 = a2;
    sub_2541E90C4(v13, v21, type metadata accessor for SomeEvent);
    sub_2541DA834(v46);
    v23 = v47;
    v24 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    (*(v24 + 56))(&v42, v23, v24);
    sub_2541E9064(v21, type metadata accessor for SomeEvent);
    if (v42 != 15)
    {
      v37 = v43;
      *v22 = v42;
      *(v22 + 8) = v37;
      return __swift_destroy_boxed_opaque_existential_1(v46);
    }

    __swift_destroy_boxed_opaque_existential_1(v46);
    a2 = v22;
    v11 = v40;
  }

  EventRecord.DecodedEvent.anyEvent.getter(v46);
  v25 = v47;
  v26 = v48;
  v27 = __swift_project_boxed_opaque_existential_1(v46, v47);
  v44 = v25;
  v45 = *(v26 + 16);
  v28 = __swift_allocate_boxed_opaque_existential_1(&v42);
  (*(*(v25 - 8) + 16))(v28, v27, v25);
  v29 = sub_25424D1C8();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  sub_25424D1B8();
  sub_25424D178();
  sub_25424D198();
  __swift_project_boxed_opaque_existential_1(&v42, v44);
  v32 = sub_25424D1A8();
  v34 = v33;

  __swift_destroy_boxed_opaque_existential_1(&v42);
  result = __swift_destroy_boxed_opaque_existential_1(v46);
  if (!v2)
  {
    sub_2541E8FFC(a1, v11, type metadata accessor for EventRecord.DecodedEvent);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      result = sub_2541E9064(v11, type metadata accessor for EventRecord.DecodedEvent);
      v36 = 7;
    }

    else
    {
      v38 = v41;
      sub_2541E90C4(v11, v41, type metadata accessor for SomeEvent);
      v39 = v49;
      sub_2541E8FFC(v38, v49, type metadata accessor for SomeEvent);
      EventRecord.DataType.init(someEvent:)(v39, v46);
      result = sub_2541E9064(v38, type metadata accessor for SomeEvent);
      v36 = v46[0];
    }

    *a2 = v36;
    *(a2 + 8) = v32;
    *(a2 + 16) = v34;
  }

  return result;
}

uint64_t EventRecord.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D948();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EventRecord.home.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventRecord(0) + 20);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EventRecord.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventRecord(0) + 24);
  v4 = sub_25424D8B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EventRecord.dataType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventRecord(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t EventRecord.data.getter()
{
  v1 = v0 + *(type metadata accessor for EventRecord(0) + 32);
  v2 = *v1;
  sub_254140660(*v1, *(v1 + 8));
  return v2;
}

uint64_t EventRecord.tags.getter()
{
  v1 = *(v0 + *(type metadata accessor for EventRecord(0) + 36));
}

uint64_t EventRecord.init(identifier:home:date:dataType:data:tags:coalescingWindowSeconds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, id a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v24 = *a4;
  v14 = sub_25424D948();
  v15 = *(v14 - 8);
  v16 = *(v15 + 16);
  v16(a9, a1, v14);
  v17 = type metadata accessor for EventRecord(0);
  v16(a9 + v17[5], a2, v14);
  v18 = v17[6];
  v19 = sub_25424D8B8();
  v20 = *(v19 - 8);
  (*(v20 + 16))(a9 + v18, a3, v19);
  *(a9 + v17[7]) = v24;
  v21 = (a9 + v17[8]);
  *v21 = a5;
  v21[1] = a6;
  *(a9 + v17[9]) = a7;
  if (a10)
  {
    type metadata accessor for Configuration();
    a8 = static Configuration.cloudKitRecordDateCoalescingWindowSeconds.getter();
  }

  (*(v20 + 8))(a3, v19);
  v22 = *(v15 + 8);
  v22(a2, v14);
  result = (v22)(a1, v14);
  *(a9 + v17[10]) = a8;
  return result;
}

uint64_t EventRecord.init(identifier:encoded:coalescingWindowSeconds:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v60 = a4;
  v61 = a3;
  v62 = a5;
  v8 = type metadata accessor for EventRecord(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v59 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_25424D8B8();
  v64 = *(v58 - 8);
  v11 = *(v64 + 64);
  MEMORY[0x28223BE20](v58);
  v63 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25424D948();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v71 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - v18;
  v20 = type metadata accessor for EventRecord.DecodedEvent(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a2;
  v25 = *(a2 + 2);
  v26 = *(a2 + 1);
  v57 = v24;
  LOBYTE(v68[0]) = v24;
  v68[1] = v26;
  v68[2] = v25;
  static EventRecord.decodeEvent(encoded:retainEncodedEvent:)(v68, 0, v23);
  if (v5)
  {
    (*(v14 + 8))(a1, v13);
    return sub_254134D04(v26, v25);
  }

  else
  {
    v52 = 0;
    v50 = v14;
    v49 = *(v14 + 16);
    v54 = a1;
    v49(v19, a1, v13);
    EventRecord.DecodedEvent.anyEvent.getter(v68);
    v55 = v8;
    v29 = v69;
    v28 = v70;
    __swift_project_boxed_opaque_existential_1(v68, v69);
    (*(v28 + 40))(v29, v28);
    EventRecord.DecodedEvent.anyEvent.getter(v65);
    v30 = v66;
    v31 = v67;
    __swift_project_boxed_opaque_existential_1(v65, v66);
    v32 = *(v31 + 32);
    v56 = v26;
    v33 = v63;
    v34 = v30;
    v35 = v55;
    v32(v34, v31);
    sub_254140660(v56, v25);
    v36 = EventRecord.DecodedEvent.tags.getter();
    v37 = v59;
    v51 = v19;
    v38 = v19;
    v39 = v49;
    v49(v59, v38, v13);
    v40 = v37 + v35[5];
    v53 = v13;
    v39(v40, v71, v13);
    v41 = v61;
    v42 = v33;
    v43 = v56;
    v44 = v58;
    (*(v64 + 16))(v37 + v35[6], v42, v58);
    *(v37 + v35[7]) = v57;
    v45 = (v37 + v35[8]);
    *v45 = v43;
    v45[1] = v25;
    *(v37 + v35[9]) = v36;
    if (v60)
    {
      type metadata accessor for Configuration();
      v41 = static Configuration.cloudKitRecordDateCoalescingWindowSeconds.getter();
    }

    sub_254134D04(v43, v25);
    v46 = *(v50 + 8);
    v47 = v53;
    v46(v54, v53);
    (*(v64 + 8))(v63, v44);
    v46(v71, v47);
    v46(v51, v47);
    sub_2541E9064(v23, type metadata accessor for EventRecord.DecodedEvent);
    *(v37 + v35[10]) = v41;
    sub_2541E90C4(v37, v62, type metadata accessor for EventRecord);
    __swift_destroy_boxed_opaque_existential_1(v65);
    return __swift_destroy_boxed_opaque_existential_1(v68);
  }
}

uint64_t EventRecord.DecodedEvent.anyEvent.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SomeEvent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EventRecord.DecodedEvent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2541E8FFC(v2, v11, type metadata accessor for EventRecord.DecodedEvent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    a1[3] = type metadata accessor for FakeEvent();
    a1[4] = sub_2541E9F08(&qword_27F5BA250, type metadata accessor for FakeEvent);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    return sub_2541E90C4(v11, boxed_opaque_existential_1, type metadata accessor for FakeEvent);
  }

  else
  {
    sub_2541E90C4(v11, v7, type metadata accessor for SomeEvent);
    sub_2541DA834(v19);
    v14 = v20;
    v15 = v21;
    v16 = __swift_project_boxed_opaque_existential_1(v19, v20);
    a1[3] = v14;
    a1[4] = *(v15 + 8);
    v17 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(*(v14 - 8) + 16))(v17, v16, v14);
    sub_2541E9064(v7, type metadata accessor for SomeEvent);
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }
}

uint64_t EventRecord.DecodedEvent.tags.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FakeEvent();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SomeEvent();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EventRecord.DecodedEvent(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v19[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2541E8FFC(v1, v13, type metadata accessor for EventRecord.DecodedEvent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2541E90C4(v13, v5, type metadata accessor for FakeEvent);
    v14 = FakeEvent.tags.getter();
    sub_2541E9064(v5, type metadata accessor for FakeEvent);
  }

  else
  {
    sub_2541E90C4(v13, v9, type metadata accessor for SomeEvent);
    sub_2541DA834(v19);
    v15 = v20;
    v16 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v14 = (*(v16 + 48))(v15, v16);
    sub_2541E9064(v9, type metadata accessor for SomeEvent);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  return v14;
}

uint64_t EventRecord.DataType.init(fakeEvent:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2541E9064(a1, type metadata accessor for FakeEvent);
  *a2 = 7;
  return result;
}

uint64_t EventRecord.DataType.init(someEvent:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for EnergyKit.SomeEnergyKitEvent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SomeAccessoryEvent();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SomeEvent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      result = sub_2541E9064(a1, type metadata accessor for SomeEvent);
      v14 = 8;
    }

    else
    {
      sub_2541E90C4(a1, v7, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
      v16 = swift_getEnumCaseMultiPayload();
      result = sub_2541E9064(v7, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
      v14 = v16 + 9;
    }
  }

  else
  {
    sub_2541E90C4(a1, v11, type metadata accessor for SomeAccessoryEvent);
    v15 = swift_getEnumCaseMultiPayload();
    result = sub_2541E9064(v11, type metadata accessor for SomeAccessoryEvent);
    v14 = byte_25425E127[v15];
  }

  *a2 = v14;
  return result;
}

uint64_t sub_2541E6374@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v27 = a1;
  v26 = a5;
  v28 = type metadata accessor for LockEvent();
  v8 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v29 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - v12;
  v14 = sub_25424E848();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25424D168();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_25424D158();
  if (a4)
  {
    sub_25424E838();
    result = (*(v15 + 48))(v13, 1, v14);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v15 + 32))(v18, v13, v14);
    v33 = a3;
    v34 = &type metadata for EventRecord.EncodedEvent;
    v31[0] = v27;
    v32 = a2;
    sub_254140660(a2, a3);
    v23 = sub_25424D148();
    sub_2541E42F8(v31, v18);
    v23(v30, 0);
  }

  sub_2541E9F08(&qword_27F5B8E98, type metadata accessor for LockEvent);
  v24 = v29;
  v25 = v35;
  sub_25424D138();

  if (!v25)
  {
    sub_2541E90C4(v24, v26, type metadata accessor for LockEvent);
    type metadata accessor for SomeAccessoryEvent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SomeEvent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EventRecord.DecodedEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_2541E66A4@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v27 = a1;
  v26 = a5;
  v28 = type metadata accessor for ContactSensorEvent();
  v8 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v29 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - v12;
  v14 = sub_25424E848();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25424D168();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_25424D158();
  if (a4)
  {
    sub_25424E838();
    result = (*(v15 + 48))(v13, 1, v14);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v15 + 32))(v18, v13, v14);
    v33 = a3;
    v34 = &type metadata for EventRecord.EncodedEvent;
    v31[0] = v27;
    v32 = a2;
    sub_254140660(a2, a3);
    v23 = sub_25424D148();
    sub_2541E42F8(v31, v18);
    v23(v30, 0);
  }

  sub_2541E9F08(&qword_27F5BB2C8, type metadata accessor for ContactSensorEvent);
  v24 = v29;
  v25 = v35;
  sub_25424D138();

  if (!v25)
  {
    sub_2541E90C4(v24, v26, type metadata accessor for ContactSensorEvent);
    type metadata accessor for SomeAccessoryEvent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SomeEvent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EventRecord.DecodedEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_2541E69D4@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v27 = a1;
  v26 = a5;
  v28 = type metadata accessor for DoorEvent();
  v8 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v29 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - v12;
  v14 = sub_25424E848();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25424D168();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_25424D158();
  if (a4)
  {
    sub_25424E838();
    result = (*(v15 + 48))(v13, 1, v14);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v15 + 32))(v18, v13, v14);
    v33 = a3;
    v34 = &type metadata for EventRecord.EncodedEvent;
    v31[0] = v27;
    v32 = a2;
    sub_254140660(a2, a3);
    v23 = sub_25424D148();
    sub_2541E42F8(v31, v18);
    v23(v30, 0);
  }

  sub_2541E9F08(&qword_27F5BB2D0, type metadata accessor for DoorEvent);
  v24 = v29;
  v25 = v35;
  sub_25424D138();

  if (!v25)
  {
    sub_2541E90C4(v24, v26, type metadata accessor for DoorEvent);
    type metadata accessor for SomeAccessoryEvent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SomeEvent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EventRecord.DecodedEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_2541E6D04@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v27 = a1;
  v26 = a5;
  v28 = type metadata accessor for GarageDoorEvent();
  v8 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v29 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - v12;
  v14 = sub_25424E848();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25424D168();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_25424D158();
  if (a4)
  {
    sub_25424E838();
    result = (*(v15 + 48))(v13, 1, v14);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v15 + 32))(v18, v13, v14);
    v33 = a3;
    v34 = &type metadata for EventRecord.EncodedEvent;
    v31[0] = v27;
    v32 = a2;
    sub_254140660(a2, a3);
    v23 = sub_25424D148();
    sub_2541E42F8(v31, v18);
    v23(v30, 0);
  }

  sub_2541E9F08(qword_27F5BB2D8, type metadata accessor for GarageDoorEvent);
  v24 = v29;
  v25 = v35;
  sub_25424D138();

  if (!v25)
  {
    sub_2541E90C4(v24, v26, type metadata accessor for GarageDoorEvent);
    type metadata accessor for SomeAccessoryEvent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SomeEvent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EventRecord.DecodedEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_2541E7034@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v27 = a1;
  v26 = a5;
  v28 = type metadata accessor for SecuritySystemEvent();
  v8 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v29 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - v12;
  v14 = sub_25424E848();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25424D168();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_25424D158();
  if (a4)
  {
    sub_25424E838();
    result = (*(v15 + 48))(v13, 1, v14);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v15 + 32))(v18, v13, v14);
    v33 = a3;
    v34 = &type metadata for EventRecord.EncodedEvent;
    v31[0] = v27;
    v32 = a2;
    sub_254140660(a2, a3);
    v23 = sub_25424D148();
    sub_2541E42F8(v31, v18);
    v23(v30, 0);
  }

  sub_2541E9F08(&qword_27F5BA128, type metadata accessor for SecuritySystemEvent);
  v24 = v29;
  v25 = v35;
  sub_25424D138();

  if (!v25)
  {
    sub_2541E90C4(v24, v26, type metadata accessor for SecuritySystemEvent);
    type metadata accessor for SomeAccessoryEvent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SomeEvent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EventRecord.DecodedEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_2541E7364@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v27 = a1;
  v26 = a5;
  v28 = type metadata accessor for SmokeDetectorEvent();
  v8 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v29 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - v12;
  v14 = sub_25424E848();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25424D168();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_25424D158();
  if (a4)
  {
    sub_25424E838();
    result = (*(v15 + 48))(v13, 1, v14);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v15 + 32))(v18, v13, v14);
    v33 = a3;
    v34 = &type metadata for EventRecord.EncodedEvent;
    v31[0] = v27;
    v32 = a2;
    sub_254140660(a2, a3);
    v23 = sub_25424D148();
    sub_2541E42F8(v31, v18);
    v23(v30, 0);
  }

  sub_2541E9F08(&qword_27F5BACE8, type metadata accessor for SmokeDetectorEvent);
  v24 = v29;
  v25 = v35;
  sub_25424D138();

  if (!v25)
  {
    sub_2541E90C4(v24, v26, type metadata accessor for SmokeDetectorEvent);
    type metadata accessor for SomeAccessoryEvent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SomeEvent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EventRecord.DecodedEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_2541E7694@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v27 = a1;
  v26 = a5;
  v28 = type metadata accessor for WindowEvent();
  v8 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v29 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - v12;
  v14 = sub_25424E848();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25424D168();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_25424D158();
  if (a4)
  {
    sub_25424E838();
    result = (*(v15 + 48))(v13, 1, v14);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v15 + 32))(v18, v13, v14);
    v33 = a3;
    v34 = &type metadata for EventRecord.EncodedEvent;
    v31[0] = v27;
    v32 = a2;
    sub_254140660(a2, a3);
    v23 = sub_25424D148();
    sub_2541E42F8(v31, v18);
    v23(v30, 0);
  }

  sub_2541E9F08(&qword_27F5BB1A8, type metadata accessor for WindowEvent);
  v24 = v29;
  v25 = v35;
  sub_25424D138();

  if (!v25)
  {
    sub_2541E90C4(v24, v26, type metadata accessor for WindowEvent);
    type metadata accessor for SomeAccessoryEvent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SomeEvent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EventRecord.DecodedEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_2541E79C4@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v27 = a1;
  v26 = a5;
  v28 = type metadata accessor for HomeActivityStateEvent(0);
  v8 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v29 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - v12;
  v14 = sub_25424E848();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25424D168();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_25424D158();
  if (a4)
  {
    sub_25424E838();
    result = (*(v15 + 48))(v13, 1, v14);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v15 + 32))(v18, v13, v14);
    v33 = a3;
    v34 = &type metadata for EventRecord.EncodedEvent;
    v31[0] = v27;
    v32 = a2;
    sub_254140660(a2, a3);
    v23 = sub_25424D148();
    sub_2541E42F8(v31, v18);
    v23(v30, 0);
  }

  sub_2541E9F08(&qword_27F5B9C78, type metadata accessor for HomeActivityStateEvent);
  v24 = v29;
  v25 = v35;
  sub_25424D138();

  if (!v25)
  {
    sub_2541E90C4(v24, v26, type metadata accessor for HomeActivityStateEvent);
    type metadata accessor for SomeEvent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EventRecord.DecodedEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_2541E7CDC@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v27 = a1;
  v26 = a5;
  v28 = type metadata accessor for ThermostatAutomationEvent(0);
  v8 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v29 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - v12;
  v14 = sub_25424E848();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25424D168();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_25424D158();
  if (a4)
  {
    sub_25424E838();
    result = (*(v15 + 48))(v13, 1, v14);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v15 + 32))(v18, v13, v14);
    v33 = a3;
    v34 = &type metadata for EventRecord.EncodedEvent;
    v31[0] = v27;
    v32 = a2;
    sub_254140660(a2, a3);
    v23 = sub_25424D148();
    sub_2541E42F8(v31, v18);
    v23(v30, 0);
  }

  sub_2541E9F08(&qword_27F5B9830, type metadata accessor for ThermostatAutomationEvent);
  v24 = v29;
  v25 = v35;
  sub_25424D138();

  if (!v25)
  {
    sub_2541E90C4(v24, v26, type metadata accessor for ThermostatAutomationEvent);
    type metadata accessor for SomeAccessoryEvent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SomeEvent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EventRecord.DecodedEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_2541E800C@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v27 = a1;
  v26 = a5;
  v28 = type metadata accessor for ThermostatAutomationFailureEvent();
  v8 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v29 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - v12;
  v14 = sub_25424E848();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25424D168();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_25424D158();
  if (a4)
  {
    sub_25424E838();
    result = (*(v15 + 48))(v13, 1, v14);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v15 + 32))(v18, v13, v14);
    v33 = a3;
    v34 = &type metadata for EventRecord.EncodedEvent;
    v31[0] = v27;
    v32 = a2;
    sub_254140660(a2, a3);
    v23 = sub_25424D148();
    sub_2541E42F8(v31, v18);
    v23(v30, 0);
  }

  sub_2541E9F08(&qword_27F5BAB90, type metadata accessor for ThermostatAutomationFailureEvent);
  v24 = v29;
  v25 = v35;
  sub_25424D138();

  if (!v25)
  {
    sub_2541E90C4(v24, v26, type metadata accessor for ThermostatAutomationFailureEvent);
    type metadata accessor for SomeAccessoryEvent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SomeEvent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EventRecord.DecodedEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_2541E833C@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v27 = a1;
  v26 = a5;
  v28 = type metadata accessor for ThermostatReducedEnergyAutomationEvent(0);
  v8 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v29 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - v12;
  v14 = sub_25424E848();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25424D168();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_25424D158();
  if (a4)
  {
    sub_25424E838();
    result = (*(v15 + 48))(v13, 1, v14);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v15 + 32))(v18, v13, v14);
    v33 = a3;
    v34 = &type metadata for EventRecord.EncodedEvent;
    v31[0] = v27;
    v32 = a2;
    sub_254140660(a2, a3);
    v23 = sub_25424D148();
    sub_2541E42F8(v31, v18);
    v23(v30, 0);
  }

  sub_2541E9F08(&qword_27F5BA858, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
  v24 = v29;
  v25 = v35;
  sub_25424D138();

  if (!v25)
  {
    sub_2541E90C4(v24, v26, type metadata accessor for ThermostatReducedEnergyAutomationEvent);
    type metadata accessor for SomeAccessoryEvent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SomeEvent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EventRecord.DecodedEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_2541E866C@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v27 = a1;
  v26 = a5;
  Event = type metadata accessor for EnergyKit.LoadEvent(0);
  v8 = *(*(Event - 8) + 64);
  MEMORY[0x28223BE20](Event);
  v29 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - v12;
  v14 = sub_25424E848();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25424D168();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_25424D158();
  if (a4)
  {
    sub_25424E838();
    result = (*(v15 + 48))(v13, 1, v14);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v15 + 32))(v18, v13, v14);
    v33 = a3;
    v34 = &type metadata for EventRecord.EncodedEvent;
    v31[0] = v27;
    v32 = a2;
    sub_254140660(a2, a3);
    v23 = sub_25424D148();
    sub_2541E42F8(v31, v18);
    v23(v30, 0);
  }

  sub_2541E9F08(&qword_27F5B8B48, type metadata accessor for EnergyKit.LoadEvent);
  v24 = v29;
  v25 = v35;
  sub_25424D138();

  if (!v25)
  {
    sub_2541E90C4(v24, v26, type metadata accessor for EnergyKit.LoadEvent);
    type metadata accessor for EnergyKit.SomeEnergyKitEvent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SomeEvent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EventRecord.DecodedEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_2541E899C@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v27 = a1;
  v26 = a5;
  SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
  v8 = *(*(SessionEvent - 8) + 64);
  MEMORY[0x28223BE20](SessionEvent);
  v29 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - v12;
  v14 = sub_25424E848();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25424D168();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_25424D158();
  if (a4)
  {
    sub_25424E838();
    result = (*(v15 + 48))(v13, 1, v14);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v15 + 32))(v18, v13, v14);
    v33 = a3;
    v34 = &type metadata for EventRecord.EncodedEvent;
    v31[0] = v27;
    v32 = a2;
    sub_254140660(a2, a3);
    v23 = sub_25424D148();
    sub_2541E42F8(v31, v18);
    v23(v30, 0);
  }

  sub_2541E9F08(&qword_27F5BA360, type metadata accessor for EnergyKit.LoadSessionEvent);
  v24 = v29;
  v25 = v35;
  sub_25424D138();

  if (!v25)
  {
    sub_2541E90C4(v24, v26, type metadata accessor for EnergyKit.LoadSessionEvent);
    type metadata accessor for EnergyKit.SomeEnergyKitEvent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SomeEvent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EventRecord.DecodedEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_2541E8CCC@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v27 = a1;
  v26 = a5;
  DailyDigestEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
  v8 = *(*(DailyDigestEvent - 8) + 64);
  MEMORY[0x28223BE20](DailyDigestEvent);
  v29 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - v12;
  v14 = sub_25424E848();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25424D168();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_25424D158();
  if (a4)
  {
    sub_25424E838();
    result = (*(v15 + 48))(v13, 1, v14);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v15 + 32))(v18, v13, v14);
    v33 = a3;
    v34 = &type metadata for EventRecord.EncodedEvent;
    v31[0] = v27;
    v32 = a2;
    sub_254140660(a2, a3);
    v23 = sub_25424D148();
    sub_2541E42F8(v31, v18);
    v23(v30, 0);
  }

  sub_2541E9F08(&qword_27F5BA358, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
  v24 = v29;
  v25 = v35;
  sub_25424D138();

  if (!v25)
  {
    sub_2541E90C4(v24, v26, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
    type metadata accessor for EnergyKit.SomeEnergyKitEvent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SomeEvent();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EventRecord.DecodedEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_2541E8FFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2541E9064(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2541E90C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

HomeKitEvents::EventRecord::Field_optional __swiftcall EventRecord.Field.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25424E8E8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2541E91A0()
{
  v1 = *v0;
  sub_25424EBD8();
  v2 = *&aData_3[8 * v1];
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_2541E91FC()
{
  v1 = *&aData_3[8 * *v0];
  sub_25424DD88();
}

uint64_t sub_2541E923C()
{
  v1 = *v0;
  sub_25424EBD8();
  v2 = *&aData_3[8 * v1];
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t static EventRecord.recordZoneID(forHomeIdentifier:)(uint64_t a1)
{
  sub_2541E9344();
  type metadata accessor for Configuration();
  v4 = 0;
  static Configuration.zoneName(forHomeIdentifier:target:)(a1, &v4);
  v2 = *MEMORY[0x277CBBF28];
  sub_25424DCB8();
  return sub_25424E458();
}

unint64_t sub_2541E9344()
{
  result = qword_27F5BBF00;
  if (!qword_27F5BBF00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5BBF00);
  }

  return result;
}

uint64_t static EventRecord.energyKitZoneID(forHomeIdentifier:)(uint64_t a1)
{
  v2 = sub_25424D948();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Configuration();
  static Configuration.energyKitZoneUUID(forHomeIdentifier:)(a1, v6);
  sub_2541E9344();
  v14 = sub_25424D8D8();
  v15 = v7;
  v12 = 0x2D73746E657665;
  v13 = 0xE700000000000000;
  v12 = sub_25424DE78();
  v13 = v8;
  sub_25424DDD8();

  v9 = *MEMORY[0x277CBBF28];
  sub_25424DCB8();
  v10 = sub_25424E458();
  (*(v3 + 8))(v6, v2);
  return v10;
}

uint64_t sub_2541E958C()
{
  v1 = *v0;
  sub_25424EBD8();
  MEMORY[0x259C06AD0](qword_25425E158[v1]);
  return sub_25424EC28();
}

uint64_t sub_2541E9614()
{
  v1 = *v0;
  sub_25424EBD8();
  MEMORY[0x259C06AD0](qword_25425E158[v1]);
  return sub_25424EC28();
}

BOOL EventRecord.DecodedEvent.isFake.getter()
{
  v1 = type metadata accessor for EventRecord.DecodedEvent(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2541E8FFC(v0, v4, type metadata accessor for EventRecord.DecodedEvent);
  v5 = swift_getEnumCaseMultiPayload() == 1;
  sub_2541E9064(v4, type metadata accessor for EventRecord.DecodedEvent);
  return v5;
}

uint64_t EventRecord.DecodedEvent.isLegacySecurityEvent.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SomeEvent();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EventRecord.DecodedEvent(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2541E8FFC(v1, v9, type metadata accessor for EventRecord.DecodedEvent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2541E9064(v9, type metadata accessor for EventRecord.DecodedEvent);
    v10 = 1;
  }

  else
  {
    sub_2541E90C4(v9, v5, type metadata accessor for SomeEvent);
    sub_2541DA834(v15);
    v11 = v16;
    v12 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v10 = (*(v12 + 32))(v11, v12);
    sub_2541E9064(v5, type metadata accessor for SomeEvent);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return v10 & 1;
}

uint64_t EventRecord.EncodedEvent.data.getter()
{
  v1 = *(v0 + 8);
  sub_254140660(v1, *(v0 + 16));
  return v1;
}

unint64_t sub_2541E99DC()
{
  result = qword_27F5BB288;
  if (!qword_27F5BB288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB288);
  }

  return result;
}

unint64_t sub_2541E9A34()
{
  result = qword_27F5BB290;
  if (!qword_27F5BB290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB290);
  }

  return result;
}

void sub_2541E9AB0()
{
  sub_25424D948();
  if (v0 <= 0x3F)
  {
    sub_25424D8B8();
    if (v1 <= 0x3F)
    {
      sub_2541BB238();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for EventRecord.DataType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EventRecord.DataType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2541E9CCC()
{
  result = type metadata accessor for SomeEvent();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FakeEvent();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2541E9D40(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF2 && a1[24])
  {
    return (*a1 + 242);
  }

  v3 = *a1;
  v4 = v3 >= 0xF;
  v5 = v3 - 15;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2541E9D84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 242;
    if (a3 >= 0xF2)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF2)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 14;
    }
  }

  return result;
}

unint64_t sub_2541E9DD8()
{
  result = qword_27F5BB2B8;
  if (!qword_27F5BB2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB2B8);
  }

  return result;
}

double sub_2541E9E2C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_2542208F8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2542228C8();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = sub_25424E848();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_25412DCA8((*(v11 + 56) + 32 * v8), a2);
    sub_25414B868(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_2541E9F08(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2541E9F58(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  if (v3 <= 0x3F)
  {
    sub_2541BB238();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2541EA018(int *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (!a2)
  {
    return 0;
  }

  v14 = v13 + 9;
  if (v11 >= a2)
  {
    goto LABEL_27;
  }

  v15 = ((v14 + ((v12 + 48) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v11 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_27;
      }
    }

LABEL_24:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v11 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_24;
    }
  }

LABEL_27:
  v24 = (((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12;
  if (v10 < 0x7FFFFFFF)
  {
    v26 = *((v14 + v24) & 0xFFFFFFFFFFFFFFF8);
    if (v26 >= 0xFFFFFFFF)
    {
      LODWORD(v26) = -1;
    }

    return (v26 + 1);
  }

  else
  {
    v25 = *(v9 + 48);

    return v25(v24);
  }
}

void sub_2541EA1D8(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(v9 + 64) + 9;
  v14 = ((v13 + ((v11 + 48) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v12 >= a3)
  {
    v17 = 0;
    v18 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((v13 + ((v11 + 48) & ~v11)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a3 - v12 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_17:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *(a1 + v14) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v14) = 0;
      }

      else if (v17)
      {
        *(a1 + v14) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      v21 = (((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11;
      if (v10 < 0x7FFFFFFF)
      {
        v23 = ((v13 + v21) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v24 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v24 = (a2 - 1);
        }

        *v23 = v24;
      }

      else
      {
        v22 = *(v9 + 56);

        v22(v21, a2);
      }

      return;
    }
  }

  if (((v13 + ((v11 + 48) & ~v11)) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (((v13 + ((v11 + 48) & ~v11)) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v20 = ~v12 + a2;
    bzero(a1, v14);
    *a1 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *(a1 + v14) = v19;
    }

    else
    {
      *(a1 + v14) = v19;
    }
  }

  else if (v17)
  {
    *(a1 + v14) = v19;
  }
}

uint64_t sub_2541EA418@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v14 = &v16 - v13;
  (*(v5 + 16))(v9, v2, v4);
  sub_25424E208();
  return sub_2541EA564(v14, a2);
}

uint64_t sub_2541EA564@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_2541B1AC4(&unk_286632898);
  a2[1] = v4;
  a2[2] = sub_2541B1AC4(&unk_2866328C0);
  a2[3] = v5;
  a2[4] = sub_2541B1AC4(&unk_2866328E8);
  a2[5] = v6;
  DigestEvent = type metadata accessor for AsyncCreateDigestEventSequence.AsyncIterator();
  *(a2 + DigestEvent[12]) = 0;
  *(a2 + DigestEvent[13]) = 0;
  v8 = DigestEvent[14];
  v9 = DigestEvent[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  (*(v13 + 16))(a2 + v9, a1, AssociatedTypeWitness);
  *(a2 + v8) = sub_2541B09E0(0, 3, 0, MEMORY[0x277D84F90]);
  v11 = *(v13 + 8);

  return v11(a1, AssociatedTypeWitness);
}

uint64_t sub_2541EA6B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2541EA418(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_2541EA710(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x2822009F8](sub_2541EA730, 0, 0);
}

uint64_t sub_2541EA730()
{
  v19 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v1 + 56);
  *(v0 + 80) = v3;
  if (*(*(v2 + v3) + 16))
  {
    sub_2541EAE70(&v18);
    v5 = *(&v18 + 1);
    v4 = v18;
    if (*(&v18 + 1) >> 60 == 15)
    {
      sub_254134CF0(v18, *(&v18 + 1));
      sub_2541EADE4(*(*(v2 + v3) + 16) - 1, &v18);
      v5 = *(&v18 + 1);
      v4 = v18;
    }

    goto LABEL_6;
  }

  v6 = *(v1 + 48);
  *(v0 + 84) = v6;
  if (*(v2 + v6))
  {
    v4 = 0;
    v5 = 0xF000000000000000;
LABEL_6:
    v7 = *(v0 + 8);

    return v7(v4, v5);
  }

  sub_25424E1E8();
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);
  v11 = *(v9 + 44);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = *(MEMORY[0x277D856D0] + 4);
  v17 = swift_task_alloc();
  *(v0 + 64) = v17;
  *v17 = v0;
  v17[1] = sub_2541EA93C;

  return MEMORY[0x282200308](v0 + 16, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_2541EA93C()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_25414CDA0;
  }

  else
  {
    v3 = sub_2541EAA50;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2541EAA50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 56);
  if (v1 == 15)
  {
    v3 = *(v0 + 48);
    *(v2 + *(v0 + 84)) = 1;
    if (*(v2 + *(v3 + 52)) != 1)
    {
      v27 = 0;
      v28 = 0xF000000000000000;
      goto LABEL_17;
    }

    v4 = *(v0 + 56);
    v5 = (v4 + 16);
    v6 = (v4 + 24);
  }

  else
  {
    v31 = *(v0 + 24);
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    v9 = *(v2 + *(v0 + 80));
    sub_254140660(v7, v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_2541B09E0(0, *(v9 + 2) + 1, 1, v9);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    v12 = v11 + 1;
    if (v11 >= v10 >> 1)
    {
      v9 = sub_2541B09E0((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v12;
    v13 = &v9[16 * v11];
    *(v13 + 4) = v7;
    *(v13 + 5) = v8;
    sub_254140660(v31, *(&v31 + 1));
    v14 = *(v9 + 3);
    if ((v11 + 2) > (v14 >> 1))
    {
      v9 = sub_2541B09E0((v14 > 1), v11 + 2, 1, v9);
    }

    *(v9 + 2) = v11 + 2;
    *&v9[16 * v12 + 32] = v31;
    *(v0 + 40) = qword_25425E2D0[v1];
    v15 = sub_25424EA58();
    MEMORY[0x259C05CA0](v15);

    MEMORY[0x259C05CA0](44, 0xE100000000000000);
    v16 = sub_2541AF3E4(91, 0xE100000000000000);
    v18 = v17;
    v20 = *(v9 + 2);
    v19 = *(v9 + 3);
    if (v20 >= v19 >> 1)
    {
      v9 = sub_2541B09E0((v19 > 1), v20 + 1, 1, v9);
    }

    v21 = *(v0 + 80);
    v22 = *(v0 + 48);
    v23 = *(v0 + 56);
    sub_2541EAEE0(v1, v31, *(&v31 + 1));
    *(v9 + 2) = v20 + 1;
    v24 = &v9[16 * v20];
    *(v24 + 4) = v16;
    *(v24 + 5) = v18;
    *(v23 + v21) = v9;
    v25 = *(v22 + 52);
    v26 = *(v0 + 56);
    if (*(v23 + v25) == 1)
    {
      v5 = (v26 + 32);
      v6 = (v26 + 40);
    }

    else
    {
      *(v23 + v25) = 1;
      v6 = (v26 + 8);
      v5 = v26;
    }
  }

  v27 = *v5;
  v28 = *v6;
  sub_254140660(*v5, *v6);
LABEL_17:
  v29 = *(v0 + 8);

  return v29(v27, v28);
}

uint64_t sub_2541EAD08(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25413439C;

  return sub_2541EA710(a2);
}

uint64_t sub_2541EADE4@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2541EADD0(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 16 * a1;
    *a2 = *(v9 + 32);
    result = memmove((v9 + 32), (v9 + 48), 16 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2541EAE70@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = *(v3 + 16);
    if (v5)
    {
LABEL_3:
      v6 = v5 - 1;
      *a1 = *(v3 + 16 * v6 + 32);
      *(v3 + 16) = v6;
      *v1 = v3;
      return result;
    }
  }

  else
  {
    result = sub_2541EADD0(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2541EAEE0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 15)
  {
    return sub_254134D04(a2, a3);
  }

  return result;
}

uint64_t sub_2541EAEFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2541EAF50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_2541EAFB0()
{
  result = qword_27F5BB3E0;
  if (!qword_27F5BB3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB3E0);
  }

  return result;
}

unint64_t sub_2541EB008()
{
  result = qword_27F5BB3E8;
  if (!qword_27F5BB3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB3E8);
  }

  return result;
}

uint64_t sub_2541EB05C(char a1)
{
  result = *v1;
  v4 = v1[1];
  if ((a1 & 1) == 0)
  {
    result = sub_254134D04(result, v4);
    *v1 = xmmword_254252DC0;
LABEL_13:
    v1[2] = 0;
    return result;
  }

  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
LABEL_12:
      result = sub_25424D478();
      goto LABEL_13;
    }

    result = *(result + 16);
    v6 = *(*v1 + 24);
  }

  else
  {
    if (!v5)
    {
      goto LABEL_12;
    }

    result = result;
    v6 = *v1 >> 32;
  }

  if (v6 >= result)
  {
    if (result < 0)
    {
      __break(1u);
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_2541EB0F4(uint64_t result)
{
  v2 = result;
  v3 = v1[1];
  v4 = v1[2];
  v5 = *v1;
  v6 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v6 != 2)
    {
      if (v4 < 0)
      {
        v11 = 0;
LABEL_21:
        sub_2541347C8(v11, v1[2], v5, v3);
        result = sub_25424D4D8();
        v1[2] = v4 + 1;
        return result;
      }

      goto LABEL_15;
    }

    v8 = *(v5 + 16);
    v7 = *(v5 + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (!v9)
    {
      if (v4 >= v10)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  if (!v6)
  {
    if (v4 >= BYTE6(v3))
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(v5), v5))
  {
    goto LABEL_23;
  }

  if (v4 < HIDWORD(v5) - v5)
  {
LABEL_11:
    if (v6)
    {
      if (v6 == 2)
      {
        v11 = *(v5 + 16);
      }

      else
      {
        v11 = v5;
      }
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_21;
  }

LABEL_15:
  v12 = v1[2];

  return sub_25413482C(v12, v12, v2);
}

uint64_t sub_2541EB1F8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_88;
  }

  v3 = v2;
  v5 = v2[2];
  if (v5 < a2)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v6 = result;
  result = sub_25424E328();
  if (__OFSUB__(0x7FFFFFFFFFFFFFFFLL, result))
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v7 = a2 - v6;
  if (__OFSUB__(a2, v6))
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v8 = v5 - v7;
  if (__OFSUB__(v5, v7))
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  if (0x7FFFFFFFFFFFFFFFLL - result < v8)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_25424E328();
  v9 = __OFADD__(v8, result);
  v10 = v8 + result;
  if (v9)
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v11 = result;
  v12 = *v2;
  v13 = v2[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_20;
    }

    v17 = v12 + 16;
    v15 = *(v12 + 16);
    v16 = *(v17 + 8);
    v9 = __OFSUB__(v16, v15);
    v18 = v16 - v15;
    if (v9)
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    if (v18 < v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (!v14)
    {
      if (BYTE6(v13) >= v10)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }

    v9 = __OFSUB__(HIDWORD(v12), v12);
    v19 = HIDWORD(v12) - v12;
    if (v9)
    {
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    if (v19 < v10)
    {
LABEL_18:
      if ((v10 & 0x8000000000000000) == 0)
      {
LABEL_21:
        result = sub_25424D498();
        goto LABEL_22;
      }

      __break(1u);
LABEL_20:
      if (v10 <= 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

LABEL_22:
  if (v7 != v11)
  {
    v20 = v5 - a2;
    if (__OFSUB__(v5, a2))
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    if (v20 >= 1)
    {
      if (__OFADD__(v6, v11))
      {
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      v21 = 0;
      v22 = *v2;
      v23 = v3[1];
      v24 = v23 >> 62;
      v54 = v6 + v11;
      if ((v23 >> 62) > 1)
      {
        if (v24 == 2)
        {
          v21 = *(v22 + 16);
        }
      }

      else if (v24)
      {
        v21 = v22;
      }

      v25 = sub_2541347C8(v21, a2, v22, v23);
      result = sub_2541347C8(v21, v5, v22, v23);
      if (result < v25)
      {
        goto LABEL_99;
      }

      v26 = *v3;
      v27 = v3[1];
      result = sub_25424D4B8();
      v29 = v54 + v20;
      if (__OFADD__(v54, v20))
      {
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      if (v29 < v54)
      {
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      v30 = 0;
      v31 = *v3;
      v32 = v3[1];
      v33 = v32 >> 62;
      v52 = v28;
      v53 = result;
      if ((v32 >> 62) > 1)
      {
        if (v33 == 2)
        {
          v30 = *(v31 + 16);
        }
      }

      else if (v33)
      {
        v30 = v31;
      }

      v34 = sub_2541347C8(v30, v54, v31, v32);
      result = sub_2541347C8(v30, v29, v31, v32);
      if (result < v34)
      {
        goto LABEL_102;
      }

      sub_2541EFE04(v53, v52);
      result = sub_254134D04(v53, v52);
    }
  }

  if (v11 < 1)
  {
    goto LABEL_51;
  }

  v35 = v6 + v11;
  if (__OFADD__(v6, v11))
  {
    goto LABEL_94;
  }

  if (v35 < v6)
  {
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v36 = 0;
  v37 = *v3;
  v38 = v3[1];
  v39 = v38 >> 62;
  if ((v38 >> 62) > 1)
  {
    if (v39 == 2)
    {
      v36 = *(v37 + 16);
    }
  }

  else if (v39)
  {
    v36 = v37;
  }

  v40 = sub_2541347C8(v36, v6, *v3, v3[1]);
  result = sub_2541347C8(v36, v35, v37, v38);
  if (result < v40)
  {
    goto LABEL_96;
  }

  result = sub_25424D4E8();
LABEL_51:
  v3[2] = v10;
  if (v10 >= v5)
  {
    return result;
  }

  v41 = *v3;
  v42 = v3[1];
  v43 = v42 >> 62;
  if ((v42 >> 62) <= 1)
  {
    if (v43)
    {
      if (__OFSUB__(HIDWORD(v41), v41))
      {
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      if (v10 >= HIDWORD(v41) - v41)
      {
        return result;
      }
    }

    else if (v10 >= BYTE6(v42))
    {
      return result;
    }

    goto LABEL_62;
  }

  if (v43 == 2)
  {
    v45 = *(v41 + 16);
    v44 = *(v41 + 24);
    v9 = __OFSUB__(v44, v45);
    v46 = v44 - v45;
    if (v9)
    {
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    if (v10 >= v46)
    {
      return result;
    }

LABEL_62:
    if (v43 == 2)
    {
      v49 = *(v41 + 16);
      v48 = *(v41 + 24);
      v9 = __OFSUB__(v48, v49);
      v47 = v48 - v49;
      if (!v9)
      {
LABEL_72:
        if (v47 < v5)
        {
          v5 = v47;
        }

        goto LABEL_74;
      }

      __break(1u);
    }

    else if (v43 == 1)
    {
      LODWORD(v47) = HIDWORD(v41) - v41;
      if (__OFSUB__(HIDWORD(v41), v41))
      {
LABEL_110:
        __break(1u);
        return result;
      }

      v47 = v47;
      goto LABEL_72;
    }

    v47 = BYTE6(v42);
    goto LABEL_72;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    return result;
  }

  v5 &= v5 >> 63;
LABEL_74:
  if (v5 < v10)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  if (v10 == v5)
  {
    return result;
  }

  v50 = 0;
  if (v43 > 1)
  {
    if (v43 == 2)
    {
      v50 = *(v41 + 16);
    }
  }

  else if (v43)
  {
    v50 = v41;
  }

  v51 = sub_2541347C8(v50, v10, v41, v42);
  result = sub_2541347C8(v50, v5, v41, v42);
  if (result < v51)
  {
    goto LABEL_108;
  }

  if (v51 < 0)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  return sub_25424D478();
}

uint64_t (*sub_2541EB6C0(uint64_t (*result)(), uint64_t *a2))()
{
  v3 = *a2;
  if (v3 >= v2[2])
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = *v2;
    v6 = v2[1] >> 62;
    if (v6 > 1)
    {
      v7 = 0;
      if (v6 == 2)
      {
        v7 = *(v5 + 16);
      }
    }

    else if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    sub_2541347C8(v7, v3, *v2, v2[1]);
    *v4 = sub_25424D4C8();
    return nullsub_1;
  }

  return result;
}

uint64_t *sub_2541EB764@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  if (*result < 0 || (v4 = result[1], v2[2] < v4))
  {
    __break(1u);
  }

  else
  {
    v6 = *v2;
    v5 = v2[1];
    v7 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      v8 = 0;
      if (v7 == 2)
      {
        v8 = *(v6 + 16);
      }
    }

    else if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v9 = sub_2541347C8(v8, *result, *v2, v2[1]);
    result = sub_2541347C8(v8, v4, v6, v5);
    if (result >= v9)
    {
      result = sub_25424D4B8();
      *a2 = result;
      a2[1] = v10;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2541EB82C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = 0;
  a1[4] = v4;
  return sub_254140660(v2, v3);
}

uint64_t sub_2541EB854(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (!a2)
    {
      return result;
    }

    if (a5 <= result)
    {
      v5 = result;
    }

    else
    {
      v5 = a5;
    }

    if (v5 - result > (a2 - 1))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if (!__CFADD__(a2, result & ~(result >> 63)))
  {
    __break(1u);
    return result;
  }

LABEL_10:
  result += a2;
  return result;
}

uint64_t sub_2541EB890(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 < 0)
  {
    v10 = result - a3;
    if (result - a3 >= (result & ~(result >> 63)))
    {
      v10 = result & ~(result >> 63);
    }

    if (v10 >= ~a2)
    {
      v10 = ~a2;
    }

    if (v10 > 1)
    {
      v15 = v10 & 0x7FFFFFFFFFFFFFFELL;
      v11 = -v15;
      result -= v15;
      do
      {
        v15 -= 2;
      }

      while (v15);
    }

    else
    {
      v11 = 0;
    }

    while (a3 != result)
    {
      if (result-- < 1)
      {
LABEL_34:
        __break(1u);
        return result;
      }

      if (--v11 <= a2)
      {
        return result;
      }
    }

    return 0;
  }

  if (a2)
  {
    if (a6 <= result)
    {
      v6 = result;
    }

    else
    {
      v6 = a6;
    }

    v7 = v6 - result;
    if (v6 - result >= (a2 - 1))
    {
      v7 = a2 - 1;
    }

    if (v7 >= a3 - result)
    {
      v7 = a3 - result;
    }

    if (v7 + 1 > 2)
    {
      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      v9 = (v7 & 0xFFFFFFFFFFFFFFFELL) + result;
      v12 = v7 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        v12 -= 2;
      }

      while (v12);
    }

    else
    {
      v8 = 0;
      v9 = result;
    }

    v13 = v8 + result - v6;
    v14 = a2 - v8;
    result = v9;
    while (a3 != result)
    {
      if (!v13)
      {
        __break(1u);
        goto LABEL_34;
      }

      ++result;
      ++v13;
      if (!--v14)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_2541EB9A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  v5 = a2 < result;
  if (a2 <= result)
  {
LABEL_11:
    if (!v5)
    {
      return 0;
    }

    v11 = ~a2 + result;
    if (v11 >= (result & ~(result >> 63)))
    {
      v11 = result & ~(result >> 63);
    }

    v12 = v11 + 1;
    if (v12 > 4)
    {
      v13 = v12 & 3;
      if ((v12 & 3) == 0)
      {
        v13 = 4;
      }

      v14 = v12 - v13;
      result -= v14;
      v15 = 0uLL;
      v16.i64[0] = -1;
      v16.i64[1] = -1;
      v17 = 0uLL;
      do
      {
        v15 = vaddq_s64(v15, v16);
        v17 = vaddq_s64(v17, v16);
        v14 -= 4;
      }

      while (v14);
      v6 = vaddvq_s64(vpaddq_s64(v15, v17));
    }

    else
    {
      v6 = 0;
    }

    while (1)
    {
      v5 = result-- < 1;
      if (v5)
      {
        break;
      }

      --v6;
      if (a2 == result)
      {
        return v6;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  v7 = ~result + a2;
  if (a5 <= result)
  {
    v8 = result;
  }

  else
  {
    v8 = a5;
  }

  v9 = v8 - result;
  if (v7 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = ~result + a2;
  }

  if (v10 <= 0x7FFFFFFFFFFFFFFELL)
  {
    v5 = v9 < v7;
    if (v9 > v7)
    {
      return v6;
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t *sub_2541EBA70(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_2541EBA8C(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_2541EBAA8(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_2541EBAC4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= *(v2 + 16))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_2541EBAE4(void *result)
{
  if (*result >= *(v1 + 16))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 sub_2541EBB04@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u64[1] = 0;
  return result;
}

void *sub_2541EBB18()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_2541826A4(v3, 0);
  v1 = sub_2541D0A18(v6, (v4 + 4), v3, v1, v2, v3);
  sub_254134D04(v6[0], v6[1]);
  if (v1 != v3)
  {
    __break(1u);
LABEL_4:
    sub_254134D04(v1, v2);
    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t *sub_2541EBBB8@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  if (*result < 1)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

uint64_t *sub_2541EBBD0(uint64_t *result)
{
  if (*result < 1)
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t sub_2541EBBE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_2541EB890(*a1, a2, *a3, *v4, v4[1], v4[2]);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

double sub_2541EBC28@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_254252DC0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_2541EBC3C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_2541EB1F8(*a1, a1[1]);
  v5 = *(*(a3 - 8) + 8);

  return v5(a2, a3);
}

char *sub_2541EBCBC@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = xmmword_254252DC0;
  if (!a2)
  {
    goto LABEL_4;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    result = sub_2541EBD64(a2, *result);
    v4 = xmmword_254252DC0;
LABEL_4:
    *a3 = v4;
    *(a3 + 16) = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_2541EBD64(uint64_t result, char a2)
{
  v48 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v3 = v2;
    v4 = a2;
    v5 = result;
    v6 = result & ~(result >> 63);
    do
    {
      if (!v6)
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
      }

      v7 = v3[1];
      v8 = v3[2];
      v9 = *v3;
      v10 = v7 >> 62;
      if ((v7 >> 62) > 1)
      {
        if (v10 == 2)
        {
          v12 = *(v9 + 16);
          v11 = *(v9 + 24);
          v13 = __OFSUB__(v11, v12);
          v14 = v11 - v12;
          if (v13)
          {
            goto LABEL_69;
          }

          if (v8 < v14)
          {
            goto LABEL_17;
          }
        }

        else if (v8 < 0)
        {
          v16 = v3[2];
          goto LABEL_27;
        }
      }

      else if (v10)
      {
        if (__OFSUB__(HIDWORD(v9), v9))
        {
          goto LABEL_70;
        }

        if (v8 < HIDWORD(v9) - v9)
        {
LABEL_17:
          if (v10)
          {
            if (v10 == 2)
            {
              v15 = *(v9 + 16);
              v16 = v15 + v8;
              if (__OFADD__(v15, v8))
              {
                goto LABEL_67;
              }
            }

            else
            {
              v16 = v9 + v8;
              if (__OFADD__(v9, v8))
              {
                goto LABEL_67;
              }
            }
          }

          else
          {
            v16 = v3[2];
          }

LABEL_27:
          if (v10 > 1)
          {
            if (v10 == 2)
            {
              v17 = *(v9 + 16);
              v18 = *(v9 + 24);
            }

            else
            {
              v18 = 0;
              v17 = 0;
            }
          }

          else if (v10)
          {
            v17 = v9;
            v18 = v9 >> 32;
          }

          else
          {
            v17 = 0;
            v18 = BYTE6(v7);
          }

          if (v18 < v16 || v16 < v17)
          {
            goto LABEL_68;
          }

          if (v10 > 1)
          {
            if (v10 != 2)
            {
              goto LABEL_80;
            }

            v20 = v7 & 0x3FFFFFFFFFFFFFFFLL;
            v21 = *v3;

            sub_254134D04(v9, v7);
            *v3 = xmmword_254252DC0;
            sub_254134D04(0, 0xC000000000000000);
            if (v16 < *(v9 + 16))
            {
              goto LABEL_71;
            }

            if (v16 >= *(v9 + 24))
            {
              goto LABEL_74;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = *(v9 + 16);
              v42 = *(v9 + 24);
              if (sub_25424D268() && __OFSUB__(v22, sub_25424D298()))
              {
                goto LABEL_79;
              }

              if (__OFSUB__(v42, v22))
              {
                goto LABEL_77;
              }

              v31 = sub_25424D2B8();
              v32 = *(v31 + 48);
              v33 = *(v31 + 52);
              swift_allocObject();
              v34 = sub_25424D248();

              v20 = v34;
              v4 = a2;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v35 = *(v9 + 16);
              v36 = *(v9 + 24);
              sub_25424D468();
              v37 = swift_allocObject();
              *(v37 + 16) = v35;
              *(v37 + 24) = v36;
              v4 = a2;

              v9 = v37;
            }

            sub_25424D238();
            v38 = sub_25424D268();
            if (!v38)
            {
              goto LABEL_82;
            }

            v39 = v38;
            result = sub_25424D298();
            if (__OFSUB__(v16, result))
            {
              goto LABEL_76;
            }

            *(v39 + v16 - result) = v4;
            v30 = v20 | 0x8000000000000000;
          }

          else
          {
            if (!v10)
            {
              result = sub_254134D04(v9, v7);
              v44 = v9;
              LOWORD(v45) = v7;
              BYTE2(v45) = BYTE2(v7);
              HIBYTE(v45) = BYTE3(v7);
              LOBYTE(v46) = BYTE4(v7);
              HIBYTE(v46) = BYTE5(v7);
              v47 = BYTE6(v7);
              if (v16 >= BYTE6(v7))
              {
                goto LABEL_72;
              }

              v4 = a2;
              *(&v44 + v16) = a2;
              v19 = v41 & 0xF00000000000000 | v45 | ((v46 | (v47 << 16)) << 32);
              *v3 = v44;
              v3[1] = v19;
              v41 = v19;
              goto LABEL_64;
            }

            v23 = v7 & 0x3FFFFFFFFFFFFFFFLL;

            sub_254134D04(v9, v7);
            *v3 = xmmword_254252DC0;
            sub_254134D04(0, 0xC000000000000000);
            if (v16 < v9 || v16 >= v9 >> 32)
            {
              goto LABEL_73;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {

              if (sub_25424D268() && __OFSUB__(v9, sub_25424D298()))
              {
                goto LABEL_78;
              }

              v24 = sub_25424D2B8();
              v25 = *(v24 + 48);
              v26 = *(v24 + 52);
              swift_allocObject();
              v27 = sub_25424D248();

              v23 = v27;
            }

            sub_25424D238();
            v28 = sub_25424D268();
            if (!v28)
            {
              goto LABEL_81;
            }

            v29 = v28;
            result = sub_25424D298();
            v4 = a2;
            if (__OFSUB__(v16, result))
            {
              goto LABEL_75;
            }

            *(v29 + v16 - result) = a2;
            v30 = v23 | 0x4000000000000000;
          }

          *v3 = v9;
          v3[1] = v30;
LABEL_64:
          v3[2] = v8 + 1;
          goto LABEL_5;
        }
      }

      else if (v8 < BYTE6(v7))
      {
        goto LABEL_17;
      }

      result = sub_25413482C(v3[2], v3[2], v4);
LABEL_5:
      --v6;
      --v5;
    }

    while (v5);
  }

  v40 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2541EC300@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2541EC32C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2541EC32C(uint64_t result)
{
  v2 = v1[2];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;
  if (v2 <= result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v4 = *v1;
  v5 = v1[1] >> 62;
  if (v5 > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v4 + 16);
    }
  }

  else if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  sub_2541347C8(v6, v3, *v1, v1[1]);
  v7 = sub_25424D4C8();
  sub_2541355AC(v3, v3 + 1);
  return v7;
}

void sub_2541EC40C()
{
  v1 = v0[2];
  if (!v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v1 < 1)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v2 = *v0;
  v3 = v0[1] >> 62;
  if (v3 > 1)
  {
    v4 = 0;
    if (v3 == 2)
    {
      v4 = *(v2 + 16);
    }
  }

  else if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  sub_2541347C8(v4, 0, *v0, v0[1]);
  sub_25424D4C8();
  sub_2541355AC(0, 1);
}

uint64_t sub_2541EC4A8(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_2541EB890(0, result, v1[2], *v1, v1[1], v1[2]);
  if (v2)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (result < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return sub_2541355AC(0, result);
}

unint64_t sub_2541EC534()
{
  result = qword_27F5BB3F0;
  if (!qword_27F5BB3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BB3F8, &qword_25425E4A0);
    sub_2541EC5B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB3F0);
  }

  return result;
}

unint64_t sub_2541EC5B8()
{
  result = qword_27F5BB400;
  if (!qword_27F5BB400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB400);
  }

  return result;
}

unint64_t sub_2541EC610()
{
  result = qword_27F5BB408;
  if (!qword_27F5BB408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB408);
  }

  return result;
}

unint64_t sub_2541EC6AC()
{
  result = qword_27F5BB420;
  if (!qword_27F5BB420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB420);
  }

  return result;
}

unint64_t sub_2541EC754()
{
  result = qword_27F5BB430[0];
  if (!qword_27F5BB430[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5BB430);
  }

  return result;
}

uint64_t sub_2541EC7A8(uint64_t (*a1)(char *))
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v72 = xmmword_254252DC0;
  v73 = 0;
  sub_254140660(v3, v4);
  if (v5)
  {
    v55 = v1;
    v6 = 0;
    v7 = v4 >> 62;
    v8 = v3;
    v64 = BYTE6(v4);
    v60 = v4;
    v65 = v5;
    while (1)
    {
      if (v6 >= v5)
      {
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
      }

      if (v7 > 1)
      {
        if (v7 != 2)
        {
          v10 = 0;
          v9 = 0;
          goto LABEL_16;
        }

        v9 = *(v3 + 16);
        v11 = v9 + v6;
        if (__OFADD__(v9, v6))
        {
          goto LABEL_112;
        }

        v10 = *(v3 + 24);
      }

      else
      {
        if (!v7)
        {
          v9 = 0;
          v10 = v64;
LABEL_16:
          v11 = v6;
          goto LABEL_17;
        }

        v11 = v8 + v6;
        if (__OFADD__(v8, v6))
        {
          goto LABEL_111;
        }

        v10 = v3 >> 32;
        v9 = v8;
      }

LABEL_17:
      if (v11 < v9 || v10 < v11)
      {
        goto LABEL_103;
      }

      if (v7 > 1)
      {
        if (v7 != 2)
        {
          goto LABEL_126;
        }

        if (v11 < *(v3 + 16))
        {
          goto LABEL_106;
        }

        if (v11 >= *(v3 + 24))
        {
          goto LABEL_108;
        }

        v13 = sub_25424D268();
        if (!v13)
        {
          goto LABEL_128;
        }

        v14 = v13;
        v15 = sub_25424D298();
        v16 = v11 - v15;
        if (__OFSUB__(v11, v15))
        {
          goto LABEL_110;
        }

        goto LABEL_34;
      }

      if (v7)
      {
        if (v11 < v8 || v11 >= v3 >> 32)
        {
          goto LABEL_107;
        }

        v17 = sub_25424D268();
        if (!v17)
        {
          goto LABEL_127;
        }

        v14 = v17;
        v18 = sub_25424D298();
        v16 = v11 - v18;
        if (__OFSUB__(v11, v18))
        {
          goto LABEL_109;
        }

LABEL_34:
        v12 = *(v14 + v16);
        goto LABEL_35;
      }

      if (v11 >= v64)
      {
        goto LABEL_105;
      }

      v67 = v3;
      LOWORD(v68) = v4;
      BYTE2(v68) = BYTE2(v4);
      HIBYTE(v68) = BYTE3(v4);
      LOBYTE(v69) = BYTE4(v4);
      HIBYTE(v69) = BYTE5(v4);
      v12 = *(&v67 + v11);
LABEL_35:
      v19 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_104;
      }

      v71 = v12;
      v20 = a1(&v71);
      if (v2)
      {
        sub_254134D04(v72, *(&v72 + 1));
        result = sub_254134D04(v3, v4);
        goto LABEL_101;
      }

      if (v20)
      {
        goto LABEL_5;
      }

      v22 = *(&v72 + 1);
      result = v73;
      v23 = v72;
      v24 = *(&v72 + 1) >> 62;
      if ((*(&v72 + 1) >> 62) > 1)
      {
        if (v24 == 2)
        {
          v26 = *(v72 + 16);
          v25 = *(v72 + 24);
          v27 = __OFSUB__(v25, v26);
          v28 = v25 - v26;
          if (v27)
          {
            goto LABEL_116;
          }

          if (v73 < v28)
          {
            goto LABEL_48;
          }
        }

        else if (v73 < 0)
        {
          v30 = v73;
          goto LABEL_58;
        }
      }

      else if (v24)
      {
        if (__OFSUB__(DWORD1(v72), v72))
        {
          goto LABEL_115;
        }

        if (v73 < DWORD1(v72) - v72)
        {
LABEL_48:
          if (v24)
          {
            if (v24 == 2)
            {
              v29 = *(v72 + 16);
              v30 = v29 + v73;
              if (__OFADD__(v29, v73))
              {
                goto LABEL_113;
              }
            }

            else
            {
              v30 = v72 + v73;
              if (__OFADD__(v72, v73))
              {
                goto LABEL_113;
              }
            }
          }

          else
          {
            v30 = v73;
          }

LABEL_58:
          if (v24 > 1)
          {
            if (v24 == 2)
            {
              v31 = *(v72 + 16);
              v32 = *(v72 + 24);
            }

            else
            {
              v32 = 0;
              v31 = 0;
            }
          }

          else if (v24)
          {
            v31 = v72;
            v32 = v72 >> 32;
          }

          else
          {
            v31 = 0;
            v32 = BYTE14(v72);
          }

          if (v32 < v30 || v30 < v31)
          {
            goto LABEL_114;
          }

          v63 = v30;
          v62 = v12;
          v61 = v73;
          if (v24 > 1)
          {
            if (v24 != 2)
            {
              __break(1u);
LABEL_130:
              __break(1u);
LABEL_131:
              __break(1u);
              return result;
            }

            v33 = *(&v72 + 1) & 0x3FFFFFFFFFFFFFFFLL;

            sub_254134D04(v23, v22);
            sub_254134D04(0, 0xC000000000000000);
            if (v63 < *(v23 + 16))
            {
              goto LABEL_117;
            }

            if (v63 >= *(v23 + 24))
            {
              goto LABEL_120;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v57 = *(v23 + 24);
              v58 = *(v23 + 16);
              if (sub_25424D268())
              {
                v34 = sub_25424D298();
                v35 = v58;
                if (__OFSUB__(v58, v34))
                {
                  goto LABEL_125;
                }
              }

              else
              {
                v35 = v58;
              }

              if (__OFSUB__(v57, v35))
              {
                goto LABEL_123;
              }

              v44 = sub_25424D2B8();
              v45 = *(v44 + 48);
              v46 = *(v44 + 52);
              swift_allocObject();
              v47 = sub_25424D248();

              v33 = v47;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v48 = *(v23 + 16);
              v59 = *(v23 + 24);
              sub_25424D468();
              v49 = swift_allocObject();
              *(v49 + 16) = v48;
              *(v49 + 24) = v59;

              v23 = v49;
            }

            sub_25424D238();
            result = sub_25424D268();
            if (!result)
            {
              goto LABEL_131;
            }

            v50 = result;
            v51 = sub_25424D298();
            if (__OFSUB__(v63, v51))
            {
              goto LABEL_122;
            }

            *(v50 + v63 - v51) = v62;
            v43 = v33 | 0x8000000000000000;
          }

          else
          {
            if (!v24)
            {
              sub_254134D04(v72, *(&v72 + 1));
              v67 = v23;
              LOWORD(v68) = v22;
              BYTE2(v68) = BYTE2(v22);
              HIBYTE(v68) = BYTE3(v22);
              LOBYTE(v69) = BYTE4(v22);
              HIBYTE(v69) = BYTE5(v22);
              v70 = BYTE6(v22);
              if (v63 >= BYTE6(v22))
              {
                goto LABEL_118;
              }

              *(&v67 + v63) = v12;
              *&v72 = v67;
              *(&v72 + 1) = v56 & 0xF00000000000000 | v68 | ((v69 | (v70 << 16)) << 32);
              v56 = *(&v72 + 1);
              goto LABEL_96;
            }

            v36 = *(&v72 + 1) & 0x3FFFFFFFFFFFFFFFLL;

            sub_254134D04(v23, v22);
            sub_254134D04(0, 0xC000000000000000);
            if (v63 < v23 || v63 >= v23 >> 32)
            {
              goto LABEL_119;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {

              if (sub_25424D268() && __OFSUB__(v23, sub_25424D298()))
              {
                goto LABEL_124;
              }

              v37 = sub_25424D2B8();
              v38 = *(v37 + 48);
              v39 = *(v37 + 52);
              swift_allocObject();
              v40 = sub_25424D248();

              v36 = v40;
            }

            sub_25424D238();
            result = sub_25424D268();
            if (!result)
            {
              goto LABEL_130;
            }

            v41 = result;
            v42 = sub_25424D298();
            if (__OFSUB__(v63, v42))
            {
              goto LABEL_121;
            }

            *(v41 + v63 - v42) = v62;
            v43 = v36 | 0x4000000000000000;
          }

          *&v72 = v23;
          *(&v72 + 1) = v43;
LABEL_96:
          v4 = v60;
          v73 = v61 + 1;
          goto LABEL_5;
        }
      }

      else if (v73 < BYTE14(v72))
      {
        goto LABEL_48;
      }

      sub_25413482C(v73, v73, v12);
LABEL_5:
      ++v6;
      v8 = v3;
      v5 = v65;
      if (v19 == v65)
      {
        v53 = *(&v72 + 1);
        v52 = v72;
        v5 = v73;
        v1 = v55;
        goto LABEL_100;
      }
    }
  }

  v52 = 0;
  v53 = 0xC000000000000000;
LABEL_100:
  sub_254134D04(*v1, v1[1]);
  result = sub_254134D04(v3, v4);
  *v1 = v52;
  v1[1] = v53;
  v1[2] = v5;
LABEL_101:
  v54 = *MEMORY[0x277D85DE8];
  return result;
}

size_t sub_2541ECFB0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DC0, &qword_254253EF8);
  v4 = *(type metadata accessor for EventQuery.FetchedRecordInfo(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_2541ED0AC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA2E0, &qword_254258C48);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B90F8, &unk_25425CBB0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2541ED1B4(uint64_t result)
{
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result <= 0xE)
    {
      return sub_2541BE9F8(result);
    }

    else
    {
      v2 = sub_25424D2B8();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_25424D278();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_25424D468();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void sub_2541ED26C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_2541ED2D8(void *a1, uint64_t a2)
{
  v4 = sub_25424D8E8();
  v6[4] = sub_2541ED5B4;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2541ED26C;
  v6[3] = &block_descriptor_13;
  v5 = _Block_copy(v6);

  [a1 ensureDigestsWithHomeIdentifier:v4 reply:v5];
  _Block_release(v5);
}

uint64_t sub_2541ED3BC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  if (a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v9 = sub_25424E128();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a2;
    v10[5] = sub_25412F60C;
    v10[6] = v8;

    v11 = a1;
    v12 = &unk_254252CB8;
    v13 = v7;
    v14 = v10;
  }

  else
  {
    v15 = sub_25424E128();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a2;
    v16[5] = sub_2541ED628;
    v16[6] = 0;

    v12 = &unk_254252CB0;
    v13 = v7;
    v14 = v16;
  }

  sub_25419CC1C(0, 0, v13, v12, v14);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2541ED5D4(uint64_t a1, id *a2)
{
  v2 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
  return sub_25424E078();
}

uint64_t sub_2541ED664@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((a2 - 0x10000000) < 0xFFFFFFFFF0000001)
  {
    __break(1u);
  }

  else
  {
    (*(*(a3 - 8) + 32))(a4, result);
    result = type metadata accessor for AsyncCompressionStream();
    *(a4 + *(result + 40)) = a2;
  }

  return result;
}

uint64_t sub_2541ED6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v16 = &v18 - v15;
  (*(v7 + 16))(v11, v3, v6);
  sub_25424E208();
  return sub_2541EDA3C(v16, *(v3 + *(a1 + 40)), a2);
}

uint64_t sub_2541ED850(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1 < 0 || a6 < a1)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (a1)
  {
    v16 = xmmword_254252DC0;
    v15 = 0;
    sub_2541CF898(a1, a4, a5, a6, &v16, &v15, a1);
    v7 = *(&v16 + 1);
    v8 = v16;
    sub_254140660(v16, *(&v16 + 1));
    sub_254134D04(v8, v7);
    v9 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v9 != 2)
      {
        *(&v16 + 6) = 0;
        *&v16 = 0;
        v10 = &v16;
        goto LABEL_13;
      }

      v12 = *(v8 + 16);
      v13 = *(v8 + 24);
LABEL_11:
      sub_2541EFD5C(v12, v13, a2);
LABEL_14:
      result = sub_254134D04(v8, v7);
      goto LABEL_15;
    }

    if (!v9)
    {
      *&v16 = v8;
      WORD4(v16) = v7;
      BYTE10(v16) = BYTE2(v7);
      BYTE11(v16) = BYTE3(v7);
      BYTE12(v16) = BYTE4(v7);
      BYTE13(v16) = BYTE5(v7);
      v10 = (&v16 + BYTE6(v7));
LABEL_13:
      a2(&v16, v10);
      goto LABEL_14;
    }

    v12 = v8;
    v13 = v8 >> 32;
    if (v8 >> 32 >= v8)
    {
      goto LABEL_11;
    }

LABEL_17:
    __break(1u);
  }

  result = a2(0, 0);
LABEL_15:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2541EDA3C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AsyncCompressionStream.AsyncIterator();
  v7 = (a3 + v6[9]);
  v8 = MEMORY[0x277D84F90];
  v7[1] = 0;
  v7[2] = 0;
  *v7 = v8;
  *(a3 + v6[12]) = xmmword_254252DB0;
  *(a3 + v6[13]) = xmmword_254252DB0;
  v9 = a3 + v6[14];
  *v9 = xmmword_254252DB0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  result = (*(v11 + 16))(a3, a1, AssociatedTypeWitness);
  *(a3 + v6[11]) = a2;
  if (a2 - 0x10000000 < 0xFFFFFFFFF0000001)
  {
    __break(1u);
  }

  else
  {
    v13 = sub_2541A5998(a2);
    v15 = v14;
    (*(v11 + 8))(a1, AssociatedTypeWitness);
    result = sub_254134CF0(*v9, *(v9 + 8));
    *v9 = v13;
    *(v9 + 8) = v15;
  }

  return result;
}

uint64_t sub_2541EDB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2541ED6F8(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_2541EDBF4(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_2541EDC14, 0, 0);
}

uint64_t sub_2541EDC14()
{
  sub_25424E1E8();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v2 + 56);
  *(v0 + 80) = v3;
  v4 = v1 + v3;
  v5 = *(v4 + 8);
  if (v5 >> 60 == 15)
  {
    *(v0 + 48) = *(v2 + 24);
    *(v0 + 56) = *(v2 + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v8 = *(MEMORY[0x277D856D0] + 4);
    v9 = swift_task_alloc();
    *(v0 + 64) = v9;
    *v9 = v0;
    v9[1] = sub_2541EDE04;
    v10 = *(v0 + 40);

    return MEMORY[0x282200308](v0 + 16, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v11 = *v4;
    sub_254140660(*v4, *(v4 + 8));
    v12 = *(v2 + 16);
    v13 = *(v2 + 24);
    v14 = (v1 + *(type metadata accessor for AsyncCompressionStream.AsyncIterator() + 56));
    v15 = *v14;
    v16 = v14[1];
    *v14 = xmmword_254252DB0;
    sub_254134CF0(v15, v16);
    v17 = *(v0 + 8);

    return v17(v11, v5);
  }
}

uint64_t sub_2541EDE04()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_25414CDA0;
  }

  else
  {
    v3 = sub_2541EDF18;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2541EDF18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v4 + 36);
  if (v2 >> 60 != 15)
  {
    v8 = (v3 + v5);
    v9 = v2 >> 62;
    if ((v2 >> 62) > 1)
    {
      if (v9 != 2 || *(v1 + 16) == *(v1 + 24))
      {
        goto LABEL_21;
      }
    }

    else if (v9)
    {
      if (v1 == v1 >> 32)
      {
LABEL_21:
        sub_254134CF0(*(v0 + 16), *(v0 + 24));
        goto LABEL_28;
      }
    }

    else if ((v2 & 0xFF000000000000) == 0)
    {
      goto LABEL_21;
    }

    v47 = *(v0 + 16);
    v10 = *v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_2541B09E0(0, *(v10 + 16) + 1, 1, v10);
      v10 = isUniquelyReferenced_nonNull_native;
    }

    v14 = *(v10 + 16);
    v15 = *(v10 + 24);
    v16 = v14 + 1;
    v17 = v47;
    if (v14 >= v15 >> 1)
    {
      v45 = v10;
      v46 = *(v10 + 16);
      isUniquelyReferenced_nonNull_native = sub_2541B09E0((v15 > 1), v14 + 1, 1, v45);
      v17 = v47;
      v14 = v46;
      v10 = isUniquelyReferenced_nonNull_native;
    }

    *(v10 + 16) = v16;
    *(v10 + 16 * v14 + 32) = v17;
    *v8 = v10;
    if (v9 == 2)
    {
      v24 = *(v17 + 16);
      v25 = *(v17 + 24);
      v26 = __OFSUB__(v25, v24);
      v18 = v25 - v24;
      if (!v26)
      {
        goto LABEL_26;
      }

      __break(1u);
    }

    else if (v9 == 1)
    {
      LODWORD(v18) = DWORD1(v17) - v17;
      if (__OFSUB__(DWORD1(v17), v17))
      {
        goto LABEL_43;
      }

      v18 = v18;
LABEL_26:
      v27 = v8[2];
      v26 = __OFADD__(v27, v18);
      v28 = v27 + v18;
      if (!v26)
      {
        v8[2] = v28;
LABEL_28:
        v4 = *(v0 + 32);
        v3 = *(v0 + 40);
        v6 = v8[2];
        v7 = *(v3 + *(v4 + 44));
        if (v6 < v7)
        {
LABEL_33:
          v30 = (v3 + *(v0 + 80));
          v21 = v30[1];
          if (v21 >> 60 == 15)
          {
            v32 = *(v0 + 48);
            v31 = *(v0 + 56);
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
            v35 = *(MEMORY[0x277D856D0] + 4);
            v36 = swift_task_alloc();
            *(v0 + 64) = v36;
            *v36 = v0;
            v36[1] = sub_2541EDE04;
            v37 = *(v0 + 40);
            isUniquelyReferenced_nonNull_native = v0 + 16;
            v12 = AssociatedTypeWitness;
            v13 = AssociatedConformanceWitness;

            return MEMORY[0x282200308](isUniquelyReferenced_nonNull_native, v12, v13);
          }

          v20 = *v30;
          v4 = *(v0 + 32);
          goto LABEL_38;
        }

LABEL_29:
        if (v6 >= v7)
        {
          v29 = v7;
        }

        else
        {
          v29 = v6;
        }

        sub_2541EE29C(v29, v4);
        v3 = *(v0 + 40);
        goto LABEL_33;
      }

      __break(1u);
LABEL_43:
      __break(1u);
      return MEMORY[0x282200308](isUniquelyReferenced_nonNull_native, v12, v13);
    }

    v18 = BYTE6(v2);
    goto LABEL_26;
  }

  v6 = *(v3 + v5 + 16);
  if (v6)
  {
    v7 = *(v3 + *(v4 + 44));
    goto LABEL_29;
  }

  v19 = (v3 + *(v0 + 80));
  v20 = *v19;
  v21 = v19[1];
  if (v21 >> 60 != 15)
  {
LABEL_38:
    sub_254140660(v20, v21);
    v38 = *(v4 + 16);
    v39 = *(v4 + 24);
    v40 = (v3 + *(type metadata accessor for AsyncCompressionStream.AsyncIterator() + 56));
    v41 = *v40;
    v42 = v40[1];
    *v40 = xmmword_254252DB0;
    sub_254134CF0(v41, v42);
    goto LABEL_39;
  }

  v22 = v3 + *(v4 + 48);
  sub_254134CF0(*v22, *(v22 + 8));
  *v22 = v20;
  *(v22 + 8) = v21;
  v23 = v3 + *(v4 + 52);
  sub_254134CF0(*v23, *(v23 + 8));
  *v23 = v20;
  *(v23 + 8) = v21;
LABEL_39:
  v43 = *(v0 + 8);

  return v43(v20, v21);
}

uint64_t sub_2541EE29C(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  v10 = v3 + *(a2 + 52);
  v11 = *(v10 + 8);
  if (v11 >> 60 != 15)
  {
    v18 = *v10;
    v19 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_12;
      }

      result = *(v18 + 16);
      v20 = *(v18 + 24);
    }

    else
    {
      if (!v19)
      {
        goto LABEL_12;
      }

      result = v18;
      v20 = v18 >> 32;
    }

    if (v20 < result)
    {
      goto LABEL_66;
    }

    if (((v20 | result) & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_47:
    LODWORD(v41) = HIDWORD(v4) - v4;
    if (__OFSUB__(HIDWORD(v4), v4))
    {
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v41 = v41;
LABEL_50:
    result = v41 + 4;
    if (__OFADD__(v41, 4))
    {
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    result = sub_2541EFFDC(result);
    *&v68 = result;
    *(&v68 + 1) = v54;
    if (v2 > 1)
    {
      if (v2 != 2)
      {
        goto LABEL_62;
      }

      v56 = *(v4 + 16);
      v55 = *(v4 + 24);
      result = v55 - v56;
      if (!__OFSUB__(v55, v56))
      {
LABEL_60:
        if (!(result >> 28))
        {
          goto LABEL_63;
        }

        __break(1u);
LABEL_62:
        LODWORD(result) = 0;
LABEL_63:
        v57 = sub_2541BE760(result);
        v59 = v58;
        sub_25424D528();
        sub_254134D04(v57, v59);
        sub_25424D528();
        sub_254134D04(v4, v6);
        v51 = *(&v68 + 1);
        v49 = v68;
LABEL_64:
        v60 = v7 + *(a2 + 56);
        sub_254134CF0(*v60, *(v60 + 8));
        *v60 = v49;
        *(v60 + 8) = v51;
        return sub_2541D0338(a1, v5);
      }

      __break(1u);
    }

    else if (!v2)
    {
      LODWORD(result) = BYTE6(v6);
      goto LABEL_63;
    }

    if (__OFSUB__(HIDWORD(v4), v4))
    {
      goto LABEL_75;
    }

    result = HIDWORD(v4) - v4;
    goto LABEL_60;
  }

  v12 = *(v7 + *(a2 + 44));
  result = v12 + 4;
  if (__OFADD__(v12, 4))
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v14 = sub_2541B1BA0(result);
  v16 = v15;
  v17 = sub_254134CF0(*v10, *(v10 + 8));
  *v10 = v14;
  *(v10 + 8) = v16;
  while (1)
  {
    v21 = v7 + *(a2 + 48);
    if (*(v21 + 8) >> 60 == 15)
    {
      v22 = compression_encode_scratch_buffer_size(COMPRESSION_LZFSE);
      v23 = sub_2541B1BA0(v22);
      v25 = v24;
      v17 = sub_254134CF0(*v21, *(v21 + 8));
      *v21 = v23;
      *(v21 + 8) = v25;
    }

    v69 = 0;
    v5 = (v7 + *(a2 + 36));
    v27 = *v5;
    v26 = v5[1];
    v28 = v5[2];
    MEMORY[0x28223BE20](v17);
    v61[1] = *(a2 + 16);
    v62 = v7;
    v63 = &v69;
    v64 = a1;
    v65 = 2049;

    sub_2541ED850(a1, sub_2541F0080, v61, v27, v26, v28);

    v29 = v69;
    if (v69 >= 1 && v69 < a1)
    {
      break;
    }

    v34 = *v5;
    v35 = v5[1];
    v36 = v5[2];
    v68 = xmmword_254252DC0;
    v67 = 0;
    sub_2541CF898(a1, v34, v35, v36, &v68, &v67, a1);
    v6 = *(&v68 + 1);
    v4 = v68;
    sub_254140660(v68, *(&v68 + 1));
    result = sub_254134D04(v4, v6);
    v2 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v2 != 2)
      {
        goto LABEL_30;
      }

      v39 = *(v4 + 16);
      v38 = *(v4 + 24);
      v40 = __OFSUB__(v38, v39);
      v37 = v38 - v39;
      if (v40)
      {
        goto LABEL_73;
      }
    }

    else
    {
      if (!v2)
      {
        goto LABEL_30;
      }

      LODWORD(v37) = HIDWORD(v4) - v4;
      if (__OFSUB__(HIDWORD(v4), v4))
      {
        goto LABEL_72;
      }

      v37 = v37;
    }

    if (v37 > 0xFFFFFFF)
    {
      goto LABEL_68;
    }

LABEL_30:
    if (v2 <= 1)
    {
      if (v2)
      {
        goto LABEL_47;
      }

      v41 = BYTE6(v6);
      goto LABEL_50;
    }

    if (v2 != 2)
    {
      v41 = 0;
      goto LABEL_50;
    }

    v53 = *(v4 + 16);
    v52 = *(v4 + 24);
    v40 = __OFSUB__(v52, v53);
    v41 = v52 - v53;
    if (!v40)
    {
      goto LABEL_50;
    }

    __break(1u);
LABEL_12:
    v17 = sub_25424D478();
  }

  if (v69 >> 28)
  {
    goto LABEL_67;
  }

  v30 = *(v10 + 8);
  if (v30 >> 60 == 15)
  {
    goto LABEL_76;
  }

  v31 = *v10;
  v32 = v30 >> 62;
  if ((v30 >> 62) > 1)
  {
    v33 = 0;
    if (v32 == 2)
    {
      v33 = *(v31 + 16);
    }
  }

  else if (v32)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0;
  }

  result = sub_2541347C8(v33, 4, v31, v30);
  if (result < v33)
  {
    goto LABEL_69;
  }

  v42 = result;
  v66 = v7;
  v43 = a1;
  result = sub_2541BE760(v29 | 0x10000000);
  if (*(v10 + 8) >> 60 == 15)
  {
    goto LABEL_77;
  }

  v45 = result;
  v46 = v44;
  sub_2541EFE04(result, v44);
  result = sub_254134D04(v45, v46);
  v47 = *(v10 + 8);
  if (v47 >> 60 == 15)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  result = sub_2541347C8(v42, v29, *v10, v47);
  if (result < v33)
  {
    goto LABEL_71;
  }

  if (*(v10 + 8) >> 60 != 15)
  {
    a1 = v43;
    v48 = *v10;
    v49 = sub_25424D4B8();
    v51 = v50;
    v7 = v66;
    goto LABEL_64;
  }

LABEL_79:
  __break(1u);
  return result;
}

uint64_t sub_2541EE740(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    MEMORY[0x28223BE20](result);
    result = type metadata accessor for AsyncCompressionStream.AsyncIterator();
    if (*(a3 + *(result + 52) + 8) >> 60 != 15)
    {
      return sub_2541EF7E4(sub_2541F00A8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_2541EE7F4(uint64_t a1, uint64_t a2, uint64_t a3, size_t *a4, const uint8_t *a5, size_t a6, compression_algorithm a7)
{
  v42 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_30;
  }

  v11 = (a3 + *(type metadata accessor for AsyncCompressionStream.AsyncIterator() + 48));
  v12 = v11[1];
  if (v12 >> 60 == 15)
  {
    goto LABEL_31;
  }

  v13 = *v11;
  v14 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v14 != 2)
    {
      *(&scratch_buffer + 7) = 0;
      *&scratch_buffer = 0;
      result = compression_encode_buffer((a1 + 4), a2 - a1, a5, a6, &scratch_buffer, a7);
      *a4 = result;
      goto LABEL_23;
    }

    src_sizea = a6;
    algorithma = a7;

    sub_254134D04(v13, v12);
    *&scratch_buffer = v13;
    *(&scratch_buffer + 1) = v12 & 0x3FFFFFFFFFFFFFFFLL;
    *v11 = xmmword_254252DC0;
    sub_254134D04(0, 0xC000000000000000);
    sub_25424D428();
    v17 = scratch_buffer;
    v18 = *(scratch_buffer + 16);
    v19 = *(scratch_buffer + 24);
    result = sub_25424D268();
    if (!result)
    {
      __break(1u);
      goto LABEL_33;
    }

    v20 = result;
    v21 = sub_25424D298();
    v22 = v18 - v21;
    if (!__OFSUB__(v18, v21))
    {
      if (!__OFSUB__(v19, v18))
      {
        sub_25424D288();
        result = compression_encode_buffer((a1 + 4), a2 - a1, a5, src_sizea, (v20 + v22), algorithma);
        *a4 = result;
        v23 = *(&v17 + 1) | 0x8000000000000000;
        *v11 = v17;
LABEL_22:
        v11[1] = v23;
        goto LABEL_23;
      }

      goto LABEL_26;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  src_size = a6;
  v36 = a4;
  algorithm = a7;
  if (!v14)
  {
    sub_254134D04(v13, v12);
    *&scratch_buffer = v13;
    WORD4(scratch_buffer) = v12;
    BYTE10(scratch_buffer) = BYTE2(v12);
    BYTE11(scratch_buffer) = BYTE3(v12);
    BYTE12(scratch_buffer) = BYTE4(v12);
    BYTE13(scratch_buffer) = BYTE5(v12);
    BYTE14(scratch_buffer) = BYTE6(v12);
    result = compression_encode_buffer((a1 + 4), a2 - a1, a5, a6, &scratch_buffer, a7);
    *a4 = result;
    v16 = DWORD2(scratch_buffer) | ((WORD6(scratch_buffer) | (BYTE14(scratch_buffer) << 16)) << 32);
    *v11 = scratch_buffer;
    v11[1] = v16;
LABEL_23:
    v33 = *MEMORY[0x277D85DE8];
    return result;
  }

  v24 = v12 & 0x3FFFFFFFFFFFFFFFLL;

  sub_254134D04(v13, v12);
  *v11 = xmmword_254252DC0;
  sub_254134D04(0, 0xC000000000000000);
  v25 = v13 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v25 < v13)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }

    if (sub_25424D268() && __OFSUB__(v13, sub_25424D298()))
    {
      goto LABEL_29;
    }

    v26 = sub_25424D2B8();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    v29 = sub_25424D248();

    v24 = v29;
  }

  if (v25 < v13)
  {
    goto LABEL_25;
  }

  result = sub_25424D268();
  if (result)
  {
    v30 = result;
    v31 = sub_25424D298();
    v32 = v13 - v31;
    if (!__OFSUB__(v13, v31))
    {
      sub_25424D288();
      *v36 = compression_encode_buffer((a1 + 4), a2 - a1, a5, src_size, (v30 + v32), algorithm);

      v23 = v24 | 0x4000000000000000;
      *v11 = v13;
      goto LABEL_22;
    }

    goto LABEL_27;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_2541EEBFC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25413439C;

  return sub_2541EDBF4(a2);
}

uint64_t AsyncSequence<>.hmvCompressed.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, a1);
  v9 = type metadata accessor for AsyncCompressionStream();
  a2[3] = v9;
  a2[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  result = (*(v5 + 32))(boxed_opaque_existential_1, v8, a1);
  *(boxed_opaque_existential_1 + *(v9 + 40)) = 0x8000;
  return result;
}

uint64_t sub_2541EEDEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2541EEE84(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  if (v3 <= 0x3F)
  {
    sub_2541EF314();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2541EEF40(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v11 >= a2)
  {
    goto LABEL_28;
  }

  v13 = ((((((((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v11 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_28:
    if (v10 < 0x7FFFFFFF)
    {
      v22 = *((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }

    else
    {
      v21 = *(v9 + 48);

      return v21(a1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v11 + (v14 | v20) + 1;
}

void sub_2541EF0F0(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((((((((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v16 = 0;
    v17 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((((((((v11 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a3 - v12 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_17:
      if (v16 > 1)
      {
        if (v16 != 2)
        {
          *(a1 + v13) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v13) = 0;
      }

      else if (v16)
      {
        *(a1 + v13) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v10 < 0x7FFFFFFF)
      {
        v21 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v22 = a2 & 0x7FFFFFFF;
          v21[1] = 0;
          v21[2] = 0;
        }

        else
        {
          v22 = (a2 - 1);
        }

        *v21 = v22;
      }

      else
      {
        v20 = *(v9 + 56);

        v20(a1, a2);
      }

      return;
    }
  }

  if (((((((((((v11 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1;
  }

  if (((((((((((v11 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v19 = ~v12 + a2;
    bzero(a1, v13);
    *a1 = v19;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      *(a1 + v13) = v18;
    }

    else
    {
      *(a1 + v13) = v18;
    }
  }

  else if (v16)
  {
    *(a1 + v13) = v18;
  }
}

void sub_2541EF314()
{
  if (!qword_27F5BB538)
  {
    v0 = sub_25424E598();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5BB538);
    }
  }
}

unint64_t sub_2541EF368()
{
  result = qword_27F5BB540;
  if (!qword_27F5BB540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB540);
  }

  return result;
}

unint64_t sub_2541EF3C0()
{
  result = qword_27F5BB548;
  if (!qword_27F5BB548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BB550, qword_25425E748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BB548);
  }

  return result;
}

void *sub_2541EF440(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_254134D04(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_254134D04(v6, v5);
    *v3 = xmmword_254252DC0;
    sub_254134D04(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_25424D268() && __OFSUB__(v6, sub_25424D298()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_25424D2B8();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_25424D248();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_2541EFB70(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_254134D04(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_254252DC0;
    sub_254134D04(0, 0xC000000000000000);
    sub_25424D428();
    result = sub_2541EFB70(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2541EF7E4(void (*a1)(uint64_t, uint64_t))
{
  v2 = v1;
  v23 = *MEMORY[0x277D85DE8];
  v5 = *v1;
  v4 = v1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_254134D04(v5, v4);
      *&v22 = v5;
      *(&v22 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v2 = xmmword_254252DC0;
      sub_254134D04(0, 0xC000000000000000);
      result = sub_2541EFA94(a1);
      v8 = v22;
      v9 = *(&v22 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_254134D04(v5, v4);
      *&v22 = v5;
      WORD4(v22) = v4;
      BYTE10(v22) = BYTE2(v4);
      BYTE11(v22) = BYTE3(v4);
      BYTE12(v22) = BYTE4(v4);
      BYTE13(v22) = BYTE5(v4);
      BYTE14(v22) = BYTE6(v4);
      result = (a1)(&v22, &v22 + BYTE6(v4));
      v8 = v22;
      v9 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
    }

    *v2 = v8;
    v2[1] = v9;
    goto LABEL_15;
  }

  if (v6 != 2)
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    result = (a1)(&v22, &v22);
LABEL_15:
    v20 = *MEMORY[0x277D85DE8];
    return result;
  }

  sub_254134D04(v5, v4);
  *&v22 = v5;
  *(&v22 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v2 = xmmword_254252DC0;
  sub_254134D04(0, 0xC000000000000000);
  sub_25424D428();
  v10 = *(&v22 + 1);
  v11 = *(v22 + 16);
  v12 = *(v22 + 24);
  result = sub_25424D268();
  if (result)
  {
    v13 = result;
    v14 = sub_25424D298();
    v15 = v11 - v14;
    if (__OFSUB__(v11, v14))
    {
      __break(1u);
    }

    else
    {
      v16 = __OFSUB__(v12, v11);
      v17 = v12 - v11;
      if (!v16)
      {
        v18 = sub_25424D288();
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        result = (a1)(v13 + v15, v13 + v15 + v19);
        *v2 = v22;
        v2[1] = v10 | 0x8000000000000000;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2541EFA94(void (*a1)(uint64_t, uint64_t))
{
  result = sub_25424D438();
  v4 = *v1;
  v5 = v1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = a1;
  v6 = *(v1 + 1);

  result = sub_25424D268();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_25424D298();
  v8 = v4 - result;
  if (__OFSUB__(v4, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v5 - v4;
  v10 = sub_25424D288();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12(v7 + v8, v7 + v8 + v11);
}