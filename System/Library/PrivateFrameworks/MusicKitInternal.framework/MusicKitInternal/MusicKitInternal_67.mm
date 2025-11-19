uint64_t sub_1D5440C24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D560C0A8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v46 - v24;
  v26 = *(v23 + 56);
  sub_1D50D019C(a1, &v46 - v24);
  sub_1D50D019C(a2, &v25[v26]);
  OUTLINED_FUNCTION_10(v25);
  if (!v27)
  {
    sub_1D50D019C(v25, v18);
    OUTLINED_FUNCTION_10(&v25[v26]);
    if (!v27)
    {
      (*(v7 + 32))(v12, &v25[v26], v4);
      OUTLINED_FUNCTION_0_232();
      sub_1D5441B30(v29, v30);
      v31 = sub_1D5614D18();
      v32 = *(v7 + 8);
      v32(v12, v4);
      v32(v18, v4);
      sub_1D4E50004(v25, &unk_1EC7E9CA8, &unk_1D561D1D0);
      if ((v31 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    (*(v7 + 8))(v18, v4);
LABEL_9:
    sub_1D4E50004(v25, &qword_1EC7E9FB0, &qword_1D562C590);
    return 0;
  }

  OUTLINED_FUNCTION_10(&v25[v26]);
  if (!v27)
  {
    goto LABEL_9;
  }

  sub_1D4E50004(v25, &unk_1EC7E9CA8, &unk_1D561D1D0);
LABEL_13:
  v33 = type metadata accessor for CloudEditorialElementLink();
  v34 = *(v33 + 20);
  OUTLINED_FUNCTION_24_3();
  if (v35)
  {
    if (!v36)
    {
      return 0;
    }

    v39 = *v37 == *v38 && v35 == v36;
    if (!v39 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  v40 = *(v33 + 24);
  OUTLINED_FUNCTION_24_3();
  if (v41)
  {
    if (v42)
    {
      v45 = *v43 == *v44 && v41 == v42;
      if (v45 || (sub_1D5616168() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v42)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D5440F1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746567726174 && a2 == 0xE600000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65727574616566 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1D5616168();

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

uint64_t sub_1D5441028(char a1)
{
  if (!a1)
  {
    return 7107189;
  }

  if (a1 == 1)
  {
    return 0x746567726174;
  }

  return 0x65727574616566;
}

uint64_t sub_1D5441074(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6980, &qword_1D5665320);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D54418CC();
  sub_1D56163D8();
  LOBYTE(v20) = 0;
  sub_1D560C0A8();
  OUTLINED_FUNCTION_0_232();
  sub_1D5441B30(v14, v15);
  sub_1D5616068();
  if (!v2)
  {
    v16 = type metadata accessor for CloudEditorialElementLink();
    v20 = *(v3 + *(v16 + 20));
    v19 = 1;
    sub_1D5441A88();
    OUTLINED_FUNCTION_10_112();
    v20 = *(v3 + *(v16 + 24));
    v19 = 2;
    sub_1D5441ADC();
    OUTLINED_FUNCTION_10_112();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1D5441244()
{
  v1 = v0;
  v2 = sub_1D560C0A8();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  sub_1D50D019C(v1, &v25 - v15);
  if (__swift_getEnumTagSinglePayload(v16, 1, v2) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v5 + 32))(v10, v16, v2);
    sub_1D56162F8();
    OUTLINED_FUNCTION_0_232();
    sub_1D5441B30(v17, v18);
    sub_1D5614CB8();
    (*(v5 + 8))(v10, v2);
  }

  v19 = type metadata accessor for CloudEditorialElementLink();
  v20 = (v1 + *(v19 + 20));
  if (v20[1])
  {
    v21 = *v20;
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  v22 = (v1 + *(v19 + 24));
  if (!v22[1])
  {
    return sub_1D56162F8();
  }

  v23 = *v22;
  sub_1D56162F8();
  return sub_1D5614E28();
}

uint64_t sub_1D5441460()
{
  sub_1D56162D8();
  sub_1D5441244();
  return sub_1D5616328();
}

uint64_t sub_1D54414A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6978, &qword_1D5665318);
  v11 = OUTLINED_FUNCTION_4(v10);
  v31 = v12;
  v32 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v16 = type metadata accessor for CloudEditorialElementLink();
  v17 = OUTLINED_FUNCTION_14(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D54418CC();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1D560C0A8();
  LOBYTE(v33) = 0;
  OUTLINED_FUNCTION_0_232();
  sub_1D5441B30(v24, v25);
  sub_1D5615F78();
  sub_1D4F5A3D0(v9, v22);
  v34 = 1;
  sub_1D5441920();
  OUTLINED_FUNCTION_9_117();
  sub_1D5615F78();
  *(v22 + *(v16 + 20)) = v33;
  v34 = 2;
  sub_1D5441974();
  OUTLINED_FUNCTION_9_117();
  sub_1D5615F78();
  v26 = OUTLINED_FUNCTION_5_134();
  v27(v26);
  *(v22 + *(v16 + 24)) = v33;
  sub_1D54419C8(v22, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D5441A2C(v22);
}

uint64_t sub_1D54417B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5440F1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D54417DC(uint64_t a1)
{
  v2 = sub_1D54418CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5441818(uint64_t a1)
{
  v2 = sub_1D54418CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5441890()
{
  sub_1D56162D8();
  sub_1D5441244();
  return sub_1D5616328();
}

unint64_t sub_1D54418CC()
{
  result = qword_1EDD55488[0];
  if (!qword_1EDD55488[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD55488);
  }

  return result;
}

unint64_t sub_1D5441920()
{
  result = qword_1EDD55470;
  if (!qword_1EDD55470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD55470);
  }

  return result;
}

unint64_t sub_1D5441974()
{
  result = qword_1EDD55460;
  if (!qword_1EDD55460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD55460);
  }

  return result;
}

uint64_t sub_1D54419C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudEditorialElementLink();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5441A2C(uint64_t a1)
{
  v2 = type metadata accessor for CloudEditorialElementLink();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D5441A88()
{
  result = qword_1EC7F6988;
  if (!qword_1EC7F6988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6988);
  }

  return result;
}

unint64_t sub_1D5441ADC()
{
  result = qword_1EC7F6990;
  if (!qword_1EC7F6990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6990);
  }

  return result;
}

uint64_t sub_1D5441B30(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for CloudEditorialElementLink.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D5441C58()
{
  result = qword_1EC7F6998;
  if (!qword_1EC7F6998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6998);
  }

  return result;
}

unint64_t sub_1D5441CB0()
{
  result = qword_1EDD55478;
  if (!qword_1EDD55478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD55478);
  }

  return result;
}

unint64_t sub_1D5441D08()
{
  result = qword_1EDD55480;
  if (!qword_1EDD55480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD55480);
  }

  return result;
}

uint64_t sub_1D5441D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v30[1] = a2;
  v31 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = v30 - v9;
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v8);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v30 - v16;
  v18 = sub_1D5614898();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v11 + 16);
  v23(v17, a1, a3);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v18);
    (*(v19 + 32))(v22, v10, v18);
    Playlist.variant.getter();
    result = (*(v19 + 8))(v22, v18);
    if (LOBYTE(v40[0]) == 3)
    {
      *v31 = 1;
      return result;
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v18);
    sub_1D4E6C9CC(v10, &unk_1EC7F1990, &unk_1D561CEF0);
  }

  v23(v15, a1, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    result = sub_1D4E6C9CC(&v37, &qword_1EC7EC548, &qword_1D5621090);
LABEL_15:
    *v31 = 0;
    return result;
  }

  sub_1D4F69344(&v37, v40);
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  sub_1D560DB68();
  if (!v33)
  {
    sub_1D4E6C9CC(v32, &qword_1EC7EEC40, &unk_1D561C070);
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    goto LABEL_14;
  }

  if (!*(&v35 + 1))
  {
LABEL_14:
    sub_1D4E6C9CC(&v34, &qword_1EC7EC548, &qword_1D5621090);
    result = __swift_destroy_boxed_opaque_existential_1(v40);
    goto LABEL_15;
  }

  sub_1D4F69344(&v34, &v37);
  v25 = *(&v38 + 1);
  v26 = v39;
  v27 = __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
  sub_1D4F67E14(v27, v25, v26);
  v28 = v34;
  if (MusicLibrary.isRemovalRestricted.getter())
  {
    v29 = 1;
  }

  else if (v28 == 128)
  {
    v29 = 4;
  }

  else if (v28 == 66)
  {
    v29 = 3;
  }

  else
  {
    v29 = 2;
  }

  *v31 = v29;
  __swift_destroy_boxed_opaque_existential_1(&v37);
  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t MusicLibrary.RemoveAction.UnsupportedReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t sub_1D5442258()
{
  result = qword_1EC7F69A0;
  if (!qword_1EC7F69A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F69A0);
  }

  return result;
}

_BYTE *_s12RemoveActionVwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s12RemoveActionV17UnsupportedReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

void MusicLibraryRequest<>.filter<A>(matching:contains:)()
{
  OUTLINED_FUNCTION_47();
  v37 = v0;
  v34 = v3;
  v35 = v2;
  v5 = v4;
  v6 = v2;
  v8 = (*v7 + *MEMORY[0x1E69E77B0]);
  v38 = *(v8[1] + 16);
  v9 = *(v38 + 16);
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v33 - v15;
  v16 = sub_1D560DDF8();
  OUTLINED_FUNCTION_4(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_45();
  v22 = *v8;
  v23 = *(*(v34 + 8) + 8);
  v39 = *(v5 + 16);
  v40 = v22;
  v41 = v9;
  v42 = v23;
  sub_1D560F168();
  v24 = *(v11 + 16);
  v24(v1, v6, v9);
  (*(v18 + 104))(v1, *MEMORY[0x1E69750A0], v16);

  sub_1D560F178();

  v25 = sub_1D560DBF8();
  MEMORY[0x1DA6EAF30]();
  OUTLINED_FUNCTION_11_113();
  sub_1D56151F8();
  v26 = OUTLINED_FUNCTION_20_11();
  v25(v26);
  v27 = sub_1D560DC18();
  v29 = v28;
  sub_1D4EFF488();
  v30 = *(*v29 + 16);
  sub_1D4EFF6F0();
  v31 = v36;
  v24(v36, v35, v9);
  sub_1D504A434(v30, v31, v29, v9, *(v38 + 24));
  v32 = OUTLINED_FUNCTION_20_11();
  v27(v32);

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D54426E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 16);
  v6 = *(v4 - 8);
  sub_1D560DD78();
  result = MusicLibraryRequest.library.getter();
  *a3 = result;
  return result;
}

uint64_t sub_1D544271C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  sub_1D560DD78();

  return MusicLibraryRequest.library.setter();
}

uint64_t (*MusicLibraryRequest.library.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = _s8MusicKit0A14LibraryRequestV0aB8InternalE7libraryAA0aC0Cvg_0();
  return sub_1D54427B8;
}

uint64_t sub_1D54427B8(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = *a1;

    _s8MusicKit0A14LibraryRequestV0aB8InternalE7libraryAA0aC0Cvs_0();
  }

  else
  {
    v7 = *a1;
    return _s8MusicKit0A14LibraryRequestV0aB8InternalE7libraryAA0aC0Cvs_0();
  }
}

uint64_t (*MusicLibraryRequest.wantsDetailedLibraryResponse.modify(void *a1, uint64_t a2))(uint64_t *a1)
{
  OUTLINED_FUNCTION_13_6(a1, a2);
  v2 = _s8MusicKit0A14LibraryRequestV0aB8InternalE013wantsDetailedC8ResponseSbvg_0();
  OUTLINED_FUNCTION_11_38(v2);
  return sub_1D5442870;
}

uint64_t (*MusicLibraryRequest.ignoreExplicitContentRestrictions.modify(void *a1, uint64_t a2))(uint64_t *a1)
{
  OUTLINED_FUNCTION_13_6(a1, a2);
  v2 = _s8MusicKit0A14LibraryRequestV0aB8InternalE33ignoreExplicitContentRestrictionsSbvg_0();
  OUTLINED_FUNCTION_11_38(v2);
  return sub_1D54428D8;
}

uint64_t (*MusicLibraryRequest.includeNonLibraryAddedContent.modify(void *a1, uint64_t a2))(uint64_t *a1)
{
  OUTLINED_FUNCTION_13_6(a1, a2);
  v2 = _s8MusicKit0A14LibraryRequestV0aB8InternalE010includeNonC12AddedContentSbvg_0();
  OUTLINED_FUNCTION_11_38(v2);
  return sub_1D5442944;
}

uint64_t (*MusicLibraryRequest.excludeNonPinnedItems.modify(void *a1, uint64_t a2))(uint64_t *a1)
{
  OUTLINED_FUNCTION_13_6(a1, a2);
  v2 = _s8MusicKit0A14LibraryRequestV0aB8InternalE21excludeNonPinnedItemsSbvg_0();
  OUTLINED_FUNCTION_11_38(v2);
  return sub_1D54429B0;
}

uint64_t (*MusicLibraryRequest.excludeNonPinnedPlaylists.modify(void *a1, uint64_t a2))(uint64_t *a1)
{
  OUTLINED_FUNCTION_13_6(a1, a2);
  v2 = _s8MusicKit0A14LibraryRequestV0aB8InternalE25excludeNonPinnedPlaylistsSbvg_0();
  OUTLINED_FUNCTION_11_38(v2);
  return sub_1D5442A1C;
}

uint64_t sub_1D5442A44@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t)@<X3>, _BYTE *a4@<X8>)
{
  v6 = a1 + a2;
  v7 = *(a1 + a2 - 16);
  v8 = *(v6 - 8);
  v9 = sub_1D560DD78();
  result = a3(v9);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1D5442A94(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = *a1;
  v9 = sub_1D560DD78();
  return a5(v8, v9);
}

uint64_t (*MusicLibraryRequest.deferIdentifierResolution.modify(void *a1, uint64_t a2))(uint64_t *a1)
{
  OUTLINED_FUNCTION_13_6(a1, a2);
  v2 = _s8MusicKit0A14LibraryRequestV0aB8InternalE25deferIdentifierResolutionSbvg_0();
  OUTLINED_FUNCTION_11_38(v2);
  return sub_1D5442B24;
}

void sub_1D5442EEC()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_8_39(v4);
  v6 = *(v5 + *MEMORY[0x1E69E77B0] + 8);
  v7 = sub_1D560DDF8();
  OUTLINED_FUNCTION_4(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8_124();
  sub_1D560F168();
  *v1 = v3;
  (*(v9 + 104))(v1, *MEMORY[0x1E6975098], v7);

  sub_1D560F178();

  OUTLINED_FUNCTION_14_86();
  OUTLINED_FUNCTION_24_4();
  MEMORY[0x1DA6EAF30]();
  v13 = OUTLINED_FUNCTION_1_4();
  sub_1D4E6C078(v13);
  OUTLINED_FUNCTION_36_0();
  v14 = OUTLINED_FUNCTION_20_11();
  v0(v14);

  OUTLINED_FUNCTION_46();
}

void MusicLibraryRequest<>.include<A>(matching:equalTo:)()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_8_39(v4);
  v6 = *(v5 + *MEMORY[0x1E69E77B0] + 8);
  v7 = sub_1D560DDF8();
  OUTLINED_FUNCTION_4(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8_124();
  sub_1D560F168();
  (*(*(v6 - 8) + 16))(v1, v3, v6);
  (*(v9 + 104))(v1, *MEMORY[0x1E6975090], v7);

  sub_1D560F178();

  OUTLINED_FUNCTION_14_86();
  OUTLINED_FUNCTION_24_4();
  MEMORY[0x1DA6EAF30]();
  v13 = OUTLINED_FUNCTION_1_4();
  sub_1D4E6C078(v13);
  OUTLINED_FUNCTION_36_0();
  v14 = OUTLINED_FUNCTION_20_11();
  v0(v14);

  OUTLINED_FUNCTION_46();
}

void MusicLibraryRequest<>.filter(equalTo:)()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_38_18();
  OUTLINED_FUNCTION_4(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  OUTLINED_FUNCTION_10_41(*(v3 + 8));
  v18[0] = v7;
  v18[1] = v3;
  swift_getKeyPath();
  (*(*(v7 - 8) + 16))(v15, v5, v7);
  (*(v10 + 104))(v15, *MEMORY[0x1E6975090], v8);
  sub_1D560F178();

  OUTLINED_FUNCTION_14_86();
  OUTLINED_FUNCTION_24_4();
  MEMORY[0x1DA6EAF30]();
  v16 = OUTLINED_FUNCTION_1_4();
  sub_1D4E6C078(v16);
  OUTLINED_FUNCTION_36_0();
  v17 = OUTLINED_FUNCTION_20_11();
  v1(v17);

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5443350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 16);
  v4 = *(*(*(a2 + a3 - 8) + 8) + 8);
  return sub_1D560EC98();
}

void MusicLibraryRequest<>.filter(memberOf:)()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_38_18();
  OUTLINED_FUNCTION_4(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v18 - v14);
  OUTLINED_FUNCTION_10_41(*(v3 + 8));
  v18[0] = v7;
  v18[1] = v3;
  swift_getKeyPath();
  *v15 = v5;
  (*(v10 + 104))(v15, *MEMORY[0x1E6975098], v8);

  sub_1D560F178();

  OUTLINED_FUNCTION_14_86();
  OUTLINED_FUNCTION_24_4();
  MEMORY[0x1DA6EAF30]();
  v16 = OUTLINED_FUNCTION_1_4();
  sub_1D4E6C078(v16);
  OUTLINED_FUNCTION_36_0();
  v17 = OUTLINED_FUNCTION_20_11();
  v1(v17);

  OUTLINED_FUNCTION_46();
}

uint64_t MusicLibraryRequest<>.sort<A>(by:ascending:)(void *a1)
{
  v2 = *(*a1 + *MEMORY[0x1E69E77B0]);
  sub_1D560DE18();

  sub_1D560DE28();

  sub_1D560DC08();
  OUTLINED_FUNCTION_24_4();
  MEMORY[0x1DA6EAF30]();
  v3 = OUTLINED_FUNCTION_1_4();
  sub_1D4E6C078(v3);
  OUTLINED_FUNCTION_36_0();
  v1(&v5, 0);
}

uint64_t MusicLibraryRequest.containersToDonateForPlayback.getter(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D54435CC, 0, 0);
}

uint64_t sub_1D54435CC()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = sub_1D560DC28();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1D4E628D4(v5, v0 + 16);
      sub_1D4E48324((v0 + 16), v0 + 136);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB0F0, &unk_1D56388C0);
      if (swift_dynamicCast())
      {
        if (*(v0 + 120))
        {
          sub_1D4E48324((v0 + 96), v0 + 56);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = *(v6 + 16);
            sub_1D4F01348();
            v6 = v9;
          }

          v7 = *(v6 + 16);
          if (v7 >= *(v6 + 24) >> 1)
          {
            sub_1D4F01348();
            v6 = v10;
          }

          *(v6 + 16) = v7 + 1;
          sub_1D4E48324((v0 + 56), v6 + 40 * v7 + 32);
          goto LABEL_12;
        }
      }

      else
      {
        *(v0 + 128) = 0;
        *(v0 + 96) = 0u;
        *(v0 + 112) = 0u;
      }

      sub_1D4E6C9CC(v0 + 96, &qword_1EC7EEAA8, &unk_1D562DD20);
LABEL_12:
      v5 += 40;
      if (!--v4)
      {

        goto LABEL_15;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_15:
  v11 = *(v0 + 8);

  return v11(v6);
}

uint64_t sub_1D54437C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D4FBE678;

  return MusicLibraryRequest.containersToDonateForPlayback.getter(a1);
}

uint64_t MusicItem.typedIdentifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MusicItemTypedIdentifier();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  (*(v12 + 16))(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  if (swift_dynamicCast())
  {
    sub_1D4F69344(&v21, v24);
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    sub_1D560D078();
    v13 = *(&v22 + 1);
    v14 = v23;
    __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
    MusicItem.typedIdentifier.getter(v13, v14);
    __swift_destroy_boxed_opaque_existential_1(&v21);
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    sub_1D5443B4C(&v21);
    *v9 = sub_1D560EC18();
    v9[1] = v16;
    if (dynamic_cast_existential_1_conditional(a1))
    {
      v17 = v9 + *(v5 + 24);
      sub_1D560E358();
      v9[2] = MEMORY[0x1E69E7CC0];
      v18 = *(v5 + 28);
      v19 = sub_1D5610088();
      __swift_storeEnumTagSinglePayload(v9 + v18, 1, 1, v19);
      return sub_1D514B46C(v9, a2);
    }

    else
    {
      v24[0] = 0;
      v24[1] = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D5685C90);
      v20 = sub_1D5616458();
      MEMORY[0x1DA6EAC70](v20);

      MEMORY[0x1DA6EAC70](0xD00000000000002DLL, 0x80000001D5685CB0);
      result = sub_1D5615E08();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D5443B4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC520, &unk_1D5621050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SocialProfile.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5610CD8();
  v14 = sub_1D560D708();
  v16 = v15;
  (*(v7 + 8))(v12, v4);
  *a2 = v14;
  a2[1] = v16;
  v17 = a1[3];
  v18 = a1[4];
  v19 = OUTLINED_FUNCTION_71();
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v21 = a2 + *(type metadata accessor for SocialProfile() + 20);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5443D84(uint64_t *a1)
{
  OUTLINED_FUNCTION_19_1(a1);
  if (!v3)
  {
    swift_once();
  }

  v4 = *v1;
  OUTLINED_FUNCTION_5_135();
  sub_1D5446EDC(v5, v2);
  OUTLINED_FUNCTION_0_233();
  sub_1D5446EDC(v6, v2);
  sub_1D560EC28();
  return v8 & 1;
}

uint64_t sub_1D5443E50(uint64_t *a1)
{
  OUTLINED_FUNCTION_19_1(a1);
  if (!v3)
  {
    swift_once();
  }

  v4 = *v1;
  OUTLINED_FUNCTION_5_135();
  sub_1D5446EDC(v5, v2);
  OUTLINED_FUNCTION_0_233();
  sub_1D5446EDC(v6, v2);
  sub_1D560EC28();
  return v8;
}

uint64_t static SocialProfile.== infix(_:_:)()
{
  OUTLINED_FUNCTION_69_0();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for SocialProfile() + 20);

  return sub_1D5611A78();
}

uint64_t SocialProfile.debugDescription.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v48 - v6;
  v8 = sub_1D560C0A8();
  v9 = OUTLINED_FUNCTION_4(v8);
  v48 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - v20;
  OUTLINED_FUNCTION_23_67();
  v52 = v22;
  v53 = v23;
  v50 = 0x22203A646920200ALL;
  v51 = 0xE800000000000000;
  v24 = *v0;
  v25 = v0[1];
  v26 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v26);

  OUTLINED_FUNCTION_55_0();
  MEMORY[0x1DA6EAC70](v50, v51);

  if (qword_1EDD53F98 != -1)
  {
    OUTLINED_FUNCTION_17_84();
  }

  OUTLINED_FUNCTION_2_175();
  sub_1D5446EDC(v27, v1);
  OUTLINED_FUNCTION_0_233();
  sub_1D5446EDC(v28, v1);
  OUTLINED_FUNCTION_16_8();
  v29 = v51;
  if (v51)
  {
    v30 = v50;
    OUTLINED_FUNCTION_4_5();
    sub_1D5615B68();

    OUTLINED_FUNCTION_51_0();
    v50 = v31 | 0x646E616800000000;
    v51 = 0xED000022203A656CLL;
    MEMORY[0x1DA6EAC70](v30, v29);

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_51_21();
  }

  if (qword_1EDD53FA8 != -1)
  {
    OUTLINED_FUNCTION_14_87();
  }

  OUTLINED_FUNCTION_16_8();
  if (v51)
  {
    OUTLINED_FUNCTION_51_0();
    v50 = v32 | 0x656D616E00000000;
    v51 = 0xEB0000000022203ALL;
    MEMORY[0x1DA6EAC70]();

    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_51_21();
  }

  if (qword_1EDD53F90 != -1)
  {
    swift_once();
  }

  v33 = sub_1D56140F8();
  OUTLINED_FUNCTION_16_8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v33);
  sub_1D4E50004(v21, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if (EnumTagSinglePayload != 1)
  {
    MEMORY[0x1DA6EAC70](0x1000000000000010, 0x80000001D56883C0);
  }

  OUTLINED_FUNCTION_4_5();
  sub_1D5615B68();

  v50 = 0xD000000000000013;
  v51 = 0x80000001D568BCE0;
  if (qword_1EDD53FC0 != -1)
  {
    OUTLINED_FUNCTION_10_50();
  }

  v35 = 0x65736C6166;
  OUTLINED_FUNCTION_16_8();
  if (v49 == 2 || (v49 & 1) == 0)
  {
    v36 = 0xE500000000000000;
    v37 = 0x65736C6166;
  }

  else
  {
    v36 = 0xE400000000000000;
    v37 = 1702195828;
  }

  MEMORY[0x1DA6EAC70](v37, v36);

  OUTLINED_FUNCTION_51_21();

  OUTLINED_FUNCTION_4_5();
  sub_1D5615B68();

  OUTLINED_FUNCTION_51_0();
  v50 = v38 | 0x7250736900000000;
  v51 = 0xEF203A6574617669;
  if (qword_1EDD53F88 != -1)
  {
    OUTLINED_FUNCTION_9_49();
  }

  OUTLINED_FUNCTION_16_8();
  if (v49 == 2 || (v49 & 1) == 0)
  {
    v39 = 0xE500000000000000;
    v40 = 0x65736C6166;
  }

  else
  {
    v39 = 0xE400000000000000;
    v40 = 1702195828;
  }

  MEMORY[0x1DA6EAC70](v40, v39);

  OUTLINED_FUNCTION_51_21();

  OUTLINED_FUNCTION_4_5();
  sub_1D5615B68();

  v50 = 0xD000000000000010;
  v51 = 0x80000001D5688330;
  if (qword_1EDD53FD0 != -1)
  {
    OUTLINED_FUNCTION_7_9();
  }

  OUTLINED_FUNCTION_16_8();
  if (v49 == 2 || (v49 & 1) == 0)
  {
    v41 = 0xE500000000000000;
  }

  else
  {
    v41 = 0xE400000000000000;
    v35 = 1702195828;
  }

  MEMORY[0x1DA6EAC70](v35, v41);

  MEMORY[0x1DA6EAC70](v50, v51);

  if (qword_1EDD53FB0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_16_8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1D4E50004(v7, &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  else
  {
    v42 = v48;
    (*(v48 + 32))(v15, v7, v8);
    OUTLINED_FUNCTION_51_0();
    v50 = v43 | 0x3A6C727500000000;
    v51 = 0xEA00000000002220;
    OUTLINED_FUNCTION_7_124();
    sub_1D5446EDC(v44, v45);
    v46 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v46);

    OUTLINED_FUNCTION_55_0();
    MEMORY[0x1DA6EAC70](v50, v51);

    (*(v42 + 8))(v15, v8);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v52;
}

uint64_t sub_1D5444674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v84 = a3;
  v85 = a2;
  v83 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v6 = OUTLINED_FUNCTION_22(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_59_0();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v71 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v78 = &v71 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v86 = &v71 - v24;
  v25 = type metadata accessor for SocialProfilePropertyProvider();
  v26 = OUTLINED_FUNCTION_14(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v31 = v30 - v29;
  v77 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v77);
  v32 = v25[10];
  v33 = sub_1D560C0A8();
  v80 = v32;
  __swift_storeEnumTagSinglePayload(v31 + v32, 1, 1, v33);
  if (qword_1EDD53D08 != -1)
  {
    swift_once();
  }

  v79 = v33;
  v81 = v11;
  v82 = v14;
  v34 = sub_1D560D9A8();
  v35 = __swift_project_value_buffer(v34, qword_1EDD53D10);
  if (qword_1EC7E8F68 != -1)
  {
    swift_once();
  }

  v36 = sub_1D5610088();
  v37 = __swift_project_value_buffer(v36, qword_1EC87C240);
  v38 = type metadata accessor for StorePlatformSocialProfile();
  sub_1D54301F4(v37, v35, *(a1 + v38[6]), *(a1 + v38[6] + 8), v31 + v25[12]);
  v39 = sub_1D560FDE8();
  v75 = v40;
  v76 = v39;
  sub_1D5614A88();
  v74 = OUTLINED_FUNCTION_11_114();
  v73 = OUTLINED_FUNCTION_11_114();
  v72 = OUTLINED_FUNCTION_11_114();
  v41 = OUTLINED_FUNCTION_11_114();
  *(v31 + v25[6]) = 2;
  if (qword_1EDD54CF8 != -1)
  {
    swift_once();
  }

  v42 = qword_1EDD76B58;
  if (qword_1EDD76B58 >> 62)
  {
    sub_1D560CDE8();

    v70 = sub_1D5615E18();

    v42 = v70;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *(v31 + v25[11]) = v42;
  (*(*(v36 - 8) + 16))(v31 + v25[13], v37, v36);
  v43 = (v31 + v25[14]);
  v44 = v75;
  *v43 = v76;
  v43[1] = v44;
  v45 = v73;
  *(v31 + v25[15]) = v74;
  *(v31 + v25[16]) = v45;
  *(v31 + v25[17]) = v72;
  *(v31 + v25[18]) = v41;
  v46 = v78;
  sub_1D4FB8150();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, 1, v47);
  v49 = v86;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v46, &qword_1EC7EB5B8, &unk_1D56206A0);
    v50 = 1;
  }

  else
  {
    sub_1D5610758();
    v49 = v86;
    OUTLINED_FUNCTION_24_0(v47);
    (*(v51 + 8))(v46, v47);
    v50 = 0;
  }

  v52 = v79;
  __swift_storeEnumTagSinglePayload(v49, v50, 1, v77);
  v53 = (v31 + v25[5]);
  v54 = v25[7];
  v55 = v25[8];
  v56 = (v31 + v25[9]);
  sub_1D50ADCCC();
  v57 = (a1 + v38[5]);
  v58 = v57[1];
  *v53 = *v57;
  v53[1] = v58;
  *(v31 + v54) = *(a1 + v38[7]);
  *(v31 + v55) = *(a1 + v38[8]);
  v59 = (a1 + v38[9]);
  v60 = v59[1];
  *v56 = *v59;
  v56[1] = v60;
  v61 = v38[10];
  v62 = v81;
  sub_1D4FB8150();
  if (__swift_getEnumTagSinglePayload(v62, 1, v52) == 1)
  {
    v63 = v38[11];
    sub_1D4FB8150();
    v64 = __swift_getEnumTagSinglePayload(v62, 1, v52);

    if (v64 != 1)
    {
      sub_1D4E50004(v62, &unk_1EC7E9CA8, &unk_1D561D1D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_0(v52);
    v66 = v82;
    (*(v65 + 32))(v82, v62, v52);
    __swift_storeEnumTagSinglePayload(v66, 0, 1, v52);
  }

  sub_1D50ADCCC();
  v87[3] = v25;
  v87[4] = sub_1D5446EDC(&qword_1EDD54CF0, type metadata accessor for SocialProfilePropertyProvider);
  __swift_allocate_boxed_opaque_existential_0(v87);
  sub_1D5446E2C();
  SocialProfile.init(propertyProvider:)(v87, v83);

  v67 = sub_1D560CD48();
  OUTLINED_FUNCTION_14(v67);
  (*(v68 + 8))(v85);
  sub_1D5446E84(a1, type metadata accessor for StorePlatformSocialProfile);
  return sub_1D5446E84(v31, type metadata accessor for SocialProfilePropertyProvider);
}

uint64_t sub_1D5444DDC(void *a1, uint64_t *a2, void (*a3)(void))
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = *a2;
  a3(0);
  sub_1D5446EDC(&qword_1EDD57518, type metadata accessor for SocialProfile);
  OUTLINED_FUNCTION_0_233();
  sub_1D5446EDC(v6, type metadata accessor for SocialProfile);

  return sub_1D560EC28();
}

uint64_t sub_1D5444EB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t SocialProfile.init(_:)@<X0>(uint64_t a1@<X8>)
{
  v71[1] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for StorePlatformSocialProfile();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_59_0();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v66 - v10;
  v12 = sub_1D560CD48();
  v13 = OUTLINED_FUNCTION_22(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  v20 = OUTLINED_FUNCTION_22(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_59_0();
  v25 = v23 - v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = (&v66 - v28);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v66 - v30;
  v32 = type metadata accessor for SocialProfile();
  v68 = v31;
  v69 = v32;
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v32);
  v33 = objc_opt_self();
  v34 = sub_1D5614BA8();
  v71[0] = 0;
  v35 = [v33 dataWithJSONObject:v34 options:0 error:v71];

  v36 = v71[0];
  if (v35)
  {
    v66 = v8;
    v67 = a1;
    v37 = sub_1D560C198();
    v39 = v38;

    v40 = sub_1D560B9C8();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();
    sub_1D560B9B8();
    _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
    sub_1D560B988();
    sub_1D5446EDC(&qword_1EC7F69B8, type metadata accessor for StorePlatformSocialProfile);
    sub_1D560B948();

    v59 = v66;
    sub_1D5446E2C();
    sub_1D560B978();
    v60 = sub_1D560B958();
    sub_1D5444674(v59, v18, v60, v29);

    sub_1D4E55E1C(v37, v39);
    sub_1D5446E84(v11, type metadata accessor for StorePlatformSocialProfile);
    v61 = v68;
    sub_1D4E50004(v68, &unk_1EC7ED370, &unk_1D5624FE0);
    v62 = v69;
    __swift_storeEnumTagSinglePayload(v29, 0, 1, v69);
    sub_1D50AE800(v29, v61);
    a1 = v67;
  }

  else
  {
    v43 = v36;
    v44 = sub_1D560BE98();

    swift_willThrow();
    if (qword_1EDD5D8A8 != -1)
    {
      swift_once();
    }

    v45 = sub_1D560C758();
    __swift_project_value_buffer(v45, qword_1EDD76DC8);

    v46 = v44;
    v47 = sub_1D560C738();
    v48 = sub_1D56156C8();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v71[0] = v50;
      *v49 = 136446466;
      v51 = sub_1D5614BC8();
      v53 = v52;

      v54 = sub_1D4E6835C(v51, v53, v71);

      *(v49 + 4) = v54;
      *(v49 + 12) = 2080;
      v70 = v44;
      v55 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
      v56 = sub_1D5614DB8();
      v58 = sub_1D4E6835C(v56, v57, v71);

      *(v49 + 14) = v58;
      _os_log_impl(&dword_1D4E3F000, v47, v48, "Failed to initialize SocialProfile with dictionary: %{public}s. Error = %s.", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6ED200](v50, -1, -1);
      MEMORY[0x1DA6ED200](v49, -1, -1);
    }

    else
    {
    }

    v61 = v68;
    v62 = v69;
  }

  sub_1D50AE800(v61, v25);
  if (__swift_getEnumTagSinglePayload(v25, 1, v62) == 1)
  {
    sub_1D4E50004(v25, &unk_1EC7ED370, &unk_1D5624FE0);
    v63 = 1;
  }

  else
  {
    sub_1D5060D74(v25, a1);
    v63 = 0;
  }

  result = __swift_storeEnumTagSinglePayload(a1, v63, 1, v62);
  v65 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SocialProfile.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t SocialProfile.propertyProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SocialProfile() + 20);
  v4 = sub_1D5611AB8();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t SocialProfile.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for SocialProfile() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_6_136();
  sub_1D5446EDC(v4, v5);
  return sub_1D5614CB8();
}

uint64_t SocialProfile.hashValue.getter()
{
  sub_1D56162D8();
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for SocialProfile() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_6_136();
  sub_1D5446EDC(v4, v5);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D54456F4(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  v4 = *v2;
  v5 = v2[1];
  sub_1D5614E28();
  v6 = *(a2 + 20);
  sub_1D5611AB8();
  sub_1D5446EDC(&qword_1EC7ECF08, MEMORY[0x1E6976320]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D5445798@<X0>(uint64_t *a1@<X8>)
{
  result = SocialProfile.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SocialProfile.subscript.getter(void *a1)
{
  return sub_1D5445800(a1, MEMORY[0x1E69750B8]);
}

{
  return sub_1D5445800(a1, MEMORY[0x1E6975378]);
}

{
  v2 = (*a1 + *MEMORY[0x1E6975138]);
  v3 = v2[1];
  v4 = v2[2];
  sub_1D560DAB8();
  OUTLINED_FUNCTION_2_175();
  sub_1D5446EDC(v5, v1);
  OUTLINED_FUNCTION_12_94(&qword_1EDD57518);
  OUTLINED_FUNCTION_0_233();
  sub_1D5446EDC(v6, v1);
  v8 = v2[3];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D5445800(void *a1, void *a2)
{
  v3 = *a1 + *a2;
  v4 = *(v3 + 8);
  OUTLINED_FUNCTION_2_175();
  sub_1D5446EDC(v5, v2);
  OUTLINED_FUNCTION_12_94(&qword_1EDD57518);
  OUTLINED_FUNCTION_0_233();
  sub_1D5446EDC(v6, v2);
  v7 = *(v3 + 16);
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D54459F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E6975438] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = sub_1D5446EDC(&qword_1EDD57518, type metadata accessor for SocialProfile);
  v12 = sub_1D5446EDC(&qword_1EDD5DC58, type metadata accessor for SocialProfile);
  *v10 = v4;
  v10[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF250](a1, a2, a3, v11, a4, v12);
}

uint64_t sub_1D5445B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975430] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D5446EDC(&qword_1EDD57518, type metadata accessor for SocialProfile);
  v14 = sub_1D5446EDC(&qword_1EDD5DC58, type metadata accessor for SocialProfile);
  *v12 = v5;
  v12[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF248](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D5445C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E6975428] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = sub_1D5446EDC(&qword_1EDD57518, type metadata accessor for SocialProfile);
  v14 = sub_1D5446EDC(&qword_1EDD5DC58, type metadata accessor for SocialProfile);
  *v12 = v5;
  v12[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF240](a1, a2, a3, a4, v13, a5, v14);
}

uint64_t sub_1D5445DAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF9F8, &unk_1D5633C40);
  swift_getKeyPath();
  sub_1D5446EDC(&qword_1EDD52DE8, MEMORY[0x1E6976F68]);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76898 = v0;
  return result;
}

uint64_t sub_1D5445E74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF9F8, &unk_1D5633C40);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD768B8 = v0;
  return result;
}

uint64_t sub_1D5445EF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF9F8, &unk_1D5633C40);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD76890 = v0;
  return result;
}

uint64_t sub_1D5445F6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF9F8, &unk_1D5633C40);
  swift_getKeyPath();
  sub_1D560D178();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD768C0 = v0;
  return result;
}

uint64_t sub_1D5446004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF9F8, &unk_1D5633C40);
  swift_getKeyPath();
  v6 = sub_1D560D188();

  *a5 = v6;
  return result;
}

uint64_t sub_1D5446090()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF9F8, &unk_1D5633C40);
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_124();
  sub_1D5446EDC(v1, v2);
  sub_1D560D188();
  result = OUTLINED_FUNCTION_44_2();
  qword_1EDD768B0 = v0;
  return result;
}

uint64_t sub_1D544611C()
{
  v0 = sub_1D5610A18();
  __swift_allocate_value_buffer(v0, qword_1EC87C658);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  return sub_1D5610A28();
}

uint64_t static SocialProfile.catalogFilterID(for:)@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1D56159B8();
  v2 = OUTLINED_FUNCTION_35_60();

  if (v2)
  {
    return sub_1D5610A08();
  }

  swift_getKeyPath();
  v4 = OUTLINED_FUNCTION_35_60();

  if (v4)
  {
    if (qword_1EC7E9678 != -1)
    {
      swift_once();
    }

    v5 = sub_1D5610A18();
    __swift_project_value_buffer(v5, qword_1EC87C658);
    OUTLINED_FUNCTION_24_0(v5);
    return (*(v6 + 16))(a1);
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000021, 0x80000001D567F020);
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5446354@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1D54463B0()
{
  sub_1D5446EDC(&qword_1EC7EE028, type metadata accessor for SocialProfile);

  return sub_1D5610C58();
}

uint64_t SocialProfile.init(from:)(uint64_t *a1)
{
  type metadata accessor for SocialProfile();
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_1_175();
  sub_1D5446EDC(v3, v4);
  OUTLINED_FUNCTION_8_125();
  sub_1D5446EDC(v5, v1);
  OUTLINED_FUNCTION_13_92(&qword_1EDD53100);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SocialProfile.encode(to:)()
{
  type metadata accessor for SocialProfile();
  OUTLINED_FUNCTION_1_175();
  sub_1D5446EDC(v1, v2);
  OUTLINED_FUNCTION_8_125();
  sub_1D5446EDC(v3, v0);
  OUTLINED_FUNCTION_13_92(&qword_1EDD53100);
  return sub_1D5612688();
}

uint64_t SocialProfile.description.getter()
{
  OUTLINED_FUNCTION_23_67();
  v7 = v1;
  v2 = *v0;
  v3 = v0[1];
  v4 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v4);

  OUTLINED_FUNCTION_55_0();
  MEMORY[0x1DA6EAC70](0x22203A6469, 0xE500000000000000);

  if (qword_1EDD53F98 != -1)
  {
    OUTLINED_FUNCTION_17_84();
  }

  sub_1D5446EDC(&qword_1EDD57518, type metadata accessor for SocialProfile);
  OUTLINED_FUNCTION_0_233();
  sub_1D5446EDC(v5, type metadata accessor for SocialProfile);
  sub_1D560EC28();
  MEMORY[0x1DA6EAC70](0x22203A6469, 0xE500000000000000);

  OUTLINED_FUNCTION_55_0();
  MEMORY[0x1DA6EAC70](0x656C646E6168202CLL, 0xEB0000000022203ALL);

  if (qword_1EDD53FA8 != -1)
  {
    OUTLINED_FUNCTION_14_87();
  }

  OUTLINED_FUNCTION_10_113();
  MEMORY[0x1DA6EAC70](0x656C646E6168202CLL, 0xEB0000000022203ALL);

  OUTLINED_FUNCTION_55_0();
  MEMORY[0x1DA6EAC70](0x203A656D616E202CLL, 0xE900000000000022);

  if (qword_1EDD53FC0 != -1)
  {
    OUTLINED_FUNCTION_10_50();
  }

  OUTLINED_FUNCTION_10_113();
  if (qword_1EDD53F88 != -1)
  {
    OUTLINED_FUNCTION_9_49();
  }

  OUTLINED_FUNCTION_10_113();
  if (qword_1EDD53FD0 != -1)
  {
    OUTLINED_FUNCTION_7_9();
  }

  OUTLINED_FUNCTION_10_113();
  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v7;
}

uint64_t sub_1D5446980()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC848, &unk_1D56239E0);
  v0 = sub_1D560D9E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D5620080;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6974FD0], v0);
  v6(v5 + v2, *MEMORY[0x1E6974FC8], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E6974FD8], v0);
  qword_1EC7F69A8 = v4;
  return result;
}

uint64_t sub_1D5446ADC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC840, &unk_1D562BDF0);
  v0 = sub_1D560E348();
  OUTLINED_FUNCTION_4(v0);
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D561C050;
  result = (*(v2 + 104))(v6 + v5, *MEMORY[0x1E69751F0], v0);
  qword_1EC7F69B0 = v6;
  return result;
}

uint64_t sub_1D5446BE4()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD57528);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  type metadata accessor for SocialProfile();
  OUTLINED_FUNCTION_1_175();
  sub_1D5446EDC(v3, v4);
  return sub_1D560D988();
}

uint64_t sub_1D5446C90()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EDD53D10);
  v1 = OUTLINED_FUNCTION_71();
  v3 = __swift_project_value_buffer(v1, v2);
  if (qword_1EDD57520 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EDD57528);
  OUTLINED_FUNCTION_24_0(v0);
  v5 = *(v4 + 16);

  return v5(v3);
}

uint64_t sub_1D5446E2C()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

uint64_t sub_1D5446E84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D5446EDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5446F4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v21 - v6;
  v8 = sub_1D560C0A8();
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v18 = *a1;
  v17 = a1[1];
  sub_1D5447FDC(v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1D4E6C9CC(v7, &unk_1EC7E9CA8, &unk_1D561D1D0);
    v19 = 1;
  }

  else
  {
    (*(v11 + 32))(v16, v7, v8);
    v21[0] = v18;
    v21[1] = v17;
    sub_1D5447ABC(v21, a2);
    (*(v11 + 8))(v16, v8);
    v19 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v19, 1, v8);
}

void sub_1D54470E4(uint64_t a1, void *a2)
{
  v108 = a1;
  v112 = *MEMORY[0x1E69E9840];
  v107 = sub_1D560BEE8();
  v3 = OUTLINED_FUNCTION_4(v107);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v96 - v13;
  v15 = sub_1D560C0A8();
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v100 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v96 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v96 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v96 - v29;
  v101 = a2;
  sub_1D5447FDC(v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1D4E6C9CC(v14, &unk_1EC7E9CA8, &unk_1D561D1D0);
    if (qword_1EC7E8DD8 != -1)
    {
      goto LABEL_48;
    }

    goto LABEL_3;
  }

  v104 = v15;
  v105 = v18;
  (*(v18 + 32))(v30, v14, v15);
  OUTLINED_FUNCTION_3_179();
  v110 = v36;
  v111 = v35;
  v37 = v107;
  (*(v5 + 104))(v10, *MEMORY[0x1E6968F58], v107);
  sub_1D4F53278();
  v98 = v30;
  v99 = v28;
  sub_1D560C098();
  (*(v5 + 8))(v10, v37);
  v38 = 0;
  v39 = v109;
  v40 = *(v108 + 16);
  v41 = v108 + 40;
  v42 = MEMORY[0x1E69E7CC0];
LABEL_7:
  v43 = (v41 + 16 * v38);
  v44 = v104;
  while (1)
  {
    if (v40 == v38)
    {
      if (!*(v42 + 16))
      {

        if (qword_1EC7E8DD8 != -1)
        {
          OUTLINED_FUNCTION_0_234();
          swift_once();
        }

        v85 = sub_1D560C758();
        __swift_project_value_buffer(v85, qword_1EC87C0F8);
        v86 = sub_1D560C738();
        v87 = sub_1D56156E8();
        v88 = os_log_type_enabled(v86, v87);
        v89 = v98;
        if (v88)
        {
          v90 = swift_slowAlloc();
          *v90 = 0;
          _os_log_impl(&dword_1D4E3F000, v86, v87, "deleteUnauthenticatedLibraryContainers: no explicit library identifiers provided.", v90, 2u);
          OUTLINED_FUNCTION_122();
        }

        v91 = *(v105 + 8);
        v91(v99, v44);
        v91(v89, v44);
        goto LABEL_43;
      }

      v103 = v42;
      v55 = [objc_opt_self() defaultManager];
      v56 = v99;
      v57 = sub_1D560BF68();
      v110 = 0;
      v58 = [v55 contentsOfDirectoryAtURL:v57 includingPropertiesForKeys:0 options:0 error:&v110];

      v59 = v110;
      if (!v58)
      {
        v92 = v110;

        sub_1D560BE98();

        swift_willThrow();
        v93 = *(v105 + 8);
        v93(v56, v44);
        v93(v98, v44);
        goto LABEL_43;
      }

      v109 = v39;
      v60 = sub_1D5615168();
      v61 = v59;

      v107 = *(v60 + 16);
      if (!v107)
      {

        v70 = *(v105 + 8);
LABEL_42:
        v70(v56, v44);
        v70(v98, v44);
        goto LABEL_43;
      }

      v63 = 0;
      v64 = v105;
      v106 = v60 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
      v108 = v105 + 16;
      v65 = (v105 + 8);
      *&v62 = 136446210;
      v96 = v62;
      v102 = (v105 + 8);
      while (1)
      {
        if (v63 >= *(v60 + 16))
        {
          goto LABEL_47;
        }

        v66 = *(v64 + 16);
        v66(v25, v106 + *(v64 + 72) * v63, v44);
        if ((sub_1D560BF38() & 1) == 0)
        {
          goto LABEL_25;
        }

        v110 = sub_1D560BF48();
        v111 = v67;
        MEMORY[0x1EEE9AC00](v110);
        *(&v96 - 2) = &v110;
        v68 = v109;
        v69 = sub_1D4F25A04(sub_1D4FE1F9C, (&v96 - 2), v103);

        v109 = v68;
        if (v69)
        {
          break;
        }

        if (qword_1EC7E8DD8 != -1)
        {
          OUTLINED_FUNCTION_0_234();
          swift_once();
        }

        v71 = sub_1D560C758();
        __swift_project_value_buffer(v71, qword_1EC87C0F8);
        v72 = v100;
        v66(v100, v25, v44);
        v73 = sub_1D560C738();
        v74 = sub_1D56156E8();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v110 = v97;
          *v75 = v96;
          v76 = sub_1D560BFF8();
          v78 = v77;
          v79 = v72;
          v70 = *v102;
          (*v102)(v79, v104);
          v80 = sub_1D4E6835C(v76, v78, &v110);
          v44 = v104;

          *(v75 + 4) = v80;
          _os_log_impl(&dword_1D4E3F000, v73, v74, "deleteUnauthenticatedLibraryContainers: deleting %{public}s.", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v97);
          OUTLINED_FUNCTION_122();
          OUTLINED_FUNCTION_122();

          v65 = v102;
        }

        else
        {

          v81 = v72;
          v65 = v102;
          v70 = *v102;
          (*v102)(v81, v44);
        }

        v82 = sub_1D560BF68();
        v110 = 0;
        v83 = [v101 removeItemAtURL:v82 error:&v110];

        v84 = v110;
        if ((v83 & 1) == 0)
        {
          v95 = v84;

          sub_1D560BE98();

          swift_willThrow();
          v70(v25, v44);
          v70(v99, v44);
          v70(v98, v44);
          goto LABEL_43;
        }

        v64 = v105;
LABEL_33:
        ++v63;
        v70(v25, v44);
        if (v107 == v63)
        {

          v56 = v99;
          goto LABEL_42;
        }
      }

      v64 = v105;
      v65 = v102;
LABEL_25:
      v70 = *v65;
      goto LABEL_33;
    }

    if (v38 >= v40)
    {
      break;
    }

    v45 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      goto LABEL_46;
    }

    v47 = *v43;
    v43 += 2;
    v46 = v47;
    ++v38;
    if (v47)
    {
      v48 = v39;
      v49 = *(v43 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = *(v42 + 16);
        sub_1D4EFF8E4();
        v42 = v53;
      }

      v50 = *(v42 + 16);
      if (v50 >= *(v42 + 24) >> 1)
      {
        sub_1D4EFF8E4();
        v42 = v54;
      }

      *(v42 + 16) = v50 + 1;
      v51 = v42 + 16 * v50;
      *(v51 + 32) = v49;
      *(v51 + 40) = v46;
      v38 = v45;
      v39 = v48;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  OUTLINED_FUNCTION_0_234();
  swift_once();
LABEL_3:
  v31 = sub_1D560C758();
  __swift_project_value_buffer(v31, qword_1EC87C0F8);
  v32 = sub_1D560C738();
  v33 = sub_1D56156C8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1D4E3F000, v32, v33, "deleteUnauthenticatedLibraryContainers: platformSpecificContainerURL is unavailable.", v34, 2u);
    OUTLINED_FUNCTION_122();
  }

LABEL_43:
  v94 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D5447ABC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1D560BEE8();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = sub_1D560C0A8();
  v13 = OUTLINED_FUNCTION_4(v12);
  v26 = v14;
  v27 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v24 = *a1;
  v25 = a1[1];
  OUTLINED_FUNCTION_3_179();
  v20 = *MEMORY[0x1E6968F58];
  v21 = *(v6 + 104);
  v21(v11, v20, v3);
  sub_1D4F53278();
  sub_1D560C088();
  v22 = *(v6 + 8);
  v22(v11, v3);
  if (!v25)
  {
    return (*(v26 + 32))(a2, v19, v27);
  }

  v21(v11, v20, v3);
  sub_1D560C088();
  v22(v11, v3);
  return (*(v26 + 8))(v19, v27);
}

uint64_t static NSFileManager.MusicKit_LibraryContainerizationPolicy.== infix(_:_:)(void *a1, void *a2)
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

  return sub_1D5616168();
}

uint64_t NSFileManager.MusicKit_LibraryContainerizationPolicy.hash(into:)()
{
  if (!v0[1])
  {
    return MEMORY[0x1DA6EC0D0](0);
  }

  v1 = *v0;
  MEMORY[0x1DA6EC0D0](1);

  return sub_1D5614E28();
}

uint64_t NSFileManager.MusicKit_LibraryContainerizationPolicy.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D56162D8();
  if (v2)
  {
    MEMORY[0x1DA6EC0D0](1);
    sub_1D5614E28();
  }

  else
  {
    MEMORY[0x1DA6EC0D0](0);
  }

  return sub_1D5616328();
}

uint64_t sub_1D5447E50()
{
  v2 = *v0;
  sub_1D56162D8();
  NSFileManager.MusicKit_LibraryContainerizationPolicy.hash(into:)();
  return sub_1D5616328();
}

unint64_t sub_1D5447E9C()
{
  result = qword_1EC7F69C0;
  if (!qword_1EC7F69C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F69C0);
  }

  return result;
}

uint64_t sub_1D5447EF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5447F40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D5447F94(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1D5447FAC(void *result, int a2)
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

void sub_1D5447FDC(uint64_t a1@<X8>)
{
  v2 = v1;
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v25 - v6;
  v8 = sub_1D560C0A8();
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v8);
  v25[0] = 0;
  v9 = [v2 URLForDirectory:14 inDomain:1 appropriateForURL:0 create:1 error:v25];
  v10 = v25[0];
  if (v9)
  {
    v11 = v9;
    sub_1D560BFC8();
    v12 = v10;

    sub_1D4E6C9CC(a1, &unk_1EC7E9CA8, &unk_1D561D1D0);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
    sub_1D4F5A3D0(v7, a1);
  }

  else
  {
    v13 = v25[0];
    v14 = sub_1D560BE98();

    swift_willThrow();
    if (qword_1EC7E8DD8 != -1)
    {
      swift_once();
    }

    v15 = sub_1D560C758();
    __swift_project_value_buffer(v15, qword_1EC87C0F8);
    v16 = v14;
    v17 = sub_1D560C738();
    v18 = sub_1D56156C8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138543362;
      v21 = v14;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_1D4E3F000, v17, v18, "Failed to get application support directory URL: %{public}@.", v19, 0xCu);
      sub_1D4E6C9CC(v20, &unk_1EC7F2C00, &qword_1D5623260);
      MEMORY[0x1DA6ED200](v20, -1, -1);
      MEMORY[0x1DA6ED200](v19, -1, -1);
    }

    else
    {
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t CreditArtistPropertyProvider.name.getter()
{
  v1 = (v0 + *(type metadata accessor for CreditArtistPropertyProvider() + 20));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t type metadata accessor for CreditArtistPropertyProvider()
{
  result = qword_1EC7F69F8;
  if (!qword_1EC7F69F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CreditArtistPropertyProvider.name.setter()
{
  OUTLINED_FUNCTION_206();
  v3 = (v1 + *(type metadata accessor for CreditArtistPropertyProvider() + 20));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t CreditArtistPropertyProvider.roleNames.getter()
{
  v1 = *(v0 + *(type metadata accessor for CreditArtistPropertyProvider() + 24));
}

uint64_t CreditArtistPropertyProvider.roleNames.setter()
{
  v2 = *(OUTLINED_FUNCTION_17_85() + 24);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t CreditArtistPropertyProvider.subscript.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1B40, &qword_1D5642560);
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002CLL, 0x80000001D568E230);
    v47 = a1;
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    goto LABEL_32;
  }

  v19 = v18;
  v20 = qword_1EC7E9058;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_9_118();
  }

  *&v45 = qword_1EC87C2A0;
  v47 = v19;
  sub_1D4EC5794(&qword_1EC7F69C8, &qword_1EC7F1B40, &qword_1D5642560);
  if (sub_1D5614D18())
  {
    sub_1D4F39AB0(v2, v17, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v21 = sub_1D56140F8();
    OUTLINED_FUNCTION_10(v17);
    if (!v22)
    {
      *(&v46 + 1) = v21;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v45);
      (*(*(v21 - 8) + 32))(boxed_opaque_existential_0, v17, v21);
LABEL_14:

      goto LABEL_15;
    }

    v23 = &qword_1EC7E9CA0;
    v24 = &unk_1D561A0C0;
    v25 = v17;
    goto LABEL_8;
  }

  v27 = qword_1EC7E9060;

  if (v27 != -1)
  {
    OUTLINED_FUNCTION_8_126();
  }

  v28 = OUTLINED_FUNCTION_1_2(qword_1EC87C2A8);

  if (v28)
  {
    v29 = (v2 + *(type metadata accessor for CreditArtistPropertyProvider() + 20));
    v30 = v29[1];
    if (v30)
    {
      v31 = *v29;
      v32 = v29[1];

      v33 = MEMORY[0x1E69E6158];
    }

    else
    {
      v33 = 0;
      v31 = 0;
    }

    *a2 = v31;
    a2[1] = v30;
    a2[2] = 0;
    a2[3] = v33;
  }

  else
  {
    v36 = qword_1EC7E9068;

    if (v36 != -1)
    {
      OUTLINED_FUNCTION_7_125();
    }

    v37 = OUTLINED_FUNCTION_1_2(qword_1EC87C2B0);

    if ((v37 & 1) == 0)
    {
      v40 = qword_1EC7E9070;

      if (v40 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v41 = OUTLINED_FUNCTION_1_2(qword_1EC7F1AF0);

      if ((v41 & 1) == 0)
      {
        while (1)
        {
          *&v45 = 0;
          *(&v45 + 1) = 0xE000000000000000;
          sub_1D5615B68();
          MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
          v47 = a1;
          sub_1D560CDE8();
          sub_1D5615D48();
          OUTLINED_FUNCTION_33_0();
LABEL_32:
          OUTLINED_FUNCTION_3_78();
          __break(1u);
        }
      }

      v42 = type metadata accessor for CreditArtistPropertyProvider();
      sub_1D4F39AB0(v3 + *(v42 + 28), v11, &off_1EC7EB5B0, &unk_1D5632170);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
      OUTLINED_FUNCTION_10(v11);
      if (!v22)
      {
        *(&v46 + 1) = v43;
        v44 = __swift_allocate_boxed_opaque_existential_0(&v45);
        (*(*(v43 - 8) + 32))(v44, v11, v43);
        goto LABEL_14;
      }

      v23 = &off_1EC7EB5B0;
      v24 = &unk_1D5632170;
      v25 = v11;
LABEL_8:
      result = sub_1D4E50004(v25, v23, v24);
      v45 = 0u;
      v46 = 0u;
LABEL_15:
      v35 = v46;
      *a2 = v45;
      *(a2 + 1) = v35;
      return result;
    }

    v38 = *(v2 + *(type metadata accessor for CreditArtistPropertyProvider() + 24));
    if (v38)
    {
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    }

    else
    {
      v39 = 0;
    }

    *a2 = v38;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = v39;
  }

  return result;
}

uint64_t sub_1D5448AB0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  sub_1D4F39AB0(a1, &v5, &qword_1EC7E9F98, &qword_1D561C420);

  return CreditArtistPropertyProvider.subscript.setter();
}

uint64_t CreditArtistPropertyProvider.subscript.setter()
{
  OUTLINED_FUNCTION_206();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1B40, &qword_1D5642560);
  OUTLINED_FUNCTION_71();
  if (swift_dynamicCastClass())
  {
    v1 = qword_1EC7E9070;
    swift_retain_n();
    if (v1 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    sub_1D4EC5794(&qword_1EC7F69C8, &qword_1EC7F1B40, &qword_1D5642560);
    v2 = sub_1D5614D18();

    if (v2)
    {
      swift_getKeyPath();
      sub_1D544AA80(&qword_1EC7F69D0, type metadata accessor for CreditArtistPropertyProvider);
      sub_1D5612238();

      return sub_1D4E50004(v0, &qword_1EC7E9F98, &qword_1D561C420);
    }

    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D567EB20);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002CLL, 0x80000001D568E230);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
  }

  result = OUTLINED_FUNCTION_3_78();
  __break(1u);
  return result;
}

void (*CreditArtistPropertyProvider.subscript.modify())(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_206();
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *v2 = v3;
  v3[8] = v0;
  v3[9] = v1;
  CreditArtistPropertyProvider.subscript.getter(v0, v3);
  return sub_1D5448DEC;
}

void sub_1D5448DEC(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 64);
  v3 = *(*a1 + 72);
  if (a2)
  {
    OUTLINED_FUNCTION_30_63();

    CreditArtistPropertyProvider.subscript.setter();
    v5 = OUTLINED_FUNCTION_24();
    sub_1D4E50004(v5, v6, &qword_1D561C420);
  }

  else
  {

    CreditArtistPropertyProvider.subscript.setter();
  }

  free(v2);
}

uint64_t CreditArtistPropertyProvider.merge<A>(_:with:)(void *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  v6 = OUTLINED_FUNCTION_22(v5);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F69D8, &qword_1D5665BC0);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;
  v20 = type metadata accessor for CreditArtistPropertyProvider();
  v21 = OUTLINED_FUNCTION_14(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F69E0, &unk_1D5665BC8);
  v27 = swift_dynamicCastClass();
  if (!v27)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002CLL, 0x80000001D568E230);
    v40 = a1;
    v35 = *(v4 + *MEMORY[0x1E6974E08]);
    sub_1D560D0C8();
    sub_1D5616138();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v36 = 59;
LABEL_14:
    v37 = v36;
    result = OUTLINED_FUNCTION_3_78();
    __break(1u);
    return result;
  }

  v28 = v27;
  sub_1D4E628D4(a2, &v39);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
    sub_1D4E50004(v19, &qword_1EC7F69D8, &qword_1D5665BC0);
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000035, 0x80000001D568E260);
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v36 = 62;
    goto LABEL_14;
  }

  __swift_storeEnumTagSinglePayload(v19, 0, 1, v20);
  sub_1D544938C(v19, v26);
  v29 = qword_1EC7E9070;

  if (v29 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v39 = qword_1EC7F1AF0;
  v40 = v28;
  sub_1D4EC5794(&qword_1EC7F69E8, &qword_1EC7F69E0, &unk_1D5665BC8);
  v30 = sub_1D5614D18();

  if ((v30 & 1) == 0)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000029, 0x80000001D568E2A0);
    v40 = v28;
    sub_1D5615D48();
    OUTLINED_FUNCTION_28();
    v36 = 69;
    goto LABEL_14;
  }

  sub_1D4F39AB0(v26 + *(v20 + 28), v11, &off_1EC7EB5B0, &unk_1D5632170);
  sub_1D4F1C404(v26);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_57(v11, 1, v31);
  v32 = v38;
  if (v33)
  {
    sub_1D4F39AB0(v38 + *(v20 + 28), v13, &off_1EC7EB5B0, &unk_1D5632170);
    OUTLINED_FUNCTION_57(v11, 1, v31);
    if (!v33)
    {
      sub_1D4E50004(v11, &off_1EC7EB5B0, &unk_1D5632170);
    }
  }

  else
  {
    (*(*(v31 - 8) + 32))(v13, v11, v31);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v31);
  }

  return sub_1D4E68940(v13, v32 + *(v20 + 28), &off_1EC7EB5B0, &unk_1D5632170);
}

uint64_t sub_1D544938C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CreditArtistPropertyProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D54493F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D5622FA0;
  if (qword_1EC7E9058 != -1)
  {
    OUTLINED_FUNCTION_9_118();
  }

  *(v0 + 32) = qword_1EC87C2A0;
  v1 = qword_1EC7E9060;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_8_126();
  }

  *(v0 + 40) = qword_1EC87C2A8;
  v2 = qword_1EC7E9068;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_7_125();
  }

  *(v0 + 48) = qword_1EC87C2B0;
  v3 = qword_1EC7E9070;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  *(v0 + 56) = qword_1EC7F1AF0;
  qword_1EC87C670 = v0;
}

uint64_t CreditArtistPropertyProvider.knownProperties.getter()
{
  v1 = *(v0 + *(type metadata accessor for CreditArtistPropertyProvider() + 32));
}

uint64_t CreditArtistPropertyProvider.identifierSet.getter()
{
  v0 = *(type metadata accessor for CreditArtistPropertyProvider() + 36);
  v1 = sub_1D560D838();
  OUTLINED_FUNCTION_14(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_104();

  return v5(v4);
}

uint64_t CreditArtistPropertyProvider.identifierSet.setter()
{
  v2 = *(OUTLINED_FUNCTION_17_85() + 36);
  v3 = sub_1D560D838();
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t CreditArtistPropertyProvider.type.getter()
{
  v0 = *(type metadata accessor for CreditArtistPropertyProvider() + 40);
  v1 = sub_1D5610088();
  OUTLINED_FUNCTION_14(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_104();

  return v5(v4);
}

uint64_t CreditArtistPropertyProvider.type.setter()
{
  v2 = *(OUTLINED_FUNCTION_17_85() + 40);
  v3 = sub_1D5610088();
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t CreditArtistPropertyProvider.href.getter()
{
  v1 = (v0 + *(type metadata accessor for CreditArtistPropertyProvider() + 44));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t CreditArtistPropertyProvider.href.setter()
{
  OUTLINED_FUNCTION_206();
  v3 = (v1 + *(type metadata accessor for CreditArtistPropertyProvider() + 44));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t CreditArtistPropertyProvider.rawAttributes.getter()
{
  v1 = *(v0 + *(type metadata accessor for CreditArtistPropertyProvider() + 48));
}

uint64_t CreditArtistPropertyProvider.rawRelationships.getter()
{
  v1 = *(v0 + *(type metadata accessor for CreditArtistPropertyProvider() + 52));
}

uint64_t CreditArtistPropertyProvider.rawAssociations.getter()
{
  v1 = *(v0 + *(type metadata accessor for CreditArtistPropertyProvider() + 56));
}

uint64_t CreditArtistPropertyProvider.rawMetadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for CreditArtistPropertyProvider() + 60));
}

uint64_t static CreditArtistPropertyProvider.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_4(v96);
  v93 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v91 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v92 = v13;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF608, &unk_1D5632420);
  OUTLINED_FUNCTION_14(v94);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v95 = v17;
  v18 = sub_1D56140F8();
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v90 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB8, &unk_1D561B9C0);
  OUTLINED_FUNCTION_22(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11();
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v90 - v38;
  v40 = *(v37 + 56);
  v97 = a1;
  sub_1D4F39AB0(a1, &v90 - v38, &qword_1EC7E9CA0, &unk_1D561A0C0);
  v41 = a2;
  sub_1D4F39AB0(a2, &v39[v40], &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_10(v39);
  if (v42)
  {
    OUTLINED_FUNCTION_10(&v39[v40]);
    if (v42)
    {
      sub_1D4E50004(v39, &qword_1EC7E9CA0, &unk_1D561A0C0);
      goto LABEL_14;
    }

LABEL_9:
    v46 = &qword_1EC7E9FB8;
    v47 = &unk_1D561B9C0;
    v48 = v39;
LABEL_10:
    sub_1D4E50004(v48, v46, v47);
    goto LABEL_11;
  }

  sub_1D4F39AB0(v39, v32, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_10(&v39[v40]);
  if (v42)
  {
    v43 = *(v21 + 8);
    v44 = OUTLINED_FUNCTION_71();
    v45(v44);
    goto LABEL_9;
  }

  (*(v21 + 32))(v26, &v39[v40], v18);
  OUTLINED_FUNCTION_4_139();
  sub_1D544AA80(v51, v52);
  v53 = sub_1D5614D18();
  v54 = *(v21 + 8);
  v54(v26, v18);
  v55 = OUTLINED_FUNCTION_71();
  (v54)(v55);
  sub_1D4E50004(v39, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if ((v53 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v56 = type metadata accessor for CreditArtistPropertyProvider();
  v57 = v56[5];
  v58 = v97;
  v59 = (v97 + v57);
  v60 = *(v97 + v57 + 8);
  v61 = v41;
  v62 = (v41 + v57);
  v63 = v62[1];
  if (v60)
  {
    if (!v63)
    {
      goto LABEL_11;
    }

    v64 = *v59 == *v62 && v60 == v63;
    if (!v64 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v63)
  {
    goto LABEL_11;
  }

  v65 = OUTLINED_FUNCTION_26_32(v56[6]);
  if (v65)
  {
    if (!v66 || (sub_1D4EF81E0(v65, v66) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v66)
  {
    goto LABEL_11;
  }

  v67 = v56[7];
  v68 = v95;
  v69 = *(v94 + 48);
  sub_1D4F39AB0(v58 + v67, v95, &off_1EC7EB5B0, &unk_1D5632170);
  sub_1D4F39AB0(v61 + v67, v68 + v69, &off_1EC7EB5B0, &unk_1D5632170);
  v70 = v96;
  OUTLINED_FUNCTION_57(v68, 1, v96);
  if (!v42)
  {
    v71 = v92;
    sub_1D4F39AB0(v68, v92, &off_1EC7EB5B0, &unk_1D5632170);
    OUTLINED_FUNCTION_57(v68 + v69, 1, v70);
    if (!v72)
    {
      v73 = v93;
      v74 = v68 + v69;
      v75 = v91;
      (*(v93 + 32))(v91, v74, v70);
      sub_1D544A768(&qword_1EC7EF660, &qword_1EC7EF668);
      v76 = sub_1D5614D18();
      v77 = *(v73 + 8);
      v77(v75, v70);
      v77(v71, v70);
      sub_1D4E50004(v68, &off_1EC7EB5B0, &unk_1D5632170);
      if ((v76 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_38;
    }

    (*(v93 + 8))(v71, v70);
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_57(v68 + v69, 1, v70);
  if (!v42)
  {
LABEL_36:
    v46 = &qword_1EC7EF608;
    v47 = &unk_1D5632420;
    v48 = v68;
    goto LABEL_10;
  }

  sub_1D4E50004(v68, &off_1EC7EB5B0, &unk_1D5632170);
LABEL_38:
  OUTLINED_FUNCTION_26_32(v56[8]);
  sub_1D4EF6F7C();
  if ((v78 & 1) == 0)
  {
    goto LABEL_11;
  }

  v79 = v56[9];
  if ((sub_1D560D6E8() & 1) == 0)
  {
    goto LABEL_11;
  }

  v80 = v56[10];
  if ((sub_1D4F3B22C() & 1) == 0)
  {
    goto LABEL_11;
  }

  v81 = v56[11];
  v82 = (v58 + v81);
  v83 = *(v58 + v81 + 8);
  v84 = (v61 + v81);
  v85 = v84[1];
  if (v83)
  {
    if (!v85)
    {
      goto LABEL_11;
    }

    v86 = *v82 == *v84 && v83 == v85;
    if (!v86 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v85)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_26_32(v56[12]);
  sub_1D4F286E0();
  if (v87)
  {
    OUTLINED_FUNCTION_26_32(v56[13]);
    sub_1D4F286E0();
    if (v88)
    {
      OUTLINED_FUNCTION_26_32(v56[14]);
      sub_1D4F286E0();
      if (v89)
      {
        OUTLINED_FUNCTION_26_32(v56[15]);
        sub_1D4F286E0();
        return v49 & 1;
      }
    }
  }

LABEL_11:
  v49 = 0;
  return v49 & 1;
}

void CreditArtistPropertyProvider.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_4(v4);
  v45 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v44 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  v16 = sub_1D56140F8();
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v44 - v29;
  sub_1D4F39AB0(v2, &v44 - v29, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_57(v30, 1, v16);
  if (v31)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v19 + 32))(v24, v30, v16);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_4_139();
    sub_1D544AA80(v32, v33);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v19 + 8))(v24, v16);
  }

  v34 = type metadata accessor for CreditArtistPropertyProvider();
  v35 = (v2 + v34[5]);
  if (v35[1])
  {
    v36 = *v35;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v37 = *(v2 + v34[6]);
  if (v37)
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F06928(a1, v37);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v2 + v34[7], v15, &off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_57(v15, 1, v4);
  if (v31)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v39 = v44;
    v38 = v45;
    (*(v45 + 32))(v44, v15, v4);
    OUTLINED_FUNCTION_27();
    sub_1D544A768(&qword_1EC7EF6C0, &qword_1EC7EC7E8);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v38 + 8))(v39, v4);
  }

  OUTLINED_FUNCTION_32_2(v34[8]);
  sub_1D4F070FC();
  v40 = v34[9];
  sub_1D560D838();
  sub_1D544AA80(&qword_1EDD53DC0, MEMORY[0x1E6974F58]);
  OUTLINED_FUNCTION_24();
  sub_1D5614CB8();
  v41 = v34[10];
  sub_1D5610088();
  sub_1D544AA80(&qword_1EDD53358, MEMORY[0x1E6975BC8]);
  OUTLINED_FUNCTION_24();
  sub_1D5614CB8();
  v42 = (v2 + v34[11]);
  if (v42[1])
  {
    v43 = *v42;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_32_2(v34[12]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v34[13]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v34[14]);
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2(v34[15]);
  sub_1D4F31AC0();
}

uint64_t CreditArtistPropertyProvider.hashValue.getter()
{
  sub_1D56162D8();
  CreditArtistPropertyProvider.hash(into:)(v1);
  return sub_1D5616328();
}

void (*sub_1D544A464(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  CreditArtistPropertyProvider.subscript.getter(a2, v5);
  return sub_1D5448DEC;
}

uint64_t sub_1D544A4E0()
{
  sub_1D56162D8();
  CreditArtistPropertyProvider.hash(into:)(v1);
  return sub_1D5616328();
}

uint64_t sub_1D544A51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D544AA80(&qword_1EC7F69D0, type metadata accessor for CreditArtistPropertyProvider);

  return MEMORY[0x1EEDD02B8](a1, a4, a3, v7);
}

uint64_t sub_1D544A5D4(uint64_t a1)
{
  v2 = sub_1D544AA80(&qword_1EC7F69D0, type metadata accessor for CreditArtistPropertyProvider);

  return MEMORY[0x1EEDD02B0](a1, v2);
}

uint64_t sub_1D544A650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D544AA80(&qword_1EC7F69F0, type metadata accessor for CreditArtistPropertyProvider);

  return MEMORY[0x1EEDD0328](a1, a3, a2, a4, v8);
}

uint64_t sub_1D544A6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D544AA80(&qword_1EC7F6A08, type metadata accessor for CreditArtistPropertyProvider);

  return MEMORY[0x1EEDD0320](a1, a2, a3, v6);
}

uint64_t sub_1D544A768(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA448, &unk_1D561D110);
    sub_1D544AA80(a2, MEMORY[0x1E6976F28]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D544A8BC()
{
  sub_1D4F1C90C(319, &qword_1EDD5F190, MEMORY[0x1E6976F68], MEMORY[0x1E69E6720]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1D4F18AF4();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1D4E6D600(319, &qword_1EDD52770, &qword_1EC7EABD8, &unk_1D561D780);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_1D4E6D600(319, &qword_1EDD53BB0, &qword_1EC7EA448, &unk_1D561D110);
      if (v7 > 0x3F)
      {
        return v5;
      }

      sub_1D4F1C90C(319, &qword_1EDD5D050, MEMORY[0x1E6974D30], MEMORY[0x1E69E62F8]);
      if (v8 > 0x3F)
      {
        return v5;
      }

      v5 = sub_1D560D838();
      if (v9 > 0x3F)
      {
        return v5;
      }

      v5 = sub_1D5610088();
      if (v10 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_1D4E5CF94();
        v1 = v11;
        if (v12 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1D544AA80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MusicPlayer.ItemState.__allocating_init(_:container:player:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 48);
  v6 = *(v3 + 52);
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_61();
  MusicPlayer.ItemState.init(_:container:player:)(v8, v9, a3);
  return v7;
}

uint64_t sub_1D544AB1C@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, char *a3@<X8>)
{
  v105 = a3;
  v5 = sub_1D560D258();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_59_0();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v95 - v15;
  v17 = a2[1];
  v18 = a2[2];
  v102 = *a2;
  v103 = v18;
  v104 = a2[3];
  v100 = a2[4];
  v101 = *(a2 + 1);
  v19 = a1[3];
  v20 = a1[4];
  v21 = OUTLINED_FUNCTION_86_0();
  __swift_project_boxed_opaque_existential_1(v21, v22);
  OUTLINED_FUNCTION_82();
  result = sub_1D5612EF8();
  if ((result & 1) == 0)
  {
    v35 = 9;
LABEL_39:
    *v105 = v35;
    return result;
  }

  v98 = v17;
  v97 = v13;
  v99 = v5;
  v111 = 1;
  if (qword_1EDD544A0 != -1)
  {
    OUTLINED_FUNCTION_0_235();
  }

  v24 = sub_1D560C758();
  v25 = __swift_project_value_buffer(v24, qword_1EDD76AD8);
  v26 = sub_1D560C738();
  v27 = sub_1D56156E8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_142();
    v96 = v8;
    v29 = v28;
    v30 = v25;
    v31 = OUTLINED_FUNCTION_138_0();
    v109 = v31;
    *v29 = 136446210;
    v32 = sub_1D544FCA0();
    v34 = sub_1D4E6835C(v32, v33, &v109);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_1D4E3F000, v26, v27, "%{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    v25 = v30;
    OUTLINED_FUNCTION_122();
    v8 = v96;
    OUTLINED_FUNCTION_122();
  }

  v36 = a1[3];
  v37 = a1[4];
  v38 = OUTLINED_FUNCTION_86_0();
  __swift_project_boxed_opaque_existential_1(v38, v39);
  OUTLINED_FUNCTION_10_114();
  sub_1D5612F18();
  v40 = (*(v8 + 88))(v16, v99);
  if (v40 == *MEMORY[0x1E6974E38])
  {
    v41 = v103;
    LOBYTE(v109) = v102;
    OUTLINED_FUNCTION_48_38();
    BYTE2(v109) = v41;
    BYTE3(v109) = v104;
    BYTE4(v109) = v100;
    v110 = v101;
    if (sub_1D544FE48(a1, &v109))
    {
LABEL_9:
      LOBYTE(v42) = 2;
LABEL_34:
      v111 = v42;
      goto LABEL_35;
    }

    v55 = OUTLINED_FUNCTION_2_176();
    if (sub_1D544FE9C(v55, v56))
    {
      goto LABEL_30;
    }

    v57 = OUTLINED_FUNCTION_2_176();
    if ((sub_1D544FF50(v57, v58) & 1) == 0)
    {
      v59 = OUTLINED_FUNCTION_2_176();
      if ((sub_1D5450108(v59, v60) & 1) == 0)
      {
        v61 = OUTLINED_FUNCTION_2_176();
        if (sub_1D5450344(v61, v62))
        {
LABEL_24:
          LOBYTE(v42) = 7;
          goto LABEL_34;
        }

        v85 = OUTLINED_FUNCTION_62_37();
        sub_1D5450654(v85, v86);
        v42 = v109;
        if (v109 == 11)
        {
          v87 = OUTLINED_FUNCTION_62_37();
          sub_1D5450780(v87, v88);
          v42 = v109;
        }

        goto LABEL_42;
      }

LABEL_30:
      LOBYTE(v42) = 3;
      goto LABEL_34;
    }

LABEL_33:
    LOBYTE(v42) = 5;
    goto LABEL_34;
  }

  v43 = v104;
  if (v40 == *MEMORY[0x1E6974E48])
  {
    OUTLINED_FUNCTION_53_32();
    BYTE2(v109) = v103;
    BYTE3(v109) = v43;
    v44 = OUTLINED_FUNCTION_5_136();
    if (sub_1D544FF50(v44, v45))
    {
      OUTLINED_FUNCTION_6_137();
      if ((sub_1D5612FB8() & 1) == 0)
      {
        OUTLINED_FUNCTION_6_137();
        if ((sub_1D5612F48() & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_32:
        v111 = 10;
        goto LABEL_38;
      }
    }

    OUTLINED_FUNCTION_6_137();
    if ((sub_1D5612FB8() & 1) != 0 || (v46 = OUTLINED_FUNCTION_62_37(), sub_1D5450858(v46, v47), v42 = v109, v109 == 11))
    {
      OUTLINED_FUNCTION_53_32();
      v48 = v104;
      BYTE2(v109) = v103;
      BYTE3(v109) = v104;
      v49 = OUTLINED_FUNCTION_5_136();
      if (sub_1D5450344(v49, v50))
      {
        OUTLINED_FUNCTION_6_137();
        v48 = v104;
        if ((sub_1D5612FB8() & 1) == 0)
        {
          OUTLINED_FUNCTION_6_137();
          v48 = v104;
          if ((sub_1D5612F48() & 1) == 0)
          {
            goto LABEL_24;
          }
        }
      }

      v52 = v102;
      v51 = v103;
      LOBYTE(v109) = v102;
      OUTLINED_FUNCTION_48_38();
      BYTE2(v109) = v51;
      BYTE3(v109) = v48;
      v53 = OUTLINED_FUNCTION_5_136();
      if (sub_1D544FE48(v53, v54))
      {
        goto LABEL_9;
      }

      LOBYTE(v109) = v52;
      BYTE1(v109) = v26;
      BYTE2(v109) = v51;
      BYTE3(v109) = v48;
LABEL_29:
      v69 = OUTLINED_FUNCTION_5_136();
      if (sub_1D544FE9C(v69, v70))
      {
        goto LABEL_30;
      }

      goto LABEL_32;
    }

    goto LABEL_42;
  }

  if (v40 == *MEMORY[0x1E6974E40])
  {
    v63 = OUTLINED_FUNCTION_62_37();
    sub_1D5450858(v63, v64);
    v42 = v109;
    if (v109 == 11)
    {
      v66 = v102;
      v65 = v103;
      LOBYTE(v109) = v102;
      OUTLINED_FUNCTION_48_38();
      BYTE2(v109) = v65;
      BYTE3(v109) = v43;
      v67 = OUTLINED_FUNCTION_5_136();
      if (sub_1D544FE48(v67, v68))
      {
        goto LABEL_9;
      }

      LOBYTE(v109) = v66;
      BYTE1(v109) = v26;
      BYTE2(v109) = v65;
      BYTE3(v109) = v43;
      goto LABEL_29;
    }

LABEL_42:
    v111 = v42;
    if (v42 != 10)
    {
LABEL_35:
      sub_1D4E628D4(a1, &v109);
      sub_1D4E628D4(a1, v108);
      v71 = v25;
      v72 = sub_1D560C738();
      v73 = sub_1D56156E8();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = OUTLINED_FUNCTION_138_0();
        v107 = swift_slowAlloc();
        *v74 = 136446722;
        v106[0] = v42;
        v75 = sub_1D5614DB8();
        sub_1D4E6835C(v75, v76, &v107);
        OUTLINED_FUNCTION_82();

        *(v74 + 4) = v71;
        *(v74 + 12) = 2082;
        sub_1D4E628D4(&v109, v106);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
        v77 = sub_1D5614DB8();
        v79 = v78;
        __swift_destroy_boxed_opaque_existential_1(&v109);
        v80 = sub_1D4E6835C(v77, v79, &v107);

        *(v74 + 14) = v80;
        *(v74 + 22) = 2082;
        __swift_project_boxed_opaque_existential_1(v108, v108[3]);
        OUTLINED_FUNCTION_10_114();
        sub_1D5612F18();
        v81 = sub_1D5614DB8();
        v83 = v82;
        __swift_destroy_boxed_opaque_existential_1(v108);
        v84 = sub_1D4E6835C(v81, v83, &v107);

        *(v74 + 24) = v84;
        _os_log_impl(&dword_1D4E3F000, v72, v73, "Playability status is %{public}s for item: %{public}s for playableItemKind %{public}s.", v74, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_122();
        OUTLINED_FUNCTION_122();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&v109);
        __swift_destroy_boxed_opaque_existential_1(v108);
      }
    }

LABEL_38:
    result = swift_beginAccess();
    v35 = v111;
    goto LABEL_39;
  }

  v109 = 0;
  v110 = 0xE000000000000000;
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D5686E50);
  v89 = a1[3];
  v90 = a1[4];
  v91 = OUTLINED_FUNCTION_86_0();
  __swift_project_boxed_opaque_existential_1(v91, v92);
  v93 = v97;
  OUTLINED_FUNCTION_10_114();
  sub_1D5612F18();
  v94 = v99;
  sub_1D5615D48();
  (*(v8 + 8))(v93, v94);
  OUTLINED_FUNCTION_33_3();
  MEMORY[0x1DA6EAC70](0xD000000000000019);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  result = OUTLINED_FUNCTION_148_6();
  __break(1u);
  return result;
}

uint64_t MusicPlayer.ItemState.init(_:container:player:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v203 = a3;
  v204 = a2;
  v208 = a1;
  v205 = *v3;
  v5 = v205;
  v202 = v205;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440) - 8) + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_48(&v181 - v8);
  v200 = sub_1D560DB08();
  v9 = OUTLINED_FUNCTION_4(v200);
  v190 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_48(&v181 - v14);
  v188 = sub_1D560D838();
  v15 = OUTLINED_FUNCTION_4(v188);
  v186 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v20 - v19);
  v207 = sub_1D560E728();
  v21 = OUTLINED_FUNCTION_4(v207);
  v198 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v201 = v26 - v25;
  v27 = *(v5 + 80);
  OUTLINED_FUNCTION_1_0();
  v206 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v181 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1418, &unk_1D5667650);
  OUTLINED_FUNCTION_4(v41);
  v43 = v42;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v181 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1420, &qword_1D56400B0);
  OUTLINED_FUNCTION_4(v49);
  v51 = v50;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v181 - v55;
  v57 = qword_1EDD5D728;
  LOBYTE(v212[0]) = 4;
  v195 = *(v205 + 88);
  sub_1D544C6E4(v212);
  v58 = v56;
  v59 = v27;
  (*(v51 + 32))(v4 + v57, v58, v49);
  v60 = v206;
  v61 = qword_1EDD5D738;
  sub_1D544C718();
  (*(v43 + 32))(v4 + v61, v48, v41);
  OUTLINED_FUNCTION_36_57();
  *(v4 + *(v62 + 144)) = 0;
  OUTLINED_FUNCTION_36_57();
  *(v4 + *(v63 + 152)) = 0;
  v65 = (v60 + 16);
  v64 = *(v60 + 16);
  (v64)(v40, v208, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1480, &qword_1D5640260);
  v66 = swift_dynamicCast();
  v67 = &qword_1EDD54000;
  v196 = (v60 + 16);
  v205 = v64;
  if (v66)
  {
    __swift_destroy_boxed_opaque_existential_1(v212);
    v68 = *(v195 + 8);
    v69 = v185;
    v182 = v27;
    sub_1D560EC98();
    sub_1D560D588();
    (*(v186 + 8))(v69, v188);
    v70 = v190;
    v71 = *(v190 + 104);
    v72 = v197;
    v71(v197, *MEMORY[0x1E6975040], v200);
    sub_1D5451664(&qword_1EDD5D748, MEMORY[0x1E6975358]);
    v73 = sub_1D5614FC8();
    if (v73 == 2)
    {
      MEMORY[0x1EEE9AC00](v73);
      sub_1D4F257A8();
    }

    v74 = v73;
    v75 = *(v70 + 8);
    v76 = v200;
    v75(v72, v200);
    if (v74)
    {
      goto LABEL_8;
    }

    v77 = v184;
    v71(v184, *MEMORY[0x1E6975030], v76);
    v78 = sub_1D5614FC8();
    if (v78 == 2)
    {
      MEMORY[0x1EEE9AC00](v78);
      sub_1D4F257A8();
    }

    v79 = v78;
    v75(v77, v200);
    if (v79)
    {
LABEL_8:
      v80 = OUTLINED_FUNCTION_16_91();
      v81(v80);
      v59 = v182;
      v64 = v205;
      v60 = v206;
      v65 = v196;
      v67 = &qword_1EDD54000;
    }

    else
    {
      v67 = &qword_1EDD54000;
      if (qword_1EDD544A0 != -1)
      {
        OUTLINED_FUNCTION_0_235();
      }

      v165 = sub_1D560C758();
      __swift_project_value_buffer(v165, qword_1EDD76AD8);
      v166 = v183;
      v167 = v182;
      v65 = v196;
      v64 = v205;
      (v205)(v183, v208, v182);
      v168 = sub_1D560C738();
      v169 = sub_1D56156C8();
      if (OUTLINED_FUNCTION_68_28(v169))
      {
        v170 = OUTLINED_FUNCTION_142();
        v171 = OUTLINED_FUNCTION_138_0();
        v212[0] = v171;
        *v170 = 136446210;
        (v205)(v194, v166, v167);
        v172 = sub_1D5614DB8();
        v174 = v173;
        (*(v206 + 8))(v166, v167);
        v175 = sub_1D4E6835C(v172, v174, v212);
        v65 = v196;

        *(v170 + 4) = v175;
        v64 = v205;
        _os_log_impl(&dword_1D4E3F000, v168, v169, "The correct playability status cannot be guaranteed as the input item %{public}s has not been mapped.", v170, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v171);
        OUTLINED_FUNCTION_122();
        OUTLINED_FUNCTION_122();

        v176 = OUTLINED_FUNCTION_16_91();
        v177(v176);
        v59 = v167;
        v60 = v206;
      }

      else
      {

        v178 = v206;
        (*(v206 + 8))(v166, v167);
        v179 = OUTLINED_FUNCTION_16_91();
        v180(v179);
        v59 = v167;
        v60 = v178;
      }
    }
  }

  (v64)(v199, v208, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
  OUTLINED_FUNCTION_64_29();
  v82 = swift_dynamicCast();
  v83 = v191;
  if (v82)
  {
    sub_1D4E48324(v210, v212);
    OUTLINED_FUNCTION_36_57();
    (v64)(v4 + *(v84 + 120), v208, v59);
    OUTLINED_FUNCTION_36_57();
    sub_1D4EC76A8(v204, v4 + *(v85 + 128));
    InternalMusicPlayer.queue(for:)(&unk_1F50A3B78);
    OUTLINED_FUNCTION_36_57();
    *(v4 + *(v86 + 136)) = v87;
    if (qword_1EDD55F58 != -1)
    {
      OUTLINED_FUNCTION_32_4();
    }

    v88 = qword_1EDD55F60;
    swift_getKeyPath();
    swift_getKeyPath();
    v190 = v88;
    OUTLINED_FUNCTION_86_0();
    sub_1D560C8F8();

    LODWORD(v201) = LOBYTE(v210[0]);
    LODWORD(v200) = BYTE1(v210[0]);
    LODWORD(v199) = BYTE2(v210[0]);
    LODWORD(v198) = BYTE3(v210[0]);
    LODWORD(v197) = BYTE4(v210[0]);
    v207 = *(&v210[0] + 1);
    if (v67[148] != -1)
    {
      OUTLINED_FUNCTION_0_235();
    }

    v89 = sub_1D560C758();
    v90 = __swift_project_value_buffer(v89, qword_1EDD76AD8);
    v91 = v189;
    OUTLINED_FUNCTION_64_29();
    (v64)();
    OUTLINED_FUNCTION_64_29();
    (v64)();
    sub_1D4E628D4(v212, v210);
    v188 = v90;
    v92 = sub_1D560C738();
    v93 = sub_1D56156E8();
    if (os_log_type_enabled(v92, v93))
    {
      v64 = OUTLINED_FUNCTION_138_0();
      v186 = swift_slowAlloc();
      v209 = v186;
      *v64 = 136446722;
      OUTLINED_FUNCTION_45_5();
      swift_getDynamicType();
      v94 = sub_1D5616458();
      v184 = v92;
      v95 = v94;
      v96 = v91;
      v97 = v83;
      v99 = v98;
      LODWORD(v185) = v93;
      v65 = *(v60 + 8);
      v65(v96, v59);
      v100 = sub_1D4E6835C(v95, v99, &v209);

      *(v64 + 4) = v100;
      *(v64 + 12) = 2082;
      (v205)(v194, v97, v59);
      v101 = sub_1D5614DB8();
      v103 = v102;
      v104 = OUTLINED_FUNCTION_45_5();
      v191 = v65;
      (v65)(v104);
      v105 = sub_1D4E6835C(v101, v103, &v209);

      *(v64 + 14) = v105;
      *(v64 + 22) = 2082;
      v106 = sub_1D544C748(v210);
      v108 = v107;
      __swift_destroy_boxed_opaque_existential_1(v210);
      v109 = sub_1D4E6835C(v106, v108, &v209);

      *(v64 + 24) = v109;
      v110 = v184;
      _os_log_impl(&dword_1D4E3F000, v184, v185, "Initial playability information for %{public}s with ID %{public}s: %{public}s", v64, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v210);
      v111 = *(v60 + 8);
      (v111)(v83, v59);
      v112 = OUTLINED_FUNCTION_45_5();
      v191 = v111;
      v111(v112);
    }

    v113 = v192;
    v114 = OUTLINED_FUNCTION_14_88();
    sub_1D544AB1C(v114, v115, v116);
    v117 = v209;
    if (v209 == 10)
    {
      v118 = OUTLINED_FUNCTION_43_41();
      (v64)(v118);
      v119 = sub_1D560C738();
      v120 = sub_1D56156E8();
      if (OUTLINED_FUNCTION_68_28(v120))
      {
        v121 = OUTLINED_FUNCTION_142();
        v122 = OUTLINED_FUNCTION_138_0();
        *&v210[0] = v122;
        v123 = OUTLINED_FUNCTION_37_45(4.8751e-34);
        v124(v123);
        sub_1D5614DB8();
        v125 = OUTLINED_FUNCTION_21_75();
        v126(v125);
        v127 = sub_1D4E6835C(v65, v113, v210);

        *(v121 + 4) = v127;
        _os_log_impl(&dword_1D4E3F000, v119, v120, "Initial item state for item, %{public}s, returned playable.", v121, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v122);
LABEL_22:
        OUTLINED_FUNCTION_122();
        OUTLINED_FUNCTION_122();

LABEL_24:
        v141 = v59;
        v142 = v195;
        OUTLINED_FUNCTION_54_0();
        LOBYTE(v209) = v117;
        sub_1D544D094(&v209);
        swift_endAccess();
        v143 = OUTLINED_FUNCTION_14_88();
        sub_1D544D0DC(v143, v144, v145);
        sub_1D544D478(&v209);
        OUTLINED_FUNCTION_36_57();
        v147 = *(v4 + *(v146 + 136));
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2AD0, &unk_1D5640100);
        sub_1D4E62A60(&qword_1EDD5D2E0, &unk_1EC7F2AD0, &unk_1D5640100);
        *&v210[0] = sub_1D560C938();
        v148 = OUTLINED_FUNCTION_57_36();
        swift_weakInit();
        v149 = swift_allocObject();
        v149[2] = v141;
        v149[3] = v142;
        v149[4] = v148;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1290, &qword_1D563F8C0);
        sub_1D4E62A60(&unk_1EDD5D890, &qword_1EC7F1290, &qword_1D563F8C0);
        v150 = sub_1D560C948();

        OUTLINED_FUNCTION_36_57();
        v152 = *(v151 + 152);
        v153 = *(v4 + v152);
        *(v4 + v152) = v150;

        type metadata accessor for UserStateViewModel();
        sub_1D5451664(&qword_1EDD55F50, type metadata accessor for UserStateViewModel);
        *&v210[0] = sub_1D560C838();
        v154 = OUTLINED_FUNCTION_57_36();
        swift_weakInit();
        v155 = swift_allocObject();
        v155[2] = v141;
        v155[3] = v142;
        v155[4] = v154;
        sub_1D560C898();
        v156 = sub_1D560C948();

        OUTLINED_FUNCTION_36_57();
        v158 = *(v157 + 144);
        v159 = *(v4 + v158);
        *(v4 + v158) = v156;

        v160 = sub_1D5615458();
        v161 = v193;
        __swift_storeEnumTagSinglePayload(v193, 1, 1, v160);
        v162 = OUTLINED_FUNCTION_57_36();
        swift_weakInit();

        v163 = swift_allocObject();
        v163[2] = 0;
        v163[3] = 0;
        v163[4] = v141;
        v163[5] = v142;
        v163[6] = v162;
        sub_1D51ECB60(0, 0, v161, &unk_1D5665DF8, v163);

        sub_1D4E765C8(v204, &qword_1EC7EEC40, &unk_1D561C070);
        (*(v206 + 8))(v208, v141);
        __swift_destroy_boxed_opaque_existential_1(v212);
        return v4;
      }
    }

    else
    {
      v128 = v187;
      v129 = OUTLINED_FUNCTION_43_41();
      (v64)(v129);
      v119 = sub_1D560C738();
      v130 = sub_1D56156E8();
      if (OUTLINED_FUNCTION_68_28(v130))
      {
        v131 = swift_slowAlloc();
        *&v210[0] = swift_slowAlloc();
        v132 = OUTLINED_FUNCTION_37_45(4.8752e-34);
        v133(v132);
        sub_1D5614DB8();
        v134 = OUTLINED_FUNCTION_21_75();
        v135(v134);
        v136 = sub_1D4E6835C(v65, v128, v210);

        *(v131 + 4) = v136;
        *(v131 + 12) = 2082;
        LOBYTE(v209) = v117;
        v137 = sub_1D5614DB8();
        v139 = sub_1D4E6835C(v137, v138, v210);

        *(v131 + 14) = v139;
        _os_log_impl(&dword_1D4E3F000, v119, v130, "Initial item state for item, %{public}s, returned unplayable with reason %{public}s", v131, 0x16u);
        swift_arrayDestroy();
        goto LABEL_22;
      }
    }

    v205 = (v60 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v140 = OUTLINED_FUNCTION_45_5();
    (v191)(v140);
    goto LABEL_24;
  }

  v211 = 0;
  memset(v210, 0, sizeof(v210));
  sub_1D4E765C8(v210, &qword_1EC7F3B00, &qword_1D5650210);
  v212[0] = 0;
  v212[1] = 0xE000000000000000;
  sub_1D5615B68();
  OUTLINED_FUNCTION_33_3();
  MEMORY[0x1DA6EAC70](0xD00000000000006ALL);
  sub_1D5616138();
  result = OUTLINED_FUNCTION_148_6();
  __break(1u);
  return result;
}

unint64_t sub_1D544C748(void *a1)
{
  v2 = sub_1D560D258();
  v3 = *(v2 - 8);
  v82 = v2;
  v83 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v81 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D560D238();
  v7 = *(v6 - 8);
  v79 = v6;
  v80 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v78 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = 0;
  v87 = 0xE000000000000000;
  sub_1D5615B68();

  v86 = 0xD000000000000024;
  v87 = 0x80000001D5686BE0;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D5612F98();
  v12 = (v11 & 1) == 0;
  if (v11)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v12)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v13, v14);

  v84 = 0;
  v85 = 0xE000000000000000;
  sub_1D5615B68();

  v84 = 0xD000000000000024;
  v85 = 0x80000001D5686C10;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_1D5612F88();
  v17 = (v16 & 1) == 0;
  if (v16)
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (v17)
  {
    v19 = 0xE500000000000000;
  }

  else
  {
    v19 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v18, v19);

  MEMORY[0x1DA6EAC70](v84, v85);

  v84 = 0;
  v85 = 0xE000000000000000;
  sub_1D5615B68();

  v84 = 0xD00000000000002ALL;
  v85 = 0x80000001D5686C40;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = sub_1D5612FB8();
  v22 = (v21 & 1) == 0;
  if (v21)
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (v22)
  {
    v24 = 0xE500000000000000;
  }

  else
  {
    v24 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v23, v24);

  MEMORY[0x1DA6EAC70](v84, v85);

  v84 = 0;
  v85 = 0xE000000000000000;
  sub_1D5615B68();

  v84 = 0xD000000000000017;
  v85 = 0x80000001D5686C70;
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v27 = MEMORY[0x1DA6E8D10](v25, v26);
  v28 = (v27 & 1) == 0;
  if (v27)
  {
    v29 = 1702195828;
  }

  else
  {
    v29 = 0x65736C6166;
  }

  if (v28)
  {
    v30 = 0xE500000000000000;
  }

  else
  {
    v30 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v29, v30);

  MEMORY[0x1DA6EAC70](v84, v85);

  v84 = 0;
  v85 = 0xE000000000000000;
  sub_1D5615B68();

  v84 = 0xD00000000000001BLL;
  v85 = 0x80000001D5686C90;
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v32 = sub_1D5612F38();
  v33 = (v32 & 1) == 0;
  if (v32)
  {
    v34 = 1702195828;
  }

  else
  {
    v34 = 0x65736C6166;
  }

  if (v33)
  {
    v35 = 0xE500000000000000;
  }

  else
  {
    v35 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v34, v35);

  MEMORY[0x1DA6EAC70](v84, v85);

  v84 = 0;
  v85 = 0xE000000000000000;
  sub_1D5615B68();

  v84 = 0xD00000000000001ELL;
  v85 = 0x80000001D5686CB0;
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v37 = sub_1D5612F58();
  v38 = (v37 & 1) == 0;
  if (v37)
  {
    v39 = 1702195828;
  }

  else
  {
    v39 = 0x65736C6166;
  }

  if (v38)
  {
    v40 = 0xE500000000000000;
  }

  else
  {
    v40 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v39, v40);

  MEMORY[0x1DA6EAC70](v84, v85);

  v84 = 0;
  v85 = 0xE000000000000000;
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000034, 0x80000001D5686CD0);
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v42 = sub_1D5612FC8();
  v43 = (v42 & 1) == 0;
  if (v42)
  {
    v44 = 1702195828;
  }

  else
  {
    v44 = 0x65736C6166;
  }

  if (v43)
  {
    v45 = 0xE500000000000000;
  }

  else
  {
    v45 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v44, v45);

  MEMORY[0x1DA6EAC70](v84, v85);

  v84 = 0;
  v85 = 0xE000000000000000;
  sub_1D5615B68();

  v84 = 0xD000000000000023;
  v85 = 0x80000001D5686D10;
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v47 = sub_1D5612F78();
  v48 = (v47 & 1) == 0;
  if (v47)
  {
    v49 = 1702195828;
  }

  else
  {
    v49 = 0x65736C6166;
  }

  if (v48)
  {
    v50 = 0xE500000000000000;
  }

  else
  {
    v50 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v49, v50);

  MEMORY[0x1DA6EAC70](v84, v85);

  v84 = 0;
  v85 = 0xE000000000000000;
  sub_1D5615B68();

  v84 = 0xD000000000000021;
  v85 = 0x80000001D5686D40;
  v51 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v52 = sub_1D5612F68();
  v53 = (v52 & 1) == 0;
  if (v52)
  {
    v54 = 1702195828;
  }

  else
  {
    v54 = 0x65736C6166;
  }

  if (v53)
  {
    v55 = 0xE500000000000000;
  }

  else
  {
    v55 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v54, v55);

  MEMORY[0x1DA6EAC70](v84, v85);

  v84 = 0;
  v85 = 0xE000000000000000;
  sub_1D5615B68();

  v84 = 0xD00000000000001DLL;
  v85 = 0x80000001D5686D70;
  v56 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v57 = sub_1D5612F48();
  v58 = (v57 & 1) == 0;
  if (v57)
  {
    v59 = 1702195828;
  }

  else
  {
    v59 = 0x65736C6166;
  }

  if (v58)
  {
    v60 = 0xE500000000000000;
  }

  else
  {
    v60 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v59, v60);

  MEMORY[0x1DA6EAC70](v84, v85);

  v84 = 0;
  v85 = 0xE000000000000000;
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D5686D90);
  v61 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v62 = v78;
  sub_1D5612F08();
  v63 = v79;
  sub_1D5615D48();
  (*(v80 + 8))(v62, v63);
  MEMORY[0x1DA6EAC70](v84, v85);

  v84 = 0;
  v85 = 0xE000000000000000;
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D5686DB0);
  v64 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v65 = v81;
  sub_1D5612F18();
  v66 = v82;
  sub_1D5615D48();
  (*(v83 + 8))(v65, v66);
  MEMORY[0x1DA6EAC70](v84, v85);

  v84 = 0;
  v85 = 0xE000000000000000;
  sub_1D5615B68();

  v84 = 0xD000000000000026;
  v85 = 0x80000001D5686DD0;
  v67 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v68 = sub_1D5612FA8();
  v69 = (v68 & 1) == 0;
  if (v68)
  {
    v70 = 1702195828;
  }

  else
  {
    v70 = 0x65736C6166;
  }

  if (v69)
  {
    v71 = 0xE500000000000000;
  }

  else
  {
    v71 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v70, v71);

  MEMORY[0x1DA6EAC70](v84, v85);

  v84 = 0;
  v85 = 0xE000000000000000;
  sub_1D5615B68();

  v84 = 0xD000000000000015;
  v85 = 0x80000001D5686E00;
  v72 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v73 = sub_1D5612EF8();
  v74 = (v73 & 1) == 0;
  if (v73)
  {
    v75 = 1702195828;
  }

  else
  {
    v75 = 0x65736C6166;
  }

  if (v74)
  {
    v76 = 0xE500000000000000;
  }

  else
  {
    v76 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v75, v76);

  MEMORY[0x1DA6EAC70](v84, v85);

  return v86;
}

uint64_t sub_1D544D0DC@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, char *a3@<X8>)
{
  v49 = a3;
  v5 = sub_1D560D238();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - v10;
  v12 = sub_1D560D258();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v41 - v18;
  v20 = *a2;
  v45 = a2[1];
  v46 = v20;
  v21 = a2[2];
  v43 = a2[3];
  v44 = v21;
  v42 = a2[4];
  v41 = *(a2 + 1);
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5612F18();
  (*(v13 + 104))(v17, *MEMORY[0x1E6974E38], v12);
  LOBYTE(v22) = sub_1D560D248();
  v23 = *(v13 + 8);
  v23(v17, v12);
  result = (v23)(v19, v12);
  if ((v22 & 1) == 0)
  {
    goto LABEL_5;
  }

  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5612F08();
  v27 = v47;
  v26 = v48;
  (*(v47 + 104))(v9, *MEMORY[0x1E6974E18], v48);
  v28 = sub_1D560D228();
  v29 = *(v27 + 8);
  v29(v9, v26);
  result = (v29)(v11, v26);
  if (v28)
  {
    v31 = v45;
    v30 = v46;
    v50 = v46;
    v51 = v45;
    v33 = v43;
    v32 = v44;
    v52 = v44;
    v53 = v43;
    v34 = v42;
    v54 = v42;
    v35 = v41;
    v55 = v41;
    result = sub_1D544FE48(a1, &v50);
    if (result)
    {
      v36 = 0;
    }

    else
    {
      v50 = v30;
      v51 = v31;
      v52 = v32;
      v53 = v33;
      v54 = v34;
      v55 = v35;
      result = sub_1D544FE9C(a1, &v50);
      if (result)
      {
        v36 = 1;
      }

      else
      {
        v50 = v30;
        v51 = v31;
        v52 = v32;
        v53 = v33;
        v54 = v34;
        v55 = v35;
        v37 = sub_1D5450344(a1, &v50);
        v38 = (v37 & 1) == 0;
        if (v37)
        {
          v39 = MEMORY[0x1E69ADEF8];
        }

        else
        {
          v39 = MEMORY[0x1E69ADEA8];
        }

        if (v38)
        {
          v40 = 2;
        }

        else
        {
          v40 = 3;
        }

        result = sub_1D51AABEC(v39);
        if (result)
        {
          v36 = v40;
        }

        else
        {
          v36 = 5;
        }
      }
    }
  }

  else
  {
LABEL_5:
    v36 = 4;
  }

  *v49 = v36;
  return result;
}

uint64_t sub_1D544D48C(char *a1)
{
  v2 = *a1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D544D544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1D560C988();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D560C9B8();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4ECC7A8(0, &qword_1EDD5F060, 0x1E69E9610);
  v14 = sub_1D5615738();
  v15 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = v15;
  aBlock[4] = sub_1D5451658;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D4E735E0;
  aBlock[3] = &block_descriptor_27;
  v17 = _Block_copy(aBlock);

  sub_1D560C9A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D5451664(&qword_1EDD5D840, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0108, &unk_1D563C2C0);
  sub_1D4E62A60(&qword_1EDD5D060, &qword_1EC7F0108, &unk_1D563C2C0);
  sub_1D56159E8();
  MEMORY[0x1DA6EB530](0, v13, v9, v17);
  _Block_release(v17);

  (*(v21 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v20);
}

uint64_t sub_1D544D888()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D544F970();
  }

  return result;
}

uint64_t sub_1D544D8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14 - v8;
  v10 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = v11;
  sub_1D51ECB60(0, 0, v9, &unk_1D5665FD8, v12);
}

uint64_t sub_1D544DA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 72) = a1;
  *(v4 + 80) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D544DA40, 0, 0);
}

uint64_t sub_1D544DA40()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    if (qword_1EDD55F58 != -1)
    {
      OUTLINED_FUNCTION_32_4();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_128();
    sub_1D560C8F8();

    OUTLINED_FUNCTION_19_78();
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = sub_1D544DB90;

    return sub_1D544F180();
  }

  else
  {
    OUTLINED_FUNCTION_22_70(*(v0 + 72));

    return v5();
  }
}

uint64_t sub_1D544DB90()
{
  OUTLINED_FUNCTION_80();
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_63_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D544DCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D544DCD4, 0, 0);
}

uint64_t sub_1D544DCD4()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 64) = sub_1D56153B8();
    OUTLINED_FUNCTION_82();
    v4 = sub_1D5615338();

    return MEMORY[0x1EEE6DFA0](sub_1D544DDA8, v4, v3);
  }

  else
  {
    OUTLINED_FUNCTION_22_70(*(v0 + 40));

    return v5();
  }
}

uint64_t sub_1D544DDA8()
{
  OUTLINED_FUNCTION_60();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  sub_1D544F970();

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1D544DE1C(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  sub_1D544DE80();
  *v1 = v2;
}

void sub_1D544DE94()
{
  OUTLINED_FUNCTION_108_1();
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_198(v1);
  OUTLINED_FUNCTION_5_6();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_13_5();
  v5 = *(v4 + 88);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_60_6(KeyPath);
  v7 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_39_2(v7);
  OUTLINED_FUNCTION_107_1();
}

uint64_t sub_1D544DF60()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6A18, &qword_1D5665EB8);
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, v10);
  v6(v5);
  OUTLINED_FUNCTION_21_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6A10, &qword_1D5665EB0);
  OUTLINED_FUNCTION_47_3();
  swift_endAccess();
  v7 = OUTLINED_FUNCTION_15_8();
  return v8(v7);
}

void (*sub_1D544E048())(uint64_t **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *OUTLINED_FUNCTION_198(v2) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6A18, &qword_1D5665EB8);
  OUTLINED_FUNCTION_9_3(v3);
  *(v1 + 16) = v4;
  v6 = *(v5 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_60_6(v7);
  sub_1D544DF44();
  return sub_1D544E114;
}

void sub_1D544E12C(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  sub_1D544E190();
  *v1 = v2;
}

void sub_1D544E1A4()
{
  OUTLINED_FUNCTION_108_1();
  OUTLINED_FUNCTION_5_6();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_13_5();
  v3 = *(v2 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  OUTLINED_FUNCTION_107_1();
}

void sub_1D544E244()
{
  OUTLINED_FUNCTION_108_1();
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_198(v1);
  OUTLINED_FUNCTION_5_6();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_13_5();
  v5 = *(v4 + 88);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_60_6(KeyPath);
  v7 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_39_2(v7);
  OUTLINED_FUNCTION_107_1();
}

uint64_t sub_1D544E2F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_4(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v16 = *(v15 + 16);
  v17 = OUTLINED_FUNCTION_61();
  v18(v17);
  v19 = *a2;
  return a7(v14);
}

uint64_t sub_1D544E3D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A20, &qword_1D5665EC0);
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, v10);
  v6(v5);
  OUTLINED_FUNCTION_21_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1420, &qword_1D56400B0);
  OUTLINED_FUNCTION_47_3();
  swift_endAccess();
  v7 = OUTLINED_FUNCTION_15_8();
  return v8(v7);
}

void (*sub_1D544E4B8())(uint64_t **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *OUTLINED_FUNCTION_198(v2) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A20, &qword_1D5665EC0);
  OUTLINED_FUNCTION_9_3(v3);
  *(v1 + 16) = v4;
  v6 = *(v5 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_60_6(v7);
  sub_1D544E3B4();
  return sub_1D544E584;
}

void sub_1D544E59C(uint64_t **a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  if (a2)
  {
    v7 = v4[1];
    v8 = v4[2];
    v9 = *v4;
    (*(v8 + 16))((*a1)[3], v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    v10 = *v4;
    a3((*a1)[4]);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_1D544E664(uint64_t *a1)
{
  OUTLINED_FUNCTION_65_5(a1);
  result = sub_1D544E6B8();
  *v1 = result & 1;
  return result;
}

uint64_t sub_1D544E690(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1D544E75C();
}

uint64_t sub_1D544E6B8()
{
  OUTLINED_FUNCTION_5_6();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_13_5();
  v3 = *(v2 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_64_29();
  sub_1D560C8F8();

  return v5;
}

uint64_t sub_1D544E75C()
{
  OUTLINED_FUNCTION_5_6();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_13_5();
  v3 = *(v2 + 88);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

void sub_1D544E808()
{
  OUTLINED_FUNCTION_108_1();
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_198(v1);
  OUTLINED_FUNCTION_5_6();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_13_5();
  v5 = *(v4 + 88);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_60_6(KeyPath);
  v7 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_39_2(v7);
  OUTLINED_FUNCTION_107_1();
}

void sub_1D544E8D4()
{
  OUTLINED_FUNCTION_108_1();
  v1 = v0;
  v3 = v2;
  v5 = *v4;
  OUTLINED_FUNCTION_54_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v1);
  sub_1D560C8C8();
  swift_endAccess();
  OUTLINED_FUNCTION_107_1();
}

uint64_t sub_1D544E93C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0CE0, &qword_1D5665F20);
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = OUTLINED_FUNCTION_1_3(v4, v10);
  v6(v5);
  OUTLINED_FUNCTION_21_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1418, &unk_1D5667650);
  OUTLINED_FUNCTION_47_3();
  swift_endAccess();
  v7 = OUTLINED_FUNCTION_15_8();
  return v8(v7);
}

void (*sub_1D544EA24())(uint64_t **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *OUTLINED_FUNCTION_198(v2) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0CE0, &qword_1D5665F20);
  OUTLINED_FUNCTION_9_3(v3);
  *(v1 + 16) = v4;
  v6 = *(v5 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_60_6(v7);
  sub_1D544E8B8();
  return sub_1D544EAF0;
}

void sub_1D544EB08(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(*(a3 + a4 - 16) - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v9 - v6);
  v8 = *a2;
  sub_1D544F028();
}

uint64_t sub_1D544EBC8()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  v6 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = *(v1 + 80);
  v8[5] = *(v1 + 88);
  v8[6] = v7;
  sub_1D51ECB60(0, 0, v5, &unk_1D5665FC8, v8);
}

uint64_t sub_1D544ECF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 72) = a1;
  *(v4 + 80) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D544ED14, 0, 0);
}

uint64_t sub_1D544ED14()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    if (qword_1EDD55F58 != -1)
    {
      OUTLINED_FUNCTION_32_4();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_128();
    sub_1D560C8F8();

    OUTLINED_FUNCTION_19_78();
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = sub_1D544EE64;

    return sub_1D544F180();
  }

  else
  {
    OUTLINED_FUNCTION_22_70(*(v0 + 72));

    return v5();
  }
}

uint64_t sub_1D544EE64()
{
  OUTLINED_FUNCTION_80();
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_63_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D544EF94@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_46_3();
  v5 = *(v4 + 120);
  swift_beginAccess();
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_24_0(*(v6 + 80));
  return (*(v7 + 16))(a1, &v1[v5]);
}

void sub_1D544F028()
{
  OUTLINED_FUNCTION_108_1();
  v1 = *v0;
  OUTLINED_FUNCTION_46_3();
  v3 = *(v2 + 120);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_24_0(*(v4 + 80));
  v6 = *(v5 + 24);
  OUTLINED_FUNCTION_64_29();
  v7();
  swift_endAccess();
  sub_1D544EBC8();
  v8 = OUTLINED_FUNCTION_15_8();
  v9(v8);
  OUTLINED_FUNCTION_107_1();
}

uint64_t (*sub_1D544F0E8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_58_0();
  v3 = *(v2 + 120);
  OUTLINED_FUNCTION_54_0();
  return sub_1D544F14C;
}

uint64_t sub_1D544F14C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_1D544EBC8();
  }

  return result;
}

uint64_t sub_1D544F180()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  *(v1 + 136) = v0;
  OUTLINED_FUNCTION_58_0();
  *(v1 + 144) = v4;
  *(v1 + 152) = *(*v0 + 80);
  OUTLINED_FUNCTION_1_0();
  *(v1 + 160) = v5;
  v7 = *(v6 + 64) + 15;
  *(v1 + 168) = swift_task_alloc();
  v8 = swift_task_alloc();
  *(v1 + 202) = *v3;
  *(v1 + 203) = *(v3 + 1);
  *(v1 + 204) = *(v3 + 2);
  *(v1 + 205) = *(v3 + 3);
  v9 = *(v3 + 8);
  *(v1 + 176) = v8;
  *(v1 + 184) = v9;
  v10 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D544F290()
{
  v31 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  sub_1D544EF94(*(v0 + 176));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
  OUTLINED_FUNCTION_64_29();
  if (swift_dynamicCast())
  {
    sub_1D4E48324((v0 + 56), v0 + 16);
    if (qword_1EDD544A0 != -1)
    {
      OUTLINED_FUNCTION_0_235();
    }

    v3 = sub_1D560C758();
    __swift_project_value_buffer(v3, qword_1EDD76AD8);
    sub_1D4E628D4(v0 + 16, v0 + 96);
    v4 = sub_1D560C738();
    v5 = sub_1D56156E8();
    if (OUTLINED_FUNCTION_68_28(v5))
    {
      v6 = *(v0 + 144);
      v7 = OUTLINED_FUNCTION_142();
      v8 = OUTLINED_FUNCTION_138_0();
      v30[0] = v8;
      *v7 = 136446210;
      v9 = sub_1D544C748((v0 + 96));
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_1((v0 + 96));
      v12 = sub_1D4E6835C(v9, v11, v30);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1D4E3F000, v4, v5, "Updated playability information: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1((v0 + 96));
    }

    v21 = *(v0 + 184);
    v22 = *(v0 + 206);
    v23 = *(v0 + 205);
    v24 = *(v0 + 204);
    v25 = *(v0 + 203);
    v26 = *(v0 + 202);
    v27 = *(v0 + 144);
    OUTLINED_FUNCTION_42_46();
    sub_1D544AB1C((v0 + 16), v30, (v0 + 200));
    OUTLINED_FUNCTION_42_46();
    sub_1D544D0DC((v0 + 16), v30, (v0 + 201));
    sub_1D56153C8();
    *(v0 + 192) = sub_1D56153B8();
    OUTLINED_FUNCTION_82();
    v29 = sub_1D5615338();

    return MEMORY[0x1EEE6DFA0](sub_1D544F5A8, v29, v28);
  }

  else
  {
    v14 = *(v0 + 160);
    v13 = *(v0 + 168);
    v15 = *(v0 + 152);
    v16 = *(v0 + 136);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    sub_1D4E765C8(v0 + 56, &qword_1EC7F3B00, &qword_1D5650210);
    v30[0] = 0;
    v30[1] = 0xE000000000000000;
    sub_1D5615B68();
    OUTLINED_FUNCTION_33_3();
    MEMORY[0x1DA6EAC70](0xD00000000000006ALL);
    sub_1D544EF94(v13);
    OUTLINED_FUNCTION_128();
    sub_1D5616138();
    v17 = *(v14 + 8);
    v18 = OUTLINED_FUNCTION_128();
    v19(v18);
    return OUTLINED_FUNCTION_148_6();
  }
}

uint64_t sub_1D544F5A8()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 192);
  v2 = *(v0 + 136);

  sub_1D544F684();
  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D544F614()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[21];
  v2 = v0[22];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D544F684()
{
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_24_0(*(v0 + 80));
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v28[-v5];
  v7 = *v4;
  v9 = *v8;
  if (v7 == 10)
  {
    if (qword_1EDD544A0 != -1)
    {
      OUTLINED_FUNCTION_0_235();
    }

    v10 = sub_1D560C758();
    __swift_project_value_buffer(v10, qword_1EDD76AD8);
    OUTLINED_FUNCTION_82();

    v11 = sub_1D560C738();
    v12 = sub_1D56156E8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_142();
      v14 = OUTLINED_FUNCTION_138_0();
      v29 = v14;
      *v13 = 136446210;
      sub_1D544EF94(v6);
      OUTLINED_FUNCTION_61();
      v15 = sub_1D5614DB8();
      v17 = sub_1D4E6835C(v15, v16, &v29);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1D4E3F000, v11, v12, "Updated item state for item, %{public}s, returned playable.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      OUTLINED_FUNCTION_122();
LABEL_10:
      OUTLINED_FUNCTION_122();
    }
  }

  else
  {
    if (qword_1EDD544A0 != -1)
    {
      OUTLINED_FUNCTION_0_235();
    }

    v18 = sub_1D560C758();
    __swift_project_value_buffer(v18, qword_1EDD76AD8);
    OUTLINED_FUNCTION_82();

    v11 = sub_1D560C738();
    v19 = sub_1D56156E8();

    if (os_log_type_enabled(v11, v19))
    {
      v20 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v20 = 136446466;
      sub_1D544EF94(v6);
      OUTLINED_FUNCTION_61();
      v21 = sub_1D5614DB8();
      v23 = sub_1D4E6835C(v21, v22, &v29);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2082;
      v28[7] = v7;
      v24 = sub_1D5614DB8();
      v26 = sub_1D4E6835C(v24, v25, &v29);

      *(v20 + 14) = v26;
      _os_log_impl(&dword_1D4E3F000, v11, v19, "Updated item state for item, %{public}s, returned unplayable with reason %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_122();
      goto LABEL_10;
    }
  }

  LOBYTE(v29) = v7;
  sub_1D544D0C8(&v29);
  LOBYTE(v29) = v9;
  return sub_1D544D478(&v29);
}

uint64_t sub_1D544F970()
{
  OUTLINED_FUNCTION_5_6();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_59_0();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1D544EF94(v19 - v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v19, v21);
    v13 = *(v0 + *(*v0 + 136));
    v14 = sub_1D544FBC8(v21, v0 + *(*v0 + 128)) & 1;
    if (v14 != (sub_1D544E6B8() & 1))
    {
      sub_1D544E75C();
    }

    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_1D4E765C8(v19, &qword_1EC7F3B00, &qword_1D5650210);
    v21[0] = 0;
    v21[1] = 0xE000000000000000;
    sub_1D5615B68();
    OUTLINED_FUNCTION_33_3();
    MEMORY[0x1DA6EAC70](0xD00000000000006ALL);
    sub_1D544EF94(v10);
    OUTLINED_FUNCTION_61();
    sub_1D5616138();
    v16 = *(v4 + 8);
    v17 = OUTLINED_FUNCTION_61();
    v18(v17);
    result = OUTLINED_FUNCTION_148_6();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D544FBC8(uint64_t a1, uint64_t a2)
{
  sub_1D4E628D4(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v12, v17);
    sub_1D5267BA4(v17, a2, v3, v4, v5, v6, v7, v8, v12, *(&v12 + 1), v13, *(&v13 + 1), v14, v15, v16[0], v16[1], v16[2], v16[3], v16[4], v17[0]);
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    sub_1D4E765C8(&v12, &qword_1EC7EEC40, &unk_1D561C070);
    v10 = 0;
  }

  return v10 & 1;
}

unint64_t sub_1D544FCA0()
{
  v0 = [objc_opt_self() sharedMonitor];
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0x726F7774656E200ALL, 0xEF203A657079546BLL);
  [v0 networkType];
  type metadata accessor for ICEnvironmentNetworkType();
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](0, 0xE000000000000000);

  sub_1D5615B68();

  v1 = [v0 isNetworkConstrained];
  v2 = v1 == 0;
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x1DA6EAC70](v3, v4);

  MEMORY[0x1DA6EAC70](0xD00000000000001ALL, 0x80000001D5686EC0);

  return 0xD000000000000020;
}

uint64_t sub_1D544FE48(void *a1, uint64_t a2)
{
  v2 = *(a2 + 3);
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return MEMORY[0x1DA6E8D10](v3, v4) & (v2 == 2);
}

uint64_t sub_1D544FE9C(void *a1, char *a2)
{
  v3 = *a2;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  if (MEMORY[0x1DA6E8D10](v4, v5) & 1) == 0 || (v3)
  {
    return 0;
  }

  sub_1D5612AE8();
  sub_1D5612AD8();
  v6 = sub_1D5612AB8();

  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v6)
  {
    v8 = sub_1D5612F38();
  }

  else
  {
    v8 = sub_1D5612FA8();
  }

  return v8 & 1;
}

uint64_t sub_1D544FF50(void *a1, uint64_t a2)
{
  v4 = sub_1D560D258();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 2);
  v10 = *(a2 + 8);
  if (v10)
  {
    v11 = ([v10 capabilities] & 1) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5612F18();
  if ((*(v5 + 88))(v8, v4) == *MEMORY[0x1E6974E38])
  {
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if (sub_1D5612FC8())
    {
      if ((v9 & 1) == 0)
      {
        return v11;
      }

      return 0;
    }

    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if (v9 & 1 | ((sub_1D5612F78() & 1) == 0))
    {
      return 0;
    }
  }

  else
  {
    v11 = v9 ^ 1u;
    (*(v5 + 8))(v8, v4);
  }

  return v11;
}

uint64_t sub_1D5450108(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D560EEA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v15 - v10;
  v12 = *(a2 + 1);
  sub_1D4E628D4(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
  if (!swift_dynamicCast())
  {
    sub_1D4E628D4(a1, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
    if (swift_dynamicCast())
    {
      sub_1D4E48324(v15, v18);
      __swift_project_boxed_opaque_existential_1(v18, v18[3]);
      sub_1D560D078();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
      if (swift_dynamicCast())
      {
        (*(v5 + 8))(v9, v4);
        v13 = v12 ^ 1u;
        __swift_destroy_boxed_opaque_existential_1(v18);
        return v13;
      }

      __swift_destroy_boxed_opaque_existential_1(v18);
    }

    else
    {
      v16 = 0;
      memset(v15, 0, sizeof(v15));
      sub_1D4E765C8(v15, &qword_1EC7EC520, &unk_1D5621050);
    }

    return 0;
  }

  (*(v5 + 8))(v11, v4);
  return v12 ^ 1u;
}

uint64_t sub_1D5450344(void *a1, uint64_t a2)
{
  v4 = sub_1D560D258();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v20 - v10;
  v12 = *(a2 + 8);
  if (v12)
  {
    v13 = ([v12 capabilities] & 1) == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5612F18();
  v15 = (*(v5 + 88))(v11, v4);
  if (v15 == *MEMORY[0x1E6974E38])
  {
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if ((sub_1D5612F58() & 1) == 0)
    {
      v17 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v13 &= sub_1D5612F98();
      return v13 & 1;
    }

    goto LABEL_9;
  }

  if (v15 == *MEMORY[0x1E6974E48])
  {
    return v13 & 1;
  }

  if (v15 == *MEMORY[0x1E6974E40])
  {
LABEL_9:
    v13 = 0;
    return v13 & 1;
  }

  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D5686E50);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5612F18();
  sub_1D5615D48();
  (*(v5 + 8))(v9, v4);
  MEMORY[0x1DA6EAC70](0xD000000000000019, 0x80000001D5686E70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

void sub_1D5450654(void *a1@<X0>, char *a2@<X8>)
{
  v4 = [objc_opt_self() sharedMonitor];
  v5 = [v4 networkType];

  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_1D5612F58())
  {
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v8 = sub_1D5612FC8();
    v9 = 10;
    if ((v8 & 1) != 0 && !v5)
    {
      sub_1D4ECC7A8(0, &qword_1EC7F1428, 0x1E69E4498);
      v10 = sub_1D5372774();
      v11 = [v10 hasOfflinePlaybackKeys];

      if (v11)
      {
        v9 = 10;
      }

      else
      {
        v9 = 11;
      }
    }
  }

  else
  {
    v9 = 11;
  }

  *a2 = v9;
}

uint64_t sub_1D5450780@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_1D5612F78() & 1) != 0 || (v5 = a1[4], __swift_project_boxed_opaque_existential_1(a1, a1[3]), (sub_1D5612F68()))
  {
    result = sub_1D5450858(a1, &v9);
    v7 = v9;
    if (v9 == 11)
    {
      v7 = 10;
    }
  }

  else
  {
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    result = sub_1D5612F88();
    if (result)
    {
      v7 = 8;
    }

    else
    {
      v7 = 1;
    }
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1D5450858@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = [objc_opt_self() sharedMonitor];
  v5 = [v4 networkType];

  result = ICEnvironmentNetworkTypeIsCellular();
  if (result && (result = sub_1D54508F4(a1), (result & 1) == 0))
  {
    v7 = 4;
  }

  else if (v5)
  {
    v7 = 11;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

BOOL sub_1D54508F4(void *a1)
{
  v2 = sub_1D560D238();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = objc_opt_self();
  v11 = [v10 standardUserDefaults];
  v12 = [v11 preferredMusicLowBandwidthResolution];

  v13 = [v10 standardUserDefaults];
  v14 = [v13 preferredVideoLowBandwidthResolution];

  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5612F08();
  (*(v3 + 104))(v7, *MEMORY[0x1E6974E20], v2);
  LOBYTE(a1) = sub_1D560D228();
  v16 = *(v3 + 8);
  v16(v7, v2);
  v16(v9, v2);
  if (a1)
  {
    v17 = v14;
  }

  else
  {
    v17 = v12;
  }

  return v17 != 0;
}

char *MusicPlayer.ItemState.deinit()
{
  v1 = *v0;
  v2 = qword_1EDD5D730;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6A10, &qword_1D5665EB0);
  OUTLINED_FUNCTION_4_0(v3);
  (*(v4 + 8))(&v0[v2]);
  v5 = qword_1EDD5D728;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1420, &qword_1D56400B0);
  OUTLINED_FUNCTION_4_0(v6);
  (*(v7 + 8))(&v0[v5]);
  v8 = qword_1EDD5D738;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1418, &unk_1D5667650);
  OUTLINED_FUNCTION_4_0(v9);
  (*(v10 + 8))(&v0[v8]);
  OUTLINED_FUNCTION_58_0();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v11 + 120)]);
  OUTLINED_FUNCTION_58_0();
  sub_1D4E765C8(&v0[*(v12 + 128)], &qword_1EC7EEC40, &unk_1D561C070);
  OUTLINED_FUNCTION_58_0();
  v14 = *&v0[*(v13 + 136)];

  OUTLINED_FUNCTION_58_0();
  v16 = *&v0[*(v15 + 144)];

  OUTLINED_FUNCTION_58_0();
  v18 = *&v0[*(v17 + 152)];

  return v0;
}

uint64_t MusicPlayer.ItemState.__deallocating_deinit()
{
  MusicPlayer.ItemState.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D5450CD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  type metadata accessor for MusicPlayer.ItemState();
  result = sub_1D560C838();
  *a2 = result;
  return result;
}

uint64_t MusicPlayer.state<A>(for:)()
{
  OUTLINED_FUNCTION_1_0();
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v5 = OUTLINED_FUNCTION_59_31(v4);
  v6(v5);
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  if (qword_1EDD5E6F8 != -1)
  {
    OUTLINED_FUNCTION_27_67();
  }

  type metadata accessor for MusicPlayer.ItemState();
  v7 = qword_1EDD5E700;

  return MusicPlayer.ItemState.__allocating_init(_:container:player:)(v0, v9, v7);
}

uint64_t MusicPlayer.state<A, B>(for:container:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_1_0();
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v13 = OUTLINED_FUNCTION_59_31(v12);
  v14(v13);
  v15 = *(a6 + 8);
  v19[3] = a4;
  v19[4] = v15;
  __swift_allocate_boxed_opaque_existential_0(v19);
  OUTLINED_FUNCTION_24_0(a4);
  (*(v16 + 16))();
  if (qword_1EDD5E6F8 != -1)
  {
    OUTLINED_FUNCTION_27_67();
  }

  type metadata accessor for MusicPlayer.ItemState();
  v17 = qword_1EDD5E700;

  return MusicPlayer.ItemState.__allocating_init(_:container:player:)(v6, v19, v17);
}

uint64_t sub_1D5450F70()
{
  OUTLINED_FUNCTION_23_68();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_126(v1);

  return sub_1D544DCB4(v3, v4, v5, v6);
}

void sub_1D5451020(uint64_t a1)
{
  sub_1D4F6888C(319, &qword_1EDD5D860);
  if (v3 <= 0x3F)
  {
    v11 = *(v2 - 8) + 64;
    sub_1D4F6888C(319, &qword_1EDD5D858);
    if (v5 <= 0x3F)
    {
      v12 = *(v4 - 8) + 64;
      sub_1D4F6888C(319, &qword_1EDD5D848);
      if (v7 <= 0x3F)
      {
        v13 = *(v6 - 8) + 64;
        v8 = *(a1 + 80);
        v9 = swift_checkMetadataState();
        if (v10 <= 0x3F)
        {
          v14 = *(v9 - 8) + 64;
          swift_initClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_1D5451528()
{
  OUTLINED_FUNCTION_23_68();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_126(v1);

  return sub_1D544ECF4(v3, v4, v5, v6);
}

uint64_t sub_1D54515C0()
{
  OUTLINED_FUNCTION_23_68();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_126(v1);

  return sub_1D544DA20(v3, v4, v5, v6);
}

uint64_t sub_1D5451658()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1D544D888();
}

uint64_t sub_1D5451664(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_23_68()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[6];
}

uint64_t OUTLINED_FUNCTION_57_36()
{

  return swift_allocObject();
}

BOOL OUTLINED_FUNCTION_68_28(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void MusicLibraryPlaylistViewModel.__allocating_init<A>(_:entries:author:library:onChange:)()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_38_44();
  OUTLINED_FUNCTION_35_61();
  MusicLibraryPlaylistViewModel.init<A>(_:entries:author:library:onChange:)();
  OUTLINED_FUNCTION_46();
}

void MusicLibraryPlaylistViewModel.init<A>(_:entries:author:library:onChange:)()
{
  OUTLINED_FUNCTION_47();
  v2 = v0;
  v163 = v3;
  v5 = v4;
  v181 = v6;
  v182 = v7;
  v9 = v8;
  v184 = v11;
  v185 = v10;
  v187 = v12;
  v172 = type metadata accessor for SocialProfile();
  v13 = OUTLINED_FUNCTION_14(v172);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v164 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v173 = v153 - v22;
  OUTLINED_FUNCTION_70_0();
  v186 = sub_1D56158D8();
  OUTLINED_FUNCTION_4(v186);
  v183 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = v153 - v28;
  v177 = v5;
  v158 = *(v5 - 1);
  v30 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13();
  v161 = v31;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_2();
  v162 = v33;
  OUTLINED_FUNCTION_70_0();
  v34 = sub_1D5614898();
  v35 = OUTLINED_FUNCTION_4(v34);
  v178 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13();
  v165 = v39;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v40);
  v175 = v153 - v41;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_2();
  v166 = v43;
  OUTLINED_FUNCTION_70_0();
  v44 = sub_1D56131C8();
  v45 = OUTLINED_FUNCTION_4(v44);
  v170 = v46;
  v171 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13();
  v169 = v49;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_13_2();
  v168 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  v53 = OUTLINED_FUNCTION_22(v52);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13();
  v174 = v56;
  OUTLINED_FUNCTION_23();
  v58 = MEMORY[0x1EEE9AC00](v57);
  v60 = v153 - v59;
  MEMORY[0x1EEE9AC00](v58);
  v62 = v153 - v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  OUTLINED_FUNCTION_4(v63);
  v65 = v64;
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_115();
  v69 = sub_1D5614828();
  v70 = MEMORY[0x1E69E7CC0];
  v153[1] = v69;
  sub_1D560D9F8();
  v159 = v65;
  v71 = *(v65 + 32);
  v154 = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__entries;
  v157 = v1;
  v160 = v63;
  v156 = v65 + 32;
  v155 = v71;
  v71(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__entries, v1, v63);
  v72 = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__playlist;
  OUTLINED_FUNCTION_33();
  v179 = v34;
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v34);
  OUTLINED_FUNCTION_59_21(OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__sessionID[0]);
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__isUnderlyingEditControllerReady) = 0;
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__userEditsHistory) = v70;
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__userEditsOffset) = 0;
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__serverRevisionIDs) = v70;
  OUTLINED_FUNCTION_59_21(OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__lastKnownServerRevisionID);
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__eventStream) = 0;
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__canUndo) = 0;
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__canRedo) = 0;
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__coverArtworkRecipes) = 0;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A40, &qword_1D5665FE8);
  OUTLINED_FUNCTION_2_19(v76);
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__entriesPublisher) = sub_1D560C858();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6A50, &qword_1D5665FF0);
  OUTLINED_FUNCTION_2_19(v77);
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__canUndoPublisher) = sub_1D560C858();
  v78 = *(v77 + 48);
  v79 = *(v77 + 52);
  swift_allocObject();
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__canRedoPublisher) = sub_1D560C858();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A58, &qword_1D5665FF8);
  OUTLINED_FUNCTION_2_19(v80);
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__namePublisher) = sub_1D560C858();
  sub_1D560C4F8();
  sub_1D4F39AB0(v187, v62, &unk_1EC7F1990, &unk_1D561CEF0);
  sub_1D4E50004(v2 + v72, &unk_1EC7F1990, &unk_1D561CEF0);
  sub_1D4F39A1C(v62, v2 + v72, &unk_1EC7F1990, &unk_1D561CEF0);
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_library) = v9;
  v81 = (v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler);
  v83 = v181;
  v82 = v182;
  *v81 = v181;
  v81[1] = v82;

  sub_1D4EA73A4(v83);
  v176 = v9;
  v84 = sub_1D560EFB8();
  if (!v84)
  {
    goto LABEL_29;
  }

  v85 = v84;
  objc_opt_self();
  v86 = swift_dynamicCastObjCClass();
  if (!v86)
  {
    swift_unknownObjectRelease();
LABEL_29:
    OUTLINED_FUNCTION_53_9();
    v153[0] = 43;
    OUTLINED_FUNCTION_11_28();
    OUTLINED_FUNCTION_19_79();
    __break(1u);
    return;
  }

  v87 = v86;
  v180 = v85;
  sub_1D4F39AB0(v187, v60, &unk_1EC7F1990, &unk_1D561CEF0);
  v88 = v179;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v60, 1, v179);
  v90 = MEMORY[0x1E6976988];
  v167 = v87;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v60, &unk_1EC7F1990, &unk_1D561CEF0);
    v166 = 0;
  }

  else
  {
    v91 = v170;
    v92 = v171;
    v93 = v29;
    v94 = v168;
    (*(v170 + 104))(v168, *MEMORY[0x1E6976988], v171);
    (*(v91 + 16))(v169, v94, v92);
    v95 = v178;
    (*(v178 + 16))(v166, v60, v88);
    sub_1D4ECAE6C();
    v166 = v96;
    v97 = v94;
    v29 = v93;
    v98 = v92;
    v90 = MEMORY[0x1E6976988];
    (*(v91 + 8))(v97, v98);
    (*(v95 + 8))(v60, v88);
  }

  v99 = v183;
  (*(v183 + 16))(v29, v185, v186);
  OUTLINED_FUNCTION_57(v29, 1, v177);
  if (v100)
  {
    (*(v99 + 8))(v29, v186);
  }

  else
  {
    v101 = v158;
    v102 = v162;
    v103 = v177;
    (*(v158 + 32))(v162, v29, v177);
    (*(v101 + 16))(v161, v102, v103);
    v104 = v157;
    sub_1D560DAD8();
    (*(v101 + 8))(v102, v103);
    v105 = v154;
    v106 = v160;
    (*(v159 + 8))(v2 + v154, v160);
    v155(v2 + v105, v104, v106);
  }

  v107 = v99;
  v108 = v173;
  sub_1D4F39AB0(v184, v173, &unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_57(v108, 1, v172);
  if (v100)
  {
    sub_1D4E50004(v108, &unk_1EC7ED370, &unk_1D5624FE0);
    v114 = 0;
  }

  else
  {
    v109 = v170;
    v110 = v171;
    v111 = v88;
    v112 = v168;
    (*(v170 + 104))(v168, *v90, v171);
    (*(v109 + 16))(v169, v112, v110);
    sub_1D545D45C(v108, v164, type metadata accessor for SocialProfile);
    sub_1D4ECAE94();
    v114 = v113;
    v115 = v112;
    v88 = v111;
    (*(v109 + 8))(v115, v110);
    v116 = OUTLINED_FUNCTION_99();
    v107 = v183;
    sub_1D545D4B8(v116, v117);
  }

  v118 = v167;
  objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryPlaylistEditController);
  v119 = v166;
  v120 = v166;
  swift_unknownObjectRetain();
  v121 = sub_1D545D1EC(v119, 0, v114, v118);
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController) = v121;
  v122 = v121;
  v123 = sub_1D4F636B4();
  v125 = v124;
  v126 = [objc_opt_self() currentDeviceInfo];
  v127 = [v126 isInternalBuild];

  if (v127)
  {
    _s11EventStreamCMa();
    swift_allocObject();
    OUTLINED_FUNCTION_183();

    sub_1D53A4848(v123, v125);
    v128 = sub_1D53A5670(v187);
    sub_1D53A48AC(v128);
    v88 = v179;

    sub_1D5452B18();
  }

  v179 = v123;
  v129 = v174;
  sub_1D4F39AB0(v187, v174, &unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_57(v129, 1, v88);
  v130 = v178;
  if (v100)
  {
    sub_1D4E50004(v129, &unk_1EC7F1990, &unk_1D561CEF0);
    if (qword_1EC7E8DF0 != -1)
    {
      OUTLINED_FUNCTION_1_176();
    }

    v131 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v131, qword_1EC87C140);

    v132 = sub_1D560C738();
    v133 = sub_1D56156E8();

    if (os_log_type_enabled(v132, v133))
    {
      v134 = OUTLINED_FUNCTION_142();
      v135 = v120;
      v136 = swift_slowAlloc();
      v188 = v136;
      v137 = OUTLINED_FUNCTION_112_14(4.8751e-34);

      *(v134 + 4) = v137;
      OUTLINED_FUNCTION_45_21(&dword_1D4E3F000, v138, v139, "%{public}s Initialized underlying playlist edit view model to create new playlist.");
      __swift_destroy_boxed_opaque_existential_1(v136);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_114_0();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_1D4EA7420(v181);

    sub_1D4E50004(v184, &unk_1EC7ED370, &unk_1D5624FE0);
    (*(v107 + 8))(v185, v186);
    sub_1D4E50004(v187, &unk_1EC7F1990, &unk_1D561CEF0);
  }

  else
  {
    v173 = v122;
    v177 = v120;
    v140 = *(v178 + 32);
    v141 = v175;
    v142 = OUTLINED_FUNCTION_123_2();
    v143(v142);
    if (qword_1EC7E8DF0 != -1)
    {
      OUTLINED_FUNCTION_1_176();
    }

    v144 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v144, qword_1EC87C140);
    v145 = v165;
    (*(v130 + 16))(v165, v141, v88);

    v146 = sub_1D560C738();
    v147 = sub_1D56156E8();

    if (os_log_type_enabled(v146, v147))
    {
      OUTLINED_FUNCTION_144();
      v174 = OUTLINED_FUNCTION_34_61();
      v188 = v174;
      OUTLINED_FUNCTION_112_14(4.8752e-34);
      OUTLINED_FUNCTION_183();

      *(v88 + 4) = v129;
      OUTLINED_FUNCTION_60_29();
      sub_1D4E41400(&qword_1EC7EC2B0, MEMORY[0x1E69773E0]);
      v148 = sub_1D56160F8();
      v150 = v149;
      v151 = *(v130 + 8);
      v151(v145, v88);
      sub_1D4E6835C(v148, v150, &v188);
      OUTLINED_FUNCTION_183();

      *(v88 + 14) = v148;
      _os_log_impl(&dword_1D4E3F000, v146, v147, "%{public}s Initialized underlying playlist edit view model with playlist: %{public}s", v88, 0x16u);
      OUTLINED_FUNCTION_87_19();
      OUTLINED_FUNCTION_37_46();
      OUTLINED_FUNCTION_114_0();
      swift_unknownObjectRelease();

      sub_1D4EA7420(v181);

      sub_1D4E50004(v184, &unk_1EC7ED370, &unk_1D5624FE0);
      (*(v183 + 8))(v185, v186);
      sub_1D4E50004(v187, &unk_1EC7F1990, &unk_1D561CEF0);
      v151(v175, v88);
    }

    else
    {
      swift_unknownObjectRelease();

      sub_1D4EA7420(v181);

      sub_1D4E50004(v184, &unk_1EC7ED370, &unk_1D5624FE0);
      (*(v183 + 8))(v185, v186);
      sub_1D4E50004(v187, &unk_1EC7F1990, &unk_1D561CEF0);
      v152 = *(v130 + 8);
      v152(v145, v88);
      v152(v175, v88);
    }
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5452744(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_105_16();
  OUTLINED_FUNCTION_59_32();

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  OUTLINED_FUNCTION_14(v2);
  return (*(v3 + 8))(a1);
}

uint64_t sub_1D5452830()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_105_16();
  OUTLINED_FUNCTION_59_32();
}

uint64_t sub_1D5452900()
{
  swift_getKeyPath();
  sub_1D545D148();
}

uint64_t sub_1D5452A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_getKeyPath();
  sub_1D545D148();

  return a4(a1);
}

uint64_t sub_1D5452AA4(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_105_16();
  OUTLINED_FUNCTION_59_32();

  return sub_1D4E50004(a1, &unk_1EC7F1990, &unk_1D561CEF0);
}

uint64_t sub_1D5452B18()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_105_16();
  OUTLINED_FUNCTION_59_32();
}

void MusicLibraryPlaylistViewModel.__allocating_init<A>(seeds:author:library:onChange:)()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_38_44();
  OUTLINED_FUNCTION_35_61();
  MusicLibraryPlaylistViewModel.init<A>(seeds:author:library:onChange:)();
  OUTLINED_FUNCTION_46();
}

void MusicLibraryPlaylistViewModel.init<A>(seeds:author:library:onChange:)()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v107 = v2;
  v108 = v3;
  v109 = v4;
  v110 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v111 = v12;
  v104 = type metadata accessor for SocialProfile();
  v13 = OUTLINED_FUNCTION_14(v104);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v102 = v17 - v16;
  OUTLINED_FUNCTION_70_0();
  v103 = sub_1D56131C8();
  v18 = OUTLINED_FUNCTION_4(v103);
  v101 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13();
  v100 = v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_2();
  v99 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_22(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v98 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  v36 = v98 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  OUTLINED_FUNCTION_4(v37);
  v39 = v38;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_28_3();
  sub_1D5614828();
  v43 = MEMORY[0x1E69E7CC0];
  sub_1D560D9F8();
  v98[13] = v39;
  v44 = *(v39 + 32);
  v98[12] = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__entries;
  v112 = v37;
  v44(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__entries, v0, v37);
  v45 = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__playlist;
  v46 = sub_1D5614898();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v46);
  OUTLINED_FUNCTION_59_21(OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__sessionID[0]);
  v98[11] = v50;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__isUnderlyingEditControllerReady) = 0;
  v98[9] = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__userEditsHistory;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__userEditsHistory) = v43;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__userEditsOffset) = 0;
  v98[7] = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__serverRevisionIDs;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__serverRevisionIDs) = v43;
  OUTLINED_FUNCTION_59_21(OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__lastKnownServerRevisionID);
  v98[8] = v51;
  v98[10] = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__eventStream;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__eventStream) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__canUndo) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__canRedo) = 0;
  v98[6] = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__coverArtworkRecipes;
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__coverArtworkRecipes) = 0;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A40, &qword_1D5665FE8);
  OUTLINED_FUNCTION_2_19(v52);
  v53 = sub_1D560C858();
  OUTLINED_FUNCTION_107_13(v53, OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__entriesPublisher);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6A50, &qword_1D5665FF0);
  OUTLINED_FUNCTION_2_19(v54);
  v55 = sub_1D560C858();
  OUTLINED_FUNCTION_107_13(v55, OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__canUndoPublisher);
  v56 = *(v54 + 48);
  v57 = *(v54 + 52);
  swift_allocObject();
  v58 = sub_1D560C858();
  OUTLINED_FUNCTION_107_13(v58, OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__canRedoPublisher);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A58, &qword_1D5665FF8);
  OUTLINED_FUNCTION_2_19(v59);
  v60 = sub_1D560C858();
  OUTLINED_FUNCTION_107_13(v60, OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__namePublisher);
  v98[2] = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel___observationRegistrar;
  sub_1D560C4F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v46);
  sub_1D4E50004(v0 + v45, &unk_1EC7F1990, &unk_1D561CEF0);
  sub_1D4F39A1C(v36, v0 + v45, &unk_1EC7F1990, &unk_1D561CEF0);
  *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_library) = v11;
  v64 = (v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler);
  *v64 = v9;
  v64[1] = v7;
  v113 = v110;
  v114 = v107;
  v115 = v108;

  v105 = v9;
  v106 = v7;
  sub_1D4EA73A4(v9);
  sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
  v65 = sub_1D5615028();
  v112 = sub_1D560EFB8();
  if (!v112)
  {
    goto LABEL_15;
  }

  objc_opt_self();
  v66 = swift_dynamicCastObjCClass();
  if (!v66)
  {
    swift_unknownObjectRelease();
LABEL_15:
    OUTLINED_FUNCTION_53_9();
    v98[0] = 86;
    OUTLINED_FUNCTION_11_28();
    OUTLINED_FUNCTION_19_79();
    __break(1u);
    return;
  }

  v67 = v66;
  sub_1D4F39AB0(v109, v30, &unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_57(v30, 1, v104);
  if (v68)
  {
    sub_1D4E50004(v30, &unk_1EC7ED370, &unk_1D5624FE0);
    v75 = 0;
  }

  else
  {
    v69 = *MEMORY[0x1E6976988];
    v104 = v11;
    v70 = v101;
    v71 = v65;
    v72 = v99;
    v73 = v103;
    (*(v101 + 104))(v99, v69, v103);
    (*(v70 + 16))(v100, v72, v73);
    sub_1D545D45C(v30, v102, type metadata accessor for SocialProfile);
    sub_1D4ECAE94();
    v75 = v74;
    v76 = v72;
    v65 = v71;
    (*(v70 + 8))(v76, v73);
    v77 = OUTLINED_FUNCTION_45_3();
    sub_1D545D4B8(v77, v78);
  }

  v79 = objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryPlaylistEditController);
  swift_unknownObjectRetain();
  v80 = sub_1D545D25C(v65, v67, v75);
  *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController) = v80;
  v81 = v80;
  sub_1D4F636B4();
  v82 = [objc_opt_self() currentDeviceInfo];
  v83 = [v82 isInternalBuild];

  if (v83)
  {
    _s11EventStreamCMa();
    swift_allocObject();
    OUTLINED_FUNCTION_183();

    v84 = OUTLINED_FUNCTION_15_2();
    sub_1D53A4848(v84, v85);
    v86 = sub_1D53A5874();
    sub_1D53A48AC(v86);

    sub_1D5452B18();
  }

  if (qword_1EC7E8DF0 != -1)
  {
    OUTLINED_FUNCTION_1_176();
  }

  v87 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v87, qword_1EC87C140);

  v88 = sub_1D560C738();
  v89 = sub_1D56156E8();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = OUTLINED_FUNCTION_142();
    v91 = swift_slowAlloc();
    v116 = v91;
    *v90 = 136446210;
    v92 = OUTLINED_FUNCTION_15_2();
    v95 = sub_1D4E6835C(v92, v93, v94);

    *(v90 + 4) = v95;
    OUTLINED_FUNCTION_45_21(&dword_1D4E3F000, v96, v97, "%{public}s Initialized underlying playlist edit view model with seeds.");
    __swift_destroy_boxed_opaque_existential_1(v91);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_114_0();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_1D4EA7420(v105);

  sub_1D4E50004(v109, &unk_1EC7ED370, &unk_1D5624FE0);
  (*(*(v110 - 8) + 8))(v111);
  OUTLINED_FUNCTION_46();
}

void sub_1D54535B8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v40 = a2;
  v3 = sub_1D56131C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v33 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v34 = v9;
  v16 = *(v9 + 16);
  v16(&v32 - v17, a1, AssociatedTypeWitness);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v35, v37);
    v18 = v38;
    v19 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    (*(v4 + 104))(v7, *MEMORY[0x1E6976988], v3);
    v20 = sub_1D5159364(v7, v18, v19);
    (*(v4 + 8))(v7, v3);
    *v40 = v20;
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    v21 = v40;
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    sub_1D4E50004(v35, &unk_1EC7ED400, &qword_1D5620CF0);
    if (qword_1EC7E8DF0 != -1)
    {
      swift_once();
    }

    v22 = sub_1D560C758();
    __swift_project_value_buffer(v22, qword_1EC87C140);
    v16(v15, a1, AssociatedTypeWitness);
    v23 = sub_1D560C738();
    v24 = sub_1D56156C8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v37[0] = v26;
      *v25 = 136446210;
      v16(v33, v15, AssociatedTypeWitness);
      v27 = sub_1D5614DB8();
      v29 = v28;
      (*(v34 + 8))(v15, AssociatedTypeWitness);
      v30 = sub_1D4E6835C(v27, v29, v37);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1D4E3F000, v23, v24, "%{public}s which is MusicPlaylistAddable does not conform to UnderlyingLegacyModelObjectConvertible.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      v31 = v26;
      v21 = v40;
      MEMORY[0x1DA6ED200](v31, -1, -1);
      MEMORY[0x1DA6ED200](v25, -1, -1);
    }

    else
    {

      (*(v34 + 8))(v15, AssociatedTypeWitness);
    }

    *v21 = 0;
  }
}

uint64_t MusicLibraryPlaylistViewModel.deinit()
{
  v1 = v0;
  if (sub_1D54550D4())
  {
    sub_1D53A48AC(3u);
  }

  v2 = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__entries;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(v1 + v2);
  sub_1D4E50004(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__playlist, &unk_1EC7F1990, &unk_1D561CEF0);
  v5 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_library);

  v6 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler + 8);
  sub_1D4EA7420(*(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler));
  v7 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__sessionID[0] + 8);

  v8 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__userEditsHistory);

  v9 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__serverRevisionIDs);

  v10 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__lastKnownServerRevisionID + 8);

  v11 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__eventStream);

  v12 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__coverArtworkRecipes);

  v13 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__entriesPublisher);

  v14 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__canUndoPublisher);

  v15 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__canRedoPublisher);

  v16 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__namePublisher);

  v17 = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel___observationRegistrar;
  v18 = sub_1D560C508();
  OUTLINED_FUNCTION_14(v18);
  (*(v19 + 8))(v1 + v17);
  return v1;
}

uint64_t MusicLibraryPlaylistViewModel.__deallocating_deinit()
{
  MusicLibraryPlaylistViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D5453C18(uint64_t (**a1)(char *, char *, uint64_t))
{
  v2 = v1;
  v84 = sub_1D560D838();
  v79 = *(v84 - 8);
  v4 = *(v79 + 64);
  v5 = MEMORY[0x1EEE9AC00](v84);
  v83 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v82 = &v71 - v7;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6AA0, &qword_1D5666370);
  v8 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94);
  v10 = (&v71 - v9);
  v93 = sub_1D5614828();
  v75 = *(v93 - 8);
  v11 = *(v75 + 64);
  v12 = MEMORY[0x1EEE9AC00](v93);
  v81 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v92 = &v71 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v71 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6AA8, &qword_1D5666378);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v90 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v71 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6AB0, &qword_1D5666380);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v74 = &v71 - v25;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6AB8, &qword_1D5666388);
  v26 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v88 = &v71 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v71 - v31;
  v33 = sub_1D545EB20(&unk_1EDD53B80);
  sub_1D5615608();
  sub_1D5615648();
  v89 = a1;
  v34 = sub_1D5615638();
  v35 = v2;
  sub_1D54547EC(v32);
  sub_1D5615608();
  sub_1D5615648();
  v91 = v33;
  v36 = sub_1D5615638();
  v37 = v29;
  v38 = v29 + 8;
  v39 = *(v29 + 8);
  v39(v32, v28);
  if (v34 != v36)
  {
    sub_1D54571D0();
    sub_1D54547EC(v32);
    sub_1D560C848();

    return (v39)(v32, v28);
  }

  v85 = v39;
  v86 = v35;
  v87 = v38;
  v40 = v74;
  (*(v37 + 16))(v74, v89, v28);
  (*(v37 + 32))(v32, v40, v28);
  sub_1D545EB20(&qword_1EDD53B90);
  v41 = v88;
  sub_1D5614F98();
  v71 = *(v80 + 36);
  *&v41[v71] = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECEA0, &qword_1D5666390);
  v80 = 0;
  v43 = *(v42 + 36);
  v72 = (v75 + 16);
  v89 = (v75 + 32);
  v74 = (v79 + 8);
  v79 = v75 + 8;
  v44 = v32;
  v45 = v41;
  v75 = v43;
  v78 = v10;
  v77 = v22;
  v76 = v32;
  while (1)
  {
    sub_1D5615648();
    if (*(v45 + v43) == v95[0])
    {
      v46 = 1;
      goto LABEL_7;
    }

    v47 = sub_1D5615688();
    v48 = v73;
    v49 = v93;
    (*v72)(v73);
    v47(v95, 0);
    sub_1D5615658();
    v50 = *(v94 + 48);
    v51 = v80;
    *v10 = v80;
    result = (*v89)(v10 + v50, v48, v49);
    if (__OFADD__(v51, 1))
    {
      break;
    }

    v80 = v51 + 1;
    *(v45 + v71) = v51 + 1;
    sub_1D4F39A1C(v10, v90, &qword_1EC7F6AA0, &qword_1D5666370);
    v46 = 0;
LABEL_7:
    v53 = v90;
    v54 = v94;
    __swift_storeEnumTagSinglePayload(v90, v46, 1, v94);
    sub_1D4F39A1C(v53, v22, &qword_1EC7F6AA8, &qword_1D5666378);
    if (__swift_getEnumTagSinglePayload(v22, 1, v54) == 1)
    {
      return sub_1D4E50004(v45, &qword_1EC7F6AB8, &qword_1D5666388);
    }

    v55 = *v22;
    (*v89)(v92, v22 + *(v94 + 48), v93);
    v56 = v85;
    if (v55 < 0 || (sub_1D54547EC(v44), sub_1D5615608(), sub_1D5615648(), v57 = sub_1D5615638(), v56(v44, v28), v55 >= v57))
    {
      (*v79)(v92, v93);
      v45 = v88;
LABEL_14:
      sub_1D4E50004(v45, &qword_1EC7F6AB8, &qword_1D5666388);
      sub_1D54571D0();
      sub_1D54547EC(v44);
      sub_1D560C848();

      return (v85)(v44, v28);
    }

    sub_1D54547EC(v44);
    v58 = v81;
    sub_1D560DAE8();
    v56(v44, v28);
    v59 = v82;
    v60 = v93;
    sub_1D560EC98();
    v61 = v83;
    v62 = v28;
    v63 = v92;
    sub_1D560EC98();
    v64 = sub_1D560D528();
    v65 = *v74;
    v66 = v61;
    v67 = v84;
    (*v74)(v66, v84);
    v65(v59, v67);
    v68 = *v79;
    (*v79)(v58, v60);
    v69 = v63;
    v28 = v62;
    v22 = v77;
    v70 = v60;
    v44 = v76;
    v68(v69, v70);
    v10 = v78;
    v45 = v88;
    v43 = v75;
    if ((v64 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54545A4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__entries;
  swift_beginAccess();
  (*(v5 + 16))(v10, v1 + v11, v3);
  swift_beginAccess();
  (*(v5 + 24))(v1 + v11, a1, v3);
  swift_endAccess();
  sub_1D5453C18(v10);
  v12 = *(v5 + 8);
  v12(a1, v3);
  v13 = OUTLINED_FUNCTION_61();
  return (v12)(v13);
}

uint64_t sub_1D5454718(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6, a1);
  v9 = *a2;
  return sub_1D5452744(v7);
}

uint64_t sub_1D54547EC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v9 = v1;
  OUTLINED_FUNCTION_0_236();
  sub_1D4E41400(v3, v4);
  OUTLINED_FUNCTION_28_64();

  v5 = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__entries;
  OUTLINED_FUNCTION_72_5();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  OUTLINED_FUNCTION_14(v6);
  return (*(v7 + 16))(a1, v9 + v5);
}

uint64_t sub_1D54548BC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a2);
  return sub_1D54545A4(v6);
}

uint64_t sub_1D54549E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_236();
  v6 = sub_1D4E41400(v4, v5);
  OUTLINED_FUNCTION_16_3(v6, v7, v8, v9, v10, v11, v12, v13, v16, v1);
  sub_1D560C4C8();

  v14 = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__playlist;
  OUTLINED_FUNCTION_72_5();
  return sub_1D4F39AB0(v2 + v14, a1, &unk_1EC7F1990, &unk_1D561CEF0);
}

uint64_t sub_1D5454A98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1D4F39AB0(a2, &v10 - v6, &unk_1EC7F1990, &unk_1D561CEF0);
  v8 = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__playlist;
  swift_beginAccess();
  sub_1D4FE1E30(v7, a1 + v8);
  return swift_endAccess();
}

uint64_t MusicLibraryPlaylistViewModel.changeHandler.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler);
  v2 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler + 8);
  v3 = OUTLINED_FUNCTION_71();
  sub_1D4EA73A4(v3);
  return OUTLINED_FUNCTION_71();
}

uint64_t sub_1D5454BBC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D5454C00();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D5454C48()
{
  v1 = v0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_236();
  v4 = sub_1D4E41400(v2, v3);
  OUTLINED_FUNCTION_16_3(v4, v5, v6, v7, v8, v9, v10, v11, v15, v0);
  sub_1D560C4C8();

  v12 = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__userEditsHistory;
  OUTLINED_FUNCTION_72_5();
  v13 = *(v1 + v12);
}

uint64_t sub_1D5454CE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D54527FC(v4);
}

uint64_t sub_1D5454D10(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__userEditsHistory;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

uint64_t sub_1D5454D80()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_236();
  v3 = sub_1D4E41400(v1, v2);
  OUTLINED_FUNCTION_16_3(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1D560C4C8();

  return *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__userEditsOffset);
}

uint64_t sub_1D5454E10()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_236();
  v3 = sub_1D4E41400(v1, v2);
  OUTLINED_FUNCTION_16_3(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_1D560C4C8();

  v11 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__serverRevisionIDs);
}

uint64_t sub_1D5454EA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D545288C(v4);
}

uint64_t sub_1D5454ED0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__serverRevisionIDs);
  *(a1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__serverRevisionIDs) = a2;
}

uint64_t sub_1D5454F28(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_236();
  sub_1D4E41400(v4, v5);
  OUTLINED_FUNCTION_28_64();

  v6 = (v2 + *a2);
  v7 = *v6;
  v8 = v6[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t sub_1D5454FB8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  v9 = OUTLINED_FUNCTION_61();
  return a5(v9);
}

uint64_t sub_1D545501C()
{
  swift_getKeyPath();
  sub_1D545D148();
}

uint64_t sub_1D5455090(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = (a1 + *a4);
  v5 = v4[1];
  *v4 = a2;
  v4[1] = a3;
}

uint64_t sub_1D54550D4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_236();
  v3 = sub_1D4E41400(v1, v2);
  OUTLINED_FUNCTION_16_3(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_1D560C4C8();

  v11 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__eventStream);
}

uint64_t sub_1D5455168(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D5452B18();
}

uint64_t sub_1D5455194(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__eventStream);
  *(a1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__eventStream) = a2;
}

void sub_1D54551E4()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  v11 = sub_1D54551D8();
  if (!v12)
  {
    if (!v2)
    {
LABEL_16:
      OUTLINED_FUNCTION_46();
      return;
    }

LABEL_12:
    v15 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
    v16 = sub_1D5614D38();

    [v15 setPlaylistName_];

    sub_1D5457398();
    v17 = [v15 name];
    if (v17)
    {
      v18 = v17;
      v19 = sub_1D5614D68();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    v38 = v19;
    v39 = v21;
    sub_1D560C848();

    v37 = 0x8000000000000028;
    v22 = swift_unknownObjectRetain();
    sub_1D51B12F0(v22, &v37, &v38);
    v24 = v38;
    v23 = v39;
    v26 = v40;
    v25 = v41;
    sub_1D5615458();
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
    OUTLINED_FUNCTION_40_13();
    v31 = swift_allocObject();
    swift_weakInit();
    sub_1D56153C8();

    sub_1D4FEEE2C(v25);

    sub_1D4FEEE2C(v25);

    sub_1D4FEEE2C(v25);
    v32 = sub_1D56153B8();
    v33 = swift_allocObject();
    v34 = MEMORY[0x1E69E85E0];
    v33[2] = v32;
    v33[3] = v34;
    v33[4] = v31;
    v33[5] = v24;
    v33[6] = v23;
    v33[7] = v25;
    v33[8] = v24;
    v33[9] = v23;
    v33[10] = v26;
    v33[11] = v25;

    sub_1D51EC8B4(0, 0, v10, &unk_1D5666088, v33);

    swift_unknownObjectRelease();
    sub_1D4FEEE48(v25);

    sub_1D4FEEE48(v25);

    goto LABEL_16;
  }

  if (!v2)
  {

    goto LABEL_12;
  }

  if (v11 != v4 || v12 != v2)
  {
    OUTLINED_FUNCTION_101_14();
    v14 = sub_1D5616168();

    if (v14)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

LABEL_18:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D54554F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v14;
  *(v8 + 80) = v13;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 40) = a4;
  sub_1D56153C8();
  *(v8 + 104) = sub_1D56153B8();
  v10 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D54555A8, v10, v9);
}

uint64_t sub_1D5455860(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = sub_1D54551D8();
  a1[1] = v3;
  return OUTLINED_FUNCTION_88_5();
}

uint64_t sub_1D54558D4(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = sub_1D54558BC();
  a1[1] = v3;
  return OUTLINED_FUNCTION_88_5();
}

uint64_t sub_1D5455930(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v7 = a1[1];

    v8 = OUTLINED_FUNCTION_61();
    a3(v8);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_61();
    return (a3)(v10);
  }
}

uint64_t sub_1D54559A8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_131_1();
  sub_1D4F39AB0(v15, v16, v17, a6);
  v18 = *a2;
  return a7(v7);
}

void sub_1D5455A40()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9();
  v8 = sub_1D560E728();
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = sub_1D560D9A8();
  v16 = OUTLINED_FUNCTION_22(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = sub_1D560D838();
  v23 = OUTLINED_FUNCTION_4(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_59_0();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v60 - v32;
  v34 = [*(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController) parentPlaylist];
  if (v34)
  {
    v65 = v34;
    v63 = [v34 legacyIdentifierSet];
    sub_1D560D968();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
    v35 = sub_1D560DB08();
    v64 = v3;
    v36 = v35;
    OUTLINED_FUNCTION_4(v35);
    v61 = v21;
    v62 = v22;
    v38 = v37;
    v40 = *(v39 + 72);
    v41 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1D5621D90;
    v43 = v42 + v41;
    v44 = *MEMORY[0x1E6975040];
    v60 = v30;
    v45 = *(v38 + 104);
    v45(v43, v44, v36);
    v45(v43 + v40, *MEMORY[0x1E6975030], v36);
    sub_1D560E718();
    sub_1D560D9E8();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
    sub_1D4F40E88(v63, v61, v14, v1, v33);
    v50 = v62;
    (*(v25 + 16))(v60, v33, v62);
    v51 = v65;
    v52 = [v65 underlyingObject];
    OUTLINED_FUNCTION_104_19();
    v53 = v64;
    sub_1D56144C8();

    (*(v25 + 8))(v33, v50);
    v54 = sub_1D5614898();
    __swift_storeEnumTagSinglePayload(v53, 0, 1, v54);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    sub_1D5614898();
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_46();

    __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
  }
}

void sub_1D5455DD8()
{
  OUTLINED_FUNCTION_47();
  v36 = v0;
  v2 = v1;
  v3 = sub_1D5614898();
  v4 = OUTLINED_FUNCTION_4(v3);
  v34 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_3();
  v8 = sub_1D56131C8();
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33 - v21;
  v35 = *(v36 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
  v36 = v2;
  sub_1D4F39AB0(v2, &v33 - v21, &unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_57(v22, 1, v3);
  if (v23)
  {
    sub_1D4E50004(v22, &unk_1EC7F1990, &unk_1D561CEF0);
    v29 = 0;
  }

  else
  {
    (*(v11 + 104))(v16, *MEMORY[0x1E6976988], v8);
    v24 = *(v11 + 16);
    v25 = OUTLINED_FUNCTION_45_3();
    v26(v25);
    v27 = v34;
    (*(v34 + 16))(v0, v22, v3);
    sub_1D4ECAE6C();
    v29 = v28;
    v30 = *(v11 + 8);
    v31 = OUTLINED_FUNCTION_99();
    v32(v31);
    (*(v27 + 8))(v22, v3);
  }

  [v35 setParentPlaylist_];

  sub_1D4E50004(v36, &unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_46();
}

void (*sub_1D5456070(void *a1))(uint64_t *a1, char a2)
{
  OUTLINED_FUNCTION_125_3(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  *(v1 + 8) = __swift_coroFrameAllocStub(v4);
  *(v1 + 16) = __swift_coroFrameAllocStub(v4);
  sub_1D5455A40();
  return sub_1D5456104;
}

void sub_1D545612C()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_115();
  v8 = sub_1D560E728();
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v70 = v13 - v12;
  OUTLINED_FUNCTION_70_0();
  v14 = sub_1D560D9A8();
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  v23 = sub_1D560D838();
  v24 = OUTLINED_FUNCTION_4(v23);
  v71 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_59_0();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v66 - v32;
  v34 = [*(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController) parentPlaylist];
  if (v34)
  {
    v35 = v34;
    v67 = v23;
    v68 = v1;
    v69 = v3;
    v66 = [v34 legacyIdentifierSet];
    if (qword_1EDD53CC0 != -1)
    {
      swift_once();
    }

    v36 = __swift_project_value_buffer(v14, qword_1EDD53CC8);
    (*(v17 + 16))(v22, v36, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
    v37 = sub_1D560DB08();
    OUTLINED_FUNCTION_4(v37);
    v39 = v38;
    v41 = *(v40 + 72);
    v42 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1D5621D90;
    v44 = v43 + v42;
    v45 = *(v39 + 104);
    v45(v44, *MEMORY[0x1E6975040], v37);
    v45(v44 + v41, *MEMORY[0x1E6975030], v37);
    v46 = v70;
    sub_1D560E718();
    sub_1D560D9E8();
    v47 = v68;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
    sub_1D4F40E88(v66, v22, v46, v47, v33);
    v52 = v71;
    v53 = *(v71 + 16);
    v54 = OUTLINED_FUNCTION_15_2();
    v55 = v67;
    v56(v54);
    v57 = [v35 underlyingObject];
    OUTLINED_FUNCTION_104_19();
    Playlist.Folder.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v30, v58, &v72, v69);

    (*(v52 + 8))(v33, v55);
    type metadata accessor for Playlist.Folder();
    v59 = OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v59, 0, 1, v60);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    type metadata accessor for Playlist.Folder();
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_46();

    __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  }
}

void sub_1D545653C()
{
  OUTLINED_FUNCTION_47();
  v29 = v0;
  v2 = v1;
  v3 = type metadata accessor for Playlist.Folder();
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_3();
  v7 = sub_1D56131C8();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1980, &qword_1D5642040);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v28 - v20;
  v28 = *(v29 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
  v29 = v2;
  sub_1D4F39AB0(v2, &v28 - v20, &qword_1EC7F1980, &qword_1D5642040);
  OUTLINED_FUNCTION_57(v21, 1, v3);
  if (v22)
  {
    sub_1D4E50004(v21, &qword_1EC7F1980, &qword_1D5642040);
    v27 = 0;
  }

  else
  {
    (*(v10 + 104))(v15, *MEMORY[0x1E6976988], v7);
    v23 = *(v10 + 16);
    v24 = OUTLINED_FUNCTION_15_2();
    v25(v24);
    sub_1D545D45C(v21, v0, type metadata accessor for Playlist.Folder);
    sub_1D4ECBA10();
    v27 = v26;
    (*(v10 + 8))(v15, v7);
    sub_1D545D4B8(v21, type metadata accessor for Playlist.Folder);
  }

  [v28 setParentPlaylist_];

  sub_1D4E50004(v29, &qword_1EC7F1980, &qword_1D5642040);
  OUTLINED_FUNCTION_46();
}

void (*sub_1D54567A4(void *a1))(uint64_t *a1, char a2)
{
  OUTLINED_FUNCTION_125_3(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1980, &qword_1D5642040);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  *(v1 + 8) = __swift_coroFrameAllocStub(v4);
  *(v1 + 16) = __swift_coroFrameAllocStub(v4);
  sub_1D545612C();
  return sub_1D5456838;
}

void sub_1D5456860(uint64_t *a1, char a2, void (*a3)(void *), uint64_t *a4, uint64_t *a5)
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = *a1;
  if (a2)
  {
    sub_1D4F39AB0(a1[2], v6, a4, a5);
    a3(v6);
    v10 = OUTLINED_FUNCTION_70();
    sub_1D4E50004(v10, v11, a5);
  }

  else
  {
    a3(a1[2]);
  }

  free(v7);

  free(v6);
}

id (*sub_1D5456944(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
  *a1 = v3;
  OUTLINED_FUNCTION_115_0([v3 addInsertedTracksToLibrary]);
  return sub_1D4FD732C;
}

void sub_1D545699C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1D5456A0C(v2);
}

id sub_1D54569CC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController) userImage];

  return v1;
}

void sub_1D5456A0C(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController) setUserImage_];
}

uint64_t sub_1D5456A5C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
  a1[1] = v3;
  *a1 = [v3 userImage];
  return OUTLINED_FUNCTION_88_5();
}

void (*sub_1D5456AD4(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_125_3(a1);
  v1 = sub_1D5456ABC();
  OUTLINED_FUNCTION_115_0(v1);
  return sub_1D5456B14;
}

void sub_1D5456B54(char a1, SEL *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
  if (a1 == 2)
  {
    v5 = 0;
  }

  else
  {
    sub_1D4ECC7A8(0, &qword_1EC7ED3D0, 0x1E696AD98);
    v5 = sub_1D5615828();
  }

  v6 = v5;
  [v4 *a2];
}

void (*sub_1D5456BF4(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_125_3(a1);
  v1 = sub_1D5456B3C();
  OUTLINED_FUNCTION_115_0(v1);
  return sub_1D5456C34;
}

uint64_t sub_1D5456C68(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController) *a1];
  if (!v2)
  {
    return 2;
  }

  v3 = v2;
  v4 = [v2 BOOLValue];

  return v4;
}

void (*sub_1D5456CD8(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_125_3(a1);
  v1 = sub_1D5456C5C();
  OUTLINED_FUNCTION_115_0(v1);
  return sub_1D5456D18;
}

uint64_t sub_1D5456D40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D5456D98();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D5456D70(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1D54528C0();
}

uint64_t sub_1D5456DAC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_236();
  sub_1D4E41400(v4, v5);
  OUTLINED_FUNCTION_28_64();

  return *(v2 + *a2);
}

uint64_t sub_1D5456E2C(void (*a1)(void), uint64_t (*a2)(void))
{
  a1();
  a2();
  sub_1D560C848();
}

uint64_t sub_1D5456E8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D5456EE4();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D5456EBC(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1D54528E0();
}

uint64_t sub_1D5456F04(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController) *a1];
  if (v2)
  {
    v3 = v2;
    sub_1D5614D68();
  }

  return OUTLINED_FUNCTION_71();
}

void sub_1D5456F7C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
  if (a2)
  {
    v6 = sub_1D5614D38();
  }

  else
  {
    v6 = 0;
  }

  [v5 *a3];
}

uint64_t sub_1D5456FFC(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = sub_1D5456EF8();
  a1[1] = v3;
  return OUTLINED_FUNCTION_88_5();
}

uint64_t sub_1D5457058(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D54570C0(v4);
}

uint64_t sub_1D5457084()
{
  v1 = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__coverArtworkRecipes;
  OUTLINED_FUNCTION_72_5();
  v2 = *(v0 + v1);
}

uint64_t sub_1D54570C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__coverArtworkRecipes;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1D5457178@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D54571D0();
  *a2 = result;
  return result;
}

uint64_t sub_1D54571A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D5452960(v4);
}

uint64_t sub_1D54571E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D545723C();
  *a2 = result;
  return result;
}

uint64_t sub_1D5457210(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D5452994(v4);
}

uint64_t sub_1D5457250(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_236();
  sub_1D4E41400(v4, v5);
  OUTLINED_FUNCTION_28_64();

  v6 = *(v2 + *a2);
}

uint64_t sub_1D54572D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D545732C();
  *a2 = result;
  return result;
}

uint64_t sub_1D5457300(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D54529C8(v4);
}

uint64_t sub_1D5457340@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D5457398();
  *a2 = result;
  return result;
}

uint64_t sub_1D545736C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D54529FC(v4);
}

uint64_t sub_1D54573AC()
{
  OUTLINED_FUNCTION_60();
  v1[18] = v0;
  v2 = sub_1D560C998();
  v1[19] = v2;
  OUTLINED_FUNCTION_69(v2);
  v1[20] = v3;
  v5 = *(v4 + 64);
  v1[21] = OUTLINED_FUNCTION_127();
  v6 = sub_1D56131C8();
  v1[22] = v6;
  OUTLINED_FUNCTION_69(v6);
  v1[23] = v7;
  v9 = *(v8 + 64);
  v1[24] = OUTLINED_FUNCTION_167();
  v1[25] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  v1[26] = v10;
  OUTLINED_FUNCTION_69(v10);
  v1[27] = v11;
  v13 = *(v12 + 64);
  v1[28] = OUTLINED_FUNCTION_127();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  v1[29] = OUTLINED_FUNCTION_127();
  v17 = sub_1D5614898();
  v1[30] = v17;
  OUTLINED_FUNCTION_69(v17);
  v1[31] = v18;
  v20 = *(v19 + 64);
  v1[32] = OUTLINED_FUNCTION_167();
  v1[33] = swift_task_alloc();
  sub_1D56153C8();
  v1[34] = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_47_1();
  v1[35] = v21;
  v1[36] = v22;
  v23 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v23, v24, v25);
}

uint64_t sub_1D54575AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (qword_1EC7E8DF0 != -1)
  {
    OUTLINED_FUNCTION_1_176();
  }

  v29 = v28[18];
  v30 = sub_1D560C758();
  v28[37] = OUTLINED_FUNCTION_62_4(v30, qword_1EC87C140);

  v31 = sub_1D560C738();
  v32 = sub_1D56156E8();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = v28[18];
    OUTLINED_FUNCTION_142();
    v81 = OUTLINED_FUNCTION_37_0();
    *v29 = 136446210;
    v34 = sub_1D4F636B4();
    v40 = OUTLINED_FUNCTION_88_18(v34, v35, v36, v37, v38, v39);

    *(v29 + 4) = v40;
    OUTLINED_FUNCTION_22_20(&dword_1D4E3F000, v41, v42, "%{public}s Begin editing on playlist edit view model.");
    __swift_destroy_boxed_opaque_existential_1(v81);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  v44 = v28[29];
  v43 = v28[30];
  v45 = v28[18];
  sub_1D54549E4(v44);
  OUTLINED_FUNCTION_57(v44, 1, v43);
  if (v46)
  {
    sub_1D4E50004(v28[29], &unk_1EC7F1990, &unk_1D561CEF0);
LABEL_10:
    v53 = *(v28[18] + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
    v28[2] = v28;
    OUTLINED_FUNCTION_25_62();
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
    OUTLINED_FUNCTION_24_66(v54);
    OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
    OUTLINED_FUNCTION_23_69();
    [v53 beginEditingWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v28 + 2);
  }

  v47 = v28[28];
  v48 = v28[26];
  v49 = v28[27];
  v50 = v28[18];
  (*(v28[31] + 32))(v28[33], v28[29], v28[30]);
  sub_1D54547EC(v47);
  v51 = sub_1D4F23528();
  v52 = *(v49 + 8);
  v28[38] = v52;
  v28[39] = (v49 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v52(v47, v48);
  if (v51)
  {
    (*(v28[31] + 8))(v28[33], v28[30]);
    goto LABEL_10;
  }

  v56 = v28[31];
  v55 = v28[32];
  v57 = v28[30];
  v58 = v28[25];
  v59 = v28[22];
  v60 = v28[23];
  v61 = v28[20];
  v80 = v28[21];
  v78 = v28[28];
  v79 = v28[19];
  v77 = v28[18];
  (*(v60 + 104))(v58, *MEMORY[0x1E6976988], v59);
  v62 = *(v60 + 16);
  v63 = OUTLINED_FUNCTION_45_3();
  v64(v63);
  v65 = *(v56 + 16);
  v66 = OUTLINED_FUNCTION_71();
  v67(v66);
  sub_1D4ECAE6C();
  v28[40] = v68;
  (*(v60 + 8))(v58, v59);
  sub_1D54547EC(v78);
  (*(v61 + 104))(v80, *MEMORY[0x1E69E7F88], v79);
  v69 = *(MEMORY[0x1E6977588] + 4);
  v70 = swift_task_alloc();
  v28[41] = v70;
  v71 = sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
  v28[42] = v71;
  v72 = sub_1D545EB20(&qword_1EDD53B90);
  *v70 = v28;
  v70[1] = sub_1D54579E4;
  v73 = v28[28];
  v74 = v28[26];
  v75 = v28[21];

  return MEMORY[0x1EEDD2260](100, v75, 4, sub_1D545813C, 0, v74, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1D54579E4()
{
  OUTLINED_FUNCTION_75_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = v1[41];
  v5 = v1[39];
  v6 = v1[38];
  v7 = v1[28];
  v8 = v1[26];
  v9 = v1[21];
  v10 = v1[20];
  v11 = v1[19];
  v12 = *v0;
  OUTLINED_FUNCTION_24_1();
  *v13 = v12;
  *(v15 + 344) = v14;

  (*(v10 + 8))(v9, v11);
  v6(v7, v8);
  v16 = v1[36];
  v17 = v1[35];

  return MEMORY[0x1EEE6DFA0](sub_1D5457BCC, v17, v16);
}

uint64_t sub_1D5457BCC()
{
  OUTLINED_FUNCTION_75_0();
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[40];
  v4 = v0[37];
  v5 = [objc_allocWithZone(MEMORY[0x1E69776B8]) init];
  [v5 appendSection_];
  OUTLINED_FUNCTION_99();
  v6 = sub_1D5615158();

  [v5 appendItems_];

  v7 = sub_1D560C738();
  v8 = sub_1D56156E8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D4E3F000, v7, v8, "Setting initial tracklist on underlying playlist edit controller.", v9, 2u);
    OUTLINED_FUNCTION_122();
  }

  v10 = v0[40];
  v11 = v0[33];
  v12 = v0[30];
  v13 = v0[31];
  v14 = v0[18];

  [*(v14 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController) setInitialTrackList_];
  (*(v13 + 8))(v11, v12);
  v15 = *(v0[18] + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
  v0[2] = v0;
  OUTLINED_FUNCTION_25_62();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  v0[10] = MEMORY[0x1E69E9820];
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_23_69();
  [v15 beginEditingWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D5457DD4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 352) = *(v3 + 48);
  OUTLINED_FUNCTION_79_22();
  v5 = *(v4 + 288);
  v7 = *(v6 + 280);
  if (v8)
  {
    v9 = sub_1D5458070;
  }

  else
  {
    v9 = sub_1D5457EF0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t sub_1D5457EF0()
{
  OUTLINED_FUNCTION_75_0();
  v24 = v0;
  v1 = v0[37];
  v2 = v0[34];
  v3 = v0[18];

  sub_1D54527DC();

  v4 = sub_1D560C738();
  v5 = sub_1D56156E8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[18];
    OUTLINED_FUNCTION_142();
    v7 = OUTLINED_FUNCTION_37_0();
    v23 = v7;
    *v3 = 136446210;
    v8 = sub_1D4F636B4();
    v10 = sub_1D4E6835C(v8, v9, &v23);

    *(v3 + 4) = v10;
    OUTLINED_FUNCTION_22_20(&dword_1D4E3F000, v11, v12, "%{public}s Completed begin editing on playlist edit view model.");
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  v14 = v0[32];
  v13 = v0[33];
  v16 = v0[28];
  v15 = v0[29];
  v18 = v0[24];
  v17 = v0[25];
  v19 = v0[21];
  v20 = v0[18];
  sub_1D545CE40();

  OUTLINED_FUNCTION_22_1();

  return v21();
}

uint64_t sub_1D5458070()
{
  OUTLINED_FUNCTION_75_0();
  v1 = v0[44];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  v6 = v0[28];
  v5 = v0[29];
  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[21];

  swift_willThrow();

  OUTLINED_FUNCTION_55();
  v11 = v0[44];

  return v10();
}

uint64_t sub_1D545813C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1D5614828();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D56131C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  (*(v10 + 104))(&v20 - v15, *MEMORY[0x1E6976988], v9);
  (*(v10 + 16))(v14, v16, v9);
  (*(v5 + 16))(v8, a1, v4);
  sub_1D4ECAE44();
  v18 = v17;
  result = (*(v10 + 8))(v16, v9);
  *a2 = v18;
  return result;
}

uint64_t sub_1D5458324()
{
  OUTLINED_FUNCTION_60();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  sub_1D56153C8();
  v1[7] = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_47_1();
  v1[8] = v5;
  v1[9] = v6;
  v7 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D54583A8()
{
  OUTLINED_FUNCTION_80();
  v2 = v1[3];
  v3 = sub_1D504A3C8(v1[4], v1[4]);
  OUTLINED_FUNCTION_56_36(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_83_22();
  v6 = sub_1D5615198();
  v8 = OUTLINED_FUNCTION_70_25(v6, v7);
  v9(v8);
  v10 = sub_1D5047750(v0);
  v1[10] = v10;
  v1[2] = v10;
  v11 = swift_task_alloc();
  v1[11] = v11;
  sub_1D56152D8();
  OUTLINED_FUNCTION_27_68();
  *v11 = v1;
  v11[1] = sub_1D54584DC;
  v12 = v1[5];
  v13 = v1[6];
  v14 = v1[4];

  return sub_1D54586B8();
}

uint64_t sub_1D54584DC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *(v5 + 80);
  v8 = *v1;
  OUTLINED_FUNCTION_8();
  *v9 = v8;
  v3[12] = v0;

  v10 = v3[8];
  v11 = v3[9];
  if (v0)
  {
    v12 = sub_1D545865C;
  }

  else
  {
    v12 = sub_1D5458604;
  }

  return MEMORY[0x1EEE6DFA0](v12, v10, v11);
}

uint64_t sub_1D5458604()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_22_1();

  return v2();
}

uint64_t sub_1D545865C()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_55();
  v3 = *(v0 + 96);

  return v2();
}

uint64_t sub_1D54586B8()
{
  OUTLINED_FUNCTION_60();
  v1[23] = v2;
  v1[24] = v0;
  v1[21] = v3;
  v1[22] = v4;
  v1[19] = v5;
  v1[20] = v6;
  sub_1D56153C8();
  v1[25] = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_47_1();
  v1[26] = v7;
  v1[27] = v8;
  v9 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5458A08()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 240) = *(v3 + 48);
  OUTLINED_FUNCTION_79_22();
  v5 = *(v4 + 216);
  v7 = *(v6 + 208);
  if (v8)
  {
    v9 = sub_1D5458E2C;
  }

  else
  {
    v9 = sub_1D5458B24;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t sub_1D5458B24()
{
  v33 = v0;
  v1 = v0[29];
  v3 = v0[24];
  v2 = v0[25];

  v4 = v0[18];

  v28 = 0x8000000000000000;
  v5 = swift_unknownObjectRetain();
  sub_1D51B12F0(v5, &v28, &v29);
  v7 = v29;
  v6 = v30;
  v9 = v31;
  v8 = v32;
  v31 = v32;

  sub_1D4FEEE2C(v8);
  sub_1D545CFA0(&v29);
  v10 = *(v3 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler);
  if (v10)
  {
    v11 = *(v3 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler + 8);
    v12 = v0[28];
    v13 = v0[24];
    v29 = v7;
    v30 = v6;
    v31 = v9;
    v32 = v8;

    v14 = OUTLINED_FUNCTION_123_2();
    sub_1D4EA73A4(v14);
    v10(&v29, sub_1D545EC18, v13);

    sub_1D4FEEE2C(v8);
    v15 = sub_1D560C738();
    v16 = sub_1D56156E8();

    sub_1D4FEEE48(v8);
    if (os_log_type_enabled(v15, v16))
    {
      v27 = v16;
      v17 = v0[24];
      OUTLINED_FUNCTION_144();
      v28 = OUTLINED_FUNCTION_34_61();
      *v12 = 136446466;
      v18 = sub_1D4F636B4();
      sub_1D4E6835C(v18, v19, &v28);
      OUTLINED_FUNCTION_115_11();
      *(v12 + 4) = v13;
      OUTLINED_FUNCTION_60_29();
      v29 = v7;
      v30 = v6;
      v31 = v9;
      v32 = v8;
      v20 = sub_1D51B1128();
      sub_1D4E6835C(v20, v21, &v28);
      OUTLINED_FUNCTION_115_11();
      *(v12 + 14) = v13;
      _os_log_impl(&dword_1D4E3F000, v15, v27, "%{public}s Invoked delta handler for append with revision: %{public}s", v12, 0x16u);
      OUTLINED_FUNCTION_87_19();
      OUTLINED_FUNCTION_37_46();
      OUTLINED_FUNCTION_114_0();
    }

    v22 = v0[24];
    if (sub_1D54550D4())
    {
      v29 = v7;
      v30 = v6;
      v31 = v9;
      v32 = v8;
      v23 = sub_1D53A5948(&v29);
      sub_1D53A48AC(v23);
      swift_unknownObjectRelease();
      sub_1D4EA7420(v10);

      OUTLINED_FUNCTION_57_37();
      sub_1D4FEEE48(v8);

      goto LABEL_9;
    }

    swift_unknownObjectRelease();
    sub_1D4EA7420(v10);
  }

  else
  {
    v24 = v0[24];
    sub_1D545CE40();
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_57_37();
  sub_1D4FEEE48(v8);
LABEL_9:
  OUTLINED_FUNCTION_22_1();

  return v25();
}

uint64_t sub_1D5458E2C()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[25];

  swift_willThrow();

  OUTLINED_FUNCTION_55();
  v5 = v0[30];

  return v4();
}

uint64_t sub_1D5458E9C()
{
  OUTLINED_FUNCTION_60();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[3] = v5;
  sub_1D56153C8();
  v1[8] = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_47_1();
  v1[9] = v6;
  v1[10] = v7;
  v8 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D5458F24()
{
  OUTLINED_FUNCTION_80();
  v2 = v1[3];
  v3 = sub_1D504A3C8(v1[5], v1[5]);
  OUTLINED_FUNCTION_56_36(v3);
  v5 = *(v4 + 72);
  OUTLINED_FUNCTION_83_22();
  v6 = sub_1D5615198();
  v8 = OUTLINED_FUNCTION_70_25(v6, v7);
  v9(v8);
  v10 = sub_1D5047750(v0);
  v1[11] = v10;
  v1[2] = v10;
  v11 = swift_task_alloc();
  v1[12] = v11;
  sub_1D56152D8();
  OUTLINED_FUNCTION_27_68();
  *v11 = v1;
  v11[1] = sub_1D545905C;
  v12 = v1[6];
  v13 = v1[7];
  v14 = v1[4];
  v15 = v1[5];

  return sub_1D5459238();
}

uint64_t sub_1D545905C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *(v5 + 88);
  v8 = *v1;
  OUTLINED_FUNCTION_8();
  *v9 = v8;
  v3[13] = v0;

  v10 = v3[9];
  v11 = v3[10];
  if (v0)
  {
    v12 = sub_1D54591DC;
  }

  else
  {
    v12 = sub_1D5459184;
  }

  return MEMORY[0x1EEE6DFA0](v12, v10, v11);
}

uint64_t sub_1D5459184()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_22_1();

  return v2();
}

uint64_t sub_1D54591DC()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_55();
  v3 = *(v0 + 104);

  return v2();
}

uint64_t sub_1D5459238()
{
  OUTLINED_FUNCTION_60();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v1[20] = v5;
  v1[21] = v6;
  v1[19] = v7;
  v8 = sub_1D5614828();
  v1[26] = v8;
  OUTLINED_FUNCTION_69(v8);
  v1[27] = v9;
  v11 = *(v10 + 64);
  v1[28] = OUTLINED_FUNCTION_127();
  v12 = sub_1D56131C8();
  v1[29] = v12;
  OUTLINED_FUNCTION_69(v12);
  v1[30] = v13;
  v15 = *(v14 + 64);
  v1[31] = OUTLINED_FUNCTION_167();
  v1[32] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  v1[33] = OUTLINED_FUNCTION_127();
  sub_1D56153C8();
  v1[34] = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_47_1();
  v1[35] = v19;
  v1[36] = v20;
  v21 = OUTLINED_FUNCTION_45_6();

  return MEMORY[0x1EEE6DFA0](v21, v22, v23);
}

uint64_t sub_1D5459394()
{
  v1 = *(v0 + 200);
  if (sub_1D5454C34())
  {
    v2 = v0 + 144;
    v3 = *(v0 + 264);
    v5 = *(v0 + 200);
    v4 = *(v0 + 208);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = swift_task_alloc();
    v46 = *(v0 + 184);
    *(v8 + 16) = *(v0 + 168);
    *(v8 + 32) = v46;
    v9 = sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
    OUTLINED_FUNCTION_113_4(v9, v10, v11, v12, v13, v14, v15, v16, v44, v45, v46);
    v17 = OUTLINED_FUNCTION_88_5();
    sub_1D4FD9450(v17, v18, v19, v9, v20, v21, v22, v23);

    v24 = *(v5 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel__underlyingEditController);
    v25 = sub_1D5615158();
    *(v0 + 296) = v25;

    v26 = OUTLINED_FUNCTION_45_3();
    sub_1D4F39AB0(v26, v27, v28, v29);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v4);
    v31 = *(v0 + 264);
    if (EnumTagSinglePayload == 1)
    {
      sub_1D4E50004(*(v0 + 264), &unk_1EC7F2BE0, &qword_1D56250F0);
      v32 = 0;
    }

    else
    {
      v34 = *(v0 + 248);
      v35 = *(v0 + 256);
      v36 = *(v0 + 232);
      v37 = *(v0 + 240);
      v47 = v24;
      v38 = *(v0 + 216);
      v39 = *(v0 + 224);
      v40 = *(v0 + 208);
      (*(v37 + 104))(v35, *MEMORY[0x1E6976988], v36);
      (*(v37 + 16))(v34, v35, v36);
      (*(v38 + 16))(v39, v31, v40);
      sub_1D4ECAE44();
      v32 = v41;
      (*(v37 + 8))(v35, v36);
      v2 = v0 + 144;
      (*(v38 + 8))(v31, v40);
      v24 = v47;
    }

    *(v0 + 304) = v32;
    *(v0 + 16) = v0;
    *(v0 + 56) = v2;
    *(v0 + 24) = sub_1D54596D8;
    v42 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6A78, &unk_1D56661B0);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
    OUTLINED_FUNCTION_26_72();
    *(v0 + 104) = v43;
    *(v0 + 112) = v42;
    [v24 insertObjects:v25 afterEntry:v32 completion:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    OUTLINED_FUNCTION_95_1();
    return OUTLINED_FUNCTION_3_180();
  }
}

uint64_t sub_1D54596D8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 312) = *(v3 + 48);
  OUTLINED_FUNCTION_79_22();
  v5 = *(v4 + 288);
  v7 = *(v6 + 280);
  if (v8)
  {
    v9 = sub_1D5459B24;
  }

  else
  {
    v9 = sub_1D54597F4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t sub_1D54597F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_342();
  a27 = v29;
  a28 = v30;
  OUTLINED_FUNCTION_335();
  a26 = v28;
  v32 = v28[37];
  v31 = v28[38];
  v33 = v28[34];
  v34 = v28[25];

  v35 = v28[18];

  a13 = 0x8000000000000008;
  v36 = swift_unknownObjectRetain();
  sub_1D51B12F0(v36, &a13, &a14);
  v38 = a14;
  v37 = a15;
  v40 = a16;
  v39 = a17;
  a16 = a17;

  sub_1D4FEEE2C(v39);
  sub_1D545CFA0(&a14);
  v41 = *(v34 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler);
  v42 = v28[25];
  if (v41)
  {
    v43 = *(v34 + OBJC_IVAR____TtC16MusicKitInternal29MusicLibraryPlaylistViewModel_changeHandler + 8);
    a12 = v38;
    a14 = v38;
    a15 = v37;
    a16 = v40;
    a17 = v39;
    v44 = OUTLINED_FUNCTION_123_2();
    sub_1D4EA73A4(v44);

    a11 = v43;
    v41(&a14, sub_1D545EC18, v42);

    if (qword_1EC7E8DF0 != -1)
    {
      OUTLINED_FUNCTION_1_176();
    }

    v45 = v28[25];
    v46 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v46, qword_1EC87C140);

    sub_1D4FEEE2C(v39);
    v47 = sub_1D560C738();
    v48 = sub_1D56156E8();

    sub_1D4FEEE48(v39);
    if (os_log_type_enabled(v47, v48))
    {
      v49 = v28[25];
      OUTLINED_FUNCTION_144();
      a10 = v35;
      a9 = OUTLINED_FUNCTION_34_61();
      a13 = a9;
      *v35 = 136446466;
      v50 = sub_1D4F636B4();
      OUTLINED_FUNCTION_88_18(v50, v51, v52, v53, v54, v55);
      OUTLINED_FUNCTION_86_22();
      *(v35 + 4) = v45;
      OUTLINED_FUNCTION_60_29();
      a14 = a12;
      a15 = v37;
      a16 = v40;
      a17 = v39;
      v56 = sub_1D51B1128();
      OUTLINED_FUNCTION_88_18(v56, v57, v58, v59, v60, v61);
      OUTLINED_FUNCTION_86_22();
      *(v35 + 14) = v45;
      OUTLINED_FUNCTION_51_35(&dword_1D4E3F000, v62, v63, "%{public}s Invoked delta handler for insert with revision: %{public}s.");
      OUTLINED_FUNCTION_87_19();
      OUTLINED_FUNCTION_37_46();
      OUTLINED_FUNCTION_122();
    }

    v64 = v28[25];
    if (sub_1D54550D4())
    {
      a14 = a12;
      a15 = v37;
      a16 = v40;
      a17 = v39;
      v65 = sub_1D53A5948(&a14);
      sub_1D53A48AC(v65);
      swift_unknownObjectRelease();
      sub_1D4EA7420(v41);

      OUTLINED_FUNCTION_57_37();
      sub_1D4FEEE48(v39);

      goto LABEL_11;
    }

    swift_unknownObjectRelease();
    sub_1D4EA7420(v41);
  }

  else
  {
    v66 = v28[25];
    sub_1D545CE40();
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_57_37();
  sub_1D4FEEE48(v39);
LABEL_11:
  v68 = v28[32];
  v67 = v28[33];
  v69 = v28[31];
  v70 = v28[28];

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_341();

  return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}