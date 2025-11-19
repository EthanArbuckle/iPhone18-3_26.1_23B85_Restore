uint64_t sub_1D5413CF8(void (*a1)(_BYTE *))
{
  sub_1D56162D8();
  a1(v3);
  return sub_1D5616328();
}

uint64_t sub_1D5413D64(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D56162D8();
  a4(v6);
  return sub_1D5616328();
}

uint64_t sub_1D5413DA8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D4E6ED20;

  return MusicCatalogInternalSearchRequest.catalogResponse()(a1);
}

uint64_t sub_1D5413E40()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1D4E73560;

  return MusicCatalogInternalSearchRequest.response()(v2);
}

uint64_t sub_1D5413ED0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE38, &unk_1D5620430);
  v0 = sub_1D560D9A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D56625F0;
  v5 = v4 + v3;
  sub_1D560D908();
  sub_1D560D938();
  sub_1D560D948();
  if (qword_1EDD53D70 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EDD53D78);
  v7 = *(v1 + 16);
  v7(v5 + 3 * v2, v6, v0);
  sub_1D560D918();
  if (qword_1EDD53D48 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EDD53D50);
  v7(v5 + 5 * v2, v8, v0);
  sub_1D560D878();
  sub_1D560D968();
  sub_1D560D998();
  sub_1D560D888();
  sub_1D560D8E8();
  sub_1D560D958();
  if (qword_1EC7E95E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_1EC7F5D98);
  v7(v5 + 12 * v2, v9, v0);
  if (qword_1EDD53C38 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_1EDD53C40);
  v7(v5 + 13 * v2, v10, v0);
  if (qword_1EDD53CE8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v0, qword_1EDD53CF0);
  result = (v7)(v5 + 14 * v2, v11, v0);
  off_1EC7F6140 = v4;
  return result;
}

uint64_t static MusicCatalogInternalSearchRequest.supportedTypeValues.getter()
{
  if (qword_1EC7E9628 != -1)
  {
    OUTLINED_FUNCTION_6_132();
  }
}

uint64_t sub_1D5414284(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D54142CC()
{
  result = qword_1EC7F6148;
  if (!qword_1EC7F6148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6148);
  }

  return result;
}

unint64_t sub_1D5414320()
{
  result = qword_1EC7F6168;
  if (!qword_1EC7F6168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6168);
  }

  return result;
}

unint64_t sub_1D5414374()
{
  result = qword_1EC7F6170;
  if (!qword_1EC7F6170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6170);
  }

  return result;
}

unint64_t sub_1D54143C8()
{
  result = qword_1EC7F6178;
  if (!qword_1EC7F6178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6178);
  }

  return result;
}

unint64_t sub_1D5414420()
{
  result = qword_1EC7F6198;
  if (!qword_1EC7F6198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6198);
  }

  return result;
}

unint64_t sub_1D5414478()
{
  result = qword_1EC7F61A0;
  if (!qword_1EC7F61A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F61A0);
  }

  return result;
}

unint64_t sub_1D5414518()
{
  result = qword_1EC7F61B0;
  if (!qword_1EC7F61B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F61B0);
  }

  return result;
}

uint64_t sub_1D5414594()
{
  sub_1D5414750(319, &qword_1EDD52708, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1D5414750(319, &qword_1EC7F61C8, &type metadata for MusicCatalogInternalSearchRequest.Context, MEMORY[0x1E69E62F8]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_1D5414750(319, &qword_1EDD5F070, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_1D5414750(319, &qword_1EDD53DD8, &type metadata for MusicDataRequest.Source, MEMORY[0x1E69E6720]);
    if (v6 > 0x3F)
    {
      return v3;
    }

    else
    {
      v1 = sub_1D560CD48();
      if (v7 <= 0x3F)
      {
        v1 = type metadata accessor for MusicCatalogInternalSearchRequest.Parameters(319);
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_1D5414750(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

_BYTE *storeEnumTagSinglePayload for MusicCatalogInternalSearchRequest.LyricsOption(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1D541488C(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1D5414988()
{
  sub_1D54149FC();
  if (v0 <= 0x3F)
  {
    sub_1D5414AD8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D54149FC()
{
  if (!qword_1EC7F61E0)
  {
    sub_1D5414A44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7F61E0);
    }
  }
}

void sub_1D5414A44()
{
  if (!qword_1EC7F61E8)
  {
    type metadata accessor for MusicCatalogInternalSearchRequest(255);
    sub_1D5414284(&qword_1EC7EF290, type metadata accessor for MusicCatalogInternalSearchRequest);
    v0 = sub_1D560E498();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7F61E8);
    }
  }
}

void sub_1D5414AD8()
{
  if (!qword_1EC7F61F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF288, &qword_1D5662610);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC7F61F0);
    }
  }
}

unint64_t sub_1D5414B9C()
{
  result = qword_1EC7F6200;
  if (!qword_1EC7F6200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6200);
  }

  return result;
}

unint64_t sub_1D5414BF4()
{
  result = qword_1EC7F6208;
  if (!qword_1EC7F6208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6208);
  }

  return result;
}

unint64_t sub_1D5414C4C()
{
  result = qword_1EC7F6210;
  if (!qword_1EC7F6210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6210);
  }

  return result;
}

unint64_t sub_1D5414CA4()
{
  result = qword_1EC7F6218;
  if (!qword_1EC7F6218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6218);
  }

  return result;
}

unint64_t sub_1D5414CFC()
{
  result = qword_1EC7F6220;
  if (!qword_1EC7F6220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6220);
  }

  return result;
}

unint64_t sub_1D5414D54()
{
  result = qword_1EC7F6228;
  if (!qword_1EC7F6228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6228);
  }

  return result;
}

unint64_t sub_1D5414DAC()
{
  result = qword_1EC7F6230;
  if (!qword_1EC7F6230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6230);
  }

  return result;
}

unint64_t sub_1D5414E00()
{
  result = qword_1EC7F6238;
  if (!qword_1EC7F6238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6238);
  }

  return result;
}

uint64_t sub_1D5414E54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_20_84()
{
  *(v5 + 16) = v0;
  result = v5 + v4 + v2 * v1;
  v7 = *(v3 + 32);
  return result;
}

uint64_t MusicRoute.init(underlyingRoute:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [objc_opt_self() musicRouteWithUnderlyingRoute_];
  if (v3)
  {
    v4 = swift_unknownObjectRetain();
    v5 = sub_1D4E5DC24(v4);
    v7 = v6;
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
  }

  else
  {
    result = swift_unknownObjectRelease();
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v3;
  return result;
}

uint64_t MusicRoute.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MusicRoute.name.getter()
{
  v1 = [*(v0 + 16) musicKit_avRoute_routeName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D5614D68();

  return v3;
}

uint64_t MusicRoute.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0]([v1 hash]);
  return sub_1D5616328();
}

uint64_t sub_1D5415114()
{
  v1 = *(v0 + 16);
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0]([v1 hash]);
  return sub_1D5616328();
}

unint64_t sub_1D5415168()
{
  result = qword_1EC7F6260;
  if (!qword_1EC7F6260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6260);
  }

  return result;
}

uint64_t sub_1D54151BC@<X0>(uint64_t *a1@<X8>)
{
  result = MusicRoute.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static MusicItem<>.==~ infix(_:_:)()
{
  v0 = sub_1D560D838();
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  sub_1D560EC98();
  sub_1D560EC98();
  v11 = sub_1D560D528();
  v12 = *(v3 + 8);
  v12(v8, v0);
  v12(v10, v0);
  return v11 & 1;
}

uint64_t MusicItem.contains(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D560D838();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D560EC18() == a1 && v12 == a2)
  {

    goto LABEL_8;
  }

  v14 = sub_1D5616168();

  if (v14)
  {
LABEL_8:
    v15 = 1;
    return v15 & 1;
  }

  sub_1D560EC98();
  v15 = sub_1D560D788();
  (*(v7 + 8))(v11, v4);
  return v15 & 1;
}

double sub_1D5415478@<D0>(double *a1@<X8>)
{
  v33 = a1;
  v34 = sub_1D5611C78();
  v1 = OUTLINED_FUNCTION_4(v34);
  v35 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v6 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1D56119D8();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF0, &unk_1D5648450);
  sub_1D5610708();
  v32 = sub_1D56119C8();
  v19 = v18;
  v20 = *(v10 + 8);
  v20(v17, v7);
  if (v19)
  {
    OUTLINED_FUNCTION_6_98();
    v23 = v22 | 3;
LABEL_5:
    *v6 = v23;
    v6[1] = v21;
    v27 = v35;
    v28 = v34;
    (*(v35 + 104))(v6, *MEMORY[0x1E69763E0], v34);
    sub_1D50F96EC();
    swift_allocError();
    (*(v27 + 16))(v29, v6, v28);
    swift_willThrow();
    (*(v27 + 8))(v6, v28);
    return result;
  }

  sub_1D5610708();
  v24 = sub_1D56119A8();
  v26 = v25;
  v20(v15, v7);
  if (v26)
  {
    OUTLINED_FUNCTION_6_98();
    goto LABEL_5;
  }

  result = v32 / 1000.0;
  v31 = v33;
  *v33 = result;
  v31[1] = v24 / 1000.0;
  return result;
}

uint64_t SpatialOffset.convertToCloudSpatialOffsetAttribute()()
{
  v1 = sub_1D56119D8();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v2);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = &v16 - v11;
  v13 = *v0 * 1000.0;
  if (v13 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = v0[1] * 1000.0;
  v15 = COERCE_UNSIGNED_INT64(fabs(v14)) > 0x7FEFFFFFFFFFFFFFLL;
  if (COERCE__INT64(fabs(*v0 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL || v15)
  {
    goto LABEL_10;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v14 < 9.22337204e18)
  {
    sub_1D56119B8();
    (*(v4 + 16))(v9, v12, v1);
    sub_1D5614A88();
    sub_1D5614BD8();
    sub_1D56106F8();
    return (*(v4 + 8))(v12, v1);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t MusicCatalogSearchSuggestionsResponse.internalTopResults.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6280, &unk_1D5662DD0);
  OUTLINED_FUNCTION_22(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3F8, &qword_1D5631200);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  sub_1D5415B3C(v5);
  v12 = type metadata accessor for MusicCatalogSearchSuggestionsResponse.InternalResults();
  if (__swift_getEnumTagSinglePayload(v5, 1, v12) == 1)
  {
    sub_1D4E765C8(v5, &qword_1EC7F6280, &unk_1D5662DD0);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v13);
    type metadata accessor for GenericMusicItem();
    OUTLINED_FUNCTION_2_170();
    sub_1D5417674(v14, v15);
    sub_1D560D9F8();
    result = OUTLINED_FUNCTION_8_120();
    if (!v17)
    {
      return sub_1D4E765C8(v11, &qword_1EC7EF3F8, &qword_1D5631200);
    }
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
    OUTLINED_FUNCTION_4(v18);
    v20 = v19;
    (*(v21 + 16))(v11, v5, v18);
    sub_1D5417620(v5, type metadata accessor for MusicCatalogSearchSuggestionsResponse.InternalResults);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v18);
    v22 = *(v20 + 32);
    v23 = OUTLINED_FUNCTION_128();
    return v24(v23);
  }

  return result;
}

uint64_t sub_1D5415B3C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F62D0, &qword_1D5662F20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12 - v4;
  sub_1D560EA68();
  v6 = sub_1D560CDB8();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1D4E765C8(v5, &qword_1EC7F62D0, &qword_1D5662F20);
    v7 = type metadata accessor for MusicCatalogSearchSuggestionsResponse.InternalResults();
    v8 = a1;
    v9 = 1;
  }

  else
  {
    sub_1D560CDA8();
    (*(*(v6 - 8) + 8))(v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F62D8, &qword_1D5662F28);
    v10 = type metadata accessor for MusicCatalogSearchSuggestionsResponse.InternalResults();
    v9 = swift_dynamicCast() ^ 1;
    v8 = a1;
    v7 = v10;
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, 1, v7);
}

uint64_t type metadata accessor for MusicCatalogSearchSuggestionsResponse.InternalResults()
{
  result = qword_1EC7F62B0;
  if (!qword_1EC7F62B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5415CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3F8, &qword_1D5631200);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  OUTLINED_FUNCTION_4(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  sub_1D4F43D5C(a1, v9, &qword_1EC7EF3F8, &qword_1D5631200);
  OUTLINED_FUNCTION_8_120();
  if (v18)
  {
    type metadata accessor for GenericMusicItem();
    OUTLINED_FUNCTION_2_170();
    sub_1D5417674(v19, v20);
    sub_1D560D9F8();
    sub_1D4E765C8(a1, &qword_1EC7EF3F8, &qword_1D5631200);
    OUTLINED_FUNCTION_8_120();
    if (!v18)
    {
      sub_1D4E765C8(v9, &qword_1EC7EF3F8, &qword_1D5631200);
    }
  }

  else
  {
    sub_1D4E765C8(a1, &qword_1EC7EF3F8, &qword_1D5631200);
    (*(v12 + 32))(v17, v9, v10);
  }

  return (*(v12 + 32))(a2, v17, v10);
}

uint64_t static MusicCatalogSearchSuggestionsResponse.InternalResults.== infix(_:_:)()
{
  type metadata accessor for GenericMusicItem();
  OUTLINED_FUNCTION_3_172();
  sub_1D5417674(v1, v0);
  sub_1D5417674(&qword_1EDD5C5F8, v0);

  return sub_1D560DAA8();
}

uint64_t MusicCatalogSearchSuggestionsResponse.InternalResults.hash(into:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  sub_1D4F0A558();
  OUTLINED_FUNCTION_128();

  return sub_1D5614CB8();
}

uint64_t MusicCatalogSearchSuggestionsResponse.InternalResults.hashValue.getter()
{
  sub_1D56162D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  sub_1D4F0A558();
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D5416064()
{
  sub_1D56162D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  sub_1D4F0A558();
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D54160C4()
{
  v0 = type metadata accessor for MusicCatalogSearchSuggestionsResponse.InternalResults();
  result = sub_1D5417674(&qword_1EC7F62A0, type metadata accessor for MusicCatalogSearchSuggestionsResponse.InternalResults);
  qword_1EC7F6268 = v0;
  unk_1EC7F6270 = result;
  return result;
}

uint64_t static MusicCatalogSearchSuggestionsResponse.extendedResultsType.getter()
{
  if (qword_1EC7E9630 != -1)
  {
    swift_once();
  }

  return qword_1EC7F6268;
}

uint64_t MusicCatalogSearchSuggestionsResponse.InternalResults.init<A>(for:configuration:rawExtendedResults:with:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v52 = a4;
  v54 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v51 = v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3F8, &qword_1D5631200);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v50 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6288, &unk_1D5662DE0);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v50 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1FF0, &unk_1D5645BF8);
  v26 = OUTLINED_FUNCTION_22(v25);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = v50 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = v50 - v32;

  sub_1D560EBE8();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6290, &qword_1D5662DF0);
  if (__swift_getEnumTagSinglePayload(v24, 1, v34) == 1)
  {
    sub_1D4E765C8(v24, &qword_1EC7F6288, &unk_1D5662DE0);
    v35 = 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA758, &unk_1D561CA20);
    sub_1D5612398();
    OUTLINED_FUNCTION_24_0(v34);
    (*(v36 + 8))(v24, v34);
    v35 = 0;
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2B8, &unk_1D5630FA0);
  __swift_storeEnumTagSinglePayload(v33, v35, 1, v37);
  v53 = v33;
  sub_1D4F43D5C(v33, v31, &qword_1EC7F1FF0, &unk_1D5645BF8);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2B8, &unk_1D5630FA0);
  if (__swift_getEnumTagSinglePayload(v31, 1, v38) == 1)
  {
    sub_1D4E765C8(v31, &qword_1EC7F1FF0, &unk_1D5645BF8);
    v39 = 1;
    v40 = v54;
  }

  else
  {
    v41 = sub_1D560CD98();
    v42 = v51;
    __swift_storeEnumTagSinglePayload(v51, 1, 1, v41);
    v50[1] = type metadata accessor for GenericMusicItem();
    sub_1D5417674(&qword_1EC7EEB48, type metadata accessor for GenericMusicItem);
    OUTLINED_FUNCTION_1_166();
    sub_1D5417674(v43, type metadata accessor for GenericMusicItem);
    v40 = v54;
    sub_1D5612368();
    sub_1D4E765C8(v42, &qword_1EC7EA7D8, &unk_1D561E8B0);
    OUTLINED_FUNCTION_24_0(v38);
    (*(v44 + 8))(v31, v38);
    v39 = 0;
  }

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  __swift_storeEnumTagSinglePayload(v18, v39, 1, v45);
  sub_1D5415CF4(v18, a5);

  v46 = sub_1D560EC08();
  OUTLINED_FUNCTION_4_0(v46);
  (*(v47 + 8))(a2);
  OUTLINED_FUNCTION_24_0(a3);
  (*(v48 + 8))(v40, a3);
  return sub_1D4E765C8(v53, &qword_1EC7F1FF0, &unk_1D5645BF8);
}

uint64_t sub_1D5416644()
{
  v0 = sub_1D5612658();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CloudGenericMusicItem(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6298, &qword_1D5662DF8);
  sub_1D5610648();
  sub_1D51374CC(v3, v7);
  sub_1D5417674(&qword_1EC7EF2E0, type metadata accessor for CloudGenericMusicItem);
  sub_1D5610598();
  return sub_1D5417620(v7, type metadata accessor for CloudGenericMusicItem);
}

uint64_t MusicCatalogSearchSuggestionsResponse.InternalResults.convertToCatalogSearchSuggestionsRawExtendedResults<A>(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a1;
  v39 = a2;
  v40 = a3;
  v43 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6288, &unk_1D5662DE0);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v37 - v9;
  v38 = sub_1D5613578();
  v10 = OUTLINED_FUNCTION_4(v38);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF2B8, &unk_1D5630FA0);
  OUTLINED_FUNCTION_4(v37);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6290, &qword_1D5662DF0);
  OUTLINED_FUNCTION_4(v22);
  v24 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v37 - v28;
  type metadata accessor for GenericMusicItem();
  OUTLINED_FUNCTION_3_172();
  sub_1D5417674(v30, v4);
  OUTLINED_FUNCTION_1_166();
  sub_1D5417674(v31, v4);
  sub_1D4F1ABE8(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  sub_1D560DA98();
  (*(v12 + 8))(v16, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6298, &qword_1D5662DF8);
  sub_1D5612398();
  v32 = *(v18 + 8);
  v33 = OUTLINED_FUNCTION_128();
  v34(v33);
  v35 = v42;
  (*(v24 + 16))(v42, v29, v22);
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v22);
  sub_1D560EBF8();
  return (*(v24 + 8))(v29, v22);
}

uint64_t sub_1D5416AF0()
{
  v0 = type metadata accessor for CloudGenericMusicItem(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D5612658();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA758, &unk_1D561CA20);
  sub_1D5610648();
  sub_1D5137F18(v8);
  sub_1D5417620(v3, type metadata accessor for CloudGenericMusicItem);
  sub_1D5417674(&qword_1EC7F62C8, MEMORY[0x1E6976578]);
  sub_1D5610598();
  return (*(v5 + 8))(v8, v4);
}

Swift::Void __swiftcall MusicCatalogSearchSuggestionsResponse.InternalResults.appendExtendedDescription(forDebugging:to:)(Swift::Bool forDebugging, Swift::String *to)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  sub_1D538DD80();

  sub_1D56155F8();
}

uint64_t MusicCatalogSearchSuggestionsResponse.InternalResults.libraryMapped(policy:scope:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3F8, &qword_1D5631200);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64) + 15;
  v3[3] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  v3[4] = v9;
  OUTLINED_FUNCTION_4(v9);
  v3[5] = v10;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v3[6] = v13;
  v14 = *(MEMORY[0x1E6974FE0] + 4);
  v15 = swift_task_alloc();
  v3[7] = v15;
  *v15 = v3;
  v15[1] = sub_1D5416E84;

  return MEMORY[0x1EEDCE928](v13, a2, a3, v9);
}

uint64_t sub_1D5416E84()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1D4F25038;
  }

  else
  {
    v3 = sub_1D5416F98;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D5416F98()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  (*(v1 + 16))(v2, v0[6], v3);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  v4[3] = type metadata accessor for MusicCatalogSearchSuggestionsResponse.InternalResults();
  v4[4] = sub_1D5417674(&qword_1EC7F62A0, type metadata accessor for MusicCatalogSearchSuggestionsResponse.InternalResults);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  sub_1D5415CF4(v2, boxed_opaque_existential_0);
  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_128();
  v8(v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D54170C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE38, &unk_1D5620430);
  v0 = sub_1D560D9A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D561D750;
  v5 = v4 + v3;
  sub_1D560D918();
  if (qword_1EDD53D48 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EDD53D50);
  v7 = *(v1 + 16);
  v7(v5 + v2, v6, v0);
  if (qword_1EDD53C38 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EDD53C40);
  v7(v5 + 2 * v2, v8, v0);
  if (qword_1EC7E95E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_1EC7F5D98);
  v7(v5 + 3 * v2, v9, v0);
  if (qword_1EDD53CE8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_1EDD53CF0);
  result = (v7)(v5 + 4 * v2, v10, v0);
  qword_1EC7F6278 = v4;
  return result;
}

uint64_t static MusicCatalogSearchSuggestionsResponse.InternalResults.extendedSupportedTypeValues.getter()
{
  if (qword_1EC7E9638 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D54173C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D4ECF3E8;

  return MusicCatalogSearchSuggestionsResponse.InternalResults.libraryMapped(policy:scope:)(a1, a2, a3);
}

uint64_t sub_1D5417474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5417674(&qword_1EC7F62A8, type metadata accessor for MusicCatalogSearchSuggestionsResponse.InternalResults);

  return MEMORY[0x1EEDCF180](a1, a3, a2, a4, v8);
}

uint64_t sub_1D5417508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5417674(&qword_1EC7F62C0, type metadata accessor for MusicCatalogSearchSuggestionsResponse.InternalResults);

  return MEMORY[0x1EEDCF178](a1, a2, a3, v6);
}

void sub_1D54175B4()
{
  sub_1D53263DC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D5417620(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D5417674(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.init(collaborator:playlist:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest();
  sub_1D5417790(a1, a3 + *(v6 + 20));
  v7 = sub_1D5614898();
  v8 = OUTLINED_FUNCTION_14(v7);
  v10 = *(v9 + 32);

  return v10(a3, a2, v8);
}

uint64_t type metadata accessor for MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest()
{
  result = qword_1EC7F62E8;
  if (!qword_1EC7F62E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5417790(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Collaborator();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.playlist.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D5614898();
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.collaborator.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest() + 20);

  return sub_1D5417898(v3, a1);
}

uint64_t sub_1D5417898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Collaborator();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.approve()()
{
  OUTLINED_FUNCTION_60();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D50D5BD0;

  return sub_1D5417988(1);
}

uint64_t sub_1D5417988(char a1)
{
  *(v2 + 144) = v1;
  *(v2 + 232) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0) - 8) + 64) + 15;
  *(v2 + 152) = swift_task_alloc();
  v4 = sub_1D560D838();
  *(v2 + 160) = v4;
  v5 = *(v4 - 8);
  *(v2 + 168) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530) - 8) + 64) + 15;
  *(v2 + 192) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5417AC8, 0, 0);
}

uint64_t sub_1D5417AC8()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 144);
  sub_1D5614898();
  sub_1D560EC98();
  sub_1D560D5C8();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v7 = sub_1D560D4C8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v7);
  v9 = *(v0 + 192);
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(*(v0 + 192), &unk_1EC7EBF20, &unk_1D561F530);
    v10 = 4;
LABEL_5:
    sub_1D4F763B4();
    swift_allocError();
    *v18 = v10;
    swift_willThrow();
    v20 = *(v0 + 184);
    v19 = *(v0 + 192);
    v21 = *(v0 + 176);
    v22 = *(v0 + 152);

    OUTLINED_FUNCTION_55();

    return v23();
  }

  v11 = *(v0 + 176);
  v12 = *(v0 + 152);
  v13 = *(v0 + 160);
  v14 = *(v0 + 144);
  sub_1D560D4B8();
  (*(*(v7 - 8) + 8))(v9, v7);
  v15 = *(type metadata accessor for MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest() + 20);
  type metadata accessor for Playlist.Collaborator();
  sub_1D54185D8(&unk_1EDD52D30, type metadata accessor for Playlist.Collaborator);
  sub_1D560EC98();
  sub_1D560D7A8();
  v6(v11, v13);
  v16 = sub_1D560F148();
  if (__swift_getEnumTagSinglePayload(v12, 1, v16) == 1)
  {
    v17 = *(v0 + 152);

    sub_1D4E50004(v17, &unk_1EC7F1970, &qword_1D561F4A0);
    v10 = 2;
    goto LABEL_5;
  }

  v25 = *(v0 + 152);
  v26 = *(v0 + 232);
  sub_1D560F138();
  (*(*(v16 - 8) + 8))(v25, v16);
  v27 = [objc_opt_self() sharedCloudController];
  *(v0 + 200) = v27;
  v28 = sub_1D5614D38();
  *(v0 + 208) = v28;

  v29 = sub_1D5614D38();
  *(v0 + 216) = v29;

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1D5417ED0;
  v30 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D4FE2404;
  *(v0 + 104) = &block_descriptor_24;
  *(v0 + 112) = v30;
  [v27 respondToPendingCollaborator:v28 onCollaborationWithPersistentID:v29 withApproval:v26 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D5417ED0()
{
  OUTLINED_FUNCTION_60();
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_1D5418080;
  }

  else
  {
    v3 = sub_1D5417FDC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D5417FDC()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = *(v0 + 152);

  OUTLINED_FUNCTION_55();

  return v7();
}

uint64_t sub_1D5418080()
{
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  swift_willThrow();

  v5 = v0[28];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[22];
  v9 = v0[19];

  OUTLINED_FUNCTION_55();

  return v10();
}

uint64_t MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.reject()()
{
  OUTLINED_FUNCTION_60();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D505A824;

  return sub_1D5417988(0);
}

uint64_t static MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s16MusicKitInternal0A21CollaborativePlaylistV23EndCollaborationRequestV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest() + 20);

  return static Playlist.Collaborator.== infix(_:_:)((a1 + v4), (a2 + v4));
}

uint64_t MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.hash(into:)()
{
  sub_1D5614898();
  OUTLINED_FUNCTION_1_167();
  sub_1D54185D8(v1, v2);
  sub_1D5614CB8();
  v3 = (v0 + *(type metadata accessor for MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest() + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_1D5614E28();
  v6 = *(type metadata accessor for Playlist.Collaborator() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_0_223();
  sub_1D54185D8(v7, v8);
  return sub_1D5614CB8();
}

uint64_t MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5614898();
  OUTLINED_FUNCTION_1_167();
  sub_1D54185D8(v1, v2);
  sub_1D5614CB8();
  v3 = (v0 + *(type metadata accessor for MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest() + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_1D5614E28();
  v6 = *(type metadata accessor for Playlist.Collaborator() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_0_223();
  sub_1D54185D8(v7, v8);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D54183E0(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  sub_1D5614898();
  sub_1D54185D8(&qword_1EC7EB6C8, MEMORY[0x1E69773E0]);
  sub_1D5614CB8();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_1D5614E28();
  v7 = *(type metadata accessor for Playlist.Collaborator() + 20);
  sub_1D5611AB8();
  sub_1D54185D8(&qword_1EC7ECF08, MEMORY[0x1E6976320]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D5418554()
{
  result = sub_1D5614898();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Playlist.Collaborator();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D54185D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for StorePlatformUserProfile()
{
  result = qword_1EDD55548;
  if (!qword_1EDD55548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D54186A0()
{
  sub_1D4E518A0(319, &qword_1EDD5F550);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1D4F55058();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_1D4E518A0(319, &qword_1EDD52708);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_1D4E518A0(319, &qword_1EDD5F070);
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_1D4E518A0(319, &qword_1EDD53A08);
        v1 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1D541884C(_BYTE *a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v116[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  OUTLINED_FUNCTION_59_0();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v116[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  v21 = OUTLINED_FUNCTION_14(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_59_0();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v116[-v28];
  if (*a1 == 2)
  {
    if (*a2 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v35 || ((v31 ^ v32) & 1) != 0)
    {
      return result;
    }
  }

  v119 = v16;
  v120 = type metadata accessor for StorePlatformUserProfile();
  v33 = v120[5];
  v118 = v20;
  v34 = *(v20 + 48);
  sub_1D4F55DC8(&a1[v33], v29);
  sub_1D4F55DC8(&a2[v33], &v29[v34]);
  OUTLINED_FUNCTION_10(v29);
  if (!v35)
  {
    sub_1D4F55DC8(v29, v19);
    OUTLINED_FUNCTION_10(&v29[v34]);
    if (!v35)
    {
      (*(v6 + 32))(v11, &v29[v34], v4);
      OUTLINED_FUNCTION_10_108();
      sub_1D541A7F0(v37, v38);
      v117 = sub_1D5614D18();
      v39 = v26;
      v40 = a1;
      v41 = a2;
      v42 = v6;
      v43 = *(v6 + 8);
      v43(v11, v4);
      v43(v19, v4);
      v6 = v42;
      a2 = v41;
      a1 = v40;
      v26 = v39;
      sub_1D4E50004(v29, &qword_1EC7EB5B8, &unk_1D56206A0);
      if ((v117 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_19;
    }

    (*(v6 + 8))(v19, v4);
LABEL_14:
    v36 = v29;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_10(&v29[v34]);
  if (!v35)
  {
    goto LABEL_14;
  }

  sub_1D4E50004(v29, &qword_1EC7EB5B8, &unk_1D56206A0);
LABEL_19:
  v44 = v120;
  v45 = v120[6];
  v46 = &a1[v45];
  v47 = a1[v45 + 8];
  v48 = &a2[v45];
  v49 = a2[v45 + 8];
  if (v47)
  {
    if (!v49)
    {
      return 0;
    }
  }

  else
  {
    if (*v46 != *v48)
    {
      LOBYTE(v49) = 1;
    }

    if (v49)
    {
      return 0;
    }
  }

  v50 = v120[7];
  v51 = *&a1[v50];
  v52 = *&a1[v50 + 8];
  v53 = &a2[v50];
  v54 = v51 == *v53 && v52 == v53[1];
  if (!v54 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v55 = v44[8];
  OUTLINED_FUNCTION_24_3();
  if (v58)
  {
    if (!v56)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v57);
    v61 = v35 && v59 == v60;
    if (!v61 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v56)
  {
    return 0;
  }

  v62 = v44[9];
  OUTLINED_FUNCTION_24_3();
  if (v65)
  {
    if (!v63)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v64);
    v68 = v35 && v66 == v67;
    if (!v68 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v63)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_173(v44[10]);
  if (v35)
  {
    if (v69 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v70 || ((v71 ^ v72) & 1) != 0)
    {
      return result;
    }
  }

  OUTLINED_FUNCTION_3_173(v44[11]);
  if (v35)
  {
    if (v73 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v74 || ((v75 ^ v76) & 1) != 0)
    {
      return result;
    }
  }

  OUTLINED_FUNCTION_3_173(v44[12]);
  if (v35)
  {
    if (v77 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v78 || ((v79 ^ v80) & 1) != 0)
    {
      return result;
    }
  }

  OUTLINED_FUNCTION_3_173(v44[13]);
  if (v35)
  {
    if (v81 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v82 || ((v83 ^ v84) & 1) != 0)
    {
      return result;
    }
  }

  OUTLINED_FUNCTION_3_173(v44[14]);
  if (v35)
  {
    if (v85 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v86 || ((v87 ^ v88) & 1) != 0)
    {
      return result;
    }
  }

  OUTLINED_FUNCTION_3_173(v44[15]);
  if (v35)
  {
    if (v89 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v90 || ((v91 ^ v92) & 1) != 0)
    {
      return result;
    }
  }

  OUTLINED_FUNCTION_3_173(v44[16]);
  if (v35)
  {
    if (v93 != 2)
    {
      return 0;
    }

    goto LABEL_90;
  }

  result = OUTLINED_FUNCTION_39();
  if (!v94 && ((v95 ^ v96) & 1) == 0)
  {
LABEL_90:
    v97 = v44[17];
    v98 = a1;
    v99 = *&a2[v97 + 8];
    if (*&a1[v97 + 8])
    {
      if (!v99)
      {
        return 0;
      }

      OUTLINED_FUNCTION_31_0(&a1[v97]);
      v102 = v35 && v100 == v101;
      if (!v102 && (sub_1D5616168() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v99)
    {
      return 0;
    }

    v103 = v120[18];
    v104 = *(v118 + 48);
    sub_1D4F55DC8(&a1[v103], v26);
    sub_1D4F55DC8(&a2[v103], v26 + v104);
    OUTLINED_FUNCTION_10(v26);
    if (v35)
    {
      OUTLINED_FUNCTION_10(v26 + v104);
      if (v35)
      {
        sub_1D4E50004(v26, &qword_1EC7EB5B8, &unk_1D56206A0);
LABEL_109:
        v111 = v120[19];
        v112 = *&a2[v111 + 8];
        if (*&v98[v111 + 8])
        {
          if (!v112)
          {
            return 0;
          }

          OUTLINED_FUNCTION_31_0(&v98[v111]);
          v115 = v35 && v113 == v114;
          return v115 || (sub_1D5616168() & 1) != 0;
        }

        return !v112;
      }
    }

    else
    {
      sub_1D4F55DC8(v26, v119);
      OUTLINED_FUNCTION_10(v26 + v104);
      if (!v105)
      {
        (*(v6 + 32))(v11, v26 + v104, v4);
        OUTLINED_FUNCTION_10_108();
        sub_1D541A7F0(v106, v107);
        v108 = v119;
        v109 = sub_1D5614D18();
        v110 = *(v6 + 8);
        v110(v11, v4);
        v110(v108, v4);
        sub_1D4E50004(v26, &qword_1EC7EB5B8, &unk_1D56206A0);
        if ((v109 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_109;
      }

      (*(v6 + 8))(v119, v4);
    }

    v36 = v26;
LABEL_15:
    sub_1D4E50004(v36, &qword_1EC7EC330, &qword_1D56222C0);
    return 0;
  }

  return result;
}

uint64_t sub_1D5418F48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001D56883E0 == a2;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x756F72676B636162 && a2 == 0xEF6567616D49646ELL;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001DLL && 0x80000001D5687B40 == a2;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6449797469746E65 && a2 == 0xE800000000000000;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7954797469746E65 && a2 == 0xEA00000000006570;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000016 && 0x80000001D568DC10 == a2;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000017 && 0x80000001D5687BA0 == a2;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x776F6C6C6F467369 && a2 == 0xEC000000656C6261;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x72616F426E4F7369 && a2 == 0xEB00000000646564;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000013 && 0x80000001D5687B60 == a2;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x7461766972507369 && a2 == 0xE900000000000065;
                        if (v16 || (sub_1D5616168() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6966697265567369 && a2 == 0xEA00000000006465;
                          if (v17 || (sub_1D5616168() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 1701667182 && a2 == 0xE400000000000000;
                            if (v18 || (sub_1D5616168() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x49656C69666F7270 && a2 == 0xEC0000006567616DLL;
                              if (v19 || (sub_1D5616168() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0x72506C6169636F73 && a2 == 0xEF6449656C69666FLL)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_1D5616168();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1D5419424(char a1)
{
  result = 0x756F72676B636162;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0x6449797469746E65;
      break;
    case 4:
      result = 0x7954797469746E65;
      break;
    case 5:
      result = 0x656C646E6168;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0x776F6C6C6F467369;
      break;
    case 9:
      result = 0x72616F426E4F7369;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0x7461766972507369;
      break;
    case 12:
      result = 0x6966697265567369;
      break;
    case 13:
      result = 1701667182;
      break;
    case 14:
      result = 0x49656C69666F7270;
      break;
    case 15:
      result = 0x72506C6169636F73;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1D5419620(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6308, &unk_1D5663128);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v43 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D541A608();
  sub_1D56163D8();
  v14 = *v3;
  LOBYTE(v44) = 0;
  OUTLINED_FUNCTION_29_0();
  sub_1D5616038();
  if (!v2)
  {
    v15 = type metadata accessor for StorePlatformUserProfile();
    v16 = v15[5];
    LOBYTE(v44) = 1;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D541A71C(&qword_1EC7EC350);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    v18 = &v3[v15[6]];
    v19 = *v18;
    v20 = v18[8];
    OUTLINED_FUNCTION_7(2);
    sub_1D5616058();
    v21 = &v3[v15[7]];
    v23 = *v21;
    v22 = *(v21 + 1);
    v43[1] = v17;
    *&v44 = v23;
    *(&v44 + 1) = v22;
    v45 = 3;
    v24 = sub_1D4F89BA0();
    OUTLINED_FUNCTION_29_0();
    sub_1D56160C8();
    v43[0] = v24;
    v25 = &v3[v15[8]];
    v26 = *v25;
    v27 = *(v25 + 1);
    OUTLINED_FUNCTION_7(4);
    sub_1D5616028();
    v28 = &v3[v15[9]];
    v29 = *v28;
    v30 = *(v28 + 1);
    OUTLINED_FUNCTION_7(5);
    sub_1D5616028();
    v31 = v3[v15[10]];
    OUTLINED_FUNCTION_24_9(6);
    v32 = v3[v15[11]];
    OUTLINED_FUNCTION_24_9(7);
    v33 = v3[v15[12]];
    OUTLINED_FUNCTION_24_9(8);
    v34 = v3[v15[13]];
    OUTLINED_FUNCTION_24_9(9);
    v35 = v3[v15[14]];
    OUTLINED_FUNCTION_24_9(10);
    v36 = v3[v15[15]];
    OUTLINED_FUNCTION_24_9(11);
    v37 = v3[v15[16]];
    OUTLINED_FUNCTION_24_9(12);
    v38 = &v3[v15[17]];
    v39 = *v38;
    v40 = *(v38 + 1);
    OUTLINED_FUNCTION_7(13);
    sub_1D5616028();
    v41 = v15[18];
    LOBYTE(v44) = 14;
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    v44 = *&v3[v15[19]];
    v45 = 15;
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1D54199B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_59_0();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  if (*v0 != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  v17 = type metadata accessor for StorePlatformUserProfile();
  sub_1D4F55DC8(&v0[v17[5]], v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v1) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v3 + 32))(v8, v16, v1);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_1_8();
    sub_1D541A7F0(v18, v19);
    OUTLINED_FUNCTION_25_61();
    (*(v3 + 8))(v8, v1);
  }

  v20 = &v0[v17[6]];
  if (v20[8] == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v21 = *v20;
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v21);
  }

  v22 = &v0[v17[7]];
  v23 = *v22;
  v24 = v22[1];
  sub_1D5614E28();
  v25 = &v0[v17[8]];
  if (v25[1])
  {
    v26 = *v25;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_22_67();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v27 = &v0[v17[9]];
  if (v27[1])
  {
    v28 = *v27;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_22_67();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_17_82(v17[10]);
  if (!v29)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_17_82(v17[11]);
  if (!v29)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_17_82(v17[12]);
  if (!v29)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_17_82(v17[13]);
  if (!v29)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_17_82(v17[14]);
  if (!v29)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_17_82(v17[15]);
  if (!v29)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_17_82(v17[16]);
  if (!v29)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  v30 = &v0[v17[17]];
  if (v30[1])
  {
    v31 = *v30;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_22_67();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F55DC8(&v0[v17[18]], v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v1) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v3 + 32))(v8, v13, v1);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_1_8();
    sub_1D541A7F0(v32, v33);
    OUTLINED_FUNCTION_25_61();
    (*(v3 + 8))(v8, v1);
  }

  v34 = &v0[v17[19]];
  if (!v34[1])
  {
    return OUTLINED_FUNCTION_36();
  }

  v35 = *v34;
  OUTLINED_FUNCTION_27();
  return sub_1D5614E28();
}

uint64_t sub_1D5419E14()
{
  sub_1D56162D8();
  sub_1D54199B0();
  return sub_1D5616328();
}

uint64_t sub_1D5419E54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_59_0();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6300, &qword_1D5663120);
  OUTLINED_FUNCTION_4(v53);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v49 - v18;
  v56 = type metadata accessor for StorePlatformUserProfile();
  v20 = OUTLINED_FUNCTION_14(v56);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v54 = a1;
  v55 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[4];
  v25 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D541A608();
  sub_1D5616398();
  if (!v2)
  {
    v50 = a2;
    v51 = v9;
    v52 = v14;
    LOBYTE(v57) = 0;
    OUTLINED_FUNCTION_6_133();
    v26 = sub_1D5615F48();
    v28 = v55;
    *v55 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    LOBYTE(v57) = 1;
    v29 = sub_1D541A71C(&qword_1EDD531B8);
    OUTLINED_FUNCTION_6_133();
    sub_1D5615F78();
    v30 = v56;
    v49 = v29;
    sub_1D4F55E8C(v12, &v28[v56[5]]);
    OUTLINED_FUNCTION_0_224(2);
    v31 = sub_1D5615F68();
    v32 = &v28[v30[6]];
    *v32 = v31;
    v32[8] = v33 & 1;
    v58 = 3;
    sub_1D4F89C9C();
    OUTLINED_FUNCTION_6_133();
    sub_1D5615FD8();
    v34 = *(&v57 + 1);
    v35 = &v28[v30[7]];
    *v35 = v57;
    v35[1] = v34;
    OUTLINED_FUNCTION_0_224(4);
    v36 = sub_1D5615F38();
    v37 = &v28[v30[8]];
    *v37 = v36;
    v37[1] = v38;
    OUTLINED_FUNCTION_0_224(5);
    v39 = sub_1D5615F38();
    v40 = &v28[v30[9]];
    *v40 = v39;
    v40[1] = v41;
    OUTLINED_FUNCTION_0_224(6);
    v28[v30[10]] = sub_1D5615F48();
    OUTLINED_FUNCTION_0_224(7);
    v28[v30[11]] = sub_1D5615F48();
    OUTLINED_FUNCTION_0_224(8);
    v28[v30[12]] = sub_1D5615F48();
    OUTLINED_FUNCTION_0_224(9);
    v55[v56[13]] = sub_1D5615F48();
    OUTLINED_FUNCTION_0_224(10);
    v55[v56[14]] = sub_1D5615F48();
    OUTLINED_FUNCTION_0_224(11);
    v55[v56[15]] = sub_1D5615F48();
    OUTLINED_FUNCTION_0_224(12);
    v55[v56[16]] = sub_1D5615F48();
    OUTLINED_FUNCTION_0_224(13);
    v42 = sub_1D5615F38();
    v43 = &v55[v56[17]];
    *v43 = v42;
    v43[1] = v44;
    LOBYTE(v57) = 14;
    OUTLINED_FUNCTION_6_133();
    sub_1D5615F78();
    sub_1D4F55E8C(v51, &v55[v56[18]]);
    v58 = 15;
    OUTLINED_FUNCTION_6_133();
    sub_1D5615F78();
    v45 = OUTLINED_FUNCTION_15_84();
    v46(v45);
    v47 = v55;
    *&v55[v56[19]] = v57;
    sub_1D541A65C(v47, v50);
    __swift_destroy_boxed_opaque_existential_1(v54);
    return sub_1D541A6C0(v47);
  }

  OUTLINED_FUNCTION_11_109();
  v27 = v56;
  result = __swift_destroy_boxed_opaque_existential_1(v54);
  if (v12)
  {
    result = OUTLINED_FUNCTION_46_4(v27[7]);
    if (v19)
    {
      goto LABEL_10;
    }

LABEL_5:
    if (!v24)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  if (!v19)
  {
    goto LABEL_5;
  }

LABEL_10:
  result = OUTLINED_FUNCTION_46_4(v27[8]);
  if ((v24 & 1) == 0)
  {
LABEL_11:
    if (v25)
    {
      return OUTLINED_FUNCTION_46_4(v27[17]);
    }

    return result;
  }

LABEL_6:
  result = OUTLINED_FUNCTION_46_4(v27[9]);
  if (v25)
  {
    return OUTLINED_FUNCTION_46_4(v27[17]);
  }

  return result;
}

uint64_t sub_1D541A4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5418F48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D541A518(uint64_t a1)
{
  v2 = sub_1D541A608();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D541A554(uint64_t a1)
{
  v2 = sub_1D541A608();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D541A5CC()
{
  sub_1D56162D8();
  sub_1D54199B0();
  return sub_1D5616328();
}

unint64_t sub_1D541A608()
{
  result = qword_1EDD55578[0];
  if (!qword_1EDD55578[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD55578);
  }

  return result;
}

uint64_t sub_1D541A65C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformUserProfile();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D541A6C0(uint64_t a1)
{
  v2 = type metadata accessor for StorePlatformUserProfile();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D541A71C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    v3 = MEMORY[0x1E6975968];
    sub_1D541A88C(&qword_1EDD533A8, MEMORY[0x1E6975968]);
    sub_1D541A88C(&qword_1EDD533B0, v3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D541A7F0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D541A88C(a2, MEMORY[0x1E6975968]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D541A88C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D541A8D4()
{
  v0 = sub_1D5610088();
  __swift_allocate_value_buffer(v0, qword_1EDD76B70);
  __swift_project_value_buffer(v0, qword_1EDD76B70);
  return sub_1D560FE68();
}

_BYTE *storeEnumTagSinglePayload for StorePlatformUserProfile.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D541AA00()
{
  result = qword_1EC7F6310[0];
  if (!qword_1EC7F6310[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC7F6310);
  }

  return result;
}

unint64_t sub_1D541AA58()
{
  result = qword_1EDD55568;
  if (!qword_1EDD55568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD55568);
  }

  return result;
}

unint64_t sub_1D541AAB0()
{
  result = qword_1EDD55570;
  if (!qword_1EDD55570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD55570);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_25_61()
{

  return sub_1D5614CB8();
}

void static MusicIntentDonation.Donator.scheduleDonation(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - v10;
  (*(a4 + 24))(&v23, a3, a4);
  if (sub_1D541B200(a3, a4))
  {
    if ((*(a4 + 40))(a3, a4))
    {

      v12 = sub_1D5615458();
      __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = a3;
      v13[5] = a4;
      v13[6] = a1;
      v13[7] = a2;

      sub_1D4F405A0(0, 0, v11, &unk_1D5663258, v13);

      sub_1D4E6C9CC(v11, &qword_1EC7EB710, &qword_1D561F440);
      return;
    }

    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_2_82();
    }

    v19 = sub_1D560C758();
    __swift_project_value_buffer(v19, qword_1EDD76AF0);

    v22 = sub_1D560C738();
    v15 = sub_1D56156E8();

    if (os_log_type_enabled(v22, v15))
    {
      OUTLINED_FUNCTION_142();
      v16 = OUTLINED_FUNCTION_110();
      v23 = v16;
      v20 = OUTLINED_FUNCTION_11_110(4.8149e-34);

      *(v11 + 4) = v20;
      v18 = "MusicIntentDonator: %s is disabled.";
      goto LABEL_12;
    }
  }

  else
  {
    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_2_82();
    }

    v14 = sub_1D560C758();
    __swift_project_value_buffer(v14, qword_1EDD76AF0);

    v22 = sub_1D560C738();
    v15 = sub_1D56156E8();

    if (os_log_type_enabled(v22, v15))
    {
      OUTLINED_FUNCTION_142();
      v16 = OUTLINED_FUNCTION_110();
      v23 = v16;
      v17 = OUTLINED_FUNCTION_11_110(4.8149e-34);

      *(v11 + 4) = v17;
      v18 = "MusicIntentDonator: %s is not defined in IntentDonation of Info.plist";
LABEL_12:
      _os_log_impl(&dword_1D4E3F000, v22, v15, v18, v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_54();

      return;
    }
  }

  v21 = v22;
}

uint64_t static MusicIntentDonation.Donator.deleteAll()(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D541AED4, 0, 0);
}

uint64_t sub_1D541AED4()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = objc_opt_self();
  (*(v2 + 32))(v1, v2);
  v4 = sub_1D5614D38();
  v0[20] = v4;

  v0[2] = v0;
  v0[3] = sub_1D541B038;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D4FD9A40;
  v0[13] = &block_descriptor_25;
  v0[14] = v5;
  [v3 deleteInteractionsWithGroupIdentifier:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D541B038()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 168) = v4;
  if (v4)
  {
    v5 = sub_1D541B194;
  }

  else
  {
    v5 = sub_1D541B138;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D541B138()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D541B194()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  swift_willThrow();

  OUTLINED_FUNCTION_55();
  v4 = *(v0 + 168);

  return v3();
}

BOOL sub_1D541B200(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(&v15);
  v2 = "INPlayMediaIntent";
  v3 = 0xD000000000000016;
  if (v15 == 1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = "INAddMediaIntent";
  }

  if (v15)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xD000000000000011;
  }

  if (v15)
  {
    v5 = v2;
  }

  else
  {
    v5 = "";
  }

  v6 = v5 | 0x8000000000000000;
  static ClientInfo.optionalDefault.getter(v13);
  if (*(&v13[0] + 1) && (v7 = v14, , v8 = sub_1D4E6C9CC(v13, &qword_1EC7ED470, &qword_1D5625260), v7))
  {
    v12[0] = v4;
    v12[1] = v6;
    MEMORY[0x1EEE9AC00](v8);
    v11[2] = v12;
    v9 = sub_1D4F25A04(sub_1D4FE1F9C, v11, v7);
  }

  else
  {

    return 0;
  }

  return v9;
}

uint64_t sub_1D541B350(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v10 = sub_1D56158D8();
  v7[21] = v10;
  v11 = *(v10 - 8);
  v7[22] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v7[23] = v13;
  v14 = *(a6 - 8);
  v7[24] = v14;
  v15 = *(v14 + 64) + 15;
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v19 = (a4 + *a4);
  v16 = a4[1];
  v17 = swift_task_alloc();
  v7[28] = v17;
  *v17 = v7;
  v17[1] = sub_1D541B524;

  return v19(v13);
}

uint64_t sub_1D541B524()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 224);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D541B618, 0, 0);
}

uint64_t sub_1D541B618()
{
  v1 = v0[23];
  v2 = v0[19];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(v0[22] + 8))(v1, v0[21]);
    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_2_82();
    }

    v3 = sub_1D560C758();
    __swift_project_value_buffer(v3, qword_1EDD76AF0);
    v4 = sub_1D560C738();
    v5 = sub_1D56156E8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D4E3F000, v4, v5, "MusicIntentDonator: intentBuilder returned nil, I will not donate anything.", v6, 2u);
      OUTLINED_FUNCTION_54();
    }

    OUTLINED_FUNCTION_4_133();

    OUTLINED_FUNCTION_55();

    return v7();
  }

  else
  {
    v16 = v0[20];
    (*(v0[24] + 32))(v0[27], v1, v2);
    v9 = *(v16 + 48);
    v15 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    v0[29] = v11;
    *v11 = v0;
    v11[1] = sub_1D541B870;
    v12 = v0[27];
    v14 = v0[19];
    v13 = v0[20];

    return v15(v14, v13);
  }
}

uint64_t sub_1D541B870()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  v4 = *(v3 + 232);
  *v2 = *v0;
  *(v1 + 240) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D541B960, 0, 0);
}

uint64_t sub_1D541B960()
{
  v39 = v0;
  v1 = v0[30];
  if (!v1)
  {
    if (qword_1EDD544B0 != -1)
    {
      OUTLINED_FUNCTION_2_82();
    }

    v13 = v0[26];
    v14 = v0[27];
    v15 = v0[24];
    v16 = v0[19];
    v17 = sub_1D560C758();
    __swift_project_value_buffer(v17, qword_1EDD76AF0);
    v18 = *(v15 + 16);
    v18(v13, v14, v16);
    v19 = sub_1D560C738();
    v20 = sub_1D56156E8();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[26];
    if (v21)
    {
      v37 = v20;
      v23 = v0[24];
      v24 = v0[25];
      v25 = v0[19];
      OUTLINED_FUNCTION_142();
      v36 = OUTLINED_FUNCTION_110();
      v38 = v36;
      *v16 = 136446210;
      v18(v24, v22, v25);
      v26 = sub_1D5614DB8();
      v28 = v27;
      v29 = *(v23 + 8);
      v29(v22, v25);
      v30 = sub_1D4E6835C(v26, v28, &v38);

      *(v16 + 4) = v30;
      _os_log_impl(&dword_1D4E3F000, v19, v37, "MusicIntentDonator: %{public}s did not provide an INIntent to donate, I will not donate anything.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_54();
    }

    else
    {
      v31 = v0[24];
      v32 = v0[19];

      v29 = *(v31 + 8);
      v29(v22, v32);
    }

    v29(v0[27], v0[19]);
    OUTLINED_FUNCTION_4_133();

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_89();

    __asm { BRAA            X1, X16 }
  }

  sub_1D541C4D4();
  v2 = v1;
  v3 = sub_1D4FE0510(v2, 0);
  v0[31] = v3;
  v4 = [v2 identifier];
  if (v4)
  {
    v5 = v4;
    [v3 setIdentifier_];
  }

  v6 = v0[27];
  v8 = v0[19];
  v7 = v0[20];
  swift_getDynamicType();
  (*(v7 + 32))(v8, v7);
  v9 = sub_1D5614D38();

  [v3 setGroupIdentifier_];

  v0[2] = v0;
  v0[3] = sub_1D541BD24;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D4FD9A40;
  v0[13] = &block_descriptor_11;
  v0[14] = v10;
  [v3 donateInteractionWithCompletion_];
  OUTLINED_FUNCTION_89();

  return MEMORY[0x1EEE6DEC8](v11);
}

uint64_t sub_1D541BD24()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 256) = v4;
  if (v4)
  {
    v5 = sub_1D541BFF4;
  }

  else
  {
    v5 = sub_1D541BE24;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D541BE24()
{
  v21 = v0;
  if (qword_1EDD544B0 != -1)
  {
    OUTLINED_FUNCTION_2_82();
  }

  v1 = *(v0 + 248);
  v2 = sub_1D560C758();
  __swift_project_value_buffer(v2, qword_1EDD76AF0);
  v3 = v1;
  v4 = sub_1D560C738();
  v5 = sub_1D56156E8();

  v6 = os_log_type_enabled(v4, v5);
  v8 = *(v0 + 240);
  v7 = *(v0 + 248);
  if (v6)
  {
    OUTLINED_FUNCTION_142();
    v9 = OUTLINED_FUNCTION_110();
    v20 = v9;
    *v3 = 136446210;
    v10 = v7;
    v11 = [v10 description];
    v12 = sub_1D5614D68();
    v14 = v13;

    v15 = sub_1D4E6835C(v12, v14, &v20);

    *(v3 + 1) = v15;
    _os_log_impl(&dword_1D4E3F000, v4, v5, "MusicIntentDonator: Successfully donated %{public}s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_54();
  }

  else
  {
  }

  v16 = OUTLINED_FUNCTION_9_113();
  v17(v16);
  OUTLINED_FUNCTION_4_133();

  OUTLINED_FUNCTION_55();

  return v18();
}

void sub_1D541BFF4()
{
  v1 = v0[32];
  swift_willThrow();
  if (qword_1EDD544B0 != -1)
  {
    OUTLINED_FUNCTION_2_82();
  }

  v3 = v0[31];
  v2 = v0[32];
  v4 = sub_1D560C758();
  __swift_project_value_buffer(v4, qword_1EDD76AF0);
  v5 = v3;
  v6 = v2;
  v7 = sub_1D560C738();
  v8 = sub_1D56156C8();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[31];
  v10 = v0[32];
  v12 = v0[30];
  if (v9)
  {
    v28 = v0[30];
    v13 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v13 = 136446466;
    v14 = v11;
    v15 = [v14 description];
    v16 = sub_1D5614D68();
    v18 = v17;

    v19 = sub_1D4E6835C(v16, v18, v29);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2082;
    v0[18] = v10;
    v20 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v21 = sub_1D5614DB8();
    v23 = sub_1D4E6835C(v21, v22, v29);

    *(v13 + 14) = v23;
    _os_log_impl(&dword_1D4E3F000, v7, v8, "MusicIntentDonator: Failed to donate %{public}s because of error: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  else
  {
  }

  v24 = OUTLINED_FUNCTION_9_113();
  v25(v24);
  OUTLINED_FUNCTION_4_133();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_89();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1D541C264(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D541C338;

  return sub_1D541B350(a1, v6, v7, v9, v8, v4, v5);
}

uint64_t sub_1D541C338()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 16);
  v5 = *v0;

  OUTLINED_FUNCTION_55();

  return v3();
}

_BYTE *sub_1D541C420(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D541C4D4()
{
  result = qword_1EDD526E8;
  if (!qword_1EDD526E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD526E8);
  }

  return result;
}

BOOL static LegacyModelCodableMusicPin.Attributes.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4DE0, &qword_1D5663280);
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F63C8, &qword_1D5663288);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F63D0, &qword_1D5663290);
  OUTLINED_FUNCTION_14(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_19_0();
  v22 = *a1;
  v23 = *a2;
  if (v22 == 3)
  {
    if (v23 != 3)
    {
      return 0;
    }
  }

  else if (v22 != v23)
  {
    return 0;
  }

  v24 = type metadata accessor for LegacyModelCodableMusicPin.Attributes(0);
  v25 = *(v24 + 20);
  v26 = *(v18 + 48);
  sub_1D541C848(&a1[v25], v3);
  sub_1D541C848(&a2[v25], v3 + v26);
  OUTLINED_FUNCTION_37_39(v3, 1);
  if (v27)
  {
    OUTLINED_FUNCTION_37_39(v3 + v26, 1);
    if (v27)
    {
      sub_1D4E50004(v3, &qword_1EC7F63C8, &qword_1D5663288);
      goto LABEL_16;
    }

LABEL_13:
    sub_1D4E50004(v3, &qword_1EC7F63D0, &qword_1D5663290);
    return 0;
  }

  sub_1D541C848(v3, v17);
  OUTLINED_FUNCTION_37_39(v3 + v26, 1);
  if (v27)
  {
    (*(v8 + 8))(v17, v6);
    goto LABEL_13;
  }

  (*(v8 + 32))(v2, v3 + v26, v6);
  sub_1D541CFBC(&qword_1EC7F63D8, &qword_1EC7F4E18);
  v29 = sub_1D5614D18();
  v30 = *(v8 + 8);
  v30(v2, v6);
  v30(v17, v6);
  sub_1D4E50004(v3, &qword_1EC7F63C8, &qword_1D5663288);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v31 = *(v24 + 24);
  v32 = &a1[v31];
  v33 = a1[v31 + 8];
  v34 = &a2[v31];
  v35 = a2[v31 + 8];
  if (v33)
  {
    return (v35 & 1) != 0;
  }

  if (*v32 != *v34)
  {
    v35 = 1;
  }

  return (v35 & 1) == 0;
}

uint64_t sub_1D541C848(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F63C8, &qword_1D5663288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D541C8B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1835365481 && a2 == 0xE400000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000)
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

uint64_t sub_1D541C9C4(char a1)
{
  if (!a1)
  {
    return 0x6E6F69746361;
  }

  if (a1 == 1)
  {
    return 1835365481;
  }

  return 0x6E6F697469736F70;
}

uint64_t sub_1D541CA30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D541C8B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D541CA58(uint64_t a1)
{
  v2 = sub_1D541CC9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D541CA94(uint64_t a1)
{
  v2 = sub_1D541CC9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LegacyModelCodableMusicPin.Attributes.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F63E0, &qword_1D5663298);
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D541CC9C();
  OUTLINED_FUNCTION_15_35();
  v19 = *v4;
  sub_1D541CCF0();
  OUTLINED_FUNCTION_10_43();
  sub_1D5616068();
  if (!v2)
  {
    v13 = type metadata accessor for LegacyModelCodableMusicPin.Attributes(0);
    v14 = *(v13 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4DE0, &qword_1D5663280);
    sub_1D541D424(&qword_1EC7F63F8);
    OUTLINED_FUNCTION_10_43();
    sub_1D5616068();
    v15 = &v4[*(v13 + 24)];
    v16 = *v15;
    v17 = v15[8];
    OUTLINED_FUNCTION_10_43();
    sub_1D5616058();
  }

  return (*(v8 + 8))(v3, v6);
}

unint64_t sub_1D541CC9C()
{
  result = qword_1EC7F63E8;
  if (!qword_1EC7F63E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F63E8);
  }

  return result;
}

unint64_t sub_1D541CCF0()
{
  result = qword_1EC7F63F0;
  if (!qword_1EC7F63F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F63F0);
  }

  return result;
}

uint64_t sub_1D541CD44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LegacyModelCodableMusicPin.Attributes.hash(into:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4DE0, &qword_1D5663280);
  OUTLINED_FUNCTION_4(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F63C8, &qword_1D5663288);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  v14 = *v0;
  sub_1D56162F8();
  if (v14 != 3)
  {
    MEMORY[0x1DA6EC0D0](v14);
  }

  v15 = type metadata accessor for LegacyModelCodableMusicPin.Attributes(0);
  sub_1D541C848(&v0[*(v15 + 20)], v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v2) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v4 + 32))(v1, v13, v2);
    sub_1D56162F8();
    sub_1D541CFBC(&qword_1EC7F6400, &qword_1EC7F6408);
    sub_1D5614CB8();
    (*(v4 + 8))(v1, v2);
  }

  v16 = &v0[*(v15 + 24)];
  if (v16[8] == 1)
  {
    return sub_1D56162F8();
  }

  v18 = *v16;
  sub_1D56162F8();
  return MEMORY[0x1DA6EC0D0](v18);
}

uint64_t sub_1D541CFBC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F4DE0, &qword_1D5663280);
    sub_1D541CD44(a2, type metadata accessor for LegacyModelCodableMusicPinItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t LegacyModelCodableMusicPin.Attributes.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F63C8, &qword_1D5663288);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6410, &qword_1D56632A0);
  v10 = OUTLINED_FUNCTION_4(v9);
  v41 = v11;
  v42 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v17 = type metadata accessor for LegacyModelCodableMusicPin.Attributes(0);
  v18 = OUTLINED_FUNCTION_14(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v23 = (v22 - v21);
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D541CC9C();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v39 = v17;
  v25 = v41;
  v45 = 0;
  sub_1D51D97B4();
  sub_1D5615F78();
  *v23 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4DE0, &qword_1D5663280);
  v44 = 1;
  sub_1D541D424(&qword_1EC7F6418);
  v26 = v3;
  sub_1D5615F78();
  v27 = v39;
  v28 = *(v39 + 20);
  v38 = v23;
  sub_1D541D4F8(v26, &v23[v28]);
  v43 = 2;
  v29 = sub_1D5615F68();
  v31 = v30;
  (*(v25 + 8))(v16, v42);
  v32 = v38;
  v33 = &v38[*(v27 + 24)];
  *v33 = v29;
  v33[8] = v31 & 1;
  OUTLINED_FUNCTION_0_225();
  sub_1D541E9D8(v32, v40, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  OUTLINED_FUNCTION_5_127();
  return sub_1D541EA38(v32, v35);
}

uint64_t sub_1D541D424(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F4DE0, &qword_1D5663280);
    sub_1D541CD44(&qword_1EC7EC7F8, type metadata accessor for LegacyModelCodableMusicPinItem);
    sub_1D541CD44(&qword_1EC7EC800, type metadata accessor for LegacyModelCodableMusicPinItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D541D4F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F63C8, &qword_1D5663288);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D541D56C(uint64_t a1)
{
  v2 = sub_1D541D628();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D541D5A8(uint64_t a1)
{
  v2 = sub_1D541D628();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D541D628()
{
  result = qword_1EC7F6428;
  if (!qword_1EC7F6428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6428);
  }

  return result;
}

uint64_t sub_1D541D69C(uint64_t a1)
{
  v2 = sub_1D541D758();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D541D6D8(uint64_t a1)
{
  v2 = sub_1D541D758();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D541D758()
{
  result = qword_1EC7F6438;
  if (!qword_1EC7F6438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6438);
  }

  return result;
}

uint64_t sub_1D541D82C(uint64_t a1)
{
  v2 = sub_1D541D9F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D541D868(uint64_t a1)
{
  v2 = sub_1D541D9F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D541D8E8(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1D56163D8();
  return (*(v8 + 8))(v13, v6);
}

unint64_t sub_1D541D9F8()
{
  result = qword_1EC7F6448;
  if (!qword_1EC7F6448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6448);
  }

  return result;
}

uint64_t LegacyModelCodableMusicPin.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LegacyModelCodableMusicPin.attributes.getter()
{
  v2 = *(OUTLINED_FUNCTION_24_63() + 20);
  OUTLINED_FUNCTION_0_225();
  return sub_1D541E9D8(v1 + v3, v0, v4);
}

uint64_t LegacyModelCodableMusicPin.relationships.getter()
{
  result = OUTLINED_FUNCTION_24_63();
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t LegacyModelCodableMusicPin.views.getter()
{
  result = OUTLINED_FUNCTION_24_63();
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t LegacyModelCodableMusicPin.meta.getter()
{
  result = OUTLINED_FUNCTION_24_63();
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_1D541DBE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  v0 = *(sub_1D5610088() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D561C050;
  result = sub_1D560FE18();
  qword_1EC7F63A8 = v3;
  return result;
}

uint64_t sub_1D541DCBC()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EC7F63B0);
  v1 = __swift_project_value_buffer(v0, qword_1EC7F63B0);
  v2 = *MEMORY[0x1E6976828];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static LegacyModelCodableMusicPin.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7E9660 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  v3 = __swift_project_value_buffer(v2, qword_1EC7F63B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static LegacyModelCodableMusicPin.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1D5616168()) && (v5 = type metadata accessor for LegacyModelCodableMusicPin(0), static LegacyModelCodableMusicPin.Attributes.== infix(_:_:)(a1 + v5[5], a2 + v5[5])) && *(a1 + v5[6]) == *(a2 + v5[6]) && *(a1 + v5[7]) == *(a2 + v5[7]))
  {
    v6 = *(a1 + v5[8]) ^ *(a2 + v5[8]) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1D541DEA4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D541DF38(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D541DF8C(uint64_t a1)
{
  v2 = sub_1D541E228();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D541DFC8(uint64_t a1)
{
  v2 = sub_1D541E228();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LegacyModelCodableMusicPin.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6450, &qword_1D56632C0);
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D541E228();
  OUTLINED_FUNCTION_15_35();
  v18 = *v4;
  v22 = v4[1];
  sub_1D4F89BA0();
  OUTLINED_FUNCTION_61_0();
  sub_1D56160C8();
  if (!v2)
  {
    v13 = type metadata accessor for LegacyModelCodableMusicPin(0);
    v14 = v13[5];
    type metadata accessor for LegacyModelCodableMusicPin.Attributes(0);
    OUTLINED_FUNCTION_12_90();
    sub_1D541CD44(v15, v16);
    OUTLINED_FUNCTION_10_43();
    sub_1D56160C8();
    v19 = *(v4 + v13[6]);
    sub_1D541E27C();
    OUTLINED_FUNCTION_61_0();
    sub_1D5616068();
    v20 = *(v4 + v13[7]);
    sub_1D541E2D0();
    OUTLINED_FUNCTION_61_0();
    sub_1D5616068();
    v21 = *(v4 + v13[8]);
    sub_1D541E324();
    OUTLINED_FUNCTION_61_0();
    sub_1D5616068();
  }

  return (*(v8 + 8))(v3, v6);
}

unint64_t sub_1D541E228()
{
  result = qword_1EC7F6458;
  if (!qword_1EC7F6458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6458);
  }

  return result;
}

unint64_t sub_1D541E27C()
{
  result = qword_1EC7F6468;
  if (!qword_1EC7F6468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6468);
  }

  return result;
}

unint64_t sub_1D541E2D0()
{
  result = qword_1EC7F6470;
  if (!qword_1EC7F6470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6470);
  }

  return result;
}

unint64_t sub_1D541E324()
{
  result = qword_1EC7F6478;
  if (!qword_1EC7F6478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6478);
  }

  return result;
}

uint64_t LegacyModelCodableMusicPin.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  sub_1D5614E28();
  v4 = type metadata accessor for LegacyModelCodableMusicPin(0);
  v5 = v0 + v4[5];
  LegacyModelCodableMusicPin.Attributes.hash(into:)();
  v6 = *(v1 + v4[6]);
  sub_1D56162F8();
  v7 = *(v1 + v4[7]);
  sub_1D56162F8();
  v8 = *(v1 + v4[8]);
  return sub_1D56162F8();
}

uint64_t sub_1D541E420(void (*a1)(_BYTE *))
{
  sub_1D56162D8();
  a1(v3);
  return sub_1D5616328();
}

uint64_t LegacyModelCodableMusicPin.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LegacyModelCodableMusicPin.Attributes(0);
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6480, &unk_1D56632C8);
  OUTLINED_FUNCTION_4(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_19_0();
  v15 = type metadata accessor for LegacyModelCodableMusicPin(0);
  v16 = OUTLINED_FUNCTION_14(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v21 = (v20 - v19);
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D541E228();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1D4F89C9C();
  sub_1D5615FD8();
  *v21 = v31;
  v21[1] = v32;
  OUTLINED_FUNCTION_12_90();
  sub_1D541CD44(v23, v24);
  sub_1D5615FD8();
  sub_1D541E878(v10, v21 + v15[5]);
  sub_1D541E8DC();
  OUTLINED_FUNCTION_8_122();
  sub_1D5615F78();
  *(v21 + v15[6]) = 1;
  sub_1D541E930();
  OUTLINED_FUNCTION_8_122();
  sub_1D5615F78();
  *(v21 + v15[7]) = 1;
  sub_1D541E984();
  OUTLINED_FUNCTION_8_122();
  sub_1D5615F78();
  v27 = OUTLINED_FUNCTION_15_85();
  v28(v27);
  *(v21 + v15[8]) = 1;
  OUTLINED_FUNCTION_10_109();
  sub_1D541E9D8(v21, a2, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  OUTLINED_FUNCTION_3_174();
  return sub_1D541EA38(v21, v25);
}

uint64_t sub_1D541E834(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D56162D8();
  a4(v6);
  return sub_1D5616328();
}

uint64_t sub_1D541E878(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyModelCodableMusicPin.Attributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D541E8DC()
{
  result = qword_1EC7F6490;
  if (!qword_1EC7F6490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6490);
  }

  return result;
}

unint64_t sub_1D541E930()
{
  result = qword_1EC7F6498;
  if (!qword_1EC7F6498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6498);
  }

  return result;
}

unint64_t sub_1D541E984()
{
  result = qword_1EC7F64A0;
  if (!qword_1EC7F64A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F64A0);
  }

  return result;
}

uint64_t sub_1D541E9D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D541EA38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t MusicPin.init<A>(_:configuration:sharedRelatedItemStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v115 = a6;
  v116 = *(a4 - 8);
  v117 = a3;
  v10 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_5();
  v106 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEDB8, &qword_1D5640B80);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v107 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F63C8, &qword_1D5663288);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  v114 = v22;
  v23 = OUTLINED_FUNCTION_70_0();
  v112 = type metadata accessor for LegacyModelCodableMusicPin.Attributes(v23);
  v24 = OUTLINED_FUNCTION_14(v112);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v113 = v28 - v27;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4DE0, &qword_1D5663280);
  v29 = OUTLINED_FUNCTION_4(v119);
  v105 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13();
  v104 = v33;
  MEMORY[0x1EEE9AC00](v34);
  v103 = &v100 - v35;
  v36 = OUTLINED_FUNCTION_70_0();
  v37 = type metadata accessor for LegacyModelCodableMusicPin(v36);
  v38 = OUTLINED_FUNCTION_14(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  v123 = v42 - v41;
  OUTLINED_FUNCTION_70_0();
  v43 = type metadata accessor for MusicPinPropertyProvider();
  v44 = OUTLINED_FUNCTION_14(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5();
  v49 = (v48 - v47);
  v51 = *(v50 + 20);
  v52 = type metadata accessor for MusicPin.Item();
  v102 = v51;
  v101 = v52;
  __swift_storeEnumTagSinglePayload(&v49[v51], 1, 1, v52);
  if (qword_1EC7E9050 != -1)
  {
    swift_once();
  }

  v53 = sub_1D560D9A8();
  __swift_project_value_buffer(v53, qword_1EC7F1680);
  v54 = v43[9];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F64A8, &unk_1D56632D8);
  OUTLINED_FUNCTION_11_111();
  sub_1D541CD44(v56, v57);
  v118 = a4;
  v108 = a5;
  sub_1D5610668();
  v58 = &v49[v43[10]];
  sub_1D5610658();
  v59 = sub_1D5610618();
  v110 = v60;
  v111 = v59;
  v109 = sub_1D56105C8();
  v61 = sub_1D56105F8();
  v62 = sub_1D56105E8();
  v122 = v55;
  v120 = a1;
  v63 = sub_1D56105A8();
  *v49 = 3;
  v49[v43[6]] = 4;
  if (qword_1EC7E9388 != -1)
  {
    swift_once();
  }

  v64 = qword_1EC87C4C0;
  v121 = a2;
  if (qword_1EC87C4C0 >> 62)
  {
    sub_1D560CDE8();

    v99 = sub_1D5615E18();

    v64 = v99;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v65 = &v49[v43[7]];
  *&v49[v43[8]] = v64;
  v66 = &v49[v43[11]];
  v67 = v110;
  *v66 = v111;
  v66[1] = v67;
  *&v49[v43[12]] = v109;
  *&v49[v43[13]] = v61;
  *&v49[v43[14]] = v62;
  *&v49[v43[15]] = v63;
  v68 = v123;
  v69 = v120;
  sub_1D5610648();
  v70 = (v68 + *(v37 + 20));
  *v49 = *v70;
  v71 = v112;
  v72 = v113;
  v73 = &v70[*(v112 + 24)];
  v74 = *v73;
  LOBYTE(v73) = v73[8];
  *v65 = v74;
  v65[8] = v73;
  OUTLINED_FUNCTION_0_225();
  sub_1D541E9D8(v75, v72, v76);
  v77 = v114;
  sub_1D541D4F8(v72 + *(v71 + 20), v114);
  v78 = v119;
  OUTLINED_FUNCTION_37_39(v77, 1);
  if (v79)
  {
    sub_1D4E50004(v77, &qword_1EC7F63C8, &qword_1D5663288);
    v85 = v118;
    v92 = v121;
    v83 = v116;
  }

  else
  {
    v80 = v105;
    v81 = v103;
    (*(v105 + 32))(v103, v77, v78);
    v82 = v104;
    (*(v80 + 16))(v104, v81, v78);
    v83 = v116;
    v84 = v106;
    v85 = v118;
    (*(v116 + 16))(v106, v121, v118);
    v86 = v117;

    v87 = v107;
    v88 = v84;
    v69 = v120;
    MusicPin.Item.init<A>(_:configuration:sharedRelatedItemStore:)(v82, v88, v86, v85, v108, v89, v90, v91, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
    (*(v80 + 8))(v81, v119);
    v92 = v121;
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v93, v94, v95, v101);
    sub_1D541F1FC(v87, &v49[v102]);
  }

  v124[3] = v43;
  v124[4] = sub_1D541CD44(&qword_1EC7F1D58, type metadata accessor for MusicPinPropertyProvider);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v124);
  sub_1D541E9D8(v49, boxed_opaque_existential_0, type metadata accessor for MusicPinPropertyProvider);
  MusicPin.init(propertyProvider:)(v124, v115);

  (*(v83 + 8))(v92, v85);
  (*(*(v122 - 8) + 8))(v69);
  OUTLINED_FUNCTION_3_174();
  sub_1D541EA38(v123, v97);
  return sub_1D541EA38(v49, type metadata accessor for MusicPinPropertyProvider);
}

uint64_t sub_1D541F1FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEDB8, &qword_1D5640B80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MusicPin.convertToLegacyModelCodableResource<A>(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v102 = a2;
  v103 = a3;
  v101 = a1;
  v111 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v110 = v9;
  OUTLINED_FUNCTION_70_0();
  v10 = sub_1D5610088();
  v11 = OUTLINED_FUNCTION_22(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v108 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_3();
  v106 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_3();
  v104 = v25;
  OUTLINED_FUNCTION_70_0();
  v109 = sub_1D5612B78();
  v26 = OUTLINED_FUNCTION_4(v109);
  v107 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v113 = v31 - v30;
  v32 = OUTLINED_FUNCTION_70_0();
  v105 = type metadata accessor for LegacyModelCodableMusicPin(v32);
  v33 = OUTLINED_FUNCTION_14(v105);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13();
  v112 = v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = (&v100 - v38);
  OUTLINED_FUNCTION_70_0();
  v40 = type metadata accessor for MusicPin.Item();
  v41 = OUTLINED_FUNCTION_22(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5();
  v46 = v45 - v44;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F63C8, &qword_1D5663288);
  OUTLINED_FUNCTION_22(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v100 - v51;
  v53 = type metadata accessor for LegacyModelCodableMusicPin.Attributes(0);
  v54 = OUTLINED_FUNCTION_14(v53);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_5();
  v59 = (v58 - v57);
  if (qword_1EC7E9020 != -1)
  {
    swift_once();
  }

  sub_1D541CD44(&qword_1EDD5ECA0, type metadata accessor for MusicPin);
  sub_1D541CD44(&qword_1EDD5EC98, type metadata accessor for MusicPin);
  sub_1D560EC28();
  v60 = v4;
  v61 = v116;
  MusicPin.item.getter(v46);
  MusicPin.Item.convertToLegacyModelCodableResource<A>(configuration:)(v101, v102, v103, v62, v63, v64, v65, v66, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
  sub_1D541EA38(v46, type metadata accessor for MusicPin.Item);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4DE0, &qword_1D5663280);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
  if (qword_1EC7E9038 != -1)
  {
    swift_once();
  }

  if (v61 == 3)
  {
    LOBYTE(v61) = 1;
  }

  sub_1D560EC28();
  if (v115)
  {
    v71 = 0;
  }

  else
  {
    v71 = v114;
  }

  *v59 = v61;
  sub_1D541D4F8(v52, &v59[*(v53 + 20)]);
  v72 = &v59[*(v53 + 24)];
  v100 = v59;
  *v72 = v71;
  v72[8] = 0;
  v74 = *v60;
  v73 = v60[1];
  v75 = v105;
  v76 = v105[5];
  OUTLINED_FUNCTION_0_225();
  v77 = v39;
  sub_1D541E9D8(v79, v39 + v78, v80);
  *v39 = v74;
  v39[1] = v73;
  *(v39 + v75[6]) = 1;
  *(v39 + v75[7]) = 1;
  *(v39 + v75[8]) = 1;
  v81 = *(type metadata accessor for MusicPin() + 20);

  sub_1D5611A28();
  sub_1D560D838();
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
  v86 = sub_1D5611C98();
  __swift_storeEnumTagSinglePayload(v106, 1, 1, v86);
  v87 = v113;
  sub_1D5612B38();
  OUTLINED_FUNCTION_10_109();
  sub_1D541E9D8(v39, v112, v88);
  sub_1D5611A98();
  v106 = sub_1D5611A88();
  v104 = v89;
  v90 = v107;
  v91 = v109;
  (*(v107 + 16))(v110, v87, v109);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v91);
  v103 = sub_1D5611A38();
  v102 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  OUTLINED_FUNCTION_11_111();
  sub_1D541CD44(v95, v96);
  sub_1D5610628();
  (*(v90 + 8))(v113, v91);
  OUTLINED_FUNCTION_3_174();
  sub_1D541EA38(v77, v97);
  OUTLINED_FUNCTION_5_127();
  return sub_1D541EA38(v100, v98);
}

unint64_t sub_1D541F908()
{
  result = qword_1EC7F64C8;
  if (!qword_1EC7F64C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F64C8);
  }

  return result;
}

unint64_t sub_1D541F960()
{
  result = qword_1EC7F64D0;
  if (!qword_1EC7F64D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F64D0);
  }

  return result;
}

unint64_t sub_1D541F9B8()
{
  result = qword_1EC7F64D8;
  if (!qword_1EC7F64D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F64D8);
  }

  return result;
}

void sub_1D541FC04()
{
  type metadata accessor for LegacyModelCodableMusicPin.Attributes(319);
  if (v0 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EC7F6500);
    if (v1 <= 0x3F)
    {
      sub_1D4E518A0(319, &qword_1EC7F6508);
      if (v2 <= 0x3F)
      {
        sub_1D4E518A0(319, &qword_1EC7F6510);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D541FD20()
{
  sub_1D4E518A0(319, &qword_1EC7F3250);
  if (v0 <= 0x3F)
  {
    sub_1D541FDDC();
    if (v1 <= 0x3F)
    {
      sub_1D4E518A0(319, &qword_1EDD52708);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D541FDDC()
{
  if (!qword_1EC7F6528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F4DE0, &qword_1D5663280);
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7F6528);
    }
  }
}

_BYTE *sub_1D541FE60(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for LegacyModelCodableMusicPin.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for LegacyModelCodableMusicPin.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D54200F8()
{
  result = qword_1EC7F6530;
  if (!qword_1EC7F6530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6530);
  }

  return result;
}

unint64_t sub_1D5420150()
{
  result = qword_1EC7F6538;
  if (!qword_1EC7F6538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6538);
  }

  return result;
}

unint64_t sub_1D54201A8()
{
  result = qword_1EC7F6540;
  if (!qword_1EC7F6540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6540);
  }

  return result;
}

unint64_t sub_1D5420200()
{
  result = qword_1EC7F6548;
  if (!qword_1EC7F6548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6548);
  }

  return result;
}

unint64_t sub_1D5420258()
{
  result = qword_1EC7F6550;
  if (!qword_1EC7F6550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6550);
  }

  return result;
}

unint64_t sub_1D54202B0()
{
  result = qword_1EC7F6558;
  if (!qword_1EC7F6558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6558);
  }

  return result;
}

unint64_t sub_1D5420308()
{
  result = qword_1EC7F6560;
  if (!qword_1EC7F6560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6560);
  }

  return result;
}

unint64_t sub_1D5420360()
{
  result = qword_1EC7F6568;
  if (!qword_1EC7F6568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6568);
  }

  return result;
}

unint64_t sub_1D54203B8()
{
  result = qword_1EC7F6570;
  if (!qword_1EC7F6570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6570);
  }

  return result;
}

unint64_t sub_1D5420410()
{
  result = qword_1EC7F6578;
  if (!qword_1EC7F6578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6578);
  }

  return result;
}

unint64_t sub_1D5420468()
{
  result = qword_1EC7F6580;
  if (!qword_1EC7F6580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6580);
  }

  return result;
}

unint64_t sub_1D54204C0()
{
  result = qword_1EC7F6588;
  if (!qword_1EC7F6588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6588);
  }

  return result;
}

uint64_t sub_1D54205A0(void *a1)
{
  v2 = OUTLINED_FUNCTION_1_168(a1);
  result = v3(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_1D54205F0(void *a1)
{
  v2 = OUTLINED_FUNCTION_1_168(a1);
  result = v3(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_1D5420628(void *a1)
{
  v2 = OUTLINED_FUNCTION_1_168(a1);
  result = v3(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_1D5420678(void *a1)
{
  v3 = OUTLINED_FUNCTION_35_59(a1);
  result = v1(v3);
  *v2 = result;
  v2[1] = v5;
  return result;
}

uint64_t sub_1D54206B4(void *a1)
{
  v2 = OUTLINED_FUNCTION_1_168(a1);
  result = v3(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t static MusicPlaybackIntent.playbackIntent(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v372 = a2;
  v3 = type metadata accessor for MusicPlaybackIntent();
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v369 = (v8 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_48(&v342 - v13);
  v353 = sub_1D56131C8();
  v14 = OUTLINED_FUNCTION_4(v353);
  v352 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v19 - v18);
  v350 = sub_1D5613158();
  v20 = OUTLINED_FUNCTION_4(v350);
  v349 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v348 = v25 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_48(&v342 - v30);
  v359 = sub_1D560F148();
  v31 = OUTLINED_FUNCTION_4(v359);
  v358 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v36 - v35);
  v362 = sub_1D560D9A8();
  v37 = OUTLINED_FUNCTION_4(v362);
  v363 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v42);
  v370 = &v342 - v43;
  v44 = sub_1D560D838();
  v45 = OUTLINED_FUNCTION_4(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_135();
  v367 = v52;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_135();
  v55 = v54;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v57);
  v371 = &v342 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  v60 = OUTLINED_FUNCTION_22(v59);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_135();
  v366 = v64;
  OUTLINED_FUNCTION_23();
  v66 = MEMORY[0x1EEE9AC00](v65);
  v68 = &v342 - v67;
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_135();
  v364 = v69;
  OUTLINED_FUNCTION_23();
  v71 = MEMORY[0x1EEE9AC00](v70);
  v73 = &v342 - v72;
  v74 = MEMORY[0x1EEE9AC00](v71);
  v76 = &v342 - v75;
  MEMORY[0x1EEE9AC00](v74);
  v78 = &v342 - v77;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2AC0, &qword_1D564A5E0);
  v80 = OUTLINED_FUNCTION_22(v79);
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_59_0();
  v368 = (v83 - v84);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_135();
  v365 = v87;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v88);
  v373 = (&v342 - v89);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v3);
  v375 = v78;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v44);
  v374 = v76;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v44);
  v376 = a1;
  v99 = sub_1D54233C8(a1);
  if (v99)
  {
    v100 = v99;
    if (sub_1D4E62628(v99))
    {
      v344 = v3;
      sub_1D4F0B2FC(0, (v100 & 0xC000000000000001) == 0, v100);
      v101 = v55;
      if ((v100 & 0xC000000000000001) != 0)
      {
        v102 = MEMORY[0x1DA6EB9B0](0, v100);
      }

      else
      {
        v102 = *(v100 + 32);
      }

      v103 = v102;

      sub_1D5422E18(&v378);

      if (v378 == 3)
      {
        goto LABEL_18;
      }

      v104 = sub_1D54233C8(v376);
      if (v104)
      {
        v105 = v104;
        if (sub_1D4E62628(v104))
        {
          sub_1D4F0B2FC(0, (v105 & 0xC000000000000001) == 0, v105);
          if ((v105 & 0xC000000000000001) != 0)
          {
            v106 = MEMORY[0x1DA6EB9B0](0, v105);
          }

          else
          {
            v106 = *(v105 + 32);
          }

          v107 = v106;

          goto LABEL_15;
        }
      }

      v107 = 0;
LABEL_15:
      sub_1D5422730(v107, v73);
      OUTLINED_FUNCTION_14_84();
      if (__swift_getEnumTagSinglePayload(v109, v110, v111) == 1)
      {
        sub_1D4E50004(v73, &unk_1EC7EEC20, &unk_1D5623F70);
      }

      else
      {
        v342 = v101;
        v112 = v375;
        sub_1D4E50004(v375, &unk_1EC7EEC20, &unk_1D5623F70);
        v113 = *(v47 + 4);
        v114 = v371;
        v113(v371, v73, v44);
        v113(v112, v114, v44);
        v101 = v342;
        OUTLINED_FUNCTION_64_0();
        __swift_storeEnumTagSinglePayload(v115, v116, v117, v44);
      }

LABEL_18:
      v108 = v344;
      goto LABEL_19;
    }
  }

  v101 = v55;
  v108 = v3;
LABEL_19:
  v118 = [v376 mediaContainer];
  v371 = v47;
  if (!v118)
  {
    goto LABEL_23;
  }

  v119 = v118;
  sub_1D5422E18(&v378);

  if (v378 == 3)
  {
    goto LABEL_23;
  }

  v120 = [v376 mediaContainer];
  v121 = v364;
  sub_1D5422730(v120, v364);
  OUTLINED_FUNCTION_14_84();
  if (__swift_getEnumTagSinglePayload(v122, v123, v124) == 1)
  {
    sub_1D4E50004(v121, &unk_1EC7EEC20, &unk_1D5623F70);
LABEL_23:
    v125 = v375;
    goto LABEL_24;
  }

  v151 = v374;
  sub_1D4E50004(v374, &unk_1EC7EEC20, &unk_1D5623F70);
  v152 = v121;
  v153 = v108;
  v154 = *(v47 + 4);
  v155 = v361;
  v154(v361, v152, v44);
  v156 = v375;
  sub_1D4FD23EC(v375, v151, &unk_1EC7EEC20, &unk_1D5623F70);
  v154(v156, v155, v44);
  v108 = v153;
  v125 = v156;
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v157, v158, v159, v44);
LABEL_24:
  sub_1D4F1C460(v125, v68, &unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_14_84();
  OUTLINED_FUNCTION_57(v126, v127, v128);
  if (!v221)
  {
    v135 = v371;
    v136 = *(v371 + 4);
    v136(v101, v68, v44);
    v137 = v370;
    switch(v370)
    {
      case 2:

        goto LABEL_36;
      case 3:
        v135[1](v101, v44);
        OUTLINED_FUNCTION_65();
        sub_1D4E50004(v197, v198, v199);
        OUTLINED_FUNCTION_65();
        sub_1D4E50004(v200, v201, v202);
        v187 = &qword_1EC7F2AC0;
        v188 = &qword_1D564A5E0;
        v186 = v373;
        goto LABEL_45;
      default:
        v138 = sub_1D5616168();

        if (v138)
        {
          goto LABEL_36;
        }

        sub_1D560D828();
        v139 = v360;
        sub_1D560D958();
        v140 = sub_1D560D8C8();
        v141 = v363 + 8;
        v142 = *(v363 + 8);
        v143 = v139;
        v144 = v362;
        v142(v143, v362);
        v363 = v141;
        v142(v137, v144);
        if (v140)
        {
LABEL_36:
          v160 = v374;
          v161 = v366;
          sub_1D4F1C460(v374, v366, &unk_1EC7EEC20, &unk_1D5623F70);
          OUTLINED_FUNCTION_14_84();
          OUTLINED_FUNCTION_57(v162, v163, v164);
          if (v221)
          {
            v169 = v371;
            v168 = v367;
            (*(v371 + 2))(v367, v101, v44);
            OUTLINED_FUNCTION_14_84();
            OUTLINED_FUNCTION_57(v165, v166, v167);
            v170 = v368;
            if (!v221)
            {
              sub_1D4E50004(v161, &unk_1EC7EEC20, &unk_1D5623F70);
            }
          }

          else
          {
            v168 = v367;
            v136(v367, v161, v44);
            v169 = v371;
            v170 = v368;
          }

          v171 = v365;
          sub_1D5422FE4(v365);
          v172 = *(v169 + 1);
          v343 = v44;
          v172(v168, v44);
          v150 = v373;
          OUTLINED_FUNCTION_65();
          sub_1D4E50004(v173, v174, v175);
          sub_1D4FD23EC(v171, v150, &qword_1EC7F2AC0, &qword_1D564A5E0);
          v176 = v375;
          goto LABEL_41;
        }

        OUTLINED_FUNCTION_28_62(&v380);
        sub_1D560D7A8();
        v145 = v359;
        OUTLINED_FUNCTION_57(v144, 1, v359);
        v343 = v44;
        if (!v221)
        {
          (*(v358 + 32))(v357, v144, v145);
          v217 = v355;
          sub_1D4F1C460(v374, v355, &unk_1EC7EEC20, &unk_1D5623F70);
          OUTLINED_FUNCTION_14_84();
          OUTLINED_FUNCTION_57(v218, v219, v220);
          if (v221)
          {
            sub_1D4E50004(v217, &unk_1EC7EEC20, &unk_1D5623F70);
            v231 = 0;
            v169 = v371;
          }

          else
          {
            v222 = v142;
            v223 = v347;
            v136(v347, v217, v44);
            sub_1D560D828();
            v224 = v348;
            sub_1D560D868();
            v225 = OUTLINED_FUNCTION_132_1();
            v222(v225);
            v226 = v44;
            v227 = sub_1D5159818();
            (*(v349 + 8))(v224, v350);
            v228 = v352;
            v229 = v351;
            v230 = v353;
            (*(v352 + 104))(v351, *MEMORY[0x1E6976970], v353);
            v231 = sub_1D4F42FA4(v227, v229);
            (*(v228 + 8))(v229, v230);
            v169 = v371;
            (*(v371 + 1))(v223, v226);
          }

          v176 = v375;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACD8, &unk_1D561DAB0);
          v232 = swift_allocObject();
          *(v232 + 16) = xmmword_1D561C050;
          v233 = v357;
          *(v232 + 32) = sub_1D560F138();
          *(v232 + 40) = v234;
          v235 = objc_allocWithZone(MusicKit_SoftLinking_MPCPlaybackIntent);
          v236 = sub_1D5423284(v232, v231);
          (*(v358 + 8))(v233, v359);
          v150 = v373;
          sub_1D4E50004(v373, &qword_1EC7F2AC0, &qword_1D564A5E0);
          v237 = *(v108 + 20);
          type metadata accessor for MusicPlaybackIntentDonation(0);
          OUTLINED_FUNCTION_33();
          __swift_storeEnumTagSinglePayload(v238, v239, v240, v241);
          *v150 = v236;
          OUTLINED_FUNCTION_64_0();
          __swift_storeEnumTagSinglePayload(v242, v243, v244, v108);
          v160 = v374;
          goto LABEL_75;
        }

        sub_1D4E50004(v144, &unk_1EC7F1970, &qword_1D561F4A0);
        v146 = v101;
        v147 = sub_1D560D808();
        v149 = v362;
        if (v148)
        {
          v366 = v147;
          v367 = v148;
          v150 = v373;
        }

        else
        {
          OUTLINED_FUNCTION_28_62(&v377);
          sub_1D560D5C8();
          v245 = sub_1D560D4C8();
          OUTLINED_FUNCTION_14_84();
          OUTLINED_FUNCTION_57(v246, v247, v248);
          v150 = v373;
          if (v221)
          {
            sub_1D4E50004(v144, &unk_1EC7EBF20, &unk_1D561F530);
            v249 = OUTLINED_FUNCTION_31_51();
            v250(v249);
            OUTLINED_FUNCTION_65();
            sub_1D4E50004(v251, v252, v253);
            OUTLINED_FUNCTION_65();
            sub_1D4E50004(v254, v255, v256);
            v187 = &qword_1EC7F2AC0;
            v188 = &qword_1D564A5E0;
            v186 = v150;
            goto LABEL_45;
          }

          v146 = v144;
          v366 = sub_1D560D4B8();
          v367 = v257;
          (*(*(v245 - 8) + 8))(v144, v245);
        }

        OUTLINED_FUNCTION_28_62(&v379);
        sub_1D560D828();
        OUTLINED_FUNCTION_24_64();
        sub_1D560D908();
        OUTLINED_FUNCTION_12_91();
        v260 = sub_1D54234E8(v258, v259);
        OUTLINED_FUNCTION_20_86();
        sub_1D5614D18();
        v261 = OUTLINED_FUNCTION_6_134();
        (v142)(v261);
        if (v146)
        {
          v142(v144, v149);
          v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0618, &qword_1D5638338);
          OUTLINED_FUNCTION_8_3(v262, &protocol witness table for MusicLibrarySectionedRequest<A, B>);
          OUTLINED_FUNCTION_147();
          sub_1D5613AF8();
          OUTLINED_FUNCTION_33_57();
          OUTLINED_FUNCTION_16_89();
          sub_1D560E668();
          swift_getKeyPath();
          OUTLINED_FUNCTION_5_128();
          OUTLINED_FUNCTION_34_60();
          MEMORY[0x1DA6E4340]();

          swift_getKeyPath();
          OUTLINED_FUNCTION_14_84();
          sub_1D560E658();

          swift_getKeyPath();
          OUTLINED_FUNCTION_14_84();
          sub_1D560E658();

          swift_getKeyPath();
          OUTLINED_FUNCTION_14_84();
          sub_1D560E658();
LABEL_73:

LABEL_74:
          v274 = v354;
          v160 = v374;
          sub_1D5424200(&v378, v374, MEMORY[0x1E69E7CC0], 0, v270, v271, v272, v273, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353);
          OUTLINED_FUNCTION_65();
          sub_1D4E50004(v275, v276, v277);
          __swift_destroy_boxed_opaque_existential_1(&v378);
          OUTLINED_FUNCTION_64_0();
          __swift_storeEnumTagSinglePayload(v278, v279, v280, v108);
          sub_1D4FD23EC(v274, v150, &qword_1EC7F2AC0, &qword_1D564A5E0);
          v169 = v371;
          v176 = v375;
LABEL_75:
          v170 = v368;
LABEL_41:
          sub_1D4F1C460(v150, v170, &qword_1EC7F2AC0, &qword_1D564A5E0);
          OUTLINED_FUNCTION_57(v170, 1, v108);
          if (v221)
          {
            (*(v169 + 1))(v101, v343);
            OUTLINED_FUNCTION_65();
            sub_1D4E50004(v177, v178, v179);
            OUTLINED_FUNCTION_65();
            sub_1D4E50004(v180, v181, v182);
            OUTLINED_FUNCTION_65();
            sub_1D4E50004(v183, v184, v185);
            goto LABEL_44;
          }

          sub_1D512DFD8(v170, v369);
          v194 = [v376 playbackRepeatMode];
          if (v194 == 1)
          {
            v196 = v101;
            v195 = 0;
          }

          else
          {
            v195 = v194;
            v196 = v101;
            if (v194 != 2)
            {
              if (v194 == 3)
              {
                v195 = 1;
              }

              else
              {
                v195 = -1;
              }
            }
          }

          v203 = v369;
          v204 = *v369;
          [*v369 setRepeatMode_];
          v205 = v376;
          v206 = sub_1D5615708();
          if (v206 == 2)
          {
            v207 = -1;
          }

          else
          {
            v207 = v206 & 1;
          }

          [v204 setShuffleMode_];
          (*(v169 + 1))(v196, v343);
          sub_1D4E50004(v160, &unk_1EC7EEC20, &unk_1D5623F70);
          sub_1D4E50004(v176, &unk_1EC7EEC20, &unk_1D5623F70);
          sub_1D4E50004(v150, &qword_1EC7F2AC0, &qword_1D564A5E0);
          v208 = *(v108 + 20);
          sub_1D4E50004(v203 + v208, &unk_1EC7ED460, &unk_1D5625250);
          *(v203 + v208) = v205;
          type metadata accessor for MusicPlaybackIntentDonation.IntentKind(0);
          swift_storeEnumTagMultiPayload();
          type metadata accessor for MusicPlaybackIntentDonation(0);
          OUTLINED_FUNCTION_64_0();
          __swift_storeEnumTagSinglePayload(v209, v210, v211, v212);
          sub_1D5423428(v203, v372);
          OUTLINED_FUNCTION_64_0();
          __swift_storeEnumTagSinglePayload(v213, v214, v215, v108);
          v216 = v205;
          return sub_1D542348C(v203);
        }

        sub_1D560D938();
        OUTLINED_FUNCTION_20_86();
        v365 = v260;
        sub_1D5614D18();
        v263 = OUTLINED_FUNCTION_6_134();
        (v142)(v263);
        if (qword_1EDD53C80 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v149, qword_1EDD53C88);
        OUTLINED_FUNCTION_20_86();
        v264 = v365;
        if (sub_1D5614D18())
        {
          v265 = OUTLINED_FUNCTION_132_1();
          (v142)(v265);
          v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0600, &qword_1D56382D8);
          OUTLINED_FUNCTION_8_3(v266, &protocol witness table for MusicLibrarySectionedRequest<A, B>);
          OUTLINED_FUNCTION_147();
          type metadata accessor for Composer();
          OUTLINED_FUNCTION_33_57();
          sub_1D54234E8(&qword_1EC7F0608, type metadata accessor for Composer);
          OUTLINED_FUNCTION_16_89();
          sub_1D560E668();
          swift_getKeyPath();
          OUTLINED_FUNCTION_5_128();
          v267 = sub_1D54234E8(&qword_1EC7EA8E8, type metadata accessor for Composer);
          v268 = MEMORY[0x1E6975510];
          v269 = v264;
LABEL_71:
          MEMORY[0x1DA6E4340](v269, &v377, v266, v267, v268);
LABEL_72:

          goto LABEL_73;
        }

        OUTLINED_FUNCTION_24_64();
        sub_1D560D918();
        OUTLINED_FUNCTION_8_123();
        v281 = OUTLINED_FUNCTION_6_134();
        (v142)(v281);
        if (v146)
        {
          v282 = OUTLINED_FUNCTION_132_1();
          (v142)(v282);
          v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F05F8, &qword_1D56382A8);
          OUTLINED_FUNCTION_8_3(v266, &protocol witness table for MusicLibrarySectionedRequest<A, B>);
          OUTLINED_FUNCTION_147();
          sub_1D5613C48();
          OUTLINED_FUNCTION_33_57();
          OUTLINED_FUNCTION_16_89();
          sub_1D560E668();
          swift_getKeyPath();
          OUTLINED_FUNCTION_5_128();
          v267 = MEMORY[0x1E6976D80];
          v268 = MEMORY[0x1E6975510];
          goto LABEL_71;
        }

        sub_1D560D8E8();
        OUTLINED_FUNCTION_8_123();
        v283 = OUTLINED_FUNCTION_6_134();
        (v142)(v283);
        sub_1D560D928();
        OUTLINED_FUNCTION_8_123();
        v284 = OUTLINED_FUNCTION_6_134();
        (v142)(v284);
        sub_1D560D878();
        OUTLINED_FUNCTION_8_123();
        v285 = OUTLINED_FUNCTION_6_134();
        (v142)(v285);
        if (qword_1EDD53D48 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v149, qword_1EDD53D50);
        v286 = v356;
        OUTLINED_FUNCTION_20_86();
        if (sub_1D5614D18())
        {
          v142(v286, v149);
          v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6610, &qword_1D561D168);
          OUTLINED_FUNCTION_8_3(v287, &protocol witness table for MusicLibraryRequest<A>);
          OUTLINED_FUNCTION_147();
          type metadata accessor for MusicMovie();
          sub_1D54234E8(&qword_1EC7EA908, type metadata accessor for MusicMovie);
          OUTLINED_FUNCTION_16_89();
          sub_1D560DD68();
          swift_getKeyPath();
          OUTLINED_FUNCTION_5_128();
          OUTLINED_FUNCTION_34_60();
          MEMORY[0x1DA6E3AD0]();
          goto LABEL_72;
        }

        v288 = v149;
        v344 = v108;
        OUTLINED_FUNCTION_24_64();
        sub_1D560D898();
        OUTLINED_FUNCTION_18_83();
        sub_1D5614D18();
        v289 = OUTLINED_FUNCTION_1_15();
        (v142)(v289);
        if (v146)
        {
          goto LABEL_87;
        }

        OUTLINED_FUNCTION_24_64();
        sub_1D560D848();
        OUTLINED_FUNCTION_18_83();
        sub_1D5614D18();
        v290 = OUTLINED_FUNCTION_1_15();
        (v142)(v290);
        v364 = v142;
        if (qword_1EC7E9740 != -1)
        {
          swift_once();
        }

        v288 = v362;
        __swift_project_value_buffer(v362, qword_1EC7F7CF0);
        v286 = v356;
        OUTLINED_FUNCTION_18_83();
        v291 = sub_1D5614D18();
        v142 = v364;
        if (v291)
        {
LABEL_87:
          v142(v286, v288);

          if (qword_1EDD544B0 != -1)
          {
            OUTLINED_FUNCTION_2_82();
          }

          v292 = sub_1D560C758();
          __swift_project_value_buffer(v292, qword_1EDD76AF0);
          v293 = sub_1D560C738();
          v294 = sub_1D56156C8();
          if (os_log_type_enabled(v293, v294))
          {
            v295 = swift_slowAlloc();
            *v295 = 0;
            _os_log_impl(&dword_1D4E3F000, v293, v294, "Playlist entries and their underlying items must be played within the context of their playlist. Please supply a container for the INPlayMediaIntent.", v295, 2u);
            OUTLINED_FUNCTION_122();
          }

          v296 = OUTLINED_FUNCTION_31_51();
          v297(v296);
LABEL_92:
          OUTLINED_FUNCTION_65();
          sub_1D4E50004(v298, v299, v300);
          OUTLINED_FUNCTION_65();
          sub_1D4E50004(v301, v302, v303);
          sub_1D4E50004(v373, &qword_1EC7F2AC0, &qword_1D564A5E0);
          OUTLINED_FUNCTION_33();
          v192 = v344;
          return __swift_storeEnumTagSinglePayload(v189, v190, v191, v192);
        }

        OUTLINED_FUNCTION_24_64();
        sub_1D560D968();
        OUTLINED_FUNCTION_18_83();
        sub_1D5614D18();
        v304 = OUTLINED_FUNCTION_1_15();
        v305 = (v142)(v304);
        if (v146)
        {
          v306 = OUTLINED_FUNCTION_9_114();
          v307(v306);
          v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F05F0, &qword_1D5638228);
          OUTLINED_FUNCTION_8_3(v308, &protocol witness table for MusicLibrarySectionedRequest<A, B>);
          OUTLINED_FUNCTION_147();
          sub_1D5614898();
          OUTLINED_FUNCTION_33_57();
          OUTLINED_FUNCTION_16_89();
          sub_1D560E668();
          swift_getKeyPath();
          OUTLINED_FUNCTION_5_128();
          OUTLINED_FUNCTION_34_60();
          MEMORY[0x1DA6E4340]();
        }

        else
        {
          if (qword_1EDD53C38 != -1)
          {
            v305 = swift_once();
          }

          OUTLINED_FUNCTION_30_62(v305, qword_1EDD53C40);
          v310 = *(v309 - 256);
          v311 = sub_1D5614D18();
          if (v311)
          {
            v312 = OUTLINED_FUNCTION_9_114();
            v313(v312);
            v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6600, &unk_1D561D190);
            OUTLINED_FUNCTION_8_3(v314, &protocol witness table for MusicLibraryRequest<A>);
            OUTLINED_FUNCTION_147();
            type metadata accessor for TVEpisode();
            sub_1D54234E8(&qword_1EC7EA920, type metadata accessor for TVEpisode);
            OUTLINED_FUNCTION_16_89();
            sub_1D560DD68();
          }

          else
          {
            if (qword_1EC7E8F18 != -1)
            {
              v311 = swift_once();
            }

            OUTLINED_FUNCTION_30_62(v311, qword_1EC7F08A0);
            v316 = *(v315 - 256);
            v317 = sub_1D5614D18();
            if (v317)
            {
              v318 = OUTLINED_FUNCTION_9_114();
              v319(v318);
              v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F65F0, &qword_1D56381D0);
              OUTLINED_FUNCTION_8_3(v320, &protocol witness table for MusicLibraryRequest<A>);
              OUTLINED_FUNCTION_147();
              type metadata accessor for UploadedAudio();
              sub_1D54234E8(&qword_1EC7F05E8, type metadata accessor for UploadedAudio);
              OUTLINED_FUNCTION_16_89();
              sub_1D560DD68();
            }

            else
            {
              if (qword_1EDD53CE8 != -1)
              {
                v317 = swift_once();
              }

              OUTLINED_FUNCTION_30_62(v317, qword_1EDD53CF0);
              v322 = *(v321 - 256);
              v323 = sub_1D5614D18();
              v364(v322, v146);
              if ((v323 & 1) == 0)
              {

                if (qword_1EDD544B0 != -1)
                {
                  OUTLINED_FUNCTION_2_82();
                }

                v325 = sub_1D560C758();
                __swift_project_value_buffer(v325, qword_1EDD76AF0);
                (*(v371 + 2))(v345, v101, v343);
                v326 = sub_1D560C738();
                LODWORD(v376) = sub_1D56156C8();
                if (os_log_type_enabled(v326, v376))
                {
                  v327 = swift_slowAlloc();
                  v368 = v327;
                  v369 = swift_slowAlloc();
                  v377 = v369;
                  *v327 = 136446210;
                  OUTLINED_FUNCTION_24_64();
                  v328 = v345;
                  sub_1D560D828();
                  OUTLINED_FUNCTION_12_91();
                  sub_1D54234E8(v329, v330);
                  v331 = v362;
                  v332 = sub_1D56160F8();
                  v334 = v333;
                  v364(v327, v331);
                  v335 = *(v371 + 1);
                  v336 = v328;
                  v337 = v343;
                  v335(v336, v343);
                  v338 = sub_1D4E6835C(v332, v334, &v377);

                  v339 = v368;
                  *(v368 + 1) = v338;
                  _os_log_impl(&dword_1D4E3F000, v326, v376, "Cannot generate playback intent from unsupported typeValue: %{public}s.", v339, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v369);
                  OUTLINED_FUNCTION_122();
                  OUTLINED_FUNCTION_122();

                  v335(v101, v337);
                }

                else
                {

                  v340 = *(v371 + 1);
                  v341 = v343;
                  v340(v345, v343);
                  v340(v101, v341);
                }

                goto LABEL_92;
              }

              v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F65E0, &qword_1D5663EB0);
              OUTLINED_FUNCTION_8_3(v324, &protocol witness table for MusicLibraryRequest<A>);
              OUTLINED_FUNCTION_147();
              type metadata accessor for UploadedVideo();
              sub_1D54234E8(&qword_1EC7EC718, type metadata accessor for UploadedVideo);
              OUTLINED_FUNCTION_16_89();
              sub_1D560DD68();
            }
          }

          swift_getKeyPath();
          OUTLINED_FUNCTION_5_128();
          OUTLINED_FUNCTION_34_60();
          MEMORY[0x1DA6E3AD0]();
        }

        v108 = v344;
        v150 = v373;
        goto LABEL_74;
    }
  }

  OUTLINED_FUNCTION_65();
  sub_1D4E50004(v129, v130, v131);
  OUTLINED_FUNCTION_65();
  sub_1D4E50004(v132, v133, v134);
  sub_1D4E50004(v373, &qword_1EC7F2AC0, &qword_1D564A5E0);
LABEL_44:
  OUTLINED_FUNCTION_65();
LABEL_45:
  sub_1D4E50004(v186, v187, v188);
  OUTLINED_FUNCTION_33();
  v192 = v108;
  return __swift_storeEnumTagSinglePayload(v189, v190, v191, v192);
}

uint64_t sub_1D542266C(void *a1)
{
  v3 = OUTLINED_FUNCTION_35_59(a1);
  result = v1(v3);
  *v2 = result;
  *(v2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1D54226B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1D5612A88();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D54226F8(void *a1)
{
  v2 = OUTLINED_FUNCTION_1_168(a1);
  result = v3(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_1D5422730@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v81 - v8;
  v10 = sub_1D560D4C8();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v90 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v81 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v81 - v28;
  v30 = sub_1D560D838();
  v31 = OUTLINED_FUNCTION_4(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_59_0();
  v36 = (v34 - v35);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v81 - v39;
  if (a1)
  {
    v89 = v38;
    v86 = v13;
    v87 = v10;
    v41 = a1;
    v42 = sub_1D5423358(v41);
    if (v43)
    {
      v44 = v42;
      v45 = v43;
      v88 = a2;
      sub_1D55C7764();
      v85 = v44;
      OUTLINED_FUNCTION_64_0();
      __swift_storeEnumTagSinglePayload(v48, v49, v50, v30);
      v51 = v29;
      v52 = *(v89 + 32);
      v52(v36, v51, v30);
      sub_1D560D7A8();
      v53 = sub_1D560F148();
      OUTLINED_FUNCTION_57(v23, 1, v53);
      if (!v54)
      {

        sub_1D4E50004(v23, &unk_1EC7F1970, &qword_1D561F4A0);
LABEL_11:
        v52(v40, v36, v30);
LABEL_12:
        v56 = v88;
        v52(v88, v40, v30);
        a2 = v56;
        v46 = 0;
        return __swift_storeEnumTagSinglePayload(a2, v46, 1, v30);
      }

      sub_1D4E50004(v23, &unk_1EC7F1970, &qword_1D561F4A0);
      sub_1D560D808();
      if (v55)
      {

        goto LABEL_11;
      }

      sub_1D560D5C8();
      v57 = v87;
      OUTLINED_FUNCTION_57(v9, 1, v87);
      if (!v54)
      {
        v82 = v52;
        (*(v86 + 32))(v90, v9, v57);
        v60 = objc_opt_self();
        v61 = [v60 deviceLibrary];
        v62 = [v61 uniqueIdentifier];

        v81 = sub_1D5614D68();
        v84 = v63;

        v83 = sub_1D560D488();
        v65 = v64;
        v66 = [v60 deviceLibrary];
        v67 = [v66 uniqueIdentifier];

        v68 = sub_1D5614D68();
        v70 = v69;

        if (v83 == v68 && v65 == v70)
        {
        }

        else
        {
          v72 = sub_1D5616168();

          if ((v72 & 1) == 0)
          {
            if (qword_1EDD544B0 != -1)
            {
              OUTLINED_FUNCTION_2_82();
            }

            v73 = sub_1D560C758();
            __swift_project_value_buffer(v73, qword_1EDD76AF0);

            v74 = sub_1D560C738();
            v75 = sub_1D56156C8();

            if (os_log_type_enabled(v74, v75))
            {
              v76 = swift_slowAlloc();
              v91[0] = swift_slowAlloc();
              *v76 = 136446466;
              v77 = sub_1D4E6835C(v85, v45, v91);

              *(v76 + 4) = v77;
              *(v76 + 12) = 2082;
              v78 = sub_1D4E6835C(v81, v84, v91);

              *(v76 + 14) = v78;
              _os_log_impl(&dword_1D4E3F000, v74, v75, "Failed to create a valid identifier set for donated media item with identifier %{public}s because the database ID did not match with the active one: %{public}s.", v76, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_122();
              OUTLINED_FUNCTION_122();
            }

            else
            {
            }

            (*(v86 + 8))(v90, v87);
            v79 = OUTLINED_FUNCTION_36_55();
            v80(v79);
            goto LABEL_16;
          }
        }

        (*(v86 + 8))(v90, v87);

        v52 = v82;
        v82(v40, v36, v30);
        goto LABEL_12;
      }

      v58 = OUTLINED_FUNCTION_36_55();
      v59(v58);

      sub_1D4E50004(v9, &unk_1EC7EBF20, &unk_1D561F530);
LABEL_16:
      v46 = 1;
      a2 = v88;
      return __swift_storeEnumTagSinglePayload(a2, v46, 1, v30);
    }
  }

  v46 = 1;
  return __swift_storeEnumTagSinglePayload(a2, v46, 1, v30);
}

uint64_t sub_1D5422E18@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE78, &qword_1D5623540);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26[-v8];
  v10 = sub_1D560BC78();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_59_0();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v26[-v20];
  result = sub_1D54232F4(v2);
  if (!v23)
  {
    goto LABEL_5;
  }

  sub_1D560BC48();

  OUTLINED_FUNCTION_57(v9, 1, v10);
  if (v24)
  {
    result = sub_1D4E50004(v9, &qword_1EC7ECE78, &qword_1D5623540);
LABEL_5:
    v25 = 3;
    goto LABEL_6;
  }

  (*(v13 + 32))(v21, v9, v10);
  (*(v13 + 16))(v18, v21, v10);
  sub_1D5136804(v18, &v27);
  result = (*(v13 + 8))(v21, v10);
  v25 = v27;
LABEL_6:
  *a1 = v25;
  return result;
}

uint64_t sub_1D5422FE4@<X0>(void *a1@<X8>)
{
  v40 = sub_1D56131C8();
  v1 = OUTLINED_FUNCTION_4(v40);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1D5613158();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = sub_1D560D9A8();
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  sub_1D560D828();
  sub_1D560D868();
  (*(v21 + 8))(v26, v18);
  v27 = sub_1D5159818();
  (*(v12 + 8))(v17, v9);
  (*(v3 + 104))(v8, *MEMORY[0x1E6976970], v40);
  v28 = sub_1D4F42FA4(v27, v8);
  (*(v3 + 8))(v8, v40);
  v29 = [objc_allocWithZone(MusicKit_SoftLinking_MPCPlaybackIntent) initWithStationSeedingIdentifierSet_];
  swift_unknownObjectRelease();
  v30 = type metadata accessor for MusicPlaybackIntent();
  v31 = v30;
  if (v29)
  {
    v32 = *(v30 + 20);
    type metadata accessor for MusicPlaybackIntentDonation(0);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
    *a1 = v29;
    v37 = a1;
    v38 = 0;
  }

  else
  {
    v37 = a1;
    v38 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v37, v38, 1, v31);
}

id sub_1D5423284(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5615158();

  v5 = [v2 initWithStoreIDs:v4 startIdentifierSet:a2];

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1D54232F4(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D5614D68();

  return v3;
}

uint64_t sub_1D5423358(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D5614D68();

  return v3;
}

uint64_t sub_1D54233C8(void *a1)
{
  v1 = [a1 mediaItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1D5423530();
  v3 = sub_1D5615168();

  return v3;
}

uint64_t sub_1D5423428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPlaybackIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D542348C(uint64_t a1)
{
  v2 = type metadata accessor for MusicPlaybackIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D54234E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D5423530()
{
  result = qword_1EDD52700;
  if (!qword_1EDD52700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD52700);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_31_51()
{
  v2 = *(*(v1 - 192) + 8);
  result = v0;
  v4 = *(v1 - 424);
  return result;
}

uint64_t OUTLINED_FUNCTION_33_57()
{

  return sub_1D5613D28();
}

void sub_1D54235CC()
{
  OUTLINED_FUNCTION_47();
  v78 = v0;
  v79 = v1;
  v3 = v2;
  v80 = v4;
  v77 = sub_1D560D9A8();
  v5 = OUTLINED_FUNCTION_4(v77);
  v76 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v9);
  v82 = sub_1D56131C8();
  v10 = OUTLINED_FUNCTION_4(v82);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = sub_1D5613158();
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  v81 = sub_1D560D838();
  v27 = OUTLINED_FUNCTION_4(v81);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v66 - v33;
  sub_1D4E62938(v3, v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF760, &qword_1D5632BB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(&v83, v88);
    v35 = v88[4];
    OUTLINED_FUNCTION_10_110(v88);
    v36 = *(v35 + 8);
    OUTLINED_FUNCTION_44_39();
    __swift_project_boxed_opaque_existential_1(v88, v88[3]);
    sub_1D56132C8();
    v37 = sub_1D5159818();
    v38 = *(v21 + 8);
    v74 = v18;
    v71 = v38;
    v38(v26, v18);
    v39 = v12;
    v40 = *(v12 + 104);
    v70 = *MEMORY[0x1E6976970];
    v41 = v82;
    v69 = v40;
    v40(v17);
    v42 = sub_1D4F42FA4(v37, v17);
    v43 = *(v39 + 8);
    v72 = v39 + 8;
    v68 = v43;
    (v43)(v17, v41);
    v67 = *(v29 + 8);
    v44 = v67(v34, v81);
    MEMORY[0x1EEE9AC00](v44);
    *(&v66 - 2) = v88;
    sub_1D50DDDD4(sub_1D5428300, (&v66 - 4), v78);
    v45 = [objc_allocWithZone(MEMORY[0x1E69776B8]) init];
    v78 = v42;
    [v45 appendSection_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF50, &unk_1D561F550);
    v46 = sub_1D5615158();

    [v45 appendItems_];

    sub_1D4F43D5C(v79, &v83, &unk_1EC7F65C0, &qword_1D562E6B0);
    if (*(&v84 + 1))
    {
      sub_1D4E48324(&v83, v86);
      v47 = v87;
      OUTLINED_FUNCTION_10_110(v86);
      v48 = *(v47 + 8);
      OUTLINED_FUNCTION_44_39();
      v49 = v87;
      OUTLINED_FUNCTION_10_110(v86);
      v50 = *(v49 + 8);
      v79 = v45;
      v51 = v73;
      OUTLINED_FUNCTION_44_39();
      v52 = v75;
      sub_1D560D828();
      v53 = v51;
      v54 = v81;
      v55 = v67;
      v67(v53, v81);
      sub_1D560D868();
      (*(v76 + 8))(v52, v77);
      v56 = sub_1D5159818();
      v71(v26, v74);
      v69(v17, v70, v82);
      v57 = sub_1D4F42FA4(v56, v17);
      v58 = OUTLINED_FUNCTION_20_9();
      v68(v58);
      v55(v34, v54);
      v45 = v79;
      __swift_destroy_boxed_opaque_existential_1(v86);
    }

    else
    {
      sub_1D4E7661C(&v83, &unk_1EC7F65C0, &qword_1D562E6B0);
      v57 = 0;
    }

    sub_1D512F270();
    v59 = sub_1D54272C8(v45, v57);
    swift_unknownObjectRelease();
    v60 = type metadata accessor for MusicPlaybackIntent();
    OUTLINED_FUNCTION_71_24(v60);
    v61 = v80;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
    *v61 = v59;
    __swift_destroy_boxed_opaque_existential_1(v88);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    v85 = 0;
    v83 = 0u;
    v84 = 0u;
    sub_1D4E7661C(&v83, &unk_1EC7ED400, &qword_1D5620CF0);
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    OUTLINED_FUNCTION_33_3();
    MEMORY[0x1DA6EAC70](0xD00000000000004ALL);
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](11817, 0xE200000000000000);
    OUTLINED_FUNCTION_6_3();
    v66 = 139;
    OUTLINED_FUNCTION_16_90();
    __break(1u);
  }
}

void sub_1D5423C84()
{
  OUTLINED_FUNCTION_47();
  v89 = v1;
  v90 = v2;
  v4 = v3;
  v5 = sub_1D56131C8();
  v6 = OUTLINED_FUNCTION_4(v5);
  v87 = v7;
  v88 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v86 = v10;
  OUTLINED_FUNCTION_70_0();
  v11 = sub_1D5613158();
  v12 = OUTLINED_FUNCTION_4(v11);
  v84 = v13;
  v85 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  v83 = v16;
  OUTLINED_FUNCTION_70_0();
  v81 = sub_1D560D9A8();
  v17 = OUTLINED_FUNCTION_4(v81);
  v80 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v21);
  v22 = sub_1D560D838();
  v23 = OUTLINED_FUNCTION_4(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v29);
  v31 = v79 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_16_0();
  v36 = *(v4 + 16);
  v82 = v25;
  if (v36)
  {
    v37 = v4 + 32;
    v38 = (v25 + 8);
    v91 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D4E62938(v37, v94);
      v39 = v95;
      OUTLINED_FUNCTION_10_110(v94);
      v40 = *(v39 + 8);
      OUTLINED_FUNCTION_44_39();
      sub_1D560D7A8();
      (*v38)(v31, v22);
      v41 = sub_1D560F148();
      if (__swift_getEnumTagSinglePayload(v0, 1, v41) == 1)
      {
        sub_1D4E7661C(v0, &unk_1EC7F1970, &qword_1D561F4A0);
        __swift_destroy_boxed_opaque_existential_1(v94);
      }

      else
      {
        v42 = v22;
        v43 = sub_1D560F138();
        v45 = v44;
        OUTLINED_FUNCTION_24_0(v41);
        v47 = *(v46 + 8);
        v48 = OUTLINED_FUNCTION_70();
        v49(v48);
        __swift_destroy_boxed_opaque_existential_1(v94);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = *(v91 + 16);
          OUTLINED_FUNCTION_1_13();
          sub_1D4EFF8E4();
          v91 = v55;
        }

        v51 = *(v91 + 16);
        v50 = *(v91 + 24);
        if (v51 >= v50 >> 1)
        {
          OUTLINED_FUNCTION_93_1(v50);
          sub_1D4EFF8E4();
          v91 = v56;
        }

        v52 = v91;
        *(v91 + 16) = v51 + 1;
        v53 = v52 + 16 * v51;
        *(v53 + 32) = v43;
        *(v53 + 40) = v45;
        v22 = v42;
      }

      v37 += 40;
      --v36;
    }

    while (v36);
  }

  else
  {
    v91 = MEMORY[0x1E69E7CC0];
  }

  sub_1D4F43D5C(v89, &v92, &unk_1EC7F65C0, &qword_1D562E6B0);
  if (v93)
  {
    sub_1D4E48324(&v92, v94);
    v57 = v95;
    OUTLINED_FUNCTION_10_110(v94);
    v58 = *(v57 + 8);
    v59 = v79[2];
    OUTLINED_FUNCTION_44_39();
    v60 = v95;
    OUTLINED_FUNCTION_10_110(v94);
    v61 = *(v60 + 8);
    v62 = v79[0];
    OUTLINED_FUNCTION_44_39();
    v63 = v79[1];
    sub_1D560D828();
    v64 = *(v82 + 8);
    v64(v62, v22);
    v65 = v83;
    sub_1D560D868();
    (*(v80 + 8))(v63, v81);
    v66 = sub_1D5159818();
    (*(v84 + 8))(v65, v85);
    v68 = v86;
    v67 = v87;
    v69 = v88;
    (*(v87 + 104))(v86, *MEMORY[0x1E6976970], v88);
    v70 = sub_1D4F42FA4(v66, v68);
    (*(v67 + 8))(v68, v69);
    v64(v59, v22);
    __swift_destroy_boxed_opaque_existential_1(v94);
  }

  else
  {
    sub_1D4E7661C(&v92, &unk_1EC7F65C0, &qword_1D562E6B0);
    v70 = 0;
  }

  v71 = objc_allocWithZone(MusicKit_SoftLinking_MPCPlaybackIntent);
  v72 = sub_1D5423284(v91, v70);
  v73 = type metadata accessor for MusicPlaybackIntent();
  OUTLINED_FUNCTION_71_24(v73);
  v74 = v90;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
  *v74 = v72;
  OUTLINED_FUNCTION_46();
}

void sub_1D5424200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v100 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v101 = v30;
  v31 = sub_1D56131C8();
  v32 = OUTLINED_FUNCTION_4(v31);
  v106 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  v38 = v37 - v36;
  v39 = sub_1D5613158();
  v40 = OUTLINED_FUNCTION_4(v39);
  v104 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v44);
  v117 = sub_1D560D9A8();
  v45 = OUTLINED_FUNCTION_4(v117);
  v103 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5();
  v51 = v50 - v49;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_34_5();
  v118 = sub_1D560D838();
  v56 = OUTLINED_FUNCTION_4(v118);
  v102 = v57;
  v59 = *(v58 + 64);
  v60 = MEMORY[0x1EEE9AC00](v56);
  v62 = &v97 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v63);
  v115 = v29;
  sub_1D4E62938(v29, v121);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2C10, &qword_1D5638890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6630, &qword_1D5663F88);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v119, v122);
    v64 = v25;
    v65 = *(v25 + 16);
    v66 = MEMORY[0x1E6976978];
    v116 = v39;
    if (v65)
    {
      v97 = v20;
      v98 = v27;
      v121[0] = MEMORY[0x1E69E7CC0];
      sub_1D5615CB8();
      v67 = *(v102 + 16);
      v39 = v64 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
      v113 = *(v102 + 72);
      v114 = v67;
      v112 = v103 + 8;
      v111 = v104 + 8;
      v110 = *v66;
      OUTLINED_FUNCTION_58_35();
      v109 = (v66 + 26);
      v108 = (v66 + 2);
      v115 = v68;
      v107 = v68 - 8;
      v66 = v105;
      do
      {
        v69 = v118;
        v114(v62, v39, v118);
        sub_1D560D828();
        sub_1D560D868();
        OUTLINED_FUNCTION_195(&a18);
        v70(v51, v117);
        v71 = sub_1D5159818();
        OUTLINED_FUNCTION_195(&a17);
        v72(v66, v116);
        OUTLINED_FUNCTION_195(&a15);
        v73(v38, v110, v31);
        sub_1D4F42FA4(v71, v38);
        OUTLINED_FUNCTION_195(&a14);
        v74(v38, v31);
        OUTLINED_FUNCTION_195(&a13);
        v75(v62, v69);
        sub_1D5615C88();
        v76 = v31;
        v77 = *(v121[0] + 16);
        sub_1D5615CC8();
        v31 = v76;
        sub_1D5615CD8();
        sub_1D5615C98();
        v39 += v113;
        --v65;
      }

      while (v65);
      v115 = v121[0];
      OUTLINED_FUNCTION_58_35();
      v27 = v98;
      v20 = v97;
    }

    else
    {
      v115 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_58_35();
    }

    sub_1D4F43D5C(v27, v20, &unk_1EC7EEC20, &unk_1D5623F70);
    v78 = v118;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v118);
    v80 = v105;
    v81 = v117;
    if (EnumTagSinglePayload == 1)
    {
      sub_1D4E7661C(v20, &unk_1EC7EEC20, &unk_1D5623F70);
      v82 = 0;
    }

    else
    {
      v83 = v38;
      v84 = v104;
      OUTLINED_FUNCTION_167_0(&v123);
      v86 = v20;
      v87 = v99;
      (*(v85 + 32))(v99, v86, v78);
      sub_1D560D828();
      sub_1D560D868();
      (*(v103 + 8))(v51, v81);
      v88 = sub_1D5159818();
      (*(v84 + 8))(v80, v116);
      (*(v66 + 13))(v83, *MEMORY[0x1E6976978], v31);
      v82 = sub_1D4F42FA4(v88, v83);
      (*(v66 + 1))(v83, v31);
      (*(v39 + 8))(v87, v118);
    }

    __swift_project_boxed_opaque_existential_1(v122, v122[3]);
    v89 = sub_1D5612D48();
    v121[3] = swift_getObjectType();
    v121[0] = v89;
    objc_allocWithZone(MusicKit_SoftLinking_MPCPlaybackIntent);
    v90 = sub_1D54281E8(v121, v115, v82, v100 & 1);
    v91 = type metadata accessor for MusicPlaybackIntent();
    OUTLINED_FUNCTION_71_24(v91);
    v92 = v101;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v93, v94, v95, v96);
    *v92 = v90;
    __swift_destroy_boxed_opaque_existential_1(v122);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    v120 = 0;
    memset(v119, 0, sizeof(v119));
    sub_1D4E7661C(v119, &qword_1EC7F6638, &unk_1D5663F90);
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    MEMORY[0x1DA6EAC70](0xD000000000000023, 0x80000001D56856E0);
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_3();
    MEMORY[0x1DA6EAC70](0xD000000000000022);
    OUTLINED_FUNCTION_6_3();
    v97 = 181;
    OUTLINED_FUNCTION_16_90();
    __break(1u);
  }
}

void sub_1D542497C()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v294 = v5;
  v289 = v6;
  v290[1] = v7;
  v9 = v8;
  v291 = v10;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v22);
  v287 = sub_1D560D838();
  v23 = OUTLINED_FUNCTION_4(v287);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v31);
  v274 = sub_1D5613158();
  v32 = OUTLINED_FUNCTION_4(v274);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v37);
  v273 = sub_1D56131C8();
  v38 = OUTLINED_FUNCTION_4(v273);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F65A0, &unk_1D561D200);
  OUTLINED_FUNCTION_22(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_16_0();
  v275 = sub_1D5614408();
  v49 = OUTLINED_FUNCTION_4(v275);
  v298 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v54);
  v269 = type metadata accessor for MusicPlaybackIntent();
  v55 = OUTLINED_FUNCTION_4(v269);
  v295 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v70);
  v292 = *v9;
  v71 = *(v12 + 16);
  v72 = MEMORY[0x1E69E7CC0];
  v278 = v2;
  v288 = v4;
  v286 = v0;
  if (v71)
  {
    v283 = v40;
    v293 = v34;
    v297 = v25;
    v312 = MEMORY[0x1E69E7CC0];
    sub_1D4F04734();
    v73 = v12 + 32;
    v74 = v312;
    v75 = &qword_1EC7EADC8;
    v76 = &qword_1D561DBB8;
    v77 = &unk_1EC7F65B0;
    v78 = &unk_1D5663EA0;
    do
    {
      sub_1D4E62938(v73, v307);
      v306[0] = 0;
      v304 = 0u;
      v305 = 0u;
      sub_1D4E62938(v307, &v301);
      __swift_instantiateConcreteTypeFromMangledNameV2(v75, v76);
      __swift_instantiateConcreteTypeFromMangledNameV2(v77, v78);
      if (swift_dynamicCast())
      {
        v79 = v78;
        v80 = v77;
        v81 = v76;
        v82 = v75;
        sub_1D4E48324(v299, &v309);
        v83 = v311;
        __swift_project_boxed_opaque_existential_1(&v309, v310);
        v84 = *(v83 + 8);
        sub_1D560D078();
        sub_1D4E7661C(&v304, &unk_1EC7F65C0, &qword_1D562E6B0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
        if ((swift_dynamicCast() & 1) == 0)
        {
          OUTLINED_FUNCTION_40_51();
        }

        v304 = v299[0];
        v305 = v299[1];
        v306[0] = v300;
        __swift_destroy_boxed_opaque_existential_1(&v309);
        v75 = v82;
        v76 = v81;
        v77 = v80;
        v78 = v79;
      }

      else
      {
        OUTLINED_FUNCTION_40_51();
        sub_1D4E7661C(v299, &qword_1EC7EDCB8, &unk_1D5628170);
      }

      v302 = v305;
      v301 = v304;
      v303 = v306[0];
      if (*(&v305 + 1))
      {
        sub_1D4E48324(&v301, &v309);
      }

      else
      {
        sub_1D4E62938(v307, &v309);
        if (*(&v302 + 1))
        {
          sub_1D4E7661C(&v301, &unk_1EC7F65C0, &qword_1D562E6B0);
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v307);
      v85 = v74;
      v312 = v74;
      v87 = *(v74 + 16);
      v86 = *(v74 + 24);
      if (v87 >= v86 >> 1)
      {
        OUTLINED_FUNCTION_93_1(v86);
        sub_1D4F04734();
        v85 = v312;
      }

      *(v85 + 16) = v87 + 1;
      v74 = v85;
      sub_1D4E48324(&v309, v85 + 40 * v87 + 32);
      v73 += 40;
      --v71;
    }

    while (v71);
    v2 = v278;
    v72 = v74;
    v25 = v297;
    v40 = v283;
  }

  v88 = *(v72 + 16);
  v293 = v2 >> 60;
  v89 = &selRef_initWithType_itemIdentifier_;
  v90 = v280;
  if (v88)
  {
    v91 = v72 + 32;
    v283 = (v25 + 8);
    v267 = *MEMORY[0x1E6976970];
    v282 = (v298 + 8);
    v266 = (v40 + 1);
    v92 = MEMORY[0x1E69E7CC0];
    v277 = MEMORY[0x1E69E7CC0];
    v279 = MEMORY[0x1E69E7CC0];
    v93 = v275;
    while (1)
    {
      v298 = v88;
      v297 = v91;
      sub_1D4E62938(v91, &v309);
      OUTLINED_FUNCTION_65_30();
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADC8, &qword_1D561DBB8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF760, &qword_1D5632BB8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v303 = 0;
        v302 = 0u;
        v301 = 0u;
      }

      v307[0] = v301;
      v307[1] = v302;
      v308 = v303;
      sub_1D4F43D5C(v307, &v301, &unk_1EC7F65D0, &qword_1D5638870);
      if (*(&v302 + 1))
      {
        sub_1D4E48324(&v301, &v304);
        v95 = *(&v305 + 1);
        v96 = v306[0];
        __swift_project_boxed_opaque_existential_1(&v304, *(&v305 + 1));
        LOBYTE(v301) = v292;
        OUTLINED_FUNCTION_53_31();
        v99 = PlayableMusicContainer.playbackIntent(startingAt:explicitPlaybackSource:isLocalPlayback:)(v291, v97, v98, v95, v96);
        v100 = *v90;
        if (v294)
        {
          OUTLINED_FUNCTION_45_41();
          v99 = sub_1D5614D38();
          v101 = v99;
        }

        else
        {
          v101 = 0;
        }

        OUTLINED_FUNCTION_55_31(v99, sel_setPlayActivityFeatureName_);

        OUTLINED_FUNCTION_14_85();
        if (!v129 & v128)
        {
          v130 = 0;
        }

        else
        {
          v130 = sub_1D560C168();
        }

        OUTLINED_FUNCTION_48_37();

        sub_1D5423428(v90, v296);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v199 = *(v92 + 16);
          OUTLINED_FUNCTION_1_13();
          sub_1D4F02458();
          v92 = v200;
        }

        OUTLINED_FUNCTION_6_118();
        if (v128)
        {
          OUTLINED_FUNCTION_22_41(v131);
          sub_1D4F02458();
          v92 = v201;
        }

        sub_1D4E7661C(v307, &unk_1EC7F65D0, &qword_1D5638870);
        *(v92 + 16) = v100;
        OUTLINED_FUNCTION_4_134();
        OUTLINED_FUNCTION_32_57(v132);
        sub_1D512DFD8(v296, v133);
        sub_1D542348C(v90);
        __swift_destroy_boxed_opaque_existential_1(&v304);
        goto LABEL_95;
      }

      sub_1D4E7661C(&v301, &unk_1EC7F65D0, &qword_1D5638870);
      OUTLINED_FUNCTION_65_30();
      v102 = v286;
      if (swift_dynamicCast())
      {
        v281 = v92;
        OUTLINED_FUNCTION_64_0();
        __swift_storeEnumTagSinglePayload(v103, v104, v105, v93);
        OUTLINED_FUNCTION_195(&v298);
        v106 = v285;
        v107(v285, v102, v93);
        OUTLINED_FUNCTION_195(&v296);
        v108(v271, v267, v273);
        OUTLINED_FUNCTION_195(&v295);
        v109(v272, v271, v273);
        OUTLINED_FUNCTION_195(&v294);
        v110(v270, v106, v93);
        sub_1D56132E8();
        OUTLINED_FUNCTION_167_0(&v301);
        sub_1D56132C8();
        v111 = sub_1D5159818();
        OUTLINED_FUNCTION_195(&v293);
        v112(&qword_1D5638870, v274);
        sub_1D560EC98();
        v113 = *v282;
        (*v282)(v270, v93);
        v114 = sub_1D4F42FA4(v111, v272);
        OUTLINED_FUNCTION_195(v306);
        v115(v276, v287);
        v116 = objc_allocWithZone(MEMORY[0x1E6977640]);
        v117 = sub_1D5614BA8();

        v118 = [v116 initWithIdentifierSet:v114 modelObjectType:v111 storageDictionary:v117];
        swift_unknownObjectRelease();

        v119 = *v266;
        (*v266)(v272, v273);
        v119(v271, v273);
        v120 = [objc_allocWithZone(MusicKit_SoftLinking_MPCPlaybackIntent) initWithLegacyModelStationSeeding_];

        v121 = *(v269 + 20);
        type metadata accessor for MusicPlaybackIntentDonation(0);
        OUTLINED_FUNCTION_33();
        v126 = __swift_storeEnumTagSinglePayload(v122, v123, v124, v125);
        *v268 = v120;
        if (v294)
        {
          OUTLINED_FUNCTION_45_41();
          v126 = sub_1D5614D38();
          v127 = v126;
        }

        else
        {
          v127 = 0;
        }

        v2 = v278;
        v92 = v281;
        v89 = &selRef_initWithType_itemIdentifier_;
        OUTLINED_FUNCTION_55_31(v126, sel_setPlayActivityFeatureName_);

        OUTLINED_FUNCTION_14_85();
        v93 = v275;
        if (!v129 & v128)
        {
          v171 = 0;
        }

        else
        {
          v171 = sub_1D560C168();
        }

        OUTLINED_FUNCTION_48_37();

        sub_1D5423428(v268, v284);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v202 = *(v92 + 16);
          OUTLINED_FUNCTION_1_13();
          sub_1D4F02458();
          v92 = v203;
        }

        OUTLINED_FUNCTION_6_118();
        if (v128)
        {
          OUTLINED_FUNCTION_22_41(v172);
          sub_1D4F02458();
          v92 = v204;
        }

        v113(v285, v275);
        sub_1D4E7661C(v307, &unk_1EC7F65D0, &qword_1D5638870);
        *(v92 + 16) = v120;
        OUTLINED_FUNCTION_4_134();
        OUTLINED_FUNCTION_32_57(v173);
        sub_1D512DFD8(v284, v174);
        sub_1D542348C(v268);
        v90 = v280;
        goto LABEL_95;
      }

      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v134, v135, v136, v93);
      sub_1D4E7661C(v102, &unk_1EC7F65A0, &unk_1D561D200);
      v137 = v2;
      if (v292 == 2)
      {
        v138 = v311;
        OUTLINED_FUNCTION_10_110(&v309);
        PlayableMusicItem.playbackSource.getter(v138, &v304);
        if (v304)
        {
          goto LABEL_42;
        }
      }

      else if (v292)
      {
LABEL_42:
        v148 = v311;
        OUTLINED_FUNCTION_10_110(&v309);
        v149 = *(v148 + 8);
        OUTLINED_FUNCTION_44_39();
        OUTLINED_FUNCTION_167_0(v290);
        sub_1D560D5C8();
        v2 = v283;
        v150 = *v283;
        v89 = v287;
        (*v283)(v263, v287);
        v151 = sub_1D560D4C8();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&qword_1D5638870, 1, v151);
        sub_1D4E7661C(&qword_1D5638870, &unk_1EC7EBF20, &unk_1D561F530);
        if (EnumTagSinglePayload == 1 || (v153 = v311, OUTLINED_FUNCTION_10_110(&v309), v154 = *(v153 + 8), OUTLINED_FUNCTION_167_0(&v302 + 8), OUTLINED_FUNCTION_44_39(), v155 = sub_1D560D6A8(), v150(v153, v89), (v155 & 1) == 0))
        {
          v156 = v311;
          OUTLINED_FUNCTION_10_110(&v309);
          v157 = *(v156 + 8);
          OUTLINED_FUNCTION_167_0(&v284);
          OUTLINED_FUNCTION_44_39();
          sub_1D560D808();
          v155 = v158;
          v150(v156, v89);
          if (!v155)
          {
LABEL_49:
            if (qword_1EDD54498 != -1)
            {
              swift_once();
            }

            v162 = sub_1D560C758();
            __swift_project_value_buffer(v162, qword_1EDD76AC0);
            OUTLINED_FUNCTION_65_30();
            v163 = sub_1D560C738();
            v164 = sub_1D56156C8();
            if (os_log_type_enabled(v163, v164))
            {
              v165 = swift_slowAlloc();
              v166 = swift_slowAlloc();
              *&v299[0] = v166;
              *v165 = 136446210;
              sub_1D4E62938(&v304, &v301);
              v167 = sub_1D5614DB8();
              v169 = v168;
              __swift_destroy_boxed_opaque_existential_1(&v304);
              v170 = sub_1D4E6835C(v167, v169, v299);

              *(v165 + 4) = v170;
              _os_log_impl(&dword_1D4E3F000, v163, v164, "Unable to generate playback intent from item: %{public}s due to lacking proper identifiers.", v165, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v166);
              MEMORY[0x1DA6ED200](v166, -1, -1);
              MEMORY[0x1DA6ED200](v165, -1, -1);
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1(&v304);
            }

            sub_1D4E7661C(v307, &unk_1EC7F65D0, &qword_1D5638870);
            v2 = v278;
            v89 = &selRef_initWithType_itemIdentifier_;
            goto LABEL_95;
          }
        }

        v159 = v277;
        if (v277[2])
        {
          sub_1D5423C84();

          OUTLINED_FUNCTION_62_35();
          if (v159)
          {

            OUTLINED_FUNCTION_45_41();
            v161 = sub_1D5614D38();
          }

          else
          {
            v161 = 0;
          }

          OUTLINED_FUNCTION_55_31(v160, sel_setPlayActivityFeatureName_);

          OUTLINED_FUNCTION_14_85();
          v90 = v280;
          if (!v129 & v128)
          {
            v177 = 0;
            OUTLINED_FUNCTION_70_24();
          }

          else
          {
            OUTLINED_FUNCTION_70_24();
            v175 = OUTLINED_FUNCTION_46_38();
            sub_1D4F48DE4(v175, v176);
            OUTLINED_FUNCTION_46_38();
            v177 = sub_1D560C168();
          }

          OUTLINED_FUNCTION_48_37();

          v178 = OUTLINED_FUNCTION_46_38();
          sub_1D50153E4(v178, v179);
          sub_1D5423428(v265, v260);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v211 = *(v92 + 16);
            OUTLINED_FUNCTION_1_13();
            sub_1D4F02458();
            v92 = v212;
          }

          OUTLINED_FUNCTION_6_118();
          if (v128)
          {
            OUTLINED_FUNCTION_22_41(v180);
            sub_1D4F02458();
            v92 = v213;
          }

          *(v92 + 16) = v155;
          OUTLINED_FUNCTION_4_134();
          OUTLINED_FUNCTION_32_57(v181);
          sub_1D512DFD8(v260, v182);
          sub_1D542348C(v265);
          v159 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v89 = &selRef_initWithType_itemIdentifier_;
          v2 = v137;
        }

        OUTLINED_FUNCTION_65_30();
        v183 = v279;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v205 = *(v183 + 16);
          OUTLINED_FUNCTION_1_13();
          sub_1D4F02354();
          v183 = v206;
        }

        v279 = v183;
        v185 = *(v183 + 16);
        v184 = *(v183 + 24);
        v186 = v185 + 1;
        v277 = v159;
        if (v185 >= v184 >> 1)
        {
          OUTLINED_FUNCTION_22_41(v184);
          sub_1D4F02354();
          v279 = v207;
        }

        sub_1D4E7661C(v307, &unk_1EC7F65D0, &qword_1D5638870);
        v187 = &v304;
        goto LABEL_94;
      }

      v139 = v311;
      OUTLINED_FUNCTION_10_110(&v309);
      v140 = *(v139 + 8);
      v89 = v262;
      OUTLINED_FUNCTION_44_39();
      sub_1D560D7A8();
      OUTLINED_FUNCTION_195(v306);
      v141(v262, v287);
      v142 = sub_1D560F148();
      v143 = __swift_getEnumTagSinglePayload(v264, 1, v142);
      sub_1D4E7661C(v264, &unk_1EC7F1970, &qword_1D561F4A0);
      if (v143 == 1)
      {
        goto LABEL_49;
      }

      v144 = v279;
      if (*(v279 + 16))
      {
        OUTLINED_FUNCTION_53_31();
        OUTLINED_FUNCTION_64_31(&v286);

        OUTLINED_FUNCTION_62_35();
        v146 = v277;
        if (v94)
        {

          OUTLINED_FUNCTION_45_41();
          v147 = sub_1D5614D38();
        }

        else
        {
          v147 = 0;
        }

        OUTLINED_FUNCTION_55_31(v145, sel_setPlayActivityFeatureName_);

        OUTLINED_FUNCTION_14_85();
        v90 = v280;
        if (!v129 & v128)
        {
          v190 = 0;
          OUTLINED_FUNCTION_70_24();
        }

        else
        {
          OUTLINED_FUNCTION_70_24();
          v188 = OUTLINED_FUNCTION_46_38();
          sub_1D4F48DE4(v188, v189);
          OUTLINED_FUNCTION_46_38();
          v190 = sub_1D560C168();
        }

        OUTLINED_FUNCTION_48_37();

        v191 = OUTLINED_FUNCTION_46_38();
        sub_1D50153E4(v191, v192);
        sub_1D5423428(v261, v259);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v214 = *(v92 + 16);
          OUTLINED_FUNCTION_1_13();
          sub_1D4F02458();
          v92 = v215;
        }

        OUTLINED_FUNCTION_6_118();
        if (v128)
        {
          OUTLINED_FUNCTION_22_41(v193);
          sub_1D4F02458();
          v92 = v216;
        }

        *(v92 + 16) = v144;
        OUTLINED_FUNCTION_4_134();
        OUTLINED_FUNCTION_32_57(v194);
        sub_1D512DFD8(v259, v195);
        sub_1D542348C(v261);
        v144 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v89 = &selRef_initWithType_itemIdentifier_;
        v146 = v277;
      }

      OUTLINED_FUNCTION_65_30();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v279 = v144;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v208 = v146[2];
        OUTLINED_FUNCTION_1_13();
        sub_1D4F02354();
        v146 = v209;
      }

      v185 = v146[2];
      v197 = v146[3];
      v186 = v185 + 1;
      if (v185 >= v197 >> 1)
      {
        OUTLINED_FUNCTION_22_41(v197);
        sub_1D4F02354();
        v277 = v210;
      }

      else
      {
        v277 = v146;
      }

      sub_1D4E7661C(v307, &unk_1EC7F65D0, &qword_1D5638870);
      v187 = &v303;
LABEL_94:
      v198 = *(v187 - 32);
      *(v198 + 16) = v186;
      sub_1D4E48324(&v304, v198 + 40 * v185 + 32);
LABEL_95:
      __swift_destroy_boxed_opaque_existential_1(&v309);
      v91 = v297 + 40;
      v88 = v298 - 1;
      if (v298 == 1)
      {

        v217 = v279;
        v218 = v277;
        goto LABEL_99;
      }
    }
  }

  v92 = MEMORY[0x1E69E7CC0];
  v218 = MEMORY[0x1E69E7CC0];
  v217 = MEMORY[0x1E69E7CC0];
LABEL_99:
  if (v218[2])
  {
    v219 = v92;

    sub_1D5423C84();

    v221 = *v258;
    if (v294)
    {

      OUTLINED_FUNCTION_45_41();
      v222 = sub_1D5614D38();
    }

    else
    {
      v222 = 0;
    }

    OUTLINED_FUNCTION_72_27(v220, sel_setPlayActivityFeatureName_);

    OUTLINED_FUNCTION_14_85();
    if (!v129 & v128)
    {
      v230 = 0;
    }

    else
    {
      v228 = OUTLINED_FUNCTION_20_9();
      sub_1D4F48DE4(v228, v229);
      OUTLINED_FUNCTION_20_9();
      v227 = sub_1D560C168();
      v230 = v227;
    }

    OUTLINED_FUNCTION_72_27(v227, v89[238]);

    v231 = OUTLINED_FUNCTION_20_9();
    sub_1D50153E4(v231, v232);
    sub_1D5423428(v258, v256);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v249 = *(v92 + 16);
      OUTLINED_FUNCTION_1_13();
      sub_1D4F02458();
      v219 = v250;
    }

    v234 = *(v219 + 16);
    v233 = *(v219 + 24);
    if (v234 >= v233 >> 1)
    {
      OUTLINED_FUNCTION_93_1(v233);
      sub_1D4F02458();
      v219 = v251;
    }

    sub_1D542348C(v258);
    *(v219 + 16) = v234 + 1;
    OUTLINED_FUNCTION_4_134();
    v237 = v219 + v235 + *(v236 + 72) * v234;
    v238 = v256;
LABEL_124:
    sub_1D512DFD8(v238, v237);
    goto LABEL_125;
  }

  if (*(v217 + 16))
  {
    v223 = v92;
    OUTLINED_FUNCTION_53_31();
    OUTLINED_FUNCTION_64_31(&v281);

    v225 = *v218;
    if (v294)
    {

      OUTLINED_FUNCTION_45_41();
      v226 = sub_1D5614D38();
    }

    else
    {
      v226 = 0;
    }

    OUTLINED_FUNCTION_72_27(v224, sel_setPlayActivityFeatureName_);

    OUTLINED_FUNCTION_14_85();
    if (!v129 & v128)
    {
      v242 = 0;
    }

    else
    {
      v240 = OUTLINED_FUNCTION_20_9();
      sub_1D4F48DE4(v240, v241);
      OUTLINED_FUNCTION_20_9();
      v239 = sub_1D560C168();
      v242 = v239;
    }

    OUTLINED_FUNCTION_72_27(v239, v89[238]);

    v243 = OUTLINED_FUNCTION_20_9();
    sub_1D50153E4(v243, v244);
    sub_1D5423428(v257, v255);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v252 = *(v92 + 16);
      OUTLINED_FUNCTION_1_13();
      sub_1D4F02458();
      v223 = v253;
    }

    v246 = *(v223 + 16);
    v245 = *(v223 + 24);
    if (v246 >= v245 >> 1)
    {
      OUTLINED_FUNCTION_93_1(v245);
      sub_1D4F02458();
      v223 = v254;
    }

    sub_1D542348C(v257);
    *(v223 + 16) = v246 + 1;
    OUTLINED_FUNCTION_4_134();
    v237 = v223 + v247 + *(v248 + 72) * v246;
    v238 = v255;
    goto LABEL_124;
  }

LABEL_125:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D542628C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1D56131C8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1D4E62938(a1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F06B8, &unk_1D564AB50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v23, v26);
    v13 = v27;
    v14 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    (*(v7 + 104))(v12, *MEMORY[0x1E6976970], v4);
    v15 = sub_1D5159364(v12, v13, v14);
    (*(v7 + 8))(v12, v4);
    v16 = [objc_allocWithZone(MusicKit_SoftLinking_MPCPlaybackIntent) initWithLegacyModelStationSeeding_];

    v17 = type metadata accessor for MusicPlaybackIntent();
    OUTLINED_FUNCTION_71_24(v17);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    *a2 = v16;
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    sub_1D4E7661C(v23, &unk_1EC7ED400, &qword_1D5620CF0);
    v26[0] = 0;
    v26[1] = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000029, 0x80000001D568DC60);
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](0xD000000000000037, 0x80000001D568DC90);
    OUTLINED_FUNCTION_6_3();
    *&v23[0] = 304;
    result = OUTLINED_FUNCTION_16_90();
    __break(1u);
  }

  return result;
}

void sub_1D5426514()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v103 = v3;
  v104 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v102 = v11;
  OUTLINED_FUNCTION_70_0();
  v12 = sub_1D560D838();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v13);
  v20 = &i - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &i - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6DF0, &qword_1D561D1E0);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_34_5();
  v27 = sub_1D560D9A8();
  v28 = OUTLINED_FUNCTION_4(v27);
  v105 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_135();
  v101 = v33;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_2();
  v106 = v35;
  sub_1D4ECCD9C(v6);
  if (!v113[3])
  {
    sub_1D4E7661C(v113, &unk_1EC7F65C0, &qword_1D562E6B0);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v27);
    goto LABEL_41;
  }

  v36 = v114;
  OUTLINED_FUNCTION_10_110(v113);
  v37 = *(v36 + 8);
  OUTLINED_FUNCTION_44_39();
  sub_1D560D828();
  (*(v15 + 8))(v22, v12);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v27);
  __swift_destroy_boxed_opaque_existential_1(v113);
  if (__swift_getEnumTagSinglePayload(v0, 1, v27) == 1)
  {
LABEL_41:
    sub_1D4E7661C(v0, &qword_1EC7F6DF0, &qword_1D561D1E0);
    OUTLINED_FUNCTION_9_115();
    i = 209;
    goto LABEL_42;
  }

  v41 = v105;
  v42 = v106;
  (*(v105 + 32))(v106, v0, v27);
  if ((v2 & 1) == 0)
  {
    sub_1D5427328(v6, v103, v43, v44, v45, v46, v47, v48, i, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);
    (*(v41 + 8))(v42, v27);
    goto LABEL_18;
  }

  v49 = *(v6 + 16);
  v50 = MEMORY[0x1E69E7CC0];
  if (v49)
  {
    i = v27;
    v112[0] = MEMORY[0x1E69E7CC0];
    sub_1D4F03EEC();
    v50 = v112[0];
    v51 = v6 + 32;
    do
    {
      sub_1D4E62938(v51, v113);
      v52 = v114;
      OUTLINED_FUNCTION_10_110(v113);
      v53 = *(v52 + 8);
      OUTLINED_FUNCTION_44_39();
      __swift_destroy_boxed_opaque_existential_1(v113);
      v112[0] = v50;
      v55 = *(v50 + 16);
      v54 = *(v50 + 24);
      if (v55 >= v54 >> 1)
      {
        OUTLINED_FUNCTION_93_1(v54);
        sub_1D4F03EEC();
        v50 = v112[0];
      }

      *(v50 + 16) = v55 + 1;
      (*(v15 + 32))(v50 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v55, v20, v12);
      v51 += 40;
      --v49;
    }

    while (v49);
    v27 = i;
    v41 = v105;
    v42 = v106;
  }

  v56 = *(v41 + 16);
  v57 = OUTLINED_FUNCTION_47_12();
  v58(v57);
  v59 = v100;
  sub_1D560D8E8();
  OUTLINED_FUNCTION_1_169();
  sub_1D54282B8(v60, v61);
  v62 = OUTLINED_FUNCTION_12_92();
  v6 = *(v41 + 8);
  (v6)(v59, v27);
  if ((v62 & 1) == 0)
  {
    sub_1D560D928();
    OUTLINED_FUNCTION_12_92();
    v63 = OUTLINED_FUNCTION_31_52();
    (v6)(v63);
    sub_1D560D878();
    OUTLINED_FUNCTION_12_92();
    v64 = OUTLINED_FUNCTION_31_52();
    (v6)(v64);
    if (qword_1EDD53D48 != -1)
    {
      OUTLINED_FUNCTION_20_10();
    }

    __swift_project_value_buffer(v27, qword_1EDD53D50);
    if (OUTLINED_FUNCTION_12_92())
    {
      v80 = OUTLINED_FUNCTION_47_42();
      (v6)(v80);
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6610, &qword_1D561D168);
      OUTLINED_FUNCTION_8_3(v81, &protocol witness table for MusicLibraryRequest<A>);
      OUTLINED_FUNCTION_147();
      type metadata accessor for MusicMovie();
      OUTLINED_FUNCTION_24_65();
LABEL_39:
      sub_1D54282B8(v82, v83);
      goto LABEL_14;
    }

    sub_1D560D898();
    OUTLINED_FUNCTION_12_92();
    v84 = OUTLINED_FUNCTION_31_52();
    (v6)(v84);
    if (v62)
    {
      goto LABEL_43;
    }

    sub_1D560D848();
    OUTLINED_FUNCTION_12_92();
    v85 = OUTLINED_FUNCTION_31_52();
    (v6)(v85);
    if (qword_1EC7E9740 != -1)
    {
      OUTLINED_FUNCTION_37_44();
    }

    __swift_project_value_buffer(v27, qword_1EC7F7CF0);
    if (OUTLINED_FUNCTION_12_92())
    {
      goto LABEL_43;
    }

    if (qword_1EDD53C38 != -1)
    {
      OUTLINED_FUNCTION_25_7();
    }

    __swift_project_value_buffer(v27, qword_1EDD53C40);
    if (OUTLINED_FUNCTION_12_92())
    {
      v86 = OUTLINED_FUNCTION_47_42();
      (v6)(v86);
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6600, &unk_1D561D190);
      OUTLINED_FUNCTION_8_3(v87, &protocol witness table for MusicLibraryRequest<A>);
      OUTLINED_FUNCTION_147();
      type metadata accessor for TVEpisode();
      OUTLINED_FUNCTION_23_66();
      goto LABEL_39;
    }

    if (qword_1EC7E8F18 != -1)
    {
      OUTLINED_FUNCTION_21_25();
    }

    __swift_project_value_buffer(v27, qword_1EC7F08A0);
    if (OUTLINED_FUNCTION_12_92())
    {
      v88 = OUTLINED_FUNCTION_47_42();
      (v6)(v88);
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F65F0, &qword_1D56381D0);
      OUTLINED_FUNCTION_8_3(v89, &protocol witness table for MusicLibraryRequest<A>);
      OUTLINED_FUNCTION_147();
      type metadata accessor for UploadedAudio();
      OUTLINED_FUNCTION_22_68();
      goto LABEL_39;
    }

    if (qword_1EDD53CE8 != -1)
    {
      OUTLINED_FUNCTION_19_29();
    }

    __swift_project_value_buffer(v27, qword_1EDD53CF0);
    if (OUTLINED_FUNCTION_12_92())
    {
      v90 = OUTLINED_FUNCTION_47_42();
      (v6)(v90);
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F65E0, &qword_1D5663EB0);
      OUTLINED_FUNCTION_8_3(v91, &protocol witness table for MusicLibraryRequest<A>);
      OUTLINED_FUNCTION_147();
      type metadata accessor for UploadedVideo();
      OUTLINED_FUNCTION_21_74();
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    OUTLINED_FUNCTION_33_3();
    MEMORY[0x1DA6EAC70](0xD00000000000003CLL);
    OUTLINED_FUNCTION_1_169();
    sub_1D54282B8(v96, v97);
    v98 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v98);

    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    OUTLINED_FUNCTION_6_3();
    for (i = 235; ; i = 227)
    {
LABEL_42:
      OUTLINED_FUNCTION_16_90();
      __break(1u);
LABEL_43:
      v95 = OUTLINED_FUNCTION_47_42();
      (v6)(v95);
      OUTLINED_FUNCTION_9_115();
    }
  }

  v65 = OUTLINED_FUNCTION_47_42();
  (v6)(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6620, &qword_1D562ECD0);
  OUTLINED_FUNCTION_8_3(v66, &protocol witness table for MusicLibraryRequest<A>);
  OUTLINED_FUNCTION_147();
  sub_1D5613D28();
LABEL_14:
  sub_1D560DD68();
  sub_1D4E62938(v113, v112);
  sub_1D4F43D5C(v103, &v107, &unk_1EC7F65C0, &qword_1D562E6B0);
  if (v110)
  {
    v67 = v111;
    OUTLINED_FUNCTION_10_110(&v107);
    v68 = *(v67 + 8);
    v69 = v102;
    OUTLINED_FUNCTION_44_39();
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v70, v71, v72, v12);
    __swift_destroy_boxed_opaque_existential_1(&v107);
  }

  else
  {
    sub_1D4E7661C(&v107, &unk_1EC7F65C0, &qword_1D562E6B0);
    v69 = v102;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v77, v78, v79, v12);
  }

  sub_1D5424200(v112, v69, v50, 0, v73, v74, v75, v76, i, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);

  sub_1D4E7661C(v69, &unk_1EC7EEC20, &unk_1D5623F70);
  __swift_destroy_boxed_opaque_existential_1(v112);
  (v6)(v42, v27);
  __swift_destroy_boxed_opaque_existential_1(v113);
LABEL_18:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5426EF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v24 = a2;
  v23 = sub_1D56131C8();
  v3 = *(v23 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D5613158();
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D560D838();
  v11 = *(v22 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4E62938(a1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADC8, &qword_1D561DBB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v25, v28);
    v15 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v16 = *(v15 + 8);
    sub_1D560EC98();
    __swift_project_boxed_opaque_existential_1(v28, v29);
    sub_1D56132C8();
    v17 = sub_1D5159818();
    (*(v7 + 8))(v10, v21);
    v18 = v23;
    (*(v3 + 104))(v6, *MEMORY[0x1E6976970], v23);
    v19 = sub_1D4F42FA4(v17, v6);
    (*(v3 + 8))(v6, v18);
    (*(v11 + 8))(v14, v22);
    *v24 = v19;
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_1D4E7661C(v25, &unk_1EC7ED400, &qword_1D5620CF0);
    v28[0] = 0;
    v28[1] = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000045, 0x80000001D568DE80);
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](11817, 0xE200000000000000);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

id sub_1D54272C8(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStoreSectionedCollection:a1 startIdentifierSet:a2];

  swift_unknownObjectRelease();
  return v3;
}

void sub_1D5427328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v22;
  a20 = v23;
  v163 = v24;
  v26 = v25;
  v165 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  OUTLINED_FUNCTION_22(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_3();
  v172 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  OUTLINED_FUNCTION_22(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_3();
  v175 = v42;
  OUTLINED_FUNCTION_70_0();
  v174 = sub_1D560F148();
  v43 = OUTLINED_FUNCTION_4(v174);
  v168 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_0();
  v171 = v47;
  OUTLINED_FUNCTION_70_0();
  v48 = sub_1D560D838();
  v49 = OUTLINED_FUNCTION_4(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_135();
  v173 = v55;
  v57 = MEMORY[0x1EEE9AC00](v56);
  v59 = v160 - v58;
  MEMORY[0x1EEE9AC00](v57);
  v61 = v160 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6DF0, &qword_1D561D1E0);
  OUTLINED_FUNCTION_22(v62);
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_16_0();
  v66 = sub_1D560D9A8();
  v67 = OUTLINED_FUNCTION_4(v66);
  v166 = v68;
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v73);
  v176 = v26;
  sub_1D4ECCD9C(v26);
  if (!v182)
  {
    sub_1D4E7661C(v181, &unk_1EC7F65C0, &qword_1D562E6B0);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v153, v154, v155, v66);
    goto LABEL_48;
  }

  v21 = v183;
  __swift_project_boxed_opaque_existential_1(v181, v182);
  v74 = *(v21 + 8);
  sub_1D560EC98();
  sub_1D560D828();
  v77 = *(v51 + 8);
  v75 = v51 + 8;
  v76 = v77;
  v77(v61, v48);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v66);
  __swift_destroy_boxed_opaque_existential_1(v181);
  if (__swift_getEnumTagSinglePayload(v20, 1, v66) == 1)
  {
LABEL_48:
    sub_1D4E7661C(v20, &qword_1EC7F6DF0, &qword_1D561D1E0);
    OUTLINED_FUNCTION_9_115();
    v160[0] = 252;
    goto LABEL_49;
  }

  v81 = *(v166 + 32);
  v162 = v66;
  v81(v167, v20, v66);
  v82 = *(v176 + 16);
  if (v82)
  {
    v83 = v176 + 32;
    v169 = v168 + 32;
    v168 += 8;
    v84 = MEMORY[0x1E69E7CC0];
    v176 = v48;
    while (1)
    {
      sub_1D4E62938(v83, v181);
      OUTLINED_FUNCTION_43_40();
      sub_1D560EC98();
      v85 = sub_1D560D808();
      v87 = v86;
      v76(v59, v48);
      if (v87)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_43_40();
      sub_1D560EC98();
      v88 = v175;
      sub_1D560D7A8();
      v89 = OUTLINED_FUNCTION_47_12();
      (v76)(v89);
      v90 = v174;
      if (__swift_getEnumTagSinglePayload(v88, 1, v174) != 1)
      {
        break;
      }

      sub_1D4E7661C(v88, &unk_1EC7F1970, &qword_1D561F4A0);
      OUTLINED_FUNCTION_43_40();
      sub_1D560EC98();
      v91 = v172;
      sub_1D560D5C8();
      v92 = OUTLINED_FUNCTION_47_12();
      (v76)(v92);
      v93 = sub_1D560D4C8();
      if (__swift_getEnumTagSinglePayload(v91, 1, v93) != 1)
      {
        v85 = sub_1D560D4B8();
        v87 = v100;
        OUTLINED_FUNCTION_24_0(v93);
        v102 = *(v101 + 8);
        v98 = OUTLINED_FUNCTION_47_12();
        goto LABEL_11;
      }

      sub_1D4E7661C(v91, &unk_1EC7EBF20, &unk_1D561F530);
      __swift_destroy_boxed_opaque_existential_1(v181);
LABEL_17:
      v83 += 40;
      --v82;
      v48 = v176;
      if (!v82)
      {
        goto LABEL_18;
      }
    }

    OUTLINED_FUNCTION_195(&a17);
    v94 = v171;
    v95(v171, v88, v90);
    v85 = sub_1D560F138();
    v87 = v96;
    OUTLINED_FUNCTION_195(&a16);
    v98 = v94;
    v99 = v90;
LABEL_11:
    v97(v98, v99);
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(v181);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v106 = *(v84 + 16);
      OUTLINED_FUNCTION_1_13();
      sub_1D4F0062C();
      v84 = v107;
    }

    v104 = *(v84 + 16);
    v103 = *(v84 + 24);
    if (v104 >= v103 >> 1)
    {
      OUTLINED_FUNCTION_93_1(v103);
      sub_1D4F0062C();
      v84 = v108;
    }

    *(v84 + 16) = v104 + 1;
    v105 = v84 + 16 * v104;
    *(v105 + 32) = v85;
    *(v105 + 40) = v87;
    goto LABEL_17;
  }

LABEL_18:
  OUTLINED_FUNCTION_167_0(&a14);
  v110 = v161;
  v111 = v162;
  (*(v109 + 16))(v161, v167, v162);
  sub_1D560D8E8();
  OUTLINED_FUNCTION_1_169();
  sub_1D54282B8(v112, v113);
  v114 = OUTLINED_FUNCTION_11_112();
  v21 = *(v75 + 8);
  v115 = OUTLINED_FUNCTION_132_1();
  (v21)(v115);
  if (v114)
  {
    goto LABEL_21;
  }

  sub_1D560D928();
  v116 = OUTLINED_FUNCTION_11_112();
  v117 = OUTLINED_FUNCTION_132_1();
  (v21)(v117);
  if (v116 & 1) != 0 || (sub_1D560D878(), v118 = OUTLINED_FUNCTION_11_112(), v119 = OUTLINED_FUNCTION_132_1(), (v21)(v119), (v118))
  {
LABEL_21:
    v120 = OUTLINED_FUNCTION_70();
    (v21)(v120);
    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6620, &qword_1D562ECD0);
    OUTLINED_FUNCTION_8_3(v121, &protocol witness table for MusicLibraryRequest<A>);
    OUTLINED_FUNCTION_46_7();
    sub_1D5613D28();
    sub_1D560DD68();
    goto LABEL_22;
  }

  if (qword_1EDD53D48 != -1)
  {
    OUTLINED_FUNCTION_20_10();
  }

  __swift_project_value_buffer(v111, qword_1EDD53D50);
  if (OUTLINED_FUNCTION_11_112())
  {
    v133 = OUTLINED_FUNCTION_70();
    (v21)(v133);
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6610, &qword_1D561D168);
    OUTLINED_FUNCTION_8_3(v134, &protocol witness table for MusicLibraryRequest<A>);
    OUTLINED_FUNCTION_46_7();
    type metadata accessor for MusicMovie();
    OUTLINED_FUNCTION_24_65();
    sub_1D54282B8(v135, v136);
    OUTLINED_FUNCTION_51_34();
    goto LABEL_22;
  }

  sub_1D560D898();
  v137 = OUTLINED_FUNCTION_11_112();
  v138 = OUTLINED_FUNCTION_132_1();
  (v21)(v138);
  if (v137)
  {
    goto LABEL_50;
  }

  sub_1D560D848();
  v139 = OUTLINED_FUNCTION_11_112();
  v140 = OUTLINED_FUNCTION_132_1();
  (v21)(v140);
  if (v139)
  {
    goto LABEL_50;
  }

  if (qword_1EC7E9740 != -1)
  {
    OUTLINED_FUNCTION_37_44();
  }

  __swift_project_value_buffer(v111, qword_1EC7F7CF0);
  if (OUTLINED_FUNCTION_11_112())
  {
    goto LABEL_50;
  }

  if (qword_1EDD53C38 != -1)
  {
    OUTLINED_FUNCTION_25_7();
  }

  __swift_project_value_buffer(v111, qword_1EDD53C40);
  if (OUTLINED_FUNCTION_11_112())
  {
    v141 = OUTLINED_FUNCTION_70();
    (v21)(v141);
    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6600, &unk_1D561D190);
    OUTLINED_FUNCTION_8_3(v142, &protocol witness table for MusicLibraryRequest<A>);
    OUTLINED_FUNCTION_46_7();
    type metadata accessor for TVEpisode();
    OUTLINED_FUNCTION_23_66();
    sub_1D54282B8(v143, v144);
    OUTLINED_FUNCTION_51_34();
    goto LABEL_22;
  }

  if (qword_1EC7E8F18 != -1)
  {
    OUTLINED_FUNCTION_21_25();
  }

  __swift_project_value_buffer(v111, qword_1EC7F08A0);
  if (OUTLINED_FUNCTION_11_112())
  {
    v145 = OUTLINED_FUNCTION_70();
    (v21)(v145);
    v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F65F0, &qword_1D56381D0);
    OUTLINED_FUNCTION_8_3(v146, &protocol witness table for MusicLibraryRequest<A>);
    OUTLINED_FUNCTION_46_7();
    type metadata accessor for UploadedAudio();
    OUTLINED_FUNCTION_22_68();
    sub_1D54282B8(v147, v148);
    OUTLINED_FUNCTION_51_34();
    goto LABEL_22;
  }

  if (qword_1EDD53CE8 != -1)
  {
    OUTLINED_FUNCTION_19_29();
  }

  __swift_project_value_buffer(v111, qword_1EDD53CF0);
  if ((OUTLINED_FUNCTION_11_112() & 1) == 0)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    OUTLINED_FUNCTION_16_6();
    OUTLINED_FUNCTION_33_3();
    MEMORY[0x1DA6EAC70](0xD00000000000003CLL);
    OUTLINED_FUNCTION_1_169();
    sub_1D54282B8(v157, v158);
    v159 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v159);

    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    OUTLINED_FUNCTION_6_3();
    for (v160[0] = 292; ; v160[0] = 278)
    {
LABEL_49:
      OUTLINED_FUNCTION_16_90();
      __break(1u);
LABEL_50:
      v156 = OUTLINED_FUNCTION_70();
      (v21)(v156);
      OUTLINED_FUNCTION_9_115();
    }
  }

  v149 = OUTLINED_FUNCTION_70();
  (v21)(v149);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F65E0, &qword_1D5663EB0);
  OUTLINED_FUNCTION_8_3(v150, &protocol witness table for MusicLibraryRequest<A>);
  OUTLINED_FUNCTION_46_7();
  type metadata accessor for UploadedVideo();
  OUTLINED_FUNCTION_21_74();
  sub_1D54282B8(v151, v152);
  OUTLINED_FUNCTION_51_34();
LABEL_22:
  swift_getKeyPath();
  MEMORY[0x1DA6E3B00]();

  sub_1D4E62938(v181, v180);
  sub_1D4F43D5C(v163, v177, &unk_1EC7F65C0, &qword_1D562E6B0);
  if (v178)
  {
    v110 = v179;
    __swift_project_boxed_opaque_existential_1(v177, v178);
    v122 = *(v110 + 8);
    OUTLINED_FUNCTION_58_35();
    sub_1D560EC98();
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v123, v124, v125, v48);
    __swift_destroy_boxed_opaque_existential_1(v177);
  }

  else
  {
    sub_1D4E7661C(v177, &unk_1EC7F65C0, &qword_1D562E6B0);
    OUTLINED_FUNCTION_58_35();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v130, v131, v132, v48);
  }

  sub_1D5424200(v180, v110, MEMORY[0x1E69E7CC0], 0, v126, v127, v128, v129, v160[0], v160[1], v161, v162, v163, v164, v165, v166, v167, v168, v169, v170);
  sub_1D4E7661C(v110, &unk_1EC7EEC20, &unk_1D5623F70);
  __swift_destroy_boxed_opaque_existential_1(v180);
  (v21)(v167, v111);
  __swift_destroy_boxed_opaque_existential_1(v181);
  OUTLINED_FUNCTION_46();
}

id MusicPlaybackIntent.rawPlaybackIntent.getter()
{
  v1 = [*v0 rawPlaybackIntent];

  return v1;
}

uint64_t type metadata accessor for MusicPlaybackIntent()
{
  result = qword_1EDD5BF40;
  if (!qword_1EDD5BF40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D542810C()
{
  sub_1D512F270();
  if (v0 <= 0x3F)
  {
    sub_1D5428190();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D5428190()
{
  if (!qword_1EDD5B118)
  {
    type metadata accessor for MusicPlaybackIntentDonation(255);
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD5B118);
    }
  }
}

id sub_1D54281E8(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_1D5616158();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF50, &unk_1D561F550);
  v10 = sub_1D5615158();

  v11 = [v5 initWithLegacyLibraryRequest:v9 allowedIdentifiers:v10 startIdentifierSet:a3 onlyLibraryContent:a4 & 1];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t sub_1D54282B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_37_44()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_51_34()
{

  return sub_1D560DD68();
}

uint64_t OUTLINED_FUNCTION_65_30()
{

  return sub_1D4E62938(v0 - 136, v0 - 224);
}

uint64_t OUTLINED_FUNCTION_71_24(uint64_t a1)
{
  v2 = *(a1 + 20);

  return type metadata accessor for MusicPlaybackIntentDonation(0);
}

id OUTLINED_FUNCTION_72_27(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t type metadata accessor for StorePlatformRadioShow()
{
  result = qword_1EDD557E8;
  if (!qword_1EDD557E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D54284CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v56 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_71_1();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6648, &unk_1D56640A0);
  OUTLINED_FUNCTION_4(v57);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v54 - v28;
  v60 = type metadata accessor for StorePlatformRadioShow();
  v30 = OUTLINED_FUNCTION_14(v60);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_0();
  v34 = v33;
  v36 = a1[3];
  v35 = a1[4];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_1D542A824();
  v58 = v29;
  v37 = v59;
  sub_1D5616398();
  if (v37)
  {
    return __swift_destroy_boxed_opaque_existential_1(v61);
  }

  v54 = v14;
  v38 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  LOBYTE(v62) = 0;
  sub_1D4F886BC();
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_16_69();
  sub_1D5615F78();
  sub_1D4FD23EC(v2, v34, &qword_1EC7EB5B8, &unk_1D56206A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  v64 = 1;
  sub_1D50C44B0(&qword_1EDD528F8);
  sub_1D5615F78();
  v39 = v60;
  *(v34 + v60[5]) = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  v64 = 2;
  sub_1D514057C(&qword_1EDD52908);
  OUTLINED_FUNCTION_7_92();
  *(v34 + v39[6]) = v62;
  v64 = 3;
  sub_1D4F89C9C();
  OUTLINED_FUNCTION_16_69();
  sub_1D5615FD8();
  v40 = v63;
  v41 = (v34 + v39[7]);
  *v41 = v62;
  v41[1] = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  LOBYTE(v62) = 4;
  sub_1D4F88A24();
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_7_92();
  sub_1D4FD23EC(v20, v34 + v39[8], &qword_1EC7EC960, &unk_1D56334C0);
  LOBYTE(v62) = 5;
  OUTLINED_FUNCTION_16_69();
  v42 = sub_1D5615F38();
  LODWORD(v59) = 1;
  v43 = (v34 + v39[9]);
  *v43 = v42;
  v43[1] = v44;
  LOBYTE(v62) = 6;
  OUTLINED_FUNCTION_16_69();
  v45 = sub_1D5615F38();
  v46 = (v34 + v39[10]);
  *v46 = v45;
  v46[1] = v47;
  type metadata accessor for StorePlatformUber();
  LOBYTE(v62) = 7;
  OUTLINED_FUNCTION_10_111();
  sub_1D542AA80(v48);
  OUTLINED_FUNCTION_31_1();
  v49 = v54;
  OUTLINED_FUNCTION_7_92();
  sub_1D4FD23EC(v49, v34 + v39[11], &qword_1EC7EFBD0, &qword_1D5634650);
  sub_1D560C0A8();
  LOBYTE(v62) = 8;
  OUTLINED_FUNCTION_0_226();
  sub_1D542AA80(v50);
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_7_92();
  v51 = OUTLINED_FUNCTION_4_93();
  v52(v51);
  sub_1D4FD23EC(v38, v34 + v39[12], &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D542A878(v34, v55);
  __swift_destroy_boxed_opaque_existential_1(v61);
  return sub_1D542A8DC(v34, type metadata accessor for StorePlatformRadioShow);
}

BOOL sub_1D5428D08(uint64_t a1, uint64_t a2)
{
  v165 = sub_1D560C0A8();
  v5 = OUTLINED_FUNCTION_4(v165);
  v161 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v159 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v160 = v14;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14(v163);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v164 = v18;
  v168 = type metadata accessor for StorePlatformUber();
  v19 = OUTLINED_FUNCTION_14(v168);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_0();
  v162 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_3();
  v166 = v27;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFDD8, &unk_1D5639570);
  OUTLINED_FUNCTION_14(v167);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_3();
  v169 = v31;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4(v175);
  v172 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  v170 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_13_3();
  v171 = v41;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC968, &unk_1D5622290);
  OUTLINED_FUNCTION_14(v173);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13_3();
  v174 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v46);
  v48 = v47;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v159 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v54);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_71_1();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_22(v58);
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_11();
  v62 = MEMORY[0x1EEE9AC00](v61);
  v64 = &v159 - v63;
  v65 = *(v62 + 56);
  v176 = a1;
  sub_1D4F1C460(a1, &v159 - v63, &qword_1EC7EB5B8, &unk_1D56206A0);
  sub_1D4F1C460(a2, &v64[v65], &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v64, 1, v46);
  if (v66)
  {
    OUTLINED_FUNCTION_57(&v64[v65], 1, v46);
    if (v66)
    {
      sub_1D4E50004(v64, &qword_1EC7EB5B8, &unk_1D56206A0);
      goto LABEL_15;
    }

LABEL_9:
    v67 = &qword_1EC7EC330;
    v68 = &qword_1D56222C0;
LABEL_10:
    v69 = v64;
LABEL_11:
    sub_1D4E50004(v69, v67, v68);
    return 0;
  }

  sub_1D4F1C460(v64, v2, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(&v64[v65], 1, v46);
  if (v66)
  {
    (*(v48 + 8))(v2, v46);
    goto LABEL_9;
  }

  (*(v48 + 32))(v53, &v64[v65], v46);
  sub_1D542A980(&qword_1EC7EBEB8);
  v71 = sub_1D5614D18();
  v72 = *(v48 + 8);
  v72(v53, v46);
  v72(v2, v46);
  sub_1D4E50004(v64, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v71 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v73 = type metadata accessor for StorePlatformRadioShow();
  v74 = v73[5];
  v75 = v176;
  v76 = a2;
  v77 = *(a2 + v74);
  if (*(v176 + v74))
  {
    if (!v77)
    {
      return 0;
    }

    v78 = *(a2 + v74);

    sub_1D4F28F1C();
    v80 = v79;

    if ((v80 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v77)
  {
    return 0;
  }

  v81 = v73[6];
  v82 = *(a2 + v81);
  if (*(v75 + v81))
  {
    if (!v82)
    {
      return 0;
    }

    v83 = *(a2 + v81);

    sub_1D4F29174();
    v85 = v84;

    if ((v85 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v82)
  {
    return 0;
  }

  v86 = v73[7];
  v87 = *(v75 + v86);
  v88 = *(v75 + v86 + 8);
  v89 = (a2 + v86);
  v90 = v87 == *v89 && v88 == v89[1];
  if (!v90 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v91 = v73[8];
  v92 = v174;
  v93 = *(v173 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v94, v95, v96, v97);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v98, v99, v100, v101);
  v102 = v175;
  OUTLINED_FUNCTION_57(v92, 1, v175);
  if (v66)
  {
    OUTLINED_FUNCTION_57(v92 + v93, 1, v102);
    if (v66)
    {
      sub_1D4E50004(v92, &qword_1EC7EC960, &unk_1D56334C0);
      goto LABEL_40;
    }

LABEL_38:
    v67 = &qword_1EC7EC968;
    v68 = &unk_1D5622290;
    v69 = v92;
    goto LABEL_11;
  }

  v103 = v171;
  sub_1D4F1C460(v92, v171, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_57(v92 + v93, 1, v102);
  if (v104)
  {
    (*(v172 + 8))(v103, v102);
    goto LABEL_38;
  }

  v105 = v172;
  v106 = v92 + v93;
  v107 = v170;
  (*(v172 + 32))(v170, v106, v102);
  sub_1D542AA00(&qword_1EC7EC988);
  v108 = sub_1D5614D18();
  v109 = *(v105 + 8);
  v109(v107, v102);
  v109(v103, v102);
  sub_1D4E50004(v92, &qword_1EC7EC960, &unk_1D56334C0);
  if ((v108 & 1) == 0)
  {
    return 0;
  }

LABEL_40:
  v110 = v73[9];
  OUTLINED_FUNCTION_25_15();
  if (v111)
  {
    if (!v112)
    {
      return 0;
    }

    v115 = *v113 == *v114 && v111 == v112;
    if (!v115 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v112)
  {
    return 0;
  }

  v116 = v73[10];
  OUTLINED_FUNCTION_25_15();
  if (v117)
  {
    if (!v118)
    {
      return 0;
    }

    v121 = *v119 == *v120 && v117 == v118;
    if (!v121 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v118)
  {
    return 0;
  }

  v122 = v73[11];
  v123 = *(v167 + 48);
  v124 = v169;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v125, v126, v127, v128);
  v129 = v124;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v130, v131, v132, v133);
  v134 = v168;
  OUTLINED_FUNCTION_57(v124, 1, v168);
  if (v66)
  {
    OUTLINED_FUNCTION_57(v124 + v123, 1, v134);
    if (v66)
    {
      sub_1D4E50004(v124, &qword_1EC7EFBD0, &qword_1D5634650);
      goto LABEL_68;
    }

LABEL_66:
    v67 = &qword_1EC7EFDD8;
    v68 = &unk_1D5639570;
    v69 = v129;
    goto LABEL_11;
  }

  v135 = v124;
  v136 = v166;
  sub_1D4F1C460(v135, v166, &qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_57(v129 + v123, 1, v134);
  if (v137)
  {
    OUTLINED_FUNCTION_13_90();
    sub_1D542A8DC(v136, v138);
    goto LABEL_66;
  }

  v139 = v129 + v123;
  v140 = v162;
  sub_1D5119188(v139, v162);
  v141 = sub_1D54D5E40(v136, v140);
  sub_1D542A8DC(v140, type metadata accessor for StorePlatformUber);
  sub_1D542A8DC(v136, type metadata accessor for StorePlatformUber);
  sub_1D4E50004(v129, &qword_1EC7EFBD0, &qword_1D5634650);
  if (!v141)
  {
    return 0;
  }

LABEL_68:
  v142 = v73[12];
  v143 = *(v163 + 48);
  v144 = v164;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v145, v146, v147, v148);
  v149 = v76 + v142;
  v64 = v144;
  sub_1D4F1C460(v149, v144 + v143, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v150 = v165;
  OUTLINED_FUNCTION_57(v144, 1, v165);
  if (v66)
  {
    OUTLINED_FUNCTION_57(v144 + v143, 1, v150);
    if (v66)
    {
      sub_1D4E50004(v144, &unk_1EC7E9CA8, &unk_1D561D1D0);
      return 1;
    }

    goto LABEL_76;
  }

  v151 = v160;
  sub_1D4F1C460(v144, v160, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v144 + v143, 1, v150);
  if (v152)
  {
    (*(v161 + 8))(v151, v150);
LABEL_76:
    v67 = &qword_1EC7E9FB0;
    v68 = &qword_1D562C590;
    goto LABEL_10;
  }

  v153 = v161;
  v154 = &v64[v143];
  v155 = v159;
  (*(v161 + 32))(v159, v154, v150);
  OUTLINED_FUNCTION_0_226();
  sub_1D542AA80(v156);
  v157 = sub_1D5614D18();
  v158 = *(v153 + 8);
  v158(v155, v150);
  v158(v151, v150);
  sub_1D4E50004(v64, &unk_1EC7E9CA8, &unk_1D561D1D0);
  return (v157 & 1) != 0;
}

uint64_t sub_1D5429874(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 25705 && a2 == 0xE200000000000000;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F4E73656E757469 && a2 == 0xEB00000000736574;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x74736F48776F6873 && a2 == 0xEC000000656D614ELL;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 1919246965 && a2 == 0xE400000000000000;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 7107189 && a2 == 0xE300000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1D5616168();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_1D5429B44(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6169726F74696465;
      break;
    case 3:
      result = 25705;
      break;
    case 4:
      result = 0x6F4E73656E757469;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0x74736F48776F6873;
      break;
    case 7:
      result = 1919246965;
      break;
    case 8:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5429C3C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6658, &qword_1D56640B0);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D542A824();
  sub_1D56163D8();
  LOBYTE(v31) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  sub_1D4F7CD24();
  OUTLINED_FUNCTION_4_3();
  if (!v2)
  {
    v14 = type metadata accessor for StorePlatformRadioShow();
    v31 = *(v3 + v14[5]);
    v33 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    sub_1D50C44B0(&qword_1EC7EC9D8);
    OUTLINED_FUNCTION_4_3();
    v31 = *(v3 + v14[6]);
    v33 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    sub_1D514057C(&qword_1EC7EC9F0);
    OUTLINED_FUNCTION_4_3();
    v15 = (v3 + v14[7]);
    v17 = *v15;
    v16 = v15[1];
    v31 = v17;
    v32 = v16;
    v33 = 3;
    sub_1D4F89BA0();
    sub_1D56160C8();
    v18 = v14[8];
    LOBYTE(v31) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D4F7D044();
    OUTLINED_FUNCTION_4_3();
    v19 = (v3 + v14[9]);
    v20 = *v19;
    v21 = v19[1];
    OUTLINED_FUNCTION_29_31(5);
    v22 = (v3 + v14[10]);
    v23 = *v22;
    v24 = v22[1];
    OUTLINED_FUNCTION_29_31(6);
    v25 = v14[11];
    LOBYTE(v31) = 7;
    type metadata accessor for StorePlatformUber();
    OUTLINED_FUNCTION_10_111();
    sub_1D542AA80(v26);
    OUTLINED_FUNCTION_4_3();
    v27 = v14[12];
    LOBYTE(v31) = 8;
    sub_1D560C0A8();
    OUTLINED_FUNCTION_0_226();
    sub_1D542AA80(v28);
    OUTLINED_FUNCTION_4_3();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1D5429FF0()
{
  v2 = v0;
  v93 = sub_1D560C0A8();
  v3 = OUTLINED_FUNCTION_4(v93);
  v88 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v87 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v92 = v12;
  v91 = type metadata accessor for StorePlatformUber();
  v13 = OUTLINED_FUNCTION_14(v91);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_0();
  v86 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFBD0, &qword_1D5634650);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v89 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4(v22);
  v84 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_3();
  v83 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_71_1();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v32);
  v34 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v82 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v41 = OUTLINED_FUNCTION_22(v40);
  v43 = *(v42 + 64);
  v44 = MEMORY[0x1EEE9AC00](v41);
  v85 = &v82 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  sub_1D4F1C460(v0, &v82 - v46, &qword_1EC7EB5B8, &unk_1D56206A0);
  v47 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v47, v48, v32);
  v90 = v34;
  if (v70)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v49 = OUTLINED_FUNCTION_22_50();
    v50(v49);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_1_8();
    sub_1D542A980(v51);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v34 + 8))(v39, v32);
  }

  v52 = type metadata accessor for StorePlatformRadioShow();
  if (*(v0 + v52[5]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v52[6]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v53 = (v0 + v52[7]);
  v54 = *v53;
  v55 = v53[1];
  sub_1D5614E28();
  sub_1D4F1C460(v0 + v52[8], v1, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_57(v1, 1, v22);
  if (v70)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v57 = v83;
    v56 = v84;
    (*(v84 + 32))(v83, v1, v22);
    OUTLINED_FUNCTION_27();
    sub_1D542AA00(&qword_1EC7ECA38);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v56 + 8))(v57, v22);
  }

  v58 = v90;
  v59 = (v0 + v52[9]);
  if (v59[1])
  {
    v60 = *v59;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v61 = (v0 + v52[10]);
  if (v61[1])
  {
    v62 = *v61;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v63 = v93;
  v64 = v89;
  sub_1D4F1C460(v2 + v52[11], v89, &qword_1EC7EFBD0, &qword_1D5634650);
  v65 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v65, v66, v91);
  if (v70)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v67 = v86;
    sub_1D5119188(v64, v86);
    OUTLINED_FUNCTION_27();
    sub_1D4F1C460(v67, v85, &qword_1EC7EB5B8, &unk_1D56206A0);
    v68 = OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_57(v68, v69, v32);
    if (v70)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v71 = OUTLINED_FUNCTION_22_50();
      v72(v71);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_1_8();
      sub_1D542A980(v73);
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      (*(v58 + 8))(v39, v32);
    }

    OUTLINED_FUNCTION_13_90();
    sub_1D542A8DC(v67, v74);
  }

  v75 = v92;
  sub_1D4F1C460(v2 + v52[12], v92, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v76 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v76, v77, v63);
  if (v70)
  {
    return OUTLINED_FUNCTION_36();
  }

  v79 = v87;
  v78 = v88;
  (*(v88 + 32))(v87, v75, v63);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_0_226();
  sub_1D542AA80(v80);
  OUTLINED_FUNCTION_104();
  sub_1D5614CB8();
  return (*(v78 + 8))(v79, v63);
}