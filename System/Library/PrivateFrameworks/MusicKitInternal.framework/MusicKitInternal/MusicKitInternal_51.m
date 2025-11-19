uint64_t sub_1D52DB9E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

uint64_t sub_1D52DBA44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D52DBA9C()
{
  v0 = sub_1D5610088();
  __swift_allocate_value_buffer(v0, qword_1EC87C4F0);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  return sub_1D560FE28();
}

unint64_t sub_1D52DBAE4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorePlatformMusicMovie.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEB)
  {
    if (a2 + 21 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 21) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 22;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v5 = v6 - 22;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StorePlatformMusicMovie.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
          *result = a2 + 21;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D52DBC90()
{
  result = qword_1EC7F3978;
  if (!qword_1EC7F3978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3978);
  }

  return result;
}

unint64_t sub_1D52DBCE8()
{
  result = qword_1EC7F3980;
  if (!qword_1EC7F3980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3980);
  }

  return result;
}

unint64_t sub_1D52DBD40()
{
  result = qword_1EC7F3988;
  if (!qword_1EC7F3988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3988);
  }

  return result;
}

uint64_t MusicCatalogInternalSearchResponse.Context.Citation.init(id:source:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = sub_1D560C368();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  if (a2)
  {
    v21 = a2;
  }

  else
  {
    sub_1D5615B68();

    OUTLINED_FUNCTION_6_98();
    v34 = v23;
    v35 = v22;
    sub_1D560C358();
    v33 = a3;
    v24 = a5;
    v25 = sub_1D560C338();
    v27 = v26;
    (*(v15 + 8))(v20, v12);
    v28 = v25;
    a5 = v24;
    a3 = v33;
    MEMORY[0x1DA6EAC70](v28, v27);

    a1 = v34;
    v21 = v35;
  }

  *a6 = a1;
  a6[1] = v21;
  v29 = type metadata accessor for MusicCatalogInternalSearchResponse.Context.Citation();
  *(a6 + *(v29 + 28)) = a2 == 0;
  if (a4)
  {
    v30 = a3;
  }

  else
  {
    v30 = 0;
  }

  v31 = 0xE000000000000000;
  if (a4)
  {
    v31 = a4;
  }

  a6[2] = v30;
  a6[3] = v31;
  return sub_1D4F39A1C(a5, a6 + *(v29 + 24), &unk_1EC7E9CA8, &unk_1D561D1D0);
}

uint64_t type metadata accessor for MusicCatalogInternalSearchResponse.Context.Citation()
{
  result = qword_1EC7F3998;
  if (!qword_1EC7F3998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicCatalogInternalSearchResponse.Context.Citation.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t MusicCatalogInternalSearchResponse.Context.Citation.source.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_71();
}

uint64_t static MusicCatalogInternalSearchResponse.Context.Citation.== infix(_:_:)(void *a1, void *a2)
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
  v18 = &v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v37 - v23;
  v25 = *a1 == *a2 && a1[1] == a2[1];
  if (!v25 && (sub_1D5616168() & 1) == 0)
  {
    goto LABEL_20;
  }

  v26 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v26 && (sub_1D5616168() & 1) == 0)
  {
    goto LABEL_20;
  }

  v38 = v7;
  v37 = type metadata accessor for MusicCatalogInternalSearchResponse.Context.Citation();
  v27 = *(v37 + 24);
  v28 = *(v19 + 48);
  sub_1D4F39AB0(a1 + v27, v24, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4F39AB0(a2 + v27, &v24[v28], &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_10(v24);
  if (v25)
  {
    OUTLINED_FUNCTION_10(&v24[v28]);
    if (v25)
    {
      sub_1D4E50004(v24, &unk_1EC7E9CA8, &unk_1D561D1D0);
LABEL_22:
      v30 = *(a1 + *(v37 + 28)) ^ *(a2 + *(v37 + 28)) ^ 1;
      return v30 & 1;
    }

    goto LABEL_19;
  }

  sub_1D4F39AB0(v24, v18, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_10(&v24[v28]);
  if (v29)
  {
    (*(v38 + 8))(v18, v4);
LABEL_19:
    sub_1D4E50004(v24, &qword_1EC7E9FB0, &qword_1D562C590);
    goto LABEL_20;
  }

  v31 = v38;
  (*(v38 + 32))(v12, &v24[v28], v4);
  OUTLINED_FUNCTION_3_130();
  sub_1D52DCEC4(v32, v33);
  v34 = sub_1D5614D18();
  v35 = *(v31 + 8);
  v35(v12, v4);
  v35(v18, v4);
  sub_1D4E50004(v24, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if (v34)
  {
    goto LABEL_22;
  }

LABEL_20:
  v30 = 0;
  return v30 & 1;
}

uint64_t MusicCatalogInternalSearchResponse.Context.Citation.hash(into:)()
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
  v16 = &v26 - v15;
  v17 = *v1;
  v18 = v1[1];
  sub_1D5614E28();
  v19 = v1[2];
  v20 = v1[3];
  sub_1D5614E28();
  v21 = type metadata accessor for MusicCatalogInternalSearchResponse.Context.Citation();
  sub_1D4F39AB0(v1 + *(v21 + 24), v16, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v2) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v5 + 32))(v10, v16, v2);
    sub_1D56162F8();
    OUTLINED_FUNCTION_3_130();
    sub_1D52DCEC4(v22, v23);
    sub_1D5614CB8();
    (*(v5 + 8))(v10, v2);
  }

  v24 = *(v1 + *(v21 + 28));
  return sub_1D56162F8();
}

uint64_t MusicCatalogInternalSearchResponse.Context.Citation.hashValue.getter()
{
  sub_1D56162D8();
  MusicCatalogInternalSearchResponse.Context.Citation.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D52DC5A4()
{
  sub_1D56162D8();
  MusicCatalogInternalSearchResponse.Context.Citation.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D52DC5E0@<X0>(uint64_t *a1@<X8>)
{
  result = MusicCatalogInternalSearchResponse.Context.Citation.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MusicCatalogInternalSearchResponse.Context.Citation.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v63 = a2;
  v4 = sub_1D560C368();
  v5 = OUTLINED_FUNCTION_4(v4);
  v60 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFF8, &qword_1D561DDB8);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v54 - v22;
  v24 = type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.Citation(0);
  v25 = OUTLINED_FUNCTION_14(v24);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = (&v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v54 - v31;
  sub_1D4E628D4(a1, &v61);
  sub_1D524767C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v57 = v11;
  v58 = v23;
  v54 = v4;
  v59 = a1;
  sub_1D52DC9D8(v32, v30);
  v34 = *v30;
  v35 = v30[1];
  v36 = v30[3];
  v55 = v30[2];
  sub_1D4F39AB0(v30 + *(v24 + 24), v17, &qword_1EC7EAFF8, &qword_1D561DDB8);
  v37 = sub_1D560FDA8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v37);
  v56 = v36;

  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v17, &qword_1EC7EAFF8, &qword_1D561DDB8);
    v39 = sub_1D560C0A8();
    v40 = v58;
    __swift_storeEnumTagSinglePayload(v58, 1, 1, v39);
  }

  else
  {
    v40 = v58;
    sub_1D560FD98();
    (*(*(v37 - 8) + 8))(v17, v37);
  }

  v41 = v63;
  v42 = v57;
  v43 = v59;
  if (v35)
  {
    v44 = v35;
  }

  else
  {
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_1D5615B68();

    OUTLINED_FUNCTION_6_98();
    v61 = v46;
    v62 = v45;
    sub_1D560C358();
    v47 = sub_1D560C338();
    v48 = v42;
    v50 = v49;
    (*(v60 + 8))(v48, v54);
    MEMORY[0x1DA6EAC70](v47, v50);
    v43 = v59;

    v34 = v61;
    v44 = v62;
  }

  *v41 = v34;
  v41[1] = v44;
  v51 = type metadata accessor for MusicCatalogInternalSearchResponse.Context.Citation();
  *(v41 + *(v51 + 28)) = v35 == 0;
  v52 = v55;
  if (!v56)
  {
    v52 = 0;
  }

  v53 = 0xE000000000000000;
  if (v56)
  {
    v53 = v56;
  }

  v41[2] = v52;
  v41[3] = v53;
  sub_1D4F39A1C(v40, v41 + *(v51 + 24), &unk_1EC7E9CA8, &unk_1D561D1D0);
  __swift_destroy_boxed_opaque_existential_1(v43);
  sub_1D52DCA3C(v30);
  return sub_1D52DCA3C(v32);
}

uint64_t sub_1D52DC9D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.Citation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D52DCA3C(uint64_t a1)
{
  v2 = type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.Citation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MusicCatalogInternalSearchResponse.Context.Citation.encode(to:)(uint64_t a1)
{
  v30[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFF8, &qword_1D561DDB8);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v30 - v12;
  v14 = type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.Citation(0);
  v15 = OUTLINED_FUNCTION_14(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v20 = (v19 - v18);
  v21 = type metadata accessor for MusicCatalogInternalSearchResponse.Context.Citation();
  v22 = 0;
  v23 = 0;
  if ((*(v1 + *(v21 + 28)) & 1) == 0)
  {
    v22 = *v1;
    v23 = v1[1];
  }

  v24 = v1[3];
  v30[0] = v1[2];
  sub_1D4F39AB0(v1 + *(v21 + 24), v7, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v25 = sub_1D560C0A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v25);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v7, &unk_1EC7E9CA8, &unk_1D561D1D0);
    v27 = 1;
  }

  else
  {
    sub_1D560C038();
    (*(*(v25 - 8) + 8))(v7, v25);
    v27 = 0;
  }

  v28 = sub_1D560FDA8();
  __swift_storeEnumTagSinglePayload(v13, v27, 1, v28);
  *v20 = v22;
  v20[1] = v23;
  v20[2] = v30[0];
  v20[3] = v24;
  sub_1D4F39A1C(v13, v20 + *(v14 + 24), &qword_1EC7EAFF8, &qword_1D561DDB8);
  sub_1D524750C();
  return sub_1D52DCA3C(v20);
}

unint64_t MusicCatalogInternalSearchResponse.Context.Citation.description.getter()
{
  MEMORY[0x1DA6EAC70](*v0, v0[1]);
  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x22203A6469, 0xE500000000000000);

  MEMORY[0x1DA6EAC70](v0[2], v0[3]);
  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x656372756F73202CLL, 0xEB0000000022203ALL);

  v1 = v0 + *(type metadata accessor for MusicCatalogInternalSearchResponse.Context.Citation() + 24);
  v2 = sub_1D5615878();
  MEMORY[0x1DA6EAC70](v2);

  MEMORY[0x1DA6EAC70](0x203A6C7275202CLL, 0xE700000000000000);

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD000000000000034;
}

uint64_t sub_1D52DCEC4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D52DCF3C()
{
  sub_1D500A1D4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t MusicCatalogInternalSearchResponse.Context.SafetyLink.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MusicCatalogInternalSearchResponse.Context.SafetyLink.text.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MusicCatalogInternalSearchResponse.Context.SafetyLink.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink() + 24);
  v4 = sub_1D560C0A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink()
{
  result = qword_1EC7F39B0;
  if (!qword_1EC7F39B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static MusicCatalogInternalSearchResponse.Context.SafetyLink.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink() + 24);

  return sub_1D560BFB8();
}

uint64_t MusicCatalogInternalSearchResponse.Context.SafetyLink.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = v0[2];
  v4 = v0[3];
  sub_1D5614E28();
  v5 = *(type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink() + 24);
  sub_1D560C0A8();
  OUTLINED_FUNCTION_0_171();
  sub_1D52DDA3C(v6, v7);
  return sub_1D5614CB8();
}

uint64_t MusicCatalogInternalSearchResponse.Context.SafetyLink.hashValue.getter()
{
  sub_1D56162D8();
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = v0[2];
  v4 = v0[3];
  sub_1D5614E28();
  v5 = *(type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink() + 24);
  sub_1D560C0A8();
  OUTLINED_FUNCTION_0_171();
  sub_1D52DDA3C(v6, v7);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D52DD2C4()
{
  sub_1D56162D8();
  MusicCatalogInternalSearchResponse.Context.SafetyLink.hash(into:)();
  return sub_1D5616328();
}

void MusicCatalogInternalSearchResponse.Context.SafetyLink.init(from:)(uint64_t *a1)
{
  v3 = sub_1D5611C78();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20[-1] - v9;
  v11 = type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.SafetyLink(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v20[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v20[-1] - v16;
  sub_1D4E628D4(a1, v20);
  sub_1D524812C();
  if (v1)
  {
    v20[0] = v1;
    v18 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    if (swift_dynamicCast())
    {

      (*(v4 + 32))(v8, v10, v3);
      sub_1D5615C18();
      swift_allocError();
      sub_1D5611C68();
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(a1);
      (*(v4 + 8))(v8, v3);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }
  }

  else
  {
    sub_1D52DD598(v17, v15);
    sub_1D524D22C();
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1D52DD5FC(v17);
  }
}

uint64_t sub_1D52DD598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.SafetyLink(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D52DD5FC(uint64_t a1)
{
  v2 = type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.SafetyLink(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MusicCatalogInternalSearchResponse.Context.SafetyLink.encode(to:)()
{
  v1 = type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.SafetyLink(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v0;
  v6 = v0[1];
  v9 = v0[2];
  v8 = v0[3];
  v10 = *(v3 + 32);
  v11 = *(type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink() + 24);

  sub_1D560C038();
  v12 = sub_1D560FDA8();
  __swift_storeEnumTagSinglePayload(v5 + v10, 0, 1, v12);
  *v5 = v7;
  v5[1] = v6;
  v5[2] = v9;
  v5[3] = v8;
  sub_1D5247D78();
  return sub_1D52DD5FC(v5);
}

uint64_t MusicCatalogInternalSearchResponse.Context.SafetyLink.description.getter()
{
  OUTLINED_FUNCTION_2_127();
  MEMORY[0x1DA6EAC70](*v0, v0[1]);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_3_131();

  v1 = *(type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink() + 24);
  sub_1D560C0A8();
  OUTLINED_FUNCTION_0_171();
  sub_1D52DDA3C(v2, v3);
  v4 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v4);

  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1DA6EAC70](0x22203A6C7275202CLL, 0xE800000000000000);

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v6;
}

uint64_t MusicCatalogInternalSearchResponse.Context.SafetyLink.debugDescription.getter()
{
  OUTLINED_FUNCTION_2_127();
  MEMORY[0x1DA6EAC70](*v0, v0[1]);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_3_131();

  MEMORY[0x1DA6EAC70](v0[2], v0[3]);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_3_131();

  v1 = *(type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink() + 24);
  sub_1D560C0A8();
  OUTLINED_FUNCTION_0_171();
  sub_1D52DDA3C(v2, v3);
  v4 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v4);

  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1DA6EAC70](0x3A6C727520200A2CLL, 0xEA00000000002220);

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v6;
}

uint64_t sub_1D52DDA3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D52DDAB4()
{
  result = sub_1D560C0A8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D52DDB4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return MusicCatalogSearchSuggestionsRequest.suggestionsLimit.setter();
}

uint64_t (*MusicCatalogSearchSuggestionsRequest.suggestionsLimit.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v2 = sub_1D560E968();
  OUTLINED_FUNCTION_29_2(v2, v3);
  return sub_1D52DDBCC;
}

uint64_t sub_1D52DDC0C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return MusicCatalogSearchSuggestionsRequest.topResultsLimit.setter();
}

uint64_t (*MusicCatalogSearchSuggestionsRequest.topResultsLimit.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v2 = sub_1D560E948();
  OUTLINED_FUNCTION_29_2(v2, v3);
  return sub_1D52DDC8C;
}

uint64_t MusicCatalogSearchSuggestionsRequest.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D560CD48();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  sub_1D560E928();
  sub_1D560CCE8();
  (*(v5 + 8))(v9, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  v17 = type metadata accessor for MusicRequestConfiguration();
  v18 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v16, v18 ^ 1u, 1, v17);
  sub_1D4F73F78(v16, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v17) == 1)
  {
    static MusicRequestConfiguration.globalDefault.getter(a1);
    if (__swift_getEnumTagSinglePayload(v14, 1, v17) != 1)
    {
      sub_1D4FEF060(v14);
    }
  }

  else
  {
    sub_1D4E56C6C(v14, a1);
  }

  return sub_1D4FEF060(v16);
}

uint64_t sub_1D52DDEAC(uint64_t a1)
{
  v2 = type metadata accessor for MusicRequestConfiguration();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4F5A490(a1, v5);
  return MusicCatalogSearchSuggestionsRequest.configuration.setter(v5);
}

uint64_t MusicCatalogSearchSuggestionsRequest.configuration.setter(uint64_t a1)
{
  v2 = sub_1D560CD48();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - v11;
  type metadata accessor for MusicRequestConfiguration();
  sub_1D4E48388();
  sub_1D560E6C8();
  (*(v5 + 16))(v10, v12, v2);
  sub_1D560E938();
  sub_1D4F581B8(a1);
  return (*(v5 + 8))(v12, v2);
}

void (*MusicCatalogSearchSuggestionsRequest.configuration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1D560CD48();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = OUTLINED_FUNCTION_4_98();
  v3[4] = OUTLINED_FUNCTION_4_98();
  v7 = type metadata accessor for MusicRequestConfiguration();
  v3[5] = v7;
  v8 = *(*(v7 - 8) + 64);
  v3[6] = OUTLINED_FUNCTION_4_98();
  v9 = OUTLINED_FUNCTION_4_98();
  v3[7] = v9;
  MusicCatalogSearchSuggestionsRequest.configuration.getter(v9);
  return sub_1D52DE164;
}

void sub_1D52DE164(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v6 = (*a1)[4];
  v5 = (*a1)[5];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    sub_1D4F5A490((*a1)[7], v3);
    sub_1D4E48388();
    sub_1D560E6C8();
    v11 = OUTLINED_FUNCTION_178();
    v12(v11);
    sub_1D560E938();
    (*(v8 + 8))(v6, v9);
    sub_1D4F581B8(v3);
  }

  else
  {
    sub_1D4E48388();
    sub_1D560E6C8();
    v13 = OUTLINED_FUNCTION_178();
    v14(v13);
    sub_1D560E938();
    (*(v8 + 8))(v6, v9);
  }

  sub_1D4F581B8(v4);
  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

uint64_t (*MusicCatalogSearchSuggestionsRequest.includeNaturalLanguageResults.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = _s8MusicKit0A31CatalogSearchSuggestionsRequestV0aB8InternalE29includeNaturalLanguageResultsSbvg_0() & 1;
  return sub_1D52DE2F8;
}

uint64_t sub_1D52DE2F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return _s8MusicKit0A31CatalogSearchSuggestionsRequestV0aB8InternalE29includeNaturalLanguageResultsSbvs_0();
}

uint64_t sub_1D52DE320(uint64_t a1)
{
  v3 = *(MEMORY[0x1E69753D8] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF0F0](a1);
}

uint64_t (*sub_1D52DE3C4(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = _s8MusicKit0A31CatalogSearchSuggestionsRequestV0aB8InternalE29includeNaturalLanguageResultsSbvg_0() & 1;
  return sub_1D52DE2F8;
}

uint64_t sub_1D52DE414(uint64_t a1)
{
  v2 = sub_1D52DE4D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D52DE450(uint64_t a1)
{
  v2 = sub_1D52DE4D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D52DE4D0()
{
  result = qword_1EC7F39C8;
  if (!qword_1EC7F39C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F39C8);
  }

  return result;
}

uint64_t sub_1D52DE5A4(uint64_t a1)
{
  v2 = sub_1D52DE660();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D52DE5E0(uint64_t a1)
{
  v2 = sub_1D52DE660();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D52DE660()
{
  result = qword_1EC7F39D8;
  if (!qword_1EC7F39D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F39D8);
  }

  return result;
}

uint64_t sub_1D52DE6D4(uint64_t a1)
{
  v2 = sub_1D52DE790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D52DE710(uint64_t a1)
{
  v2 = sub_1D52DE790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D52DE790()
{
  result = qword_1EC7F39E8;
  if (!qword_1EC7F39E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F39E8);
  }

  return result;
}

uint64_t sub_1D52DE804(uint64_t a1)
{
  v2 = sub_1D52DE9BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D52DE840(uint64_t a1)
{
  v2 = sub_1D52DE9BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D52DE8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_4(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  v36 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v23();
  sub_1D56163D8();
  (*(v30 + 8))(v35, v28);
  OUTLINED_FUNCTION_81_22();
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D52DE9BC()
{
  result = qword_1EC7F39F8;
  if (!qword_1EC7F39F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F39F8);
  }

  return result;
}

void CloudSuggestedPivotEntry.id.getter()
{
  OUTLINED_FUNCTION_47();
  v3 = sub_1D560FD68();
  v4 = OUTLINED_FUNCTION_4(v3);
  v34 = v5;
  v35 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_0();
  v8 = sub_1D5610588();
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v14 = sub_1D560F308();
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v20 = type metadata accessor for CloudSuggestedPivotEntry();
  v21 = OUTLINED_FUNCTION_14(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  OUTLINED_FUNCTION_0_172();
  sub_1D52E40FC(v0, v26, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v11 + 32))(v1, v26, v8);
      sub_1D56104A8();
      (*(v11 + 8))(v1, v8);
    }

    else
    {
      v29 = OUTLINED_FUNCTION_135_2(v34);
      v30(v29, v26, v35);
      sub_1D560FC88();
      v31 = *(v34 + 8);
      v32 = OUTLINED_FUNCTION_159();
      v33(v32);
    }
  }

  else
  {
    (*(v17 + 32))(v2, v26, v14);
    sub_1D560F248();
    (*(v17 + 8))(v2, v14);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t type metadata accessor for CloudSuggestedPivotEntry()
{
  result = qword_1EC7F3A88;
  if (!qword_1EC7F3A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static CloudSuggestedPivotEntry.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v67 = v3;
  v68 = v4;
  v5 = sub_1D560FD68();
  v6 = OUTLINED_FUNCTION_4(v5);
  v64 = v7;
  v65 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v61 = v10;
  OUTLINED_FUNCTION_70_0();
  v11 = sub_1D5610588();
  v12 = OUTLINED_FUNCTION_4(v11);
  v62 = v13;
  v63 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v16 = sub_1D560F308();
  v17 = OUTLINED_FUNCTION_4(v16);
  v66 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_46_23();
  v21 = type metadata accessor for CloudSuggestedPivotEntry();
  v22 = OUTLINED_FUNCTION_14(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_59_0();
  v27 = v25 - v26;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v61 - v30;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_159_1();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3A00, &unk_1D564F650);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &v61 - v37;
  v39 = *(v36 + 56);
  sub_1D52E40FC(v67, &v61 - v37, type metadata accessor for CloudSuggestedPivotEntry);
  sub_1D52E40FC(v68, &v38[v39], type metadata accessor for CloudSuggestedPivotEntry);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_0_172();
      sub_1D52E40FC(v38, v31, v41);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v42 = v62;
        OUTLINED_FUNCTION_81();
        v43 = &v38[v39];
        v44 = v63;
        v45(v1, v43, v63);
        sub_1D5610498();
        v46 = *(v42 + 8);
        v46(v1, v44);
        v46(v31, v44);
LABEL_13:
        sub_1D52DF24C(v38);
        goto LABEL_14;
      }

      (*(v62 + 8))(v31, v63);
    }

    else
    {
      OUTLINED_FUNCTION_0_172();
      v52 = OUTLINED_FUNCTION_71();
      sub_1D52E40FC(v52, v53, v54);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v56 = v64;
        v55 = v65;
        v57 = v61;
        (*(v64 + 32))(v61, &v38[v39], v65);
        sub_1D560FC78();
        v58 = *(v56 + 8);
        v58(v57, v55);
        v58(v27, v55);
        goto LABEL_13;
      }

      (*(v64 + 8))(v27, v65);
    }
  }

  else
  {
    v47 = v66;
    OUTLINED_FUNCTION_0_172();
    sub_1D52E40FC(v38, v0, v48);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v47 + 32))(v2, &v38[v39], v16);
      sub_1D560F238();
      v59 = *(v47 + 8);
      v59(v2, v16);
      v60 = OUTLINED_FUNCTION_91_0();
      (v59)(v60);
      goto LABEL_13;
    }

    v49 = *(v47 + 8);
    v50 = OUTLINED_FUNCTION_91_0();
    v51(v50);
  }

  sub_1D4E50004(v38, &qword_1EC7F3A00, &unk_1D564F650);
LABEL_14:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D52DF24C(uint64_t a1)
{
  v2 = type metadata accessor for CloudSuggestedPivotEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void CloudSuggestedPivotEntry.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v4 = sub_1D560FD68();
  v5 = OUTLINED_FUNCTION_4(v4);
  v42 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = sub_1D5610588();
  v13 = OUTLINED_FUNCTION_4(v12);
  v41 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v17 = sub_1D560F308();
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v23 = type metadata accessor for CloudSuggestedPivotEntry();
  v24 = OUTLINED_FUNCTION_14(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_4_82();
  OUTLINED_FUNCTION_0_172();
  sub_1D52E40FC(v0, v3, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v41 + 32))(v1, v3, v12);
      MEMORY[0x1DA6EC0D0](1);
      OUTLINED_FUNCTION_40_43();
      sub_1D52E4BF8(v29, v30);
      sub_1D5614CB8();
      v31 = *(v41 + 8);
      v32 = OUTLINED_FUNCTION_75_2();
      v33(v32);
    }

    else
    {
      OUTLINED_FUNCTION_81();
      v38(v11, v3, v4);
      MEMORY[0x1DA6EC0D0](2);
      OUTLINED_FUNCTION_38_35();
      sub_1D52E4BF8(v39, v40);
      sub_1D5614CB8();
      (*(v42 + 8))(v11, v4);
    }
  }

  else
  {
    (*(v20 + 32))(v2, v3, v17);
    MEMORY[0x1DA6EC0D0](0);
    OUTLINED_FUNCTION_39_39();
    sub_1D52E4BF8(v34, v35);
    sub_1D5614CB8();
    v36 = OUTLINED_FUNCTION_11_89();
    v37(v36);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t CloudSuggestedPivotEntry.hashValue.getter()
{
  sub_1D56162D8();
  CloudSuggestedPivotEntry.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D52DF648()
{
  sub_1D56162D8();
  CloudSuggestedPivotEntry.hash(into:)();
  return sub_1D5616328();
}

void CloudSuggestedPivotEntry.decodeRawAttributes(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v56 = v4;
  v54 = sub_1D560FBB8();
  v5 = OUTLINED_FUNCTION_14(v54);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v55 = sub_1D560FD68();
  v8 = OUTLINED_FUNCTION_4(v55);
  v53 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v52 = v12;
  OUTLINED_FUNCTION_70_0();
  v50 = sub_1D56100B8();
  v13 = OUTLINED_FUNCTION_14(v50);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_31_6();
  v51 = sub_1D5610588();
  v16 = OUTLINED_FUNCTION_4(v51);
  v49 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  v20 = sub_1D560F1A8();
  v21 = OUTLINED_FUNCTION_14(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = sub_1D560F308();
  v25 = OUTLINED_FUNCTION_4(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_0();
  v30 = type metadata accessor for CloudSuggestedPivotEntry();
  v31 = OUTLINED_FUNCTION_14(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_46_23();
  OUTLINED_FUNCTION_0_172();
  sub_1D52E40FC(v0, v3, v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v39 = OUTLINED_FUNCTION_135_2(v27);
    v40(v39, v3, v24);
    sub_1D4E628D4(v56, v57);
    sub_1D560F1B8();
    sub_1D5614C38();
    if (v1)
    {
      v41 = *(v27 + 8);
    }

    else
    {
      v47 = *(v27 + 8);
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_11_18();
    v42(v52, v3, v55);
    sub_1D4E628D4(v56, v57);
    sub_1D560FBC8();
    OUTLINED_FUNCTION_76_15();
    sub_1D5614C38();
    if (v1)
    {
      v43 = *(v53 + 8);
    }

    else
    {
      v48 = *(v53 + 8);
    }

LABEL_10:
    v44 = OUTLINED_FUNCTION_68_4();
    v45(v44);
    goto LABEL_11;
  }

  (*(v49 + 32))(v2, v3, v51);
  sub_1D4E628D4(v56, v57);
  sub_1D56100C8();
  OUTLINED_FUNCTION_76_15();
  sub_1D5614C38();
  if (v1)
  {
    v36 = *(v49 + 8);
  }

  else
  {
    v46 = *(v49 + 8);
  }

  v37 = OUTLINED_FUNCTION_15_2();
  v38(v37);
LABEL_11:
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

void CloudSuggestedPivotEntry.decodeRawRelationships(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_64_22(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2CD8, &qword_1D564AD60);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_30_8();
  v19 = sub_1D560FD68();
  v20 = OUTLINED_FUNCTION_4(v19);
  v79 = v21;
  v80 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF48, &qword_1D5623AE0);
  OUTLINED_FUNCTION_22(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_46_23();
  v28 = sub_1D5610588();
  v29 = OUTLINED_FUNCTION_4(v28);
  v77 = v30;
  v78 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4_82();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D18, &unk_1D565D110);
  OUTLINED_FUNCTION_22(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_41_6();
  v37 = sub_1D560F308();
  v38 = OUTLINED_FUNCTION_4(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_0();
  v43 = type metadata accessor for CloudSuggestedPivotEntry();
  v44 = OUTLINED_FUNCTION_14(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  sub_1D5614A88();
  sub_1D5614BD8();
  OUTLINED_FUNCTION_0_172();
  sub_1D52E40FC(a10, v11, v47);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v59 = OUTLINED_FUNCTION_135_2(v40);
    v60(v59, v11, v37);
    sub_1D560F208();
    v61 = sub_1D560F1F8();
    OUTLINED_FUNCTION_35_3(v10, v62, v61);
    if (!v53)
    {

      sub_1D4E50004(v10, &qword_1EC7F2D18, &unk_1D565D110);
      OUTLINED_FUNCTION_66_21();
      sub_1D560F228();
      sub_1D526ED98();

      sub_1D5614C18();
      v73 = OUTLINED_FUNCTION_21_58();
      v74(v73);
      goto LABEL_13;
    }

    v63 = OUTLINED_FUNCTION_21_58();
    v64(v63);
    v56 = &qword_1EC7F2D18;
    v57 = &unk_1D565D110;
    v58 = v10;
LABEL_12:
    sub_1D4E50004(v58, v56, v57);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v65 = OUTLINED_FUNCTION_37_33(v79);
    v66(v65, v11, v80);
    sub_1D560FC28();
    v67 = sub_1D560FBF8();
    OUTLINED_FUNCTION_35_3(v12, v68, v67);
    if (!v53)
    {

      sub_1D4E50004(v12, &qword_1EC7F2CD8, &qword_1D564AD60);
      OUTLINED_FUNCTION_66_21();
      sub_1D560FC68();
      sub_1D526F154();
      OUTLINED_FUNCTION_82();

      OUTLINED_FUNCTION_54_29();
      v75 = OUTLINED_FUNCTION_17_66();
      v76(v75);
      goto LABEL_13;
    }

    v69 = OUTLINED_FUNCTION_17_66();
    v70(v69);
    v56 = &qword_1EC7F2CD8;
    v57 = &qword_1D564AD60;
    v58 = v12;
    goto LABEL_12;
  }

  v49 = OUTLINED_FUNCTION_37_33(v77);
  v50(v49, v11, v78);
  sub_1D5610468();
  v51 = sub_1D5610458();
  OUTLINED_FUNCTION_35_3(v13, v52, v51);
  if (v53)
  {
    v54 = OUTLINED_FUNCTION_61_5();
    v55(v54);
    v56 = &qword_1EC7ECF48;
    v57 = &qword_1D5623AE0;
    v58 = v13;
    goto LABEL_12;
  }

  sub_1D4E50004(v13, &qword_1EC7ECF48, &qword_1D5623AE0);
  OUTLINED_FUNCTION_66_21();
  sub_1D5610488();
  sub_1D526F0C4();
  OUTLINED_FUNCTION_82();

  OUTLINED_FUNCTION_54_29();
  v71 = OUTLINED_FUNCTION_61_5();
  v72(v71);
LABEL_13:
  OUTLINED_FUNCTION_81_22();
  OUTLINED_FUNCTION_26();
}

void CloudSuggestedPivotEntry.decodeRawAssociations(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_64_22(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D20, &unk_1D564F660);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_30_8();
  v19 = sub_1D560FD68();
  v20 = OUTLINED_FUNCTION_4(v19);
  v79 = v21;
  v80 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF40, &unk_1D5623AC0);
  OUTLINED_FUNCTION_22(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_46_23();
  v28 = sub_1D5610588();
  v29 = OUTLINED_FUNCTION_4(v28);
  v77 = v30;
  v78 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4_82();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D60, &unk_1D564ADF0);
  OUTLINED_FUNCTION_22(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_41_6();
  v37 = sub_1D560F308();
  v38 = OUTLINED_FUNCTION_4(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_0();
  v43 = type metadata accessor for CloudSuggestedPivotEntry();
  v44 = OUTLINED_FUNCTION_14(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  sub_1D5614A88();
  sub_1D5614BD8();
  OUTLINED_FUNCTION_0_172();
  sub_1D52E40FC(a10, v11, v47);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v59 = OUTLINED_FUNCTION_135_2(v40);
    v60(v59, v11, v37);
    sub_1D560F298();
    v61 = sub_1D560F1D8();
    OUTLINED_FUNCTION_35_3(v10, v62, v61);
    if (!v53)
    {

      sub_1D4E50004(v10, &qword_1EC7F2D60, &unk_1D564ADF0);
      OUTLINED_FUNCTION_66_21();
      sub_1D560F218();
      sub_1D526F244();

      sub_1D5614C18();
      v73 = OUTLINED_FUNCTION_21_58();
      v74(v73);
      goto LABEL_13;
    }

    v63 = OUTLINED_FUNCTION_21_58();
    v64(v63);
    v56 = &qword_1EC7F2D60;
    v57 = &unk_1D564ADF0;
    v58 = v10;
LABEL_12:
    sub_1D4E50004(v58, v56, v57);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v65 = OUTLINED_FUNCTION_37_33(v79);
    v66(v65, v11, v80);
    sub_1D560FCD8();
    v67 = sub_1D560FBD8();
    OUTLINED_FUNCTION_35_3(v12, v68, v67);
    if (!v53)
    {

      sub_1D4E50004(v12, &qword_1EC7F2D20, &unk_1D564F660);
      OUTLINED_FUNCTION_66_21();
      sub_1D560FC58();
      sub_1D526F154();
      OUTLINED_FUNCTION_82();

      OUTLINED_FUNCTION_54_29();
      v75 = OUTLINED_FUNCTION_17_66();
      v76(v75);
      goto LABEL_13;
    }

    v69 = OUTLINED_FUNCTION_17_66();
    v70(v69);
    v56 = &qword_1EC7F2D20;
    v57 = &unk_1D564F660;
    v58 = v12;
    goto LABEL_12;
  }

  v49 = OUTLINED_FUNCTION_37_33(v77);
  v50(v49, v11, v78);
  sub_1D5610518();
  v51 = sub_1D5610138();
  OUTLINED_FUNCTION_35_3(v13, v52, v51);
  if (v53)
  {
    v54 = OUTLINED_FUNCTION_61_5();
    v55(v54);
    v56 = &qword_1EC7ECF40;
    v57 = &unk_1D5623AC0;
    v58 = v13;
    goto LABEL_12;
  }

  sub_1D4E50004(v13, &qword_1EC7ECF40, &unk_1D5623AC0);
  OUTLINED_FUNCTION_66_21();
  sub_1D5610478();
  sub_1D526F33C();
  OUTLINED_FUNCTION_82();

  OUTLINED_FUNCTION_54_29();
  v71 = OUTLINED_FUNCTION_61_5();
  v72(v71);
LABEL_13:
  OUTLINED_FUNCTION_81_22();
  OUTLINED_FUNCTION_26();
}

void CloudSuggestedPivotEntry.decodeRawMetadata(from:skippingValuesFor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_64_22(v13);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D68, &unk_1D565D150);
  v14 = OUTLINED_FUNCTION_14(v86);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  v85 = v17;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_2();
  v90 = v19;
  OUTLINED_FUNCTION_70_0();
  v20 = sub_1D560FD68();
  v21 = OUTLINED_FUNCTION_4(v20);
  v92 = v22;
  v93 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_0();
  v91 = v25;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D88, &qword_1D564AE20);
  v26 = OUTLINED_FUNCTION_14(v84);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13();
  v83[1] = v29;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_159_1();
  v31 = sub_1D5610588();
  v32 = OUTLINED_FUNCTION_4(v31);
  v88 = v33;
  v89 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  v38 = v37 - v36;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2DB0, &unk_1D565D170);
  v40 = OUTLINED_FUNCTION_14(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v43);
  v45 = v83 - v44;
  v46 = sub_1D560F308();
  v47 = OUTLINED_FUNCTION_4(v46);
  v87 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_0();
  v51 = type metadata accessor for CloudSuggestedPivotEntry();
  v52 = OUTLINED_FUNCTION_14(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_4_82();
  sub_1D5614A88();
  v94 = sub_1D5614BD8();
  OUTLINED_FUNCTION_0_172();
  sub_1D52E40FC(a10, v12, v55);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_81();
    v65(v10, v12, v46);
    sub_1D560F278();
    v66 = sub_1D560F2F8();
    OUTLINED_FUNCTION_35_3(v45, v67, v66);
    if (!v59)
    {

      sub_1D4E50004(v45, &qword_1EC7F2DB0, &unk_1D565D170);
      OUTLINED_FUNCTION_66_21();
      sub_1D560F278();
      OUTLINED_FUNCTION_76_15();
      sub_1D5614C38();
      v79 = OUTLINED_FUNCTION_69_27();
      v80(v79);
      goto LABEL_13;
    }

    v68 = OUTLINED_FUNCTION_69_27();
    v69(v68);
    v62 = &qword_1EC7F2DB0;
    v63 = &unk_1D565D170;
    v64 = v45;
LABEL_12:
    sub_1D4E50004(v64, v62, v63);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v70 = OUTLINED_FUNCTION_135_2(v92);
    v71(v70, v12, v93);
    v72 = v90;
    sub_1D560FCB8();
    v73 = sub_1D560FD58();
    OUTLINED_FUNCTION_35_3(v72, v74, v73);
    if (!v59)
    {

      sub_1D4E50004(v72, &qword_1EC7F2D68, &unk_1D565D150);
      OUTLINED_FUNCTION_66_21();
      sub_1D560FCB8();
      OUTLINED_FUNCTION_76_15();
      sub_1D5614C38();
      v81 = OUTLINED_FUNCTION_45_31();
      v82(v81);
      goto LABEL_13;
    }

    v75 = OUTLINED_FUNCTION_45_31();
    v76(v75);
    v62 = &qword_1EC7F2D68;
    v63 = &unk_1D565D150;
    v64 = v72;
    goto LABEL_12;
  }

  (*(v88 + 32))(v38, v12, v89);
  sub_1D56104F8();
  v57 = sub_1D5610578();
  OUTLINED_FUNCTION_35_3(v11, v58, v57);
  if (v59)
  {
    v60 = OUTLINED_FUNCTION_61_30();
    v61(v60);
    v62 = &qword_1EC7F2D88;
    v63 = &qword_1D564AE20;
    v64 = v11;
    goto LABEL_12;
  }

  sub_1D4E50004(v11, &qword_1EC7F2D88, &qword_1D564AE20);
  OUTLINED_FUNCTION_66_21();
  sub_1D56104F8();
  OUTLINED_FUNCTION_76_15();
  sub_1D5614C38();
  v77 = OUTLINED_FUNCTION_61_30();
  v78(v77);
LABEL_13:
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

void CloudSuggestedPivotEntry.mergeAttributes(with:for:)()
{
  OUTLINED_FUNCTION_25_1();
  v4 = sub_1D560FBB8();
  v63 = OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v7 = sub_1D560FD68();
  v8 = OUTLINED_FUNCTION_4(v7);
  v61 = v9;
  v62 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v60 = v12;
  OUTLINED_FUNCTION_70_0();
  v13 = sub_1D56100B8();
  v14 = OUTLINED_FUNCTION_4(v13);
  v59 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_31_6();
  v18 = sub_1D5610588();
  v19 = OUTLINED_FUNCTION_4(v18);
  v57 = v20;
  v58 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_82();
  v23 = sub_1D560F1A8();
  v24 = OUTLINED_FUNCTION_4(v23);
  v56 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v28 = sub_1D560F308();
  v29 = OUTLINED_FUNCTION_4(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_0();
  v34 = type metadata accessor for CloudSuggestedPivotEntry();
  v35 = OUTLINED_FUNCTION_14(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  v40 = v39 - v38;
  OUTLINED_FUNCTION_0_172();
  sub_1D52E40FC(v0, v40, v41);
  OUTLINED_FUNCTION_75_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v43 = OUTLINED_FUNCTION_37_33(v57);
      v44(v43, v40, v58);
      sub_1D56100C8();
      sub_1D52E4BF8(&qword_1EC7F2E00, MEMORY[0x1E6975C00]);
      sub_1D5614C48();
      if (v1)
      {
        v45 = *(v59 + 8);
      }

      else
      {
        v55 = *(v59 + 8);
      }

      v46 = OUTLINED_FUNCTION_71();
      v47(v46);
      (*(v57 + 8))(v3, v58);
    }

    else
    {
      v50 = *(v61 + 32);
      v51 = OUTLINED_FUNCTION_68_4();
      v52(v51);
      sub_1D560FBC8();
      sub_1D52E4BF8(&qword_1EC7F2DD8, MEMORY[0x1E6975A98]);
      sub_1D5614C48();
      v53 = OUTLINED_FUNCTION_82_20();
      v54(v53);
      (*(v61 + 8))(v60, v62);
    }
  }

  else
  {
    v48 = OUTLINED_FUNCTION_135_2(v31);
    v49(v48, v40, v28);
    sub_1D560F1B8();
    sub_1D52E4BF8(&qword_1EC7F2E30, MEMORY[0x1E69755F8]);
    sub_1D5614C48();
    (*(v56 + 8))(v2, v23);
    (*(v31 + 8))(v0, v28);
  }

  OUTLINED_FUNCTION_81_22();
  OUTLINED_FUNCTION_26();
}

void CloudSuggestedPivotEntry.mergeRelationships(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_47_36(v14, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2CD8, &qword_1D564AD60);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_16_74(v20, v96);
  v98 = sub_1D560FBF8();
  v21 = OUTLINED_FUNCTION_4(v98);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v24 = sub_1D560FD68();
  v25 = OUTLINED_FUNCTION_4(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_0();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF48, &qword_1D5623AE0);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_41_6();
  v97 = sub_1D5610458();
  v32 = OUTLINED_FUNCTION_4(v97);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v35 = sub_1D5610588();
  v36 = OUTLINED_FUNCTION_4(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D18, &unk_1D565D110);
  OUTLINED_FUNCTION_22(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_31_6();
  v43 = sub_1D560F1F8();
  v44 = OUTLINED_FUNCTION_4(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_4_82();
  v47 = sub_1D560F308();
  v48 = OUTLINED_FUNCTION_4(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13_0();
  v51 = v12;
  v52 = type metadata accessor for CloudSuggestedPivotEntry();
  v53 = OUTLINED_FUNCTION_14(v52);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_46_23();
  if (*(v51 + 16))
  {
  }

  OUTLINED_FUNCTION_0_172();
  sub_1D52E40FC(a10, v13, v56);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v66 = OUTLINED_FUNCTION_35_46();
    v67(v66);
    sub_1D560F208();
    v68 = OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_57(v68, v69, v43);
    if (!v60)
    {

      v84 = OUTLINED_FUNCTION_23_56();
      v85(v84);
      sub_1D52E4BF8(&qword_1EC7F2E90, MEMORY[0x1E6975638]);
      OUTLINED_FUNCTION_26_57();
      sub_1D5614C48();
      v86 = OUTLINED_FUNCTION_28_51();
      v87(v86);
      v88 = OUTLINED_FUNCTION_12_73();
      v89(v88);
      goto LABEL_16;
    }

    v70 = OUTLINED_FUNCTION_12_73();
    v71(v70);
    v63 = &qword_1EC7F2D18;
    v64 = &unk_1D565D110;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v72 = OUTLINED_FUNCTION_18_70();
    v73(v72);
    OUTLINED_FUNCTION_63_18();
    sub_1D560FC28();
    v74 = OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_57(v74, v75, v98);
    if (!v60)
    {

      v90 = OUTLINED_FUNCTION_22_56();
      v91(v90);
      sub_1D52E4BF8(&qword_1EC7F2E38, MEMORY[0x1E6975AB8]);
      OUTLINED_FUNCTION_45_37();
      v92 = OUTLINED_FUNCTION_27_52();
      v93(v92);
      v94 = OUTLINED_FUNCTION_55_2();
      v95(v94);
      goto LABEL_16;
    }

    v76 = OUTLINED_FUNCTION_55_2();
    v77(v76);
    v63 = &qword_1EC7F2CD8;
    v64 = &qword_1D564AD60;
LABEL_14:
    v65 = v10;
    goto LABEL_15;
  }

  v58 = OUTLINED_FUNCTION_19_64();
  v59(v58);
  sub_1D5610468();
  OUTLINED_FUNCTION_57(v11, 1, v97);
  if (v60)
  {
    v61 = OUTLINED_FUNCTION_11_89();
    v62(v61);
    v63 = &qword_1EC7ECF48;
    v64 = &qword_1D5623AE0;
    v65 = v11;
LABEL_15:
    sub_1D4E50004(v65, v63, v64);
    goto LABEL_16;
  }

  v78 = OUTLINED_FUNCTION_24_53();
  v79(v78);
  sub_1D52E4BF8(&qword_1EC7F2E60, MEMORY[0x1E6975CA0]);
  OUTLINED_FUNCTION_26_57();
  sub_1D5614C48();
  v80 = OUTLINED_FUNCTION_20_64();
  v81(v80);
  v82 = OUTLINED_FUNCTION_11_89();
  v83(v82);
LABEL_16:
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

void CloudSuggestedPivotEntry.mergeAssociations(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_47_36(v14, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D20, &unk_1D564F660);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_16_74(v20, v96);
  v98 = sub_1D560FBD8();
  v21 = OUTLINED_FUNCTION_4(v98);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v24 = sub_1D560FD68();
  v25 = OUTLINED_FUNCTION_4(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_0();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF40, &unk_1D5623AC0);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_41_6();
  v97 = sub_1D5610138();
  v32 = OUTLINED_FUNCTION_4(v97);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v35 = sub_1D5610588();
  v36 = OUTLINED_FUNCTION_4(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D60, &unk_1D564ADF0);
  OUTLINED_FUNCTION_22(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_31_6();
  v43 = sub_1D560F1D8();
  v44 = OUTLINED_FUNCTION_4(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_4_82();
  v47 = sub_1D560F308();
  v48 = OUTLINED_FUNCTION_4(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13_0();
  v51 = v12;
  v52 = type metadata accessor for CloudSuggestedPivotEntry();
  v53 = OUTLINED_FUNCTION_14(v52);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_46_23();
  if (*(v51 + 16))
  {
  }

  OUTLINED_FUNCTION_0_172();
  sub_1D52E40FC(a10, v13, v56);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v66 = OUTLINED_FUNCTION_35_46();
    v67(v66);
    sub_1D560F298();
    v68 = OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_57(v68, v69, v43);
    if (!v60)
    {

      v84 = OUTLINED_FUNCTION_23_56();
      v85(v84);
      sub_1D52E4BF8(&qword_1EC7F2EF0, MEMORY[0x1E6975618]);
      OUTLINED_FUNCTION_26_57();
      sub_1D5614C48();
      v86 = OUTLINED_FUNCTION_28_51();
      v87(v86);
      v88 = OUTLINED_FUNCTION_12_73();
      v89(v88);
      goto LABEL_16;
    }

    v70 = OUTLINED_FUNCTION_12_73();
    v71(v70);
    v63 = &qword_1EC7F2D60;
    v64 = &unk_1D564ADF0;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v72 = OUTLINED_FUNCTION_18_70();
    v73(v72);
    OUTLINED_FUNCTION_63_18();
    sub_1D560FCD8();
    v74 = OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_57(v74, v75, v98);
    if (!v60)
    {

      v90 = OUTLINED_FUNCTION_22_56();
      v91(v90);
      sub_1D52E4BF8(&qword_1EC7F2E98, MEMORY[0x1E6975AA8]);
      OUTLINED_FUNCTION_45_37();
      v92 = OUTLINED_FUNCTION_27_52();
      v93(v92);
      v94 = OUTLINED_FUNCTION_55_2();
      v95(v94);
      goto LABEL_16;
    }

    v76 = OUTLINED_FUNCTION_55_2();
    v77(v76);
    v63 = &qword_1EC7F2D20;
    v64 = &unk_1D564F660;
LABEL_14:
    v65 = v10;
    goto LABEL_15;
  }

  v58 = OUTLINED_FUNCTION_19_64();
  v59(v58);
  sub_1D5610518();
  OUTLINED_FUNCTION_57(v11, 1, v97);
  if (v60)
  {
    v61 = OUTLINED_FUNCTION_11_89();
    v62(v61);
    v63 = &qword_1EC7ECF40;
    v64 = &unk_1D5623AC0;
    v65 = v11;
LABEL_15:
    sub_1D4E50004(v65, v63, v64);
    goto LABEL_16;
  }

  v78 = OUTLINED_FUNCTION_24_53();
  v79(v78);
  sub_1D52E4BF8(&qword_1EC7F2EC0, MEMORY[0x1E6975C20]);
  OUTLINED_FUNCTION_26_57();
  sub_1D5614C48();
  v80 = OUTLINED_FUNCTION_20_64();
  v81(v80);
  v82 = OUTLINED_FUNCTION_11_89();
  v83(v82);
LABEL_16:
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

void CloudSuggestedPivotEntry.mergeMetadata(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_47_36(v14, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D68, &unk_1D565D150);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_16_74(v20, v96);
  v98 = sub_1D560FD58();
  v21 = OUTLINED_FUNCTION_4(v98);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v24 = sub_1D560FD68();
  v25 = OUTLINED_FUNCTION_4(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_0();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D88, &qword_1D564AE20);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_41_6();
  v97 = sub_1D5610578();
  v32 = OUTLINED_FUNCTION_4(v97);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v35 = sub_1D5610588();
  v36 = OUTLINED_FUNCTION_4(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2DB0, &unk_1D565D170);
  OUTLINED_FUNCTION_22(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_31_6();
  v43 = sub_1D560F2F8();
  v44 = OUTLINED_FUNCTION_4(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_4_82();
  v47 = sub_1D560F308();
  v48 = OUTLINED_FUNCTION_4(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13_0();
  v51 = v12;
  v52 = type metadata accessor for CloudSuggestedPivotEntry();
  v53 = OUTLINED_FUNCTION_14(v52);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_46_23();
  if (*(v51 + 16))
  {
  }

  OUTLINED_FUNCTION_0_172();
  sub_1D52E40FC(a10, v13, v56);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v66 = OUTLINED_FUNCTION_35_46();
    v67(v66);
    sub_1D560F278();
    v68 = OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_57(v68, v69, v43);
    if (!v60)
    {

      v84 = OUTLINED_FUNCTION_23_56();
      v85(v84);
      sub_1D52E4BF8(&qword_1EC7F2F50, MEMORY[0x1E6975648]);
      OUTLINED_FUNCTION_26_57();
      sub_1D5614C48();
      v86 = OUTLINED_FUNCTION_28_51();
      v87(v86);
      v88 = OUTLINED_FUNCTION_12_73();
      v89(v88);
      goto LABEL_16;
    }

    v70 = OUTLINED_FUNCTION_12_73();
    v71(v70);
    v63 = &qword_1EC7F2DB0;
    v64 = &unk_1D565D170;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v72 = OUTLINED_FUNCTION_18_70();
    v73(v72);
    OUTLINED_FUNCTION_63_18();
    sub_1D560FCB8();
    v74 = OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_57(v74, v75, v98);
    if (!v60)
    {

      v90 = OUTLINED_FUNCTION_22_56();
      v91(v90);
      sub_1D52E4BF8(&qword_1EC7F2EF8, MEMORY[0x1E6975B18]);
      OUTLINED_FUNCTION_45_37();
      v92 = OUTLINED_FUNCTION_27_52();
      v93(v92);
      v94 = OUTLINED_FUNCTION_55_2();
      v95(v94);
      goto LABEL_16;
    }

    v76 = OUTLINED_FUNCTION_55_2();
    v77(v76);
    v63 = &qword_1EC7F2D68;
    v64 = &unk_1D565D150;
LABEL_14:
    v65 = v10;
    goto LABEL_15;
  }

  v58 = OUTLINED_FUNCTION_19_64();
  v59(v58);
  sub_1D56104F8();
  OUTLINED_FUNCTION_57(v11, 1, v97);
  if (v60)
  {
    v61 = OUTLINED_FUNCTION_11_89();
    v62(v61);
    v63 = &qword_1EC7F2D88;
    v64 = &qword_1D564AE20;
    v65 = v11;
LABEL_15:
    sub_1D4E50004(v65, v63, v64);
    goto LABEL_16;
  }

  v78 = OUTLINED_FUNCTION_24_53();
  v79(v78);
  sub_1D52E4BF8(&qword_1EC7F2F20, MEMORY[0x1E6975CD8]);
  OUTLINED_FUNCTION_26_57();
  sub_1D5614C48();
  v80 = OUTLINED_FUNCTION_20_64();
  v81(v80);
  v82 = OUTLINED_FUNCTION_11_89();
  v83(v82);
LABEL_16:
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D52E2490(uint64_t a1)
{
  v2 = sub_1D52E2E2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D52E24CC(uint64_t a1)
{
  v2 = sub_1D52E2E2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CloudSuggestedPivotEntry.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v4 = v3;
  v140 = v5;
  v6 = sub_1D5615C08();
  v7 = OUTLINED_FUNCTION_4(v6);
  v132 = v8;
  v133 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v131 = v11;
  OUTLINED_FUNCTION_70_0();
  v129 = sub_1D560FD68();
  v12 = OUTLINED_FUNCTION_4(v129);
  v128 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  v130 = v16;
  OUTLINED_FUNCTION_70_0();
  v17 = sub_1D5610588();
  v18 = OUTLINED_FUNCTION_4(v17);
  v134 = v19;
  v135 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_0();
  v136 = v22;
  OUTLINED_FUNCTION_70_0();
  v23 = sub_1D560F308();
  v24 = OUTLINED_FUNCTION_4(v23);
  v137 = v25;
  v138 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_0();
  v139 = v28;
  OUTLINED_FUNCTION_70_0();
  v144 = sub_1D5610088();
  v29 = OUTLINED_FUNCTION_4(v144);
  v142 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13();
  v141 = v33;
  OUTLINED_FUNCTION_23();
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v123 - v36;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_2();
  v145 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3A08, &unk_1D564F670);
  OUTLINED_FUNCTION_4(v39);
  v143 = v40;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_15_3();
  v44 = type metadata accessor for CloudSuggestedPivotEntry();
  v45 = OUTLINED_FUNCTION_14(v44);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_46_23();
  v49 = v4[3];
  v48 = v4[4];
  v50 = OUTLINED_FUNCTION_91_0();
  __swift_project_boxed_opaque_existential_1(v50, v51);
  sub_1D52E2E2C();
  sub_1D5616398();
  v52 = v4;
  if (v0)
  {
    goto LABEL_9;
  }

  v53 = v37;
  v127 = v2;
  v147 = v44;
  v54 = v142;
  v55 = v52;
  OUTLINED_FUNCTION_9_89();
  sub_1D52E4BF8(v56, v57);
  v58 = v144;
  v59 = v145;
  sub_1D5615FD8();
  v60 = v59;
  v124 = 0;
  v126 = v1;
  v61 = v54;
  (*(v54 + 2))(v53, v60, v58);
  sub_1D560F1E8();
  v62 = sub_1D5615298();

  v125 = v39;
  if (v62)
  {
    v63 = *(v54 + 1);
LABEL_7:
    v70 = v124;
    v63(v53, v58);
    v71 = v63;
    sub_1D4E628D4(v55, v146);
    v72 = v139;
    sub_1D560F258();
    v73 = v140;
    if (v70)
    {
      v74 = OUTLINED_FUNCTION_55_27();
      v71(v74);
      v75 = OUTLINED_FUNCTION_7_99();
      v76(v75);
      v52 = v55;
      goto LABEL_9;
    }

    v77 = OUTLINED_FUNCTION_55_27();
    v71(v77);
    v78 = OUTLINED_FUNCTION_7_99();
    v79(v78);
    v80 = OUTLINED_FUNCTION_48_33();
    v81(v80, v72);
LABEL_18:
    swift_storeEnumTagMultiPayload();
    sub_1D52E2E80(v58, v73);
    __swift_destroy_boxed_opaque_existential_1(v55);
    goto LABEL_10;
  }

  sub_1D560F1C8();
  OUTLINED_FUNCTION_9_89();
  sub_1D52E4BF8(v64, v65);
  OUTLINED_FUNCTION_72_23();
  *(v67 - 256) = v66;
  v68 = sub_1D5614D18();
  v63 = *(v61 + 1);
  v69 = OUTLINED_FUNCTION_15_2();
  (v63)(v69);
  if (v68)
  {
    goto LABEL_7;
  }

  sub_1D5610278();
  v82 = sub_1D5615298();

  if ((v82 & 1) == 0)
  {
    sub_1D56100D8();
    OUTLINED_FUNCTION_72_23();
    v84 = *(v83 - 256);
    v85 = sub_1D5614D18();
    v86 = OUTLINED_FUNCTION_15_2();
    (v63)(v86);
    if ((v85 & 1) == 0)
    {
      sub_1D560FBE8();
      v98 = sub_1D5615298();

      v63(v53, v58);
      v99 = v63;
      if ((v98 & 1) == 0)
      {
        v106 = v55;
        v107 = v55[4];
        __swift_project_boxed_opaque_existential_1(v55, v55[3]);
        OUTLINED_FUNCTION_82();
        sub_1D5616348();
        v146[0] = 0;
        v146[1] = 0xE000000000000000;
        sub_1D5615B68();
        MEMORY[0x1DA6EAC70](0xD000000000000011, 0x80000001D5689350);
        OUTLINED_FUNCTION_9_89();
        sub_1D52E4BF8(v108, v109);
        v110 = sub_1D56160F8();
        MEMORY[0x1DA6EAC70](v110);

        MEMORY[0x1DA6EAC70](0xD00000000000002BLL, 0x80000001D568A4E0);
        v111 = v131;
        sub_1D5615BF8();
        v112 = sub_1D5615C18();
        swift_allocError();
        v114 = v113;
        v115 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
        *v114 = v147;
        (*(v132 + 16))(v114 + v115, v111, v133);
        (*(*(v112 - 8) + 104))(v114, *MEMORY[0x1E69E6AF8], v112);
        swift_willThrow();
        v116 = OUTLINED_FUNCTION_17_66();
        v117(v116);
        v99(v145, v144);
        v118 = OUTLINED_FUNCTION_7_99();
        v119(v118);
        v52 = v106;
        goto LABEL_9;
      }

      v142 = v63;
      sub_1D4E628D4(v55, v146);
      v100 = v130;
      v101 = v124;
      sub_1D560FC98();
      v102 = v143;
      v103 = v126;
      v104 = v125;
      if (v101)
      {
        v105 = OUTLINED_FUNCTION_55_27();
        (v142)(v105);
        v92 = *(v102 + 8);
        v90 = v103;
        v91 = v104;
        goto LABEL_3;
      }

      v120 = OUTLINED_FUNCTION_55_27();
      (v142)(v120);
      (*(v102 + 8))(v103, v104);
      v121 = OUTLINED_FUNCTION_48_33();
      v122(v121, v100, v129);
LABEL_17:
      v73 = v140;
      goto LABEL_18;
    }
  }

  v63(v53, v58);
  sub_1D4E628D4(v55, v146);
  v87 = v136;
  v88 = v124;
  sub_1D56104D8();
  if (!v88)
  {
    v93 = OUTLINED_FUNCTION_55_27();
    (v63)(v93);
    v94 = OUTLINED_FUNCTION_7_99();
    v95(v94);
    v96 = OUTLINED_FUNCTION_48_33();
    v97(v96, v87);
    goto LABEL_17;
  }

  v89 = OUTLINED_FUNCTION_55_27();
  (v63)(v89);
  v90 = OUTLINED_FUNCTION_7_99();
LABEL_3:
  v92(v90, v91);
  v52 = v55;
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v52);
LABEL_10:
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D52E2E2C()
{
  result = qword_1EC7F3A10;
  if (!qword_1EC7F3A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3A10);
  }

  return result;
}

uint64_t sub_1D52E2E80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudSuggestedPivotEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void CloudSuggestedPivotEntry.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v4 = sub_1D560FD68();
  v5 = OUTLINED_FUNCTION_4(v4);
  v35 = v6;
  v36 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v9 = sub_1D5610588();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v15 = sub_1D560F308();
  v16 = OUTLINED_FUNCTION_4(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_46_23();
  v21 = type metadata accessor for CloudSuggestedPivotEntry();
  v22 = OUTLINED_FUNCTION_14(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  OUTLINED_FUNCTION_0_172();
  sub_1D52E40FC(v0, v27, v28);
  OUTLINED_FUNCTION_71();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_81();
      v30(v2, v27, v9);
      sub_1D5610528();
      (*(v12 + 8))(v2, v9);
    }

    else
    {
      OUTLINED_FUNCTION_11_18();
      v31(v1, v27, v36);
      sub_1D560FCE8();
      v32 = *(v35 + 8);
      v33 = OUTLINED_FUNCTION_75_2();
      v34(v33);
    }
  }

  else
  {
    (*(v18 + 32))(v3, v27, v15);
    sub_1D560F2A8();
    (*(v18 + 8))(v3, v15);
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

void MusicSuggestedPivotEntry.init<A>(_:configuration:sharedRelatedItemStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v154 = v23;
  v155 = v24;
  v26 = v25;
  v156 = v27;
  v29 = v28;
  v158 = v30;
  v31 = sub_1D5614408();
  v32 = OUTLINED_FUNCTION_4(v31);
  v141 = v33;
  v142 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_0();
  v140 = v36;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA58, &unk_1D5634110);
  v37 = OUTLINED_FUNCTION_4(v139);
  v138 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13();
  v134 = v41;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_2();
  v137 = v43;
  OUTLINED_FUNCTION_70_0();
  v149 = sub_1D560FD68();
  v44 = OUTLINED_FUNCTION_4(v149);
  v147 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5_0();
  v148 = v48;
  OUTLINED_FUNCTION_70_0();
  v136 = sub_1D5614898();
  v49 = OUTLINED_FUNCTION_4(v136);
  v135 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_5_0();
  v146 = v53;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBC0, &unk_1D561F2B0);
  v54 = OUTLINED_FUNCTION_4(v133);
  v132 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_13();
  v129 = v58;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_13_2();
  v131 = v60;
  OUTLINED_FUNCTION_70_0();
  v145 = sub_1D5610588();
  v61 = OUTLINED_FUNCTION_4(v145);
  v130 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_5_0();
  v144 = v65;
  v157 = v26;
  v67 = *(v26 - 8);
  v66 = v26 - 8;
  v68 = v67;
  v69 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_5_0();
  v151 = v71;
  OUTLINED_FUNCTION_70_0();
  v128 = sub_1D5613AF8();
  v72 = OUTLINED_FUNCTION_4(v128);
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_5_0();
  v143 = v75;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB48, &unk_1D5630FE0);
  v76 = OUTLINED_FUNCTION_4(v127);
  v126 = v77;
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_13();
  v125 = v80;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_13_2();
  v83 = v82;
  OUTLINED_FUNCTION_70_0();
  v84 = sub_1D560F308();
  v85 = OUTLINED_FUNCTION_4(v84);
  v87 = v86;
  v89 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_31_6();
  v90 = type metadata accessor for CloudSuggestedPivotEntry();
  v91 = OUTLINED_FUNCTION_14(v90);
  v93 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_59_0();
  v96 = v94 - v95;
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_159_1();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF878, &qword_1D5633210);
  v159 = v29;
  sub_1D5610648();
  OUTLINED_FUNCTION_0_172();
  v152 = v20;
  v99 = OUTLINED_FUNCTION_91_0();
  sub_1D52E40FC(v99, v100, v101);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v103 = (v67 + 16);
  v150 = (v67 + 8);
  v153 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload)
  {
    v143 = v98 - 8;
    if (EnumCaseMultiPayload != 1)
    {
      (*(v147 + 32))(v148, v96, v149);
      OUTLINED_FUNCTION_38_35();
      sub_1D52E4BF8(v120, v121);
      OUTLINED_FUNCTION_56_27(&a17);
      (*(v138 + 16))(v134, v87, v139);
      (*v103)(v151, v156, v157);
      sub_1D5614418();
      v122 = *v150;
      v123 = OUTLINED_FUNCTION_159();
      v124(v123);
      (*(*(v98 - 8) + 8))(v68, v98);
      (*(v138 + 8))(v87, v139);
      (*(v147 + 8))(v148, v149);
      sub_1D52DF24C(v152);
      v111 = OUTLINED_FUNCTION_67_28();
      v113 = v140;
      goto LABEL_7;
    }

    (*(v130 + 32))(v144, v96, v145);
    OUTLINED_FUNCTION_40_43();
    sub_1D52E4BF8(v104, v105);
    OUTLINED_FUNCTION_56_27(&a11);
    (*(v132 + 16))(v129, v87, v133);
    v106 = OUTLINED_FUNCTION_83_18();
    v107(v106, v156, v157);
    sub_1D56148A8();
    v108 = *v150;
    v109 = OUTLINED_FUNCTION_159();
    v110(v109);
    (*(*(v98 - 8) + 8))(v68, v98);
    (*(v132 + 8))(v87, v133);
    (*(v130 + 8))(v144, v145);
    sub_1D52DF24C(v152);
    v111 = OUTLINED_FUNCTION_67_28();
    v113 = v146;
    v114 = &a16;
  }

  else
  {
    (*(v87 + 32))(v66, v96, v84);
    OUTLINED_FUNCTION_39_39();
    sub_1D52E4BF8(v115, v116);
    sub_1D5610598();
    (*(v126 + 16))(v125, v83, v127);
    v117 = OUTLINED_FUNCTION_83_18();
    v118(v117, v156, v157);
    sub_1D5613B08();
    (*v150)(v156, v157);
    (*(*(v98 - 8) + 8))(v159, v98);
    (*(v126 + 8))(v83, v127);
    (*(v87 + 8))(v66, v84);
    sub_1D52DF24C(v152);
    v111 = OUTLINED_FUNCTION_67_28();
    v113 = v143;
    v114 = &v160;
  }

  v119 = *(v114 - 32);
LABEL_7:
  v112(v111, v113, v119);
  type metadata accessor for MusicSuggestedPivotContainer();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_46();
}

void MusicSuggestedPivotEntry.convertToCloudResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_47();
  v81 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA58, &unk_1D5634110);
  v5 = OUTLINED_FUNCTION_4(v4);
  v79 = v6;
  v80 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16_74(v10, v69);
  v11 = sub_1D5614408();
  v12 = OUTLINED_FUNCTION_4(v11);
  v76 = v13;
  v77 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  v75 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBC0, &unk_1D561F2B0);
  v18 = OUTLINED_FUNCTION_4(v17);
  v73 = v19;
  v74 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_30_8();
  v23 = sub_1D5614898();
  v24 = OUTLINED_FUNCTION_4(v23);
  v71 = v25;
  v72 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_4_82();
  v82 = type metadata accessor for CloudSuggestedPivotEntry();
  v28 = OUTLINED_FUNCTION_14(v82);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v33 = v32 - v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB48, &unk_1D5630FE0);
  OUTLINED_FUNCTION_4(v34);
  v70 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_83_5();
  v39 = sub_1D5613AF8();
  v40 = OUTLINED_FUNCTION_4(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v45 = type metadata accessor for MusicSuggestedPivotContainer();
  v46 = OUTLINED_FUNCTION_14(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5();
  v51 = v50 - v49;
  sub_1D52E40FC(v81, v50 - v49, type metadata accessor for MusicSuggestedPivotContainer);
  OUTLINED_FUNCTION_159();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v53 = v72;
      v54 = OUTLINED_FUNCTION_37_33(v71);
      v55(v54, v51, v72);
      sub_1D5614638();
      sub_1D5610648();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_8_93();
      sub_1D52E4BF8(v56, v57);
      OUTLINED_FUNCTION_70_20();
      sub_1D5610598();
      sub_1D52DF24C(v33);
      (*(v73 + 8))(v1, v74);
      v58 = *(v71 + 8);
      v59 = v3;
    }

    else
    {
      OUTLINED_FUNCTION_11_18();
      v53 = v77;
      v66(v75, v51, v77);
      sub_1D5614328();
      sub_1D5610648();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_8_93();
      sub_1D52E4BF8(v67, v68);
      OUTLINED_FUNCTION_70_20();
      sub_1D5610598();
      sub_1D52DF24C(v33);
      (*(v79 + 8))(v78, v80);
      v58 = *(v76 + 8);
      v59 = v75;
    }

    v58(v59, v53);
  }

  else
  {
    OUTLINED_FUNCTION_11_18();
    v60(v2, v51, v39);
    sub_1D56139D8();
    sub_1D5610648();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_8_93();
    sub_1D52E4BF8(v61, v62);
    OUTLINED_FUNCTION_70_20();
    sub_1D5610598();
    sub_1D52DF24C(v33);
    v63 = *(v70 + 8);
    v64 = OUTLINED_FUNCTION_75_2();
    v65(v64);
    (*(v42 + 8))(v2, v39);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D52E40FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

unint64_t sub_1D52E415C()
{
  result = qword_1EC7F3A20;
  if (!qword_1EC7F3A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3A20);
  }

  return result;
}

unint64_t sub_1D52E41B4()
{
  result = qword_1EC7F3A28;
  if (!qword_1EC7F3A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3A28);
  }

  return result;
}

unint64_t sub_1D52E420C()
{
  result = qword_1EC7F3A30;
  if (!qword_1EC7F3A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3A30);
  }

  return result;
}

unint64_t sub_1D52E4264()
{
  result = qword_1EC7F3A38;
  if (!qword_1EC7F3A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3A38);
  }

  return result;
}

unint64_t sub_1D52E42BC()
{
  result = qword_1EC7F3A40;
  if (!qword_1EC7F3A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3A40);
  }

  return result;
}

unint64_t sub_1D52E4314()
{
  result = qword_1EC7F3A48;
  if (!qword_1EC7F3A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3A48);
  }

  return result;
}

unint64_t sub_1D52E436C()
{
  result = qword_1EC7F3A50;
  if (!qword_1EC7F3A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3A50);
  }

  return result;
}

unint64_t sub_1D52E43C4()
{
  result = qword_1EC7F3A58;
  if (!qword_1EC7F3A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3A58);
  }

  return result;
}

unint64_t sub_1D52E441C()
{
  result = qword_1EC7F3A60;
  if (!qword_1EC7F3A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3A60);
  }

  return result;
}

unint64_t sub_1D52E4474()
{
  result = qword_1EC7F3A68;
  if (!qword_1EC7F3A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3A68);
  }

  return result;
}

unint64_t sub_1D52E44CC()
{
  result = qword_1EC7F3A70;
  if (!qword_1EC7F3A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3A70);
  }

  return result;
}

unint64_t sub_1D52E4524()
{
  result = qword_1EC7F3A78;
  if (!qword_1EC7F3A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3A78);
  }

  return result;
}

uint64_t sub_1D52E4610()
{
  sub_1D52E4BF8(&qword_1EC7F1920, type metadata accessor for MusicSuggestedPivotEntry);

  return sub_1D5612668();
}

uint64_t sub_1D52E467C()
{
  result = sub_1D560F308();
  if (v1 <= 0x3F)
  {
    result = sub_1D5610588();
    if (v2 <= 0x3F)
    {
      result = sub_1D560FD68();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

_BYTE *sub_1D52E4744(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D52E4834()
{
  result = qword_1EC7F3A98;
  if (!qword_1EC7F3A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3A98);
  }

  return result;
}

unint64_t sub_1D52E488C()
{
  result = qword_1EC7F3AA0;
  if (!qword_1EC7F3AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3AA0);
  }

  return result;
}

unint64_t sub_1D52E48E4()
{
  result = qword_1EC7F3AA8;
  if (!qword_1EC7F3AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3AA8);
  }

  return result;
}

unint64_t sub_1D52E493C()
{
  result = qword_1EC7F3AB0;
  if (!qword_1EC7F3AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3AB0);
  }

  return result;
}

unint64_t sub_1D52E4994()
{
  result = qword_1EC7F3AB8;
  if (!qword_1EC7F3AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3AB8);
  }

  return result;
}

unint64_t sub_1D52E49EC()
{
  result = qword_1EC7F3AC0;
  if (!qword_1EC7F3AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3AC0);
  }

  return result;
}

unint64_t sub_1D52E4A44()
{
  result = qword_1EC7F3AC8;
  if (!qword_1EC7F3AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3AC8);
  }

  return result;
}

unint64_t sub_1D52E4A9C()
{
  result = qword_1EC7F3AD0;
  if (!qword_1EC7F3AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3AD0);
  }

  return result;
}

unint64_t sub_1D52E4AF4()
{
  result = qword_1EC7F3AD8;
  if (!qword_1EC7F3AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3AD8);
  }

  return result;
}

unint64_t sub_1D52E4B4C()
{
  result = qword_1EC7F3AE0;
  if (!qword_1EC7F3AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3AE0);
  }

  return result;
}

unint64_t sub_1D52E4BA4()
{
  result = qword_1EC7F3AE8;
  if (!qword_1EC7F3AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3AE8);
  }

  return result;
}

uint64_t sub_1D52E4BF8(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_47_36(uint64_t a1, uint64_t a2)
{
  *(v4 - 88) = v3;
  *(v4 - 72) = v2;
  *(v4 - 112) = a2;
}

uint64_t OUTLINED_FUNCTION_66_21()
{
  v2 = *(v0 - 144);

  return sub_1D4E628D4(v2, v0 - 120);
}

double NSUserDefaults.subscript.getter@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  (*(a2 + 8))(a1, a2);
  v5 = sub_1D5614D38();

  v6 = [v3 objectForKey_];

  if (v6)
  {
    sub_1D56159A8();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1D52E4F00(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v14[-v8];
  (*(v10 + 16))(&v14[-v8], v11, v6);
  sub_1D4F508D8(a1, v14);
  v12 = *a2;
  return NSUserDefaults.subscript.setter(v14, v9, v6);
}

uint64_t NSUserDefaults.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1D4F508D8(a1, &v16);
  if (v17)
  {
    sub_1D4E519A8(&v16, v18);
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v8 = sub_1D5616158();
    v9 = OUTLINED_FUNCTION_0_173();
    v10(v9);
    v11 = sub_1D5614D38();

    [v4 setObject:v8 forKey:v11];
    swift_unknownObjectRelease();

    (*(*(a3 - 8) + 8))(a2, a3);
    sub_1D50B8C70(a1);
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    sub_1D50B8C70(&v16);
    v13 = OUTLINED_FUNCTION_0_173();
    v14(v13);
    v15 = sub_1D5614D38();

    [v4 removeObjectForKey_];

    (*(*(a3 - 8) + 8))(a2, a3);
    return sub_1D50B8C70(a1);
  }
}

void (*NSUserDefaults.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x70uLL);
  *a1 = v8;
  v8[9] = a4;
  v8[10] = v4;
  v8[8] = a3;
  v9 = *(a3 - 8);
  v10 = v9;
  v8[11] = v9;
  v11 = *(v9 + 64);
  v8[12] = __swift_coroFrameAllocStub(v11);
  v8[13] = __swift_coroFrameAllocStub(v11);
  (*(v10 + 16))();
  NSUserDefaults.subscript.getter(a3, a4, v8);
  return sub_1D52E528C;
}

void sub_1D52E528C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 96);
  v3 = *(*a1 + 104);
  if (a2)
  {
    v5 = v2[10];
    v6 = v2[11];
    v8 = v2[8];
    v7 = v2[9];
    sub_1D4F508D8(*a1, (v2 + 4));
    (*(v6 + 32))(v4, v3, v8);
    NSUserDefaults.subscript.setter((v2 + 4), v4, v8);
    sub_1D50B8C70(v2);
  }

  else
  {
    v9 = v2[9];
    v10 = v2[10];
    NSUserDefaults.subscript.setter(*a1, v2[13], v2[8]);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t AssetURLFlavor.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1D52E5478@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  result = AssetURLFlavor.init(rawValue:)(*a1).rawValue._countAndFlagsBits;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D52E54B8@<X0>(uint64_t *a1@<X8>)
{
  result = AssetURLFlavor.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AssetURLFlavor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_1_1();
  sub_1D5616358();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    OUTLINED_FUNCTION_1_1();
    v6 = sub_1D5616188();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(v10);
    *a2 = v6;
    a2[1] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AssetURLFlavor.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D56163B8();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1D56161A8();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

unint64_t sub_1D52E562C()
{
  result = qword_1EC7F3AF0;
  if (!qword_1EC7F3AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3AF0);
  }

  return result;
}

uint64_t sub_1D52E56C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v114 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_48(&v98 - v11);
  v102 = sub_1D5614898();
  v12 = OUTLINED_FUNCTION_4(v102);
  v101 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v17 - v16);
  v107 = sub_1D56128E8();
  v18 = OUTLINED_FUNCTION_4(v107);
  v106 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13();
  v104 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v105 = &v98 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8A8, &qword_1D561CF10);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_48(&v98 - v27);
  v112 = sub_1D5613EF8();
  v28 = OUTLINED_FUNCTION_4(v112);
  v110 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v109 = v33 - v32;
  v34 = *(a3 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13();
  v108 = v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v98 - v39;
  v41 = sub_1D560D838();
  v42 = OUTLINED_FUNCTION_4(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5();
  v49 = v48 - v47;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v53 = &v98 - v52;
  v113 = a2;
  result = sub_1D560F0C8();
  if (result)
  {
    *a5 = 7;
    return result;
  }

  v99 = a5;
  v55 = *(v114 + 8);
  v56 = a1;
  v57 = a3;
  sub_1D560EC98();
  sub_1D560D5C8();
  (*(v44 + 8))(v49, v41);
  v58 = sub_1D560D4C8();
  v59 = v56;
  if (__swift_getEnumTagSinglePayload(v53, 1, v58) == 1)
  {
    sub_1D4E6C9CC(v53, &unk_1EC7EBF20, &unk_1D561F530);
    v60 = v34;
  }

  else
  {
    v61 = sub_1D560D488();
    v63 = v62;
    (*(*(v58 - 8) + 8))(v53, v58);
    v65 = v61 == _s8MusicKit0A7LibraryC0aB8InternalE2idSSvg_0() && v63 == v64;
    v60 = v34;
    if (v65)
    {
    }

    else
    {
      v66 = sub_1D5616168();

      if ((v66 & 1) == 0)
      {
        *v99 = 7;
        return result;
      }
    }
  }

  v67 = *(v60 + 16);
  v67(v40, v59, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v127 = 0;
    v125 = 0u;
    v126 = 0u;
    result = sub_1D4E6C9CC(&v125, &qword_1EC7EC500, &unk_1D5621030);
LABEL_19:
    *v99 = 0;
    return result;
  }

  sub_1D4E48324(&v125, &v128);
  v68 = v129;
  v69 = v130;
  __swift_project_boxed_opaque_existential_1(&v128, v129);
  (*(v69 + 16))(&v123, v68, v69);
  if (!v124)
  {
    sub_1D4E6C9CC(&v123, &qword_1EC7EC500, &unk_1D5621030);
    result = __swift_destroy_boxed_opaque_existential_1(&v128);
    goto LABEL_19;
  }

  sub_1D4E48324(&v123, &v125);
  __swift_project_boxed_opaque_existential_1(&v125, *(&v126 + 1));
  OUTLINED_FUNCTION_1_10();
  sub_1D4F60168();
  v70 = v123;
  if (v123 == 1)
  {
    goto LABEL_15;
  }

  sub_1D4E628D4(&v125, &v123);
  v72 = v111;
  v73 = v112;
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v72, 1, 1, v73);
    sub_1D4E6C9CC(v72, &qword_1EC7EA8A8, &qword_1D561CF10);
    v67(v108, v59, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
    if (swift_dynamicCast())
    {
      sub_1D4E48324(&v120, &v123);
      __swift_project_boxed_opaque_existential_1(&v123, v124);
      sub_1D560DB68();
      if (v116)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
        if (swift_dynamicCast())
        {
          if (*(&v118 + 1))
          {
            sub_1D4E48324(&v117, &v120);
            __swift_project_boxed_opaque_existential_1(&v120, *(&v121 + 1));
            OUTLINED_FUNCTION_1_10();
            sub_1D4F67E14(v83, v84, v85);
            v86 = v117;
            __swift_destroy_boxed_opaque_existential_1(&v120);
            __swift_destroy_boxed_opaque_existential_1(&v123);
            if (v86 < 0)
            {
              goto LABEL_24;
            }

LABEL_59:
            v70 = 9;
            goto LABEL_15;
          }
        }

        else
        {
          OUTLINED_FUNCTION_1_133();
        }
      }

      else
      {
        sub_1D4E6C9CC(v115, &qword_1EC7EEC40, &unk_1D561C070);
        v117 = 0u;
        v118 = 0u;
        v119 = 0;
      }

      sub_1D4E6C9CC(&v117, &qword_1EC7EC548, &qword_1D5621090);
      __swift_destroy_boxed_opaque_existential_1(&v123);
    }

    else
    {
      v122 = 0;
      v120 = 0u;
      v121 = 0u;
      sub_1D4E6C9CC(&v120, &qword_1EC7EC548, &qword_1D5621090);
    }

LABEL_55:
    *v99 = 0;
    goto LABEL_56;
  }

  __swift_storeEnumTagSinglePayload(v72, 0, 1, v73);
  v74 = v110;
  v75 = v109;
  (*(v110 + 32))(v109, v72, v73);
  v76 = sub_1D5613D78();
  if ((v77 & 1) == 0 && v76 > 0)
  {
    goto LABEL_23;
  }

  v87 = v105;
  sub_1D5613DB8();
  v88 = v106;
  v89 = v104;
  v90 = v107;
  (*(v106 + 16))(v104, v87, v107);
  v91 = (*(v88 + 88))(v89, v90);
  if (v91 == *MEMORY[0x1E69765E8])
  {
    goto LABEL_58;
  }

  if (v91 == *MEMORY[0x1E69765F8])
  {
    (*(v88 + 8))(v87, v90);
LABEL_23:
    (*(v74 + 8))(v75, v73);
LABEL_24:
    v78 = objc_opt_self();
    v79 = [objc_opt_self() autoupdatingActiveAccount];
    v80 = [v78 sharedMonitorForIdentity_];

    v81 = [v80 subscriptionStatus];
    if (v81)
    {
      v82 = [v81 capabilities];

      if ((v82 & 0x100) == 0)
      {
        v70 = 6;
        goto LABEL_15;
      }
    }

    sub_1D4E628D4(&v125, &v120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
    if (swift_dynamicCast())
    {
      sub_1D4E48324(&v117, &v123);
      __swift_project_boxed_opaque_existential_1(&v123, v124);
      if (sub_1D5612F38())
      {
        if (qword_1EDD55F58 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_1D560C8F8();

        v92 = v120;

        if ((v92 & 1) == 0)
        {
          *v99 = 2;
          __swift_destroy_boxed_opaque_existential_1(&v123);
          goto LABEL_56;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(&v123);
    }

    else
    {
      OUTLINED_FUNCTION_1_133();
      sub_1D4E6C9CC(&v117, &qword_1EC7F3B00, &qword_1D5650210);
    }

    sub_1D4E628D4(&v125, &v123);
    v93 = v103;
    v94 = v102;
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v93, 0, 1, v94);
      v95 = v101;
      v96 = v100;
      (*(v101 + 32))(v100, v93, v94);
      Playlist.variant.getter();
      (*(v95 + 8))(v96, v94);
      if (v123 == 4)
      {
        goto LABEL_55;
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v93, 1, 1, v94);
      sub_1D4E6C9CC(v93, &unk_1EC7F1990, &unk_1D561CEF0);
    }

    v97 = *(sub_1D4E5A1CC() + 48);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D560C8F8();

    v70 = v123;
    if (v123 != 2)
    {
      v71 = v99;
      if (v123 != 3)
      {
        if (v123)
        {
          v70 = 4;
        }

        else
        {
          v70 = 11;
        }
      }

      goto LABEL_16;
    }

    v70 = 11;
LABEL_15:
    v71 = v99;
LABEL_16:
    *v71 = v70;
LABEL_56:
    __swift_destroy_boxed_opaque_existential_1(&v125);
    return __swift_destroy_boxed_opaque_existential_1(&v128);
  }

  if (v91 == *MEMORY[0x1E69765F0])
  {
LABEL_58:
    (*(v88 + 8))(v87, v90);
    (*(v74 + 8))(v75, v73);
    goto LABEL_59;
  }

  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t MusicLibrary.PinAction.UnsupportedReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D52E64D4()
{
  v2 = *v0;
  sub_1D56162D8();
  MusicLibrary.PinAction.UnsupportedReason.hash(into:)();
  return sub_1D5616328();
}

unint64_t sub_1D52E6524()
{
  result = qword_1EC7F3AF8;
  if (!qword_1EC7F3AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3AF8);
  }

  return result;
}

_BYTE *_s9PinActionVwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s9PinActionV17UnsupportedReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D52E670C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC450, &unk_1D5621060);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED18, &unk_1D562E668);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v21 - v10;
  v12 = sub_1D5612848();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5614898();
  v21[0] = v2;
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
    (*(v13 + 32))(v16, v11, v12);
    sub_1D4F39AB0(a1, v7, &qword_1EC7EC450, &unk_1D5621060);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
    if (__swift_getEnumTagSinglePayload(v7, 1, v17) == 1)
    {
      sub_1D4E50004(v7, &qword_1EC7EC450, &unk_1D5621060);
      v23 = 0u;
      v24 = 0u;
    }

    else
    {
      *(&v24 + 1) = v17;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v23);
      (*(*(v17 - 8) + 32))(boxed_opaque_existential_1Tm, v7, v17);
    }

    sub_1D56126C8();
    *(&v24 + 1) = v12;
    v25 = MEMORY[0x1E69765B0];
    v19 = __swift_allocate_boxed_opaque_existential_1Tm(&v23);
    (*(v13 + 16))(v19, v16, v12);
    sub_1D56145A8();
    return (*(v13 + 8))(v16, v12);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
    sub_1D4E50004(v11, &qword_1EC7EED18, &unk_1D562E668);
    *&v23 = 0;
    *(&v23 + 1) = 0xE000000000000000;
    sub_1D5615B68();
    v22 = v23;
    MEMORY[0x1DA6EAC70](0xD00000000000003CLL, 0x80000001D5682C10);
    sub_1D5612B18();
    sub_1D5615D48();
    __swift_destroy_boxed_opaque_existential_1(&v23);
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t MusicShareableItemRequest.init(shareableURL:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MusicShareableItemRequest();
  v3 = a1 + v2[5];
  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  *(a1 + v2[6]) = 4;
  *(a1 + v2[7]) = MEMORY[0x1E69E7CC0];
  v4 = sub_1D560C0A8();
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_159();

  return v8(v7);
}

uint64_t type metadata accessor for MusicShareableItemRequest()
{
  result = qword_1EC7F3B40;
  if (!qword_1EC7F3B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicShareableItemRequest.shareableURL.getter()
{
  v0 = sub_1D560C0A8();
  OUTLINED_FUNCTION_14(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_71();

  return v4(v3);
}

uint64_t MusicShareableItemRequest.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  v12 = v1 + *(type metadata accessor for MusicShareableItemRequest() + 20);
  sub_1D560CCE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  v13 = type metadata accessor for MusicRequestConfiguration();
  v14 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v11, v14 ^ 1u, 1, v13);
  sub_1D4F39AB0(v11, v9, &qword_1EC7EA838, &unk_1D561CB10);
  OUTLINED_FUNCTION_10(v9);
  if (v15)
  {
    static MusicRequestConfiguration.globalDefault.getter(a1);
    OUTLINED_FUNCTION_10(v9);
    if (!v15)
    {
      sub_1D4E50004(v9, &qword_1EC7EA838, &unk_1D561CB10);
    }
  }

  else
  {
    sub_1D52EA00C(v9, a1);
  }

  return sub_1D4E50004(v11, &qword_1EC7EA838, &unk_1D561CB10);
}

uint64_t sub_1D52E6DEC(uint64_t a1)
{
  v2 = type metadata accessor for MusicRequestConfiguration();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D52E9628(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return MusicShareableItemRequest.configuration.setter();
}

uint64_t MusicShareableItemRequest.configuration.setter()
{
  OUTLINED_FUNCTION_147();
  v1 = sub_1D560CD48();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicRequestConfiguration();
  OUTLINED_FUNCTION_3_132();
  sub_1D52EB5B0(v9, v10);
  sub_1D560E6C8();
  OUTLINED_FUNCTION_6_99();
  sub_1D4E586C0();
  v11 = type metadata accessor for MusicShareableItemRequest();
  return (*(v4 + 40))(v0 + *(v11 + 20), v8, v1);
}

void (*MusicShareableItemRequest.configuration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1D560CD48();
  v3[1] = v4;
  OUTLINED_FUNCTION_69(v4);
  v3[2] = v5;
  v3[3] = __swift_coroFrameAllocStub(*(v6 + 64));
  v7 = type metadata accessor for MusicRequestConfiguration();
  v3[4] = v7;
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[6] = v10;
  MusicShareableItemRequest.configuration.getter(v10);
  return sub_1D52E7090;
}

void sub_1D52E7090(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v6 = (*a1)[3];
  v5 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    sub_1D52E9628((*a1)[6], v3);
    OUTLINED_FUNCTION_3_132();
    sub_1D52EB5B0(v10, v11);
    sub_1D560E6C8();
    sub_1D4E586C0();
    v12 = type metadata accessor for MusicShareableItemRequest();
    v13 = OUTLINED_FUNCTION_33_45(v12);
    v14(v13);
    sub_1D4E586C0();
  }

  else
  {
    OUTLINED_FUNCTION_3_132();
    sub_1D52EB5B0(v15, v16);
    sub_1D560E6C8();
    OUTLINED_FUNCTION_6_99();
    sub_1D4E586C0();
    v17 = type metadata accessor for MusicShareableItemRequest();
    v18 = OUTLINED_FUNCTION_33_45(v17);
    v19(v18);
  }

  free(v4);
  free(v3);
  free(v6);

  free(v2);
}

uint64_t MusicShareableItemRequest.source.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MusicShareableItemRequest();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t MusicShareableItemRequest.source.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MusicShareableItemRequest();
  *(v1 + *(result + 24)) = v2;
  return result;
}

double (*MusicShareableItemRequest.source.modify())(void, void)
{
  OUTLINED_FUNCTION_64_1();
  v0 = *(type metadata accessor for MusicShareableItemRequest() + 24);
  return nullsub_1;
}

uint64_t MusicShareableItemRequest.properties.getter()
{
  v1 = *(v0 + *(type metadata accessor for MusicShareableItemRequest() + 28));
}

uint64_t MusicShareableItemRequest.properties.setter()
{
  OUTLINED_FUNCTION_64_1();
  v2 = *(type metadata accessor for MusicShareableItemRequest() + 28);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

double (*MusicShareableItemRequest.properties.modify())(void, void)
{
  OUTLINED_FUNCTION_64_1();
  v0 = *(type metadata accessor for MusicShareableItemRequest() + 28);
  return nullsub_1;
}

uint64_t MusicShareableItemRequest.response()()
{
  OUTLINED_FUNCTION_60();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_1D560D838();
  v1[14] = v3;
  OUTLINED_FUNCTION_69(v3);
  v1[15] = v4;
  v6 = *(v5 + 64);
  v1[16] = OUTLINED_FUNCTION_127();
  v7 = sub_1D5614828();
  v1[17] = v7;
  OUTLINED_FUNCTION_69(v7);
  v1[18] = v8;
  v10 = *(v9 + 64);
  v1[19] = OUTLINED_FUNCTION_167();
  v1[20] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECEA0, &qword_1D5666390);
  v1[21] = v11;
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  v1[22] = OUTLINED_FUNCTION_127();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC450, &unk_1D5621060);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  v1[23] = OUTLINED_FUNCTION_167();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  v1[26] = v17;
  OUTLINED_FUNCTION_69(v17);
  v1[27] = v18;
  v20 = *(v19 + 64);
  v1[28] = OUTLINED_FUNCTION_167();
  v1[29] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  OUTLINED_FUNCTION_22(v21);
  v23 = *(v22 + 64);
  v1[30] = OUTLINED_FUNCTION_167();
  v1[31] = swift_task_alloc();
  v24 = sub_1D5614898();
  v1[32] = v24;
  OUTLINED_FUNCTION_69(v24);
  v1[33] = v25;
  v27 = *(v26 + 64);
  v1[34] = OUTLINED_FUNCTION_167();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v28 = sub_1D5613D28();
  v1[37] = v28;
  OUTLINED_FUNCTION_69(v28);
  v1[38] = v29;
  v31 = *(v30 + 64);
  v1[39] = OUTLINED_FUNCTION_167();
  v1[40] = swift_task_alloc();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4E8, &unk_1D561C470);
  v1[41] = v32;
  OUTLINED_FUNCTION_69(v32);
  v1[42] = v33;
  v35 = *(v34 + 64);
  v1[43] = OUTLINED_FUNCTION_127();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F68, &qword_1D56502C0);
  v1[44] = v36;
  OUTLINED_FUNCTION_22(v36);
  v38 = *(v37 + 64);
  v1[45] = OUTLINED_FUNCTION_127();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC458, &unk_1D5620CD0);
  OUTLINED_FUNCTION_22(v39);
  v41 = *(v40 + 64);
  v1[46] = OUTLINED_FUNCTION_127();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA888, &qword_1D563B8C0);
  OUTLINED_FUNCTION_22(v42);
  v44 = *(v43 + 64);
  v1[47] = OUTLINED_FUNCTION_167();
  v1[48] = swift_task_alloc();
  v45 = sub_1D5613AF8();
  v1[49] = v45;
  OUTLINED_FUNCTION_69(v45);
  v1[50] = v46;
  v48 = *(v47 + 64);
  v1[51] = OUTLINED_FUNCTION_127();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3B08, &qword_1D56502C8);
  OUTLINED_FUNCTION_22(v49);
  v51 = *(v50 + 64);
  v1[52] = OUTLINED_FUNCTION_127();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4D8, &qword_1D56502D0);
  v1[53] = v52;
  OUTLINED_FUNCTION_69(v52);
  v1[54] = v53;
  v55 = *(v54 + 64);
  v1[55] = OUTLINED_FUNCTION_127();
  v56 = type metadata accessor for MusicShareableItem();
  v1[56] = v56;
  OUTLINED_FUNCTION_22(v56);
  v58 = *(v57 + 64);
  v1[57] = OUTLINED_FUNCTION_127();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3B10, &qword_1D56502D8);
  v1[58] = v59;
  OUTLINED_FUNCTION_69(v59);
  v1[59] = v60;
  v62 = *(v61 + 64);
  v1[60] = OUTLINED_FUNCTION_127();
  v63 = sub_1D560CD48();
  v1[61] = v63;
  OUTLINED_FUNCTION_69(v63);
  v1[62] = v64;
  v66 = *(v65 + 64);
  v1[63] = OUTLINED_FUNCTION_167();
  v1[64] = swift_task_alloc();
  v67 = type metadata accessor for MusicRequestConfiguration();
  v1[65] = v67;
  OUTLINED_FUNCTION_22(v67);
  v69 = *(v68 + 64);
  v1[66] = OUTLINED_FUNCTION_127();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3B18, &qword_1D56502E0);
  v1[67] = v70;
  OUTLINED_FUNCTION_69(v70);
  v1[68] = v71;
  v73 = *(v72 + 64);
  v1[69] = OUTLINED_FUNCTION_127();
  v74 = sub_1D560C0A8();
  v1[70] = v74;
  OUTLINED_FUNCTION_69(v74);
  v1[71] = v75;
  v77 = *(v76 + 64);
  v1[72] = OUTLINED_FUNCTION_127();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3B20, &qword_1D56502E8);
  OUTLINED_FUNCTION_22(v78);
  v80 = *(v79 + 64);
  v1[73] = OUTLINED_FUNCTION_127();
  v81 = _s9ParsedURLVMa();
  v1[74] = v81;
  OUTLINED_FUNCTION_22(v81);
  v83 = *(v82 + 64);
  v1[75] = OUTLINED_FUNCTION_167();
  v1[76] = swift_task_alloc();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v84, v85, v86);
}

uint64_t sub_1D52E79D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_22_57();
  OUTLINED_FUNCTION_32_45();
  v39 = v38[74];
  v40 = v38[73];
  v41 = v38[72];
  (*(v38[71] + 16))(v41, v38[13], v38[70]);
  sub_1D503EA18(v41, v40);
  OUTLINED_FUNCTION_10(v40);
  if (v42)
  {
    sub_1D4E50004(v38[73], &qword_1EC7F3B20, &qword_1D56502E8);
    sub_1D52E95D4();
    v85 = swift_allocError();
    *v43 = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_40_44();
    v44 = v38[69];
    v45 = v38[66];
    v47 = v38[63];
    v46 = v38[64];
    v48 = v38[60];
    v49 = v38[57];
    OUTLINED_FUNCTION_9_90();

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_94();

    return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, v85, a34, a35, a36, a37, a38);
  }

  else
  {
    v59 = v38[76];
    v60 = v38[75];
    v61 = v38[69];
    v62 = v38[66];
    v84 = v38[65];
    v86 = v38[67];
    v64 = v38[63];
    v63 = v38[64];
    v66 = v38[61];
    v65 = v38[62];
    v67 = v38[13];
    sub_1D52EA00C(v38[73], v59);
    sub_1D52E9628(v59, v60);
    sub_1D52E9680(v60, v61);
    MusicShareableItemRequest.configuration.getter(v62);
    OUTLINED_FUNCTION_3_132();
    sub_1D52EB5B0(v68, v69);
    sub_1D560E6C8();
    (*(v65 + 16))(v64, v63, v66);
    sub_1D560E248();
    (*(v65 + 8))(v63, v66);
    OUTLINED_FUNCTION_6_99();
    sub_1D4E586C0();
    v70 = type metadata accessor for MusicShareableItemRequest();
    sub_1D52E9D00(v59, *(v67 + *(v70 + 28)));
    sub_1D560E228();
    v71 = *(MEMORY[0x1E69751D8] + 4);
    v72 = swift_task_alloc();
    v38[77] = v72;
    *v72 = v38;
    v72[1] = sub_1D52E7D8C;
    v73 = v38[69];
    v74 = v38[67];
    v75 = v38[60];
    OUTLINED_FUNCTION_94();

    return MEMORY[0x1EEDCEDA0](v76, v77, v78, v79, v80, v81, v82, v83, a9, a10, a11, a12);
  }
}

uint64_t sub_1D52E7D8C()
{
  OUTLINED_FUNCTION_60();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v6 = *(v5 + 616);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v9 + 624) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D52E7E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_22_57();
  OUTLINED_FUNCTION_32_45();
  v40 = *(v38 + 480);
  v41 = *(v38 + 464);
  v43 = *(v38 + 440);
  v42 = *(v38 + 448);
  v44 = *(v38 + 424);
  v45 = *(v38 + 432);
  v46 = *(v38 + 416);
  v47 = sub_1D560E448();
  sub_1D4ECA4B8(v47);
  v48 = *(v45 + 8);
  v49 = OUTLINED_FUNCTION_70();
  v50(v49);
  if (__swift_getEnumTagSinglePayload(v46, 1, v42) == 1)
  {
    v51 = *(v38 + 608);
    v52 = *(v38 + 552);
    v53 = *(v38 + 544);
    v54 = *(v38 + 536);
    v56 = *(v38 + 472);
    v55 = *(v38 + 480);
    v57 = *(v38 + 464);
    sub_1D52E95D4();
    v240 = swift_allocError();
    *v58 = 1;
    swift_willThrow();
    (*(v56 + 8))(v55, v57);
    (*(v53 + 8))(v52, v54);
    OUTLINED_FUNCTION_0_174();
    sub_1D4E586C0();
    OUTLINED_FUNCTION_40_44();
    v59 = *(v38 + 552);
    v60 = *(v38 + 528);
    v62 = *(v38 + 504);
    v61 = *(v38 + 512);
    v63 = *(v38 + 480);
    v64 = *(v38 + 456);
    OUTLINED_FUNCTION_9_90();

    OUTLINED_FUNCTION_55();
LABEL_34:
    OUTLINED_FUNCTION_94();

    return v226(v225, v226, v227, v228, v229, v230, v231, v232, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, v240, a34, a35, a36, a37, a38);
  }

  v65 = *(v38 + 448);
  v66 = *(v38 + 416);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload)
    {
      v126 = *(v38 + 552);
      v127 = *(v38 + 544);
      v128 = *(v38 + 536);
      v129 = *(v38 + 456);
      (*(*(v38 + 472) + 8))(*(v38 + 480), *(v38 + 464));
      (*(v127 + 8))(v126, v128);
      OUTLINED_FUNCTION_5_100();
      sub_1D52EA00C(v66, v129);
LABEL_33:
      OUTLINED_FUNCTION_14_69();
      a9 = v222;
      a10 = v221;
      a11 = *(v38 + 416);
      a12 = *(v38 + 408);
      a13 = *(v38 + 384);
      a14 = *(v38 + 376);
      a15 = *(v38 + 368);
      a16 = *(v38 + 360);
      a17 = *(v38 + 344);
      a18 = *(v38 + 320);
      a19 = *(v38 + 312);
      a20 = *(v38 + 288);
      a21 = *(v38 + 280);
      a22 = *(v38 + 272);
      a23 = *(v38 + 248);
      a24 = *(v38 + 240);
      a25 = *(v38 + 232);
      a26 = *(v38 + 224);
      a27 = *(v38 + 200);
      a28 = *(v38 + 192);
      a29 = *(v38 + 184);
      a30 = *(v38 + 176);
      a31 = *(v38 + 160);
      a32 = *(v38 + 152);
      v240 = *(v38 + 128);
      v223 = *(v38 + 96);
      OUTLINED_FUNCTION_5_100();
      sub_1D52EA00C(v39, v224);
      OUTLINED_FUNCTION_0_174();
      sub_1D4E586C0();

      OUTLINED_FUNCTION_55();
      goto LABEL_34;
    }

    v68 = *(v38 + 608);
    v69 = *(v38 + 592);
    v233 = *(*(v38 + 400) + 32);
    (v233)(*(v38 + 408), v66, *(v38 + 392));
    v70 = (v68 + *(v69 + 28));
    v71 = v70[1];
    if (v71)
    {
      v72 = *v70;
      v73 = *(v38 + 408);
      v74 = *(v38 + 368);
      v75 = *(v38 + 328);
      sub_1D5613AC8();
      if (OUTLINED_FUNCTION_37_34() == 1)
      {
        v76 = *(v38 + 552);
        v77 = *(v38 + 544);
        v78 = *(v38 + 536);
        v80 = *(v38 + 368);
        v79 = *(v38 + 376);
        v81 = *(v38 + 296);
        (*(*(v38 + 472) + 8))(*(v38 + 480), *(v38 + 464));
        v82 = *(v77 + 8);
        v83 = OUTLINED_FUNCTION_159();
        v84(v83);
        sub_1D4E50004(v80, &qword_1EC7EC458, &unk_1D5620CD0);
        OUTLINED_FUNCTION_33();
        __swift_storeEnumTagSinglePayload(v85, v86, v87, v81);
      }

      else
      {
        v238 = v72;
        v161 = *(v38 + 360);
        v162 = *(v38 + 352);
        v163 = *(v38 + 304);
        (*(*(v38 + 336) + 16))(*(v38 + 344), *(v38 + 368), *(v38 + 328));
        OUTLINED_FUNCTION_163_0();
        sub_1D4E62A60(v164, &qword_1EC7EA4E8, &unk_1D561C470);
        sub_1D5614F98();
        v165 = *(v162 + 36);
        v236 = (v163 + 16);
        v241 = (v163 + 32);
        v234 = (v163 + 8);
        OUTLINED_FUNCTION_14_1();
        v167 = sub_1D4E62A60(v166, &qword_1EC7EA4E8, &unk_1D561C470);
        v237 = v71;
        v235 = v165;
        while (1)
        {
          v168 = *(v38 + 360);
          v169 = *(v38 + 328);
          sub_1D5615648();
          if (*(v161 + v165) == *(v38 + 88))
          {
            OUTLINED_FUNCTION_27_53();
            v189 = *(v38 + 472);
            v188 = *(v38 + 480);
            v190 = *(v38 + 464);
            sub_1D4E50004(*(v38 + 360), &qword_1EC7F2F68, &qword_1D56502C0);
            v191 = *(v189 + 8);
            v192 = OUTLINED_FUNCTION_70();
            v193(v192);
            v194 = *(v167 + 8);
            v195 = OUTLINED_FUNCTION_159();
            v196(v195);
            v197 = 1;
            goto LABEL_29;
          }

          v170 = *(v38 + 360);
          v172 = *(v38 + 320);
          v171 = *(v38 + 328);
          v173 = *(v38 + 312);
          v174 = *(v38 + 296);
          v175 = sub_1D5615688();
          (*v236)(v172);
          v175(v38 + 48, 0);
          v165 = v235;
          sub_1D5615658();
          v176 = *v241;
          (*v241)(v173, v172, v174);
          if (_s16MusicKitInternal0A18SuggestedPivotSeedV2id0aB00A6ItemIDVvg_0() == v238 && v237 == v177)
          {
            break;
          }

          v179 = sub_1D5616168();

          if (v179)
          {
            goto LABEL_28;
          }

          (*v234)(*(v38 + 312), *(v38 + 296));
        }

LABEL_28:
        v239 = *(v38 + 552);
        v198 = *(v38 + 544);
        v199 = *(v38 + 536);
        v200 = *(v38 + 472);
        v201 = *(v38 + 480);
        v202 = *(v38 + 464);
        v203 = *(v38 + 376);
        v204 = *(v38 + 312);
        v205 = *(v38 + 296);
        sub_1D4E50004(*(v38 + 360), &qword_1EC7F2F68, &qword_1D56502C0);
        v206 = *(v200 + 8);
        v207 = OUTLINED_FUNCTION_70();
        v208(v207);
        (*(v198 + 8))(v239, v199);
        v176(v203, v204, v205);
        v197 = 0;
LABEL_29:
        v209 = *(v38 + 368);
        v210 = *(v38 + 328);
        v211 = *(v38 + 336);
        __swift_storeEnumTagSinglePayload(*(v38 + 376), v197, 1, *(v38 + 296));
        v212 = *(v211 + 8);
        v213 = OUTLINED_FUNCTION_159();
        v214(v213);
      }

      sub_1D4F39A1C(*(v38 + 376), *(v38 + 384), &qword_1EC7EA888, &qword_1D563B8C0);
    }

    else
    {
      OUTLINED_FUNCTION_27_53();
      v130 = *(v38 + 384);
      v131 = *(v38 + 296);
      (*(*(v38 + 472) + 8))(*(v38 + 480), *(v38 + 464));
      v132 = *(v46 + 8);
      v133 = OUTLINED_FUNCTION_159();
      v134(v133);
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v135, v136, v137, v131);
    }

    v215 = *(v38 + 448);
    v216 = *(v38 + 456);
    v217 = *(v38 + 408);
    v218 = *(v38 + 416);
    v220 = *(v38 + 384);
    v219 = *(v38 + 392);
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F80, &qword_1D564AE90) + 48);
    OUTLINED_FUNCTION_12_34();
    v233();
    sub_1D4F39A1C(v220, v216 + v39, &qword_1EC7EA888, &qword_1D563B8C0);
    OUTLINED_FUNCTION_159();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_12_34();
LABEL_32:
    sub_1D4E50004(v158, v159, v160);
    goto LABEL_33;
  }

  v88 = *(v38 + 608);
  v89 = *(v38 + 592);
  v91 = *(v38 + 280);
  v90 = *(v38 + 288);
  v92 = *(v38 + 256);
  v93 = *(v38 + 264);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F78, &qword_1D56502F0);
  *(v38 + 632) = v94;
  *(v38 + 704) = *(v94 + 48);
  *(v38 + 640) = *(v93 + 32);
  *(v38 + 648) = (v93 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v95 = OUTLINED_FUNCTION_71();
  v96(v95);
  (*(v93 + 16))(v91, v90, v92);
  v97 = (v88 + *(v89 + 28));
  *(v38 + 656) = *v97;
  v98 = v97[1];
  *(v38 + 664) = v98;
  if (!v98)
  {
    OUTLINED_FUNCTION_27_53();
    v139 = *(v38 + 472);
    v138 = *(v38 + 480);
    v140 = *(v38 + 464);
    (*(*(v38 + 264) + 8))(*(v38 + 288), *(v38 + 256));
    v141 = *(v139 + 8);
    v142 = OUTLINED_FUNCTION_70();
    v143(v142);
    v144 = *(v88 + 8);
    v145 = OUTLINED_FUNCTION_159();
    v146(v145);
    goto LABEL_14;
  }

  v99 = *(v38 + 288);
  v100 = *(v38 + 208);
  v101 = *(v38 + 192);
  sub_1D5614858();
  if (__swift_getEnumTagSinglePayload(v101, 1, v100) == 1)
  {
    v102 = *(v38 + 552);
    v103 = *(v38 + 544);
    v104 = *(v38 + 536);
    v106 = *(v38 + 472);
    v105 = *(v38 + 480);
    v107 = *(v38 + 464);
    v109 = *(v38 + 200);
    v108 = *(v38 + 208);
    v110 = *(v38 + 192);
    (*(*(v38 + 264) + 8))(*(v38 + 288), *(v38 + 256));
    v111 = *(v106 + 8);
    v112 = OUTLINED_FUNCTION_70();
    v113(v112);
    v114 = *(v103 + 8);
    v115 = OUTLINED_FUNCTION_159();
    v116(v115);
    OUTLINED_FUNCTION_102();
    sub_1D4E50004(v117, v118, v119);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v120, v121, v122, v108);
    OUTLINED_FUNCTION_102();
    sub_1D4E50004(v123, v124, v125);
LABEL_14:
    v147 = *(v38 + 248);
    v148 = *(v38 + 136);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v149, v150, v151, v152);
    v153 = *(v38 + 648);
    v154 = *(v38 + 704);
    v155 = *(v38 + 456);
    v39 = *(v38 + 416);
    v156 = *(v38 + 248);
    v157 = *(*(v38 + 632) + 48);
    (*(v38 + 640))(v155, *(v38 + 280), *(v38 + 256));
    sub_1D4F39A1C(v156, v155 + v157, &unk_1EC7F2BE0, &qword_1D56250F0);
    OUTLINED_FUNCTION_159();
    swift_storeEnumTagMultiPayload();
    v158 = v39 + v154;
    v159 = &unk_1EC7F2BE0;
    v160 = &qword_1D56250F0;
    goto LABEL_32;
  }

  v180 = swift_task_alloc();
  *(v38 + 672) = v180;
  *v180 = v38;
  v180[1] = sub_1D52E8A10;
  v182 = *(v38 + 192);
  v181 = *(v38 + 200);
  OUTLINED_FUNCTION_94();

  return sub_1D52EA064(v183, v184, v185);
}

uint64_t sub_1D52E8A10()
{
  OUTLINED_FUNCTION_60();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 672);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  v2[85] = v0;

  if (!v0)
  {
    v8 = v2[26];
    v9 = v2[27];
    v10 = v2[24];
    v11 = *(v9 + 8);
    v2[86] = v11;
    v2[87] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v10, v8);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D52E8B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_22_57();
  OUTLINED_FUNCTION_32_45();
  v40 = *(v38 + 224);
  v39 = *(v38 + 232);
  v41 = *(v38 + 208);
  v42 = *(v38 + 216);
  v43 = *(v38 + 200);
  v44 = *(v38 + 168);
  v45 = *(v38 + 176);
  v46 = *(v38 + 144);
  v47 = *(v38 + 120);
  OUTLINED_FUNCTION_36_42(v43, 0);
  (*(v42 + 32))(v39, v43, v41);
  v123 = *(v42 + 16);
  v123(v40, v39, v41);
  OUTLINED_FUNCTION_163_0();
  sub_1D4E62A60(v48, &unk_1EC7F6A30, &qword_1D561C4C0);
  v137 = v45;
  sub_1D5614F98();
  v49 = *(v44 + 36);
  v132 = (v46 + 16);
  v140 = (v46 + 32);
  v126 = (v46 + 8);
  v129 = (v47 + 8);
  OUTLINED_FUNCTION_14_1();
  sub_1D4E62A60(v50, &unk_1EC7F6A30, &qword_1D561C4C0);
  while (1)
  {
    v51 = *(v38 + 208);
    v52 = *(v38 + 176);
    sub_1D5615648();
    if (*(v137 + v49) == *(v38 + 80))
    {
      sub_1D4E50004(*(v38 + 176), &qword_1EC7ECEA0, &qword_1D5666390);
      v70 = 1;
      goto LABEL_13;
    }

    v146 = *(v38 + 656);
    v149 = *(v38 + 664);
    v53 = *(v38 + 208);
    v54 = *(v38 + 176);
    v55 = *(v38 + 160);
    v143 = *(v38 + 152);
    v56 = *(v38 + 136);
    v57 = sub_1D5615688();
    (*v132)(v55);
    v57(v38 + 16, 0);
    sub_1D5615658();
    v58 = *v140;
    (*v140)(v143, v55, v56);
    if (sub_1D560EC18() == v146 && v149 == v59)
    {
      break;
    }

    v61 = *(v38 + 664);
    v62 = *(v38 + 656);
    v63 = sub_1D5616168();

    if (v63)
    {
      goto LABEL_12;
    }

    v64 = *(v38 + 664);
    v65 = *(v38 + 656);
    v66 = *(v38 + 152);
    v68 = *(v38 + 128);
    v67 = *(v38 + 136);
    v69 = *(v38 + 112);
    sub_1D560EC98();
    LOBYTE(v66) = sub_1D560D788();
    (*v129)(v68, v69);
    if (v66)
    {
      goto LABEL_12;
    }

    (*v126)(*(v38 + 152), *(v38 + 136));
  }

LABEL_12:
  v71 = *(v38 + 240);
  v72 = *(v38 + 152);
  v73 = *(v38 + 136);
  sub_1D4E50004(*(v38 + 176), &qword_1EC7ECEA0, &qword_1D5666390);
  v74 = OUTLINED_FUNCTION_159();
  v58(v74);
  v70 = 0;
LABEL_13:
  v130 = *(v38 + 696);
  v121 = *(v38 + 688);
  v147 = *(v38 + 640);
  v150 = *(v38 + 648);
  v141 = *(v38 + 536);
  v144 = *(v38 + 552);
  v75 = *(v38 + 472);
  v135 = *(v38 + 480);
  v138 = *(v38 + 544);
  v133 = *(v38 + 464);
  v127 = *(v38 + 288);
  v76 = *(v38 + 264);
  v77 = *(v38 + 272);
  v119 = *(v38 + 280);
  v78 = *(v38 + 248);
  v79 = *(v38 + 256);
  v80 = *(v38 + 232);
  v81 = *(v38 + 208);
  v82 = *(v38 + 184);
  __swift_storeEnumTagSinglePayload(*(v38 + 240), v70, 1, *(v38 + 136));
  v83 = OUTLINED_FUNCTION_71();
  sub_1D4F39A1C(v83, v84, v85, v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3B30, &unk_1D5650300);
  sub_1D560D208();
  v123(v82, v80, v81);
  OUTLINED_FUNCTION_36_42(v82, 0);
  sub_1D52E670C(v82, v77);

  sub_1D4E50004(v82, &qword_1EC7EC450, &unk_1D5621060);
  v121(v80, v81);
  v87 = *(v76 + 8);
  v87(v119, v79);
  v87(v127, v79);
  (*(v75 + 8))(v135, v133);
  (*(v138 + 8))(v144, v141);
  v147(v119, v77, v79);
  v88 = *(v38 + 648);
  v89 = *(v38 + 704);
  v90 = *(v38 + 456);
  v91 = *(v38 + 416);
  v92 = *(v38 + 248);
  v93 = *(*(v38 + 632) + 48);
  (*(v38 + 640))(v90, *(v38 + 280), *(v38 + 256));
  sub_1D4F39A1C(v92, v90 + v93, &unk_1EC7F2BE0, &qword_1D56250F0);
  OUTLINED_FUNCTION_159();
  swift_storeEnumTagMultiPayload();
  sub_1D4E50004(v91 + v89, &unk_1EC7F2BE0, &qword_1D56250F0);
  OUTLINED_FUNCTION_14_69();
  v107 = v95;
  v108 = v94;
  v109 = *(v38 + 416);
  v110 = *(v38 + 408);
  v111 = *(v38 + 384);
  v112 = *(v38 + 376);
  v113 = *(v38 + 368);
  v114 = *(v38 + 360);
  v115 = *(v38 + 344);
  v116 = *(v38 + 320);
  v117 = *(v38 + 312);
  v118 = *(v38 + 288);
  v120 = *(v38 + 280);
  v122 = *(v38 + 272);
  v124 = *(v38 + 248);
  v125 = *(v38 + 240);
  v128 = *(v38 + 232);
  v131 = *(v38 + 224);
  v134 = *(v38 + 200);
  v136 = *(v38 + 192);
  v139 = *(v38 + 184);
  v142 = *(v38 + 176);
  v145 = *(v38 + 160);
  v148 = *(v38 + 152);
  v151 = *(v38 + 128);
  v96 = *(v38 + 96);
  OUTLINED_FUNCTION_5_100();
  sub_1D52EA00C(v75 + 8, v97);
  OUTLINED_FUNCTION_0_174();
  sub_1D4E586C0();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_94();

  return v99(v98, v99, v100, v101, v102, v103, v104, v105, a9, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v120, v122, v124, v125, v128, v131, v134, v136, v139, v142, v145, v148, v151, a35, a36, a37, a38);
}

uint64_t sub_1D52E9200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_22_57();
  OUTLINED_FUNCTION_32_45();
  v39 = v38[76];
  (*(v38[68] + 8))(v38[69], v38[67]);
  OUTLINED_FUNCTION_0_174();
  sub_1D4E586C0();
  OUTLINED_FUNCTION_8_94(v38[78]);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_94();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_1D52E9398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_22_57();
  OUTLINED_FUNCTION_32_45();
  v39 = *(v38 + 544);
  v56 = *(v38 + 536);
  v57 = *(v38 + 552);
  v41 = *(v38 + 472);
  v40 = *(v38 + 480);
  v42 = *(v38 + 464);
  v61 = *(v38 + 416);
  v62 = *(v38 + 704);
  v43 = *(v38 + 288);
  v44 = *(v38 + 256);
  v45 = *(v38 + 216);
  v59 = *(v38 + 208);
  v60 = *(v38 + 608);
  v58 = *(v38 + 192);
  v46 = *(*(v38 + 264) + 8);
  v46(*(v38 + 280), v44);
  v46(v43, v44);
  (*(v41 + 8))(v40, v42);
  (*(v39 + 8))(v57, v56);
  OUTLINED_FUNCTION_0_174();
  sub_1D4E586C0();
  (*(v45 + 8))(v58, v59);
  sub_1D4E50004(v61 + v62, &unk_1EC7F2BE0, &qword_1D56250F0);
  OUTLINED_FUNCTION_8_94(*(v38 + 680));

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_94();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, v56, v57, v58, v59, v60, v61, v62, a35, a36, a37, a38);
}

unint64_t sub_1D52E95D4()
{
  result = qword_1EC7F3B28;
  if (!qword_1EC7F3B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3B28);
  }

  return result;
}

uint64_t sub_1D52E9628(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v5 = v4(v3);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);
  return a2;
}

uint64_t sub_1D52E9680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_1D56126A8();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v40 = &v40 - v8;
  v44 = sub_1D5610F88();
  v9 = *(v44 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v45 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D560D9A8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D5610A18();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = _s9ParsedURLVMa();
  v23 = *(v22 + 20);
  v47 = a1;
  v24 = *(a1 + v23);
  if (v24 == 7)
  {
    if (qword_1EC7E9678 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v17, qword_1EC87C658);
    (*(v18 + 16))(v21, v25, v17);
    v26 = MEMORY[0x1E69760B8];
  }

  else
  {
    sub_1D5610A08();
    v26 = MEMORY[0x1E69760C0];
  }

  v27 = (v47 + *(v22 + 24));
  v28 = *v27;
  v29 = v27[1];

  sub_1D554FC90(v24, v16);
  sub_1D560D8B8();
  (*(v13 + 8))(v16, v12);
  (*(v9 + 104))(v45, *v26, v44);
  type metadata accessor for MusicShareableItem();
  sub_1D52EB5B0(&qword_1EC7F3B58, type metadata accessor for MusicShareableItem);
  sub_1D52EB5B0(&qword_1EC7F3B60, type metadata accessor for MusicShareableItem);
  sub_1D560E258();
  sub_1D555A178(&unk_1F50A42C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3B18, &qword_1D56502E0);
  sub_1D560E2D8();
  if (v24 == 6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1D561EAC0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECEA8, &qword_1D563A170);
    *(v37 + 32) = sub_1D560D208();
    v31 = v40;
    sub_1D5610038();
    v38 = sub_1D5610088();
    __swift_storeEnumTagSinglePayload(v31, 0, 1, v38);
    v33 = sub_1D560E288();
    v35 = v41;
    v34 = v42;
    v36 = v43;
    (*(v42 + 104))(v41, *MEMORY[0x1E6976580], v43);
    sub_1D5614898();
    goto LABEL_10;
  }

  if (!v24)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1D561EAC0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3B68, &qword_1D5650400);
    *(v30 + 32) = sub_1D560D1A8();
    v31 = v40;
    sub_1D560FFB8();
    v32 = sub_1D5610088();
    __swift_storeEnumTagSinglePayload(v31, 0, 1, v32);
    v33 = sub_1D560E288();
    v35 = v41;
    v34 = v42;
    v36 = v43;
    (*(v42 + 104))(v41, *MEMORY[0x1E6976580], v43);
    sub_1D5613AF8();
LABEL_10:
    sub_1D5615238();

    (*(v34 + 8))(v35, v36);
    sub_1D4E50004(v31, &qword_1EC7EA358, &unk_1D561DF50);
    v33(v48, 0);
  }

  return sub_1D4E586C0();
}

uint64_t sub_1D52E9D00(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v3 = sub_1D560D9A8();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v4);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  v14 = MEMORY[0x1E69E7CC0];
  v27 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF10, &qword_1D561DCE0);
  v26 = sub_1D52EB280();
  v25 = &v26;
  v15 = sub_1D4F25E78(sub_1D52EB590, v24, a2);

  if (v15)
  {
    v16 = _s9ParsedURLVMa();
    sub_1D554FC90(*(v23 + *(v16 + 20)), v13);
    v17 = sub_1D560D8F8();
    (*(v6 + 8))(v13, v3);
    if (dynamic_cast_existential_1_conditional(v17))
    {
      sub_1D52EB280();
      MEMORY[0x1DA6EAF30]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D56151B8();
      }

      sub_1D56151F8();
      v14 = v27;
    }
  }

  v26 = sub_1D4F84C9C();
  MEMORY[0x1EEE9AC00](v26);
  *(&v22 - 2) = &v26;
  v18 = sub_1D4F25E78(sub_1D52EB5F8, (&v22 - 4), a2);

  if (v18)
  {
    v19 = _s9ParsedURLVMa();
    sub_1D554FC90(*(v23 + *(v19 + 20)), v11);
    v20 = sub_1D560D8F8();
    (*(v6 + 8))(v11, v3);
    if (dynamic_cast_existential_1_conditional(v20))
    {
      sub_1D4F84C9C();
      MEMORY[0x1DA6EAF30]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D56151B8();
      }

      sub_1D56151F8();
      return v27;
    }
  }

  return v14;
}

uint64_t sub_1D52EA00C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v5 = v4(v3);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);
  return a2;
}

uint64_t sub_1D52EA064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC450, &unk_1D5621060) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v6 = sub_1D560D838();
  v4[12] = v6;
  v7 = *(v6 - 8);
  v4[13] = v7;
  v8 = *(v7 + 64) + 15;
  v4[14] = swift_task_alloc();
  v9 = sub_1D5614828();
  v4[15] = v9;
  v10 = *(v9 - 8);
  v4[16] = v10;
  v11 = *(v10 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECEA0, &qword_1D5666390);
  v4[19] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  v4[25] = v15;
  v16 = *(v15 - 8);
  v4[26] = v16;
  v17 = *(v16 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D52EA2E0, 0, 0);
}

uint64_t sub_1D52EA2E0()
{
  if (!v0[9])
  {
    (*(v0[26] + 16))(v0[7], v0[10], v0[25]);
    goto LABEL_25;
  }

  v2 = v0[24];
  v3 = v0[29];
  v4 = v0[25];
  v5 = v0[26];
  v6 = v0[15];
  v7 = v0[10];
  v8 = *(v5 + 16);
  v0[30] = v8;
  v0[31] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v7, v4);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v6);
  v79 = v0 + 24;
  do
  {
    v13 = v0[23];
    v12 = v0[24];
    v14 = v0[15];
    OUTLINED_FUNCTION_102();
    sub_1D4F39AB0(v15, v16, v17, &qword_1D56250F0);
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
    {
      sub_1D4E50004(*v79, &unk_1EC7F2BE0, &qword_1D56250F0);
      v71 = v0 + 23;
LABEL_24:
      v72 = OUTLINED_FUNCTION_42_36(v71);
      sub_1D4E50004(v72, &unk_1EC7F2BE0, &qword_1D56250F0);
      v73 = *(v1 + 32);
      v74 = OUTLINED_FUNCTION_16_75();
      v75(v74);
LABEL_25:
      OUTLINED_FUNCTION_20_65();

      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_341();

      __asm { BRAA            X1, X16 }
    }

    v18 = v0[29];
    v19 = v0[25];
    sub_1D4E50004(v0[23], &unk_1EC7F2BE0, &qword_1D56250F0);
    if ((sub_1D560DA08() & 1) == 0)
    {
      v71 = v0 + 24;
      goto LABEL_24;
    }

    v20 = v0[31];
    v21 = v0[19];
    v22 = v0[20];
    (v0[30])(v0[28], v0[29], v0[25]);
    OUTLINED_FUNCTION_163_0();
    sub_1D4E62A60(&qword_1EDD53B90, &unk_1EC7F6A30, &qword_1D561C4C0);
    v80 = v22;
    sub_1D5614F98();
    v23 = *(v21 + 36);
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_12_34();
    sub_1D4E62A60(v24, v25, v26);
    while (1)
    {
      v27 = v0[25];
      v28 = v0[20];
      sub_1D5615648();
      if (*(v80 + v23) == v0[6])
      {
        v52 = *v79;
        sub_1D4E50004(v0[20], &qword_1EC7ECEA0, &qword_1D5666390);
        sub_1D4E50004(v52, &unk_1EC7F2BE0, &qword_1D56250F0);
        v53 = 1;
        goto LABEL_17;
      }

      v29 = v0[25];
      v30 = v0[18];
      v31 = v0[15];
      v32 = v0[16];
      v83 = v0[9];
      v81 = v0[17];
      v82 = v0[8];
      v33 = sub_1D5615688();
      (*(v32 + 16))(v30);
      v33(v0 + 2, 0);
      sub_1D5615658();
      v34 = *(v32 + 32);
      v34(v81, v30, v31);
      v35 = sub_1D560EC18();
      v37 = v36;
      if (v35 == v82 && v83 == v36)
      {
        break;
      }

      v39 = v0[8];
      v40 = v0[9];
      v41 = sub_1D5616168();

      if (v41)
      {
        goto LABEL_16;
      }

      v42 = v0[17];
      v44 = v0[14];
      v43 = v0[15];
      v45 = v0[12];
      v46 = v0[13];
      v48 = v0[8];
      v47 = v0[9];
      sub_1D560EC98();
      v37 = sub_1D560D788();
      v49 = *(v46 + 8);
      v50 = OUTLINED_FUNCTION_70();
      v51(v50);
      if (v37)
      {
        goto LABEL_16;
      }

      (*(v0[16] + 8))(v0[17], v0[15]);
    }

LABEL_16:
    v54 = OUTLINED_FUNCTION_35_47();
    sub_1D4E50004(v54, &qword_1EC7ECEA0, &qword_1D5666390);
    sub_1D4E50004(v37, &unk_1EC7F2BE0, &qword_1D56250F0);
    v55 = OUTLINED_FUNCTION_70();
    (v34)(v55);
    v53 = 0;
LABEL_17:
    v56 = v0[24];
    v1 = v0[21];
    v57 = v0[15];
    OUTLINED_FUNCTION_36_42(v0[22], v53);
    v58 = OUTLINED_FUNCTION_16_75();
    sub_1D4F39A1C(v58, v59, v60, &qword_1D56250F0);
    sub_1D4F39AB0(v56, v1, &unk_1EC7F2BE0, &qword_1D56250F0);
    LODWORD(v56) = OUTLINED_FUNCTION_37_34();
    sub_1D4E50004(v1, &unk_1EC7F2BE0, &qword_1D56250F0);
  }

  while (v56 != 1);
  v61 = *(MEMORY[0x1E6974FE8] + 4);
  v62 = swift_task_alloc();
  v0[32] = v62;
  OUTLINED_FUNCTION_13_76();
  sub_1D52EB5B0(v63, v64);
  *v62 = v0;
  OUTLINED_FUNCTION_10_87();
  OUTLINED_FUNCTION_341();

  return MEMORY[0x1EEDCE948](v65, v66, v67, v68, v69);
}

uint64_t sub_1D52EA834()
{
  OUTLINED_FUNCTION_60();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v6 = *(v5 + 256);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v9 + 264) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D52EA938()
{
  v2 = *(v0 + 200);
  v3 = *(v0 + 88);
  if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 120);
    v5 = *(v0 + 216);
    sub_1D560D9F8();
    OUTLINED_FUNCTION_10(v3);
    if (!v37)
    {
      sub_1D4E50004(*(v0 + 88), &qword_1EC7EC450, &unk_1D5621060);
    }
  }

  else
  {
    (*(*(v0 + 208) + 32))(*(v0 + 216), v3, v2);
  }

  v6 = *(v0 + 232);
  v7 = *(v0 + 208);
  v8 = *(v0 + 216);
  v9 = *(v0 + 200);
  v10 = *(v0 + 120);
  sub_1D560DA48();
  (*(v7 + 8))(v8, v9);
  v78 = (v0 + 192);
  do
  {
    v12 = *(v0 + 184);
    v11 = *(v0 + 192);
    v13 = *(v0 + 120);
    OUTLINED_FUNCTION_102();
    sub_1D4F39AB0(v14, v15, v16, &qword_1D56250F0);
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
    {
      sub_1D4E50004(*v78, &unk_1EC7F2BE0, &qword_1D56250F0);
      v70 = (v0 + 184);
      goto LABEL_26;
    }

    v17 = *(v0 + 232);
    v18 = *(v0 + 200);
    sub_1D4E50004(*(v0 + 184), &unk_1EC7F2BE0, &qword_1D56250F0);
    if ((sub_1D560DA08() & 1) == 0)
    {
      v70 = (v0 + 192);
LABEL_26:
      v71 = OUTLINED_FUNCTION_42_36(v70);
      sub_1D4E50004(v71, &unk_1EC7F2BE0, &qword_1D56250F0);
      v72 = *(v1 + 32);
      v73 = OUTLINED_FUNCTION_16_75();
      v74(v73);
      OUTLINED_FUNCTION_20_65();

      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_341();

      __asm { BRAA            X1, X16 }
    }

    v19 = *(v0 + 248);
    v20 = *(v0 + 152);
    v21 = *(v0 + 160);
    (*(v0 + 240))(*(v0 + 224), *(v0 + 232), *(v0 + 200));
    OUTLINED_FUNCTION_163_0();
    sub_1D4E62A60(&qword_1EDD53B90, &unk_1EC7F6A30, &qword_1D561C4C0);
    v79 = v21;
    sub_1D5614F98();
    v22 = *(v20 + 36);
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_12_34();
    sub_1D4E62A60(v23, v24, v25);
    while (1)
    {
      v26 = *(v0 + 200);
      v27 = *(v0 + 160);
      sub_1D5615648();
      if (*(v79 + v22) == *(v0 + 48))
      {
        v51 = *v78;
        sub_1D4E50004(*(v0 + 160), &qword_1EC7ECEA0, &qword_1D5666390);
        sub_1D4E50004(v51, &unk_1EC7F2BE0, &qword_1D56250F0);
        v52 = 1;
        goto LABEL_20;
      }

      v28 = *(v0 + 200);
      v29 = *(v0 + 144);
      v30 = *(v0 + 120);
      v31 = *(v0 + 128);
      v82 = *(v0 + 72);
      v80 = *(v0 + 136);
      v81 = *(v0 + 64);
      v32 = sub_1D5615688();
      (*(v31 + 16))(v29);
      v32(v0 + 16, 0);
      sub_1D5615658();
      v33 = *(v31 + 32);
      v33(v80, v29, v30);
      v34 = sub_1D560EC18();
      v36 = v35;
      v37 = v34 == v81 && v82 == v35;
      if (v37)
      {
        break;
      }

      v38 = *(v0 + 64);
      v39 = *(v0 + 72);
      v40 = sub_1D5616168();

      if (v40)
      {
        goto LABEL_19;
      }

      v41 = *(v0 + 136);
      v43 = *(v0 + 112);
      v42 = *(v0 + 120);
      v44 = *(v0 + 96);
      v45 = *(v0 + 104);
      v47 = *(v0 + 64);
      v46 = *(v0 + 72);
      sub_1D560EC98();
      v36 = sub_1D560D788();
      v48 = *(v45 + 8);
      v49 = OUTLINED_FUNCTION_70();
      v50(v49);
      if (v36)
      {
        goto LABEL_19;
      }

      (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
    }

LABEL_19:
    v53 = OUTLINED_FUNCTION_35_47();
    sub_1D4E50004(v53, &qword_1EC7ECEA0, &qword_1D5666390);
    sub_1D4E50004(v36, &unk_1EC7F2BE0, &qword_1D56250F0);
    v54 = OUTLINED_FUNCTION_70();
    (v33)(v54);
    v52 = 0;
LABEL_20:
    v55 = *(v0 + 192);
    v1 = *(v0 + 168);
    v56 = *(v0 + 120);
    OUTLINED_FUNCTION_36_42(*(v0 + 176), v52);
    v57 = OUTLINED_FUNCTION_16_75();
    sub_1D4F39A1C(v57, v58, v59, &qword_1D56250F0);
    sub_1D4F39AB0(v55, v1, &unk_1EC7F2BE0, &qword_1D56250F0);
    LODWORD(v55) = OUTLINED_FUNCTION_37_34();
    sub_1D4E50004(v1, &unk_1EC7F2BE0, &qword_1D56250F0);
  }

  while (v55 != 1);
  v60 = *(MEMORY[0x1E6974FE8] + 4);
  v61 = swift_task_alloc();
  *(v0 + 256) = v61;
  OUTLINED_FUNCTION_13_76();
  sub_1D52EB5B0(v62, v63);
  *v61 = v0;
  OUTLINED_FUNCTION_10_87();
  OUTLINED_FUNCTION_341();

  return MEMORY[0x1EEDCE948](v64, v65, v66, v67, v68);
}

uint64_t sub_1D52EAEE8()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  v5 = v0[25];
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v12 = v0[20];
  v13 = v0[18];
  v14 = v0[17];
  v15 = v0[14];
  v16 = v0[11];
  sub_1D4E50004(v0[24], &unk_1EC7F2BE0, &qword_1D56250F0);
  (*(v3 + 8))(v1, v5);

  OUTLINED_FUNCTION_55();
  v10 = v0[33];

  return v9();
}

void static MusicShareableItemRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1D560BFB8())
  {
    v4 = type metadata accessor for MusicShareableItemRequest();
    v5 = v4[5];
    if (_s16MusicKitInternal0A18UserProfileRequestV2eeoiySbAC_ACtFZ_0())
    {
      v6 = v4[6];
      v7 = *(a1 + v6);
      v8 = *(a2 + v6);
      if (v7 == 4)
      {
        if (v8 != 4)
        {
          return;
        }
      }

      else if (v7 != v8)
      {
        return;
      }

      v9 = v4[7];
      v10 = *(a1 + v9);
      v11 = *(a2 + v9);

      sub_1D4EFBD24();
    }
  }
}

void MusicShareableItemRequest.hash(into:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_64_1();
  sub_1D560C0A8();
  sub_1D52EB5B0(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0]);
  sub_1D5614CB8();
  v2 = type metadata accessor for MusicShareableItemRequest();
  v3 = v2[5];
  sub_1D560CD48();
  sub_1D52EB5B0(&qword_1EC7EA848, MEMORY[0x1E6974D20]);
  sub_1D5614CB8();
  v4 = *(v1 + v2[6]);
  sub_1D56162F8();
  if (v4 != 4)
  {
    MEMORY[0x1DA6EC0D0](v4);
  }

  v5 = *(v1 + v2[7]);

  sub_1D4F09F48();
}

uint64_t MusicShareableItemRequest.hashValue.getter()
{
  sub_1D56162D8();
  MusicShareableItemRequest.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D52EB244()
{
  sub_1D56162D8();
  MusicShareableItemRequest.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D52EB280()
{
  type metadata accessor for MusicShareableItem();
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D52EB5B0(&qword_1EDD52DE8, MEMORY[0x1E6976F68]);
  v0 = sub_1D560D138();

  return v0;
}

void sub_1D52EB3F8()
{
  sub_1D560C0A8();
  if (v0 <= 0x3F)
  {
    sub_1D560CD48();
    if (v1 <= 0x3F)
    {
      sub_1D4EF1C68();
      if (v2 <= 0x3F)
      {
        sub_1D52EB4AC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D52EB4AC()
{
  if (!qword_1EC7F3B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EAF10, &qword_1D561DCE0);
    v0 = sub_1D56152D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7F3B50);
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_25_0(a1[3]);
  if ((*(v2 + 82) & 2) != 0)
  {
    *v1 = swift_allocBox();
    return v3;
  }

  return v1;
}

uint64_t sub_1D52EB56C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1D4F26594() & 1;
}

uint64_t sub_1D52EB5B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_20_65()
{
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];
  v6 = v0[23];
  v5 = v0[24];
  v8 = v0[21];
  v7 = v0[22];
  v9 = v0[20];
  v11 = v0[17];
  v10 = v0[18];
  v12 = v0[14];
  v14 = v0[11];
}

uint64_t OUTLINED_FUNCTION_37_34()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_42_36@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v3 = v1[29];
  v4 = v1[25];
  v5 = v1[26];
  v6 = v1[7];
  return result;
}

uint64_t sub_1D52EB690()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0148, &unk_1D5636140);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v10 - v3;
  v5 = type metadata accessor for InternalMusicPlayer.Queue.Entry();
  v6 = OUTLINED_FUNCTION_3_133(v5);
  sub_1D4E69970(v0 + *(v6 + 76), v4, &qword_1EC7F0148, &unk_1D5636140);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F3B80, qword_1D5636170);
  if (__swift_getEnumTagSinglePayload(v4, 1, v7) == 1)
  {
    sub_1D4E50004(v4, &qword_1EC7F0148, &unk_1D5636140);
    return 0;
  }

  else
  {
    sub_1D5612858();
    v8 = v10[1];
    (*(*(v7 - 8) + 8))(v4, v7);
  }

  return v8;
}

uint64_t InternalMusicPlayer.Queue.Entry.item.getter()
{
  v0 = OUTLINED_FUNCTION_8_95();
  v1 = OUTLINED_FUNCTION_3_133(v0);
  return OUTLINED_FUNCTION_7_100(&qword_1EC7F0140, &qword_1D5636130, *(v1 + 20));
}

uint64_t InternalMusicPlayer.Queue.Entry.container.getter()
{
  v0 = OUTLINED_FUNCTION_8_95();
  v1 = OUTLINED_FUNCTION_3_133(v0);
  return OUTLINED_FUNCTION_7_100(&unk_1EC7F1280, &qword_1D5636138, *(v1 + 24));
}

uint64_t InternalMusicPlayer.Queue.Entry.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t InternalMusicPlayer.Queue.Entry.title.getter()
{
  v1 = type metadata accessor for InternalMusicPlayer.Queue.Entry();
  v2 = (v0 + *(OUTLINED_FUNCTION_1_134(v1) + 44));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  return OUTLINED_FUNCTION_71();
}

uint64_t InternalMusicPlayer.Queue.Entry.subtitle.getter()
{
  v1 = type metadata accessor for InternalMusicPlayer.Queue.Entry();
  v2 = (v0 + *(OUTLINED_FUNCTION_1_134(v1) + 48));
  v3 = *v2;
  v4 = v2[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t InternalMusicPlayer.Queue.Entry.artwork.getter()
{
  v0 = OUTLINED_FUNCTION_8_95();
  v1 = OUTLINED_FUNCTION_3_133(v0);
  return OUTLINED_FUNCTION_7_100(&qword_1EC7E9CA0, &unk_1D561A0C0, *(v1 + 40));
}

uint64_t sub_1D52EB9A4()
{
  v1 = type metadata accessor for InternalMusicPlayer.Queue.Entry();
  v2 = (v0 + *(OUTLINED_FUNCTION_1_134(v1) + 28));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t InternalMusicPlayer.Queue.Entry.duration.getter()
{
  v1 = type metadata accessor for InternalMusicPlayer.Queue.Entry();
  v2 = (v0 + *(OUTLINED_FUNCTION_1_134(v1) + 36));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t InternalMusicPlayer.Queue.Entry.transientItem.getter()
{
  v0 = OUTLINED_FUNCTION_8_95();
  v1 = OUTLINED_FUNCTION_3_133(v0);
  return OUTLINED_FUNCTION_7_100(&unk_1EC7F65C0, &qword_1D562E6B0, *(v1 + 60));
}

BOOL InternalMusicPlayer.Queue.Entry.isTransient.getter()
{
  v1 = v0 + *(type metadata accessor for InternalMusicPlayer.Queue.Entry() + 20);
  v2 = _s21EntryPropertyProviderVMa();
  sub_1D4E69970(v1 + *(v2 + 60), v5, &unk_1EC7F65C0, &qword_1D562E6B0);
  v3 = v6 != 0;
  sub_1D4E50004(v5, &unk_1EC7F65C0, &qword_1D562E6B0);
  return v3;
}

uint64_t static InternalMusicPlayer.Queue.Entry.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for InternalMusicPlayer.Queue.Entry() + 20);

  return sub_1D5104E50((a1 + v5), (a2 + v5));
}

uint64_t InternalMusicPlayer.Queue.Entry.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = v0 + *(type metadata accessor for InternalMusicPlayer.Queue.Entry() + 20);
  return sub_1D5105370();
}

uint64_t InternalMusicPlayer.Queue.Entry.hashValue.getter()
{
  sub_1D56162D8();
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = v0 + *(type metadata accessor for InternalMusicPlayer.Queue.Entry() + 20);
  sub_1D5105370();
  return sub_1D5616328();
}

uint64_t sub_1D52EBC30(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  v4 = *v2;
  v5 = v2[1];
  sub_1D5614E28();
  v6 = v2 + *(a2 + 20);
  sub_1D5105370();
  return sub_1D5616328();
}

uint64_t sub_1D52EBC84@<X0>(uint64_t *a1@<X8>)
{
  result = InternalMusicPlayer.Queue.Entry.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t InternalMusicPlayer.Queue.Entry.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1280, &qword_1D5636138);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v33 - v3;
  v34 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
  v5 = OUTLINED_FUNCTION_14(v34);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0140, &qword_1D5636130);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Item();
  v14 = OUTLINED_FUNCTION_14(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0xD000000000000020;
  v37 = 0x80000001D568A530;
  v35[0] = 0x22203A6469;
  v35[1] = 0xE500000000000000;
  MEMORY[0x1DA6EAC70](*v0, v0[1]);
  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  OUTLINED_FUNCTION_4_99();

  v19 = v0 + *(type metadata accessor for InternalMusicPlayer.Queue.Entry() + 20);
  v20 = _s21EntryPropertyProviderVMa();
  sub_1D4E69970(&v19[v20[5]], v12, &qword_1EC7F0140, &qword_1D5636130);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1D4E50004(v12, &qword_1EC7F0140, &qword_1D5636130);
    strcpy(v35, ", title: ");
    BYTE3(v35[1]) = 0;
    HIDWORD(v35[1]) = -369098752;
    v21 = &v19[v20[11]];
    v22 = *(v21 + 1);
    if (v22)
    {
      v23 = *v21;
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = *(v21 + 1);
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    MEMORY[0x1DA6EAC70](v23, v24);

    MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
    OUTLINED_FUNCTION_4_99();

    v25 = &v19[v20[12]];
    v26 = *(v25 + 1);
    if (v26)
    {
      v27 = *v25;
      v35[0] = 0;
      v35[1] = 0xE000000000000000;
      sub_1D5615B68();

      strcpy(v35, ", subtitle: ");
      HIWORD(v35[1]) = -4864;
      MEMORY[0x1DA6EAC70](v27, v26);
      MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
      OUTLINED_FUNCTION_4_99();
    }
  }

  else
  {
    sub_1D52EC1E4(v12, v18, type metadata accessor for InternalMusicPlayer.Queue.Entry.Item);
    strcpy(v35, ", item = ");
    WORD1(v35[1]) = 0;
    HIDWORD(v35[1]) = -385875968;
    sub_1D5007EC4();
    MEMORY[0x1DA6EAC70]();

    OUTLINED_FUNCTION_4_99();

    sub_1D4E69970(&v19[v20[6]], v4, &unk_1EC7F1280, &qword_1D5636138);
    if (__swift_getEnumTagSinglePayload(v4, 1, v34) == 1)
    {
      OUTLINED_FUNCTION_2_129();
      sub_1D4E50004(v4, &unk_1EC7F1280, &qword_1D5636138);
    }

    else
    {
      v28 = v4;
      v29 = v33;
      sub_1D52EC1E4(v28, v33, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);
      v35[0] = 0;
      v35[1] = 0xE000000000000000;
      sub_1D5615B68();

      strcpy(v35, ", container = ");
      HIBYTE(v35[1]) = -18;
      sub_1D522F1B8();
      MEMORY[0x1DA6EAC70]();

      OUTLINED_FUNCTION_4_99();

      sub_1D52EC240(v29, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);
      OUTLINED_FUNCTION_2_129();
    }
  }

  v30 = &v19[v20[7]];
  if ((v30[8] & 1) == 0)
  {
    v31 = *v30;
    v35[0] = 0;
    v35[1] = 0xE000000000000000;
    MEMORY[0x1DA6EAC70](0x547472617473202CLL, 0xED0000203A656D69);
    OUTLINED_FUNCTION_6_100();
    MEMORY[0x1DA6EAC70](v35[0], v35[1]);

    v35[0] = 0;
    v35[1] = 0xE000000000000000;
    MEMORY[0x1DA6EAC70](0x6D6954646E65202CLL, 0xEB00000000203A65);
    OUTLINED_FUNCTION_6_100();
    MEMORY[0x1DA6EAC70](v35[0], v35[1]);
  }

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v36;
}

uint64_t sub_1D52EC1E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

uint64_t sub_1D52EC240(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1D52EC29C()
{
  result = qword_1EC7F3B70;
  if (!qword_1EC7F3B70)
  {
    type metadata accessor for InternalMusicPlayer.Queue.Entry();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3B70);
  }

  return result;
}

id Playlist.Collaborator.Status.init(legacyModelRawValue:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [objc_opt_self() collaboratorStatusForRawValue_];
  v4 = 0x1030204uLL >> (8 * result);
  if (result >= 5)
  {
    LOBYTE(v4) = 2;
  }

  *a2 = v4;
  return result;
}

Swift::Int __swiftcall Playlist.Collaborator.Status.convertToLegacyModelRawValue()()
{
  v1 = qword_1D56507D8[*v0];
  v2 = objc_opt_self();

  return [v2 rawValueForCollaboratorStatus_];
}

unint64_t Playlist.Collaborator.LegacyModelPlaylistAuthorPropertyKey.rawValue.getter()
{
  result = 0xD00000000000002ELL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000021;
      break;
    case 2:
      result = 0xD000000000000029;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D52EC44C()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EC7F3B90);
  v1 = __swift_project_value_buffer(v0, qword_1EC7F3B90);
  v2 = *MEMORY[0x1E6976800];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static Playlist.Collaborator.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7E9410 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  v3 = __swift_project_value_buffer(v2, qword_1EC7F3B90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Playlist.Collaborator.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v116 = a1;
  v108 = a4;
  v115 = sub_1D5612B88();
  v6 = OUTLINED_FUNCTION_4(v115);
  v121 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v107 = v11 - v10;
  v12 = sub_1D5610088();
  v13 = OUTLINED_FUNCTION_4(v12);
  v126 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v123 = v18 - v17;
  v114 = sub_1D560D838();
  v19 = OUTLINED_FUNCTION_4(v114);
  v113 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v122 = (v24 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F78, &unk_1D561B970);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v127 = &v105 - v27;
  v111 = type metadata accessor for PlaylistCollaboratorPropertyProvider();
  v28 = OUTLINED_FUNCTION_14(v111);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v119 = &v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v125 = &v105 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v38 = &v105 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v105 - v39;
  v106 = sub_1D5612478();
  v41 = OUTLINED_FUNCTION_4(v106);
  v105 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5();
  v47 = v46 - v45;

  v109 = a2;
  sub_1D560F7E8();
  v124 = sub_1D52ED3FC();
  v120 = sub_1D5614C68();

  sub_1D560FF18();
  __swift_storeEnumTagSinglePayload(v40, 0, 1, v12);
  sub_1D560FF18();
  __swift_storeEnumTagSinglePayload(v38, 0, 1, v12);
  v112 = v47;
  v48 = v116;
  sub_1D560D4D8();
  sub_1D4E50004(v38, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E50004(v40, &qword_1EC7EA358, &unk_1D561DF50);
  v110 = a3;
  sub_1D4EC76A8(a3, v128);
  if (!v129)
  {
    sub_1D4E50004(v128, &qword_1EC7EEC40, &unk_1D561C070);
    v130 = 0u;
    v131 = 0u;
    v132 = 0;
LABEL_8:
    v49 = v111;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3A8, &unk_1D561C1E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v132 = 0;
    v130 = 0u;
    v131 = 0u;
    goto LABEL_8;
  }

  v49 = v111;
  if (!*(&v131 + 1))
  {
LABEL_9:
    sub_1D4E50004(&v130, &qword_1EC7EA368, &unk_1D5629620);
    goto LABEL_10;
  }

  sub_1D4E48324(&v130, &v133);
  __swift_project_boxed_opaque_existential_1(&v133, v134);
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  v50 = v127;
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v50, 0, 1, v49);
    v51 = v119;
    sub_1D4EC568C(v50, v119);
    v52 = v125;
    sub_1D52EE3EC(v51, v125, type metadata accessor for PlaylistCollaboratorPropertyProvider);
    v53 = v51 + v49[14];
    v54 = v122;
    sub_1D560D718();
    (*(v113 + 40))(v52 + v49[14], v54, v114);
    v55 = v123;
    sub_1D5612468();
    (*(v126 + 40))(v52 + v49[15], v55, v12);
    v56 = sub_1D5612458();
    v58 = v57;
    sub_1D52EE44C(v51, type metadata accessor for PlaylistCollaboratorPropertyProvider);
    v59 = (v52 + v49[16]);
    v60 = v59[1];

    *v59 = v56;
    v59[1] = v58;
    __swift_destroy_boxed_opaque_existential_1(&v133);
    goto LABEL_15;
  }

  __swift_storeEnumTagSinglePayload(v50, 1, 1, v49);
  sub_1D4E50004(v50, &qword_1EC7E9F78, &unk_1D561B970);
  __swift_destroy_boxed_opaque_existential_1(&v133);
LABEL_10:
  v61 = sub_1D56140F8();
  v62 = v125;
  __swift_storeEnumTagSinglePayload(v125, 1, 1, v61);
  v63 = v49[11];
  v64 = sub_1D560C0A8();
  __swift_storeEnumTagSinglePayload(v62 + v63, 1, 1, v64);
  (*(v113 + 16))(v62 + v49[14], v48, v114);
  v65 = v62 + v49[15];
  sub_1D5612468();
  v66 = sub_1D5612458();
  v68 = v67;
  sub_1D5614A88();
  v127 = OUTLINED_FUNCTION_3_134();
  v69 = OUTLINED_FUNCTION_3_134();
  v70 = OUTLINED_FUNCTION_3_134();
  v71 = OUTLINED_FUNCTION_3_134();
  v72 = (v62 + v49[5]);
  *v72 = 0;
  v72[1] = 0;
  *(v62 + v49[6]) = 2;
  *(v62 + v49[7]) = 2;
  *(v62 + v49[8]) = 2;
  *(v62 + v49[9]) = 2;
  v73 = (v62 + v49[10]);
  *v73 = 0;
  v73[1] = 0;
  *(v62 + v49[12]) = 2;
  if (qword_1EC7E8960 != -1)
  {
    swift_once();
  }

  v74 = qword_1EC87BE40;
  if (qword_1EC87BE40 >> 62)
  {
    sub_1D560CDE8();

    v104 = sub_1D5615E18();

    v74 = v104;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v75 = v125;
  *(v125 + v49[13]) = v74;
  v76 = (v75 + v49[16]);
  *v76 = v66;
  v76[1] = v68;
  *(v75 + v49[17]) = v127;
  *(v75 + v49[18]) = v69;
  *(v75 + v49[19]) = v70;
  *(v75 + v49[20]) = v71;
LABEL_15:
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_175();
  v77 = type metadata accessor for SocialProfile();
  LOBYTE(v130) = 0;
  LODWORD(v127) = *MEMORY[0x1E6976668];
  v78 = v121;
  v79 = *(v121 + 104);
  v80 = v107;
  v81 = v115;
  v79(v107);
  v123 = v78 + 104;
  v117 = v79;
  v82 = sub_1D52EE3A4(&qword_1EC7E9D70, type metadata accessor for PlaylistCollaboratorPropertyProvider);
  v119 = sub_1D52EE3A4(&qword_1EC7EE040, type metadata accessor for SocialProfile);
  v118 = v82;
  OUTLINED_FUNCTION_5_101();
  OUTLINED_FUNCTION_8_96();
  v126 = v77;
  sub_1D5610D38();
  OUTLINED_FUNCTION_7_101();
  v83 = v78 + 8;
  v122 = *(v78 + 8);
  v122(v80, v81);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_175();
  v84 = OUTLINED_FUNCTION_6_101(1);
  v85 = v127;
  (v79)(v84, v127, v81);
  OUTLINED_FUNCTION_5_101();
  sub_1D5610D48();
  OUTLINED_FUNCTION_7_101();
  v86 = v122;
  v122(v80, v81);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_175();
  v87 = OUTLINED_FUNCTION_6_101(2);
  v88 = v85;
  v89 = v117;
  (v117)(v87, v88, v81);
  OUTLINED_FUNCTION_5_101();
  OUTLINED_FUNCTION_9_91();
  sub_1D5610D48();
  OUTLINED_FUNCTION_7_101();
  v86(v80, v81);
  v121 = v83;
  swift_getKeyPath();
  LOBYTE(v133) = 0;
  (v89)(v80, v127, v81);
  v90 = v125;
  sub_1D5610D68();

  v122(v80, v81);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_175();
  v92 = OUTLINED_FUNCTION_6_101(v91);
  v93 = v127;
  (v89)(v92, v127, v81);
  OUTLINED_FUNCTION_5_101();
  OUTLINED_FUNCTION_9_91();
  sub_1D5610D48();
  OUTLINED_FUNCTION_7_101();
  v94 = v122;
  v122(v80, v81);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_175();
  v95 = OUTLINED_FUNCTION_6_101(4);
  v96 = v93;
  v97 = v117;
  (v117)(v95, v96, v81);
  OUTLINED_FUNCTION_5_101();
  OUTLINED_FUNCTION_8_96();
  OUTLINED_FUNCTION_9_91();
  sub_1D5610D48();
  OUTLINED_FUNCTION_7_101();
  v98 = v115;
  v94(v80, v115);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_175();
  v99 = OUTLINED_FUNCTION_6_101(5);
  (v97)(v99, v127, v98);
  OUTLINED_FUNCTION_5_101();
  OUTLINED_FUNCTION_9_91();
  sub_1D5610D48();
  OUTLINED_FUNCTION_7_101();
  v100 = v122;
  v122(v80, v98);
  swift_getKeyPath();
  LOBYTE(v133) = 1;
  (v117)(v80, v127, v98);
  sub_1D52ED450();
  v101 = v118;
  sub_1D5610D88();

  v100(v80, v98);
  v134 = v111;
  v135 = v101;
  v102 = __swift_allocate_boxed_opaque_existential_0(&v133);
  sub_1D52EE3EC(v90, v102, type metadata accessor for PlaylistCollaboratorPropertyProvider);
  Playlist.Collaborator.init(propertyProvider:)(&v133, v108);
  swift_unknownObjectRelease();
  sub_1D4E50004(v110, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v113 + 8))(v116, v114);
  (*(v105 + 8))(v112, v106);
  return sub_1D52EE44C(v90, type metadata accessor for PlaylistCollaboratorPropertyProvider);
}

unint64_t sub_1D52ED3FC()
{
  result = qword_1EC7F3BA8;
  if (!qword_1EC7F3BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3BA8);
  }

  return result;
}

unint64_t sub_1D52ED450()
{
  result = qword_1EC7F3BB0;
  if (!qword_1EC7F3BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3BB0);
  }

  return result;
}

uint64_t Playlist.Collaborator.convertToLegacyModelStorageDictionary(for:)()
{
  sub_1D4ECC98C();
  v10 = sub_1D5614BD8();
  if (qword_1EC7E9448 != -1)
  {
    swift_once();
  }

  sub_1D52EE3A4(&unk_1EDD52D30, type metadata accessor for Playlist.Collaborator);
  sub_1D52EE3A4(&qword_1EC7F3BB8, type metadata accessor for Playlist.Collaborator);
  sub_1D560EC28();
  if (v6 == 2)
  {
    v0 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    LOBYTE(v6) = v6 & 1;
    v0 = MEMORY[0x1E69E6370];
  }

  ObjectType = v0;
  sub_1D4EC8990(&v6, 0);
  v1 = sub_1D52ED6E0();
  ObjectType = swift_getObjectType();
  v6 = v1;
  sub_1D4EC8990(&v6, 3);
  if (qword_1EC7E9470 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  if (v6 == 2)
  {
    v2 = 0;
    v3 = 0;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    if (v6)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v2 = [objc_opt_self() rawValueForPlaylistAuthorRole_];
    v3 = MEMORY[0x1E69E6530];
  }

  v6 = v2;
  ObjectType = v3;
  sub_1D4EC8990(&v6, 1);
  return v10;
}

id sub_1D52ED6E0()
{
  v1 = sub_1D56131C8();
  v57 = *(v1 - 8);
  v58 = v1;
  v2 = *(v57 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v56 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v47 - v5;
  v51 = type metadata accessor for SocialProfile();
  v6 = *(*(v51 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v51);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v54 = (&v47 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v49 = &v47 - v12;
  v13 = type metadata accessor for SocialProfilePropertyProvider();
  v14 = *(*(v13 - 1) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v50 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v47 - v17;
  v48 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v48);
  v19 = v13[10];
  v20 = sub_1D560C0A8();
  __swift_storeEnumTagSinglePayload(&v18[v19], 1, 1, v20);
  v21 = v13[12];
  type metadata accessor for Playlist.Collaborator();
  sub_1D52EE3A4(&unk_1EDD52D30, type metadata accessor for Playlist.Collaborator);
  v52 = v0;
  sub_1D560EC98();
  v22 = &v18[v13[13]];
  sub_1D560FF18();
  sub_1D5614A88();
  v47 = sub_1D5614BD8();
  v23 = sub_1D5614BD8();
  v24 = sub_1D5614BD8();
  v25 = sub_1D5614BD8();
  if (qword_1EDD54CF8 != -1)
  {
    swift_once();
  }

  v26 = qword_1EDD76B58;
  if (qword_1EDD76B58 >> 62)
  {
    sub_1D560CDE8();

    v46 = sub_1D5615E18();

    v26 = v46;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v27 = v13[5];
  *&v18[v13[11]] = v26;
  v28 = &v18[v13[14]];
  *v28 = 0;
  *(v28 + 1) = 0;
  *&v18[v13[15]] = v47;
  *&v18[v13[16]] = v23;
  *&v18[v13[17]] = v24;
  *&v18[v13[18]] = v25;
  if (qword_1EC7E9430 != -1)
  {
    swift_once();
  }

  sub_1D52EE3A4(&qword_1EC7F3BB8, type metadata accessor for Playlist.Collaborator);
  v29 = v49;
  sub_1D560EC28();
  sub_1D52EE334(v29, v18);
  if (qword_1EC7E9438 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  *&v18[v27] = v59;
  if (qword_1EC7E9440 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v30 = v13[7];
  v32 = v13[8];
  v31 = v13[9];
  v18[v13[6]] = v59 & 1;
  if (qword_1EC7E9450 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v18[v30] = v59;
  if (qword_1EC7E9458 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v18[v32] = v59;
  if (qword_1EC7E9460 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  *&v18[v31] = v59;
  v33 = v50;
  sub_1D52EE3EC(v18, v50, type metadata accessor for SocialProfilePropertyProvider);
  v34 = v33 + v13[12];
  v35 = sub_1D560D708();
  v36 = v54;
  *v54 = v35;
  *(v36 + 8) = v37;
  v38 = *(v51 + 20);
  sub_1D52EE3A4(&qword_1EDD54CF0, type metadata accessor for SocialProfilePropertyProvider);
  sub_1D5610D28();
  sub_1D52EE44C(v33, type metadata accessor for SocialProfilePropertyProvider);
  v40 = v57;
  v39 = v58;
  v41 = v55;
  (*(v57 + 104))(v55, *MEMORY[0x1E6976988], v58);
  (*(v40 + 16))(v56, v41, v39);
  sub_1D52EE3EC(v36, v53, type metadata accessor for SocialProfile);
  sub_1D4ECAE94();
  v43 = v42;
  (*(v40 + 8))(v41, v39);
  v44 = [v43 underlyingObject];

  sub_1D52EE44C(v36, type metadata accessor for SocialProfile);
  sub_1D52EE44C(v18, type metadata accessor for SocialProfilePropertyProvider);
  return v44;
}

uint64_t Playlist.Collaborator.LegacyModelPlaylistAuthorPropertyKey.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D5615EF8();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D52EDF48@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return Playlist.Collaborator.LegacyModelPlaylistAuthorPropertyKey.init(rawValue:)(a1);
}

unint64_t sub_1D52EDF54@<X0>(unint64_t *a1@<X8>)
{
  result = Playlist.Collaborator.LegacyModelPlaylistAuthorPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Playlist.Collaborator.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6976800];
  v3 = sub_1D5613158();
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t sub_1D52EDFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D52EE3A4(&qword_1EC7F3520, type metadata accessor for Playlist.Collaborator);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

uint64_t sub_1D52EE0A0()
{
  sub_1D52EE3A4(qword_1EC7F3BD0, type metadata accessor for Playlist.Collaborator);

  return sub_1D56132F8();
}

Swift::Int sub_1D52EE130@<X0>(Swift::Int *a1@<X8>)
{
  result = Playlist.Collaborator.Status.convertToLegacyModelRawValue()();
  *a1 = result;
  return result;
}

unint64_t sub_1D52EE15C()
{
  result = qword_1EC7F3BC0;
  if (!qword_1EC7F3BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3BC0);
  }

  return result;
}

unint64_t sub_1D52EE1B8()
{
  result = qword_1EC7F3BC8;
  if (!qword_1EC7F3BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3BC8);
  }

  return result;
}

_BYTE *_s36LegacyModelPlaylistAuthorPropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D52EE334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D52EE3A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D52EE3EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D52EE44C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D52EE4EC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D5616168();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D52EE574(void *a1, void *a2)
{
  v3 = a2[3];
  v15 = a2[2];
  v4 = a2[4];
  _s12CodableValueV10CodingKeysOMa();
  OUTLINED_FUNCTION_0_176();
  swift_getWitnessTable();
  v5 = sub_1D56160D8();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D56163D8();
  sub_1D56160C8();
  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1D52EE6D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  OUTLINED_FUNCTION_1_0();
  v39 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s12CodableValueV10CodingKeysOMa();
  OUTLINED_FUNCTION_0_176();
  swift_getWitnessTable();
  v42 = sub_1D5616008();
  OUTLINED_FUNCTION_1_0();
  v37 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  v38 = a2;
  v40 = a3;
  v18 = _s12CodableValueVMa();
  OUTLINED_FUNCTION_1_0();
  v35 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v33 - v23;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v26 = v43;
  sub_1D5616398();
  if (!v26)
  {
    v34 = v24;
    v43 = v18;
    v28 = v37;
    v27 = v38;
    v29 = v39;
    v30 = v41;
    sub_1D5615FD8();
    (*(v28 + 8))(v17, v42);
    v31 = v34;
    (*(v29 + 32))(v34, v30, v27);
    (*(v35 + 32))(v36, v31, v43);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D52EE990(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[2];
  v4 = a3[3];
  v5 = a3[4];
  return OUTLINED_FUNCTION_53_0();
}

uint64_t sub_1D52EE99C(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_1D4ECD9EC();
}

uint64_t sub_1D52EE9AC(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  return sub_1D4EA72F0();
}

uint64_t sub_1D52EE9BC(uint64_t a1, void *a2)
{
  sub_1D56162D8();
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  sub_1D4EA72F0();
  return sub_1D5616328();
}

uint64_t sub_1D52EEA04(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_1D52EE560();
}

uint64_t sub_1D52EEA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_1D52EE4EC(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1D52EEA4C(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return OUTLINED_FUNCTION_148_3();
}

uint64_t sub_1D52EEA74@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = OUTLINED_FUNCTION_53_0();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D52EEAAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D52EEB00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D52EEBC4(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D52EEBBC(v3, a1);
  return sub_1D5616328();
}

uint64_t sub_1D52EEC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return sub_1D52EEB90();
}

uint64_t sub_1D52EEC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1D56162D8();
  sub_1D52EEBBC(v6, a2);
  return sub_1D5616328();
}

uint64_t sub_1D52EEC8C(uint64_t a1)
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

uint64_t sub_1D52EECFC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1D52EEE38(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1D52EF058()
{
  result = qword_1EC7F3C58[0];
  if (!qword_1EC7F3C58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC7F3C58);
  }

  return result;
}

uint64_t sub_1D52EF0C4(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

_BYTE *sub_1D52EF15C(_BYTE *result, int a2, int a3)
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

uint64_t sub_1D52EF24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D52EF264()
{
  v1 = v0[3];
  if ((v0[4] & 0x8000000000000000) != 0)
  {
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_1D52EF4B4;
    v7 = v0[2];

    return sub_1D54F1FF0(v7);
  }

  else
  {
    v2 = v0[2];
    v3 = swift_task_alloc();
    v0[5] = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = OUTLINED_FUNCTION_10_88(dword_1D5650B98);
    v0[6] = v4;
    *v4 = v0;
    v4[1] = sub_1D52EF3B0;

    return v8();
  }
}

uint64_t sub_1D52EF3B0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    v9 = sub_1D52EF598;
  }

  else
  {
    v10 = *(v3 + 40);

    v9 = j__OUTLINED_FUNCTION_1_18;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D52EF4B4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D52EF598()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D52EF5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1D4E6ED20;

  return sub_1D54F2224(a3);
}

uint64_t sub_1D52EF690()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_50_1(v4);

  return sub_1D52EF5F4(v6, v7, v8);
}

uint64_t sub_1D52EF728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D52EF740()
{
  v1 = v0[16];
  if ((v0[17] & 0x8000000000000000) != 0)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[21] = v7;
    *v7 = v8;
    v7[1] = sub_1D52EF9C8;
    v9 = v0[15];

    return sub_1D54F2320((v0 + 2), v9);
  }

  else
  {
    v2 = v0[15];
    v3 = swift_task_alloc();
    v0[18] = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    OUTLINED_FUNCTION_10_88(dword_1D5650CD0);
    OUTLINED_FUNCTION_58();
    v0[19] = v4;
    *v4 = v5;
    v4[1] = sub_1D52EF890;

    return v10(v0 + 8, &unk_1D5650AD0, v3);
  }
}

uint64_t sub_1D52EF890()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 160) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D52AEB20, 0, 0);
  }

  else
  {
    v9 = *(v3 + 144);

    v10 = *(v3 + 104);
    v11 = *(v3 + 64);
    OUTLINED_FUNCTION_7_102(*(v3 + 112), *(v3 + 72), *(v3 + 88));
    OUTLINED_FUNCTION_55();

    return v12();
  }
}

uint64_t sub_1D52EF9C8()
{
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (!v0)
  {
    v9 = *(v3 + 56);
    v10 = *(v3 + 16);
    OUTLINED_FUNCTION_7_102(*(v3 + 112), *(v3 + 24), *(v3 + 40));
  }

  v11 = *(v7 + 8);

  return v11();
}

uint64_t sub_1D52EFAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = a1;
  v5 = swift_task_alloc();
  *(v3 + 72) = v5;
  *v5 = v3;
  v5[1] = sub_1D52EFB78;

  return sub_1D54F22F0(v3 + 16, a3);
}

uint64_t sub_1D52EFB78()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = *(v2 + 72);
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_55();

    return v6();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D52EFC94, 0, 0);
  }
}

uint64_t sub_1D52EFC94()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  *(v1 + 25) = *(v0 + 41);
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_1_18();
}

uint64_t sub_1D52EFCAC()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_50_1(v4);

  return sub_1D52EFAD0(v6, v7, v8);
}

BOOL sub_1D52EFD44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1D52EFD70(char a1)
{
  if (a1)
  {
    return 0x697257646165722ELL;
  }

  else
  {
    return 0x6C6E4F646165722ELL;
  }
}

uint64_t sub_1D52EFDB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[21] = *v3;
  return OUTLINED_FUNCTION_4_100(sub_1D52EFDF4);
}

uint64_t sub_1D52F0064()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (!v0)
  {
    OUTLINED_FUNCTION_80_13();

    v10 = OUTLINED_FUNCTION_20_66();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  return result;
}

uint64_t sub_1D52F0160()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (!v0)
  {
    v9 = *(v3 + 104);
    v10 = *(v3 + 64);
    OUTLINED_FUNCTION_7_102(*(v3 + 136), *(v3 + 72), *(v3 + 88));
  }

  OUTLINED_FUNCTION_71_0();

  return v11();
}

uint64_t sub_1D52F025C()
{
  OUTLINED_FUNCTION_60();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 208) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_13_77(v1);

  return sub_1D52F5AB4(v3, v4, v5);
}

uint64_t sub_1D52F02E0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 208);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (!v0)
  {
    v9 = *(v3 + 56);
    v10 = *(v3 + 16);
    OUTLINED_FUNCTION_7_102(*(v3 + 136), *(v3 + 24), *(v3 + 40));
  }

  OUTLINED_FUNCTION_71_0();

  return v11();
}

uint64_t sub_1D52F03DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *v3;
  return OUTLINED_FUNCTION_4_100(sub_1D52F0420);
}

void sub_1D52F0420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_89_16();
  OUTLINED_FUNCTION_160();
  v13 = v12[8];
  v14 = *(v13 + 136);
  if (v14 == *(v13 + 128))
  {
    OUTLINED_FUNCTION_6_102();
    OUTLINED_FUNCTION_57_30();
LABEL_8:
    OUTLINED_FUNCTION_28_6();
    OUTLINED_FUNCTION_77_16();
    return;
  }

  OUTLINED_FUNCTION_56_28();
  if (v25 != v26)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v14 < v24)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14 >= v23)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    MEMORY[0x1EEE6DE48](v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
    return;
  }

  v27 = v12[9];
  *(v13 + 136) = v14 + 1;
  v28 = sub_1D552E500();
  OUTLINED_FUNCTION_17_67(v28);
  if (v13)
  {
    v30 = v12[8];
    v29 = v12[9];
    OUTLINED_FUNCTION_29_48();
    v12[2] = a11;
    v12[3] = a12;
    OUTLINED_FUNCTION_12_74();
    MEMORY[0x1DA6EAC70](0xD000000000000015);
    v12[4] = v30;
    v31 = MEMORY[0x1E69E5FE0];
    sub_1D5615D48();
    v32 = OUTLINED_FUNCTION_23_57();
    MEMORY[0x1DA6EAC70](v32);
    sub_1D552E500();
    OUTLINED_FUNCTION_73_20();
    OUTLINED_FUNCTION_41_39();
    MEMORY[0x1DA6EAC70](v29, v31);

    OUTLINED_FUNCTION_85_18();
    goto LABEL_8;
  }

  v33 = v12[8];
  if ((*(v33 + 152) & 1) == 0)
  {
    v40 = swift_task_alloc();
    v12[10] = v40;
    *(v40 + 16) = v14;
    *(v40 + 24) = v33;
    v41 = swift_task_alloc();
    v12[11] = v41;
    *(v41 + 16) = v33;
    *(v41 + 24) = v14;
    OUTLINED_FUNCTION_0_177();
    sub_1D52F84F4(v42, v43);
    v44 = *(MEMORY[0x1E69E8930] + 4);
    v45 = swift_task_alloc();
    v12[12] = v45;
    *v45 = v12;
    v45[1] = sub_1D52F06F0;
    OUTLINED_FUNCTION_7_103();
    OUTLINED_FUNCTION_64_23();

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_53_29();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v12[13] = v34;
  *v34 = v35;
  OUTLINED_FUNCTION_81_23(v34);
  OUTLINED_FUNCTION_77_16();

  sub_1D52F5E78(v36, v37, v38);
}

uint64_t sub_1D52F06F0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (!v0)
  {
    v11 = v3[10];
    v10 = v3[11];
    v12 = v3[8];

    v13 = OUTLINED_FUNCTION_20_66();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }

  return result;
}

uint64_t sub_1D52F07F4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D52F08D4()
{
  OUTLINED_FUNCTION_60();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 112) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_81_23(v1);

  return sub_1D52F5E78(v3, v4, v5);
}

uint64_t sub_1D52F0958(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v3[8] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1D52F09A4, v2, 0);
}

void sub_1D52F09A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_89_16();
  OUTLINED_FUNCTION_160();
  v13 = v12[7];
  v14 = *(v13 + 136);
  if (v14 == *(v13 + 128))
  {
    OUTLINED_FUNCTION_6_102();
    OUTLINED_FUNCTION_57_30();
LABEL_8:
    OUTLINED_FUNCTION_28_6();
    OUTLINED_FUNCTION_77_16();
    return;
  }

  OUTLINED_FUNCTION_56_28();
  if (v25 != v26)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v14 < v24)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14 >= v23)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    MEMORY[0x1EEE6DE48](v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
    return;
  }

  v27 = v12[8];
  *(v13 + 136) = v14 + 1;
  v28 = sub_1D552E500();
  OUTLINED_FUNCTION_17_67(v28);
  if (v13)
  {
    v30 = v12[7];
    v29 = v12[8];
    OUTLINED_FUNCTION_29_48();
    v12[2] = a11;
    v12[3] = a12;
    OUTLINED_FUNCTION_12_74();
    MEMORY[0x1DA6EAC70](0xD000000000000015);
    v12[4] = v30;
    v31 = MEMORY[0x1E69E5FE0];
    sub_1D5615D48();
    v32 = OUTLINED_FUNCTION_23_57();
    MEMORY[0x1DA6EAC70](v32);
    sub_1D552E500();
    OUTLINED_FUNCTION_73_20();
    OUTLINED_FUNCTION_41_39();
    MEMORY[0x1DA6EAC70](v29, v31);

    OUTLINED_FUNCTION_85_18();
    goto LABEL_8;
  }

  v33 = v12[7];
  if ((*(v33 + 152) & 1) == 0)
  {
    v38 = swift_task_alloc();
    v12[9] = v38;
    *(v38 + 16) = v14;
    *(v38 + 24) = v33;
    v39 = swift_task_alloc();
    v12[10] = v39;
    *(v39 + 16) = v33;
    *(v39 + 24) = v14;
    OUTLINED_FUNCTION_0_177();
    sub_1D52F84F4(v40, v41);
    v42 = *(MEMORY[0x1E69E8930] + 4);
    v43 = swift_task_alloc();
    v12[11] = v43;
    *v43 = v12;
    v43[1] = sub_1D52F0C74;
    OUTLINED_FUNCTION_7_103();
    OUTLINED_FUNCTION_64_23();

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_53_29();
  v34 = swift_task_alloc();
  v12[12] = v34;
  *v34 = v12;
  OUTLINED_FUNCTION_65_26(v34);
  OUTLINED_FUNCTION_77_16();

  sub_1D52F6258(v35, v36);
}

uint64_t sub_1D52F0C74()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (!v0)
  {
    v11 = v3[9];
    v10 = v3[10];
    v12 = v3[7];

    v13 = OUTLINED_FUNCTION_20_66();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }

  return result;
}

uint64_t sub_1D52F0D78()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = *(v2 + 96);
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_55();

    return v6();
  }

  else
  {
    v8 = OUTLINED_FUNCTION_42_37();

    return v9(v8);
  }
}

uint64_t sub_1D52F0E9C()
{
  OUTLINED_FUNCTION_60();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_65_26(v1);

  return sub_1D52F6258(v2, v3);
}

uint64_t sub_1D52F0F20()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = *(v2 + 104);
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_55();

    return v6();
  }

  else
  {
    v8 = OUTLINED_FUNCTION_42_37();

    return v9(v8);
  }
}

uint64_t sub_1D52F1044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[21] = *v3;
  return OUTLINED_FUNCTION_4_100(sub_1D52F1088);
}

uint64_t sub_1D52F12F8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (!v0)
  {
    OUTLINED_FUNCTION_80_13();

    v10 = OUTLINED_FUNCTION_20_66();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  return result;
}

uint64_t sub_1D52F13F4()
{
  OUTLINED_FUNCTION_60();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 208) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_13_77(v1);

  return sub_1D52F6630(v3, v4, v5);
}

uint64_t sub_1D52F1478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[21] = *v3;
  return OUTLINED_FUNCTION_4_100(sub_1D52F14BC);
}

uint64_t sub_1D52F172C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (!v0)
  {
    OUTLINED_FUNCTION_80_13();

    v10 = OUTLINED_FUNCTION_20_66();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  return result;
}

uint64_t sub_1D52F1828()
{
  OUTLINED_FUNCTION_60();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 208) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_13_77(v1);

  return sub_1D52F6A0C(v3, v4, v5);
}

uint64_t sub_1D52F18AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[21] = *v3;
  return OUTLINED_FUNCTION_4_100(sub_1D52F18F0);
}

uint64_t sub_1D52F1B60()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (!v0)
  {
    OUTLINED_FUNCTION_80_13();

    v10 = OUTLINED_FUNCTION_20_66();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  return result;
}

uint64_t sub_1D52F1C5C()
{
  OUTLINED_FUNCTION_60();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 208) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_13_77(v1);

  return sub_1D52F6CE0(v3, v4, v5);
}

uint64_t sub_1D52F1CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[21] = *v3;
  return OUTLINED_FUNCTION_4_100(sub_1D52F1D24);
}

uint64_t sub_1D52F1F94()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (!v0)
  {
    OUTLINED_FUNCTION_80_13();

    v10 = OUTLINED_FUNCTION_20_66();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  return result;
}

uint64_t sub_1D52F2090()
{
  OUTLINED_FUNCTION_60();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 208) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_13_77(v1);

  return sub_1D52F6E84(v3, v4, v5);
}

uint64_t sub_1D52F2114()
{
  OUTLINED_FUNCTION_60();
  *(v1 + 176) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v0;
  v4 = *(*(type metadata accessor for SQLDatabase.Location(0) - 8) + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  v5 = *(*(_s8LocationVMa() - 8) + 64) + 15;
  *(v1 + 64) = swift_task_alloc();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D52F21CC()
{
  OUTLINED_FUNCTION_160();
  v31 = v0;
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  swift_defaultActor_initialize();
  v3 = OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_databaseQueue;
  *(v0 + 72) = OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_databaseQueue;
  type metadata accessor for ActorQueue();
  swift_allocObject();
  *(v1 + v3) = sub_1D552E568(0);
  *(v0 + 80) = OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_location;
  OUTLINED_FUNCTION_40_45();
  sub_1D4E56DC4(v2, v1 + v4, v5);
  if (qword_1EDD5D8B0 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  v6 = *(v0 + 64);
  v7 = *(v0 + 40);
  v8 = sub_1D560C758();
  __swift_project_value_buffer(v8, qword_1EDD76DE0);
  OUTLINED_FUNCTION_40_45();
  sub_1D4E56DC4(v7, v6, v9);
  v10 = sub_1D560C738();
  v11 = sub_1D56156E8();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 64);
  if (v12)
  {
    v14 = *(v0 + 176);
    v15 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v15 = 136446466;
    if (v14)
    {
      v16 = 0x697257646165722ELL;
    }

    else
    {
      v16 = 0x6C6E4F646165722ELL;
    }

    if (v14)
    {
      v17 = 0xEA00000000006574;
    }

    else
    {
      v17 = 0xE900000000000079;
    }

    v18 = sub_1D4E6835C(v16, v17, &v30);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    v19 = sub_1D52FA1CC();
    v21 = v20;
    sub_1D5014360(v13);
    v22 = sub_1D4E6835C(v19, v21, &v30);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_1D4E3F000, v10, v11, "Connecting to database %{public}s with location: %{public}s.", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  else
  {

    sub_1D5014360(v13);
  }

  v23 = *(v0 + 176);
  sub_1D4E56DC4(*(v0 + 40), *(v0 + 56), type metadata accessor for SQLDatabase.Location);
  v24 = type metadata accessor for SQLDatabase(0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = swift_task_alloc();
  *(v0 + 88) = v27;
  *v27 = v0;
  v27[1] = sub_1D52F24B8;
  v28 = *(v0 + 56);

  return sub_1D54E7594(v28, v23 & 1 | 0x1000100, 33555456);
}

uint64_t sub_1D52F24B8()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  *v6 = v5;
  v8 = *(v7 + 88);
  v9 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v5 + 96) = v0;

  if (!v0)
  {
    *(v5 + 104) = v3;
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D52F25C4()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 176);
  *(*(v0 + 48) + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_connection) = *(v0 + 104);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 136) = v2;
    *v2 = v0;
    v2[1] = sub_1D52F298C;
    v3 = *(v0 + 48);

    return sub_1D52F34F4();
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_1D52F26D4;
    v6 = *(v0 + 48);

    return sub_1D52F2FB8();
  }
}

uint64_t sub_1D52F26D4()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  v7 = *(v4 + 112);
  *v6 = *v1;
  *(v5 + 120) = v0;

  v8 = *(v4 + 48);
  if (!v0)
  {
    *(v5 + 128) = v3;
  }

  OUTLINED_FUNCTION_8_97();
  sub_1D52F84F4(v9, v10);
  swift_getObjectType();
  sub_1D5615338();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D52F2888()
{
  OUTLINED_FUNCTION_80();
  if (v0[16] == 60)
  {
    v1 = v0[7];
    v2 = v0[8];
    sub_1D5014360(v0[5]);

    OUTLINED_FUNCTION_50();
    v4 = v0[6];

    return v3(v4);
  }

  else
  {
    sub_1D52F853C();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    v7 = v0[6];
    sub_1D5014360(v0[5]);

    v9 = v0[7];
    v8 = v0[8];

    OUTLINED_FUNCTION_55();

    return v10();
  }
}

uint64_t sub_1D52F298C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  v3[18] = v0;

  if (v0)
  {
    v9 = v3[6];
    OUTLINED_FUNCTION_8_97();
    sub_1D52F84F4(v10, v11);
    swift_getObjectType();
    v13 = sub_1D5615338();

    return MEMORY[0x1EEE6DFA0](sub_1D52F2D78, v13, v12);
  }

  else
  {
    OUTLINED_FUNCTION_8_97();
    v3[19] = sub_1D52F84F4(v14, v15);
    v16 = swift_task_alloc();
    v3[20] = v16;
    *v16 = v7;
    v16[1] = sub_1D52F2B4C;
    v17 = v3[6];

    return sub_1D52F2FB8();
  }
}

uint64_t sub_1D52F2B4C()
{
  OUTLINED_FUNCTION_80();
  v2 = v0;
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v4 = v3;
  v6 = v5[20];
  v7 = v5[19];
  v8 = v5[6];
  v9 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v11 + 168) = v2;

  swift_getObjectType();
  v13 = sub_1D5615338();
  if (v2)
  {
    v14 = sub_1D52F2E6C;
  }

  else
  {
    v14 = sub_1D52F2C90;
  }

  return MEMORY[0x1EEE6DFA0](v14, v13, v12);
}

uint64_t sub_1D52F2C90()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[7];
  v2 = v0[8];
  sub_1D5014360(v0[5]);

  OUTLINED_FUNCTION_50();
  v4 = v0[6];

  return v3(v4);
}

uint64_t sub_1D52F2D04()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[15];
  v2 = v0[6];
  sub_1D5014360(v0[5]);

  v4 = v0[7];
  v3 = v0[8];

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D52F2D78()
{
  OUTLINED_FUNCTION_160();
  v1 = v0[18];
  sub_1D5615B68();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x1DA6EAC70](0xD000000000000033, 0x80000001D568A6E0);
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  sub_1D5615D48();
  v2 = v0[2];
  v3 = v0[3];
  return sub_1D5615E08();
}

uint64_t sub_1D52F2E6C()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[21];
  v2 = v0[6];
  sub_1D5014360(v0[5]);

  v4 = v0[7];
  v3 = v0[8];

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D52F2EE0()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  sub_1D5014360(v3 + v0[10]);
  v4 = *(v3 + v1);

  _s8DatabaseCMa();
  swift_defaultActor_destroy();
  sub_1D5014360(v2);
  v5 = *(*v3 + 48);
  v6 = *(*v3 + 52);
  swift_deallocPartialClassInstance();
  v7 = v0[12];
  v9 = v0[7];
  v8 = v0[8];

  OUTLINED_FUNCTION_55();

  return v10();
}

uint64_t sub_1D52F2FB8()
{
  OUTLINED_FUNCTION_80();
  *(v1 + 16) = 0xD000000000000013;
  *(v1 + 56) = v0;
  OUTLINED_FUNCTION_27_0(&unk_1D5650BD0);
  v5 = v2;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 24) = 0x80000001D5689D90;
  *(v1 + 48) = 0;
  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_26_12(v3);

  return v5(v1 + 16);
}

uint64_t sub_1D52F3080()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_59_1();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  *v8 = v7;
  v10 = *(v9 + 64);
  v11 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v12 = v11;

  if (v0)
  {
    v13 = *(v11 + 8);
    OUTLINED_FUNCTION_153_1();

    return v15(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v23 = *(v7 + 56);
    *(v7 + 49) = v3;
    *(v7 + 72) = v5;
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEE6DFA0](v24, v25, v26);
  }
}

uint64_t sub_1D52F31BC()
{
  OUTLINED_FUNCTION_80();
  if ((*(v0 + 49) & 1) != 0 || !*(v0 + 72))
  {
    v3 = *(v0 + 56);
    v4 = *(v3 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_connection);
    *(v0 + 80) = v4;
    v5 = *(v3 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_databaseQueue);
    *(v0 + 88) = v5;

    v6 = swift_task_alloc();
    *(v0 + 96) = v6;
    *v6 = v0;
    v6[1] = sub_1D52F32E8;

    return sub_1D52FA4F8(0x6E6F6973726576, 0xE700000000000000, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_50();

    return v1();
  }
}

uint64_t sub_1D52F32E8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 96);
  *v4 = *v1;
  v3[13] = v7;
  v3[14] = v8;

  if (v0)
  {
    v11 = v3 + 10;
    v9 = v3[10];
    v10 = v11[1];

    OUTLINED_FUNCTION_50();

    return v12(0);
  }

  else
  {
    v14 = v3[10];
    v15 = v3[11];
    v16 = v3[7];

    v17 = OUTLINED_FUNCTION_20_66();

    return MEMORY[0x1EEE6DFA0](v17, v18, v19);
  }
}

uint64_t sub_1D52F3444()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 112);
  if (v1)
  {
    if (v1 == 0xE100000000000000 && *(v0 + 104) == 49)
    {
      v2 = *(v0 + 112);
    }

    else
    {
      v3 = *(v0 + 112);
      sub_1D5616168();
    }
  }

  OUTLINED_FUNCTION_50();

  return v4();
}

uint64_t sub_1D52F34F4()
{
  OUTLINED_FUNCTION_60();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_26_12(v2);

  return sub_1D52F2FB8();
}

uint64_t sub_1D52F357C()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    v13 = *(v5 + 16);
    *(v5 + 32) = v3;

    return MEMORY[0x1EEE6DFA0](sub_1D52F36B0, v13, 0);
  }
}

uint64_t sub_1D52F36B0()
{
  OUTLINED_FUNCTION_80();
  if (v0[4])
  {
    if (qword_1EDD5D8B0 != -1)
    {
      OUTLINED_FUNCTION_0_20();
    }

    v1 = sub_1D560C758();
    v0[6] = __swift_project_value_buffer(v1, qword_1EDD76DE0);
    v2 = sub_1D560C738();
    v3 = sub_1D56156E8();
    if (os_log_type_enabled(v2, v3))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_72_4(&dword_1D4E3F000, v4, v5, "􁁿 Migration start!");
      OUTLINED_FUNCTION_122();
    }

    v6 = v0[2];

    v7 = *(v6 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_connection);
    if (qword_1EDD5A0C0 != -1)
    {
      swift_once();
    }

    v8 = qword_1EDD76CE0;
    v9 = swift_task_alloc();
    v0[7] = v9;
    *v9 = v0;
    OUTLINED_FUNCTION_26_12(v9);

    return sub_1D52ACF54(v8);
  }

  else
  {
    v11 = swift_task_alloc();
    v0[5] = v11;
    *v11 = v0;
    v11[1] = sub_1D4EFC820;
    v12 = v0[2];

    return sub_1D52F3C28();
  }
}

uint64_t sub_1D52F388C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *(v1 + 56);
  v6 = *v2;
  OUTLINED_FUNCTION_24_1();
  *v7 = v6;
  *(v9 + 64) = v8;
  *(v9 + 72) = v0;

  OUTLINED_FUNCTION_153_4();
  v11 = *(v10 + 16);
  OUTLINED_FUNCTION_204();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D52F39A0()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  if (!*(v1 + 16))
  {
    v10 = *(v0 + 64);

    v4 = sub_1D560C738();
    v11 = sub_1D56156E8();
    if (!os_log_type_enabled(v4, v11))
    {
      goto LABEL_8;
    }

    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_72_4(&dword_1D4E3F000, v12, v13, "􁁿 Migration success, no migrations needed.");
    goto LABEL_6;
  }

  v3 = *(v0 + 64);

  v4 = sub_1D560C738();
  v5 = sub_1D56156E8();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 64);
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 134349056;
    v9 = *(v1 + 16);

    *(v8 + 4) = v9;

    _os_log_impl(&dword_1D4E3F000, v4, v5, "􁁿 Migration success, finished %{public}ld migration(s).", v8, 0xCu);
LABEL_6:
    OUTLINED_FUNCTION_122();
    goto LABEL_8;
  }

  v14 = *(v0 + 64);
  swift_bridgeObjectRelease_n();
LABEL_8:

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_153_1();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_1D52F3B04()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = v1;
  v4 = sub_1D560C738();
  v5 = sub_1D56156C8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 72);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D4E3F000, v4, v5, "􁁿􀘞 Migration FAILED: %{public}@", v7, 0xCu);
    sub_1D5103588(v8);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  v11 = *(v0 + 72);

  swift_willThrow();
  v12 = *(v0 + 72);
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_153_1();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1D52F3C48()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_27_0(dword_1D5650B80);
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1D52F3D10;
  v3 = *(v0 + 16);

  return v5();
}

uint64_t sub_1D52F3D10()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *(v1 + 24);
  *v4 = *v2;
  *(v3 + 32) = v0;

  OUTLINED_FUNCTION_153_4();
  v7 = *(v6 + 16);
  OUTLINED_FUNCTION_204();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D52F3E40()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 64);

  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_26_12(v2);

  return sub_1D52FB3F0(v1, 0x8000000000000000);
}

uint64_t sub_1D52F3EDC()
{
  OUTLINED_FUNCTION_80();
  v2 = *v1;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *(v2 + 72);
  *v4 = *v1;
  *(v3 + 80) = v0;

  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_1D52F4514;
  }

  else
  {

    v7 = sub_1D52F4008;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1D52F4008()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 64);

  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_26_12(v2);

  return sub_1D51BB394(v1, 0x8000000000000000);
}

uint64_t sub_1D52F40A4()
{
  OUTLINED_FUNCTION_80();
  v2 = *v1;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *(v2 + 88);
  *v4 = *v1;
  *(v3 + 96) = v0;

  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_1D52F4570;
  }

  else
  {

    v7 = sub_1D52F41D0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}