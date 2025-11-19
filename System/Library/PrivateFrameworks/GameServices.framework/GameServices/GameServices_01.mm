uint64_t sub_1D84486F4(uint64_t a1)
{
  v2 = sub_1D8581128();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_1D8448B3C(&qword_1ECA38988, MEMORY[0x1E69663E0]);
  sub_1D85813A8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38968, &qword_1D85907F8);
  v7 = 0;
  v8 = *(a1 + *(result + 36));
  v9 = v27[0];
  v10 = v27[1];
  v11 = MEMORY[0x1E69E7CC0];
  for (i = (MEMORY[0x1E69E7CC0] + 32); v8; ++v10)
  {
    v13 = *(v9 + 16);
    if (v10 == v13)
    {
      break;
    }

    if (v10 >= v13)
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v14 = *(v9 + v10 + 32);
    if (!v7)
    {
      v15 = v11[3];
      if (((v15 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_26;
      }

      v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
      if (v16 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38980, &qword_1D85AB5C0);
      v18 = swift_allocObject();
      v19 = 2 * _swift_stdlib_malloc_size(v18) - 64;
      v18[2] = v17;
      v18[3] = v19;
      v20 = (v18 + 4);
      v21 = v11[3];
      if (v11[2])
      {
        if (v18 != v11 || v20 >= v11 + (v21 >> 1) + 32)
        {
          memmove(v18 + 4, v11 + 4, v21 >> 1);
        }

        v11[2] = 0;
      }

      i = (v20 + (v21 >> 1));
      v7 = (v19 >> 1) - (v21 >> 1);

      v11 = v18;
    }

    v23 = __OFSUB__(v7--, 1);
    if (v23)
    {
      goto LABEL_25;
    }

    --v8;
    *i++ = v14;
  }

  v24 = v11[3];
  if (v24 < 2)
  {
    return v11;
  }

  v25 = v24 >> 1;
  v23 = __OFSUB__(v25, v7);
  v26 = v25 - v7;
  if (!v23)
  {
    v11[2] = v26;
    return v11;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D844894C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  v10 = *MEMORY[0x1E69E9840];
  a4(0);
  sub_1D8448B3C(a5, a6);
  result = sub_1D85810F8();
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D8448A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  result = sub_1D8580C98();
  if (!result || (result = sub_1D8580CB8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1D8580CA8();
      a5(0);
      sub_1D8448B3C(a6, a7);
      return sub_1D85810F8();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8448B3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FriendActivity.context.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FriendActivity.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FriendActivity() + 28);
  v4 = sub_1D8580EA8();
  v5 = OUTLINED_FUNCTION_4_0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t type metadata accessor for FriendActivity()
{
  result = qword_1ECA3B0C0;
  if (!qword_1ECA3B0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FriendActivity.init(player:context:image:date:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v8 = a1[1];
  v9 = *a4;
  v10 = a4[1];
  *a6 = *a1;
  *(a6 + 1) = v8;
  *(a6 + 2) = a2;
  *(a6 + 3) = a3;
  *(a6 + 4) = v9;
  *(a6 + 5) = v10;
  v11 = *(type metadata accessor for FriendActivity() + 28);
  v12 = sub_1D8580EA8();
  OUTLINED_FUNCTION_4_0(v12);
  v14 = *(v13 + 32);

  return v14(&a6[v11], a5);
}

uint64_t static FriendActivity.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1D8448DF4(*a1, a1[1], *a2, a2[1], &qword_1ECA389B8, &qword_1D8590B30, &qword_1ECA38A38) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_1D8581AB8() & 1) == 0 || (sub_1D8448DF4(a1[4], a1[5], a2[4], a2[5], &qword_1ECA389C8, &qword_1D8590820, &qword_1ECA38A30) & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for FriendActivity() + 28);

  return _s12GameServices0A7HistoryV04PlayC0V2eeoiySbAE_AEtFZ_0();
}

uint64_t sub_1D8448DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_1D844A16C(a7, a5, a6);
  sub_1D85813D8();
  sub_1D85813D8();
  if (v15 == v13 && v16 == v14)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D8581AB8();
  }

  return v11 & 1;
}

uint64_t sub_1D8448ED8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v4 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x747865746E6F63 && a2 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_7() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
      if (v7 || (OUTLINED_FUNCTION_7() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1702125924 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_7();

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

uint64_t sub_1D8449030(unsigned __int8 a1)
{
  sub_1D8581B58();
  MEMORY[0x1DA7191F0](a1);
  return sub_1D8581B98();
}

uint64_t sub_1D8449078(char a1)
{
  result = 0x726579616C70;
  switch(a1)
  {
    case 1:
      result = 0x747865746E6F63;
      break;
    case 2:
      result = 0x6567616D69;
      break;
    case 3:
      result = 1702125924;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8449108()
{
  v1 = *v0;
  sub_1D8581B58();
  MEMORY[0x1DA7191F0](v1);
  return sub_1D8581B98();
}

uint64_t sub_1D8449154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8448ED8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8449188(uint64_t a1)
{
  v2 = sub_1D8449444();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D84491C4(uint64_t a1)
{
  v2 = sub_1D8449444();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FriendActivity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B0, &unk_1D8590810);
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v22 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8449444();
  sub_1D8581BB8();
  v14 = v3[1];
  v24 = *v3;
  v25 = v14;
  v23 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
  OUTLINED_FUNCTION_2(&qword_1ECA389C0);
  OUTLINED_FUNCTION_6_1();

  if (!v2)
  {
    v15 = v3[2];
    v16 = v3[3];
    LOBYTE(v24) = 1;
    sub_1D8581A08();
    v17 = v3[5];
    v24 = v3[4];
    v25 = v17;
    v23 = 2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389C8, &qword_1D8590820);
    OUTLINED_FUNCTION_2(&qword_1ECA389D0);
    OUTLINED_FUNCTION_6_1();

    v18 = *(type metadata accessor for FriendActivity() + 28);
    LOBYTE(v24) = 3;
    sub_1D8580EA8();
    OUTLINED_FUNCTION_0_0();
    sub_1D8449BCC(v19, v20);
    sub_1D8581A58();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_1D8449444()
{
  result = qword_1ECA3AEB0[0];
  if (!qword_1ECA3AEB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA3AEB0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t FriendActivity.hash(into:)()
{
  v7 = *v0;
  v9 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
  sub_1D844A16C(&qword_1EE0E0090, &qword_1ECA389B8, &qword_1D8590B30);
  OUTLINED_FUNCTION_10_1();
  v1 = v0[2];
  v2 = v0[3];
  sub_1D85812B8();
  v8 = v0[4];
  v10 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389C8, &qword_1D8590820);
  sub_1D844A16C(&qword_1ECA389E0, &qword_1ECA389C8, &qword_1D8590820);
  OUTLINED_FUNCTION_10_1();
  v3 = *(type metadata accessor for FriendActivity() + 28);
  sub_1D8580EA8();
  OUTLINED_FUNCTION_0_0();
  sub_1D8449BCC(v4, v5);
  return sub_1D85811E8();
}

uint64_t FriendActivity.hashValue.getter()
{
  sub_1D8581B58();
  FriendActivity.hash(into:)();
  return sub_1D8581B98();
}

uint64_t FriendActivity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_1D8580EA8();
  v4 = OUTLINED_FUNCTION_1(v3);
  v36 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389F0, &qword_1D8590828);
  v10 = OUTLINED_FUNCTION_1(v38);
  v40 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v34 - v14;
  v16 = type metadata accessor for FriendActivity();
  v17 = OUTLINED_FUNCTION_4_0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8449444();
  v39 = v15;
  v23 = v41;
  sub_1D8581BA8();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = v16;
  v35 = v9;
  v41 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
  v44 = 0;
  OUTLINED_FUNCTION_3_1(&qword_1ECA389F8);
  OUTLINED_FUNCTION_9();
  sub_1D8581958();
  v24 = v43;
  v25 = v41;
  *v41 = v42;
  *(v25 + 1) = v24;
  LOBYTE(v42) = 1;
  *(v25 + 2) = sub_1D8581908();
  *(v25 + 3) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389C8, &qword_1D8590820);
  v44 = 2;
  OUTLINED_FUNCTION_3_1(&qword_1ECA38A00);
  OUTLINED_FUNCTION_9();
  sub_1D8581958();
  v27 = v43;
  *(v25 + 4) = v42;
  *(v25 + 5) = v27;
  LOBYTE(v42) = 3;
  OUTLINED_FUNCTION_0_0();
  sub_1D8449BCC(v28, v29);
  v30 = v35;
  sub_1D8581958();
  v31 = OUTLINED_FUNCTION_1_0();
  v32(v31);
  (*(v36 + 32))(&v25[*(v34 + 28)], v30, v3);
  sub_1D8449AC4(v25, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D8449B28(v25);
}

uint64_t sub_1D8449A88()
{
  sub_1D8581B58();
  FriendActivity.hash(into:)();
  return sub_1D8581B98();
}

uint64_t sub_1D8449AC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendActivity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8449B28(uint64_t a1)
{
  v2 = type metadata accessor for FriendActivity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8449BCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of ActivityServiceProtocol.listFriendActivities(player:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D8449D3C;

  return v11(a1, a2, a3);
}

uint64_t sub_1D8449D3C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void sub_1D8449E60()
{
  sub_1D8449F34(319, &qword_1EE0E0088, &qword_1ECA38A18, &qword_1D8590940);
  if (v0 <= 0x3F)
  {
    sub_1D8449F34(319, &qword_1ECA38A20, &qword_1ECA38A28, &qword_1D8590948);
    if (v1 <= 0x3F)
    {
      sub_1D8580EA8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D8449F34(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Ref();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for FriendActivity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D844A068()
{
  result = qword_1ECA3B1D0[0];
  if (!qword_1ECA3B1D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA3B1D0);
  }

  return result;
}

unint64_t sub_1D844A0C0()
{
  result = qword_1ECA3B2E0;
  if (!qword_1ECA3B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B2E0);
  }

  return result;
}

unint64_t sub_1D844A118()
{
  result = qword_1ECA3B2E8[0];
  if (!qword_1ECA3B2E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA3B2E8);
  }

  return result;
}

uint64_t sub_1D844A16C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t static ChallengeDefinitionFilter.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  switch(v3)
  {
    case 1u:
      if (v6 != 1)
      {
        goto LABEL_15;
      }

      v81 = OUTLINED_FUNCTION_188();
      sub_1D84669C0(v81, v82, 1u);
      v83 = OUTLINED_FUNCTION_189();
      sub_1D84669C0(v83, v84, 1u);
      v19 = v4 ^ v2 ^ 1;
      return v19 & 1;
    case 2u:
      if (v6 != 2)
      {
        goto LABEL_9;
      }

      if (a1[1])
      {
        if (v5)
        {
          v29 = OUTLINED_FUNCTION_89();
          sub_1D84669A4(v29, v30, v31);
          v32 = OUTLINED_FUNCTION_88();
          sub_1D84669A4(v32, v33, v34);
          v35 = OUTLINED_FUNCTION_88();
          sub_1D84669A4(v35, v36, v37);
          v38 = OUTLINED_FUNCTION_89();
          sub_1D84669A4(v38, v39, v40);
          v41 = OUTLINED_FUNCTION_89();
          sub_1D84669A4(v41, v42, v43);
          v44 = OUTLINED_FUNCTION_88();
          sub_1D84669A4(v44, v45, v46);
          v47 = OUTLINED_FUNCTION_88();
          sub_1D84669A4(v47, v48, v49);
          v50 = OUTLINED_FUNCTION_89();
          sub_1D84669A4(v50, v51, v52);
          v53 = OUTLINED_FUNCTION_188();
          v57 = sub_1D844A4B0(v53, v54, v4, v5, v55, v56);

          v58 = OUTLINED_FUNCTION_89();
          sub_1D84669C0(v58, v59, v60);
          v61 = OUTLINED_FUNCTION_88();
          sub_1D84669C0(v61, v62, v63);
          v64 = OUTLINED_FUNCTION_88();
          sub_1D84669C0(v64, v65, v66);
          v67 = OUTLINED_FUNCTION_89();
          sub_1D84669C0(v67, v68, v69);
          v70 = OUTLINED_FUNCTION_89();
          sub_1D84669C0(v70, v71, v72);
          v73 = OUTLINED_FUNCTION_88();
          sub_1D84669C0(v73, v74, v75);
          if ((v57 & 1) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_22;
        }

LABEL_20:
        v93 = OUTLINED_FUNCTION_88();
        sub_1D84669A4(v93, v94, v95);
        v96 = OUTLINED_FUNCTION_89();
        sub_1D84669A4(v96, v97, v98);
        v99 = OUTLINED_FUNCTION_89();
        sub_1D84669A4(v99, v100, v101);
        v102 = OUTLINED_FUNCTION_88();
        sub_1D84669A4(v102, v103, v104);
        v105 = OUTLINED_FUNCTION_88();
        sub_1D84669A4(v105, v106, v107);
        v108 = OUTLINED_FUNCTION_89();
        sub_1D84669A4(v108, v109, v110);

        v111 = OUTLINED_FUNCTION_88();
        sub_1D84669C0(v111, v112, v113);
        v114 = OUTLINED_FUNCTION_89();
        sub_1D84669C0(v114, v115, v116);
        v117 = OUTLINED_FUNCTION_89();
        sub_1D84669C0(v117, v118, v119);
        v89 = OUTLINED_FUNCTION_88();
        goto LABEL_16;
      }

      if (v5)
      {
        goto LABEL_20;
      }

      v120 = OUTLINED_FUNCTION_326();
      sub_1D84669A4(v120, v121, v122);
      v123 = OUTLINED_FUNCTION_420();
      sub_1D84669A4(v123, v124, v125);
      v126 = OUTLINED_FUNCTION_326();
      sub_1D84669A4(v126, v127, v128);
      swift_bridgeObjectRelease_n();
      v129 = OUTLINED_FUNCTION_420();
      sub_1D84669C0(v129, v130, v131);
      v132 = OUTLINED_FUNCTION_326();
      sub_1D84669C0(v132, v133, v134);
      v135 = OUTLINED_FUNCTION_326();
      sub_1D84669C0(v135, v136, v137);
      v138 = OUTLINED_FUNCTION_420();
      sub_1D84669C0(v138, v139, v140);
LABEL_22:
      v19 = 1;
      return v19 & 1;
    case 3u:
      if (v6 != 3)
      {
        goto LABEL_15;
      }

      v77 = *a1;
      v78 = *a2;
      v19 = sub_1D844AB18();
      v79 = OUTLINED_FUNCTION_188();
      sub_1D84669C0(v79, v80, 3u);
      v26 = OUTLINED_FUNCTION_189();
      v28 = 3;
      goto LABEL_12;
    default:
      if (*(a2 + 16))
      {
LABEL_9:
        v76 = a1[1];

LABEL_15:
        v85 = OUTLINED_FUNCTION_189();
        sub_1D84669A4(v85, v86, v6);
        v87 = OUTLINED_FUNCTION_188();
        sub_1D84669C0(v87, v88, v3);
        v89 = OUTLINED_FUNCTION_189();
        v91 = v6;
LABEL_16:
        sub_1D84669C0(v89, v90, v91);
LABEL_17:
        v19 = 0;
      }

      else
      {
        v7 = OUTLINED_FUNCTION_189();
        sub_1D84669A4(v7, v8, 0);
        v9 = OUTLINED_FUNCTION_188();
        sub_1D84669A4(v9, v10, 0);
        v11 = OUTLINED_FUNCTION_188();
        sub_1D84669A4(v11, v12, 0);
        v13 = OUTLINED_FUNCTION_189();
        sub_1D84669A4(v13, v14, 0);
        v15 = OUTLINED_FUNCTION_188();
        v19 = sub_1D844A4B0(v15, v16, v4, v5, v17, v18);
        v20 = OUTLINED_FUNCTION_188();
        sub_1D84669C0(v20, v21, 0);
        v22 = OUTLINED_FUNCTION_189();
        sub_1D84669C0(v22, v23, 0);
        v24 = OUTLINED_FUNCTION_189();
        sub_1D84669C0(v24, v25, 0);
        v26 = OUTLINED_FUNCTION_188();
        v28 = 0;
LABEL_12:
        sub_1D84669C0(v26, v27, v28);
      }

      return v19 & 1;
  }
}

uint64_t sub_1D844A4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v6 = OUTLINED_FUNCTION_188();
  sub_1D848211C(v6);
  OUTLINED_FUNCTION_291();
  sub_1D85813D8();
  OUTLINED_FUNCTION_291();
  sub_1D85813D8();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_333_0();
  }

  return v8 & 1;
}

uint64_t sub_1D844A580(unsigned __int8 a1, char a2)
{
  v2 = 0xEC0000006465646ELL;
  v3 = 0x4579646165726C61;
  v4 = a1;
  v5 = 0x4579646165726C61;
  v6 = 0xEC0000006465646ELL;
  switch(v4)
  {
    case 1:
      v6 = 0xE700000000000000;
      v5 = 0x64696C61766E69;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v5 = 1952867692;
      break;
    case 3:
      v5 = 0x656E696F4A746F6ELL;
      v6 = 0xE900000000000064;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE700000000000000;
      v3 = 0x64696C61766E69;
      break;
    case 2:
      v2 = 0xE400000000000000;
      v3 = 1952867692;
      break;
    case 3:
      v3 = 0x656E696F4A746F6ELL;
      v2 = 0xE900000000000064;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8581AB8();
  }

  return v8 & 1;
}

uint64_t sub_1D844A6CC(unsigned __int8 a1, char a2)
{
  v2 = 0x657669746361;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x657669746361;
  switch(v4)
  {
    case 1:
      v5 = 0x4179646165726C61;
      v3 = 0xEF64657470656363;
      break;
    case 2:
      v5 = 0x4979646165726C61;
      v3 = 0xEE0064657469766ELL;
      break;
    case 3:
      v3 = 0x80000001D85823B0;
      v5 = 0xD000000000000015;
      break;
    case 4:
      v3 = 0x80000001D85823D0;
      v5 = 0xD000000000000016;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v5 = 0x64696C61766E69;
      break;
    case 6:
      v5 = 0xD000000000000013;
      v3 = 0x80000001D85823F0;
      break;
    case 7:
      v5 = 0x616C696176616E75;
      v3 = 0xEB00000000656C62;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x4179646165726C61;
      v6 = 0xEF64657470656363;
      break;
    case 2:
      v2 = 0x4979646165726C61;
      v6 = 0xEE0064657469766ELL;
      break;
    case 3:
      v6 = 0x80000001D85823B0;
      v2 = 0xD000000000000015;
      break;
    case 4:
      v6 = 0x80000001D85823D0;
      v2 = 0xD000000000000016;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v2 = 0x64696C61766E69;
      break;
    case 6:
      v2 = 0xD000000000000013;
      v6 = 0x80000001D85823F0;
      break;
    case 7:
      v2 = 0x616C696176616E75;
      v6 = 0xEB00000000656C62;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8581AB8();
  }

  return v8 & 1;
}

uint64_t sub_1D844A924(unsigned __int8 a1, char a2)
{
  v2 = 0x646E6F636573;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x646E6F636573;
  switch(v4)
  {
    case 1:
      v5 = 0x6574756E696DLL;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1920298856;
      break;
    case 3:
      v3 = 0xE300000000000000;
      v5 = 7954788;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1801807223;
      break;
    case 5:
      v3 = 0xE500000000000000;
      v5 = 0x68746E6F6DLL;
      break;
    case 6:
      v3 = 0xE400000000000000;
      v5 = 1918985593;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6574756E696DLL;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1920298856;
      break;
    case 3:
      v6 = 0xE300000000000000;
      v2 = 7954788;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v2 = 1801807223;
      break;
    case 5:
      v6 = 0xE500000000000000;
      v2 = 0x68746E6F6DLL;
      break;
    case 6:
      v6 = 0xE400000000000000;
      v2 = 1918985593;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8581AB8();
  }

  return v8 & 1;
}

BOOL sub_1D844AAA4()
{
  sub_1D84820C8();
  sub_1D85813D8();
  sub_1D85813D8();
  return v2 == v1;
}

uint64_t sub_1D844AB18()
{
  sub_1D8482160();
  sub_1D85813D8();
  sub_1D85813D8();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1D8581AB8();
  }

  return v1 & 1;
}

uint64_t sub_1D844ABC8()
{
  OUTLINED_FUNCTION_263_0();
  v3 = v1 == OUTLINED_FUNCTION_237() && v2 == 0xEA00000000006E6FLL;
  if (v3 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_441();
    v5 = v3 && v0 == 0xEA00000000006465;
    if (v5 || (OUTLINED_FUNCTION_7() & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_440();
      v6 = v3 && v0 == 0xE800000000000000;
      if (v6 || (OUTLINED_FUNCTION_7() & 1) != 0)
      {

        return 2;
      }

      else if (v1 == OUTLINED_FUNCTION_223() && v0 == v7)
      {

        return 3;
      }

      else
      {
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_369();
        if (v1)
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

uint64_t sub_1D844ACB8()
{
  result = OUTLINED_FUNCTION_237();
  switch(v1)
  {
    case 1:
      result = 0x7669686372417369;
      break;
    case 2:
      result = OUTLINED_FUNCTION_318();
      break;
    case 3:
      result = OUTLINED_FUNCTION_223();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D844AD44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D844ABC8();
  *a1 = result;
  return result;
}

uint64_t sub_1D844AD70()
{
  sub_1D84669DC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844ADA8()
{
  sub_1D84669DC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844ADE0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_333_0();
    OUTLINED_FUNCTION_369();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D844AE44()
{
  OUTLINED_FUNCTION_392();
  if (v3 == 0x6C62616B63617274 && v1 == v2)
  {

    v5 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_333_0();
    OUTLINED_FUNCTION_369();
    v5 = v0 ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_1D844AEB8()
{
  sub_1D8466BD4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844AEF0()
{
  sub_1D8466BD4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844AF50()
{
  sub_1D8466B80();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844AF88()
{
  sub_1D8466B80();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844AFC0()
{
  sub_1D8466A30();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844AFF8()
{
  sub_1D8466A30();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844B074()
{
  sub_1D8466AD8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844B0AC()
{
  sub_1D8466AD8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ChallengeDefinitionFilter.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38A40, &qword_1D8590A80);
  v43 = OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_196();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38A48, &qword_1D8590A88);
  v42 = OUTLINED_FUNCTION_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_196();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38A50, &qword_1D8590A90);
  v14 = OUTLINED_FUNCTION_1(v13);
  v40 = v15;
  v41 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_129();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38A58, &qword_1D8590A98);
  OUTLINED_FUNCTION_1(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_160();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38A60, &unk_1D8590AA0);
  OUTLINED_FUNCTION_1(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_200();
  v44 = v0[1];
  v45 = *v0;
  v27 = *(v0 + 16);
  v28 = v4[4];
  OUTLINED_FUNCTION_260(v4, v4[3]);
  sub_1D84669DC();
  sub_1D8581BB8();
  switch(v27)
  {
    case 1:
      OUTLINED_FUNCTION_290();
      sub_1D8466B80();
      OUTLINED_FUNCTION_375();
      v37 = v41;
      sub_1D8581A18();
      v39 = *(v40 + 8);
      v38 = v2;
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_340();
      sub_1D8466AD8();
      OUTLINED_FUNCTION_375();
      sub_1D8466B2C();
      v37 = v42;
      sub_1D8581A58();
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_394();
      sub_1D8466A30();
      OUTLINED_FUNCTION_375();
      sub_1D8466A84();
      v37 = v43;
      sub_1D8581A58();
LABEL_5:
      v38 = OUTLINED_FUNCTION_212_0();
LABEL_7:
      v39(v38, v37);
      OUTLINED_FUNCTION_267();
      v34 = v1;
      v35 = v28;
      break;
    default:
      sub_1D8466BD4();
      OUTLINED_FUNCTION_234();
      sub_1D8581988();
      v29 = OUTLINED_FUNCTION_194();
      __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_231();
      sub_1D848211C(v31);
      OUTLINED_FUNCTION_277();
      sub_1D8581A58();
      v32 = OUTLINED_FUNCTION_275();
      v33(v32, v19);
      OUTLINED_FUNCTION_267();
      v34 = OUTLINED_FUNCTION_497();
      break;
  }

  v36(v34, v35);
  OUTLINED_FUNCTION_284_0();
}

void ChallengeDefinitionFilter.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  switch(*(v0 + 16))
  {
    case 1:
      OUTLINED_FUNCTION_447();
      sub_1D8581B78();
      break;
    case 2:
      MEMORY[0x1DA7191F0](2);
      if (v2)
      {
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_447();
      break;
    case 3:
      MEMORY[0x1DA7191F0](3);
      sub_1D846779C();
      goto LABEL_5;
    default:
LABEL_3:
      OUTLINED_FUNCTION_429();
      v3 = OUTLINED_FUNCTION_253();
      __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
      OUTLINED_FUNCTION_6();
      sub_1D848211C(v5);
      OUTLINED_FUNCTION_161();
LABEL_5:
      sub_1D85811E8();
      break;
  }
}

void ChallengeDefinitionFilter.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v75 = v3;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AA8, &qword_1D8590AB8);
  OUTLINED_FUNCTION_1(v73);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_196();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AB0, &qword_1D8590AC0);
  v74 = OUTLINED_FUNCTION_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_493(v11);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AB8, &qword_1D8590AC8);
  OUTLINED_FUNCTION_1(v76);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_250_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AC0, &qword_1D8590AD0);
  OUTLINED_FUNCTION_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_110();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AC8, &qword_1D8590AD8);
  OUTLINED_FUNCTION_1(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_251();
  v25 = v2[3];
  v26 = v2[4];
  v27 = OUTLINED_FUNCTION_368_0();
  OUTLINED_FUNCTION_260(v27, v28);
  sub_1D84669DC();
  OUTLINED_FUNCTION_458();
  if (!v0)
  {
    v29 = sub_1D8581968();
    sub_1D8440880(v29, 0);
    v31 = v30;
    if (v33 != v32 >> 1)
    {
      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_360();
      if (v38 == v39)
      {
        __break(1u);
        return;
      }

      v72 = *(v37 + v35);
      sub_1D84408DC(v35 + 1, v34, v31, v37, v35, v36);
      OUTLINED_FUNCTION_526();
      if (!v31)
      {
        switch(v72)
        {
          case 1:
            OUTLINED_FUNCTION_290();
            sub_1D8466B80();
            OUTLINED_FUNCTION_234();
            OUTLINED_FUNCTION_533();
            OUTLINED_FUNCTION_492();
            v67 = sub_1D8581918();
            swift_unknownObjectRelease();
            v68 = OUTLINED_FUNCTION_126();
            v69(v68);
            v70 = OUTLINED_FUNCTION_123_0();
            v71(v70);
            v61 = 0;
            v62 = v67 & 1;
            break;
          case 2:
            OUTLINED_FUNCTION_340();
            sub_1D8466AD8();
            OUTLINED_FUNCTION_234();
            OUTLINED_FUNCTION_533();
            sub_1D84738D0();
            OUTLINED_FUNCTION_274();
            OUTLINED_FUNCTION_492();
            sub_1D8581958();
            swift_unknownObjectRelease();
            v51 = OUTLINED_FUNCTION_211();
            v52(v51, v74);
            v53 = *(v21 + 8);
            v54 = OUTLINED_FUNCTION_258();
            v55(v54);
            goto LABEL_14;
          case 3:
            OUTLINED_FUNCTION_394();
            sub_1D8466A30();
            OUTLINED_FUNCTION_234();
            OUTLINED_FUNCTION_533();
            sub_1D847387C();
            OUTLINED_FUNCTION_274();
            OUTLINED_FUNCTION_492();
            sub_1D8581958();
            swift_unknownObjectRelease();
            v56 = OUTLINED_FUNCTION_211();
            v57(v56, v73);
            v58 = *(v21 + 8);
            v59 = OUTLINED_FUNCTION_258();
            v60(v59);
            v61 = 0;
            v62 = v77;
            break;
          default:
            LOBYTE(v77) = 0;
            sub_1D8466BD4();
            OUTLINED_FUNCTION_234();
            OUTLINED_FUNCTION_533();
            v48 = OUTLINED_FUNCTION_189();
            __swift_instantiateConcreteTypeFromMangledNameV2(v48, v49);
            OUTLINED_FUNCTION_2_0();
            sub_1D848211C(v50);
            OUTLINED_FUNCTION_259();
            sub_1D8581958();
            swift_unknownObjectRelease();
            v63 = OUTLINED_FUNCTION_362();
            v64(v63, v15);
            v65 = OUTLINED_FUNCTION_123_0();
            v66(v65);
LABEL_14:
            v62 = v77;
            v61 = v78;
            break;
        }

        *v75 = v62;
        *(v75 + 8) = v61;
        *(v75 + 16) = v72;
        __swift_destroy_boxed_opaque_existential_1(v2);
        goto LABEL_10;
      }
    }

    v40 = sub_1D85817C8();
    OUTLINED_FUNCTION_446();
    v42 = v41;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AD0, &qword_1D8590AE0) + 48);
    *v42 = &type metadata for ChallengeDefinitionFilter;
    sub_1D8581888();
    OUTLINED_FUNCTION_186();
    v44 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_206_0(v40);
    (*(v45 + 104))(v42);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_220_0();
    v46 = OUTLINED_FUNCTION_509();
    v47(v46);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_10:
  OUTLINED_FUNCTION_284_0();
}

uint64_t static ChallengeFilter.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_434(a1, a2);
  switch(v8)
  {
    case 1:
      if (v7 != 1)
      {
        goto LABEL_37;
      }

      v106 = OUTLINED_FUNCTION_133();
      sub_1D8473924(v106, v107, v108);
      v109 = OUTLINED_FUNCTION_138();
      sub_1D8473924(v109, v110, v111);
      v112 = OUTLINED_FUNCTION_138();
      sub_1D8473924(v112, v113, v114);
      v115 = OUTLINED_FUNCTION_133();
      v118 = sub_1D8473924(v115, v116, v117);
      v25 = OUTLINED_FUNCTION_145(v118, v119, v120, v121, &qword_1ECA38A78, &unk_1D85A22B0);
      v122 = OUTLINED_FUNCTION_138();
      sub_1D847393C(v122, v123, v124);
      v125 = OUTLINED_FUNCTION_133();
      sub_1D847393C(v125, v126, v127);
      v128 = OUTLINED_FUNCTION_133();
      sub_1D847393C(v128, v129, v130);
      v35 = OUTLINED_FUNCTION_138();
      goto LABEL_12;
    case 2:
      if (v7 != 2)
      {
        goto LABEL_37;
      }

      v56 = OUTLINED_FUNCTION_136();
      sub_1D8473924(v56, v57, v58);
      v59 = OUTLINED_FUNCTION_141();
      sub_1D8473924(v59, v60, v61);
      v62 = OUTLINED_FUNCTION_141();
      sub_1D8473924(v62, v63, v64);
      v65 = OUTLINED_FUNCTION_136();
      v68 = sub_1D8473924(v65, v66, v67);
      v25 = OUTLINED_FUNCTION_145(v68, v69, v70, v71, &qword_1ECA38B38, &qword_1D85981B0);
      v72 = OUTLINED_FUNCTION_141();
      sub_1D847393C(v72, v73, v74);
      v75 = OUTLINED_FUNCTION_136();
      sub_1D847393C(v75, v76, v77);
      v78 = OUTLINED_FUNCTION_136();
      sub_1D847393C(v78, v79, v80);
      v35 = OUTLINED_FUNCTION_141();
      goto LABEL_12;
    case 3:
      if (v7 != 3)
      {
        goto LABEL_37;
      }

      v81 = OUTLINED_FUNCTION_135();
      sub_1D8473924(v81, v82, v83);
      v84 = OUTLINED_FUNCTION_140();
      sub_1D8473924(v84, v85, v86);
      v87 = OUTLINED_FUNCTION_140();
      sub_1D8473924(v87, v88, v89);
      v90 = OUTLINED_FUNCTION_135();
      v93 = sub_1D8473924(v90, v91, v92);
      v25 = OUTLINED_FUNCTION_145(v93, v94, v95, v96, &qword_1ECA389B8, &qword_1D8590B30);
      v97 = OUTLINED_FUNCTION_140();
      sub_1D847393C(v97, v98, v99);
      v100 = OUTLINED_FUNCTION_135();
      sub_1D847393C(v100, v101, v102);
      v103 = OUTLINED_FUNCTION_135();
      sub_1D847393C(v103, v104, v105);
      v35 = OUTLINED_FUNCTION_140();
      goto LABEL_12;
    case 4:
      if (v7 != 4)
      {
        goto LABEL_37;
      }

      v38 = OUTLINED_FUNCTION_183();
      sub_1D8473924(v38, v39, 4u);
      v40 = OUTLINED_FUNCTION_151();
      sub_1D8473924(v40, v41, 4u);
      v42 = OUTLINED_FUNCTION_151();
      sub_1D8473924(v42, v43, 4u);
      v44 = OUTLINED_FUNCTION_183();
      v46 = sub_1D8473924(v44, v45, 4u);
      v25 = OUTLINED_FUNCTION_145(v46, v47, v48, v49, &qword_1ECA389B8, &qword_1D8590B30);
      v50 = OUTLINED_FUNCTION_151();
      sub_1D847393C(v50, v51, 4u);
      v52 = OUTLINED_FUNCTION_183();
      sub_1D847393C(v52, v53, 4u);
      v54 = OUTLINED_FUNCTION_183();
      sub_1D847393C(v54, v55, 4u);
      v35 = OUTLINED_FUNCTION_151();
      v37 = 4;
      goto LABEL_12;
    case 5:
      if (!(v3 | v2))
      {
        if (v7 != 5 || (v4 | v5) != 0)
        {
          goto LABEL_37;
        }

        v136 = OUTLINED_FUNCTION_151();
        sub_1D847393C(v136, v137, 5u);
        v138 = 0;
LABEL_40:
        sub_1D847393C(v138, 0, 5u);
        v25 = 1;
        return v25 & 1;
      }

      if (v3 ^ 1 | v2)
      {
        if (v7 != 5 || v5 != 2 || v4 != 0)
        {
          goto LABEL_37;
        }

        v150 = OUTLINED_FUNCTION_151();
        sub_1D847393C(v150, v151, 5u);
        v138 = 2;
        goto LABEL_40;
      }

      if (v7 != 5 || v5 != 1 || v4 != 0)
      {
LABEL_37:
        v141 = OUTLINED_FUNCTION_151();
        sub_1D8473924(v141, v142, v6);
        v143 = OUTLINED_FUNCTION_183();
        sub_1D8473924(v143, v144, v7);
        v145 = OUTLINED_FUNCTION_151();
        sub_1D847393C(v145, v146, v6);
        v147 = OUTLINED_FUNCTION_183();
        sub_1D847393C(v147, v148, v7);
        v25 = 0;
        return v25 & 1;
      }

      v133 = OUTLINED_FUNCTION_151();
      sub_1D847393C(v133, v134, 5u);
      v25 = 1;
      v35 = 1;
      v36 = 0;
      v37 = 5;
LABEL_12:
      sub_1D847393C(v35, v36, v37);
      return v25 & 1;
    default:
      if (v7)
      {
        goto LABEL_37;
      }

      v9 = OUTLINED_FUNCTION_134();
      sub_1D8473924(v9, v10, v11);
      v12 = OUTLINED_FUNCTION_139();
      sub_1D8473924(v12, v13, v14);
      v15 = OUTLINED_FUNCTION_139();
      sub_1D8473924(v15, v16, v17);
      v18 = OUTLINED_FUNCTION_134();
      v21 = sub_1D8473924(v18, v19, v20);
      v25 = OUTLINED_FUNCTION_145(v21, v22, v23, v24, &qword_1ECA38B48, &qword_1D8590B40);
      v26 = OUTLINED_FUNCTION_139();
      sub_1D847393C(v26, v27, v28);
      v29 = OUTLINED_FUNCTION_134();
      sub_1D847393C(v29, v30, v31);
      v32 = OUTLINED_FUNCTION_134();
      sub_1D847393C(v32, v33, v34);
      v35 = OUTLINED_FUNCTION_139();
      goto LABEL_12;
  }
}

uint64_t sub_1D844C198()
{
  OUTLINED_FUNCTION_263_0();
  OUTLINED_FUNCTION_392();
  v4 = v1 == OUTLINED_FUNCTION_58() && v2 == v3;
  if (v4 || (OUTLINED_FUNCTION_143() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = v1 == OUTLINED_FUNCTION_237() && v0 == v6;
    if (v7 || (OUTLINED_FUNCTION_7() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = v1 == 1701667175 && v0 == 0xE400000000000000;
      if (v8 || (OUTLINED_FUNCTION_7() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = v1 == OUTLINED_FUNCTION_172() && v0 == 0xE700000000000000;
        if (v9 || (OUTLINED_FUNCTION_7() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = v1 == OUTLINED_FUNCTION_474() && v0 == v10;
          if (v11 || (OUTLINED_FUNCTION_7() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v12 = v1 == 0x657669746361 && v0 == 0xE600000000000000;
            if (v12 || (OUTLINED_FUNCTION_7() & 1) != 0)
            {

              return 5;
            }

            else
            {
              OUTLINED_FUNCTION_433();
              v13 = v4 && v0 == 0xE800000000000000;
              if (v13 || (OUTLINED_FUNCTION_7() & 1) != 0)
              {

                return 6;
              }

              else if (v1 == 7237495 && v0 == 0xE300000000000000)
              {

                return 7;
              }

              else
              {
                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_369();
                if (v1)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D844C360()
{
  result = OUTLINED_FUNCTION_58();
  switch(v1)
  {
    case 1:
      result = OUTLINED_FUNCTION_237();
      break;
    case 2:
      result = OUTLINED_FUNCTION_384();
      break;
    case 3:
      result = OUTLINED_FUNCTION_172();
      break;
    case 4:
      result = OUTLINED_FUNCTION_474();
      break;
    case 5:
      result = 0x657669746361;
      break;
    case 6:
      result = OUTLINED_FUNCTION_345();
      break;
    case 7:
      result = 7237495;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D844C458()
{
  sub_1D8473A50();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844C490()
{
  sub_1D8473A50();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844C4C8()
{
  sub_1D8473BF4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844C500()
{
  sub_1D8473BF4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844C540@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D844C198();
  *a1 = result;
  return result;
}

uint64_t sub_1D844C570()
{
  sub_1D8473954();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844C5A8()
{
  sub_1D8473954();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844C5E0()
{
  sub_1D84739FC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844C618()
{
  sub_1D84739FC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844C650()
{
  sub_1D8473AF8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844C688()
{
  sub_1D8473AF8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844C6C0()
{
  sub_1D8473BA0();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844C6F8()
{
  sub_1D8473BA0();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844C780()
{
  sub_1D8473B4C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844C7B8()
{
  sub_1D8473B4C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844C7F0()
{
  sub_1D8473AA4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844C828()
{
  sub_1D8473AA4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844C860@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = j__swift_bridgeObjectRelease(a1);
  *a2 = 1;
  return result;
}

uint64_t sub_1D844C890()
{
  sub_1D84739A8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844C8C8()
{
  sub_1D84739A8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ChallengeFilter.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_285();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AF0, &qword_1D8590AE8);
  v29 = OUTLINED_FUNCTION_1(v28);
  v116 = v30;
  v117 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_196();
  v115 = v34;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AF8, &qword_1D8590AF0);
  OUTLINED_FUNCTION_1(v114);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_196();
  v113 = v38;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B00, &qword_1D8590AF8);
  OUTLINED_FUNCTION_1(v112);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_196();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B08, &qword_1D8590B00);
  v43 = OUTLINED_FUNCTION_1(v42);
  v127 = v44;
  v128 = v43;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_196();
  v126 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B10, &qword_1D8590B08);
  v50 = OUTLINED_FUNCTION_1(v49);
  v124 = v51;
  v125 = v50;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_196();
  v123 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B18, &qword_1D8590B10);
  v57 = OUTLINED_FUNCTION_1(v56);
  v121 = v58;
  v122 = v57;
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_196();
  v120 = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B20, &qword_1D8590B18);
  v64 = OUTLINED_FUNCTION_1(v63);
  v118 = v65;
  v119 = v64;
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_129();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B28, &qword_1D8590B20);
  OUTLINED_FUNCTION_1(v69);
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_200();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B30, &qword_1D8590B28);
  v130 = OUTLINED_FUNCTION_1(v73);
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_199();
  v129 = *v20;
  v77 = *(v20 + 16);
  v78 = *(v27 + 24);
  v79 = *(v27 + 32);
  v80 = OUTLINED_FUNCTION_367();
  OUTLINED_FUNCTION_260(v80, v81);
  sub_1D8473954();
  sub_1D8581BB8();
  switch(v77)
  {
    case 1:
      sub_1D8473BA0();
      OUTLINED_FUNCTION_179();
      OUTLINED_FUNCTION_432();
      v101 = OUTLINED_FUNCTION_194();
      __swift_instantiateConcreteTypeFromMangledNameV2(v101, v102);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_231();
      sub_1D848211C(v103);
      OUTLINED_FUNCTION_437();
      v93 = v119;
      OUTLINED_FUNCTION_287();
      v94 = v118;
      goto LABEL_7;
    case 2:
      sub_1D8473B4C();
      v22 = v120;
      OUTLINED_FUNCTION_179();
      OUTLINED_FUNCTION_432();
      v95 = OUTLINED_FUNCTION_194();
      __swift_instantiateConcreteTypeFromMangledNameV2(v95, v96);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_231();
      sub_1D848211C(v97);
      OUTLINED_FUNCTION_437();
      v93 = v122;
      OUTLINED_FUNCTION_287();
      v94 = v121;
      goto LABEL_7;
    case 3:
      sub_1D8473AF8();
      v22 = v123;
      OUTLINED_FUNCTION_179();
      OUTLINED_FUNCTION_432();
      v98 = OUTLINED_FUNCTION_194();
      __swift_instantiateConcreteTypeFromMangledNameV2(v98, v99);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_231();
      sub_1D848211C(v100);
      OUTLINED_FUNCTION_437();
      v93 = v125;
      OUTLINED_FUNCTION_287();
      v94 = v124;
      goto LABEL_7;
    case 4:
      sub_1D8473AA4();
      v22 = v126;
      OUTLINED_FUNCTION_179();
      OUTLINED_FUNCTION_432();
      v90 = OUTLINED_FUNCTION_194();
      __swift_instantiateConcreteTypeFromMangledNameV2(v90, v91);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_231();
      sub_1D848211C(v92);
      OUTLINED_FUNCTION_437();
      v93 = v128;
      OUTLINED_FUNCTION_287();
      v94 = v127;
LABEL_7:
      (*(v94 + 8))(v22, v93);
      v88 = OUTLINED_FUNCTION_212_0();
      v89 = v21;
      goto LABEL_8;
    case 5:
      if (v129 == 0)
      {
        sub_1D8473A50();
        v104 = v130;
        OUTLINED_FUNCTION_274();
        sub_1D8581988();
        v108 = OUTLINED_FUNCTION_276();
        v109(v108, v112);
        OUTLINED_FUNCTION_267();
        v111 = v23;
      }

      else
      {
        v104 = v130;
        if (v129 ^ 1 | *(&v129 + 1))
        {
          sub_1D84739A8();
          OUTLINED_FUNCTION_274();
          sub_1D8581988();
          v107 = v117;
          v105 = *(v116 + 8);
          v106 = v115;
        }

        else
        {
          sub_1D84739FC();
          OUTLINED_FUNCTION_274();
          sub_1D8581988();
          OUTLINED_FUNCTION_336(&a17);
          v106 = v113;
          v107 = v114;
        }

        v105(v106, v107);
        OUTLINED_FUNCTION_267();
        v111 = v23;
      }

      v110(v111, v104);
      goto LABEL_9;
    default:
      sub_1D8473BF4();
      sub_1D8581988();
      OUTLINED_FUNCTION_432();
      v82 = OUTLINED_FUNCTION_194();
      __swift_instantiateConcreteTypeFromMangledNameV2(v82, v83);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_231();
      sub_1D848211C(v84);
      OUTLINED_FUNCTION_437();
      sub_1D8581A58();
      v85 = OUTLINED_FUNCTION_276();
      v86(v85, v69);
      OUTLINED_FUNCTION_267();
      v88 = v23;
      v89 = v130;
LABEL_8:
      v87(v88, v89);
LABEL_9:
      OUTLINED_FUNCTION_435();
      OUTLINED_FUNCTION_284_0();
      return;
  }
}

uint64_t ChallengeFilter.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  switch(*(v0 + 16))
  {
    case 1:
      OUTLINED_FUNCTION_447();
      v10 = OUTLINED_FUNCTION_253();
      __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
      goto LABEL_8;
    case 2:
      MEMORY[0x1DA7191F0](2);
      v6 = OUTLINED_FUNCTION_253();
      __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
      goto LABEL_8;
    case 3:
      v5 = 3;
      goto LABEL_6;
    case 4:
      v5 = 4;
LABEL_6:
      MEMORY[0x1DA7191F0](v5);
      v8 = OUTLINED_FUNCTION_253();
      __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
      goto LABEL_8;
    case 5:
      if (v2 | v1)
      {
        if (v2 ^ 1 | v1)
        {
          v14 = 7;
        }

        else
        {
          v14 = 6;
        }
      }

      else
      {
        v14 = 5;
      }

      return MEMORY[0x1DA7191F0](v14);
    default:
      OUTLINED_FUNCTION_429();
      v3 = OUTLINED_FUNCTION_253();
      __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
LABEL_8:
      OUTLINED_FUNCTION_6();
      sub_1D848211C(v12);
      OUTLINED_FUNCTION_161();
      return sub_1D85811E8();
  }
}

void ChallengeFilter.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_285();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v142 = v25;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B68, &qword_1D8590B48);
  OUTLINED_FUNCTION_1(v143);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_196();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B70, &qword_1D8590B50);
  OUTLINED_FUNCTION_1(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_196();
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B78, &qword_1D8590B58);
  OUTLINED_FUNCTION_1(v140);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_196();
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B80, &qword_1D8590B60);
  OUTLINED_FUNCTION_1(v141);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_196();
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B88, &qword_1D8590B68);
  OUTLINED_FUNCTION_1(v139);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_196();
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B90, &qword_1D8590B70);
  OUTLINED_FUNCTION_1(v138);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_196();
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B98, &qword_1D8590B78);
  OUTLINED_FUNCTION_1(v137);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_160();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38BA0, &qword_1D8590B80);
  OUTLINED_FUNCTION_1(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_110();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38BA8, &qword_1D8590B88);
  OUTLINED_FUNCTION_1(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_128();
  v57 = v24[3];
  v56 = v24[4];
  v144 = v24;
  v58 = OUTLINED_FUNCTION_325();
  OUTLINED_FUNCTION_260(v58, v59);
  sub_1D8473954();
  OUTLINED_FUNCTION_390();
  sub_1D8581BA8();
  if (!v20)
  {
    v60 = sub_1D8581968();
    sub_1D8440880(v60, 0);
    v62 = v61;
    if (v64 != v63 >> 1)
    {
      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_360();
      if (v69 == v70)
      {
        __break(1u);
        return;
      }

      v71 = *(v68 + v66);
      sub_1D84408DC(v66 + 1, v65, v62, v68, v66, v67);
      v73 = v72;
      v75 = v74;
      swift_unknownObjectRelease();
      if (v73 == v75 >> 1)
      {
        switch(v71)
        {
          case 1:
            LOBYTE(v145) = 1;
            sub_1D8473BA0();
            OUTLINED_FUNCTION_86();
            sub_1D8581878();
            v102 = OUTLINED_FUNCTION_194();
            __swift_instantiateConcreteTypeFromMangledNameV2(v102, v103);
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_231();
            sub_1D848211C(v104);
            sub_1D8581958();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_336(&a16);
            v133 = OUTLINED_FUNCTION_291();
            v134(v133);
            v135 = OUTLINED_FUNCTION_47();
            v136(v135);
            v131 = v145;
            v132 = v146;
            v130 = 1;
            goto LABEL_20;
          case 2:
            v88 = v142;
            LOBYTE(v145) = 2;
            sub_1D8473B4C();
            OUTLINED_FUNCTION_86();
            sub_1D8581878();
            v92 = OUTLINED_FUNCTION_194();
            __swift_instantiateConcreteTypeFromMangledNameV2(v92, v93);
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_231();
            sub_1D848211C(v94);
            OUTLINED_FUNCTION_313();
            sub_1D8581958();
            OUTLINED_FUNCTION_301();
            swift_unknownObjectRelease();
            v118 = OUTLINED_FUNCTION_85();
            v119(v118);
            v120 = OUTLINED_FUNCTION_165_0();
            v121(v120);
            v131 = v145;
            v132 = v146;
            v130 = 2;
            goto LABEL_19;
          case 3:
            v88 = v142;
            LOBYTE(v145) = 3;
            sub_1D8473AF8();
            OUTLINED_FUNCTION_86();
            sub_1D8581878();
            v95 = OUTLINED_FUNCTION_194();
            __swift_instantiateConcreteTypeFromMangledNameV2(v95, v96);
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_231();
            sub_1D848211C(v97);
            OUTLINED_FUNCTION_313();
            sub_1D8581958();
            OUTLINED_FUNCTION_301();
            swift_unknownObjectRelease();
            v122 = OUTLINED_FUNCTION_85();
            v123(v122);
            v124 = OUTLINED_FUNCTION_165_0();
            v125(v124);
            v131 = v145;
            v132 = v146;
            v130 = 3;
            goto LABEL_19;
          case 4:
            v88 = v142;
            LOBYTE(v145) = 4;
            sub_1D8473AA4();
            OUTLINED_FUNCTION_86();
            sub_1D8581878();
            v89 = OUTLINED_FUNCTION_194();
            __swift_instantiateConcreteTypeFromMangledNameV2(v89, v90);
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_231();
            sub_1D848211C(v91);
            OUTLINED_FUNCTION_313();
            sub_1D8581958();
            OUTLINED_FUNCTION_301();
            swift_unknownObjectRelease();
            v114 = OUTLINED_FUNCTION_85();
            v115(v114);
            v116 = OUTLINED_FUNCTION_165_0();
            v117(v116);
            v131 = v145;
            v132 = v146;
            v130 = 4;
LABEL_19:
            v87 = v144;
            v105 = v88;
            goto LABEL_21;
          case 5:
            v105 = v142;
            sub_1D8473A50();
            OUTLINED_FUNCTION_86();
            sub_1D8581878();
            swift_unknownObjectRelease();
            v106 = OUTLINED_FUNCTION_275();
            v107(v106, v140);
            v108 = OUTLINED_FUNCTION_47();
            v109(v108);
            v131 = 0;
            v132 = 0;
            v130 = 5;
            goto LABEL_18;
          case 6:
            v105 = v142;
            sub_1D84739FC();
            OUTLINED_FUNCTION_86();
            sub_1D8581878();
            swift_unknownObjectRelease();
            v110 = OUTLINED_FUNCTION_362();
            v111(v110);
            v112 = OUTLINED_FUNCTION_47();
            v113(v112);
            v132 = 0;
            v130 = 5;
            v131 = 1;
LABEL_18:
            v87 = v144;
            goto LABEL_21;
          case 7:
            sub_1D84739A8();
            OUTLINED_FUNCTION_86();
            sub_1D8581878();
            swift_unknownObjectRelease();
            v98 = OUTLINED_FUNCTION_275();
            v99(v98, v143);
            v100 = OUTLINED_FUNCTION_47();
            v101(v100);
            v132 = 0;
            v130 = 5;
            v131 = 2;
            goto LABEL_20;
          default:
            LOBYTE(v145) = 0;
            sub_1D8473BF4();
            OUTLINED_FUNCTION_86();
            sub_1D8581878();
            v76 = OUTLINED_FUNCTION_194();
            __swift_instantiateConcreteTypeFromMangledNameV2(v76, v77);
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_231();
            sub_1D848211C(v78);
            OUTLINED_FUNCTION_313();
            sub_1D8581958();
            OUTLINED_FUNCTION_301();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_336(&a15);
            v126 = OUTLINED_FUNCTION_305();
            v127(v126);
            v128 = OUTLINED_FUNCTION_165_0();
            v129(v128);
            v130 = 0;
            v131 = v145;
            v132 = v146;
LABEL_20:
            v87 = v144;
            v105 = v142;
LABEL_21:
            *v105 = v131;
            *(v105 + 8) = v132;
            *(v105 + 16) = v130;
            break;
        }

        goto LABEL_10;
      }
    }

    v79 = sub_1D85817C8();
    OUTLINED_FUNCTION_446();
    v81 = v80;
    v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AD0, &qword_1D8590AE0) + 48);
    *v81 = &type metadata for ChallengeFilter;
    sub_1D8581888();
    OUTLINED_FUNCTION_186();
    v83 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_206_0(v79);
    (*(v84 + 104))(v81);
    swift_willThrow();
    swift_unknownObjectRelease();
    v85 = OUTLINED_FUNCTION_47();
    v86(v85);
  }

  v87 = v144;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v87);
  OUTLINED_FUNCTION_284_0();
}

uint64_t static ChallengeInviteFilter.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_434(a1, a2);
  switch(v4)
  {
    case 1:
      if (v3 != 1)
      {
        goto LABEL_11;
      }

      v84 = OUTLINED_FUNCTION_133();
      sub_1D8473C48(v84, v85, v86);
      v87 = OUTLINED_FUNCTION_138();
      sub_1D8473C48(v87, v88, v89);
      v90 = OUTLINED_FUNCTION_138();
      sub_1D8473C48(v90, v91, v92);
      v93 = OUTLINED_FUNCTION_133();
      v96 = sub_1D8473C48(v93, v94, v95);
      v21 = OUTLINED_FUNCTION_145(v96, v97, v98, v99, &qword_1ECA38B38, &qword_1D85981B0);
      v100 = OUTLINED_FUNCTION_138();
      sub_1D8473C60(v100, v101, v102);
      v103 = OUTLINED_FUNCTION_133();
      sub_1D8473C60(v103, v104, v105);
      v106 = OUTLINED_FUNCTION_133();
      sub_1D8473C60(v106, v107, v108);
      v31 = OUTLINED_FUNCTION_138();
      goto LABEL_10;
    case 2:
      if (v3 != 2)
      {
        goto LABEL_11;
      }

      v34 = OUTLINED_FUNCTION_136();
      sub_1D8473C48(v34, v35, v36);
      v37 = OUTLINED_FUNCTION_141();
      sub_1D8473C48(v37, v38, v39);
      v40 = OUTLINED_FUNCTION_141();
      sub_1D8473C48(v40, v41, v42);
      v43 = OUTLINED_FUNCTION_136();
      v46 = sub_1D8473C48(v43, v44, v45);
      v21 = OUTLINED_FUNCTION_145(v46, v47, v48, v49, &qword_1ECA389B8, &qword_1D8590B30);
      v50 = OUTLINED_FUNCTION_141();
      sub_1D8473C60(v50, v51, v52);
      v53 = OUTLINED_FUNCTION_136();
      sub_1D8473C60(v53, v54, v55);
      v56 = OUTLINED_FUNCTION_136();
      sub_1D8473C60(v56, v57, v58);
      v31 = OUTLINED_FUNCTION_141();
      goto LABEL_10;
    case 3:
      if (v3 != 3)
      {
        goto LABEL_11;
      }

      v59 = OUTLINED_FUNCTION_135();
      sub_1D8473C48(v59, v60, v61);
      v62 = OUTLINED_FUNCTION_140();
      sub_1D8473C48(v62, v63, v64);
      v65 = OUTLINED_FUNCTION_140();
      sub_1D8473C48(v65, v66, v67);
      v68 = OUTLINED_FUNCTION_135();
      v71 = sub_1D8473C48(v68, v69, v70);
      v21 = OUTLINED_FUNCTION_145(v71, v72, v73, v74, &qword_1ECA389B8, &qword_1D8590B30);
      v75 = OUTLINED_FUNCTION_140();
      sub_1D8473C60(v75, v76, v77);
      v78 = OUTLINED_FUNCTION_135();
      sub_1D8473C60(v78, v79, v80);
      v81 = OUTLINED_FUNCTION_135();
      sub_1D8473C60(v81, v82, v83);
      v31 = OUTLINED_FUNCTION_140();
      goto LABEL_10;
    default:
      if (v3)
      {
LABEL_11:
        v109 = OUTLINED_FUNCTION_151();
        sub_1D8473C48(v109, v110, v2);
        v111 = OUTLINED_FUNCTION_183();
        sub_1D8473C48(v111, v112, v3);
        v113 = OUTLINED_FUNCTION_151();
        sub_1D8473C60(v113, v114, v2);
        v115 = OUTLINED_FUNCTION_183();
        sub_1D8473C60(v115, v116, v3);
        v21 = 0;
      }

      else
      {
        v5 = OUTLINED_FUNCTION_134();
        sub_1D8473C48(v5, v6, v7);
        v8 = OUTLINED_FUNCTION_139();
        sub_1D8473C48(v8, v9, v10);
        v11 = OUTLINED_FUNCTION_139();
        sub_1D8473C48(v11, v12, v13);
        v14 = OUTLINED_FUNCTION_134();
        v17 = sub_1D8473C48(v14, v15, v16);
        v21 = OUTLINED_FUNCTION_145(v17, v18, v19, v20, &qword_1ECA38B48, &qword_1D8590B40);
        v22 = OUTLINED_FUNCTION_139();
        sub_1D8473C60(v22, v23, v24);
        v25 = OUTLINED_FUNCTION_134();
        sub_1D8473C60(v25, v26, v27);
        v28 = OUTLINED_FUNCTION_134();
        sub_1D8473C60(v28, v29, v30);
        v31 = OUTLINED_FUNCTION_139();
LABEL_10:
        sub_1D8473C60(v31, v32, v33);
      }

      return v21 & 1;
  }
}

uint64_t sub_1D844E148()
{
  OUTLINED_FUNCTION_263_0();
  OUTLINED_FUNCTION_392();
  v4 = v1 == OUTLINED_FUNCTION_58() && v2 == v3;
  if (v4 || (OUTLINED_FUNCTION_143() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = v1 == 1701667175 && v0 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_7() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = v1 == 1836020326 && v0 == 0xE400000000000000;
      if (v7 || (OUTLINED_FUNCTION_7() & 1) != 0)
      {

        return 2;
      }

      else if (v1 == 28532 && v0 == 0xE200000000000000)
      {

        return 3;
      }

      else
      {
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_369();
        if (v1)
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

uint64_t sub_1D844E258()
{
  result = OUTLINED_FUNCTION_58();
  switch(v1)
  {
    case 1:
      result = OUTLINED_FUNCTION_384();
      break;
    case 2:
      result = OUTLINED_FUNCTION_385();
      break;
    case 3:
      result = 28532;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D844E2B0()
{
  sub_1D8473DC8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844E2E8()
{
  sub_1D8473DC8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844E328@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D844E148();
  *a1 = result;
  return result;
}

uint64_t sub_1D844E358()
{
  sub_1D8473C78();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844E390()
{
  sub_1D8473C78();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844E3C8()
{
  sub_1D8473D20();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844E400()
{
  sub_1D8473D20();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844E438()
{
  sub_1D8473D74();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844E470()
{
  sub_1D8473D74();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844E4A8()
{
  sub_1D8473CCC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844E4E0()
{
  sub_1D8473CCC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ChallengeInviteFilter.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38BC0, &qword_1D8590B90);
  v54 = OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_196();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38BC8, &qword_1D8590B98);
  v53 = OUTLINED_FUNCTION_1(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_196();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38BD0, &qword_1D8590BA0);
  OUTLINED_FUNCTION_1(v12);
  v52 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_251();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38BD8, &qword_1D8590BA8);
  v51 = OUTLINED_FUNCTION_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_160();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38BE0, &qword_1D8590BB0);
  OUTLINED_FUNCTION_1(v57);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_200();
  v55 = *v0;
  v56 = v0[1];
  v26 = *(v0 + 16);
  v27 = v3[4];
  OUTLINED_FUNCTION_260(v3, v3[3]);
  sub_1D8473C78();
  sub_1D8581BB8();
  v28 = (v22 + 8);
  switch(v26)
  {
    case 1:
      OUTLINED_FUNCTION_290();
      sub_1D8473D74();
      sub_1D8581988();
      OUTLINED_FUNCTION_485();
      v45 = OUTLINED_FUNCTION_189();
      __swift_instantiateConcreteTypeFromMangledNameV2(v45, v46);
      OUTLINED_FUNCTION_1_1();
      sub_1D848211C(v47);
      OUTLINED_FUNCTION_277();
      sub_1D8581A58();
      v48 = *(v52 + 8);
      v49 = OUTLINED_FUNCTION_7_0();
      v50(v49);
      v44 = *v28;
      v42 = v1;
      v43 = v57;
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_340();
      sub_1D8473D20();
      OUTLINED_FUNCTION_312();
      OUTLINED_FUNCTION_485();
      v33 = OUTLINED_FUNCTION_194();
      __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_231();
      sub_1D848211C(v35);
      OUTLINED_FUNCTION_277();
      v32 = v53;
      OUTLINED_FUNCTION_374();
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_394();
      sub_1D8473CCC();
      OUTLINED_FUNCTION_312();
      OUTLINED_FUNCTION_485();
      v36 = OUTLINED_FUNCTION_194();
      __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_231();
      sub_1D848211C(v38);
      OUTLINED_FUNCTION_277();
      v32 = v54;
      OUTLINED_FUNCTION_374();
      goto LABEL_5;
    default:
      sub_1D8473DC8();
      OUTLINED_FUNCTION_312();
      OUTLINED_FUNCTION_485();
      v29 = OUTLINED_FUNCTION_194();
      __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_231();
      sub_1D848211C(v31);
      OUTLINED_FUNCTION_277();
      v32 = v51;
      OUTLINED_FUNCTION_374();
LABEL_5:
      v39 = OUTLINED_FUNCTION_275();
      v40(v39, v32);
      v41 = *v28;
      v42 = OUTLINED_FUNCTION_221();
LABEL_7:
      v44(v42, v43);
      OUTLINED_FUNCTION_284_0();
      return;
  }
}

uint64_t ChallengeInviteFilter.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  switch(*(v0 + 16))
  {
    case 1:
      OUTLINED_FUNCTION_447();
      v8 = OUTLINED_FUNCTION_253();
      __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
      break;
    case 2:
      v5 = 2;
      goto LABEL_5;
    case 3:
      v5 = 3;
LABEL_5:
      MEMORY[0x1DA7191F0](v5);
      v6 = OUTLINED_FUNCTION_253();
      __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
      break;
    default:
      OUTLINED_FUNCTION_429();
      v3 = OUTLINED_FUNCTION_253();
      __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
      break;
  }

  OUTLINED_FUNCTION_6();
  sub_1D848211C(v10);
  OUTLINED_FUNCTION_161();
  return sub_1D85811E8();
}

uint64_t sub_1D844EAFC(void (*a1)(_BYTE *))
{
  v3 = *(v1 + 16);
  v6 = *v1;
  v7 = v3;
  OUTLINED_FUNCTION_379();
  a1(v5);
  return sub_1D8581B98();
}

void ChallengeInviteFilter.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v76 = v4;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38BE8, &qword_1D8590BB8);
  OUTLINED_FUNCTION_1(v78);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_493(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38BF0, &qword_1D8590BC0);
  v75 = OUTLINED_FUNCTION_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_196();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38BF8, &qword_1D8590BC8);
  OUTLINED_FUNCTION_1(v77);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_199();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C00, &qword_1D8590BD0);
  OUTLINED_FUNCTION_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_250_0();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C08, &qword_1D8590BD8);
  OUTLINED_FUNCTION_1(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_251();
  v26 = v3[3];
  v27 = v3[4];
  v79 = v3;
  v28 = OUTLINED_FUNCTION_368_0();
  OUTLINED_FUNCTION_260(v28, v29);
  sub_1D8473C78();
  OUTLINED_FUNCTION_458();
  if (!v1)
  {
    v30 = v0;
    v31 = sub_1D8581968();
    sub_1D8440880(v31, 0);
    v33 = v32;
    if (v35 != v34 >> 1)
    {
      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_360();
      if (v40 == v41)
      {
        __break(1u);
        return;
      }

      v42 = *(v39 + v37);
      sub_1D84408DC(v37 + 1, v36, v33, v39, v37, v38);
      OUTLINED_FUNCTION_526();
      if (!v33)
      {
        v43 = v42;
        switch(v42)
        {
          case 1:
            OUTLINED_FUNCTION_290();
            sub_1D8473D74();
            OUTLINED_FUNCTION_86();
            sub_1D8581878();
            v56 = OUTLINED_FUNCTION_189();
            __swift_instantiateConcreteTypeFromMangledNameV2(v56, v57);
            OUTLINED_FUNCTION_2_0();
            sub_1D848211C(v58);
            OUTLINED_FUNCTION_259();
            OUTLINED_FUNCTION_492();
            sub_1D8581958();
            swift_unknownObjectRelease();
            v71 = OUTLINED_FUNCTION_126();
            v72(v71);
            OUTLINED_FUNCTION_220_0();
            v73 = OUTLINED_FUNCTION_497();
            v74(v73);
            goto LABEL_15;
          case 2:
            OUTLINED_FUNCTION_340();
            sub_1D8473D20();
            OUTLINED_FUNCTION_86();
            sub_1D8581878();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
            OUTLINED_FUNCTION_3();
            sub_1D848211C(v51);
            OUTLINED_FUNCTION_259();
            v52 = v75;
            sub_1D8581958();
            v53 = v22;
            swift_unknownObjectRelease();
            v59 = OUTLINED_FUNCTION_276();
            goto LABEL_14;
          case 3:
            OUTLINED_FUNCTION_394();
            sub_1D8473CCC();
            OUTLINED_FUNCTION_86();
            sub_1D8581878();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
            OUTLINED_FUNCTION_3();
            sub_1D848211C(v54);
            OUTLINED_FUNCTION_259();
            v52 = v78;
            OUTLINED_FUNCTION_436();
            sub_1D8581958();
            v53 = v22;
            swift_unknownObjectRelease();
            v59 = OUTLINED_FUNCTION_211();
LABEL_14:
            v60(v59, v52);
            v61 = *(v53 + 8);
            v62 = OUTLINED_FUNCTION_165_0();
            v63(v62);
LABEL_15:
            v68 = v80;
            v69 = v81;
            v70 = v79;
            break;
          default:
            LOBYTE(v80) = 0;
            sub_1D8473DC8();
            OUTLINED_FUNCTION_86();
            sub_1D8581878();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B48, &qword_1D8590B40);
            OUTLINED_FUNCTION_3();
            sub_1D848211C(v55);
            OUTLINED_FUNCTION_259();
            OUTLINED_FUNCTION_236_0();
            sub_1D8581958();
            swift_unknownObjectRelease();
            v64 = OUTLINED_FUNCTION_126();
            v65(v64);
            v66 = OUTLINED_FUNCTION_47();
            v67(v66);
            v68 = v80;
            v69 = v81;
            v70 = v79;
            v43 = v42;
            break;
        }

        *v76 = v68;
        *(v76 + 8) = v69;
        *(v76 + 16) = v43;
        __swift_destroy_boxed_opaque_existential_1(v70);
        goto LABEL_10;
      }
    }

    v44 = sub_1D85817C8();
    OUTLINED_FUNCTION_446();
    v46 = v45;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AD0, &qword_1D8590AE0) + 48);
    *v46 = &type metadata for ChallengeInviteFilter;
    sub_1D8581888();
    OUTLINED_FUNCTION_186();
    v48 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_206_0(v44);
    (*(v49 + 104))(v46);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_220_0();
    v50(v30, v20);
  }

  __swift_destroy_boxed_opaque_existential_1(v79);
LABEL_10:
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D844F3E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  v6 = *(v4 + 16);
  v9 = *v4;
  v10 = v6;
  sub_1D8581B58();
  a4(v8);
  return sub_1D8581B98();
}

void *static $DistributedChallengeServiceProtocol.resolve(id:using:)(void *a1, uint64_t a2)
{
  type metadata accessor for $DistributedChallengeServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_43();
  sub_1D8473E40(v5);
  OUTLINED_FUNCTION_5_2();
  sub_1D8473E40(v6);
  v7 = sub_1D8580F48();
  v8 = v7;
  if (!v2 && !v7)
  {
    v8 = swift_distributedActor_remote_initialize();
    v9 = a1[1];
    v8[14] = *a1;
    v8[15] = v9;
    v8[16] = a2;
  }

  return v8;
}

uint64_t $DistributedChallengeServiceProtocol.deinit()
{
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_43();
  sub_1D8473E40(v1);
  sub_1D8580F68();
  v2 = *(v0 + 120);

  v3 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t $DistributedChallengeServiceProtocol.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0 + 120);

    v2 = *(v0 + 128);

    swift_defaultActor_destroy();
  }

  else
  {
    $DistributedChallengeServiceProtocol.deinit();
  }

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D844F634()
{
  sub_1D8581B58();
  type metadata accessor for $DistributedChallengeServiceProtocol();
  OUTLINED_FUNCTION_5_2();
  sub_1D8473E40(v0);
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t $DistributedChallengeServiceProtocol.__allocating_init(actorSystem:)(uint64_t a1)
{
  v2 = swift_allocObject();
  $DistributedChallengeServiceProtocol.init(actorSystem:)(a1);
  return v2;
}

void *$DistributedChallengeServiceProtocol.init(actorSystem:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v1[16] = a1;
  type metadata accessor for $DistributedChallengeServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_43();
  sub_1D8473E40(v3);
  OUTLINED_FUNCTION_5_2();
  sub_1D8473E40(v4);

  OUTLINED_FUNCTION_481();
  sub_1D8580F58();
  v1[14] = v7;
  v1[15] = v8;
  v6 = v1[16];

  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_481();
  sub_1D8580F38();

  return v1;
}

uint64_t $DistributedChallengeServiceProtocol.unownedExecutor.getter()
{
  if ((sub_1D8580FF8() & 1) == 0)
  {
    type metadata accessor for $DistributedChallengeServiceProtocol();
    OUTLINED_FUNCTION_5_2();
    sub_1D8473E40(v1);
    OUTLINED_FUNCTION_151();
    return sub_1D8580F28();
  }

  return v0;
}

uint64_t sub_1D844F880@<X0>(uint64_t *a1@<X8>)
{
  result = $DistributedChallengeServiceProtocol.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D844F90C()
{
  OUTLINED_FUNCTION_366();
  type metadata accessor for $DistributedChallengeServiceProtocol();
  OUTLINED_FUNCTION_5_2();
  sub_1D8473E40(v0);
  OUTLINED_FUNCTION_188();
  return sub_1D8580FC8();
}

uint64_t sub_1D844F96C()
{
  v2 = *v0;
  sub_1D8581B58();
  type metadata accessor for $DistributedChallengeServiceProtocol();
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t sub_1D844F9E8()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_132(v0);
  OUTLINED_FUNCTION_24(dword_1D8594F58);
  v2 = *v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_59(v4);
  OUTLINED_FUNCTION_535();

  return v10(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1D844FA88(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 225) = a4;
  *(v5 + 80) = a3;
  *(v5 + 88) = v4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  v6 = sub_1D8581018();
  *(v5 + 96) = v6;
  v7 = *(v6 - 8);
  *(v5 + 104) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C20, &qword_1D8590BF0);
  *(v5 + 120) = v9;
  v10 = *(v9 - 8);
  *(v5 + 128) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C28, &qword_1D8590BF8);
  *(v5 + 144) = v12;
  v13 = *(v12 - 8);
  *(v5 + 152) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  *(v5 + 168) = v15;
  v16 = *(v15 - 8);
  *(v5 + 176) = v16;
  v17 = *(v16 + 64) + 15;
  *(v5 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D844FC88, 0, 0);
}

uint64_t sub_1D844FC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_185();
  v16 = *(v15 + 88);
  if (swift_distributed_actor_is_remote())
  {
    v17 = *(v15 + 88);
    *(v15 + 192) = OUTLINED_FUNCTION_270();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedChallengeServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_323();
      v57 = *(v15 + 112);

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_170();

      return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14);
    }

    v30 = *(v15 + 184);
    v31 = *(v15 + 72);
    *(v15 + 40) = *(v15 + 64);
    *(v15 + 48) = v31;

    v32 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v34);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v35);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v36, v37);
    v38 = *(v15 + 160);
    *(v15 + 56) = *(v15 + 80);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C38, &qword_1D8590C08);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_21();
    sub_1D8581038();
    sub_1D847418C();
    sub_1D84742E8();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v39, v40);
    v41 = *(v15 + 136);
    *(v15 + 224) = *(v15 + 225);
    OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_229();
    sub_1D8474444();
    sub_1D8474498();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v42, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v44);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v45)
    {
      v46 = *(v15 + 176);
      v47 = *(v15 + 160);
      a9 = *(v15 + 168);
      a10 = *(v15 + 184);
      v49 = *(v15 + 144);
      v48 = *(v15 + 152);
      v50 = *(v15 + 128);
      v51 = *(v15 + 136);
      v52 = *(v15 + 120);

      v53 = OUTLINED_FUNCTION_79();
      v54(v53);
      v55 = OUTLINED_FUNCTION_74_0();
      v56(v55);
      (*(v46 + 8))(a10, a9);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v66 = *(v15 + 112);
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v67 = swift_task_alloc();
    *(v15 + 208) = v67;
    OUTLINED_FUNCTION_5_2();
    sub_1D8473E40(v68);
    OUTLINED_FUNCTION_217();
    *v67 = v69;
    OUTLINED_FUNCTION_418();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_170();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v70, v71, v72, v73, v74, v75, v76);
  }

  else
  {
    OUTLINED_FUNCTION_31_0(dword_1D8594F58);
    v18 = swift_task_alloc();
    *(v15 + 200) = v18;
    *v18 = v15;
    OUTLINED_FUNCTION_403(v18);
    v19 = *(v15 + 225);
    OUTLINED_FUNCTION_207_0(v20);
    OUTLINED_FUNCTION_170();

    return v25(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1D8450060()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_334();
  v2 = v0[25];
  v3 = *v1;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  OUTLINED_FUNCTION_341();
  v6 = *(v5 + 184);
  v7 = v0[20];
  v8 = v0[17];
  v9 = v0[14];

  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_535();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1D84501B0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 216) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t DistributedChallengeServiceProtocol<>.refreshChallengeDefinitions(game:filters:scope:)()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  v5 = v4;
  *(v1 + 120) = v6;
  *(v1 + 128) = v0;
  *(v1 + 104) = v7;
  *(v1 + 112) = v8;
  *(v1 + 96) = v9;
  v10 = sub_1D8581018();
  *(v1 + 136) = v10;
  OUTLINED_FUNCTION_39(v10);
  *(v1 + 144) = v11;
  v13 = *(v12 + 64);
  *(v1 + 152) = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C20, &qword_1D8590BF0);
  *(v1 + 160) = v14;
  OUTLINED_FUNCTION_39(v14);
  *(v1 + 168) = v15;
  v17 = *(v16 + 64);
  *(v1 + 176) = OUTLINED_FUNCTION_332();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C28, &qword_1D8590BF8);
  *(v1 + 184) = v18;
  OUTLINED_FUNCTION_39(v18);
  *(v1 + 192) = v19;
  v21 = *(v20 + 64);
  *(v1 + 200) = OUTLINED_FUNCTION_332();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  *(v1 + 208) = v22;
  OUTLINED_FUNCTION_39(v22);
  *(v1 + 216) = v23;
  v25 = *(v24 + 64);
  v26 = OUTLINED_FUNCTION_332();
  v27 = *v5;
  v28 = v5[1];
  *(v1 + 224) = v26;
  *(v1 + 232) = v27;
  *(v1 + 240) = v28;
  *(v1 + 290) = *v3;
  v29 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v29, v30, v31);
}

{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D8450624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_185();
  v15 = *(v14 + 128);
  if (swift_distributed_actor_is_remote())
  {
    v16 = *(v14 + 128);
    v17 = *(v14 + 104);
    OUTLINED_FUNCTION_144(*(v14 + 112));
    *(v14 + 248) = *(v14 + 80);
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v17)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_111();
      v65 = *(v14 + 152);

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_170();

      return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14);
    }

    v38 = *(v14 + 240);
    v39 = *(v14 + 224);
    *(v14 + 56) = *(v14 + 232);
    *(v14 + 64) = v38;

    v40 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v40, v41);
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v42);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v43);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v44, v45);
    v46 = *(v14 + 200);
    *(v14 + 88) = *(v14 + 96);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C38, &qword_1D8590C08);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_21();
    sub_1D8581038();
    sub_1D847418C();
    sub_1D84742E8();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v47, v48);
    v49 = *(v14 + 176);
    *(v14 + 289) = *(v14 + 290);
    OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_229();
    sub_1D8474444();
    sub_1D8474498();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v50, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v52);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v53)
    {
      v54 = *(v14 + 216);
      v55 = *(v14 + 200);
      a9 = *(v14 + 208);
      a10 = *(v14 + 224);
      v57 = *(v14 + 184);
      v56 = *(v14 + 192);
      v58 = *(v14 + 168);
      v59 = *(v14 + 176);
      v60 = *(v14 + 160);

      v61 = OUTLINED_FUNCTION_79();
      v62(v61);
      v63 = OUTLINED_FUNCTION_74_0();
      v64(v63);
      (*(v54 + 8))(a10, a9);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v74 = *(v14 + 152);
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v75 = swift_task_alloc();
    v76 = OUTLINED_FUNCTION_356(v75);
    *v76 = v77;
    OUTLINED_FUNCTION_295_0(v76);
    OUTLINED_FUNCTION_53(v78);
    OUTLINED_FUNCTION_170();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v79, v80, v81, v82, v83, v84, v85);
  }

  else
  {
    v18 = *(v14 + 290);
    v20 = *(v14 + 232);
    v19 = *(v14 + 240);
    v21 = *(v14 + 120);
    *(v14 + 72) = *(v14 + 128);
    *(v14 + 40) = v20;
    *(v14 + 48) = v19;
    *(v14 + 288) = v18;
    v22 = *(*(v21 + 16) + 8);
    OUTLINED_FUNCTION_131();
    v87 = v23 + *v23;
    v25 = *(v24 + 4);
    v26 = swift_task_alloc();
    *(v14 + 272) = v26;
    *v26 = v14;
    v26[1] = sub_1D8450C2C;
    v27 = *(v14 + 96);
    v28 = *(v14 + 104);
    OUTLINED_FUNCTION_170();

    return v34(v29, v30, v31, v32, v33, v34, v35, v36, a9, v87, a11, a12, a13, a14);
  }
}

uint64_t sub_1D8450A60()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 256);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 264) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D8450C2C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 272);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[35] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[28];
    v13 = v3[25];
    v14 = v3[22];
    v15 = v3[19];

    OUTLINED_FUNCTION_57();

    return v16();
  }
}

uint64_t sub_1D8450E50()
{
  OUTLINED_FUNCTION_174();
  v1 = *(v0 + 280);
  OUTLINED_FUNCTION_162();
  v2 = *(v0 + 152);

  OUTLINED_FUNCTION_146();

  return v3();
}

uint64_t sub_1D8450ED0()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  v2 = *v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_191(v4);

  return sub_1D8450F7C(v0, v2);
}

uint64_t sub_1D8450F7C(uint64_t a1, char a2)
{
  *(v3 + 169) = a2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  v4 = sub_1D8581018();
  *(v3 + 64) = v4;
  v5 = *(v4 - 8);
  *(v3 + 72) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C20, &qword_1D8590BF0);
  *(v3 + 88) = v7;
  v8 = *(v7 - 8);
  *(v3 + 96) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C90, &unk_1D8590C30);
  *(v3 + 112) = v10;
  v11 = *(v10 - 8);
  *(v3 + 120) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8451110, 0, 0);
}

uint64_t sub_1D8451110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  v14 = *(v13 + 56);
  if (swift_distributed_actor_is_remote())
  {
    v15 = *(v13 + 56);
    *(v13 + 136) = OUTLINED_FUNCTION_270();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedChallengeServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      v46 = *(v13 + 128);
      v47 = *(v13 + 104);
      v48 = *(v13 + 80);

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_500();
    v28 = *(v13 + 128);
    *(v13 + 40) = *(v13 + 48);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C98, &unk_1D85961F0);
    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_181();
    sub_1D84748E4();
    sub_1D8474994();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v29, v30);
    v31 = *(v13 + 104);
    *(v13 + 168) = *(v13 + 169);
    OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_229();
    sub_1D8474444();
    sub_1D8474498();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v32, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v34);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v35)
    {
      v37 = *(v13 + 120);
      v36 = *(v13 + 128);
      v39 = *(v13 + 104);
      v38 = *(v13 + 112);
      v40 = *(v13 + 88);
      v41 = *(v13 + 96);

      v42 = OUTLINED_FUNCTION_52();
      v43(v42);
      v44 = OUTLINED_FUNCTION_51_0();
      v45(v44);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v57 = *(v13 + 80);
    sub_1D8581028();
    v58 = swift_task_alloc();
    *(v13 + 152) = v58;
    OUTLINED_FUNCTION_5_2();
    sub_1D8473E40(v59);
    OUTLINED_FUNCTION_217();
    *v58 = v60;
    v58[1] = sub_1D8451578;
    v61 = *(v13 + 80);
    v62 = *(v13 + 56);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v63, v64, v65, v66, v67, v68, v69);
  }

  else
  {
    OUTLINED_FUNCTION_24(&dword_1D8594F50);
    v16 = swift_task_alloc();
    *(v13 + 144) = v16;
    *v16 = v13;
    v16[1] = sub_1D8451444;
    v17 = *(v13 + 56);
    v18 = *(v13 + 169);
    OUTLINED_FUNCTION_207_0(*(v13 + 48));
    OUTLINED_FUNCTION_240();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }
}

uint64_t sub_1D8451444()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_334();
  v2 = v0[18];
  v3 = *v1;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  OUTLINED_FUNCTION_341();
  v6 = *(v5 + 128);
  v7 = v0[13];
  v8 = v0[10];

  OUTLINED_FUNCTION_137();

  return v9();
}

uint64_t sub_1D8451578()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 160) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D8451670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_464();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = v12[16];
  v20 = v12[13];
  v21 = v12[10];

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_1D8451730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_464();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = v12[20];
  v20 = v12[16];
  v21 = v12[13];
  v22 = v12[10];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t DistributedChallengeServiceProtocol<>.refreshChallengeDefinitions(challengeDefinitions:scope:)()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  *(v1 + 88) = v4;
  *(v1 + 96) = v0;
  *(v1 + 72) = v5;
  *(v1 + 80) = v6;
  *(v1 + 64) = v7;
  v8 = sub_1D8581018();
  *(v1 + 104) = v8;
  OUTLINED_FUNCTION_39(v8);
  *(v1 + 112) = v9;
  v11 = *(v10 + 64);
  *(v1 + 120) = OUTLINED_FUNCTION_332();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C20, &qword_1D8590BF0);
  *(v1 + 128) = v12;
  OUTLINED_FUNCTION_39(v12);
  *(v1 + 136) = v13;
  v15 = *(v14 + 64);
  *(v1 + 144) = OUTLINED_FUNCTION_332();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C90, &unk_1D8590C30);
  *(v1 + 152) = v16;
  OUTLINED_FUNCTION_39(v16);
  *(v1 + 160) = v17;
  v19 = *(v18 + 64);
  *(v1 + 168) = OUTLINED_FUNCTION_332();
  *(v1 + 218) = *v3;
  v20 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D845195C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  v15 = *(v14 + 96);
  if (swift_distributed_actor_is_remote())
  {
    v16 = *(v14 + 96);
    v17 = *(v14 + 72);
    v18 = *(*(v14 + 80) + 8);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    *(v14 + 176) = *(v14 + 48);
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v17)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_266_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_500();
    v36 = *(v14 + 168);
    *(v14 + 56) = *(v14 + 64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C98, &unk_1D85961F0);
    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_181();
    sub_1D84748E4();
    sub_1D8474994();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v37, v38);
    v39 = *(v14 + 144);
    *(v14 + 217) = *(v14 + 218);
    OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_229();
    sub_1D8474444();
    sub_1D8474498();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v40, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v42);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v43)
    {
      OUTLINED_FUNCTION_187();
      v44 = OUTLINED_FUNCTION_52();
      v45(v44);
      v46 = OUTLINED_FUNCTION_51_0();
      v47(v46);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v56 = *(v14 + 120);
    sub_1D8581028();
    v57 = swift_task_alloc();
    v58 = OUTLINED_FUNCTION_286(v57);
    *v58 = v59;
    v58[1] = sub_1D8451CD4;
    v60 = *(v14 + 120);
    v61 = *(v14 + 72);
    OUTLINED_FUNCTION_53(*(v14 + 96));
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v62, v63, v64, v65, v66, v67, v68);
  }

  else
  {
    v19 = *(v14 + 218);
    v20 = *(v14 + 88);
    *(v14 + 40) = *(v14 + 96);
    *(v14 + 216) = v19;
    v21 = *(*(v20 + 16) + 16);
    OUTLINED_FUNCTION_54();
    v70 = v22 + *v22;
    v24 = *(v23 + 4);
    v25 = swift_task_alloc();
    *(v14 + 200) = v25;
    *v25 = v14;
    v25[1] = sub_1D8451E80;
    v26 = *(v14 + 72);
    OUTLINED_FUNCTION_207_0(*(v14 + 64));
    OUTLINED_FUNCTION_239();

    return v31(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, v70, a12, a13, a14);
  }
}

uint64_t sub_1D8451CD4()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 192) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D8451DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_227();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_266_0();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D8451E80()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[26] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[21];
    v13 = v3[18];
    v14 = v3[15];

    OUTLINED_FUNCTION_57();

    return v15();
  }
}

uint64_t sub_1D8451FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_227();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = *(v12 + 192);
  OUTLINED_FUNCTION_389();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1D845206C()
{
  OUTLINED_FUNCTION_174();
  v1 = *(v0 + 208);
  OUTLINED_FUNCTION_389();

  OUTLINED_FUNCTION_146();

  return v2();
}

uint64_t sub_1D84520DC()
{
  OUTLINED_FUNCTION_475();
  v8 = v0;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_132(v1);
  OUTLINED_FUNCTION_31_0(&unk_1D8594F48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_30_0(v3);

  return v6(v5);
}

uint64_t sub_1D845216C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_1D8581018();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C28, &qword_1D8590BF8);
  v4[15] = v8;
  v9 = *(v8 - 8);
  v4[16] = v9;
  v10 = *(v9 + 64) + 15;
  v4[17] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v4[18] = v11;
  v12 = *(v11 - 8);
  v4[19] = v12;
  v13 = *(v12 + 64) + 15;
  v4[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8452300, 0, 0);
}

uint64_t sub_1D8452300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  v14 = v13[11];
  if (swift_distributed_actor_is_remote())
  {
    v15 = v13[11];
    v13[21] = OUTLINED_FUNCTION_270();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedChallengeServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_460();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
    }

    v27 = v13[20];
    v28 = v13[9];
    v13[5] = v13[8];
    v13[6] = v28;

    v29 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v31);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v32);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v33, v34);
    v35 = v13[17];
    v13[7] = v13[10];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C38, &qword_1D8590C08);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_21();
    sub_1D8581038();
    sub_1D847418C();
    sub_1D84742E8();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v36, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v38);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v39)
    {
      OUTLINED_FUNCTION_521();
      v40 = OUTLINED_FUNCTION_52();
      v41(v40);
      v42 = OUTLINED_FUNCTION_51_0();
      v43(v42);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v52 = v13[14];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v53 = swift_task_alloc();
    v13[23] = v53;
    OUTLINED_FUNCTION_5_2();
    sub_1D8473E40(v54);
    OUTLINED_FUNCTION_217();
    *v53 = v55;
    OUTLINED_FUNCTION_418();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v56, v57, v58, v59, v60, v61, v62);
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8594F48);
    v16 = swift_task_alloc();
    v13[22] = v16;
    *v16 = v13;
    OUTLINED_FUNCTION_403(v16);
    OUTLINED_FUNCTION_207_0(v17);
    OUTLINED_FUNCTION_240();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t sub_1D8452630()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_334();
  v2 = v0[22];
  v3 = *v1;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  OUTLINED_FUNCTION_341();
  v6 = *(v5 + 160);
  v7 = v0[17];
  v8 = v0[14];

  OUTLINED_FUNCTION_137();

  return v9();
}

uint64_t sub_1D8452764()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 192) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D845285C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_459();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_460();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D8452910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_459();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = v12[24];
  v20 = v12[20];
  v21 = v12[17];
  v22 = v12[14];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t DistributedChallengeServiceProtocol<>.refreshChallengeDefinitions(game:filters:)()
{
  OUTLINED_FUNCTION_148();
  v7 = OUTLINED_FUNCTION_467(v2, v3, v4, v5, v6);
  v1[17] = v7;
  OUTLINED_FUNCTION_39(v7);
  v1[18] = v8;
  v10 = *(v9 + 64);
  v1[19] = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C28, &qword_1D8590BF8);
  v1[20] = v11;
  OUTLINED_FUNCTION_39(v11);
  v1[21] = v12;
  v14 = *(v13 + 64);
  v1[22] = OUTLINED_FUNCTION_332();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v1[23] = v15;
  OUTLINED_FUNCTION_39(v15);
  v1[24] = v16;
  v18 = *(v17 + 64);
  v19 = OUTLINED_FUNCTION_332();
  v20 = *v0;
  v21 = v0[1];
  v1[25] = v19;
  v1[26] = v20;
  v1[27] = v21;
  v22 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D8452B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  v15 = v14[16];
  if (swift_distributed_actor_is_remote())
  {
    v16 = v14[16];
    v17 = v14[13];
    OUTLINED_FUNCTION_144(v14[14]);
    v14[28] = v14[10];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v17)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_457();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14);
    }

    v36 = v14[27];
    v37 = v14[25];
    v14[7] = v14[26];
    v14[8] = v36;

    v38 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v40);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v41);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v42, v43);
    v44 = v14[22];
    v14[11] = v14[12];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C38, &qword_1D8590C08);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_21();
    sub_1D8581038();
    sub_1D847418C();
    sub_1D84742E8();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v45, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v47);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v48)
    {
      OUTLINED_FUNCTION_520();
      v49 = OUTLINED_FUNCTION_52();
      v50(v49);
      v51 = OUTLINED_FUNCTION_51_0();
      v52(v51);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v61 = v14[19];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v62 = swift_task_alloc();
    v14[29] = v62;
    *v62 = v14;
    OUTLINED_FUNCTION_295_0(v62);
    OUTLINED_FUNCTION_53(v63);
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v64, v65, v66, v67, v68, v69, v70);
  }

  else
  {
    v18 = v14[15];
    v14[9] = v14[16];
    v19 = v14[26];
    v20 = *(OUTLINED_FUNCTION_38(v14[27]) + 24);
    OUTLINED_FUNCTION_54();
    v72 = v21 + *v21;
    v23 = *(v22 + 4);
    v24 = swift_task_alloc();
    v14[31] = v24;
    *v24 = v14;
    v24[1] = sub_1D8453054;
    v25 = v14[12];
    v26 = v14[13];
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_239();

    return v31(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, v72, a12, a13, a14);
  }
}

uint64_t sub_1D8452EA8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 240) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D8452FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_424();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_457();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D8453054()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 248);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[32] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[25];
    v13 = v3[22];
    v14 = v3[19];

    OUTLINED_FUNCTION_57();

    return v15();
  }
}

uint64_t sub_1D8453188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_424();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = v12[30];
  v20 = v12[25];
  v21 = v12[22];
  v22 = v12[19];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_1D845324C()
{
  OUTLINED_FUNCTION_174();
  v1 = v0[32];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[19];

  OUTLINED_FUNCTION_146();

  return v5();
}

uint64_t sub_1D84532C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_404();
  v11 = *v10;
  v12 = v10[1];
  OUTLINED_FUNCTION_24(&unk_1D8594F40);
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_97(v16);
  *v17 = v18;
  OUTLINED_FUNCTION_107(v17);
  OUTLINED_FUNCTION_470();

  return v25(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_1D8453360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[15] = a6;
  v7[16] = v6;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  v8 = sub_1D8581018();
  v7[17] = v8;
  v9 = *(v8 - 8);
  v7[18] = v9;
  v10 = *(v9 + 64) + 15;
  v7[19] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v7[20] = v11;
  v12 = *(v11 - 8);
  v7[21] = v12;
  v13 = *(v12 + 64) + 15;
  v7[22] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C28, &qword_1D8590BF8);
  v7[23] = v14;
  v15 = *(v14 - 8);
  v7[24] = v15;
  v16 = *(v15 + 64) + 15;
  v7[25] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v7[26] = v17;
  v18 = *(v17 - 8);
  v7[27] = v18;
  v19 = *(v18 + 64) + 15;
  v7[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8453564, 0, 0);
}

uint64_t sub_1D8453930()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_334();
  v2 = v0[30];
  v3 = *v1;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  OUTLINED_FUNCTION_341();
  v6 = *(v5 + 224);
  v7 = v0[25];
  v8 = v0[22];
  v9 = v0[19];

  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_535();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1D8453A80()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 248);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 256) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t DistributedChallengeServiceProtocol<>.listChallengeDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_174();
  v8 = OUTLINED_FUNCTION_264(v1, v2, v3, v4, v5, v6, v7);
  v0[22] = v8;
  OUTLINED_FUNCTION_39(v8);
  v0[23] = v9;
  v11 = *(v10 + 64);
  v0[24] = OUTLINED_FUNCTION_332();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v0[25] = v12;
  OUTLINED_FUNCTION_39(v12);
  v0[26] = v13;
  v15 = *(v14 + 64);
  v0[27] = OUTLINED_FUNCTION_332();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C28, &qword_1D8590BF8);
  v0[28] = v16;
  OUTLINED_FUNCTION_39(v16);
  v0[29] = v17;
  v19 = *(v18 + 64);
  v0[30] = OUTLINED_FUNCTION_332();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v0[31] = v20;
  OUTLINED_FUNCTION_39(v20);
  v0[32] = v21;
  v23 = *(v22 + 64);
  v24 = OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_252_0(v24);
  v25 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v25, v26, v27);
}

{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D84542E8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 312);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 320) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84544B4()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 328);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  *(v3 + 336) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_372();

    OUTLINED_FUNCTION_57();

    return v12();
  }
}

uint64_t sub_1D84546C0()
{
  OUTLINED_FUNCTION_174();
  v1 = *(v0 + 336);
  OUTLINED_FUNCTION_246();

  OUTLINED_FUNCTION_146();

  return v2();
}

uint64_t sub_1D8454738()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8594F38);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_176(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_191(v2);

  return v5(v0);
}

uint64_t sub_1D84547CC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C90, &unk_1D8590C30);
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84548F4, 0, 0);
}

uint64_t sub_1D84548F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D8594F38);
    v16 = swift_task_alloc();
    v13[16] = v16;
    *v16 = v13;
    v16[1] = sub_1D8454BD8;
    v17 = v13[8];
    OUTLINED_FUNCTION_207_0(v13[7]);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v15 = v13[8];
  v13[15] = OUTLINED_FUNCTION_270();
  OUTLINED_FUNCTION_354();
  type metadata accessor for $DistributedChallengeServiceProtocol();
  OUTLINED_FUNCTION_91();
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_500();
  v27 = v13[14];
  v13[5] = v13[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C98, &unk_1D85961F0);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_181();
  sub_1D84748E4();
  sub_1D8474994();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v28, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CE8, &qword_1D8590C88);
  sub_1D84755F8();
  sub_1D8475754();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_358();
  GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v31)
  {
    OUTLINED_FUNCTION_453();
    v32 = OUTLINED_FUNCTION_49_0();
    v33(v32);
    OUTLINED_FUNCTION_331();

LABEL_9:
    v34 = v13[14];
    v35 = v13[11];

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v36 = v13[11];
  sub_1D8581028();
  v37 = swift_task_alloc();
  v13[17] = v37;
  OUTLINED_FUNCTION_5_2();
  sub_1D8473E40(v38);
  OUTLINED_FUNCTION_98();
  *v37 = v39;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_173();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D8454BD8()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_320();
  v3 = *(v2 + 128);
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;

  OUTLINED_FUNCTION_510();
  v7 = *(v6 + 112);
  v8 = *(v2 + 88);

  OUTLINED_FUNCTION_507();
  if (!v0)
  {
    v9 = OUTLINED_FUNCTION_482();
  }

  return v10(v9);
}

uint64_t sub_1D8454D00()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D8454DF8()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_519();
  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_166();
  v5(v4);
  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_151();
  v8(v7);
  OUTLINED_FUNCTION_331();

  v9 = v0[6];
  v10 = v0[14];
  v11 = v0[11];

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_511();

  return v14(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1D8454EA8()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_519();
  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_166();
  v5(v4);
  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_151();
  v8(v7);
  OUTLINED_FUNCTION_331();

  v9 = v0[18];
  v10 = v0[14];
  v11 = v0[11];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t DistributedChallengeServiceProtocol<>.describeChallengeDefinitions(challengeDefinitions:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v8 = *(v7 + 64);
  v0[16] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C90, &unk_1D8590C30);
  v0[17] = v9;
  OUTLINED_FUNCTION_39(v9);
  v0[18] = v10;
  v12 = *(v11 + 64);
  v0[19] = OUTLINED_FUNCTION_332();
  v13 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D845504C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v15 = v14[13];
  is_remote = swift_distributed_actor_is_remote();
  v17 = v14[13];
  if (is_remote)
  {
    v18 = v14[10];
    v19 = *(v14[11] + 8);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[20] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v18)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      v43 = v14[19];
      v44 = v14[16];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_500();
    v36 = v14[19];
    v14[7] = v14[9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C98, &unk_1D85961F0);
    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_181();
    sub_1D84748E4();
    sub_1D8474994();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v37, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CE8, &qword_1D8590C88);
    sub_1D84755F8();
    sub_1D8475754();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_358();
    GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v40)
    {
      OUTLINED_FUNCTION_452();
      v41 = OUTLINED_FUNCTION_49_0();
      v42(v41);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    v53 = v14[16];
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[21] = v54;
    *v54 = v55;
    OUTLINED_FUNCTION_294(v54);
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v20 = *(OUTLINED_FUNCTION_210(v14[12]) + 40);
    OUTLINED_FUNCTION_54();
    v57 = v21 + *v21;
    v23 = *(v22 + 4);
    v24 = swift_task_alloc();
    v25 = OUTLINED_FUNCTION_286(v24);
    *v25 = v26;
    v25[1] = sub_1D845551C;
    OUTLINED_FUNCTION_108();
    OUTLINED_FUNCTION_410();
    OUTLINED_FUNCTION_169();

    return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, v57, a12, a13, a14);
  }
}

uint64_t sub_1D8455374()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D845546C()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_518();
  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_166();
  v5(v4);
  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_151();
  v8(v7);
  OUTLINED_FUNCTION_331();

  v9 = v0[8];
  v10 = v0[19];
  v11 = v0[16];

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_511();

  return v14(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1D845551C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[24] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[19];
    v13 = v3[16];

    v14 = OUTLINED_FUNCTION_56_0();

    return v15(v14);
  }
}

uint64_t sub_1D8455650()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_518();
  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_166();
  v5(v4);
  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_151();
  v8(v7);
  OUTLINED_FUNCTION_331();

  v9 = v0[22];
  v10 = v0[19];
  v11 = v0[16];

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1D8455700()
{
  OUTLINED_FUNCTION_148();
  v1 = v0[24];
  v2 = v0[19];
  v3 = v0[16];

  OUTLINED_FUNCTION_146();

  return v4();
}

uint64_t sub_1D8455768()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8594F30);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_176(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_191(v2);

  return v5(v0);
}

uint64_t sub_1D84557FC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D28, &qword_1D8590CA8);
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8455924, 0, 0);
}

uint64_t sub_1D8455924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[8];
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D8594F30);
    v16 = swift_task_alloc();
    v13[16] = v16;
    *v16 = v13;
    v16[1] = sub_1D8482210;
    v17 = v13[8];
    OUTLINED_FUNCTION_207_0(v13[7]);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v15 = v13[8];
  v13[15] = OUTLINED_FUNCTION_270();
  OUTLINED_FUNCTION_354();
  type metadata accessor for $DistributedChallengeServiceProtocol();
  OUTLINED_FUNCTION_91();
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v27 = v13[14];
  v13[5] = v13[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D30, &unk_1D8590CB0);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_34_0();
  sub_1D8475A40();
  sub_1D8475AF0();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v28, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D48, &unk_1D8596270);
  sub_1D8475BA0();
  sub_1D8475CFC();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_353();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v31)
  {
    OUTLINED_FUNCTION_453();
    v32 = OUTLINED_FUNCTION_49_0();
    v33(v32);
    OUTLINED_FUNCTION_331();

LABEL_9:
    v34 = v13[14];
    v35 = v13[11];

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  v36 = v13[11];
  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v37 = swift_task_alloc();
  v13[17] = v37;
  OUTLINED_FUNCTION_5_2();
  sub_1D8473E40(v38);
  OUTLINED_FUNCTION_98();
  *v37 = v39;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_9_0(v40);
  OUTLINED_FUNCTION_173();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D8455BE4()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t DistributedChallengeServiceProtocol<>.describe(challenges:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v8 = *(v7 + 64);
  v0[16] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D28, &qword_1D8590CA8);
  v0[17] = v9;
  OUTLINED_FUNCTION_39(v9);
  v0[18] = v10;
  v12 = *(v11 + 64);
  v0[19] = OUTLINED_FUNCTION_332();
  v13 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D8455DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v15 = v14[13];
  is_remote = swift_distributed_actor_is_remote();
  v17 = v14[13];
  if (is_remote)
  {
    v18 = v14[10];
    v19 = *(v14[11] + 8);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[20] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v18)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      v43 = v14[19];
      v44 = v14[16];

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
    }

    v36 = v14[19];
    v14[7] = v14[9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D30, &unk_1D8590CB0);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_34_0();
    sub_1D8475A40();
    sub_1D8475AF0();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v37, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D48, &unk_1D8596270);
    sub_1D8475BA0();
    sub_1D8475CFC();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v40)
    {
      OUTLINED_FUNCTION_452();
      v41 = OUTLINED_FUNCTION_49_0();
      v42(v41);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    v53 = v14[16];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[21] = v54;
    *v54 = v55;
    OUTLINED_FUNCTION_294(v54);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v20 = *(OUTLINED_FUNCTION_210(v14[12]) + 48);
    OUTLINED_FUNCTION_54();
    v57 = v21 + *v21;
    v23 = *(v22 + 4);
    v24 = swift_task_alloc();
    v25 = OUTLINED_FUNCTION_286(v24);
    *v25 = v26;
    v25[1] = sub_1D84561D0;
    OUTLINED_FUNCTION_108();
    OUTLINED_FUNCTION_410();
    OUTLINED_FUNCTION_169();

    return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, v57, a12, a13, a14);
  }
}

uint64_t sub_1D84560D8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84561D0()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[24] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[19];
    v13 = v3[16];

    v14 = OUTLINED_FUNCTION_56_0();

    return v15(v14);
  }
}

void sub_1D8456304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  OUTLINED_FUNCTION_487();
  v12 = v11;
  v13 = *v10;
  v15 = *v14;
  v16 = v14[1];
  v19 = *v17;
  v18 = v17[1];
  v21 = *a10;
  v20 = a10[1];
  v22 = swift_task_alloc();
  *(v12 + 16) = v22;
  *v22 = v12;
  v22[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_428();

  __asm { BR              X8 }
}

uint64_t sub_1D845641C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 216) = v37;
  *(v9 + 224) = v8;
  *(v9 + 200) = v35;
  *(v9 + 208) = v36;
  *(v9 + 58) = v34;
  *(v9 + 57) = a8;
  *(v9 + 184) = a7;
  *(v9 + 192) = v33;
  *(v9 + 168) = a5;
  *(v9 + 176) = a6;
  *(v9 + 152) = a3;
  *(v9 + 160) = a4;
  *(v9 + 136) = a1;
  *(v9 + 144) = a2;
  v10 = sub_1D8581018();
  *(v9 + 232) = v10;
  v11 = *(v10 - 8);
  *(v9 + 240) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 248) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D88, &qword_1D8590CD8);
  *(v9 + 256) = v13;
  v14 = *(v13 - 8);
  *(v9 + 264) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 272) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D90, &qword_1D8590CE0);
  *(v9 + 280) = v16;
  v17 = *(v16 - 8);
  *(v9 + 288) = v17;
  v18 = *(v17 + 64) + 15;
  *(v9 + 296) = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D98, &qword_1D8590CE8);
  *(v9 + 304) = v19;
  v20 = *(v19 - 8);
  *(v9 + 312) = v20;
  v21 = *(v20 + 64) + 15;
  *(v9 + 320) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DA0, &qword_1D8590CF0);
  *(v9 + 328) = v22;
  v23 = *(v22 - 8);
  *(v9 + 336) = v23;
  v24 = *(v23 + 64) + 15;
  *(v9 + 344) = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DA8, &qword_1D8590CF8);
  *(v9 + 352) = v25;
  v26 = *(v25 - 8);
  *(v9 + 360) = v26;
  v27 = *(v26 + 64) + 15;
  *(v9 + 368) = swift_task_alloc();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  *(v9 + 376) = v28;
  v29 = *(v28 - 8);
  *(v9 + 384) = v29;
  v30 = *(v29 + 64) + 15;
  *(v9 + 392) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D845677C, 0, 0);
}

uint64_t sub_1D845677C()
{
  OUTLINED_FUNCTION_512();
  v2 = *(v1 + 224);
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    v4 = *(v1 + 58);
    v5 = *(v1 + 57);
    OUTLINED_FUNCTION_50(&dword_1D8594F28);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v1 + 408) = v6;
    *v6 = v7;
    v6[1] = sub_1D8456FB4;
    v8 = *(v1 + 224);
    v9 = *(v1 + 184);
    v10 = *(v1 + 168);
    v11 = *(v1 + 176);
    v12 = *(v1 + 152);
    v13 = *(v1 + 160);
    v14 = *(v1 + 136);
    v15 = *(v1 + 144);
    v104 = *(v1 + 216);
    v103 = *(v1 + 200);
    v102 = *(v1 + 192);
    OUTLINED_FUNCTION_357();

    __asm { BR              X8 }
  }

  v3 = *(v1 + 224);
  *(v1 + 400) = OUTLINED_FUNCTION_270();
  OUTLINED_FUNCTION_354();
  type metadata accessor for $DistributedChallengeServiceProtocol();
  OUTLINED_FUNCTION_91();
  if (v0)
  {
    OUTLINED_FUNCTION_342();

LABEL_9:
    v76 = *(v1 + 392);
    v77 = *(v1 + 368);
    v78 = *(v1 + 344);
    OUTLINED_FUNCTION_406();
    v79 = *(v1 + 248);

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_370();

    return v80();
  }

  v18 = *(v1 + 392);
  v19 = *(v1 + 152);
  *(v1 + 64) = *(v1 + 144);
  *(v1 + 72) = v19;

  v20 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_21();
  sub_1D8581038();
  OUTLINED_FUNCTION_2_0();
  sub_1D848211C(v22);
  OUTLINED_FUNCTION_0_1();
  sub_1D848211C(v23);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_155();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v24, v25);
  v26 = *(v1 + 368);
  v27 = *(v1 + 168);
  *(v1 + 80) = *(v1 + 160);
  *(v1 + 88) = v27;

  v28 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
  OUTLINED_FUNCTION_299();
  OUTLINED_FUNCTION_408();
  OUTLINED_FUNCTION_198();
  sub_1D8581038();
  OUTLINED_FUNCTION_2_0();
  sub_1D848211C(v30);
  OUTLINED_FUNCTION_0_1();
  sub_1D848211C(v31);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_155();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v32, v33);
  v34 = *(v1 + 344);
  v35 = *(v1 + 57);
  *(v1 + 40) = *(v1 + 176);
  *(v1 + 56) = v35 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DC8, &qword_1D8590D08);
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_46();
  sub_1D8476880(v36);
  OUTLINED_FUNCTION_45();
  sub_1D8476880(v37);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v38, v39);
  v40 = *(v1 + 320);
  v41 = *(v1 + 58);
  *(v1 + 112) = *(v1 + 192);
  *(v1 + 120) = v41 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DE0, &qword_1D8590D10);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_198();
  sub_1D8581038();
  OUTLINED_FUNCTION_46();
  sub_1D84768D8(v42);
  OUTLINED_FUNCTION_45();
  sub_1D84768D8(v43);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v44, v45);
  v46 = *(v1 + 296);
  *(v1 + 128) = *(v1 + 200);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DF8, &qword_1D8590D18);
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_21();
  sub_1D8581038();
  sub_1D8476930();
  sub_1D8476A64();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v47, v48);
  OUTLINED_FUNCTION_479();
  v49 = *(v1 + 272);
  v50 = *(v1 + 216);
  *(v1 + 96) = *(v1 + 208);
  *(v1 + 104) = v50;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E28, &qword_1D8590D28);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_180();
  sub_1D8476B98();
  sub_1D8476C48();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v51, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v53);
  OUTLINED_FUNCTION_534();
  OUTLINED_FUNCTION_44_1();
  OUTLINED_FUNCTION_378(v54);
  OUTLINED_FUNCTION_61(&unk_1ECA38D80);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_358();
  GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v55)
  {
    v100 = *(v1 + 376);
    v101 = *(v1 + 392);
    v98 = *(v1 + 368);
    v99 = *(v1 + 384);
    v56 = *(v1 + 360);
    v57 = *(v1 + 336);
    v96 = *(v1 + 344);
    v97 = *(v1 + 352);
    v94 = *(v1 + 320);
    v95 = *(v1 + 328);
    v58 = *(v1 + 312);
    v59 = *(v1 + 288);
    v92 = *(v1 + 296);
    v93 = *(v1 + 304);
    v60 = *(v1 + 272);
    v91 = *(v1 + 280);
    v61 = *(v1 + 256);
    v62 = *(v1 + 264);

    v63 = *(v62 + 8);
    v64 = OUTLINED_FUNCTION_258();
    v65(v64);
    (*(v59 + 8))(v92, v91);
    (*(v58 + 8))(v94, v93);
    (*(v57 + 8))(v96, v95);
    v66 = (*(v56 + 8))(v98, v97);
    v74 = OUTLINED_FUNCTION_407(v66, v67, v68, v69, v70, v71, v72, v73, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101);
    v75(v74);
    OUTLINED_FUNCTION_331();

    goto LABEL_9;
  }

  v83 = *(v1 + 248);
  sub_1D8581028();
  v84 = swift_task_alloc();
  *(v1 + 416) = v84;
  OUTLINED_FUNCTION_5_2();
  sub_1D8473E40(v85);
  OUTLINED_FUNCTION_217();
  *v84 = v86;
  v84[1] = sub_1D8457168;
  v87 = *(v1 + 248);
  v88 = *(v1 + 224);
  v89 = *(v1 + 136);
  OUTLINED_FUNCTION_490();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_357();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D8456FB4()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_334();
  v2 = v0[51];
  v3 = *v1;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  OUTLINED_FUNCTION_341();
  v6 = *(v5 + 392);
  v7 = v0[46];
  v8 = v0[43];
  v9 = v0[40];
  v10 = v0[37];
  v11 = v0[34];
  v12 = v0[31];

  OUTLINED_FUNCTION_137();

  return v13();
}

uint64_t sub_1D8457168()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 416);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 424) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t DistributedChallengeServiceProtocol<>.createChallenge(creator:leaderboard:duration:attemptLimit:players:previousChallenge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _OWORD *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_174();
  v16 = v15;
  v18 = v17;
  *(v14 + 256) = a13;
  *(v14 + 264) = v13;
  *(v14 + 240) = a11;
  *(v14 + 248) = a12;
  *(v14 + 224) = v19;
  *(v14 + 232) = a9;
  *(v14 + 58) = v20;
  *(v14 + 57) = v21;
  *(v14 + 208) = v22;
  *(v14 + 216) = v23;
  *(v14 + 200) = v24;
  v25 = sub_1D8581018();
  *(v14 + 272) = v25;
  OUTLINED_FUNCTION_39(v25);
  *(v14 + 280) = v26;
  v28 = *(v27 + 64);
  *(v14 + 288) = OUTLINED_FUNCTION_332();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D88, &qword_1D8590CD8);
  *(v14 + 296) = v29;
  OUTLINED_FUNCTION_39(v29);
  *(v14 + 304) = v30;
  v32 = *(v31 + 64);
  *(v14 + 312) = OUTLINED_FUNCTION_332();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D90, &qword_1D8590CE0);
  *(v14 + 320) = v33;
  OUTLINED_FUNCTION_39(v33);
  *(v14 + 328) = v34;
  v36 = *(v35 + 64);
  *(v14 + 336) = OUTLINED_FUNCTION_332();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D98, &qword_1D8590CE8);
  *(v14 + 344) = v37;
  OUTLINED_FUNCTION_39(v37);
  *(v14 + 352) = v38;
  v40 = *(v39 + 64);
  *(v14 + 360) = OUTLINED_FUNCTION_332();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DA0, &qword_1D8590CF0);
  *(v14 + 368) = v41;
  OUTLINED_FUNCTION_39(v41);
  *(v14 + 376) = v42;
  v44 = *(v43 + 64);
  *(v14 + 384) = OUTLINED_FUNCTION_332();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DA8, &qword_1D8590CF8);
  *(v14 + 392) = v45;
  OUTLINED_FUNCTION_39(v45);
  *(v14 + 400) = v46;
  v48 = *(v47 + 64);
  *(v14 + 408) = OUTLINED_FUNCTION_332();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  *(v14 + 416) = v49;
  OUTLINED_FUNCTION_39(v49);
  *(v14 + 424) = v50;
  v52 = *(v51 + 64);
  v53 = OUTLINED_FUNCTION_332();
  v54 = *v18;
  v55 = v18[1];
  *(v14 + 432) = v53;
  *(v14 + 440) = v54;
  v56 = *v16;
  v57 = v16[1];
  *(v14 + 448) = v55;
  *(v14 + 456) = v56;
  *(v14 + 464) = v57;
  *(v14 + 472) = *a10;
  v58 = OUTLINED_FUNCTION_64_0();
  return OUTLINED_FUNCTION_525(v58, v59, v60);
}

uint64_t sub_1D84577AC()
{
  OUTLINED_FUNCTION_297();
  v1 = *(v0 + 264);
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    v6 = *(v0 + 456);
    v5 = *(v0 + 464);
    v7 = *(v0 + 440);
    v8 = *(v0 + 256);
    v9 = *(v0 + 58);
    v10 = *(v0 + 57);
    *(v0 + 176) = *(v0 + 264);
    *(v0 + 64) = v7;
    *(v0 + 80) = v6;
    *(v0 + 88) = v5;
    *(v0 + 96) = *(v0 + 472);
    v11 = *(*(v8 + 16) + 56);
    v90 = v11 + *v11;
    v12 = v11[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v0 + 512) = v13;
    *v13 = v14;
    v13[1] = sub_1D84582A4;
    v15 = *(v0 + 216);
    v16 = *(v0 + 224);
    v17 = *(v0 + 200);
    v18 = *(v0 + 208);
    v94 = *(v0 + 240);
    v93 = *(v0 + 232);
    OUTLINED_FUNCTION_397();

    __asm { BRAA            X8, X16 }
  }

  v2 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(*(v0 + 248) + 8);
  OUTLINED_FUNCTION_166();
  sub_1D8580F98();
  *(v0 + 488) = *(v0 + 184);
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_90();
  if (v3)
  {
    OUTLINED_FUNCTION_342();

LABEL_9:
    v67 = *(v0 + 432);
    v68 = *(v0 + 408);
    v69 = *(v0 + 384);
    OUTLINED_FUNCTION_376();

    OUTLINED_FUNCTION_48();

    return v70();
  }

  v19 = *(v0 + 448);
  v20 = *(v0 + 432);
  *(v0 + 112) = *(v0 + 440);
  *(v0 + 120) = v19;

  v21 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_21();
  sub_1D8581038();
  OUTLINED_FUNCTION_2_0();
  sub_1D848211C(v23);
  OUTLINED_FUNCTION_0_1();
  sub_1D848211C(v24);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_155();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v25, v26);
  v27 = *(v0 + 464);
  v28 = *(v0 + 408);
  *(v0 + 128) = *(v0 + 456);
  *(v0 + 136) = v27;

  v29 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
  OUTLINED_FUNCTION_299();
  OUTLINED_FUNCTION_408();
  OUTLINED_FUNCTION_198();
  sub_1D8581038();
  OUTLINED_FUNCTION_2_0();
  sub_1D848211C(v31);
  OUTLINED_FUNCTION_0_1();
  sub_1D848211C(v32);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_155();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v33, v34);
  v35 = *(v0 + 384);
  v36 = *(v0 + 57);
  *(v0 + 40) = *(v0 + 208);
  *(v0 + 56) = v36 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DC8, &qword_1D8590D08);
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_46();
  sub_1D8476880(v37);
  OUTLINED_FUNCTION_45();
  sub_1D8476880(v38);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v39, v40);
  v41 = *(v0 + 360);
  v42 = *(v0 + 58);
  *(v0 + 160) = *(v0 + 224);
  *(v0 + 168) = v42 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DE0, &qword_1D8590D10);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_198();
  sub_1D8581038();
  OUTLINED_FUNCTION_46();
  sub_1D84768D8(v43);
  OUTLINED_FUNCTION_45();
  sub_1D84768D8(v44);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v45, v46);
  v47 = *(v0 + 336);
  *(v0 + 192) = *(v0 + 232);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DF8, &qword_1D8590D18);
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_21();
  sub_1D8581038();
  sub_1D8476930();
  sub_1D8476A64();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v48, v49);
  OUTLINED_FUNCTION_479();
  v50 = *(v0 + 480);
  v51 = *(v0 + 312);
  *(v0 + 144) = *(v0 + 472);
  *(v0 + 152) = v50;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E28, &qword_1D8590D28);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_180();
  sub_1D8476B98();
  sub_1D8476C48();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v52, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v54);
  OUTLINED_FUNCTION_534();
  OUTLINED_FUNCTION_44_1();
  OUTLINED_FUNCTION_378(v55);
  OUTLINED_FUNCTION_61(&unk_1ECA38D80);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_358();
  GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v56)
  {
    v89 = *(v0 + 416);
    v91 = *(v0 + 432);
    v87 = *(v0 + 408);
    v88 = *(v0 + 424);
    v57 = *(v0 + 400);
    v58 = *(v0 + 376);
    v85 = *(v0 + 384);
    v86 = *(v0 + 392);
    v83 = *(v0 + 360);
    v84 = *(v0 + 368);
    v59 = *(v0 + 352);
    v60 = *(v0 + 328);
    v81 = *(v0 + 336);
    v82 = *(v0 + 344);
    v61 = *(v0 + 312);
    v80 = *(v0 + 320);
    v62 = *(v0 + 296);
    v63 = *(v0 + 304);

    v64 = *(v63 + 8);
    v65 = OUTLINED_FUNCTION_258();
    v66(v65);
    (*(v60 + 8))(v81, v80);
    (*(v59 + 8))(v83, v82);
    (*(v58 + 8))(v85, v84);
    (*(v57 + 8))(v87, v86);
    (*(v88 + 8))(v91, v89);
    OUTLINED_FUNCTION_331();

    goto LABEL_9;
  }

  v72 = *(v0 + 288);
  sub_1D8581028();
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  *(v0 + 496) = v73;
  *v73 = v74;
  v73[1] = sub_1D8458068;
  v75 = *(v0 + 288);
  v76 = *(v0 + 264);
  v77 = *(v0 + 240);
  v78 = *(v0 + 200);
  OUTLINED_FUNCTION_490();
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_269();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D8458068()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 496);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 504) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84582A4()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 512);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[65] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_511();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v13 = v3[54];
    v14 = v3[51];
    v15 = v3[48];
    v16 = v3[45];
    v17 = v3[42];
    v18 = v3[39];
    v19 = v3[36];

    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_511();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_1D845854C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_219();
  v11 = v10[65];
  v12 = v10[54];
  v13 = v10[51];
  v14 = v10[48];
  OUTLINED_FUNCTION_376();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_470();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

void sub_1D84585E8()
{
  OUTLINED_FUNCTION_487();
  v18 = *v0;
  v2 = *v1;
  v3 = v1[1];
  v5 = *v4;
  v6 = v4[1];
  v8 = *v7;
  v9 = *(v7 + 8);
  OUTLINED_FUNCTION_31_0(&unk_1D8594F20);
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_97(v13);
  *v14 = v15;
  v14[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_365();
  OUTLINED_FUNCTION_428();

  __asm { BR              X8 }
}

uint64_t sub_1D84586D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 192) = v34;
  *(v9 + 200) = v8;
  *(v9 + 176) = v33;
  *(v9 + 97) = a8;
  *(v9 + 160) = a6;
  *(v9 + 168) = a7;
  *(v9 + 144) = a4;
  *(v9 + 152) = a5;
  *(v9 + 128) = a2;
  *(v9 + 136) = a3;
  *(v9 + 120) = a1;
  v10 = sub_1D8581018();
  *(v9 + 208) = v10;
  v11 = *(v10 - 8);
  *(v9 + 216) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 224) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D88, &qword_1D8590CD8);
  *(v9 + 232) = v13;
  v14 = *(v13 - 8);
  *(v9 + 240) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 248) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D90, &qword_1D8590CE0);
  *(v9 + 256) = v16;
  v17 = *(v16 - 8);
  *(v9 + 264) = v17;
  v18 = *(v17 + 64) + 15;
  *(v9 + 272) = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E40, &qword_1D8590D40);
  *(v9 + 280) = v19;
  v20 = *(v19 - 8);
  *(v9 + 288) = v20;
  v21 = *(v20 + 64) + 15;
  *(v9 + 296) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E48, &qword_1D8590D48);
  *(v9 + 304) = v22;
  v23 = *(v22 - 8);
  *(v9 + 312) = v23;
  v24 = *(v23 + 64) + 15;
  *(v9 + 320) = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E50, &qword_1D8590D50);
  *(v9 + 328) = v25;
  v26 = *(v25 - 8);
  *(v9 + 336) = v26;
  v27 = *(v26 + 64) + 15;
  *(v9 + 344) = swift_task_alloc();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  *(v9 + 352) = v28;
  v29 = *(v28 - 8);
  *(v9 + 360) = v29;
  v30 = *(v29 + 64) + 15;
  *(v9 + 368) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8458A2C, 0, 0);
}

uint64_t sub_1D8458A2C()
{
  OUTLINED_FUNCTION_512();
  v2 = *(v1 + 200);
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    v4 = *(v1 + 97);
    OUTLINED_FUNCTION_50(&unk_1D8594F20);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v1 + 384) = v5;
    *v5 = v6;
    v5[1] = sub_1D84591E4;
    v7 = *(v1 + 200);
    v8 = *(v1 + 160);
    v9 = *(v1 + 168);
    v10 = *(v1 + 144);
    v11 = *(v1 + 152);
    v12 = *(v1 + 128);
    v13 = *(v1 + 136);
    v14 = *(v1 + 120);
    v97 = *(v1 + 192);
    v96 = *(v1 + 176);
    OUTLINED_FUNCTION_370();

    __asm { BR              X8 }
  }

  v3 = *(v1 + 200);
  *(v1 + 376) = OUTLINED_FUNCTION_270();
  OUTLINED_FUNCTION_354();
  type metadata accessor for $DistributedChallengeServiceProtocol();
  OUTLINED_FUNCTION_91();
  if (v0)
  {
    OUTLINED_FUNCTION_342();

LABEL_9:
    v70 = *(v1 + 368);
    v71 = *(v1 + 344);
    v72 = *(v1 + 320);
    OUTLINED_FUNCTION_405();
    v73 = *(v1 + 224);

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_370();

    return v74();
  }

  v17 = *(v1 + 368);
  v18 = *(v1 + 136);
  *(v1 + 40) = *(v1 + 128);
  *(v1 + 48) = v18;

  v19 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_21();
  sub_1D8581038();
  OUTLINED_FUNCTION_2_0();
  sub_1D848211C(v21);
  OUTLINED_FUNCTION_0_1();
  sub_1D848211C(v22);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_155();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v23, v24);
  v25 = *(v1 + 344);
  v26 = *(v1 + 152);
  *(v1 + 56) = *(v1 + 144);
  *(v1 + 64) = v26;

  v27 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_423();
  OUTLINED_FUNCTION_2_0();
  sub_1D848211C(v29);
  OUTLINED_FUNCTION_0_1();
  sub_1D848211C(v30);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_155();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v31, v32);
  v33 = *(v1 + 320);
  *(v1 + 104) = *(v1 + 160);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E58, &qword_1D8590D58);
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_230();
  sub_1D8477328();
  sub_1D8477400();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v34, v35);
  v36 = *(v1 + 296);
  v37 = *(v1 + 97);
  *(v1 + 88) = *(v1 + 168);
  *(v1 + 96) = v37 & 1;
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_198();
  sub_1D8581038();
  sub_1D84774D8();
  sub_1D847752C();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v38, v39);
  v40 = *(v1 + 272);
  *(v1 + 112) = *(v1 + 176);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DF8, &qword_1D8590D18);
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_21();
  sub_1D8581038();
  sub_1D8476930();
  sub_1D8476A64();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v41, v42);
  OUTLINED_FUNCTION_479();
  v43 = *(v1 + 248);
  v44 = *(v1 + 192);
  *(v1 + 72) = *(v1 + 184);
  *(v1 + 80) = v44;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E28, &qword_1D8590D28);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_180();
  sub_1D8476B98();
  sub_1D8476C48();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v45, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v47);
  OUTLINED_FUNCTION_534();
  OUTLINED_FUNCTION_44_1();
  OUTLINED_FUNCTION_378(v48);
  OUTLINED_FUNCTION_61(&unk_1ECA38D80);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_358();
  GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v49)
  {
    v94 = *(v1 + 352);
    v95 = *(v1 + 368);
    v92 = *(v1 + 344);
    v93 = *(v1 + 360);
    v50 = *(v1 + 336);
    v51 = *(v1 + 312);
    v90 = *(v1 + 320);
    v91 = *(v1 + 328);
    v88 = *(v1 + 296);
    v89 = *(v1 + 304);
    v52 = *(v1 + 288);
    v53 = *(v1 + 264);
    v86 = *(v1 + 272);
    v87 = *(v1 + 280);
    v54 = *(v1 + 248);
    v85 = *(v1 + 256);
    v55 = *(v1 + 232);
    v56 = *(v1 + 240);

    v57 = *(v56 + 8);
    v58 = OUTLINED_FUNCTION_258();
    v59(v58);
    (*(v53 + 8))(v86, v85);
    (*(v52 + 8))(v88, v87);
    (*(v51 + 8))(v90, v89);
    v60 = (*(v50 + 8))(v92, v91);
    v68 = OUTLINED_FUNCTION_407(v60, v61, v62, v63, v64, v65, v66, v67, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
    v69(v68);
    OUTLINED_FUNCTION_331();

    goto LABEL_9;
  }

  v77 = *(v1 + 224);
  sub_1D8581028();
  v78 = swift_task_alloc();
  *(v1 + 392) = v78;
  OUTLINED_FUNCTION_5_2();
  sub_1D8473E40(v79);
  OUTLINED_FUNCTION_217();
  *v78 = v80;
  v78[1] = sub_1D8459398;
  v81 = *(v1 + 224);
  v82 = *(v1 + 200);
  v83 = *(v1 + 120);
  OUTLINED_FUNCTION_490();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_357();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D84591E4()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_334();
  v2 = v0[48];
  v3 = *v1;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  OUTLINED_FUNCTION_341();
  v6 = *(v5 + 368);
  v7 = v0[43];
  v8 = v0[40];
  v9 = v0[37];
  v10 = v0[34];
  v11 = v0[31];
  v12 = v0[28];

  OUTLINED_FUNCTION_137();

  return v13();
}

uint64_t sub_1D8459398()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 392);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 400) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t DistributedChallengeServiceProtocol<>.createChallenge(creator:definition:duration:attemptLimit:players:previousChallenge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  *(v19 + 240) = a18;
  *(v19 + 248) = v18;
  *(v19 + 224) = v28;
  *(v19 + 232) = a17;
  *(v19 + 208) = v29;
  *(v19 + 216) = v30;
  *(v19 + 200) = v31;
  v32 = sub_1D8581018();
  *(v19 + 256) = v32;
  OUTLINED_FUNCTION_39(v32);
  *(v19 + 264) = v33;
  v35 = *(v34 + 64);
  *(v19 + 272) = OUTLINED_FUNCTION_332();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D88, &qword_1D8590CD8);
  *(v19 + 280) = v36;
  OUTLINED_FUNCTION_39(v36);
  *(v19 + 288) = v37;
  v39 = *(v38 + 64);
  *(v19 + 296) = OUTLINED_FUNCTION_332();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D90, &qword_1D8590CE0);
  *(v19 + 304) = v40;
  OUTLINED_FUNCTION_39(v40);
  *(v19 + 312) = v41;
  v43 = *(v42 + 64);
  *(v19 + 320) = OUTLINED_FUNCTION_332();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E40, &qword_1D8590D40);
  *(v19 + 328) = v44;
  OUTLINED_FUNCTION_39(v44);
  *(v19 + 336) = v45;
  v47 = *(v46 + 64);
  *(v19 + 344) = OUTLINED_FUNCTION_332();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E48, &qword_1D8590D48);
  *(v19 + 352) = v48;
  OUTLINED_FUNCTION_39(v48);
  *(v19 + 360) = v49;
  v51 = *(v50 + 64);
  *(v19 + 368) = OUTLINED_FUNCTION_332();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E50, &qword_1D8590D50);
  *(v19 + 376) = v52;
  OUTLINED_FUNCTION_39(v52);
  *(v19 + 384) = v53;
  v55 = *(v54 + 64);
  *(v19 + 392) = OUTLINED_FUNCTION_332();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  *(v19 + 400) = v56;
  OUTLINED_FUNCTION_39(v56);
  *(v19 + 408) = v57;
  v59 = *(v58 + 64);
  v60 = OUTLINED_FUNCTION_332();
  v61 = *v27;
  v62 = v27[1];
  *(v19 + 416) = v60;
  *(v19 + 424) = v61;
  v63 = *v25;
  v64 = v25[1];
  *(v19 + 432) = v62;
  *(v19 + 440) = v63;
  v65 = *v23;
  *(v19 + 448) = v64;
  *(v19 + 456) = v65;
  *(v19 + 145) = *(v23 + 8);
  *(v19 + 464) = *v21;
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_535();
  return OUTLINED_FUNCTION_523(v66, v67, v68);
}

uint64_t sub_1D84599E0()
{
  OUTLINED_FUNCTION_512();
  v1 = *(v0 + 248);
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    v5 = *(v0 + 145);
    v7 = *(v0 + 448);
    v6 = *(v0 + 456);
    v8 = *(v0 + 440);
    v9 = *(v0 + 424);
    v10 = *(v0 + 240);
    *(v0 + 168) = *(v0 + 248);
    *(v0 + 40) = v9;
    *(v0 + 56) = v8;
    *(v0 + 64) = v7;
    *(v0 + 136) = v6;
    *(v0 + 144) = v5;
    *(v0 + 72) = *(v0 + 464);
    v96 = (*(v10 + 16) + 64);
    v98 = *v96 + **v96;
    v11 = (*v96)[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v0 + 504) = v12;
    *v12 = v13;
    v12[1] = sub_1D845A440;
    v14 = *(v0 + 216);
    v15 = *(v0 + 224);
    v16 = *(v0 + 200);
    v17 = *(v0 + 208);
    OUTLINED_FUNCTION_397();
    OUTLINED_FUNCTION_370();

    __asm { BRAA            X8, X16 }
  }

  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(*(v0 + 232) + 8);
  OUTLINED_FUNCTION_166();
  sub_1D8580F98();
  *(v0 + 480) = *(v0 + 176);
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_90();
  if (v3)
  {
    OUTLINED_FUNCTION_342();

LABEL_9:
    v73 = *(v0 + 416);
    v74 = *(v0 + 392);
    v75 = *(v0 + 368);
    OUTLINED_FUNCTION_373();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_370();

    return v76();
  }

  v20 = *(v0 + 432);
  v21 = *(v0 + 416);
  *(v0 + 88) = *(v0 + 424);
  *(v0 + 96) = v20;

  v22 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_21();
  sub_1D8581038();
  OUTLINED_FUNCTION_2_0();
  sub_1D848211C(v24);
  OUTLINED_FUNCTION_0_1();
  sub_1D848211C(v25);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_155();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v26, v27);
  v28 = *(v0 + 448);
  v29 = *(v0 + 392);
  *(v0 + 104) = *(v0 + 440);
  *(v0 + 112) = v28;

  v30 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_423();
  OUTLINED_FUNCTION_2_0();
  sub_1D848211C(v32);
  OUTLINED_FUNCTION_0_1();
  sub_1D848211C(v33);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_155();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v34, v35);
  v36 = *(v0 + 368);
  *(v0 + 184) = *(v0 + 208);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E58, &qword_1D8590D58);
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_230();
  sub_1D8477328();
  sub_1D8477400();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v37, v38);
  v39 = *(v0 + 145);
  v40 = *(v0 + 344);
  *(v0 + 152) = *(v0 + 456);
  *(v0 + 160) = v39;
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_198();
  sub_1D8581038();
  sub_1D84774D8();
  sub_1D847752C();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v41, v42);
  v43 = *(v0 + 320);
  *(v0 + 192) = *(v0 + 216);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DF8, &qword_1D8590D18);
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_21();
  sub_1D8581038();
  sub_1D8476930();
  sub_1D8476A64();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v44, v45);
  OUTLINED_FUNCTION_479();
  v46 = *(v0 + 472);
  v47 = *(v0 + 296);
  *(v0 + 120) = *(v0 + 464);
  *(v0 + 128) = v46;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E28, &qword_1D8590D28);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_180();
  sub_1D8476B98();
  sub_1D8476C48();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v48, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v50);
  OUTLINED_FUNCTION_534();
  OUTLINED_FUNCTION_44_1();
  OUTLINED_FUNCTION_378(v51);
  OUTLINED_FUNCTION_61(&unk_1ECA38D80);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_358();
  GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)();
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v52)
  {
    v97 = *(v0 + 400);
    v99 = *(v0 + 416);
    v94 = *(v0 + 392);
    v95 = *(v0 + 408);
    v53 = *(v0 + 384);
    v54 = *(v0 + 360);
    v92 = *(v0 + 368);
    v93 = *(v0 + 376);
    v90 = *(v0 + 344);
    v91 = *(v0 + 352);
    v55 = *(v0 + 336);
    v56 = *(v0 + 312);
    v88 = *(v0 + 320);
    v89 = *(v0 + 328);
    v57 = *(v0 + 296);
    v87 = *(v0 + 304);
    v58 = *(v0 + 280);
    v59 = *(v0 + 288);

    v60 = *(v59 + 8);
    v61 = OUTLINED_FUNCTION_258();
    v62(v61);
    (*(v56 + 8))(v88, v87);
    (*(v55 + 8))(v90, v89);
    (*(v54 + 8))(v92, v91);
    v63 = (*(v53 + 8))(v94, v93);
    v71 = OUTLINED_FUNCTION_407(v63, v64, v65, v66, v67, v68, v69, v70, v87, v88, v89, v90, v91, v92, v93, v94, v95, v97, v99);
    v72(v71);
    OUTLINED_FUNCTION_331();

    goto LABEL_9;
  }

  v79 = *(v0 + 272);
  sub_1D8581028();
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  *(v0 + 488) = v80;
  *v80 = v81;
  v80[1] = sub_1D845A220;
  v82 = *(v0 + 272);
  v83 = *(v0 + 248);
  v84 = *(v0 + 224);
  v85 = *(v0 + 200);
  OUTLINED_FUNCTION_490();
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_357();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D845A220()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 488);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 496) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D845A440()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 504);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[64] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_511();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v13 = v3[52];
    v14 = v3[49];
    v15 = v3[46];
    v16 = v3[43];
    v17 = v3[40];
    v18 = v3[37];
    v19 = v3[34];

    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_511();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_1D845A6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_219();
  v11 = v10[64];
  v12 = v10[52];
  v13 = v10[49];
  v14 = v10[46];
  OUTLINED_FUNCTION_373();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_470();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1D845A770()
{
  OUTLINED_FUNCTION_475();
  v10 = v0;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_366();
  v2 = *v1;
  v3 = v1[1];
  OUTLINED_FUNCTION_31_0(&unk_1D8594F18);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_176(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_191(v5);
  v7 = OUTLINED_FUNCTION_188();

  return v9(v7);
}

uint64_t sub_1D845A810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_1D8581018();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v4[16] = v8;
  v9 = *(v8 - 8);
  v4[17] = v9;
  v10 = *(v9 + 64) + 15;
  v4[18] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D28, &qword_1D8590CA8);
  v4[19] = v11;
  v12 = *(v11 - 8);
  v4[20] = v12;
  v13 = *(v12 + 64) + 15;
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D845A9A4, 0, 0);
}

uint64_t sub_1D845A9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[12];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_125();
    type metadata accessor for $DistributedChallengeServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_266_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
    }

    v27 = v13[21];
    v13[7] = v13[9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D30, &unk_1D8590CB0);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_34_0();
    sub_1D8475A40();
    sub_1D8475AF0();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v28, v29);
    v30 = v13[18];
    v31 = v13[11];
    v13[5] = v13[10];
    v13[6] = v31;

    v32 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
    OUTLINED_FUNCTION_309_0();
    OUTLINED_FUNCTION_461();
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v34);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v35);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v36, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E90, &qword_1D8590D70);
    sub_1D8477994();
    sub_1D8477A6C();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v39)
    {
      OUTLINED_FUNCTION_187();
      v40 = OUTLINED_FUNCTION_52();
      v41(v40);
      v42 = OUTLINED_FUNCTION_51_0();
      v43(v42);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v52 = v13[15];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v53 = swift_task_alloc();
    OUTLINED_FUNCTION_396(v53);
    OUTLINED_FUNCTION_5_2();
    sub_1D8473E40(v54);
    OUTLINED_FUNCTION_98();
    v13[2] = v55;
    v13[3] = sub_1D845ACE8;
    v56 = v13[15];
    v57 = v13[12];
    OUTLINED_FUNCTION_9_0(v58);
    OUTLINED_FUNCTION_173();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8594F18);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_286(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_41(v16);
    OUTLINED_FUNCTION_197();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t sub_1D845ACE8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 200) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t DistributedChallengeServiceProtocol<>.leave(challenges:for:)()
{
  OUTLINED_FUNCTION_148();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[13] = v5;
  v6 = sub_1D8581018();
  v1[18] = v6;
  OUTLINED_FUNCTION_39(v6);
  v1[19] = v7;
  v9 = *(v8 + 64);
  v1[20] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v1[21] = v10;
  OUTLINED_FUNCTION_39(v10);
  v1[22] = v11;
  v13 = *(v12 + 64);
  v1[23] = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D28, &qword_1D8590CA8);
  v1[24] = v14;
  OUTLINED_FUNCTION_39(v14);
  v1[25] = v15;
  v17 = *(v16 + 64);
  v18 = OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_202_0(v18);
  v19 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D845AF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v16 = v15[17];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_216_0();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_311();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14);
    }

    v34 = v15[26];
    v15[11] = v15[13];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D30, &unk_1D8590CB0);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_34_0();
    sub_1D8475A40();
    sub_1D8475AF0();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v35, v36);
    v37 = v15[28];
    v38 = v15[23];
    v15[7] = v15[27];
    v15[8] = v37;

    v39 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
    OUTLINED_FUNCTION_309_0();
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_461();
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v41);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v42);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v43, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E90, &qword_1D8590D70);
    sub_1D8477994();
    sub_1D8477A6C();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v46)
    {
      OUTLINED_FUNCTION_213();
      v47 = OUTLINED_FUNCTION_52();
      v48(v47);
      v49 = OUTLINED_FUNCTION_51_0();
      v50(v49);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v59 = v15[20];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v60 = swift_task_alloc();
    v61 = OUTLINED_FUNCTION_109(v60);
    *v61 = v62;
    v61[1] = sub_1D845B2D4;
    v63 = v15[20];
    v64 = v15[17];
    v65 = v15[14];
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v17 = *(OUTLINED_FUNCTION_17_0() + 72);
    OUTLINED_FUNCTION_54();
    v67 = v18 + *v18;
    v20 = *(v19 + 4);
    v21 = swift_task_alloc();
    v22 = OUTLINED_FUNCTION_356(v21);
    *v22 = v23;
    v22[1] = sub_1D845B3CC;
    v24 = v15[14];
    OUTLINED_FUNCTION_207_0(v15[13]);
    OUTLINED_FUNCTION_169();

    return v29(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v67, a12, a13, a14);
  }
}

uint64_t sub_1D845B2D4()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 240);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 248) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D845B3CC()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 256);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  *(v3 + 264) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_306();

    v12 = OUTLINED_FUNCTION_56_0();

    return v13(v12);
  }
}

uint64_t sub_1D845B500()
{
  OUTLINED_FUNCTION_475();
  v8 = v0;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_132(v1);
  OUTLINED_FUNCTION_31_0(&unk_1D8594F10);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_30_0(v3);

  return v6(v5);
}

uint64_t sub_1D845B590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_1D8581018();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38EB8, &qword_1D8590D88);
  v4[15] = v8;
  v9 = *(v8 - 8);
  v4[16] = v9;
  v10 = *(v9 + 64) + 15;
  v4[17] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v4[18] = v11;
  v12 = *(v11 - 8);
  v4[19] = v12;
  v13 = *(v12 + 64) + 15;
  v4[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D845B724, 0, 0);
}

uint64_t sub_1D845B724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  v14 = v13[11];
  if (swift_distributed_actor_is_remote())
  {
    v15 = v13[11];
    v13[21] = OUTLINED_FUNCTION_270();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedChallengeServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_460();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
    }

    v27 = v13[20];
    v28 = v13[9];
    v13[5] = v13[8];
    v13[6] = v28;

    v29 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v31);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v32);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v33, v34);
    v35 = v13[17];
    v13[7] = v13[10];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38EC0, &qword_1D8590D90);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_21();
    sub_1D8581038();
    sub_1D8477D80();
    sub_1D8477EDC();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v36, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v38);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v39)
    {
      OUTLINED_FUNCTION_521();
      v40 = OUTLINED_FUNCTION_52();
      v41(v40);
      v42 = OUTLINED_FUNCTION_51_0();
      v43(v42);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v52 = v13[14];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v53 = swift_task_alloc();
    v13[23] = v53;
    OUTLINED_FUNCTION_5_2();
    sub_1D8473E40(v54);
    OUTLINED_FUNCTION_217();
    *v53 = v55;
    OUTLINED_FUNCTION_418();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v56, v57, v58, v59, v60, v61, v62);
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8594F10);
    v16 = swift_task_alloc();
    v13[22] = v16;
    *v16 = v13;
    OUTLINED_FUNCTION_403(v16);
    OUTLINED_FUNCTION_207_0(v17);
    OUTLINED_FUNCTION_240();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t sub_1D845BA4C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 192) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t DistributedChallengeServiceProtocol<>.refreshChallenges(player:filters:)()
{
  OUTLINED_FUNCTION_148();
  v7 = OUTLINED_FUNCTION_467(v2, v3, v4, v5, v6);
  v1[17] = v7;
  OUTLINED_FUNCTION_39(v7);
  v1[18] = v8;
  v10 = *(v9 + 64);
  v1[19] = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38EB8, &qword_1D8590D88);
  v1[20] = v11;
  OUTLINED_FUNCTION_39(v11);
  v1[21] = v12;
  v14 = *(v13 + 64);
  v1[22] = OUTLINED_FUNCTION_332();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v1[23] = v15;
  OUTLINED_FUNCTION_39(v15);
  v1[24] = v16;
  v18 = *(v17 + 64);
  v19 = OUTLINED_FUNCTION_332();
  v20 = *v0;
  v21 = v0[1];
  v1[25] = v19;
  v1[26] = v20;
  v1[27] = v21;
  v22 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D845BC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  v15 = v14[16];
  if (swift_distributed_actor_is_remote())
  {
    v16 = v14[16];
    v17 = v14[13];
    OUTLINED_FUNCTION_144(v14[14]);
    v14[28] = v14[10];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v17)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_457();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14);
    }

    v36 = v14[27];
    v37 = v14[25];
    v14[7] = v14[26];
    v14[8] = v36;

    v38 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v40);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v41);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v42, v43);
    v44 = v14[22];
    v14[11] = v14[12];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38EC0, &qword_1D8590D90);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_21();
    sub_1D8581038();
    sub_1D8477D80();
    sub_1D8477EDC();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v45, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v47);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v48)
    {
      OUTLINED_FUNCTION_520();
      v49 = OUTLINED_FUNCTION_52();
      v50(v49);
      v51 = OUTLINED_FUNCTION_51_0();
      v52(v51);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v61 = v14[19];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v62 = swift_task_alloc();
    v14[29] = v62;
    *v62 = v14;
    OUTLINED_FUNCTION_295_0(v62);
    OUTLINED_FUNCTION_53(v63);
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v64, v65, v66, v67, v68, v69, v70);
  }

  else
  {
    v18 = v14[15];
    v14[9] = v14[16];
    v19 = v14[26];
    v20 = *(OUTLINED_FUNCTION_38(v14[27]) + 80);
    OUTLINED_FUNCTION_54();
    v72 = v21 + *v21;
    v23 = *(v22 + 4);
    v24 = swift_task_alloc();
    v14[31] = v24;
    *v24 = v14;
    v24[1] = sub_1D845C110;
    v25 = v14[12];
    v26 = v14[13];
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_239();

    return v31(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, v72, a12, a13, a14);
  }
}

uint64_t sub_1D845C018()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 240) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D845C110()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 248);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[32] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[25];
    v13 = v3[22];
    v14 = v3[19];

    OUTLINED_FUNCTION_57();

    return v15();
  }
}

uint64_t sub_1D845C244()
{
  OUTLINED_FUNCTION_475();
  v8 = v0;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_132(v1);
  OUTLINED_FUNCTION_31_0(&unk_1D8594F08);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_30_0(v3);

  return v6(v5);
}

uint64_t sub_1D845C2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_1D8581018();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D28, &qword_1D8590CA8);
  v4[16] = v8;
  v9 = *(v8 - 8);
  v4[17] = v9;
  v10 = *(v9 + 64) + 15;
  v4[18] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v4[19] = v11;
  v12 = *(v11 - 8);
  v4[20] = v12;
  v13 = *(v12 + 64) + 15;
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D845C468, 0, 0);
}

uint64_t sub_1D845C468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[12];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_125();
    type metadata accessor for $DistributedChallengeServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_266_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_348();
    v27 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v29);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v30);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v31, v32);
    OUTLINED_FUNCTION_347();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D30, &unk_1D8590CB0);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_34_0();
    sub_1D8475A40();
    sub_1D8475AF0();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v33, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38F00, &qword_1D8590DB0);
    sub_1D8478278();
    sub_1D8478350();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      OUTLINED_FUNCTION_187();
      v37 = OUTLINED_FUNCTION_52();
      v38(v37);
      v39 = OUTLINED_FUNCTION_51_0();
      v40(v39);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v49 = v13[15];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v50 = swift_task_alloc();
    OUTLINED_FUNCTION_396(v50);
    OUTLINED_FUNCTION_5_2();
    sub_1D8473E40(v51);
    OUTLINED_FUNCTION_98();
    v13[2] = v52;
    v13[3] = sub_1D845C8C8;
    v53 = v13[15];
    v54 = v13[12];
    OUTLINED_FUNCTION_9_0(v55);
    OUTLINED_FUNCTION_173();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8594F08);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_286(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_41(v16);
    OUTLINED_FUNCTION_197();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t sub_1D845C784()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_320();
  v3 = v2[23];
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;

  OUTLINED_FUNCTION_510();
  v7 = *(v6 + 168);
  v8 = v2[18];
  v9 = v2[15];

  OUTLINED_FUNCTION_507();
  if (!v0)
  {
    OUTLINED_FUNCTION_482();
  }

  OUTLINED_FUNCTION_535();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1D845C8C8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 200) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D845C9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_227();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = *(v12 + 64);
  OUTLINED_FUNCTION_389();

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_173();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1D845CA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_227();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = *(v12 + 200);
  OUTLINED_FUNCTION_389();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t DistributedChallengeServiceProtocol<>.listChallengeStates(player:challenges:)()
{
  OUTLINED_FUNCTION_148();
  v6 = OUTLINED_FUNCTION_175(v1, v2, v3, v4, v5);
  v0[18] = v6;
  OUTLINED_FUNCTION_39(v6);
  v0[19] = v7;
  v9 = *(v8 + 64);
  v0[20] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D28, &qword_1D8590CA8);
  v0[21] = v10;
  OUTLINED_FUNCTION_39(v10);
  v0[22] = v11;
  v13 = *(v12 + 64);
  v0[23] = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v0[24] = v14;
  OUTLINED_FUNCTION_39(v14);
  v0[25] = v15;
  v17 = *(v16 + 64);
  v18 = OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_202_0(v18);
  v19 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D845CC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v16 = v15[17];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_216_0();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_311();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_346();
    v33 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v35);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v36);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v37, v38);
    OUTLINED_FUNCTION_343();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D30, &unk_1D8590CB0);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_34_0();
    sub_1D8475A40();
    sub_1D8475AF0();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v39, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38F00, &qword_1D8590DB0);
    sub_1D8478278();
    sub_1D8478350();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v42)
    {
      OUTLINED_FUNCTION_213();
      v43 = OUTLINED_FUNCTION_52();
      v44(v43);
      v45 = OUTLINED_FUNCTION_51_0();
      v46(v45);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v55 = v15[20];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v56 = swift_task_alloc();
    v57 = OUTLINED_FUNCTION_109(v56);
    *v57 = v58;
    v57[1] = sub_1D845CFE0;
    v59 = v15[20];
    v60 = v15[17];
    v61 = v15[14];
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v17 = *(OUTLINED_FUNCTION_17_0() + 88);
    OUTLINED_FUNCTION_54();
    v63 = v18 + *v18;
    v20 = *(v19 + 4);
    v21 = swift_task_alloc();
    v22 = OUTLINED_FUNCTION_356(v21);
    *v22 = v23;
    OUTLINED_FUNCTION_65_0(v22);
    OUTLINED_FUNCTION_169();

    return v28(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, v63, a12, a13, a14);
  }
}

uint64_t sub_1D845CFE0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 240);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 248) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D845D0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_425();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = *(v12 + 96);
  OUTLINED_FUNCTION_463();

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_173();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1D845D190()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 256);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  *(v3 + 264) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_306();

    v12 = OUTLINED_FUNCTION_56_0();

    return v13(v12);
  }
}

uint64_t sub_1D845D2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_425();
  v13 = OUTLINED_FUNCTION_67();
  v14(v13);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  v18(v17);
  OUTLINED_FUNCTION_331();

  v19 = *(v12 + 248);
  OUTLINED_FUNCTION_463();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1D845D37C()
{
  OUTLINED_FUNCTION_174();
  v1 = *(v0 + 264);
  OUTLINED_FUNCTION_463();

  OUTLINED_FUNCTION_146();

  return v2();
}

uint64_t sub_1D845D3EC()
{
  OUTLINED_FUNCTION_475();
  v8 = v0;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_132(v1);
  OUTLINED_FUNCTION_31_0(&unk_1D8594F00);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_30_0(v3);

  return v6(v5);
}

uint64_t sub_1D845D47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_1D8581018();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D28, &qword_1D8590CA8);
  v4[16] = v8;
  v9 = *(v8 - 8);
  v4[17] = v9;
  v10 = *(v9 + 64) + 15;
  v4[18] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v4[19] = v11;
  v12 = *(v11 - 8);
  v4[20] = v12;
  v13 = *(v12 + 64) + 15;
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D845D610, 0, 0);
}

uint64_t sub_1D845D610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[12];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_125();
    type metadata accessor for $DistributedChallengeServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_266_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_348();
    v27 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v29);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v30);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v31, v32);
    OUTLINED_FUNCTION_347();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D30, &unk_1D8590CB0);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_34_0();
    sub_1D8475A40();
    sub_1D8475AF0();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v33, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38F28, &qword_1D8590DC8);
    sub_1D8478648();
    sub_1D8478784();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      OUTLINED_FUNCTION_187();
      v37 = OUTLINED_FUNCTION_52();
      v38(v37);
      v39 = OUTLINED_FUNCTION_51_0();
      v40(v39);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v49 = v13[15];
    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_531();
    v50 = swift_task_alloc();
    OUTLINED_FUNCTION_396(v50);
    OUTLINED_FUNCTION_5_2();
    sub_1D8473E40(v51);
    OUTLINED_FUNCTION_98();
    v13[2] = v52;
    v13[3] = sub_1D845ACE8;
    v53 = v13[15];
    v54 = v13[12];
    OUTLINED_FUNCTION_9_0(v55);
    OUTLINED_FUNCTION_173();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8594F00);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_286(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_41(v16);
    OUTLINED_FUNCTION_197();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t DistributedChallengeServiceProtocol<>.listChallengeStates2(player:challenges:)()
{
  OUTLINED_FUNCTION_148();
  v6 = OUTLINED_FUNCTION_175(v1, v2, v3, v4, v5);
  v0[18] = v6;
  OUTLINED_FUNCTION_39(v6);
  v0[19] = v7;
  v9 = *(v8 + 64);
  v0[20] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D28, &qword_1D8590CA8);
  v0[21] = v10;
  OUTLINED_FUNCTION_39(v10);
  v0[22] = v11;
  v13 = *(v12 + 64);
  v0[23] = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v0[24] = v14;
  OUTLINED_FUNCTION_39(v14);
  v0[25] = v15;
  v17 = *(v16 + 64);
  v18 = OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_202_0(v18);
  v19 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D845DA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v16 = v15[17];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_216_0();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_311();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_346();
    v33 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v35);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v36);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v37, v38);
    OUTLINED_FUNCTION_343();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D30, &unk_1D8590CB0);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_34_0();
    sub_1D8475A40();
    sub_1D8475AF0();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v39, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38F28, &qword_1D8590DC8);
    sub_1D8478648();
    sub_1D8478784();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v42)
    {
      OUTLINED_FUNCTION_213();
      v43 = OUTLINED_FUNCTION_52();
      v44(v43);
      v45 = OUTLINED_FUNCTION_51_0();
      v46(v45);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v55 = v15[20];
    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_531();
    v56 = swift_task_alloc();
    v57 = OUTLINED_FUNCTION_109(v56);
    *v57 = v58;
    v57[1] = sub_1D845B2D4;
    v59 = v15[20];
    v60 = v15[17];
    v61 = v15[14];
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v17 = *(OUTLINED_FUNCTION_17_0() + 96);
    OUTLINED_FUNCTION_54();
    v63 = v18 + *v18;
    v20 = *(v19 + 4);
    v21 = swift_task_alloc();
    v22 = OUTLINED_FUNCTION_356(v21);
    *v22 = v23;
    OUTLINED_FUNCTION_65_0(v22);
    OUTLINED_FUNCTION_169();

    return v28(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, v63, a12, a13, a14);
  }
}

uint64_t sub_1D845DDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_404();
  v11 = *v10;
  v12 = v10[1];
  OUTLINED_FUNCTION_24(&unk_1D8594EF8);
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_97(v16);
  *v17 = v18;
  OUTLINED_FUNCTION_107(v17);
  OUTLINED_FUNCTION_470();

  return v25(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_1D845DE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[15] = a6;
  v7[16] = v6;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  v8 = sub_1D8581018();
  v7[17] = v8;
  v9 = *(v8 - 8);
  v7[18] = v9;
  v10 = *(v9 + 64) + 15;
  v7[19] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v7[20] = v11;
  v12 = *(v11 - 8);
  v7[21] = v12;
  v13 = *(v12 + 64) + 15;
  v7[22] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38EB8, &qword_1D8590D88);
  v7[23] = v14;
  v15 = *(v14 - 8);
  v7[24] = v15;
  v16 = *(v15 + 64) + 15;
  v7[25] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v7[26] = v17;
  v18 = *(v17 - 8);
  v7[27] = v18;
  v19 = *(v18 + 64) + 15;
  v7[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D845E068, 0, 0);
}

uint64_t sub_1D845E42C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 248);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 256) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t DistributedChallengeServiceProtocol<>.listChallenges(player:filters:after:)()
{
  OUTLINED_FUNCTION_174();
  v8 = OUTLINED_FUNCTION_264(v1, v2, v3, v4, v5, v6, v7);
  v0[22] = v8;
  OUTLINED_FUNCTION_39(v8);
  v0[23] = v9;
  v11 = *(v10 + 64);
  v0[24] = OUTLINED_FUNCTION_332();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v0[25] = v12;
  OUTLINED_FUNCTION_39(v12);
  v0[26] = v13;
  v15 = *(v14 + 64);
  v0[27] = OUTLINED_FUNCTION_332();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38EB8, &qword_1D8590D88);
  v0[28] = v16;
  OUTLINED_FUNCTION_39(v16);
  v0[29] = v17;
  v19 = *(v18 + 64);
  v0[30] = OUTLINED_FUNCTION_332();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v0[31] = v20;
  OUTLINED_FUNCTION_39(v20);
  v0[32] = v21;
  v23 = *(v22 + 64);
  v24 = OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_252_0(v24);
  v25 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v25, v26, v27);
}

{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D845EAE8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 312);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 320) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D845EBE0()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 328);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  *(v3 + 336) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_372();

    OUTLINED_FUNCTION_57();

    return v12();
  }
}

uint64_t sub_1D845ED1C()
{
  OUTLINED_FUNCTION_475();
  v8 = v0;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_132(v1);
  OUTLINED_FUNCTION_31_0(&unk_1D8594EF0);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_30_0(v3);

  return v6(v5);
}

uint64_t sub_1D845EDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_1D8581018();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D28, &qword_1D8590CA8);
  v4[16] = v8;
  v9 = *(v8 - 8);
  v4[17] = v9;
  v10 = *(v9 + 64) + 15;
  v4[18] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v4[19] = v11;
  v12 = *(v11 - 8);
  v4[20] = v12;
  v13 = *(v12 + 64) + 15;
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D845EF40, 0, 0);
}

uint64_t sub_1D845EF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[12];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_125();
    type metadata accessor for $DistributedChallengeServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_266_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_348();
    v27 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v29);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v30);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v31, v32);
    OUTLINED_FUNCTION_347();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D30, &unk_1D8590CB0);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_34_0();
    sub_1D8475A40();
    sub_1D8475AF0();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v33, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38F70, &qword_1D8590E00);
    sub_1D8478E1C();
    sub_1D8478F78();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      OUTLINED_FUNCTION_187();
      v37 = OUTLINED_FUNCTION_52();
      v38(v37);
      v39 = OUTLINED_FUNCTION_51_0();
      v40(v39);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v49 = v13[15];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v50 = swift_task_alloc();
    OUTLINED_FUNCTION_396(v50);
    OUTLINED_FUNCTION_5_2();
    sub_1D8473E40(v51);
    OUTLINED_FUNCTION_98();
    v13[2] = v52;
    v13[3] = sub_1D845ACE8;
    v53 = v13[15];
    v54 = v13[12];
    OUTLINED_FUNCTION_9_0(v55);
    OUTLINED_FUNCTION_173();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8594EF0);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_286(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_41(v16);
    OUTLINED_FUNCTION_197();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t DistributedChallengeServiceProtocol<>.listParticipantStates(player:challenges:)()
{
  OUTLINED_FUNCTION_148();
  v6 = OUTLINED_FUNCTION_175(v1, v2, v3, v4, v5);
  v0[18] = v6;
  OUTLINED_FUNCTION_39(v6);
  v0[19] = v7;
  v9 = *(v8 + 64);
  v0[20] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D28, &qword_1D8590CA8);
  v0[21] = v10;
  OUTLINED_FUNCTION_39(v10);
  v0[22] = v11;
  v13 = *(v12 + 64);
  v0[23] = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v0[24] = v14;
  OUTLINED_FUNCTION_39(v14);
  v0[25] = v15;
  v17 = *(v16 + 64);
  v18 = OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_202_0(v18);
  v19 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D845F3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v16 = v15[17];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_216_0();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_311();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_346();
    v33 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v35);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v36);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v37, v38);
    OUTLINED_FUNCTION_343();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D30, &unk_1D8590CB0);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_34_0();
    sub_1D8475A40();
    sub_1D8475AF0();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v39, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38F70, &qword_1D8590E00);
    sub_1D8478E1C();
    sub_1D8478F78();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v42)
    {
      OUTLINED_FUNCTION_213();
      v43 = OUTLINED_FUNCTION_52();
      v44(v43);
      v45 = OUTLINED_FUNCTION_51_0();
      v46(v45);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v55 = v15[20];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v56 = swift_task_alloc();
    v57 = OUTLINED_FUNCTION_109(v56);
    *v57 = v58;
    v57[1] = sub_1D845B2D4;
    v59 = v15[20];
    v60 = v15[17];
    v61 = v15[14];
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v17 = *(OUTLINED_FUNCTION_17_0() + 112);
    OUTLINED_FUNCTION_54();
    v63 = v18 + *v18;
    v20 = *(v19 + 4);
    v21 = swift_task_alloc();
    v22 = OUTLINED_FUNCTION_356(v21);
    *v22 = v23;
    OUTLINED_FUNCTION_65_0(v22);
    OUTLINED_FUNCTION_169();

    return v28(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, v63, a12, a13, a14);
  }
}

uint64_t sub_1D845F70C()
{
  OUTLINED_FUNCTION_475();
  v8 = v0;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_132(v1);
  OUTLINED_FUNCTION_31_0(&unk_1D8594EE8);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_176(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_30_0(v3);

  return v6(v5);
}

uint64_t sub_1D845F79C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_1D8581018();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D28, &qword_1D8590CA8);
  v4[16] = v8;
  v9 = *(v8 - 8);
  v4[17] = v9;
  v10 = *(v9 + 64) + 15;
  v4[18] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v4[19] = v11;
  v12 = *(v11 - 8);
  v4[20] = v12;
  v13 = *(v12 + 64) + 15;
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D845F930, 0, 0);
}

uint64_t sub_1D845F930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[12];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_125();
    type metadata accessor for $DistributedChallengeServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_266_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_348();
    v27 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v29);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v30);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v31, v32);
    OUTLINED_FUNCTION_347();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D30, &unk_1D8590CB0);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_34_0();
    sub_1D8475A40();
    sub_1D8475AF0();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v33, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FB0, &qword_1D8590E20);
    sub_1D8479314();
    sub_1D847941C();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      OUTLINED_FUNCTION_187();
      v37 = OUTLINED_FUNCTION_52();
      v38(v37);
      v39 = OUTLINED_FUNCTION_51_0();
      v40(v39);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v49 = v13[15];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v50 = swift_task_alloc();
    OUTLINED_FUNCTION_396(v50);
    OUTLINED_FUNCTION_5_2();
    sub_1D8473E40(v51);
    OUTLINED_FUNCTION_98();
    v13[2] = v52;
    v13[3] = sub_1D845ACE8;
    v53 = v13[15];
    v54 = v13[12];
    OUTLINED_FUNCTION_9_0(v55);
    OUTLINED_FUNCTION_173();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8594EE8);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_286(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_41(v16);
    OUTLINED_FUNCTION_197();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t DistributedChallengeServiceProtocol<>.listParticipantStates2(player:challenges:)()
{
  OUTLINED_FUNCTION_148();
  v6 = OUTLINED_FUNCTION_175(v1, v2, v3, v4, v5);
  v0[18] = v6;
  OUTLINED_FUNCTION_39(v6);
  v0[19] = v7;
  v9 = *(v8 + 64);
  v0[20] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D28, &qword_1D8590CA8);
  v0[21] = v10;
  OUTLINED_FUNCTION_39(v10);
  v0[22] = v11;
  v13 = *(v12 + 64);
  v0[23] = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v0[24] = v14;
  OUTLINED_FUNCTION_39(v14);
  v0[25] = v15;
  v17 = *(v16 + 64);
  v18 = OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_202_0(v18);
  v19 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D845FD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v16 = v15[17];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_216_0();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_311();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_346();
    v33 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v35);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v36);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v37, v38);
    OUTLINED_FUNCTION_343();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D30, &unk_1D8590CB0);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_34_0();
    sub_1D8475A40();
    sub_1D8475AF0();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v39, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FB0, &qword_1D8590E20);
    sub_1D8479314();
    sub_1D847941C();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v42)
    {
      OUTLINED_FUNCTION_213();
      v43 = OUTLINED_FUNCTION_52();
      v44(v43);
      v45 = OUTLINED_FUNCTION_51_0();
      v46(v45);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v55 = v15[20];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v56 = swift_task_alloc();
    v57 = OUTLINED_FUNCTION_109(v56);
    *v57 = v58;
    v57[1] = sub_1D845B2D4;
    v59 = v15[20];
    v60 = v15[17];
    v61 = v15[14];
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v17 = *(OUTLINED_FUNCTION_17_0() + 120);
    OUTLINED_FUNCTION_54();
    v63 = v18 + *v18;
    v20 = *(v19 + 4);
    v21 = swift_task_alloc();
    v22 = OUTLINED_FUNCTION_356(v21);
    *v22 = v23;
    OUTLINED_FUNCTION_65_0(v22);
    OUTLINED_FUNCTION_169();

    return v28(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, v63, a12, a13, a14);
  }
}

uint64_t sub_1D84600FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_469();
  OUTLINED_FUNCTION_219();
  v11 = *v10;
  v13 = *v12;
  v14 = v12[1];
  v16 = *v15;
  v17 = v15[1];
  OUTLINED_FUNCTION_31_0(&unk_1D8594EE0);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_176(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_59(v19);
  OUTLINED_FUNCTION_471();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_1D84601A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v7 = sub_1D8581018();
  v6[17] = v7;
  v8 = *(v7 - 8);
  v6[18] = v8;
  v9 = *(v8 + 64) + 15;
  v6[19] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v6[20] = v10;
  v11 = *(v10 - 8);
  v6[21] = v11;
  v12 = *(v11 + 64) + 15;
  v6[22] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE8, &qword_1D8590E48);
  v6[23] = v13;
  v14 = *(v13 - 8);
  v6[24] = v14;
  v15 = *(v14 + 64) + 15;
  v6[25] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v6[26] = v16;
  v17 = *(v16 - 8);
  v6[27] = v17;
  v18 = *(v17 + 64) + 15;
  v6[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84603A8, 0, 0);
}

uint64_t sub_1D8460794()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_320();
  v3 = v2[30];
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;

  OUTLINED_FUNCTION_510();
  v7 = *(v6 + 224);
  v8 = v2[25];
  v9 = v2[22];
  v10 = v2[19];

  OUTLINED_FUNCTION_507();
  if (!v0)
  {
    OUTLINED_FUNCTION_482();
  }

  OUTLINED_FUNCTION_511();

  return v13(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1D84608F4()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 248);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 256) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t DistributedChallengeServiceProtocol<>.sendInvites(player:challenge:to:)()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  v5 = v4;
  v1[20] = v6;
  v1[21] = v0;
  v1[18] = v7;
  v1[19] = v8;
  v1[17] = v9;
  v10 = sub_1D8581018();
  v1[22] = v10;
  OUTLINED_FUNCTION_39(v10);
  v1[23] = v11;
  v13 = *(v12 + 64);
  v1[24] = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v1[25] = v14;
  OUTLINED_FUNCTION_39(v14);
  v1[26] = v15;
  v17 = *(v16 + 64);
  v1[27] = OUTLINED_FUNCTION_332();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE8, &qword_1D8590E48);
  v1[28] = v18;
  OUTLINED_FUNCTION_39(v18);
  v1[29] = v19;
  v21 = *(v20 + 64);
  v1[30] = OUTLINED_FUNCTION_332();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v1[31] = v22;
  OUTLINED_FUNCTION_39(v22);
  v1[32] = v23;
  v25 = *(v24 + 64);
  v26 = OUTLINED_FUNCTION_332();
  v27 = *v5;
  v28 = v5[1];
  v1[33] = v26;
  v1[34] = v27;
  v29 = *v3;
  v30 = v3[1];
  v1[35] = v28;
  v1[36] = v29;
  v1[37] = v30;
  v31 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v31, v32, v33);
}

{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D84610F0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 312);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 320) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D84612B8()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v6 = *(v5 + 328);
  v7 = *v1;
  OUTLINED_FUNCTION_37();
  *v8 = v7;
  v3[42] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[33];
    v13 = v3[30];
    v14 = v3[27];
    v15 = v3[24];

    v16 = OUTLINED_FUNCTION_56_0();

    return v17(v16);
  }
}

uint64_t sub_1D8461404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_469();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_366();
  v11 = *v10;
  v12 = v10[1];
  v14 = *v13;
  v15 = v13[1];
  OUTLINED_FUNCTION_31_0(&unk_1D8594ED8);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_97(v16);
  *v17 = v18;
  v17[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_489();
  OUTLINED_FUNCTION_471();

  return v24(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_1D84614B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[13] = a5;
  v6[14] = v5;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  v7 = sub_1D8581018();
  v6[15] = v7;
  v8 = *(v7 - 8);
  v6[16] = v8;
  v9 = *(v8 + 64) + 15;
  v6[17] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE8, &qword_1D8590E48);
  v6[18] = v10;
  v11 = *(v10 - 8);
  v6[19] = v11;
  v12 = *(v11 + 64) + 15;
  v6[20] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v6[21] = v13;
  v14 = *(v13 - 8);
  v6[22] = v14;
  v15 = *(v14 + 64) + 15;
  v6[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D846164C, 0, 0);
}

uint64_t sub_1D846164C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  v14 = v13[14];
  if (swift_distributed_actor_is_remote())
  {
    v15 = v13[14];
    v13[24] = OUTLINED_FUNCTION_270();
    OUTLINED_FUNCTION_354();
    type metadata accessor for $DistributedChallengeServiceProtocol();
    OUTLINED_FUNCTION_91();
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_323();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12);
    }

    v33 = v13[23];
    v34 = v13[11];
    v13[5] = v13[10];
    v13[6] = v34;

    v35 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v37);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v38);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v39, v40);
    v41 = v13[20];
    v42 = v13[13];
    v13[7] = v13[12];
    v13[8] = v42;

    v43 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v43, v44);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_182();
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v45);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v46);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v47, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v49);
    type metadata accessor for ChallengeInvite(0);
    OUTLINED_FUNCTION_273();
    OUTLINED_FUNCTION_378(v50);
    OUTLINED_FUNCTION_278(&unk_1ECA39010);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v51)
    {
      OUTLINED_FUNCTION_527();
      v52 = OUTLINED_FUNCTION_52();
      v53(v52);
      v54 = OUTLINED_FUNCTION_51_0();
      v55(v54);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v64 = v13[17];
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v65 = swift_task_alloc();
    v13[26] = v65;
    OUTLINED_FUNCTION_5_2();
    sub_1D8473E40(v66);
    OUTLINED_FUNCTION_217();
    *v65 = v67;
    v65[1] = sub_1D8461B34;
    v68 = v13[17];
    v69 = v13[14];
    v70 = v13[9];
    OUTLINED_FUNCTION_337();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_173();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8594ED8);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v13[25] = v16;
    *v16 = v17;
    v16[1] = sub_1D8461A00;
    v18 = v13[13];
    v19 = v13[14];
    v20 = v13[11];
    v21 = v13[12];
    v22 = v13[9];
    v23 = v13[10];
    OUTLINED_FUNCTION_197();

    return v29(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
  }
}

uint64_t sub_1D8461A00()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_334();
  v2 = v0[25];
  v3 = *v1;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  OUTLINED_FUNCTION_341();
  v6 = *(v5 + 184);
  v7 = v0[20];
  v8 = v0[17];

  OUTLINED_FUNCTION_137();

  return v9();
}

uint64_t sub_1D8461B34()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v8 + 216) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D8461C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_454();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_323();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D8461CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_454();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_504();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t DistributedChallengeServiceProtocol<>.createInvite(player:challenge:)()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  v5 = v4;
  v1[18] = v6;
  v1[19] = v0;
  v1[16] = v7;
  v1[17] = v8;
  v1[15] = v9;
  v10 = sub_1D8581018();
  v1[20] = v10;
  OUTLINED_FUNCTION_39(v10);
  v1[21] = v11;
  v13 = *(v12 + 64);
  v1[22] = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE8, &qword_1D8590E48);
  v1[23] = v14;
  OUTLINED_FUNCTION_39(v14);
  v1[24] = v15;
  v17 = *(v16 + 64);
  v1[25] = OUTLINED_FUNCTION_332();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v1[26] = v18;
  OUTLINED_FUNCTION_39(v18);
  v1[27] = v19;
  v21 = *(v20 + 64);
  v22 = OUTLINED_FUNCTION_332();
  v23 = *v5;
  v24 = v5[1];
  v1[28] = v22;
  v1[29] = v23;
  v25 = *v3;
  v26 = v3[1];
  v1[30] = v24;
  v1[31] = v25;
  v1[32] = v26;
  v27 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v27, v28, v29);
}

{
  OUTLINED_FUNCTION_148();
  v1 = *(v0 + 8);
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v2 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D8461F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  v15 = *(v14 + 152);
  if (swift_distributed_actor_is_remote())
  {
    v16 = *(v14 + 152);
    v17 = *(v14 + 128);
    v18 = *(*(v14 + 136) + 8);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    *(v14 + 264) = *(v14 + 112);
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v17)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_111();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14);
    }

    v38 = *(v14 + 240);
    v39 = *(v14 + 224);
    *(v14 + 72) = *(v14 + 232);
    *(v14 + 80) = v38;

    v40 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v40, v41);
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v42);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v43);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v44, v45);
    v46 = *(v14 + 256);
    v47 = *(v14 + 200);
    *(v14 + 88) = *(v14 + 248);
    *(v14 + 96) = v46;

    v48 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v48, v49);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_182();
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v50);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v51);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v52, v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v54);
    type metadata accessor for ChallengeInvite(0);
    OUTLINED_FUNCTION_273();
    OUTLINED_FUNCTION_378(v55);
    OUTLINED_FUNCTION_278(&unk_1ECA39010);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353();
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v56)
    {
      OUTLINED_FUNCTION_215();
      v57 = OUTLINED_FUNCTION_52();
      v58(v57);
      v59 = OUTLINED_FUNCTION_51_0();
      v60(v59);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    v69 = *(v14 + 176);
    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v14 + 272) = v70;
    *v70 = v71;
    v70[1] = sub_1D8462318;
    v72 = *(v14 + 176);
    v73 = *(v14 + 152);
    v74 = *(v14 + 120);
    v75 = *(v14 + 128);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v19 = *(v14 + 144);
    OUTLINED_FUNCTION_300(*(v14 + 152), *(v14 + 232));
    v20 = *(v14 + 248);
    v21 = *(OUTLINED_FUNCTION_243(*(v14 + 256)) + 136);
    OUTLINED_FUNCTION_54();
    v77 = v22 + *v22;
    v24 = *(v23 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v14 + 288) = v25;
    *v25 = v26;
    v25[1] = sub_1D84624C8;
    v27 = *(v14 + 120);
    v28 = *(v14 + 128);
    OUTLINED_FUNCTION_397();
    OUTLINED_FUNCTION_169();

    return v34(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, v77, a12, a13, a14);
  }
}