_BYTE *storeEnumTagSinglePayload for TipSnippetModel.AssetConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA2F8CF0()
{
  result = qword_1ECBA5A40;
  if (!qword_1ECBA5A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5A40);
  }

  return result;
}

unint64_t sub_1DA2F8D48()
{
  result = qword_1ECBA5A48;
  if (!qword_1ECBA5A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5A48);
  }

  return result;
}

unint64_t sub_1DA2F8DA0()
{
  result = qword_1ECBA5A50;
  if (!qword_1ECBA5A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5A50);
  }

  return result;
}

unint64_t sub_1DA2F8DF8()
{
  result = qword_1ECBA5A58;
  if (!qword_1ECBA5A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5A58);
  }

  return result;
}

unint64_t sub_1DA2F8E50()
{
  result = qword_1ECBA5A60;
  if (!qword_1ECBA5A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5A60);
  }

  return result;
}

unint64_t sub_1DA2F8EA8()
{
  result = qword_1ECBA5A68;
  if (!qword_1ECBA5A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5A68);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return sub_1DA34CBE0();
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return sub_1DA34C0E0();
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for TipSnippetModel(0);
}

uint64_t OUTLINED_FUNCTION_14_0()
{

  return sub_1DA34D210();
}

uint64_t OUTLINED_FUNCTION_15_0()
{

  return sub_1DA34CBE0();
}

uint64_t OUTLINED_FUNCTION_22_0()
{

  return sub_1DA34CBE0();
}

uint64_t OUTLINED_FUNCTION_23_0()
{

  return sub_1DA34D210();
}

uint64_t OUTLINED_FUNCTION_29_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x1EEE6AC80](a1, a2, a3, v3, v4);
}

uint64_t OUTLINED_FUNCTION_30_0()
{

  return sub_1DA34CBE0();
}

uint64_t sub_1DA2F9128(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A80, &unk_1DA34EA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA34DC80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  sub_1DA34C0F0();
  v3 = v18[0];
  *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
  *(inited + 64) = &protocol witness table for [A];
  *(inited + 32) = v3;
  sub_1DA2EEF28(inited + 32, v18);

  v4 = v19;
  v5 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v17 = a1;
  v6 = (*(v5 + 8))(&v17, v4, v5);
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_1(v18);
  if (v8)
  {
    sub_1DA2FC190(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v10 = v9;
    v12 = *(v9 + 16);
    v11 = *(v9 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1DA2FC190(v11 > 1, v12 + 1, 1, v9);
      v10 = v16;
    }

    *(v10 + 16) = v12 + 1;
    v13 = v10 + 16 * v12;
    *(v13 + 32) = v6;
    *(v13 + 40) = v8;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v18[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A78, qword_1DA34EA00);
  sub_1DA2F982C();
  v14 = sub_1DA34CAF0();

  return v14;
}

uint64_t sub_1DA2F92E4(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A80, &unk_1DA34EA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA34DC80;
  v3 = *(type metadata accessor for TroubleshootingSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  sub_1DA34C0F0();
  v4 = v19[0];
  *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
  *(inited + 64) = &protocol witness table for [A];
  *(inited + 32) = v4;
  sub_1DA2EEF28(inited + 32, v19);

  v5 = v20;
  v6 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v18 = a1;
  v7 = (*(v6 + 8))(&v18, v5, v6);
  v9 = v8;
  __swift_destroy_boxed_opaque_existential_1(v19);
  if (v9)
  {
    sub_1DA2FC190(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v11 = v10;
    v13 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1DA2FC190(v12 > 1, v13 + 1, 1, v10);
      v11 = v17;
    }

    *(v11 + 16) = v13 + 1;
    v14 = v11 + 16 * v13;
    *(v14 + 32) = v7;
    *(v14 + 40) = v9;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v19[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A78, qword_1DA34EA00);
  sub_1DA2F982C();
  v15 = sub_1DA34CAF0();

  return v15;
}

uint64_t sub_1DA2F94B0(char a1, uint64_t (*a2)(void))
{
  v3 = a2();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1DA2EEF28(v5, v20);
      v7 = v21;
      v8 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v19 = a1;
      v9 = (*(v8 + 8))(&v19, v7, v8);
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_1(v20);
      if (v11)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_7();
          v6 = v15;
        }

        v13 = *(v6 + 16);
        v12 = *(v6 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1DA2FC190(v12 > 1, v13 + 1, 1, v6);
          v6 = v16;
        }

        *(v6 + 16) = v13 + 1;
        v14 = v6 + 16 * v13;
        *(v14 + 32) = v9;
        *(v14 + 40) = v11;
      }

      v5 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  v20[0] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A78, qword_1DA34EA00);
  sub_1DA2F982C();
  v17 = OUTLINED_FUNCTION_0_6();

  return v17;
}

uint64_t ContentSelectable<>.selectableContent(itemStyle:)(char *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = (*(a3 + 16))(a2, a3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1DA2EEF28(v6, v21);
      v8 = v22;
      v9 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      v20 = v3;
      v10 = (*(v9 + 8))(&v20, v8, v9);
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_1(v21);
      if (v12)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1_7();
          v7 = v16;
        }

        v14 = *(v7 + 16);
        v13 = *(v7 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1DA2FC190(v13 > 1, v14 + 1, 1, v7);
          v7 = v17;
        }

        *(v7 + 16) = v14 + 1;
        v15 = v7 + 16 * v14;
        *(v15 + 32) = v10;
        *(v15 + 40) = v12;
      }

      v6 += 40;
      --v5;
    }

    while (v5);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v21[0] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A78, qword_1DA34EA00);
  sub_1DA2F982C();
  v18 = OUTLINED_FUNCTION_0_6();

  return v18;
}

unint64_t sub_1DA2F982C()
{
  result = qword_1EE109F60;
  if (!qword_1EE109F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5A78, qword_1DA34EA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109F60);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_6()
{

  return sub_1DA34CAF0();
}

void OUTLINED_FUNCTION_1_7()
{
  v2 = *(v0 + 16) + 1;

  sub_1DA2FC190(0, v2, 1, v0);
}

void Array<A>.asAttributionGroups()(uint64_t a1)
{
  v2 = type metadata accessor for AttributionItem();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v34 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v35 = *(v7 + 80);
    v38 = (v35 + 32) & ~v35;
    v12 = a1 + v38;
    v13 = MEMORY[0x1E69E7CC0];
    v14 = *(v7 + 72);
    v34 = xmmword_1DA34DC80;
    v37 = v14;
    do
    {
      v15 = sub_1DA2FBD70(v12, v9);
      MEMORY[0x1EEE9AC00](v15);
      *(&v34 - 2) = v9;
      v16 = sub_1DA2FBC7C(sub_1DA2FBDD4, (&v34 - 2), v13);
      if (v17)
      {
        v36 = v11;
        v18 = v6;
        v20 = *(v9 + 2);
        v19 = *(v9 + 3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A90, &qword_1DA34EA60);
        v21 = v38;
        v22 = swift_allocObject();
        *(v22 + 16) = v34;
        sub_1DA2FBD70(v9, v22 + v21);
        swift_bridgeObjectRetain_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DA2FC02C(0, *(v13 + 16) + 1, 1, v13);
          v13 = v31;
        }

        v24 = *(v13 + 16);
        v23 = *(v13 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1DA2FC02C(v23 > 1, v24 + 1, 1, v13);
          v13 = v32;
        }

        *(v13 + 16) = v24 + 1;
        v25 = (v13 + 40 * v24);
        v25[4] = v20;
        v25[5] = v19;
        v25[6] = v20;
        v25[7] = v19;
        v25[8] = v22;
        v6 = v18;
        v11 = v36;
        v26 = v37;
      }

      else
      {
        v27 = v16;
        sub_1DA2FBD70(v9, v6);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v27 & 0x8000000000000000) != 0)
          {
            goto LABEL_16;
          }
        }

        else
        {
          sub_1DA2FC9E8(v13);
          v13 = v33;
          if ((v27 & 0x8000000000000000) != 0)
          {
LABEL_16:
            __break(1u);
            return;
          }
        }

        if (v27 >= *(v13 + 16))
        {
          __break(1u);
          return;
        }

        v28 = v13 + 40 * v27;
        sub_1DA2FBE24(sub_1DA2FBF54);
        v29 = *(*(v28 + 64) + 16);
        v26 = v37;
        sub_1DA2FBEC8(v29, sub_1DA2FBF54);
        v30 = *(v28 + 64);
        *(v30 + 16) = v29 + 1;
        sub_1DA2FC9FC(v6, v30 + v38 + v29 * v26);
      }

      sub_1DA2FC134(v9);
      v12 += v26;
      --v10;
    }

    while (v10);
  }
}

uint64_t type metadata accessor for AttributionItem()
{
  result = qword_1EE10AAB8;
  if (!qword_1EE10AAB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AttributionGroup.set<A>(_:_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(*(*(*a1 + *MEMORY[0x1E69E6CE8] + 8) - 8) + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_3();
  v7 = *v2;
  v8 = v2[1];
  v9 = v2[2];
  v10 = v2[3];
  v11 = v2[4];
  *a2 = v7;
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = v10;
  a2[4] = v11;
  (*(v12 + 16))(v3);

  return swift_setAtWritableKeyPath();
}

uint64_t AttributionItem.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_40();
}

uint64_t AttributionItem.id.setter()
{
  OUTLINED_FUNCTION_4_1();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AttributionItem.group.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_40();
}

uint64_t AttributionItem.group.setter()
{
  OUTLINED_FUNCTION_4_1();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t AttributionItem.title.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_40();
}

uint64_t AttributionItem.title.setter()
{
  OUTLINED_FUNCTION_4_1();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t AttributionItem.subtitle.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_40();
}

uint64_t AttributionItem.subtitle.setter()
{
  OUTLINED_FUNCTION_4_1();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t AttributionItem.thumbnailImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AttributionItem() + 32);
  v4 = sub_1DA34C0C0();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t AttributionItem.thumbnailImage.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AttributionItem() + 32);
  v4 = sub_1DA34C0C0();
  OUTLINED_FUNCTION_12(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t AttributionItem.appPunchOut.getter()
{
  v0 = *(type metadata accessor for AttributionItem() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A98, &qword_1DA34EA68);
  return sub_1DA34C030();
}

uint64_t AttributionItem.appPunchOut.setter()
{
  v0 = *(type metadata accessor for AttributionItem() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A98, &qword_1DA34EA68);
  return sub_1DA34C040();
}

void (*AttributionItem.appPunchOut.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v3 = *(type metadata accessor for AttributionItem() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A98, &qword_1DA34EA68);
  v2[4] = sub_1DA34C020();
  return sub_1DA2F2748;
}

uint64_t AttributionItem.init(id:group:title:subtitle:thumbnailImage:punchOutUri:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  v12 = type metadata accessor for AttributionItem();
  v13 = *(v12 + 32);
  v14 = sub_1DA34C0C0();
  OUTLINED_FUNCTION_9_0(v14);
  v19 = v15;
  (*(v15 + 16))(&a9[v13], a10, v14);
  sub_1DA2FA2E0(a11);
  v16 = *(v12 + 36);
  sub_1DA2FCA60();
  sub_1DA34C010();
  sub_1DA2FCAA4(a11);
  v17 = *(v19 + 8);

  return v17(a10, v14);
}

id sub_1DA2FA2E0(uint64_t a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59B0, &qword_1DA34EA70) - 8) + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27_1();
  v5 = sub_1DA34B940();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_4();
  v13 = v12 - v11;
  v14 = [objc_allocWithZone(MEMORY[0x1E69C7B00]) init];
  sub_1DA34B930();
  v15 = sub_1DA34B920();
  v17 = v16;
  (*(v8 + 8))(v13, v5);
  sub_1DA2FCCA0(v15, v17, v14);

  [v14 setAppAvailableInStorefront_];
  sub_1DA2FD46C(a1, v1);
  v18 = sub_1DA34B8C0();
  v19 = 0;
  if (__swift_getEnumTagSinglePayload(v1, 1, v18) != 1)
  {
    v19 = sub_1DA34B890();
    (*(*(v18 - 8) + 8))(v1, v18);
  }

  [v14 setPunchOutUri_];

  return v14;
}

uint64_t sub_1DA2FA4BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DA34D160() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x70756F7267 && a2 == 0xE500000000000000;
    if (v6 || (sub_1DA34D160() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
      if (v7 || (sub_1DA34D160() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
        if (v8 || (sub_1DA34D160() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x69616E626D756874 && a2 == 0xEE006567616D496CLL;
          if (v9 || (sub_1DA34D160() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x68636E7550707061 && a2 == 0xEB0000000074754FLL)
          {

            return 5;
          }

          else
          {
            v11 = sub_1DA34D160();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DA2FA6A8(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x70756F7267;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      result = 0x656C746974627573;
      break;
    case 4:
      result = 0x69616E626D756874;
      break;
    case 5:
      result = 0x68636E7550707061;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA2FA764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA2FA4BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA2FA78C(uint64_t a1)
{
  v2 = sub_1DA2FCB0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA2FA7C8(uint64_t a1)
{
  v2 = sub_1DA2FCB0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AttributionItem.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5AA0, &qword_1DA34EA78);
  OUTLINED_FUNCTION_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_3();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2FCB0C();
  sub_1DA34D250();
  v13 = *v4;
  v14 = v4[1];
  OUTLINED_FUNCTION_10_1();
  sub_1DA34D0F0();
  if (!v2)
  {
    v15 = v4[2];
    v16 = v4[3];
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_10_1();
    sub_1DA34D0F0();
    v17 = v4[4];
    v18 = v4[5];
    OUTLINED_FUNCTION_28_0();
    OUTLINED_FUNCTION_10_1();
    sub_1DA34D0F0();
    v19 = v4[6];
    v20 = v4[7];
    OUTLINED_FUNCTION_10_1();
    sub_1DA34D0F0();
    v21 = type metadata accessor for AttributionItem();
    v22 = *(v21 + 32);
    sub_1DA34C0C0();
    OUTLINED_FUNCTION_3_5();
    sub_1DA2FCE44(v23, v24);
    OUTLINED_FUNCTION_10_1();
    sub_1DA34D120();
    v25 = *(v21 + 36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A98, &qword_1DA34EA68);
    sub_1DA2FCB60(&qword_1EE10ACC0);
    OUTLINED_FUNCTION_10_1();
    sub_1DA34D120();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t AttributionItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A98, &qword_1DA34EA68);
  OUTLINED_FUNCTION_0(v4);
  v35 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_3();
  v40 = sub_1DA34C0C0();
  v9 = OUTLINED_FUNCTION_0(v40);
  v37 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_4();
  v15 = v14 - v13;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5AA8, &qword_1DA34EA80);
  OUTLINED_FUNCTION_0(v38);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_27_1();
  v39 = type metadata accessor for AttributionItem();
  v19 = OUTLINED_FUNCTION_12(v39);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1_4();
  v24 = (v23 - v22);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2FCB0C();
  sub_1DA34D240();
  if (v41)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  *v24 = OUTLINED_FUNCTION_15_1();
  v24[1] = v26;
  OUTLINED_FUNCTION_29_1();
  v24[2] = OUTLINED_FUNCTION_15_1();
  v24[3] = v27;
  OUTLINED_FUNCTION_28_0();
  v24[4] = OUTLINED_FUNCTION_15_1();
  v24[5] = v28;
  v24[6] = OUTLINED_FUNCTION_15_1();
  v24[7] = v29;
  OUTLINED_FUNCTION_3_5();
  sub_1DA2FCE44(v30, v31);
  sub_1DA34D090();
  (*(v37 + 32))(v24 + *(v39 + 32), v15, v40);
  sub_1DA2FCB60(&qword_1EE109F00);
  sub_1DA34D090();
  v32 = OUTLINED_FUNCTION_2_5();
  v33(v32);
  (*(v35 + 32))(v24 + *(v39 + 36), v2, v4);
  sub_1DA2FBD70(v24, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DA2FC134(v24);
}

uint64_t static AttributionItem.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DA34D160();
  }
}

uint64_t AttributionItem.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1DA34CBE0();
}

uint64_t AttributionItem.hashValue.getter()
{
  sub_1DA34D210();
  v1 = *v0;
  v2 = v0[1];
  sub_1DA34CBE0();
  return sub_1DA34D230();
}

uint64_t sub_1DA2FAFDC()
{
  sub_1DA34D210();
  v1 = *v0;
  v2 = v0[1];
  sub_1DA34CBE0();
  return sub_1DA34D230();
}

uint64_t AttributionGroup.displayLabel.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_40();
}

uint64_t AttributionGroup.displayLabel.setter()
{
  OUTLINED_FUNCTION_4_1();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t AttributionGroup.attributions.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

void __swiftcall AttributionGroup.init(name:displayLabel:attributions:)(DeviceExpertIntents::AttributionGroup *__return_ptr retstr, Swift::String name, Swift::String_optional displayLabel, Swift::OpaquePointer attributions)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  if (!displayLabel.value._object)
  {

    displayLabel.value._countAndFlagsBits = countAndFlagsBits;
    displayLabel.value._object = object;
  }

  retstr->name._countAndFlagsBits = countAndFlagsBits;
  retstr->name._object = object;
  retstr->displayLabel = displayLabel.value;
  retstr->attributions = attributions;
}

uint64_t AttributionGroup.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_40();
}

uint64_t sub_1DA2FB164(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DA34D160() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4C79616C70736964 && a2 == 0xEC0000006C656261;
    if (v6 || (sub_1DA34D160() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7475626972747461 && a2 == 0xEC000000736E6F69)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DA34D160();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DA2FB27C(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0x4C79616C70736964;
  }

  return 0x7475626972747461;
}

uint64_t sub_1DA2FB2E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA2FB164(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA2FB30C(uint64_t a1)
{
  v2 = sub_1DA2FCBB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA2FB348(uint64_t a1)
{
  v2 = sub_1DA2FCBB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AttributionGroup.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5AB0, &unk_1DA34EA88);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_3();
  v10 = *v1;
  v11 = v1[1];
  v15 = v1[3];
  v16 = v1[2];
  v14 = v1[4];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2FCBB0();
  sub_1DA34D250();
  sub_1DA34D0F0();
  if (!v17)
  {
    OUTLINED_FUNCTION_29_1();
    sub_1DA34D0F0();
    OUTLINED_FUNCTION_28_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5850, &qword_1DA34DEA0);
    sub_1DA2FCC04(qword_1EE109F78, &qword_1EE10AAC8);
    sub_1DA34D120();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t AttributionGroup.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5AB8, &qword_1DA34EA98);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2FCBB0();
  sub_1DA34D240();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_1DA34D060();
  v18 = v11;
  OUTLINED_FUNCTION_29_1();
  v16 = sub_1DA34D060();
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5850, &qword_1DA34DEA0);
  OUTLINED_FUNCTION_28_0();
  sub_1DA2FCC04(&qword_1EE109018, qword_1EE109AD8);
  sub_1DA34D090();
  v13 = OUTLINED_FUNCTION_10_2();
  v14(v13);
  *a2 = v10;
  a2[1] = v18;
  a2[2] = v16;
  a2[3] = v17;
  a2[4] = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DA2FB840@<X0>(uint64_t *a1@<X8>)
{
  result = AttributionGroup.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static AttributionGroup.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a2[4];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DA34D160() & 1) == 0)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_40();

  return sub_1DA2FB968(v5, v6);
}

uint64_t sub_1DA2FB8DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1DA34D160() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1DA2FB968(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionItem();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v11 = (&v20 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    do
    {
      sub_1DA2FBD70(v14, v11);
      sub_1DA2FBD70(v15, v8);
      if (*v11 == *v8 && v11[1] == v8[1])
      {
        sub_1DA2FC134(v8);
        sub_1DA2FC134(v11);
      }

      else
      {
        v18 = sub_1DA34D160();
        sub_1DA2FC134(v8);
        sub_1DA2FC134(v11);
        if ((v18 & 1) == 0)
        {
          return 0;
        }
      }

      v15 += v16;
      v14 += v16;
      --v12;
    }

    while (v12);
  }

  return 1;
}

uint64_t AttributionGroup.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];

  sub_1DA34CBE0();

  v4 = OUTLINED_FUNCTION_40();

  return sub_1DA2FCD04(v4, v5);
}

uint64_t AttributionGroup.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];
  sub_1DA34D210();
  sub_1DA34CBE0();
  sub_1DA2FCD04(v5, v3);
  return sub_1DA34D230();
}

uint64_t sub_1DA2FBBC0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];
  sub_1DA34D210();
  sub_1DA34CBE0();
  sub_1DA2FCD04(v5, v3);
  return sub_1DA34D230();
}

uint64_t sub_1DA2FBC24(void *a1, uint64_t a2)
{
  if (*a1 == *(a2 + 16) && a1[1] == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1DA34D160() & 1;
  }
}

uint64_t sub_1DA2FBC7C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = 0;
  v7 = *(a3 + 16);
  for (i = (a3 + 64); ; i += 5)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v9 = *(i - 3);
    v10 = *(i - 2);
    v11 = *(i - 1);
    v12 = *i;
    v15[0] = *(i - 4);
    v15[1] = v9;
    v15[2] = v10;
    v15[3] = v11;
    v15[4] = v12;

    v13 = a1(v15);

    if (v4)
    {
      return result;
    }

    if (v13)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

uint64_t sub_1DA2FBD70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA2FBE24(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1DA2FBEC8(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1DA2FBF10(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1DA34CC80();
  }

  return result;
}

void sub_1DA2FBF54()
{
  OUTLINED_FUNCTION_8_1();
  if (v4)
  {
    OUTLINED_FUNCTION_7_1();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_3();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_31(v2, v5, &qword_1ECBA5A90, &qword_1DA34EA60);
  OUTLINED_FUNCTION_20_1();
  v9 = type metadata accessor for AttributionItem();
  OUTLINED_FUNCTION_9_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_25_1();
  if (v1)
  {
    OUTLINED_FUNCTION_14_1(type metadata accessor for AttributionItem, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_4();
  }
}

void sub_1DA2FC02C(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_19_1();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_17_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B08, &qword_1DA34EF38);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[40 * v9] <= v13)
    {
      memmove(v13, v14, 40 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1DA2FC134(uint64_t a1)
{
  v2 = type metadata accessor for AttributionItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DA2FC190(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_19_1();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_17_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5828, &qword_1DA34EF30);
    v11 = swift_allocObject();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_30_1();
    *(v11 + 2) = v9;
    *(v11 + 3) = v12;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1DA2FC27C()
{
  OUTLINED_FUNCTION_8_1();
  if (v4)
  {
    OUTLINED_FUNCTION_7_1();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_3();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_31(v2, v5, &qword_1ECBA5AE0, &qword_1DA34EF08);
  OUTLINED_FUNCTION_20_1();
  v9 = sub_1DA34BA10();
  OUTLINED_FUNCTION_9_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_25_1();
  if (v1)
  {
    OUTLINED_FUNCTION_14_1(MEMORY[0x1E69BCCB0], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_4();
  }
}

void sub_1DA2FC354()
{
  OUTLINED_FUNCTION_8_1();
  if (v4)
  {
    OUTLINED_FUNCTION_7_1();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_3();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_31(v2, v5, &qword_1ECBA5B00, &qword_1DA34EF28);
  OUTLINED_FUNCTION_20_1();
  v9 = sub_1DA34B9B0();
  OUTLINED_FUNCTION_9_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_25_1();
  if (v1)
  {
    OUTLINED_FUNCTION_14_1(MEMORY[0x1E69BCC90], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_4();
  }
}

void sub_1DA2FC42C()
{
  OUTLINED_FUNCTION_8_1();
  if (v4)
  {
    OUTLINED_FUNCTION_7_1();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_3();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_31(v2, v5, &qword_1ECBA5AD8, &qword_1DA34EF00);
  OUTLINED_FUNCTION_20_1();
  v9 = sub_1DA34C930();
  OUTLINED_FUNCTION_9_0(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_25_1();
  if (v1)
  {
    OUTLINED_FUNCTION_14_1(MEMORY[0x1E69DA398], v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4_4();
  }
}

void sub_1DA2FC504(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_19_1();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_17_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5AF8, &qword_1DA34EF20);
    v11 = swift_allocObject();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_30_1();
    *(v11 + 2) = v9;
    *(v11 + 3) = v12;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v9);
  }
}

size_t sub_1DA2FC5E8(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1DA2FC788(v9, a2, &qword_1ECBA5AE8, &qword_1DA34EF10, MEMORY[0x1E69D2C98]);
  v11 = *(sub_1DA34C6D0() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1DA2FC928(a4 + v12, v9, v10 + v12, MEMORY[0x1E69D2C98]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DA2FC70C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5AF0, &qword_1DA34EF18);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 8);
  return v4;
}

size_t sub_1DA2FC788(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = OUTLINED_FUNCTION_20_1();
  v9 = *(a5(v8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v12);
  if (v10)
  {
    if (result - v11 != 0x8000000000000000 || v10 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * ((result - v11) / v10);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1DA2FC8C8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_7(a3, result);
  }

  return result;
}

char *sub_1DA2FC900(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_7(a3, result);
  }

  return result;
}

uint64_t sub_1DA2FC928(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = OUTLINED_FUNCTION_12(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_24_0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_24_0();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1DA2FC9FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DA2FCA60()
{
  result = qword_1EE109F48;
  if (!qword_1EE109F48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE109F48);
  }

  return result;
}

uint64_t sub_1DA2FCAA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59B0, &qword_1DA34EA70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DA2FCB0C()
{
  result = qword_1EE10AAE0;
  if (!qword_1EE10AAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10AAE0);
  }

  return result;
}

uint64_t sub_1DA2FCB60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5A98, &qword_1DA34EA68);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA2FCBB0()
{
  result = qword_1EE10A8E8[0];
  if (!qword_1EE10A8E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE10A8E8);
  }

  return result;
}

uint64_t sub_1DA2FCC04(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5850, &qword_1DA34DEA0);
    sub_1DA2FCE44(a2, type metadata accessor for AttributionItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DA2FCCA0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DA34CB30();

  [a3 setAceId_];
}

uint64_t sub_1DA2FCD04(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AttributionItem();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a2 + 16);
  result = MEMORY[0x1DA74ACB0](v8);
  if (v8)
  {
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_1DA2FBD70(v10, v7);
      v12 = *v7;
      v13 = v7[1];
      sub_1DA34CBE0();
      result = sub_1DA2FC134(v7);
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1DA2FCE44(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DA2FCE9C()
{
  result = qword_1EE10A8C0;
  if (!qword_1EE10A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A8C0);
  }

  return result;
}

void sub_1DA2FCF18()
{
  sub_1DA34C0C0();
  if (v0 <= 0x3F)
  {
    sub_1DA2FCFB0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DA2FCFB0()
{
  if (!qword_1EE10ACB8)
  {
    sub_1DA2FCA60();
    v0 = sub_1DA34C050();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE10ACB8);
    }
  }
}

uint64_t sub_1DA2FD008(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1DA2FD048(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for AttributionGroup.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AttributionItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA2FD25C()
{
  result = qword_1ECBA5AC8;
  if (!qword_1ECBA5AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5AC8);
  }

  return result;
}

unint64_t sub_1DA2FD2B4()
{
  result = qword_1ECBA5AD0;
  if (!qword_1ECBA5AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5AD0);
  }

  return result;
}

unint64_t sub_1DA2FD30C()
{
  result = qword_1EE10A8D8;
  if (!qword_1EE10A8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A8D8);
  }

  return result;
}

unint64_t sub_1DA2FD364()
{
  result = qword_1EE10A8E0;
  if (!qword_1EE10A8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A8E0);
  }

  return result;
}

unint64_t sub_1DA2FD3BC()
{
  result = qword_1EE10AAD0;
  if (!qword_1EE10AAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10AAD0);
  }

  return result;
}

unint64_t sub_1DA2FD414()
{
  result = qword_1EE10AAD8;
  if (!qword_1EE10AAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10AAD8);
  }

  return result;
}

uint64_t sub_1DA2FD46C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59B0, &qword_1DA34EA70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_4()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_14_1@<X0>(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  return sub_1DA2FC928(v2 + a2, v4, v3 + a2, a1);
}

uint64_t OUTLINED_FUNCTION_15_1()
{

  return sub_1DA34D060();
}

size_t OUTLINED_FUNCTION_31(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DA2FC788(v5, a2, a3, a4, v4);
}

uint64_t sub_1DA2FD6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B10, &qword_1DA34FBC0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_1DA34C600();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DA2FD798()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[2];
  v5 = v0[3];
  v7 = v0[4];

  sub_1DA34C5F0();
  (*(v2 + 16))(v4, v1, v3);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v3);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_1DA2FD8B4;
  v10 = v0[5];
  v9 = v0[6];

  return sub_1DA3078A0();
}

uint64_t sub_1DA2FD8B4()
{
  OUTLINED_FUNCTION_2_6();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *v1;
  v4[11] = v0;

  v7 = v4[6];
  if (!v0)
  {
    v4[12] = v3;
  }

  sub_1DA2E7E4C(v7, &qword_1ECBA5B10, &qword_1DA34FBC0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DA2FDA14()
{
  OUTLINED_FUNCTION_2_6();
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = sub_1DA34C660();
  v7 = v6;

  (*(v3 + 8))(v2, v4);
  v8 = v0[9];
  v9 = v0[6];

  OUTLINED_FUNCTION_1_8();

  return v10(v5, v7);
}

uint64_t sub_1DA2FDAC8()
{
  if (v0[4] == 1)
  {
    v1 = v0[11];
    v3 = v0[8];
    v2 = v0[9];
    v4 = v0[7];
    MEMORY[0x1DA74A690](v0[2], v0[3]);

    v6 = 0xA0C2BFA3EFLL;
    v5 = 0xA500000000000000;
    (*(v3 + 8))(v2, v4);
  }

  else
  {
    if (qword_1EE109058 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v7 = v0[11];
    v8 = sub_1DA34C8E0();
    __swift_project_value_buffer(v8, qword_1EE109060);
    v9 = v7;
    v10 = sub_1DA34C8C0();
    v11 = sub_1DA34CDA0();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[11];
    if (v12)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v13;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      OUTLINED_FUNCTION_4_5(&dword_1DA2E0000, v18, v19, "Error getting attributionGroupAsLabels : %@");
      sub_1DA2E7E4C(v15, &qword_1ECBA5820, &unk_1DA34DD00);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    else
    {
    }

    (*(v0[8] + 8))(v0[9], v0[7]);
    v6 = 0;
    v5 = 0;
  }

  v20 = v0[9];
  v21 = v0[6];

  OUTLINED_FUNCTION_1_8();

  return v22(v6, v5);
}

uint64_t sub_1DA2FDCD4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1DA34C600();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA2FDD90()
{
  v1 = v0[2];
  v2 = v1[2];
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = v1[4];
      v4 = v1[5];
      v6 = v0[6];

      OUTLINED_FUNCTION_1_8();

      return v7(v5, v4);
    }

    v9 = v0[5];
    v19 = MEMORY[0x1E69E7CC0];
    sub_1DA3489F4();
    v3 = v19;
    v10 = v1 + 5;
    do
    {
      v11 = v0[6];
      v12 = *(v10 - 1);
      v13 = *v10;

      sub_1DA34C5F0();
      v14 = *(v19 + 16);
      if (v14 >= *(v19 + 24) >> 1)
      {
        sub_1DA3489F4();
      }

      v15 = v0[6];
      v16 = v0[4];
      *(v19 + 16) = v14 + 1;
      (*(v9 + 32))(v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v14, v15, v16);
      v10 += 2;
      --v2;
    }

    while (v2);
  }

  v0[7] = v3;
  v17 = swift_task_alloc();
  v0[8] = v17;
  *v17 = v0;
  v17[1] = sub_1DA2FDF88;
  v18 = v0[3];

  return sub_1DA307D84(v3);
}

uint64_t sub_1DA2FDF88()
{
  OUTLINED_FUNCTION_2_6();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v3;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DA2FE0CC()
{
  v1 = *(v0 + 80);
  v2 = sub_1DA34C660();
  v4 = v3;

  v5 = *(v0 + 48);

  OUTLINED_FUNCTION_1_8();

  return v6(v2, v4);
}

uint64_t sub_1DA2FE150()
{
  OUTLINED_FUNCTION_2_6();
  if (qword_1EE109058 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v1 = *(v0 + 72);
  v2 = sub_1DA34C8E0();
  __swift_project_value_buffer(v2, qword_1EE109060);
  v3 = v1;
  v4 = sub_1DA34C8C0();
  v5 = sub_1DA34CDA0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 72);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_4_5(&dword_1DA2E0000, v12, v13, "Error calling attributionListAsLabels: %@");
    sub_1DA2E7E4C(v9, &qword_1ECBA5820, &unk_1DA34DD00);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  v14 = *(v0 + 48);

  OUTLINED_FUNCTION_1_8();

  return v15(0, 0);
}

void OUTLINED_FUNCTION_4_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t ContextualRewriteResult.resolvedResult.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DA34BFB0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ContextualRewriteResult.resolvedResult.setter()
{
  OUTLINED_FUNCTION_21_0();
  v2 = sub_1DA34BFB0();
  v3 = *(*(v2 - 8) + 40);

  return v3(v1, v0, v2);
}

__n128 ContextualRewriteResult.rewriteSummary.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ContextualRewriteResult() + 20);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = *(v3 + 48);
  return result;
}

uint64_t type metadata accessor for ContextualRewriteResult()
{
  result = qword_1EE109530;
  if (!qword_1EE109530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 ContextualRewriteResult.rewriteSummary.setter()
{
  OUTLINED_FUNCTION_21_0();
  v2 = v1 + *(type metadata accessor for ContextualRewriteResult() + 20);
  v3 = *(v0 + 16);
  *v2 = *v0;
  *(v2 + 16) = v3;
  result = *(v0 + 32);
  *(v2 + 32) = result;
  *(v2 + 48) = *(v0 + 48);
  return result;
}

uint64_t (*ContextualRewriteResult.rewriteSummary.modify())(void)
{
  OUTLINED_FUNCTION_21_0();
  v0 = *(type metadata accessor for ContextualRewriteResult() + 20);
  return nullsub_1;
}

uint64_t sub_1DA2FE534()
{
  result = sub_1DA34BFB0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t AttributionModel.init(label:)(char *a1)
{
  v2 = sub_1DA34B700();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_1();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  sub_1DA34B6F0();
  v14 = *(v5 + 16);
  v14(v10, v13, v2);
  swift_getKeyPath();
  type metadata accessor for AttributeScopes.DeviceExpertIntentAttributes();
  OUTLINED_FUNCTION_1_9();
  sub_1DA2FFE00(v15);
  sub_1DA34B7B0();
  v16 = *(v5 + 8);
  v16(v13, v2);
  v14(v13, a1, v2);
  v14(v10, v13, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B18, &qword_1DA34EFC8);
  sub_1DA34B7A0();
  v16(a1, v2);
  return (v16)(v13, v2);
}

uint64_t sub_1DA2FE784(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B68, &qword_1DA34F1F8);
  return sub_1DA34CB00() & 1;
}

uint64_t sub_1DA2FE7E8(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B68, &qword_1DA34F1F8);
  return sub_1DA34CAE0();
}

void sub_1DA2FE838()
{
  sub_1DA2EF134();
  sub_1DA34B7D0();
  __break(1u);
}

uint64_t sub_1DA2FE86C@<X0>(uint64_t *a1@<X8>)
{
  AttributeScopes.deviceExpert.getter();
  result = type metadata accessor for AttributeScopes.DeviceExpertIntentAttributes();
  *a1 = result;
  return result;
}

uint64_t AttributionModel.label.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B18, &qword_1DA34EFC8);

  return sub_1DA34B790();
}

uint64_t sub_1DA2FE8E4(uint64_t a1)
{
  v2 = sub_1DA34B700();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  return AttributionModel.label.setter(v5);
}

uint64_t AttributionModel.label.setter(uint64_t a1)
{
  v2 = sub_1DA34B700();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_1();
  v10 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  v14 = *(v5 + 16);
  v14(&v17 - v12, a1, v2);
  v14(v10, v13, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B18, &qword_1DA34EFC8);
  sub_1DA34B7A0();
  v15 = *(v5 + 8);
  v15(a1, v2);
  return (v15)(v13, v2);
}

void (*AttributionModel.label.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1DA34B700();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = OUTLINED_FUNCTION_5_4();
  v3[4] = OUTLINED_FUNCTION_5_4();
  v3[5] = OUTLINED_FUNCTION_5_4();
  v3[6] = OUTLINED_FUNCTION_5_4();
  v3[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B18, &qword_1DA34EFC8);
  sub_1DA34B790();
  return sub_1DA2FEBDC;
}

void sub_1DA2FEBDC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = *((*a1)[2] + 16);
  v6(v3, (*a1)[6], v5);
  v6(v4, v3, v5);
  v7 = v2[6];
  v8 = v2[7];
  v9 = v2[4];
  v16 = v2[5];
  v11 = v2[2];
  v10 = v2[3];
  v12 = *v2;
  v13 = v2[1];
  if (a2)
  {
    v6(v2[3], v9, v2[1]);
    sub_1DA34B7A0();
    v14 = *(v11 + 8);
    v14(v9, v13);
  }

  else
  {
    sub_1DA34B7A0();
    v14 = *(v11 + 8);
  }

  v14(v16, v13);
  v14(v7, v13);
  free(v7);
  free(v16);
  free(v9);
  free(v10);

  free(v2);
}

char *AttributionModel.attributionGroups.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B20, &qword_1DA34EFD0);
  v1 = *(*(v0 - 8) + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v56 - v3);
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B28, &qword_1DA34EFD8) - 8) + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v56 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B30, &qword_1DA34EFE0);
  OUTLINED_FUNCTION_0(v63);
  v59 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B38, &qword_1DA34EFE8);
  v16 = OUTLINED_FUNCTION_0(v15);
  v60 = v17;
  v61 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3_1();
  v62 = (v20 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v56 - v23;
  v25 = sub_1DA34B6C0();
  v26 = OUTLINED_FUNCTION_0(v25);
  v57 = v27;
  v58 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1_4();
  v32 = v31 - v30;
  v33 = sub_1DA34B700();
  v34 = OUTLINED_FUNCTION_0(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_1_4();
  v41 = v40 - v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B18, &qword_1DA34EFC8);
  sub_1DA34B790();
  sub_1DA34B6E0();
  (*(v36 + 8))(v41, v33);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_1DA2EF134();
  sub_1DA34B6D0();

  (*(v57 + 8))(v32, v58);
  v42 = *(v60 + 16);
  v58 = v24;
  v42(v62, v24, v61);
  sub_1DA2FFBE8(&qword_1ECBA5B40, &qword_1ECBA5B38, &qword_1DA34EFE8);
  sub_1DA34CC30();
  sub_1DA2FFBE8(&qword_1ECBA5B48, &qword_1ECBA5B30, &qword_1DA34EFE0);
  v62 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1DA34CE30();
    if (__swift_getEnumTagSinglePayload(v8, 1, v0) == 1)
    {
      break;
    }

    sub_1DA2FF228(v8, v4);
    v44 = *v4;
    v43 = v4[1];
    v45 = v4[2];
    v46 = v4[3];
    v47 = v4[4];
    sub_1DA2FF298(v4 + *(v0 + 48));
    if (v43)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DA2FC02C(0, *(v62 + 2) + 1, 1, v62);
        v62 = v53;
      }

      v49 = *(v62 + 2);
      v48 = *(v62 + 3);
      v50 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        v56 = *(v62 + 2);
        v57 = v49 + 1;
        sub_1DA2FC02C(v48 > 1, v49 + 1, 1, v62);
        v49 = v56;
        v50 = v57;
        v62 = v54;
      }

      v51 = v62;
      *(v62 + 2) = v50;
      v52 = &v51[40 * v49];
      *(v52 + 4) = v44;
      *(v52 + 5) = v43;
      *(v52 + 6) = v45;
      *(v52 + 7) = v46;
      *(v52 + 8) = v47;
    }
  }

  (*(v59 + 8))(v14, v63);
  (*(v60 + 8))(v58, v61);
  return v62;
}

uint64_t sub_1DA2FF228(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B20, &qword_1DA34EFD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA2FF298(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5868, &qword_1DA34F040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AttributionModel.attributionItems.getter()
{
  result = AttributionModel.attributionGroups.getter();
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = MEMORY[0x1E69E7CC0];
  for (i = 64; ; i += 40)
  {
    if (v3 == v2)
    {

      return v4;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v6 = *(v1 + i);
    v7 = *(v6 + 16);
    v8 = *(v4 + 16);
    if (__OFADD__(v8, v7))
    {
      goto LABEL_17;
    }

    v9 = *(v1 + i);

    if (!swift_isUniquelyReferenced_nonNull_native() || v8 + v7 > *(v4 + 24) >> 1)
    {
      sub_1DA2FBF54();
      v4 = v10;
    }

    if (*(v6 + 16))
    {
      v11 = (*(v4 + 24) >> 1) - *(v4 + 16);
      result = type metadata accessor for AttributionItem();
      v12 = *(result - 8);
      if (v11 < v7)
      {
        goto LABEL_19;
      }

      v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v14 = *(v12 + 72);
      swift_arrayInitWithCopy();

      if (v7)
      {
        v15 = *(v4 + 16);
        v16 = __OFADD__(v15, v7);
        v17 = v15 + v7;
        if (v16)
        {
          goto LABEL_20;
        }

        *(v4 + 16) = v17;
      }
    }

    else
    {

      if (v7)
      {
        goto LABEL_18;
      }
    }

    ++v2;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1DA2FF480(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001DA354D30 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DA34D160();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DA2FF520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA2FF480(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DA2FF54C(uint64_t a1)
{
  v2 = sub_1DA2FFAEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA2FF588(uint64_t a1)
{
  v2 = sub_1DA2FFAEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AttributionModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B50, &qword_1DA34F048);
  OUTLINED_FUNCTION_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2FFAEC();
  sub_1DA34D250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B18, &qword_1DA34EFC8);
  sub_1DA2FFBE8(&qword_1EE10ACE8, &qword_1ECBA5B18, &qword_1DA34EFC8);
  sub_1DA34D120();
  return (*(v4 + 8))(v9, v2);
}

uint64_t AttributionModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B18, &qword_1DA34EFC8);
  OUTLINED_FUNCTION_0(v46);
  v42 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B58, &qword_1DA34F050);
  v9 = OUTLINED_FUNCTION_0(v8);
  v43 = v10;
  v44 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  v16 = sub_1DA34B700();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_3_1();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v41 - v26;
  v28 = type metadata accessor for AttributionModel();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  OUTLINED_FUNCTION_1_4();
  v32 = v31 - v30;
  sub_1DA34B6F0();
  (*(v19 + 16))(v24, v27, v16);
  swift_getKeyPath();
  type metadata accessor for AttributeScopes.DeviceExpertIntentAttributes();
  OUTLINED_FUNCTION_1_9();
  sub_1DA2FFE00(v33);
  sub_1DA34B7B0();
  (*(v19 + 8))(v27, v16);
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA2FFAEC();
  v35 = v47;
  sub_1DA34D240();
  if (!v35)
  {
    v36 = v42;
    sub_1DA2FFBE8(&qword_1EE109F30, &qword_1ECBA5B18, &qword_1DA34EFC8);
    v38 = v45;
    v37 = v46;
    v39 = v44;
    sub_1DA34D090();
    (*(v43 + 8))(v15, v39);
    (*(v36 + 40))(v32, v38, v37);
    sub_1DA2FFC30(v32, v41);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DA2FFB8C(v32);
}

unint64_t sub_1DA2FFAEC()
{
  result = qword_1EE10A8B8;
  if (!qword_1EE10A8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A8B8);
  }

  return result;
}

uint64_t type metadata accessor for AttributionModel()
{
  result = qword_1EE10A860;
  if (!qword_1EE10A860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA2FFB8C(uint64_t a1)
{
  v2 = type metadata accessor for AttributionModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA2FFBE8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1DA2FFC30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DA2FFCBC()
{
  sub_1DA2FFD28();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1DA2FFD28()
{
  if (!qword_1EE10ACE0)
  {
    sub_1DA34B700();
    type metadata accessor for AttributeScopes.DeviceExpertIntentAttributes();
    sub_1DA2FFE00(&qword_1EE10AD88);
    sub_1DA2FFE00(&qword_1EE10AD80);
    v0 = sub_1DA34B7C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE10ACE0);
    }
  }
}

uint64_t sub_1DA2FFE00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AttributeScopes.DeviceExpertIntentAttributes();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AttributionModel.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DA2FFEF4()
{
  result = qword_1ECBA5B60;
  if (!qword_1ECBA5B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5B60);
  }

  return result;
}

unint64_t sub_1DA2FFF4C()
{
  result = qword_1EE10A8A8;
  if (!qword_1EE10A8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A8A8);
  }

  return result;
}

unint64_t sub_1DA2FFFA4()
{
  result = qword_1EE10A8B0;
  if (!qword_1EE10A8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A8B0);
  }

  return result;
}

void *OUTLINED_FUNCTION_5_4()
{

  return __swift_coroFrameAllocStub(v0);
}

uint64_t sub_1DA300028()
{
  sub_1DA34CBC0();
  has_internal_diagnostics = os_variant_has_internal_diagnostics();

  byte_1EE10E058 = has_internal_diagnostics;
  return result;
}

id sub_1DA300080()
{
  result = [objc_opt_self() standardUserDefaults];
  qword_1EE10E060 = result;
  return result;
}

uint64_t static DeviceExpertPreferences.shouldForceContextualRewriteInLowPowerMode.getter()
{
  if (qword_1EE109E70 != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  OUTLINED_FUNCTION_2_7();
  if (v1)
  {
    if (qword_1EE109E78 != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v2 = qword_1EE10E060;
    OUTLINED_FUNCTION_6_4();
    v3 = sub_1DA34CB30();
    v4 = OUTLINED_FUNCTION_5_5();
    v6 = [v4 v5];

    if (v6)
    {
      OUTLINED_FUNCTION_8_2();
      v7 = swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_7_2();
    }

    OUTLINED_FUNCTION_3_6(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18, v20, v21, v22);
    if (v15)
    {
      if (OUTLINED_FUNCTION_4_6())
      {
        return v19;
      }
    }

    else
    {
      sub_1DA2F1E40(v23);
    }
  }

  return 0;
}

unint64_t sub_1DA3001CC(char a1)
{
  result = 0xD00000000000001BLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000002ELL;
      break;
    case 2:
    case 5:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0xD000000000000029;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static DeviceExpertPreferences.shouldShowFeedback.getter()
{
  if (qword_1EE109E70 != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  OUTLINED_FUNCTION_2_7();
  if (!v1)
  {
    return 0;
  }

  if (qword_1EE109E78 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v2 = qword_1EE10E060;
  OUTLINED_FUNCTION_6_4();
  v3 = sub_1DA34CB30();
  v4 = OUTLINED_FUNCTION_5_5();
  v6 = [v4 v5];

  if (v6)
  {
    OUTLINED_FUNCTION_8_2();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_7_2();
  }

  OUTLINED_FUNCTION_3_6(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18, v20, v21, v22);
  if (v16)
  {
    if (OUTLINED_FUNCTION_4_6())
    {
      return v19;
    }
  }

  else
  {
    sub_1DA2F1E40(v23);
  }

  return 1;
}

uint64_t static DeviceExpertPreferences.shouldSendAnalytics.getter()
{
  if (qword_1EE109E70 != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  OUTLINED_FUNCTION_2_7();
  if (v1)
  {
    if (qword_1EE109E78 != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v2 = qword_1EE10E060;
    OUTLINED_FUNCTION_6_4();
    v3 = sub_1DA34CB30();
    v4 = OUTLINED_FUNCTION_5_5();
    v6 = [v4 v5];

    if (v6)
    {
      OUTLINED_FUNCTION_8_2();
      v7 = swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_7_2();
    }

    OUTLINED_FUNCTION_3_6(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18, v20, v21, v22);
    if (v15)
    {
      if (OUTLINED_FUNCTION_4_6())
      {
        return v19;
      }
    }

    else
    {
      sub_1DA2F1E40(v23);
    }
  }

  return 1;
}

uint64_t static DeviceExpertPreferences.shouldLogContextualPrompt.getter()
{
  if (qword_1EE109E70 != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  OUTLINED_FUNCTION_2_7();
  if (v1)
  {
    if (qword_1EE109E78 != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v2 = qword_1EE10E060;
    OUTLINED_FUNCTION_6_4();
    v3 = sub_1DA34CB30();
    v4 = OUTLINED_FUNCTION_5_5();
    v6 = [v4 v5];

    if (v6)
    {
      OUTLINED_FUNCTION_8_2();
      v7 = swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_7_2();
    }

    OUTLINED_FUNCTION_3_6(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18, v20, v21, v22);
    if (v15)
    {
      if (OUTLINED_FUNCTION_4_6())
      {
        return v19;
      }
    }

    else
    {
      sub_1DA2F1E40(v23);
    }
  }

  return 0;
}

uint64_t static DeviceExpertPreferences.troubleshootingFlowOverride.getter()
{
  if (qword_1EE109E70 != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  OUTLINED_FUNCTION_2_7();
  if (!v1)
  {
    return 0;
  }

  if (qword_1EE109E78 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v2 = qword_1EE10E060;
  OUTLINED_FUNCTION_6_4();
  v3 = sub_1DA34CB30();
  v4 = OUTLINED_FUNCTION_5_5();
  v6 = [v4 v5];

  if (!v6)
  {
    return 0;
  }

  v7 = sub_1DA34CB40();

  return v7;
}

uint64_t static DeviceExpertPreferences.troubleshootingFlowClusterIDMap.getter()
{
  v32[4] = *MEMORY[0x1E69E9840];
  v0 = sub_1DA34CB80();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE109E70 != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  OUTLINED_FUNCTION_2_7();
  if (v5)
  {
    if (qword_1EE109E78 != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v6 = qword_1EE10E060;
    v7 = sub_1DA34CB30();
    v8 = [v6 stringForKey_];

    if (v8 && (sub_1DA34CB40(), v8, sub_1DA34CB70(), v9 = sub_1DA34CB50(), v11 = v10, , (*(v1 + 8))(v4, v0), v11 >> 60 != 15))
    {
      objc_opt_self();
      v15 = sub_1DA34B8D0();
      v32[0] = 0;
      v16 = OUTLINED_FUNCTION_5_5();
      v18 = [v16 v17];

      if (v18)
      {
        v19 = v32[0];
        sub_1DA34CE80();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B70, &qword_1DA34F208);
        if (swift_dynamicCast())
        {
          v12 = v31[1];
          if (qword_1EE109058 != -1)
          {
            swift_once();
          }

          v20 = sub_1DA34C8E0();
          __swift_project_value_buffer(v20, qword_1EE109060);

          v21 = sub_1DA34C8C0();
          v22 = sub_1DA34CD80();

          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            v24 = swift_slowAlloc();
            v32[0] = v24;
            *v23 = 136315138;
            v25 = sub_1DA34CAB0();
            v27 = sub_1DA300D78(v25, v26, v32);

            *(v23 + 4) = v27;
            _os_log_impl(&dword_1DA2E0000, v21, v22, "Using troubleshooting flow cluster ID map from UserDefaults: %s", v23, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v24);
            MEMORY[0x1DA74B3A0](v24, -1, -1);
            MEMORY[0x1DA74B3A0](v23, -1, -1);
          }

          sub_1DA300C94(v9, v11);

          goto LABEL_22;
        }
      }

      else
      {
        v28 = v32[0];
        v29 = sub_1DA34B7E0();

        swift_willThrow();
      }

      v12 = sub_1DA34CAC0();
      sub_1DA300C94(v9, v11);
    }

    else
    {
      v12 = sub_1DA34CAC0();
    }

LABEL_22:
    v30 = *MEMORY[0x1E69E9840];
    return v12;
  }

  v13 = *MEMORY[0x1E69E9840];

  return sub_1DA34CAC0();
}

uint64_t static DeviceExpertPreferences.contextualTimeoutOverride.getter()
{
  if (qword_1EE109E70 != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  OUTLINED_FUNCTION_2_7();
  if (!v1)
  {
    return 0;
  }

  if (qword_1EE109E78 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v2 = qword_1EE10E060;
  OUTLINED_FUNCTION_6_4();
  v3 = sub_1DA34CB30();
  v4 = OUTLINED_FUNCTION_5_5();
  v6 = [v4 v5];

  if (v6)
  {
    OUTLINED_FUNCTION_8_2();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_7_2();
  }

  OUTLINED_FUNCTION_3_6(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18, v20, v21, v22);
  if (!v15)
  {
    sub_1DA2F1E40(v23);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v19;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DA300C94(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DA2E62C4(a1, a2);
  }

  return a1;
}

uint64_t sub_1DA300CA8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1DA300D1C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1DA300D78(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1DA300D78(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DA300E3C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1DA3013A4(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1DA300E3C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1DA300F3C(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1DA34CF00();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1DA300F3C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DA300F88(a1, a2);
  sub_1DA3010A0(&unk_1F55DEED0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1DA300F88(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1DA34CC10())
  {
    result = sub_1DA301184(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1DA34CEB0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1DA34CF00();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DA3010A0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1DA3011F4(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1DA301184(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B78, &qword_1DA34F258);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1DA3011F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B78, &qword_1DA34F258);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_1DA3012E8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceExpertPreferences(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DA3013A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_6()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_8_2()
{

  return sub_1DA34CE80();
}

uint64_t ContextualRewriteSummary.rewriteElapsedTime.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t ContextualRewriteSummary.rewriteElapsedTime.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t ContextualRewriteSummary.rewritePromptWordCount.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t ContextualRewriteSummary.rewritePromptWordCount.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t ContextualRewriteSummary.rewriteOutputWordCount.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t ContextualRewriteSummary.rewriteOutputWordCount.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

void sub_1DA3015D0()
{
  LOWORD(xmmword_1EE109478) = 0;
  *(&xmmword_1EE109478 + 1) = 0;
  OUTLINED_FUNCTION_1_11(&xmmword_1EE109478);
}

double static ContextualRewriteSummary.noRewrite.getter()
{
  if (qword_1EE109470 != -1)
  {
    swift_once();
  }

  *&result = OUTLINED_FUNCTION_2_8(&xmmword_1EE109478).n128_u64[0];
  return result;
}

void sub_1DA301644()
{
  LOWORD(xmmword_1EE109438) = 1;
  *(&xmmword_1EE109438 + 1) = 0;
  OUTLINED_FUNCTION_1_11(&xmmword_1EE109438);
}

double static ContextualRewriteSummary.attemptedButNotShown.getter()
{
  if (qword_1EE109430 != -1)
  {
    swift_once();
  }

  *&result = OUTLINED_FUNCTION_2_8(&xmmword_1EE109438).n128_u64[0];
  return result;
}

uint64_t static ContextualRewriteSummary.attemptedAndShown(promptWordCount:outputWordCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 257;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 24) = result;
  *(a3 + 32) = 0;
  *(a3 + 40) = a2;
  *(a3 + 48) = 0;
  return result;
}

uint64_t sub_1DA3016E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4165746972776572 && a2 == 0xEE0074706D657474;
  if (v4 || (sub_1DA34D160() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5365746972776572 && a2 == 0xEC0000006E776F68;
    if (v6 || (sub_1DA34D160() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001DA354E80 == a2;
      if (v7 || (sub_1DA34D160() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001DA354EA0 == a2;
        if (v8 || (sub_1DA34D160() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000016 && 0x80000001DA354EC0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DA34D160();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1DA3018A0(char a1)
{
  result = 0x4165746972776572;
  switch(a1)
  {
    case 1:
      result = 0x5365746972776572;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA301960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3016E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA301988@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA301898();
  *a1 = result;
  return result;
}

uint64_t sub_1DA3019B0(uint64_t a1)
{
  v2 = sub_1DA301C3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3019EC(uint64_t a1)
{
  v2 = sub_1DA301C3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContextualRewriteSummary.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B80, &qword_1DA34F260);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v16 - v10;
  v12 = *v1;
  v22 = v1[1];
  v21 = *(v1 + 1);
  v20 = v1[16];
  v19 = *(v1 + 3);
  v13 = v1[32];
  v16 = *(v1 + 5);
  v17 = v1[48];
  v18 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA301C3C();
  sub_1DA34D250();
  v27 = 0;
  OUTLINED_FUNCTION_3_7();
  sub_1DA34D100();
  if (!v2)
  {
    v26 = 1;
    OUTLINED_FUNCTION_3_7();
    sub_1DA34D100();
    v25 = 2;
    OUTLINED_FUNCTION_3_7();
    sub_1DA34D0D0();
    v24 = 3;
    OUTLINED_FUNCTION_3_7();
    sub_1DA34D0D0();
    v23 = 4;
    OUTLINED_FUNCTION_3_7();
    sub_1DA34D0D0();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_1DA301C3C()
{
  result = qword_1EE10A748;
  if (!qword_1EE10A748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A748);
  }

  return result;
}

uint64_t ContextualRewriteSummary.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B88, &qword_1DA34F268);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v25 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA301C3C();
  sub_1DA34D240();
  if (!v2)
  {
    v36 = 0;
    OUTLINED_FUNCTION_0_9();
    v14 = sub_1DA34D070();
    v35 = 1;
    OUTLINED_FUNCTION_0_9();
    v15 = sub_1DA34D070();
    v34 = 2;
    OUTLINED_FUNCTION_0_9();
    v28 = sub_1DA34D040();
    v31 = v16 & 1;
    v33 = 3;
    OUTLINED_FUNCTION_0_9();
    v27 = sub_1DA34D040();
    v30 = v17 & 1;
    v32 = 4;
    OUTLINED_FUNCTION_0_9();
    v18 = sub_1DA34D040();
    v21 = v20;
    v26 = v14 & 1;
    v22 = v18;
    (*(v8 + 8))(v12, v5);
    v29 = v21 & 1;
    v23 = v31;
    v24 = v30;
    *a2 = v26;
    *(a2 + 1) = v15 & 1;
    *(a2 + 8) = v28;
    *(a2 + 16) = v23;
    *(a2 + 24) = v27;
    *(a2 + 32) = v24;
    *(a2 + 40) = v22;
    *(a2 + 48) = v21 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DA301F1C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[49])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_1DA301F68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContextualRewriteSummary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContextualRewriteSummary.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA302134()
{
  result = qword_1ECBA5B90;
  if (!qword_1ECBA5B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5B90);
  }

  return result;
}

unint64_t sub_1DA30218C()
{
  result = qword_1EE10A738;
  if (!qword_1EE10A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A738);
  }

  return result;
}

unint64_t sub_1DA3021E4()
{
  result = qword_1EE10A740;
  if (!qword_1EE10A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A740);
  }

  return result;
}

void OUTLINED_FUNCTION_1_11(uint64_t a1@<X8>)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = 0;
  *(a1 + 32) = v1;
  *(a1 + 40) = 0;
  *(a1 + 48) = v1;
}

__n128 OUTLINED_FUNCTION_2_8@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  *(v1 + 48) = *(a1 + 48);
  return result;
}

uint64_t TipKitEventSender.donateUserPerformedAction(for:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B98, &qword_1DA34F440);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_1DA34CD30();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  OUTLINED_FUNCTION_3_8();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_1DA302998(0, 0, v3, &unk_1DA34F450, v5);
}

uint64_t sub_1DA302354()
{
  v1 = sub_1DA34C4A0();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA302410, 0, 0);
}

uint64_t sub_1DA302410()
{
  OUTLINED_FUNCTION_59();
  v1 = *(v0 + 32);
  sub_1DA34C4B0();
  sub_1DA34C490();
  v2 = *(MEMORY[0x1E69DA368] + 4);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1DA3024FC;
  v4 = *(v0 + 32);

  return MEMORY[0x1EEE49A98](0xD000000000000017, 0x80000001DA354EE0, 0xD000000000000015, 0x80000001DA354F00, v4);
}

uint64_t sub_1DA3024FC()
{
  OUTLINED_FUNCTION_22();
  v3 = v2;
  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  v7 = v2[2];
  v8 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v9 = v8;
  v3[6] = v0;

  (*(v6 + 8))(v5, v7);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA302694, 0, 0);
  }

  else
  {
    v10 = v3[4];

    OUTLINED_FUNCTION_15();

    return v11();
  }
}

uint64_t sub_1DA302694()
{
  v12 = v0;
  if (qword_1EE109058 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA34C8E0();
  __swift_project_value_buffer(v1, qword_1EE109060);
  v2 = sub_1DA34C8C0();
  v3 = sub_1DA34CDA0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 48);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1DA300D78(0xD000000000000017, 0x80000001DA354EE0, &v11);
    _os_log_impl(&dword_1DA2E0000, v2, v3, "Failed to invalidate tip with identifier: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1DA74B3A0](v7, -1, -1);
    MEMORY[0x1DA74B3A0](v6, -1, -1);
  }

  v8 = *(v0 + 32);

  OUTLINED_FUNCTION_15();

  return v9();
}

uint64_t sub_1DA302820()
{
  OUTLINED_FUNCTION_59();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_9(v3);
  *v4 = v5;
  v4[1] = sub_1DA3028B4;
  OUTLINED_FUNCTION_1_12();

  return sub_1DA302354();
}

uint64_t sub_1DA3028B4()
{
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  OUTLINED_FUNCTION_15();

  return v5();
}

uint64_t sub_1DA302998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B98, &qword_1DA34F440);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v26 - v11;
  sub_1DA302E18(a3, v26 - v11);
  v13 = sub_1DA34CD30();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_1DA302E88(v12);
  }

  else
  {
    sub_1DA34CD20();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1DA34CCF0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1DA34CBC0() + 32;
      OUTLINED_FUNCTION_3_8();
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1DA302E88(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DA302E88(a3);
  OUTLINED_FUNCTION_3_8();
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t DeviceExpertTip.hashValue.getter()
{
  sub_1DA34D210();
  MEMORY[0x1DA74ACB0](0);
  return sub_1DA34D230();
}

unint64_t sub_1DA302CF4()
{
  result = qword_1ECBA5BA0;
  if (!qword_1ECBA5BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5BA0);
  }

  return result;
}

_BYTE *sub_1DA302D6C(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DA302E18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B98, &qword_1DA34F440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA302E88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B98, &qword_1DA34F440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA302EF0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DA302FE8;

  return v7(a1);
}

uint64_t sub_1DA302FE8()
{
  OUTLINED_FUNCTION_22();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  OUTLINED_FUNCTION_15();

  return v5();
}

uint64_t sub_1DA3030D0()
{
  OUTLINED_FUNCTION_59();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_9(v3);
  *v4 = v5;
  v4[1] = sub_1DA303214;
  v6 = OUTLINED_FUNCTION_1_12();

  return v7(v6);
}

uint64_t sub_1DA303170()
{
  OUTLINED_FUNCTION_59();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_9(v3);
  *v4 = v5;
  v4[1] = sub_1DA3028B4;
  v6 = OUTLINED_FUNCTION_1_12();

  return v7(v6);
}

uint64_t Action.init(identifier:label:href:)()
{
  sub_1DA34BE00();
  OUTLINED_FUNCTION_0_10();
  sub_1DA303954(v0, v1);
  sub_1DA34C7B0();
}

uint64_t sub_1DA303358()
{
  v0 = sub_1DA34BF70();
  v1 = OUTLINED_FUNCTION_12(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);

  OUTLINED_FUNCTION_5_6();
  sub_1DA34BDB0();

  sub_1DA34BBC0();
  sub_1DA303954(&qword_1ECBA5BC0, MEMORY[0x1E69BCDA0]);
  sub_1DA34C7B0();
  return sub_1DA34BDC0();
}

uint64_t Action.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5BA8, &qword_1DA34F560);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - v7;
  sub_1DA34BDF0();
  v9 = sub_1DA34BD80();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    sub_1DA303744(v8, v6);
    v10 = *(v9 - 8);
    v11 = v10[11];
    v12 = OUTLINED_FUNCTION_5_6();
    v14 = v13(v12);
    if (v14 == *MEMORY[0x1E69BCD60])
    {
      v15 = v10[12];
      v16 = OUTLINED_FUNCTION_5_6();
      v17(v16);
      v18 = sub_1DA34BF70();
LABEL_6:
      (*(*(v18 - 8) + 32))(a1, v6);
      type metadata accessor for Action.Value(0);
      swift_storeEnumTagMultiPayload();
      return sub_1DA30386C(v8);
    }

    if (v14 == *MEMORY[0x1E69BCD68])
    {
      v19 = v10[12];
      v20 = OUTLINED_FUNCTION_5_6();
      v21(v20);
      v18 = sub_1DA34BAC0();
      goto LABEL_6;
    }

    v23 = v10[1];
    v24 = OUTLINED_FUNCTION_5_6();
    v25(v24);
  }

  result = sub_1DA34CFC0();
  __break(1u);
  return result;
}

uint64_t sub_1DA303744(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5BA8, &qword_1DA34F560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA3037E4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 32);

  return v8(a3, a1, v6);
}

uint64_t sub_1DA30386C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5BA8, &qword_1DA34F560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Action.hash(into:)()
{
  sub_1DA34BE00();
  OUTLINED_FUNCTION_0_10();
  sub_1DA303954(v0, v1);

  return sub_1DA34CAD0();
}

uint64_t sub_1DA303954(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Action.hashValue.getter()
{
  sub_1DA34D210();
  sub_1DA34BE00();
  OUTLINED_FUNCTION_0_10();
  sub_1DA303954(v0, v1);
  sub_1DA34CAD0();
  return sub_1DA34D230();
}

uint64_t sub_1DA303A4C@<X0>(uint64_t *a1@<X8>)
{
  result = Action.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA303A7C()
{
  sub_1DA34D210();
  sub_1DA34BE00();
  sub_1DA303954(&qword_1ECBA5BB0, MEMORY[0x1E69BCD78]);
  sub_1DA34CAD0();
  return sub_1DA34D230();
}

uint64_t sub_1DA303B70@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 16);

  return v7(a2, v2, v5);
}

uint64_t sub_1DA303DA4()
{
  result = type metadata accessor for Action.URLConfiguration(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Action.AppIntentConfiguration(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DA303ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DA303F48()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1DA3034A4();
}

uint64_t sub_1DA303FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a5;
  v59 = a4;
  v62 = a3;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA57C8, &unk_1DA34DA10) - 8) + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12_1();
  v10 = type metadata accessor for Action(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  v15 = OUTLINED_FUNCTION_12(v57);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_3_1();
  v56 = v18 - v19;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v55 = &v52 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v63 = &v52 - v23;
  v24 = sub_1DA34BF10();
  v25 = *(v24 + 16);
  v60 = a2;
  v61 = a1;
  if (v25)
  {
    *&v54 = v5;
    *&v65 = MEMORY[0x1E69E7CC0];
    sub_1DA348214();
    v26 = v65;
    v27 = sub_1DA34BE00();
    v28 = *(v27 - 8);
    *&v64 = *(v28 + 16);
    v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    *&v53 = v24;
    v30 = v24 + v29;
    v31 = *(v28 + 72);
    do
    {
      (v64)(v14, v30, v27);
      *&v65 = v26;
      v32 = *(v26 + 16);
      if (v32 >= *(v26 + 24) >> 1)
      {
        sub_1DA348214();
        v26 = v65;
      }

      *(v26 + 16) = v32 + 1;
      sub_1DA306620(v14, v26 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v32);
      v30 += v31;
      --v25;
    }

    while (v25);

    a2 = v60;
    a1 = v61;
    v5 = v54;
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
  }

  sub_1DA2F81F4(a2, v63, &qword_1ECBA5840, "lt");
  v33 = v62;
  if (v62)
  {
    v34 = sub_1DA34BFB0();
    OUTLINED_FUNCTION_12(v34);
    (*(v35 + 16))(v5, a1, v34);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v34);
    v36 = v33;
    TipCollectionModel.init(result:collection:)(v5, v33, &v65);
    v54 = v66;
    v64 = v65;
    v62 = v36;
    v52 = v68;
    v53 = v67;
  }

  else
  {
    v64 = xmmword_1DA34DDC0;
    v54 = 0u;
    v53 = 0u;
    v52 = 0u;
  }

  v37 = type metadata accessor for SupplementarySnippetModel();
  v38 = v37[5];
  v39 = type metadata accessor for AttributionModel();
  v40 = v55;
  __swift_storeEnumTagSinglePayload(v55, 1, 1, v39);
  v41 = v56;
  sub_1DA2F81F4(v40, v56, &qword_1ECBA5840, "lt");
  v42 = v58;
  sub_1DA34C0D0();
  sub_1DA2EF188(v40, &qword_1ECBA5840, "lt");
  v43 = v37[6];
  v65 = xmmword_1DA34DDC0;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5888, &unk_1DA34DEE0);
  sub_1DA34C0D0();
  *&v65 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5890, &unk_1DA34F7F0);
  sub_1DA34C0D0();
  sub_1DA2F81F4(v63, v40, &qword_1ECBA5840, "lt");
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  OUTLINED_FUNCTION_12(v44);
  (*(v45 + 8))(v42 + v38);
  sub_1DA2F81F4(v40, v41, &qword_1ECBA5840, "lt");
  sub_1DA34C0D0();
  sub_1DA2EF188(v40, &qword_1ECBA5840, "lt");
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58A0, &qword_1DA34F800);
  OUTLINED_FUNCTION_12(v46);
  (*(v47 + 8))(v42 + v43);
  v65 = v64;
  v66 = v54;
  v67 = v53;
  v68 = v52;
  sub_1DA34C0D0();
  v48 = v37[7];
  *&v65 = v59;
  type metadata accessor for FlowContext();

  sub_1DA34C0D0();

  sub_1DA2EF188(v60, &qword_1ECBA5840, "lt");
  v49 = sub_1DA34BFB0();
  OUTLINED_FUNCTION_12(v49);
  (*(v50 + 8))(v61);
  return sub_1DA2EF188(v63, &qword_1ECBA5840, "lt");
}

uint64_t sub_1DA3045EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5878, &unk_1DA34DED0);
  sub_1DA34C0F0();
  v0 = *(*&v8[0] + 16);

  if (v0)
  {
    return 1;
  }

  v2 = *(type metadata accessor for SupplementarySnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58A0, &qword_1DA34F800);
  sub_1DA34C0F0();
  v8[0] = v4;
  v8[1] = v5;
  v8[2] = v6;
  v8[3] = v7;
  v1 = *(&v4 + 1) != 1;
  if (*(&v4 + 1) != 1)
  {
    sub_1DA2EF188(v8, &qword_1ECBA5888, &unk_1DA34DEE0);
  }

  return v1;
}

uint64_t SupplementarySnippetModel.init(actions:attributionModel:tipCollectionModel:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a1;
  v33 = a4;
  v31 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  v9 = OUTLINED_FUNCTION_12(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_3_1();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  v18 = a3[1];
  v38 = *a3;
  v39 = v18;
  v19 = a3[3];
  v40 = a3[2];
  v41 = v19;
  v20 = type metadata accessor for SupplementarySnippetModel();
  v21 = v20[5];
  v22 = type metadata accessor for AttributionModel();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v22);
  sub_1DA2F81F4(v17, v14, &qword_1ECBA5840, "lt");
  sub_1DA34C0D0();
  sub_1DA2EF188(v17, &qword_1ECBA5840, "lt");
  v23 = v20[6];
  v34 = xmmword_1DA34DDC0;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5888, &unk_1DA34DEE0);
  sub_1DA34C0D0();
  *&v34 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5890, &unk_1DA34F7F0);
  sub_1DA34C0D0();
  sub_1DA2F81F4(a2, v17, &qword_1ECBA5840, "lt");
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  OUTLINED_FUNCTION_12(v24);
  (*(v25 + 8))(a5 + v21);
  sub_1DA2F81F4(v17, v14, &qword_1ECBA5840, "lt");
  sub_1DA34C0D0();
  sub_1DA2EF188(v17, &qword_1ECBA5840, "lt");
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58A0, &qword_1DA34F800);
  OUTLINED_FUNCTION_12(v26);
  (*(v27 + 8))(a5 + v23);
  v34 = v38;
  v35 = v39;
  v36 = v40;
  v37 = v41;
  sub_1DA34C0D0();
  v28 = v20[7];
  *&v34 = v33;
  type metadata accessor for FlowContext();
  sub_1DA34C0D0();
  return sub_1DA2EF188(v31, &qword_1ECBA5840, "lt");
}

uint64_t type metadata accessor for SupplementarySnippetModel()
{
  result = qword_1EE10A720;
  if (!qword_1EE10A720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SupplementarySnippetModel.actions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5878, &unk_1DA34DED0);
  sub_1DA34C0F0();
  return v1;
}

uint64_t sub_1DA3049F8(uint64_t *a1)
{
  v1 = *a1;

  return SupplementarySnippetModel.actions.setter();
}

uint64_t (*SupplementarySnippetModel.actions.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5878, &unk_1DA34DED0);
  v2[4] = sub_1DA34C0E0();
  return sub_1DA2F3614;
}

uint64_t SupplementarySnippetModel.attributionModel.getter()
{
  v0 = *(type metadata accessor for SupplementarySnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  return sub_1DA34C0F0();
}

uint64_t sub_1DA304B2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - v4;
  sub_1DA2F81F4(a1, &v7 - v4, &qword_1ECBA5840, "lt");
  return SupplementarySnippetModel.attributionModel.setter(v5);
}

uint64_t SupplementarySnippetModel.attributionModel.setter(uint64_t a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt") - 8) + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12_1();
  sub_1DA2F81F4(a1, v1, &qword_1ECBA5840, "lt");
  v5 = *(type metadata accessor for SupplementarySnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  sub_1DA34C100();
  return sub_1DA2EF188(a1, &qword_1ECBA5840, "lt");
}

uint64_t (*SupplementarySnippetModel.attributionModel.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_14_2(v2) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  *(v0 + 32) = OUTLINED_FUNCTION_11_0();
  return sub_1DA2F25B0;
}

uint64_t SupplementarySnippetModel.tipCollectionModel.getter()
{
  v0 = *(type metadata accessor for SupplementarySnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58A0, &qword_1DA34F800);
  return sub_1DA34C0F0();
}

uint64_t sub_1DA304D64(__int128 *a1)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v3 = a1[3];
  v6[2] = a1[2];
  v6[3] = v3;
  sub_1DA2F81F4(v6, &v5, &qword_1ECBA5888, &unk_1DA34DEE0);
  return SupplementarySnippetModel.tipCollectionModel.setter(a1);
}

uint64_t SupplementarySnippetModel.tipCollectionModel.setter(__int128 *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v1 = *(type metadata accessor for SupplementarySnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58A0, &qword_1DA34F800);
  return sub_1DA34C100();
}

uint64_t (*SupplementarySnippetModel.tipCollectionModel.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_14_2(v2) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58A0, &qword_1DA34F800);
  *(v0 + 32) = OUTLINED_FUNCTION_11_0();
  return sub_1DA2F3614;
}

uint64_t SupplementarySnippetModel.context.getter()
{
  v0 = *(type metadata accessor for SupplementarySnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  sub_1DA34C0F0();
  return v2;
}

uint64_t sub_1DA304EE8(uint64_t *a1)
{
  v1 = *a1;

  return SupplementarySnippetModel.context.setter();
}

uint64_t SupplementarySnippetModel.context.setter()
{
  v0 = *(type metadata accessor for SupplementarySnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  return sub_1DA34C100();
}

uint64_t (*SupplementarySnippetModel.context.modify())()
{
  v1 = OUTLINED_FUNCTION_17_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_14_2(v2) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  *(v0 + 32) = OUTLINED_FUNCTION_11_0();
  return sub_1DA2F3614;
}

uint64_t sub_1DA304FD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6F69746361 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DA34D160() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001DA354F50 == a2;
    if (v6 || (sub_1DA34D160() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001DA354F70 == a2;
      if (v7 || (sub_1DA34D160() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DA34D160();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1DA30513C(char a1)
{
  result = 0x736E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x747865746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA3051D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA304FD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA3051F8(uint64_t a1)
{
  v2 = sub_1DA3054AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA305234(uint64_t a1)
{
  v2 = sub_1DA3054AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SupplementarySnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5C00, &qword_1DA34F808);
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3054AC();
  sub_1DA34D250();
  v21[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5878, &unk_1DA34DED0);
  OUTLINED_FUNCTION_1_6();
  sub_1DA305F68(v12);
  OUTLINED_FUNCTION_4_8();
  if (!v1)
  {
    v13 = type metadata accessor for SupplementarySnippetModel();
    v14 = v13[5];
    v21[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
    OUTLINED_FUNCTION_1_6();
    sub_1DA305590(v15);
    OUTLINED_FUNCTION_4_8();
    v16 = v13[6];
    v21[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58A0, &qword_1DA34F800);
    OUTLINED_FUNCTION_1_6();
    sub_1DA30603C(v17);
    OUTLINED_FUNCTION_4_8();
    v18 = v13[7];
    v21[12] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
    OUTLINED_FUNCTION_1_6();
    sub_1DA305808(v19);
    OUTLINED_FUNCTION_4_8();
  }

  return (*(v5 + 8))(v10, v3);
}

unint64_t sub_1DA3054AC()
{
  result = qword_1ECBA5C08;
  if (!qword_1ECBA5C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5C08);
  }

  return result;
}

unint64_t sub_1DA305500(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5890, &unk_1DA34F7F0);
    sub_1DA306250(v4);
    OUTLINED_FUNCTION_10_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA305590(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5898, &unk_1DA34DEF0);
    sub_1DA305664(&unk_1EE10A850);
    sub_1DA305664(&unk_1EE10A858);
    result = OUTLINED_FUNCTION_8_3();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA305664(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5840, "lt");
    sub_1DA306250(v4);
    OUTLINED_FUNCTION_10_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA3056F4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5888, &unk_1DA34DEE0);
    v4();
    OUTLINED_FUNCTION_10_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA305760()
{
  result = qword_1ECBA5C48;
  if (!qword_1ECBA5C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5C48);
  }

  return result;
}

unint64_t sub_1DA3057B4()
{
  result = qword_1ECBA5C58;
  if (!qword_1ECBA5C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5C58);
  }

  return result;
}

unint64_t sub_1DA305808(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5880, &qword_1DA34E250);
    sub_1DA306250(&unk_1EE10AC10);
    sub_1DA306250(&unk_1EE10AC18);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t SupplementarySnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a1;
  v65 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  OUTLINED_FUNCTION_0(v67);
  v64 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17_2();
  v66 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58A0, &qword_1DA34F800);
  v8 = OUTLINED_FUNCTION_0(v7);
  v77 = v9;
  v78 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17_2();
  v68 = v13;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5898, &unk_1DA34DEF0);
  OUTLINED_FUNCTION_0(v85);
  v80 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17_2();
  v69 = v18;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5878, &unk_1DA34DED0);
  OUTLINED_FUNCTION_0(v72);
  v70 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_17_2();
  v73 = v23;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5C60, &qword_1DA34F810);
  OUTLINED_FUNCTION_0(v74);
  v71 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_12_1();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5840, "lt");
  v29 = OUTLINED_FUNCTION_12(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_3_1();
  v34 = v32 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v63 - v36;
  v38 = type metadata accessor for SupplementarySnippetModel();
  v39 = OUTLINED_FUNCTION_12(v38);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = &v63 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(v42 + 20);
  v46 = type metadata accessor for AttributionModel();
  __swift_storeEnumTagSinglePayload(v37, 1, 1, v46);
  sub_1DA2F81F4(v37, v34, &qword_1ECBA5840, "lt");
  v79 = v45;
  v47 = v75;
  sub_1DA34C0D0();
  sub_1DA2EF188(v37, &qword_1ECBA5840, "lt");
  v48 = *(v38 + 24);
  v81 = xmmword_1DA34DDC0;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5888, &unk_1DA34DEE0);
  sub_1DA34C0D0();
  v49 = v47[4];
  __swift_project_boxed_opaque_existential_1(v47, v47[3]);
  sub_1DA3054AC();
  v50 = v76;
  sub_1DA34D240();
  if (v50)
  {
    v54 = v77;
    v53 = v78;
    __swift_destroy_boxed_opaque_existential_1(v47);
    (*(v80 + 8))(&v44[v79], v85);
    return (*(v54 + 8))(&v44[v48], v53);
  }

  else
  {
    LOBYTE(v81) = 0;
    OUTLINED_FUNCTION_2_4();
    sub_1DA305F68(v51);
    OUTLINED_FUNCTION_15_2();
    v52 = v72;
    OUTLINED_FUNCTION_18_0();
    (*(v70 + 32))(v44, v73, v52);
    LOBYTE(v81) = 1;
    OUTLINED_FUNCTION_2_4();
    sub_1DA305590(v55);
    OUTLINED_FUNCTION_15_2();
    v56 = v85;
    OUTLINED_FUNCTION_18_0();
    v57 = v78;
    (*(v80 + 40))(&v44[v79], v69, v56);
    LOBYTE(v81) = 2;
    OUTLINED_FUNCTION_2_4();
    sub_1DA30603C(v58);
    OUTLINED_FUNCTION_15_2();
    sub_1DA34D090();
    (*(v77 + 40))(&v44[v48], v68, v57);
    LOBYTE(v81) = 3;
    OUTLINED_FUNCTION_2_4();
    sub_1DA305808(v59);
    OUTLINED_FUNCTION_15_2();
    sub_1DA34D090();
    v60 = OUTLINED_FUNCTION_5_7();
    v61(v60, v74);
    (*(v64 + 32))(&v44[*(v38 + 28)], v66, v67);
    sub_1DA306100(v44, v65);
    __swift_destroy_boxed_opaque_existential_1(v47);
    return sub_1DA306164(v44);
  }
}

unint64_t sub_1DA305F68(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5878, &unk_1DA34DED0);
    sub_1DA305500(&unk_1ECBA5C18);
    sub_1DA305500(&unk_1ECBA5C28);
    result = OUTLINED_FUNCTION_8_3();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA30603C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA58A0, &qword_1DA34F800);
    sub_1DA3056F4(&unk_1ECBA5C40);
    sub_1DA3056F4(&unk_1ECBA5C50);
    result = OUTLINED_FUNCTION_8_3();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1DA306100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SupplementarySnippetModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA306164(uint64_t a1)
{
  v2 = type metadata accessor for SupplementarySnippetModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DA306250(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_1DA3062EC()
{
  sub_1DA3063E8(319, &qword_1EE10AC60, &qword_1ECBA5890, &unk_1DA34F7F0);
  if (v0 <= 0x3F)
  {
    sub_1DA3063E8(319, &qword_1EE10AC88, &qword_1ECBA5840, "lt");
    if (v1 <= 0x3F)
    {
      sub_1DA3063E8(319, &qword_1EE10AC80, &qword_1ECBA5888, &unk_1DA34DEE0);
      if (v2 <= 0x3F)
      {
        sub_1DA2F33D8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DA3063E8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1DA34C110();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SupplementarySnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA30651C()
{
  result = qword_1ECBA5C88;
  if (!qword_1ECBA5C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5C88);
  }

  return result;
}

unint64_t sub_1DA306574()
{
  result = qword_1ECBA5C90;
  if (!qword_1ECBA5C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5C90);
  }

  return result;
}

unint64_t sub_1DA3065CC()
{
  result = qword_1ECBA5C98;
  if (!qword_1ECBA5C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5C98);
  }

  return result;
}

uint64_t sub_1DA306620(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Action(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_8()
{

  return sub_1DA34D120();
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_14_2(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for SupplementarySnippetModel();
}

uint64_t OUTLINED_FUNCTION_18_0()
{

  return sub_1DA34D090();
}

uint64_t sub_1DA306750(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 138))
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

uint64_t sub_1DA306790(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 138) = 1;
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

    *(result + 138) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DA306804(char a1)
{
  result = 0x5F72657473756C63;
  switch(a1)
  {
    case 1:
      result = 0x747865746E6F63;
      break;
    case 2:
      result = 0x626D79735F736168;
      break;
    case 3:
      result = 0x6574616C706D6574;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
    case 6:
      result = 0x5F65746972776572;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0x6867696C68676968;
      break;
    default:
      return result;
  }

  return result;
}

void *sub_1DA306964()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 65);
  v7 = *(v0 + 80);
  LODWORD(v71) = *(v0 + 88);
  HIDWORD(v71) = *(v0 + 89);
  v67 = *(v0 + 96);
  v68 = *(v0 + 112);
  LODWORD(v72) = *(v0 + 104);
  HIDWORD(v72) = *(v0 + 120);
  v69 = *(v0 + 128);
  v70 = *(v0 + 72);
  LODWORD(v73) = *(v0 + 136);
  HIDWORD(v73) = *(v0 + 137);
  sub_1DA306F34();
  sub_1DA34CAC0();
  v8 = sub_1DA34CB30();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_2_11();
  sub_1DA30F908(v8, 0x5F72657473756C63, 0xEA00000000006469);
  if (v3)
  {
    v9 = sub_1DA34CB30();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_11();
    sub_1DA30F908(v9, 0x747865746E6F63, 0xE700000000000000);
  }

  else
  {
    v10 = sub_1DA30F7DC(0x747865746E6F63, 0xE700000000000000);
    if (v11)
    {
      v12 = v10;
      swift_isUniquelyReferenced_nonNull_native();
      v13 = v74[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CA0, &qword_1DA350BF0);
      sub_1DA34CFA0();
      v14 = *(v74[6] + 16 * v12 + 8);

      v15 = *(v74[7] + 8 * v12);
      sub_1DA34CFB0();
    }
  }

  sub_1DA34CCE0();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_2_11();
  sub_1DA30F908(v5, 0x626D79735F736168, 0xEB00000000736C6FLL);
  v16 = v74;
  sub_1DA33BA48(v6);
  v17 = sub_1DA34CB30();

  swift_isUniquelyReferenced_nonNull_native();
  sub_1DA30F908(v17, 0x6574616C706D6574, 0xED0000657079745FLL);
  if (v7)
  {
    sub_1DA34CB30();
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_2_11();
    v18 = OUTLINED_FUNCTION_4_9();
    sub_1DA30F908(v18, v19, v20);
  }

  else
  {
    sub_1DA30F7DC(0xD000000000000012, 0x80000001DA354F90);
    if (v21)
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_3_9();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CA0, &qword_1DA350BF0);
      v22 = OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_0_11(v22, v23, v24, v25, v26, v27, v28, v29, v67, v68, v69, v70, v71, v72, v73, v74);
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_5_8();
    }
  }

  sub_1DA34CCE0();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_2_11();
  sub_1DA30F908(v16, 0x5F65746972776572, 0xEF74706D65747461);
  v30 = v74;
  v31 = sub_1DA34CCE0();
  swift_isUniquelyReferenced_nonNull_native();
  sub_1DA30F908(v31, 0x5F65746972776572, 0xED00006E776F6873);
  if (v72)
  {
    sub_1DA30F7DC(0xD000000000000014, 0x80000001DA354FB0);
    if (v32)
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_3_9();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CA0, &qword_1DA350BF0);
      v33 = OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_0_11(v33, v34, v35, v36, v37, v38, v39, v40, v67, v68, v69, v70, v71, v72, v73, v74);
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_5_8();
    }
  }

  else
  {
    sub_1DA34CD60();
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_2_11();
    v41 = OUTLINED_FUNCTION_4_9();
    sub_1DA30F908(v41, v42, v43);
  }

  if ((v72 & 0x100000000) != 0)
  {
    sub_1DA30F7DC(0xD000000000000019, 0x80000001DA354FD0);
    if (v44)
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_3_9();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CA0, &qword_1DA350BF0);
      v45 = OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_0_11(v45, v46, v47, v48, v49, v50, v51, v52, v67, v68, v69, v70, v71, v72, v73, v74);
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_5_8();
    }
  }

  else
  {
    sub_1DA34CD60();
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_2_11();
    v53 = OUTLINED_FUNCTION_4_9();
    sub_1DA30F908(v53, 0xD000000000000019, v54);
  }

  if (v73)
  {
    sub_1DA30F7DC(0xD000000000000019, 0x80000001DA354FF0);
    if (v55)
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_3_9();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CA0, &qword_1DA350BF0);
      v56 = OUTLINED_FUNCTION_1_14();
      OUTLINED_FUNCTION_0_11(v56, v57, v58, v59, v60, v61, v62, v63, v67, v68, v69, v70, v71, v72, v73, v74);
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_5_8();
    }
  }

  else
  {
    sub_1DA34CD60();
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_2_11();
    v64 = OUTLINED_FUNCTION_4_9();
    sub_1DA30F908(v64, 0xD000000000000019, v65);
  }

  sub_1DA34CCE0();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_2_11();
  sub_1DA30F908(v30, 0x6867696C68676968, 0xE900000000000074);
  return v74;
}

uint64_t sub_1DA306ED0()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1DA306F00()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

unint64_t sub_1DA306F34()
{
  result = qword_1EE108FE8;
  if (!qword_1EE108FE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE108FE8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = *(*(a16 + 48) + 16 * v16 + 8);
}

uint64_t OUTLINED_FUNCTION_1_14()
{

  return sub_1DA34CFA0();
}

uint64_t OUTLINED_FUNCTION_5_8()
{

  return sub_1DA34CFB0();
}

uint64_t OUTLINED_FUNCTION_6_5()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1DA307058(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x6F4E746C75736572;
  }
}

uint64_t sub_1DA3070C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v35 = a4;
  v30 = a2;
  v31 = a3;
  v33 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CA8, &qword_1DA34FAE0);
  v8 = OUTLINED_FUNCTION_0_12(v7);
  v34 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CB0, qword_1DA34FAE8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v29 - v16;
  v18 = sub_1DA34C290();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  (*(v19 + 16))(&v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v18);
  v32 = "rewrite_output_word_count";
  v22 = sub_1DA34C1A0();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v17, a3, v22);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v22);
  sub_1DA30755C(a2, v13);
  v24 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v25 = v24 + v11;
  v26 = swift_allocObject();
  sub_1DA3075CC(v13, v26 + v24);
  *(v26 + v25) = v35;
  v27 = sub_1DA34C1D0();
  (*(v23 + 8))(v31, v22);
  sub_1DA3076D0(v30);
  (*(v19 + 8))(v33, v18);
  return v27;
}

uint64_t sub_1DA3073B8(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CA8, &qword_1DA34FAE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  v8 = *a1;
  sub_1DA30755C(a2, &v11 - v6);
  v9 = sub_1DA34C410();
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    sub_1DA3076D0(v7);
  }

  else
  {
    sub_1DA34C400();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  sub_1DA34C1C0();
  return sub_1DA34C1B0();
}

uint64_t sub_1DA30755C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CA8, &qword_1DA34FAE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA3075CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CA8, &qword_1DA34FAE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA30763C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CA8, &qword_1DA34FAE0);
  OUTLINED_FUNCTION_0_12(v3);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  v7 = *(v6 + *(v5 + 64));

  return sub_1DA3073B8(a1, v6);
}

uint64_t sub_1DA3076D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CA8, &qword_1DA34FAE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DeviceExpertCATsSimple()
{
  result = qword_1EE109EA8;
  if (!qword_1EE109EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_1DA3077D4()
{
  OUTLINED_FUNCTION_20_2();
  sub_1DA34CFF0();
  OUTLINED_FUNCTION_23_2();
  return v0 != 0;
}

BOOL sub_1DA30783C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DA3077D4();
  *a2 = result;
  return result;
}

unint64_t sub_1DA307870@<X0>(void *a1@<X8>)
{
  result = sub_1DA307810();
  *a1 = 0xD00000000000001BLL;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA3078A0()
{
  OUTLINED_FUNCTION_16();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B10, &qword_1DA34FBC0);
  OUTLINED_FUNCTION_15_3(v5);
  v7 = *(v6 + 64) + 15;
  *(v1 + 40) = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DA307938()
{
  OUTLINED_FUNCTION_2_6();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CC0, &qword_1DA34FBC8);
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  *(v3 + 16) = xmmword_1DA34DA00;
  *(v3 + 32) = 0xD000000000000014;
  *(v3 + 40) = 0x80000001DA3551C0;
  sub_1DA3094C0(v2, v1, &qword_1ECBA5B10, &qword_1DA34FBC0);
  v4 = sub_1DA34C600();
  if (OUTLINED_FUNCTION_9_1(v4) == 1)
  {
    sub_1DA2E7E4C(*(v0 + 40), &qword_1ECBA5B10, &qword_1DA34FBC0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_12_2();
    v6 = *(v5 + 32);
    OUTLINED_FUNCTION_19_2();
    v7();
  }

  v8 = *(v0 + 72);
  *(v3 + 80) = 0xD000000000000019;
  *(v3 + 88) = 0x80000001DA3551E0;
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  else
  {
    v9 = *(v0 + 24);
    v10 = MEMORY[0x1E69E63B0];
  }

  *(v3 + 96) = v9;
  *(v3 + 120) = v10;
  OUTLINED_FUNCTION_4_10(MEMORY[0x1E69CE3E0]);
  v16 = v11;
  v12 = swift_task_alloc();
  *(v0 + 56) = v12;
  sub_1DA3095DC();
  OUTLINED_FUNCTION_10_4();
  *v12 = v13;
  v12[1] = sub_1DA307B28;
  v14 = *(v0 + 32);

  return v16(0xD00000000000001DLL, 0x80000001DA355200, v3, &type metadata for DeviceExpertCATsSimple.AttributionGroupDialogIds);
}

uint64_t sub_1DA307B28()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_3_10();
  v3 = v2;
  OUTLINED_FUNCTION_2_12();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v13 = v3[5];
    v12 = v3[6];

    v14 = OUTLINED_FUNCTION_5_9();

    return v15(v14);
  }
}

uint64_t sub_1DA307C58()
{
  OUTLINED_FUNCTION_16();
  v2 = v0[5];
  v1 = v0[6];

  OUTLINED_FUNCTION_15();
  v4 = v0[8];

  return v3();
}

BOOL sub_1DA307CBC()
{
  OUTLINED_FUNCTION_20_2();
  sub_1DA34CFF0();
  OUTLINED_FUNCTION_23_2();
  return v0 != 0;
}

BOOL sub_1DA307D20@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DA307CBC();
  *a2 = result;
  return result;
}

unint64_t sub_1DA307D54@<X0>(void *a1@<X8>)
{
  result = sub_1DA307CF8();
  *a1 = 0xD00000000000001CLL;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA307D84(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_13();
}

uint64_t sub_1DA307D98()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CC0, &qword_1DA34FBC8);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_1DA34DC80;
  *(v2 + 32) = 0xD000000000000015;
  *(v2 + 40) = 0x80000001DA3551A0;
  *(v2 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CD0, &qword_1DA34FBD8);
  *(v2 + 48) = v1;
  v3 = *MEMORY[0x1E69CE3E0];
  v4 = *(MEMORY[0x1E69CE3E0] + 4);
  OUTLINED_FUNCTION_11_1(MEMORY[0x1E69CE3E0]);

  v5 = swift_task_alloc();
  v0[5] = v5;
  sub_1DA309588();
  OUTLINED_FUNCTION_10_4();
  *v5 = v6;
  v5[1] = sub_1DA307EE8;
  v7 = v0[3];

  return v9(0xD00000000000001CLL, 0x80000001DA355180, v2, &type metadata for DeviceExpertCATsSimple.AttributionListDialogIds);
}

uint64_t sub_1DA307EE8()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_3_10();
  v3 = v2;
  OUTLINED_FUNCTION_2_12();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = OUTLINED_FUNCTION_6_6();

    return v14(v13);
  }
}

uint64_t sub_1DA308010(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_13();
}

uint64_t sub_1DA308024()
{
  OUTLINED_FUNCTION_2_6();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CC0, &qword_1DA34FBC8);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_1DA34DC80;
  OUTLINED_FUNCTION_18_1();
  *(v3 + 32) = v4;
  *(v3 + 40) = 0xE700000000000000;
  *(v2 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CD0, &qword_1DA34FBD8);
  *(v2 + 48) = v1;
  v5 = *MEMORY[0x1E69CE3E8];
  v6 = *(MEMORY[0x1E69CE3E8] + 4);
  OUTLINED_FUNCTION_11_1(MEMORY[0x1E69CE3E8]);

  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1DA308150;
  v8 = v0[3];

  return v10(0xD00000000000001ALL, 0x80000001DA355160, v2);
}

uint64_t sub_1DA308150()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_3_10();
  v3 = v2;
  OUTLINED_FUNCTION_2_12();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = OUTLINED_FUNCTION_6_6();

    return v14(v13);
  }
}

uint64_t sub_1DA308278()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_15();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_1DA3082D4()
{
  OUTLINED_FUNCTION_16();
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  *(v1 + 64) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B10, &qword_1DA34FBC0);
  OUTLINED_FUNCTION_15_3(v4);
  v6 = *(v5 + 64) + 15;
  *(v1 + 32) = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DA308368()
{
  OUTLINED_FUNCTION_2_6();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CC0, &qword_1DA34FBC8);
  v4 = swift_allocObject();
  *(v0 + 40) = v4;
  *(v4 + 16) = xmmword_1DA34DA00;
  *(v4 + 32) = 0x7069547369;
  *(v4 + 40) = 0xE500000000000000;
  v5 = MEMORY[0x1E69E6370];
  *(v4 + 48) = v3;
  *(v4 + 72) = v5;
  *(v4 + 80) = 0x74706D6F7270;
  *(v4 + 88) = 0xE600000000000000;
  sub_1DA3094C0(v2, v1, &qword_1ECBA5B10, &qword_1DA34FBC0);
  v6 = sub_1DA34C600();
  if (OUTLINED_FUNCTION_9_1(v6) == 1)
  {
    sub_1DA2E7E4C(*(v0 + 32), &qword_1ECBA5B10, &qword_1DA34FBC0);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v2;
    __swift_allocate_boxed_opaque_existential_0((v4 + 96));
    OUTLINED_FUNCTION_12_2();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_19_2();
    v9();
  }

  OUTLINED_FUNCTION_4_10(MEMORY[0x1E69CE3E8]);
  v13 = v10;
  v11 = swift_task_alloc();
  *(v0 + 48) = v11;
  *v11 = v0;
  OUTLINED_FUNCTION_16_0(v11);

  return v13(0xD000000000000014);
}

uint64_t sub_1DA30851C()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_3_10();
  v3 = v2;
  OUTLINED_FUNCTION_2_12();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v13 = v3[4];
    v12 = v3[5];

    v14 = OUTLINED_FUNCTION_5_9();

    return v15(v14);
  }
}

uint64_t sub_1DA30864C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_13();
}

uint64_t sub_1DA308664()
{
  v2 = v0[2];
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CC0, &qword_1DA34FBC8);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_1DA34DA00;
  *(v3 + 32) = 0x7370657473;
  *(v3 + 40) = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CC8, &qword_1DA34FBD0);
  *(v3 + 48) = v2;
  OUTLINED_FUNCTION_18_1();
  *(v3 + 72) = v4;
  *(v3 + 80) = v5;
  *(v3 + 88) = 0xE700000000000000;
  *(v3 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CD0, &qword_1DA34FBD8);
  *(v3 + 96) = v1;
  v6 = *MEMORY[0x1E69CE3E8];
  v7 = *(MEMORY[0x1E69CE3E8] + 4);
  OUTLINED_FUNCTION_11_1(MEMORY[0x1E69CE3E8]);

  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_1DA3087D4;
  v9 = v0[4];

  return v11(0xD000000000000017, 0x80000001DA355120, v3);
}

uint64_t sub_1DA3087D4()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_3_10();
  v3 = v2;
  OUTLINED_FUNCTION_2_12();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    v13 = OUTLINED_FUNCTION_6_6();

    return v14(v13);
  }
}

uint64_t sub_1DA3088FC()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_15();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_1DA308958()
{
  OUTLINED_FUNCTION_16();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5B10, &qword_1DA34FBC0);
  OUTLINED_FUNCTION_15_3(v3);
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA3089E8()
{
  OUTLINED_FUNCTION_2_6();
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CC0, &qword_1DA34FBC8);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_1DA34DC80;
  *(v3 + 32) = 0x7079546575737369;
  *(v3 + 40) = 0xE900000000000065;
  sub_1DA3094C0(v2, v1, &qword_1ECBA5B10, &qword_1DA34FBC0);
  v4 = sub_1DA34C600();
  if (OUTLINED_FUNCTION_9_1(v4) == 1)
  {
    sub_1DA2E7E4C(v0[4], &qword_1ECBA5B10, &qword_1DA34FBC0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_12_2();
    v6 = *(v5 + 32);
    OUTLINED_FUNCTION_19_2();
    v7();
  }

  OUTLINED_FUNCTION_4_10(MEMORY[0x1E69CE3E8]);
  v11 = v8;
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_16_0(v9);

  return v11(0xD000000000000020);
}

uint64_t sub_1DA308B7C()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_3_10();
  v3 = v2;
  OUTLINED_FUNCTION_2_12();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v13 = v3[4];
    v12 = v3[5];

    v14 = OUTLINED_FUNCTION_5_9();

    return v15(v14);
  }
}

uint64_t sub_1DA308CAC()
{
  OUTLINED_FUNCTION_16();
  v2 = v0[4];
  v1 = v0[5];

  OUTLINED_FUNCTION_15();
  v4 = v0[7];

  return v3();
}

uint64_t sub_1DA308D10()
{
  OUTLINED_FUNCTION_20_2();
  sub_1DA34CFF0();
  OUTLINED_FUNCTION_23_2();
  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1DA308D50(char a1)
{
  result = 0x73646F50726961;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x79726574746162;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x64656C6261736964;
      break;
    case 5:
      result = 0x6150746F67726F66;
      break;
    case 6:
      result = 1818845549;
      break;
    case 7:
      result = 0x736567617373656DLL;
      break;
    case 8:
      result = 0x6573616863727570;
      break;
    case 9:
      result = 0x6572617774666F73;
      break;
    case 10:
      result = 1768319351;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_1DA308EB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DA308D10();
  *a2 = result;
  return result;
}

unint64_t sub_1DA308EE4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DA308D50(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

BOOL sub_1DA308F10()
{
  OUTLINED_FUNCTION_20_2();
  sub_1DA34CFF0();
  OUTLINED_FUNCTION_23_2();
  return v0 != 0;
}

BOOL sub_1DA308F68@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DA308F10();
  *a2 = result;
  return result;
}

uint64_t sub_1DA308FB0()
{
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_4_10(MEMORY[0x1E69CE3E0]);
  v6 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  sub_1DA30946C();
  OUTLINED_FUNCTION_10_4();
  *v2 = v3;
  v2[1] = sub_1DA309078;
  v4 = MEMORY[0x1E69E7CC0];

  return v6(0xD000000000000026, 0x80000001DA3550C0, v4, &type metadata for DeviceExpertCATsSimple.TroubleshootingHelpLabelsDialogIds);
}

uint64_t sub_1DA309078()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

uint64_t sub_1DA30916C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_19_2();
  return sub_1DA3091BC(v3, v4);
}

uint64_t sub_1DA3091BC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1DA34C680();
  v6 = OUTLINED_FUNCTION_14_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA59B0, &qword_1DA34EA70);
  v14 = OUTLINED_FUNCTION_15_3(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1DA3094C0(a1, &v20 - v17, &qword_1ECBA59B0, &qword_1DA34EA70);
  (*(v8 + 16))(v12, a2, v2);
  v18 = sub_1DA34C610();
  (*(v8 + 8))(a2, v2);
  sub_1DA2E7E4C(a1, &qword_1ECBA59B0, &qword_1DA34EA70);
  return v18;
}

uint64_t sub_1DA309334(uint64_t a1, uint64_t a2)
{
  v5 = sub_1DA34C680();
  v6 = OUTLINED_FUNCTION_14_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_1DA34C620();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_1DA309434()
{
  sub_1DA34C640();

  return swift_deallocClassInstance();
}

unint64_t sub_1DA30946C()
{
  result = qword_1ECBA5CB8;
  if (!qword_1ECBA5CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5CB8);
  }

  return result;
}

uint64_t sub_1DA3094C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_1DA309588()
{
  result = qword_1EE109EC0;
  if (!qword_1EE109EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109EC0);
  }

  return result;
}

unint64_t sub_1DA3095DC()
{
  result = qword_1EE109EB8;
  if (!qword_1EE109EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE109EB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceExpertCATsSimple.TroubleshootingHelpDialogIds(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DeviceExpertCATsSimple.TroubleshootingHelpDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DA3097B4(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DA309864()
{
  result = qword_1ECBA5CD8;
  if (!qword_1ECBA5CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5CD8);
  }

  return result;
}

unint64_t sub_1DA3098BC()
{
  result = qword_1ECBA5CE0;
  if (!qword_1ECBA5CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5CE0);
  }

  return result;
}

unint64_t sub_1DA309914()
{
  result = qword_1ECBA5CE8;
  if (!qword_1ECBA5CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5CE8);
  }

  return result;
}

unint64_t sub_1DA30996C()
{
  result = qword_1ECBA5CF0;
  if (!qword_1ECBA5CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5CF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_10@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_16_0(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_23_2()
{
}

uint64_t TroubleshootingSnippetModel.actions.getter()
{
  v0 = *(type metadata accessor for TroubleshootingSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5878, &unk_1DA34DED0);
  OUTLINED_FUNCTION_13_2();
  return v2;
}

uint64_t type metadata accessor for TroubleshootingSnippetModel()
{
  result = qword_1EE10A4E8;
  if (!qword_1EE10A4E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TroubleshootingSnippetModel.context.getter()
{
  v0 = *(type metadata accessor for TroubleshootingSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  OUTLINED_FUNCTION_13_2();
  return v2;
}

uint64_t TroubleshootingSnippetModel.init(issueType:actions:body:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58B8, &qword_1DA34FEF0);
  v6 = *(type metadata accessor for TextRun(0) - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_1DA34DC80;
  sub_1DA34BA10();
  sub_1DA30B224(&unk_1EE10ACC8);
  sub_1DA34C7B0();

  *a3 = a1;
  a3[1] = a2;
  v9 = type metadata accessor for TroubleshootingSnippetModel();
  v10 = v9[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5890, &unk_1DA34F7F0);
  sub_1DA34C0D0();
  v11 = v9[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
  sub_1DA34C0D0();
  v12 = v9[7];
  type metadata accessor for FlowContext();
  return sub_1DA34C0D0();
}

{
  *a3 = a1;
  a3[1] = a2;
  v3 = type metadata accessor for TroubleshootingSnippetModel();
  v4 = v3[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5890, &unk_1DA34F7F0);
  sub_1DA34C0D0();
  v5 = v3[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
  sub_1DA34C0D0();
  v6 = v3[7];
  type metadata accessor for FlowContext();
  return sub_1DA34C0D0();
}

uint64_t TroubleshootingSnippetModel.issueType.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1DA309E1C(uint64_t *a1)
{
  v1 = *a1;

  return TroubleshootingSnippetModel.actions.setter();
}

uint64_t TroubleshootingSnippetModel.actions.setter()
{
  v0 = *(type metadata accessor for TroubleshootingSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5878, &unk_1DA34DED0);
  return OUTLINED_FUNCTION_10_5();
}

uint64_t (*TroubleshootingSnippetModel.actions.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *(OUTLINED_FUNCTION_7_4(v1) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5878, &unk_1DA34DED0);
  *(v0 + 32) = OUTLINED_FUNCTION_11_0();
  return sub_1DA2F3614;
}

uint64_t TroubleshootingSnippetModel.body.getter()
{
  v0 = *(type metadata accessor for TroubleshootingSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_13_2();
  return v2;
}

uint64_t sub_1DA309F50(uint64_t *a1)
{
  v1 = *a1;

  return TroubleshootingSnippetModel.body.setter();
}

uint64_t TroubleshootingSnippetModel.body.setter()
{
  v0 = *(type metadata accessor for TroubleshootingSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  return OUTLINED_FUNCTION_10_5();
}

uint64_t (*TroubleshootingSnippetModel.body.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *(OUTLINED_FUNCTION_7_4(v1) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  *(v0 + 32) = OUTLINED_FUNCTION_11_0();
  return sub_1DA2F25B0;
}

uint64_t sub_1DA30A038(uint64_t *a1)
{
  v1 = *a1;

  return TroubleshootingSnippetModel.context.setter();
}

uint64_t TroubleshootingSnippetModel.context.setter()
{
  v0 = *(type metadata accessor for TroubleshootingSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  return OUTLINED_FUNCTION_10_5();
}

uint64_t (*TroubleshootingSnippetModel.context.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *(OUTLINED_FUNCTION_7_4(v1) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  *(v0 + 32) = OUTLINED_FUNCTION_11_0();
  return sub_1DA2F3614;
}

uint64_t TroubleshootingSnippetModel.selectableComponents.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A80, &unk_1DA34EA50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DA34DC80;
  v1 = *(type metadata accessor for TroubleshootingSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  sub_1DA34C0F0();
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA58C0, &qword_1DA34DF10);
  *(v0 + 64) = &protocol witness table for [A];
  *(v0 + 32) = v3;
  return v0;
}

uint64_t sub_1DA30A2A0()
{
  v0 = *(type metadata accessor for TroubleshootingSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_13_2();
  sub_1DA3462B8();
  v2 = v1;

  return v2 & 1;
}

uint64_t sub_1DA30A304(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079546575737369 && a2 == 0xE900000000000065;
  if (v4 || (sub_1DA34D160() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736E6F69746361 && a2 == 0xE700000000000000;
    if (v6 || (sub_1DA34D160() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 2036625250 && a2 == 0xE400000000000000;
      if (v7 || (sub_1DA34D160() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DA34D160();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1DA30A464(char a1)
{
  result = 0x7079546575737369;
  switch(a1)
  {
    case 1:
      result = 0x736E6F69746361;
      break;
    case 2:
      result = 2036625250;
      break;
    case 3:
      result = 0x747865746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA30A4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA30A304(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA30A514(uint64_t a1)
{
  v2 = sub_1DA30ACFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA30A550(uint64_t a1)
{
  v2 = sub_1DA30ACFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TroubleshootingSnippetModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5CF8, &qword_1DA34FEF8);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA30ACFC();
  sub_1DA34D250();
  v14 = *v3;
  v15 = v3[1];
  v24[15] = 0;
  sub_1DA34D0F0();
  if (!v2)
  {
    v16 = type metadata accessor for TroubleshootingSnippetModel();
    v17 = v16[5];
    v24[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5878, &unk_1DA34DED0);
    OUTLINED_FUNCTION_1_6();
    sub_1DA30AFFC(v18);
    OUTLINED_FUNCTION_4_8();
    v19 = v16[6];
    v24[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
    OUTLINED_FUNCTION_1_6();
    sub_1DA30ADD8(v20);
    OUTLINED_FUNCTION_4_8();
    v21 = v16[7];
    v24[12] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
    OUTLINED_FUNCTION_1_6();
    sub_1DA30AF38(v22);
    OUTLINED_FUNCTION_4_8();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t TroubleshootingSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5880, &qword_1DA34E250);
  OUTLINED_FUNCTION_0(v52);
  v50 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v6);
  v53 = v47 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5A88, &qword_1DA352620);
  OUTLINED_FUNCTION_0(v58);
  v54 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v11);
  v57 = v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5878, &unk_1DA34DED0);
  OUTLINED_FUNCTION_0(v13);
  v55 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v47 - v18;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5D08, &qword_1DA34FF00);
  OUTLINED_FUNCTION_0(v60);
  v56 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v47 - v24;
  v26 = type metadata accessor for TroubleshootingSnippetModel();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = (v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA30ACFC();
  v59 = v25;
  v31 = v61;
  sub_1DA34D240();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = v57;
  v48 = v26;
  v49 = v29;
  v61 = v13;
  v33 = v58;
  v65 = 0;
  v34 = sub_1DA34D060();
  v35 = v49;
  *v49 = v34;
  v35[1] = v36;
  v47[1] = v36;
  v64 = 1;
  OUTLINED_FUNCTION_2_4();
  sub_1DA30AFFC(v37);
  v38 = v61;
  sub_1DA34D090();
  (*(v55 + 32))(v49 + *(v48 + 20), v19, v38);
  v63 = 2;
  OUTLINED_FUNCTION_2_4();
  sub_1DA30ADD8(v39);
  v40 = v33;
  sub_1DA34D090();
  v41 = v48;
  (*(v54 + 32))(v49 + *(v48 + 24), v32, v40);
  v62 = 3;
  OUTLINED_FUNCTION_2_4();
  sub_1DA30AF38(v42);
  sub_1DA34D090();
  v43 = OUTLINED_FUNCTION_6_7();
  v44(v43);
  v45 = v49;
  (*(v50 + 32))(v49 + *(v41 + 28), v53, v52);
  sub_1DA30B0D4(v45, v51);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DA30B138(v45);
}

unint64_t sub_1DA30ACFC()
{
  result = qword_1ECBA5D00;
  if (!qword_1ECBA5D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5D00);
  }

  return result;
}

unint64_t sub_1DA30AD50(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5890, &unk_1DA34F7F0);
    sub_1DA30B224(v4);
    result = OUTLINED_FUNCTION_12_3();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA30ADD8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5A88, &qword_1DA352620);
    sub_1DA30AEB0(&unk_1EE109F68);
    sub_1DA30AEB0(&unk_1EE109F70);
    result = OUTLINED_FUNCTION_8_4();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA30AEB0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA58C0, &qword_1DA34DF10);
    sub_1DA30B224(v4);
    result = OUTLINED_FUNCTION_12_3();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA30AF38(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5880, &qword_1DA34E250);
    sub_1DA30B224(&unk_1EE10AC10);
    sub_1DA30B224(&unk_1EE10AC18);
    result = OUTLINED_FUNCTION_8_4();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DA30AFFC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA5878, &unk_1DA34DED0);
    sub_1DA30AD50(&unk_1ECBA5C18);
    sub_1DA30AD50(&unk_1ECBA5C28);
    result = OUTLINED_FUNCTION_8_4();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1DA30B0D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TroubleshootingSnippetModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA30B138(uint64_t a1)
{
  v2 = type metadata accessor for TroubleshootingSnippetModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DA30B224(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_3(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_1DA30B290()
{
  sub_1DA3063E8(319, &qword_1EE10AC60, &qword_1ECBA5890, &unk_1DA34F7F0);
  if (v0 <= 0x3F)
  {
    sub_1DA3063E8(319, &qword_1EE10AC50, &qword_1ECBA58C0, &qword_1DA34DF10);
    if (v1 <= 0x3F)
    {
      sub_1DA2F33D8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for TroubleshootingSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA30B44C()
{
  result = qword_1ECBA5D20;
  if (!qword_1ECBA5D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5D20);
  }

  return result;
}

unint64_t sub_1DA30B4A4()
{
  result = qword_1ECBA5D28;
  if (!qword_1ECBA5D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5D28);
  }

  return result;
}

unint64_t sub_1DA30B4FC()
{
  result = qword_1ECBA5D30;
  if (!qword_1ECBA5D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5D30);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_7()
{
  v2 = *(v0 + 8);
  result = *(v1 - 104);
  v4 = *(v1 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_4(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for TroubleshootingSnippetModel();
}

uint64_t OUTLINED_FUNCTION_8_4()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_10_5()
{

  return sub_1DA34C100();
}

uint64_t OUTLINED_FUNCTION_12_3()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_13_2()
{

  return sub_1DA34C0F0();
}

uint64_t sub_1DA30B5E8()
{
  v2 = type metadata accessor for TellMeGeneratedSnippetModels();
  v3 = OUTLINED_FUNCTION_12(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_34_0(v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      type metadata accessor for LearnMoreSnippetModel();
      OUTLINED_FUNCTION_17_3();
      v8 = &off_1F55E2D60;
      break;
    case 2u:
      type metadata accessor for ListStyleAnswerSnippetModel();
      OUTLINED_FUNCTION_20_3();
      v8 = &off_1F55E2518;
      break;
    case 3u:
      type metadata accessor for SummarizedAnswerSnippetModel();
      OUTLINED_FUNCTION_18_2();
      v8 = &off_1F55E2C88;
      break;
    case 4u:
      type metadata accessor for SupplementarySnippetModel();
      OUTLINED_FUNCTION_21_1();
      v8 = &off_1F55E0B50;
      break;
    case 5u:
      type metadata accessor for TipSnippetModel(0);
      OUTLINED_FUNCTION_16_1();
      v8 = &off_1F55E0490;
      break;
    case 6u:
      type metadata accessor for TroubleshootingSnippetModel();
      OUTLINED_FUNCTION_15_4();
      v8 = &off_1F55E0F28;
      break;
    default:
      type metadata accessor for AttributionListSnippetModel();
      OUTLINED_FUNCTION_22_2();
      v8 = &off_1F55E0350;
      break;
  }

  v15 = v7;
  v16 = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  sub_1DA30DE10(v0, boxed_opaque_existential_0, v1);
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v10 = OUTLINED_FUNCTION_31_0();
  v12 = v11(v10);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v12 & 1;
}

uint64_t sub_1DA30B76C()
{
  v2 = type metadata accessor for TellMeGeneratedSnippetModels();
  v3 = OUTLINED_FUNCTION_12(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_34_0(v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      type metadata accessor for LearnMoreSnippetModel();
      OUTLINED_FUNCTION_17_3();
      v8 = &off_1F55E2D50;
      break;
    case 2u:
      type metadata accessor for ListStyleAnswerSnippetModel();
      OUTLINED_FUNCTION_20_3();
      v8 = &off_1F55E2508;
      break;
    case 3u:
      type metadata accessor for SummarizedAnswerSnippetModel();
      OUTLINED_FUNCTION_18_2();
      v8 = &off_1F55E2C78;
      break;
    case 4u:
      type metadata accessor for SupplementarySnippetModel();
      OUTLINED_FUNCTION_21_1();
      v8 = &off_1F55E0B40;
      break;
    case 5u:
      type metadata accessor for TipSnippetModel(0);
      OUTLINED_FUNCTION_16_1();
      v8 = &off_1F55E0480;
      break;
    case 6u:
      type metadata accessor for TroubleshootingSnippetModel();
      OUTLINED_FUNCTION_15_4();
      v8 = &off_1F55E0F18;
      break;
    default:
      type metadata accessor for AttributionListSnippetModel();
      OUTLINED_FUNCTION_22_2();
      v8 = &off_1F55E0340;
      break;
  }

  v15 = v7;
  v16 = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  sub_1DA30DE10(v0, boxed_opaque_existential_0, v1);
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v10 = OUTLINED_FUNCTION_31_0();
  v12 = v11(v10);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v12 & 1;
}

uint64_t sub_1DA30B918(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475626972747461 && a2 == 0xEF7473694C6E6F69;
  if (v4 || (sub_1DA34D160() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F4D6E7261656CLL && a2 == 0xE900000000000065;
    if (v6 || (sub_1DA34D160() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C7974537473696CLL && a2 == 0xEF726577736E4165;
      if (v7 || (sub_1DA34D160() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001DA355270 == a2;
        if (v8 || (sub_1DA34D160() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656D656C70707573 && a2 == 0xED0000797261746ELL;
          if (v9 || (sub_1DA34D160() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 7367028 && a2 == 0xE300000000000000;
            if (v10 || (sub_1DA34D160() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x73656C62756F7274 && a2 == 0xEF676E69746F6F68)
            {

              return 6;
            }

            else
            {
              v12 = sub_1DA34D160();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DA30BB80(char a1)
{
  result = 0x7475626972747461;
  switch(a1)
  {
    case 1:
      result = 0x726F4D6E7261656CLL;
      break;
    case 2:
      result = 0x6C7974537473696CLL;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x656D656C70707573;
      break;
    case 5:
      result = 7367028;
      break;
    case 6:
      result = 0x73656C62756F7274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA30BC7C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DA34D160();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DA30BCF0(uint64_t a1)
{
  v2 = sub_1DA30CFA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA30BD2C(uint64_t a1)
{
  v2 = sub_1DA30CFA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA30BD70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA30B918(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA30BD98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA30BB78();
  *a1 = result;
  return result;
}

uint64_t sub_1DA30BDC0(uint64_t a1)
{
  v2 = sub_1DA30CCF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA30BDFC(uint64_t a1)
{
  v2 = sub_1DA30CCF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA30BE38(uint64_t a1)
{
  v2 = sub_1DA30CF54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA30BE74(uint64_t a1)
{
  v2 = sub_1DA30CF54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA30BEB0(uint64_t a1)
{
  v2 = sub_1DA30CF00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA30BEEC(uint64_t a1)
{
  v2 = sub_1DA30CF00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA30BF28(uint64_t a1)
{
  v2 = sub_1DA30CEAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA30BF64(uint64_t a1)
{
  v2 = sub_1DA30CEAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA30BFA0(uint64_t a1)
{
  v2 = sub_1DA30CE58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA30BFDC(uint64_t a1)
{
  v2 = sub_1DA30CE58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA30C018(uint64_t a1)
{
  v2 = sub_1DA30CE04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA30C054(uint64_t a1)
{
  v2 = sub_1DA30CE04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA30C090(uint64_t a1)
{
  v2 = sub_1DA30CDB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA30C0CC(uint64_t a1)
{
  v2 = sub_1DA30CDB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TellMeGeneratedSnippetModels.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5D38, &qword_1DA350120);
  v3 = OUTLINED_FUNCTION_0(v2);
  v150 = v4;
  v151 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17_2();
  v149 = v8;
  v147 = type metadata accessor for TroubleshootingSnippetModel();
  v9 = OUTLINED_FUNCTION_12(v147);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_11();
  v148 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5D40, &qword_1DA350128);
  v14 = OUTLINED_FUNCTION_0(v13);
  v145 = v15;
  v146 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_17_2();
  v144 = v19;
  v142 = type metadata accessor for TipSnippetModel(0);
  v20 = OUTLINED_FUNCTION_12(v142);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_11();
  v143 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5D48, &qword_1DA350130);
  v25 = OUTLINED_FUNCTION_0(v24);
  v140 = v26;
  v141 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_17_2();
  v139 = v30;
  v137 = type metadata accessor for SupplementarySnippetModel();
  v31 = OUTLINED_FUNCTION_12(v137);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_4_11();
  v138 = v34;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5D50, &qword_1DA350138);
  OUTLINED_FUNCTION_0(v136);
  v135 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_29_2(v39);
  v133 = type metadata accessor for SummarizedAnswerSnippetModel();
  v40 = OUTLINED_FUNCTION_12(v133);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_29_2(v43);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5D58, &qword_1DA350140);
  OUTLINED_FUNCTION_0(v132);
  v131 = v44;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_29_2(v48);
  v129 = type metadata accessor for ListStyleAnswerSnippetModel();
  v49 = OUTLINED_FUNCTION_12(v129);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_29_2(v52);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5D60, &qword_1DA350148);
  OUTLINED_FUNCTION_0(v128);
  v127 = v53;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_29_2(v57);
  v125 = type metadata accessor for LearnMoreSnippetModel();
  v58 = OUTLINED_FUNCTION_12(v125);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_29_2(v61);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5D68, &qword_1DA350150);
  OUTLINED_FUNCTION_0(v124);
  v123 = v62;
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v123 - v66;
  v68 = type metadata accessor for AttributionListSnippetModel();
  v69 = OUTLINED_FUNCTION_12(v68);
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_1_4();
  v74 = v73 - v72;
  v75 = type metadata accessor for TellMeGeneratedSnippetModels();
  v76 = OUTLINED_FUNCTION_12(v75);
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_1_4();
  v81 = v80 - v79;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5D70, &qword_1DA350158);
  v83 = OUTLINED_FUNCTION_0(v82);
  v154 = v84;
  v155 = v83;
  v86 = *(v85 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v123 - v88;
  v90 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA30CCF8();
  v153 = v89;
  sub_1DA34D250();
  sub_1DA30CD4C(v152, v81);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v97 = v126;
      sub_1DA30DE10(v81, v126, type metadata accessor for LearnMoreSnippetModel);
      v156[2] = 1;
      sub_1DA30CF54();
      OUTLINED_FUNCTION_3_11();
      OUTLINED_FUNCTION_19_3();
      sub_1DA30DF00(v111, v112);
      OUTLINED_FUNCTION_30_2();
      OUTLINED_FUNCTION_32_0(&v154);
      v113 = OUTLINED_FUNCTION_10_6();
      v114(v113);
      v102 = type metadata accessor for LearnMoreSnippetModel;
      goto LABEL_9;
    case 2u:
      v97 = v130;
      sub_1DA30DE10(v81, v130, type metadata accessor for ListStyleAnswerSnippetModel);
      v156[3] = 2;
      sub_1DA30CF00();
      OUTLINED_FUNCTION_3_11();
      OUTLINED_FUNCTION_25_2();
      sub_1DA30DF00(v103, v104);
      OUTLINED_FUNCTION_30_2();
      OUTLINED_FUNCTION_32_0(v156);
      v105 = OUTLINED_FUNCTION_10_6();
      v106(v105);
      v102 = type metadata accessor for ListStyleAnswerSnippetModel;
      goto LABEL_9;
    case 3u:
      v97 = v134;
      sub_1DA30DE10(v81, v134, type metadata accessor for SummarizedAnswerSnippetModel);
      v156[4] = 3;
      sub_1DA30CEAC();
      OUTLINED_FUNCTION_3_11();
      OUTLINED_FUNCTION_23_3();
      sub_1DA30DF00(v107, v108);
      OUTLINED_FUNCTION_30_2();
      OUTLINED_FUNCTION_32_0(&v157);
      v109 = OUTLINED_FUNCTION_10_6();
      v110(v109);
      v102 = type metadata accessor for SummarizedAnswerSnippetModel;
      goto LABEL_9;
    case 4u:
      v97 = v138;
      sub_1DA30DE10(v81, v138, type metadata accessor for SupplementarySnippetModel);
      v156[5] = 4;
      sub_1DA30CE58();
      OUTLINED_FUNCTION_3_11();
      OUTLINED_FUNCTION_13_3();
      sub_1DA30DF00(v98, v99);
      OUTLINED_FUNCTION_30_2();
      sub_1DA34D120();
      v100 = OUTLINED_FUNCTION_10_6();
      v101(v100);
      v102 = type metadata accessor for SupplementarySnippetModel;
      goto LABEL_9;
    case 5u:
      v97 = v143;
      sub_1DA30DE10(v81, v143, type metadata accessor for TipSnippetModel);
      v156[6] = 5;
      sub_1DA30CE04();
      OUTLINED_FUNCTION_3_11();
      OUTLINED_FUNCTION_14_4();
      sub_1DA30DF00(v115, v116);
      OUTLINED_FUNCTION_30_2();
      sub_1DA34D120();
      v117 = OUTLINED_FUNCTION_10_6();
      v118(v117);
      v102 = type metadata accessor for TipSnippetModel;
      goto LABEL_9;
    case 6u:
      v97 = v148;
      sub_1DA30DE10(v81, v148, type metadata accessor for TroubleshootingSnippetModel);
      v156[7] = 6;
      sub_1DA30CDB0();
      OUTLINED_FUNCTION_3_11();
      OUTLINED_FUNCTION_26_1();
      sub_1DA30DF00(v119, v120);
      OUTLINED_FUNCTION_30_2();
      sub_1DA34D120();
      v121 = OUTLINED_FUNCTION_10_6();
      v122(v121);
      v102 = type metadata accessor for TroubleshootingSnippetModel;
LABEL_9:
      sub_1DA30CFFC(v97, v102);
      result = (*(v154 + 8))(v75, v67);
      break;
    default:
      sub_1DA30DE10(v81, v74, type metadata accessor for AttributionListSnippetModel);
      v156[1] = 0;
      sub_1DA30CFA8();
      v91 = v155;
      v92 = v153;
      sub_1DA34D0B0();
      OUTLINED_FUNCTION_24_1();
      sub_1DA30DF00(v93, v94);
      v95 = v124;
      sub_1DA34D120();
      (*(v123 + 8))(v67, v95);
      sub_1DA30CFFC(v74, type metadata accessor for AttributionListSnippetModel);
      result = (*(v154 + 8))(v92, v91);
      break;
  }

  return result;
}

uint64_t type metadata accessor for TellMeGeneratedSnippetModels()
{
  result = qword_1EE10A310;
  if (!qword_1EE10A310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DA30CCF8()
{
  result = qword_1EE10A3B8[0];
  if (!qword_1EE10A3B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE10A3B8);
  }

  return result;
}

uint64_t sub_1DA30CD4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TellMeGeneratedSnippetModels();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DA30CDB0()
{
  result = qword_1ECBA5D78;
  if (!qword_1ECBA5D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5D78);
  }

  return result;
}

unint64_t sub_1DA30CE04()
{
  result = qword_1ECBA5D80;
  if (!qword_1ECBA5D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5D80);
  }

  return result;
}

unint64_t sub_1DA30CE58()
{
  result = qword_1ECBA5D88;
  if (!qword_1ECBA5D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5D88);
  }

  return result;
}

unint64_t sub_1DA30CEAC()
{
  result = qword_1ECBA5D90;
  if (!qword_1ECBA5D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5D90);
  }

  return result;
}

unint64_t sub_1DA30CF00()
{
  result = qword_1EE10A360;
  if (!qword_1EE10A360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE10A360);
  }

  return result;
}

unint64_t sub_1DA30CF54()
{
  result = qword_1ECBA5DA0;
  if (!qword_1ECBA5DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5DA0);
  }

  return result;
}

unint64_t sub_1DA30CFA8()
{
  result = qword_1ECBA5DB0;
  if (!qword_1ECBA5DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA5DB0);
  }

  return result;
}

uint64_t sub_1DA30CFFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t TellMeGeneratedSnippetModels.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5DB8, &qword_1DA350160);
  v4 = OUTLINED_FUNCTION_0(v3);
  v147 = v5;
  v148 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17_2();
  v158 = v9;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5DC0, &qword_1DA350168);
  OUTLINED_FUNCTION_0(v146);
  v145 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17_2();
  v157 = v14;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5DC8, &qword_1DA350170);
  OUTLINED_FUNCTION_0(v144);
  v143 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_17_2();
  v164 = v19;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5DD0, &qword_1DA350178);
  OUTLINED_FUNCTION_0(v142);
  v141 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_17_2();
  v156 = v24;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5DD8, &qword_1DA350180);
  OUTLINED_FUNCTION_0(v163);
  v140 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_17_2();
  v155 = v29;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5DE0, &qword_1DA350188);
  OUTLINED_FUNCTION_0(v139);
  v138 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_17_2();
  v154 = v34;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5DE8, &qword_1DA350190);
  OUTLINED_FUNCTION_0(v137);
  v136[6] = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_17_2();
  v153 = v39;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5DF0, &qword_1DA350198);
  OUTLINED_FUNCTION_0(v162);
  v160 = v40;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x1EEE9AC00](v43);
  v45 = v136 - v44;
  v159 = type metadata accessor for TellMeGeneratedSnippetModels();
  v46 = OUTLINED_FUNCTION_12(v159);
  v48 = *(v47 + 64);
  v49 = MEMORY[0x1EEE9AC00](v46);
  v151 = v136 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v150 = v136 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v149 = v136 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v57 = v136 - v56;
  v58 = MEMORY[0x1EEE9AC00](v55);
  v60 = v136 - v59;
  v61 = MEMORY[0x1EEE9AC00](v58);
  v63 = v136 - v62;
  v64 = MEMORY[0x1EEE9AC00](v61);
  v66 = v136 - v65;
  MEMORY[0x1EEE9AC00](v64);
  v68 = v136 - v67;
  v70 = a1[3];
  v69 = a1[4];
  v165 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v70);
  sub_1DA30CCF8();
  v161 = v45;
  v71 = v166;
  sub_1DA34D240();
  if (v71)
  {
    goto LABEL_8;
  }

  v136[2] = v63;
  v136[3] = v60;
  v136[4] = v57;
  v136[5] = v66;
  v166 = v68;
  v72 = sub_1DA34D0A0();
  result = sub_1DA30DDC8(v72, 0);
  if (v75 == v76 >> 1)
  {
LABEL_7:
    v85 = v159;
    v86 = sub_1DA34CEF0();
    swift_allocError();
    v88 = v87;
    v89 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA5DF8, &qword_1DA3501A0) + 48);
    *v88 = v85;
    sub_1DA34D020();
    sub_1DA34CEE0();
    (*(*(v86 - 8) + 104))(v88, *MEMORY[0x1E69E6AF8], v86);
    swift_willThrow();
    swift_unknownObjectRelease();
    v90 = OUTLINED_FUNCTION_28_1();
    v91(v90);
LABEL_8:
    v92 = v165;
    return __swift_destroy_boxed_opaque_existential_1(v92);
  }

  v136[1] = 0;
  if (v75 < (v76 >> 1))
  {
    v136[0] = *(v74 + v75);
    sub_1DA30EAD4(v75 + 1, v76 >> 1, result, v74, v75, v76);
    v78 = v77;
    v80 = v79;
    swift_unknownObjectRelease();
    v81 = v166;
    if (v78 == v80 >> 1)
    {
      switch(v136[0])
      {
        case 1:
          v170 = 1;
          sub_1DA30CF54();
          OUTLINED_FUNCTION_6_8(&type metadata for TellMeGeneratedSnippetModels.LearnMoreCodingKeys, &v170);
          v111 = type metadata accessor for LearnMoreSnippetModel();
          OUTLINED_FUNCTION_19_3();
          sub_1DA30DF00(v99, v100);
          OUTLINED_FUNCTION_33_0(&v164);
          OUTLINED_FUNCTION_8_5();
          OUTLINED_FUNCTION_9_2();
          swift_unknownObjectRelease();
          v126 = OUTLINED_FUNCTION_1_15(&v176);
          v127(v126);
          v128 = OUTLINED_FUNCTION_7_5();
          v129(v128);
          OUTLINED_FUNCTION_27_2(&v164);
          goto LABEL_16;
        case 2:
          v171 = 2;
          sub_1DA30CF00();
          OUTLINED_FUNCTION_6_8(&type metadata for TellMeGeneratedSnippetModels.ListStyleAnswerCodingKeys, &v171);
          v111 = type metadata accessor for ListStyleAnswerSnippetModel();
          OUTLINED_FUNCTION_25_2();
          sub_1DA30DF00(v95, v96);
          OUTLINED_FUNCTION_33_0(&v165);
          OUTLINED_FUNCTION_8_5();
          OUTLINED_FUNCTION_9_2();
          swift_unknownObjectRelease();
          v112 = OUTLINED_FUNCTION_1_15(&v177);
          v113(v112);
          v114 = OUTLINED_FUNCTION_7_5();
          v115(v114);
          OUTLINED_FUNCTION_27_2(&v165);
          goto LABEL_16;
        case 3:
          v172 = 3;
          sub_1DA30CEAC();
          OUTLINED_FUNCTION_6_8(&type metadata for TellMeGeneratedSnippetModels.SummarizedAnswerCodingKeys, &v172);
          v111 = type metadata accessor for SummarizedAnswerSnippetModel();
          OUTLINED_FUNCTION_23_3();
          sub_1DA30DF00(v97, v98);
          OUTLINED_FUNCTION_33_0(&v166);
          OUTLINED_FUNCTION_8_5();
          swift_unknownObjectRelease();
          v116 = OUTLINED_FUNCTION_1_15(&v178);
          v117(v116);
          v118 = OUTLINED_FUNCTION_28_1();
          v119(v118);
          OUTLINED_FUNCTION_27_2(&v166);
          goto LABEL_16;
        case 4:
          v173 = 4;
          sub_1DA30CE58();
          OUTLINED_FUNCTION_6_8(&type metadata for TellMeGeneratedSnippetModels.SupplementaryCodingKeys, &v173);
          type metadata accessor for SupplementarySnippetModel();
          OUTLINED_FUNCTION_13_3();
          sub_1DA30DF00(v93, v94);
          OUTLINED_FUNCTION_8_5();
          OUTLINED_FUNCTION_9_2();
          swift_unknownObjectRelease();
          v107 = OUTLINED_FUNCTION_1_15(&v179);
          v108(v107);
          v109 = OUTLINED_FUNCTION_7_5();
          v110(v109);
          v111 = v149;
          goto LABEL_16;
        case 5:
          v174 = 5;
          sub_1DA30CE04();
          OUTLINED_FUNCTION_6_8(&type metadata for TellMeGeneratedSnippetModels.TipCodingKeys, &v174);
          type metadata accessor for TipSnippetModel(0);
          OUTLINED_FUNCTION_14_4();
          sub_1DA30DF00(v101, v102);
          OUTLINED_FUNCTION_8_5();
          OUTLINED_FUNCTION_9_2();
          swift_unknownObjectRelease();
          v130 = OUTLINED_FUNCTION_1_15(&v180);
          v131(v130);
          v132 = OUTLINED_FUNCTION_7_5();
          v133(v132);
          v111 = v150;
          goto LABEL_16;
        case 6:
          v175 = 6;
          sub_1DA30CDB0();
          v103 = v158;
          OUTLINED_FUNCTION_6_8(&type metadata for TellMeGeneratedSnippetModels.TroubleshootingCodingKeys, &v175);
          type metadata accessor for TroubleshootingSnippetModel();
          OUTLINED_FUNCTION_26_1();
          sub_1DA30DF00(v104, v105);
          v106 = v148;
          OUTLINED_FUNCTION_8_5();
          OUTLINED_FUNCTION_9_2();
          swift_unknownObjectRelease();
          (*(v147 + 8))(v103, v106);
          v134 = OUTLINED_FUNCTION_7_5();
          v135(v134);
          v111 = v151;
LABEL_16:
          swift_storeEnumTagMultiPayload();
          v125 = v111;
          v124 = v165;
          break;
        default:
          v169 = 0;
          sub_1DA30CFA8();
          OUTLINED_FUNCTION_6_8(&type metadata for TellMeGeneratedSnippetModels.AttributionListCodingKeys, &v169);
          v82 = type metadata accessor for AttributionListSnippetModel();
          OUTLINED_FUNCTION_24_1();
          sub_1DA30DF00(v83, v84);
          OUTLINED_FUNCTION_33_0(v167);
          OUTLINED_FUNCTION_8_5();
          OUTLINED_FUNCTION_9_2();
          swift_unknownObjectRelease();
          v120 = OUTLINED_FUNCTION_1_15(&v168);
          v121(v120);
          v122 = OUTLINED_FUNCTION_7_5();
          v123(v122);
          OUTLINED_FUNCTION_27_2(v167);
          swift_storeEnumTagMultiPayload();
          v124 = v165;
          v125 = v82;
          break;
      }

      sub_1DA30DE10(v125, v81, type metadata accessor for TellMeGeneratedSnippetModels);
      sub_1DA30DE10(v81, v152, type metadata accessor for TellMeGeneratedSnippetModels);
      v92 = v124;
      return __swift_destroy_boxed_opaque_existential_1(v92);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}