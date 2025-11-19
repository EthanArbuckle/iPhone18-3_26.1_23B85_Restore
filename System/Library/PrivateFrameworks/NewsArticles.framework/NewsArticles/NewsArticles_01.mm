void *sub_1D79A83B0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v13 = *(a4 + 16);
    v6 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v13;
    return v6;
  }

  if (!a3)
  {
    v13 = *(a4 + 16);
LABEL_13:
    v6 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = a2;
      v9 = 0;
      v10 = a3 - 1;
      v11 = (a4 + 16 * v6 + 24);
      while (v6 + v9 <= *(a4 + 16))
      {
        v12 = *v11;
        *v8 = *(v11 - 1);
        v8[1] = v12;
        if (!(v10 + v9))
        {

          v13 = v6 + v9 - 1;
          goto LABEL_13;
        }

        --v9;
        v11 -= 2;
        v8 += 2;
        v13 = v6 + v9;
        if (!(v6 + v9))
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    v13 = 0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D79A8490(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1D79A8020(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_1D79A8584()
{
  result = qword_1EE0BB0C8;
  if (!qword_1EE0BB0C8)
  {
    sub_1D79A7880(255, qword_1EE0BF240, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BB0C8);
  }

  return result;
}

uint64_t sub_1D79A8600@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;
}

size_t sub_1D79A8620(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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
LABEL_30:
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

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1D79A7924(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_1D79A8814(size_t a1, int64_t a2, char a3)
{
  result = sub_1D79A8620(a1, a2, a3, *v3, &unk_1EE0BEA48, type metadata accessor for ArticleViewerBlueprint.ArticleItem, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
  *v3 = result;
  return result;
}

uint64_t sub_1D79A8864(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D79A88CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D79A8934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D79A89C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D79A8A20(uint64_t a1, uint64_t a2)
{
  sub_1D7998FAC(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D79A8AB4(uint64_t a1)
{
  sub_1D7A2F244(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D79A8B40(uint64_t a1, uint64_t a2)
{
  sub_1D7998EF4(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D79A8BC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D79A8C28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D79A8C90(uint64_t a1)
{
  v2 = sub_1D7D3024C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7D27EBC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D27BBC();
  sub_1D7D27BAC();
  sub_1D799CC84(a1, v16);
  sub_1D7D27EAC();
  sub_1D7D27B9C();
  v16[3] = v7;
  v16[4] = sub_1D799F6FC(&unk_1EE0BDEF0, MEMORY[0x1E69973D8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(v8 + 16))(boxed_opaque_existential_1, v11, v7);
  sub_1D7D3023C();
  (*(v3 + 8))(v6, v2);
  sub_1D79A8F2C(v16);
  v13 = sub_1D7D3021C();
  MEMORY[0x1DA70DC90](v13);

  return (*(v8 + 8))(v11, v7);
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

uint64_t sub_1D79A8F2C(uint64_t a1)
{
  sub_1D79A8F88();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D79A8F88()
{
  if (!qword_1EE0BB138)
  {
    sub_1D798C468(255, qword_1EE0BB140);
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BB138);
    }
  }
}

unint64_t sub_1D79A8FF4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CDB98);
  result = sub_1D7D28D2C();
  if (v7)
  {
    v4 = type metadata accessor for PostPurchaseOnboardingPrewarmer();
    v5 = swift_allocObject();
    sub_1D799D69C(&v6, v5 + 16);
    a2[3] = v4;
    result = sub_1D79A95E8();
    a2[4] = result;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D79A90A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D79A9278();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798F168(0, &unk_1EE0CDD80);
    result = sub_1D7D28D2C();
    if (v15)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1D798F168(0, &qword_1EE0C4F58);
      sub_1D7D28D2C();
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1D798F168(0, &qword_1EE0C6858);
      sub_1D7D28D2C();
      v6 = type metadata accessor for ContentPrefetchManager();
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      sub_1D799D69C(&v14, v7 + 24);
      *(v7 + 64) = v11;
      *(v7 + 80) = v12;
      *(v7 + 96) = v13;
      *(v7 + 104) = v8;
      *(v7 + 120) = v9;
      *(v7 + 136) = v10;
      a2[3] = v6;
      result = sub_1D799D038(&unk_1EE0C73C8, type metadata accessor for ContentPrefetchManager);
      a2[4] = result;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1D79A9278()
{
  result = qword_1EE0BEEA8;
  if (!qword_1EE0BEEA8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0BEEA8);
  }

  return result;
}

void sub_1D79A92DC()
{
  if (!qword_1EE0BB418)
  {
    type metadata accessor for RecipeContentPrefetchItem();
    v0 = sub_1D7D292FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BB418);
    }
  }
}

uint64_t type metadata accessor for RecipeContentPrefetchItem()
{
  result = qword_1EE0BCD08;
  if (!qword_1EE0BCD08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D79A9390()
{
  result = sub_1D79A9404();
  if (v1 <= 0x3F)
  {
    result = sub_1D7D27D2C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D79A9404()
{
  result = qword_1EE0BECC0;
  if (!qword_1EE0BECC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0BECC0);
  }

  return result;
}

id sub_1D79A9458(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 isLowPowerModeEnabled];

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    result = [objc_opt_self() sharedNetworkReachability];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    v4 = [result isLowDataModeEnabled];
  }

  return [v1 setSuspended_];
}

unint64_t sub_1D79A9548()
{
  result = qword_1EE0C73D8[0];
  if (!qword_1EE0C73D8[0])
  {
    type metadata accessor for ContentPrefetchManager();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0C73D8);
  }

  return result;
}

unint64_t sub_1D79A959C(uint64_t a1)
{
  result = sub_1D79A9548();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D79A95E8()
{
  result = qword_1EE0C3A60[0];
  if (!qword_1EE0C3A60[0])
  {
    type metadata accessor for PostPurchaseOnboardingPrewarmer();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0C3A60);
  }

  return result;
}

uint64_t sub_1D79A9658()
{
  result = type metadata accessor for BlueprintArticleViewerTokenState();
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

uint64_t sub_1D79A9724()
{
  sub_1D7D2C80C();
  sub_1D7D2A23C();
  result = swift_getTupleTypeMetadata2();
  if (v1 <= 0x3F)
  {
    type metadata accessor for BlueprintArticleViewerToken();
    sub_1D7D2A75C();
    sub_1D7D2B28C();
    result = swift_getTupleTypeMetadata3();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t BlueprintArticleViewerTokenSession.init(blueprintProvider:blueprintLayoutProvider:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BlueprintArticleViewerTokenState();
  swift_storeEnumTagMultiPayload();
  *(v2 + *(*v2 + 152)) = a1;
  *(v2 + *(*v2 + 160)) = a2;
  return v2;
}

uint64_t BlueprintRecipeViewerTokenSession.init(blueprintProvider:blueprintLayoutProvider:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BlueprintRecipeViewerTokenState();
  swift_storeEnumTagMultiPayload();
  *(v2 + *(*v2 + 152)) = a1;
  *(v2 + *(*v2 + 160)) = a2;
  return v2;
}

uint64_t sub_1D79A9A44@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C3BC(0, &qword_1EE0BEDE0);
  result = sub_1D7D28D1C();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for AlertOpenBlockedStoryFactory();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &protocol witness table for AlertOpenBlockedStoryFactory;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D79A9B18()
{
  result = swift_checkMetadataState();
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

uint64_t *ArticleBlueprintRouteModelFactory.init(blueprintLayoutProvider:subscriptionList:blockedAlertFactory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  *(v3 + *(*v3 + 128) + 8) = 0;
  swift_unknownObjectWeakInit();
  (*(*(*(v7 + 80) - 8) + 32))(v3 + *(*v3 + 120), a1);
  *(v3 + *(*v3 + 136)) = a2;
  v8 = v3 + *(*v3 + 144);
  v9 = *(a3 + 16);
  *v8 = *a3;
  *(v8 + 16) = v9;
  *(v8 + 32) = *(a3 + 32);
  *(v3 + *(*v3 + 128) + 8) = 0;
  swift_unknownObjectWeakAssign();
  return v3;
}

uint64_t RecipeRouteModelFactory.init(blueprintLayoutProvider:subscriptionList:blockedAlertFactory:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  (*(*(*(*v3 + 80) - 8) + 32))(v3 + *(*v3 + 120), a1);
  *(v3 + *(*v3 + 128)) = a2;
  sub_1D799D69C(a3, v3 + *(*v3 + 136));
  return v3;
}

uint64_t sub_1D79A9DB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, &qword_1EE0CDB98);
  result = sub_1D7D28D2C();
  v4 = v9;
  if (v9)
  {
    v5 = v10;
    v6 = __swift_project_boxed_opaque_existential_1(v8, v9);
    a2[3] = v4;
    a2[4] = *(v5 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D79AAC54@<X0>(uint64_t *a1@<X8>)
{
  sub_1D7A66A90(0, &qword_1EE0BB098, MEMORY[0x1E69E8658]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12[-v7];
  v9 = *v1;
  sub_1D799CC84(v9 + 16, v15);
  v13 = v9;
  v14 = v15;
  sub_1D79AAE38(0, qword_1EE0BF240, MEMORY[0x1E69E62F8]);
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8650], v4);
  sub_1D7A66A90(0, &qword_1EE0BB068, MEMORY[0x1E69E8698]);
  a1[3] = v10;
  a1[4] = sub_1D7A66B0C();
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_1D7D308BC();
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

void sub_1D79AADEC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D7D307BC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D79AAE38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D79AAE8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D79AAEDC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1D7A66A90(0, &unk_1EE0BB080, MEMORY[0x1E69E8660]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v17 - v9;
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  (*(v7 + 32))(v13 + v12, v10, v6);
  type metadata accessor for SavedRecipeService.Observer();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1D7A66B80;
  *(v14 + 24) = v13;
  sub_1D799CC84(a3, v18);
  v15 = swift_allocObject();
  sub_1D799D69C(v18, v15 + 16);
  *(v15 + 56) = v14;

  sub_1D7D3089C();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1D7A66CF4(qword_1EE0BD940, type metadata accessor for SavedRecipeService.Observer);

  sub_1D7D2DBDC();
}

uint64_t sub_1D79AB138()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79AB170()
{
  sub_1D7A66A90(0, &unk_1EE0BB080, MEMORY[0x1E69E8660]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1D79AB250()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D79AB2BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D79ABCEC;

  return sub_1D79AB34C();
}

uint64_t sub_1D79AB36C()
{
  v1 = *(v0 + 16);
  v3 = v1[5];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1D79ABBB0;

  return MEMORY[0x1EEE20D88](v3, v2);
}

uint64_t sub_1D79AB428@<X0>(uint64_t *a1@<X8>)
{
  v3 = MEMORY[0x1E69972C0];
  sub_1D79AB5C8(0, &qword_1EE0BB0A0, MEMORY[0x1E69972C0], MEMORY[0x1E69E8658]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13[-v8];
  v10 = *v1;
  sub_1D799CC84(v10 + 16, v16);
  v14 = v10;
  v15 = v16;
  sub_1D7D27BFC();
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8650], v5);
  sub_1D79AB5C8(0, &qword_1EE0BB078, v3, MEMORY[0x1E69E8698]);
  a1[3] = v11;
  a1[4] = sub_1D79AB62C();
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_1D7D308BC();
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

void sub_1D79AB5C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D79AB62C()
{
  result = qword_1EE0BB070;
  if (!qword_1EE0BB070)
  {
    sub_1D79AB5C8(255, &qword_1EE0BB078, MEMORY[0x1E69972C0], MEMORY[0x1E69E8698]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BB070);
  }

  return result;
}

void sub_1D79AB6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D79AB5C8(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v29 - v7;
  sub_1D79AB5C8(0, &qword_1EE0BB090, MEMORY[0x1E69972C0], MEMORY[0x1E69E8660]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v29 - v13;
  v15 = swift_allocObject();
  swift_weakInit();
  (*(v11 + 16))(v14, a1, v10);
  v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  (*(v11 + 32))(v17 + v16, v14, v10);
  v18 = type metadata accessor for CookingKitOfflineStatusProvider.Observer();
  v19 = objc_allocWithZone(v18);
  v20 = &v19[OBJC_IVAR____TtCC12NewsArticles31CookingKitOfflineStatusProviderP33_EF59ED90E032401F143361A339AB67998Observer_statusDidChange];
  *v20 = sub_1D7BAA348;
  v20[1] = v17;
  v31.receiver = v19;
  v31.super_class = v18;
  v21 = objc_msgSendSuper2(&v31, sel_init);
  sub_1D799CC84(a3, v30);
  v22 = swift_allocObject();
  sub_1D799D69C(v30, v22 + 16);
  *(v22 + 56) = v21;
  v23 = v21;
  sub_1D7D3089C();
  v24 = sub_1D7D3087C();
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  sub_1D799CC84(a3, v30);
  sub_1D7D3084C();
  v25 = v23;
  v26 = sub_1D7D3083C();
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E85E0];
  v27[2] = v26;
  v27[3] = v28;
  sub_1D799D69C(v30, (v27 + 4));
  v27[9] = v25;
  sub_1D7AF94C0(0, 0, v8, &unk_1D7D533F8, v27);
}

uint64_t sub_1D79ABA14()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79ABA4C()
{
  sub_1D79AB5C8(0, &qword_1EE0BB090, MEMORY[0x1E69972C0], MEMORY[0x1E69E8660]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1D79ABB40()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D79ABBB0(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D7A66618, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1D79ABCEC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1D79ABDE8(uint64_t a1)
{
  sub_1D79ABF68();
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(a1 + 40))(v4);
  if ((result & 1) == 0)
  {
    swift_getObjectType();
    sub_1D7D2C2AC();
    v8 = *MEMORY[0x1E69D87A0];
    v9 = sub_1D7D2C2BC();
    v10 = *(v9 - 8);
    (*(v10 + 104))(v6, v8, v9);
    (*(v10 + 56))(v6, 0, 1, v9);
    sub_1D7D2A7EC();
    sub_1D7AAC7AC(v6);
  }

  return result;
}

void sub_1D79ABF68()
{
  if (!qword_1EE0BB228)
  {
    sub_1D7D2C2BC();
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BB228);
    }
  }
}

BOOL sub_1D79ABFC0(void *a1, uint64_t a2)
{
  v2 = *(*a1 + *MEMORY[0x1E69D6540]);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v5 = &v8 - v4;
  sub_1D7D28EDC();
  v6 = AudioPlaybackState.isStopped.getter(v2);
  (*(v3 + 8))(v5, v2);
  return v6;
}

BOOL AudioPlaybackState.isStopped.getter(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1, v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    (*(*(*(a1 + 16) - 8) + 8))(v5);
  }

  return EnumCaseMultiPayload > 1;
}

void sub_1D79AC1E8()
{
  if (!qword_1EE0BF450)
  {
    type metadata accessor for RecipeRouteContext();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0BF450);
    }
  }
}

void sub_1D79AC254()
{
  sub_1D79AC1E8();
  if (v0 <= 0x3F)
  {
    sub_1D79AC454();
    if (v1 <= 0x3F)
    {
      sub_1D79AC548();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for RecipeRouteContext()
{
  result = qword_1EE0C9160;
  if (!qword_1EE0C9160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D79AC334()
{
  if (!qword_1EE0C99D8[0])
  {
    type metadata accessor for ArticleRouteModel();
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, qword_1EE0C99D8);
    }
  }
}

void sub_1D79AC38C()
{
  sub_1D79AC334();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t type metadata accessor for ArticleRouteModel()
{
  result = qword_1EE0C9A08;
  if (!qword_1EE0C9A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D79AC454()
{
  if (!qword_1EE0BECB0)
  {
    sub_1D79A9404();
    type metadata accessor for RecipeRouteContext();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0BECB0);
    }
  }
}

void sub_1D79AC4C8()
{
  if (!qword_1EE0BF1A0)
  {
    sub_1D7992EFC(255, &qword_1EE0BECC0);
    sub_1D79AC5C4();
    v0 = sub_1D7D308EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BF1A0);
    }
  }
}

void sub_1D79AC548()
{
  if (!qword_1EE0BF3F0)
  {
    sub_1D79AC4C8();
    type metadata accessor for RecipeRouteContext();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE0BF3F0);
    }
  }
}

unint64_t sub_1D79AC5C4()
{
  result = qword_1EE0BE7E0;
  if (!qword_1EE0BE7E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0BE7E0);
  }

  return result;
}

uint64_t type metadata accessor for ArticleRouteModelRedirect()
{
  result = qword_1EE0C66E0;
  if (!qword_1EE0C66E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D79AC684()
{
  result = sub_1D7D2824C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D79AC6E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D79AC704(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t _s13SectionQuotasVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s13SectionQuotasVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

BOOL sub_1D79AC798(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1D79AC860@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D79AC878@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D7D3034C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D79AC8A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleViewerRecipeFeatureContext.Page(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D79AC910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleViewerRecipeFeatureContext.Page(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D79AC980()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79AC9C0()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79AC9F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D79ACA40()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79ACA78()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79ACAB0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D79ACAF0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79ACB28()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D79ACBA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D7D2DE2C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1D7D2EA6C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D79ACCC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D7D2DE2C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1D7D2EA6C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D79ACDE8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79ACE20()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D79ACE68()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79ACEA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D79ACEE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79ACF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7D2F06C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 5)
    {
      return v10 - 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D79ACFE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D7D2F06C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 4;
  }

  return result;
}

uint64_t sub_1D79AD098(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D7D2ACCC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D79AD144(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D7D2ACCC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D79AD1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(type metadata accessor for ArticleViewerShareFeatureContext.Page(0) - 8) + 84) == a2)
  {
    v6 = type metadata accessor for ArticleViewerArticlePage(0);
    v7 = *(*(v6 - 8) + 48);

    return v7(a1, a2, v6);
  }

  else
  {
    v9 = sub_1D7D2ACCC();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 0xFFFFFFFF)
      {
        LODWORD(v14) = -1;
      }

      return (v14 + 1);
    }
  }
}

uint64_t sub_1D79AD338(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(*(type metadata accessor for ArticleViewerShareFeatureContext.Page(0) - 8) + 84) == a3)
  {
    v8 = type metadata accessor for ArticleViewerArticlePage(0);
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, a2, a2, v8);
  }

  else
  {
    result = sub_1D7D2ACCC();
    v11 = *(result - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = result;
      v13 = *(v11 + 56);
      v14 = a1 + *(a4 + 20);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_1D79AD488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D7D295CC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ArticleNavigationAction();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D79AD5AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D7D295CC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ArticleNavigationAction();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D79AD6D0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79AD708()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79AD740(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D79AD750()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D79AD790()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79AD7C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D79AD814()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79AD858()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79AD890()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D79AD8F0()
{
  v1 = sub_1D7D2966C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 112) & ~v3;
  v5 = *(v2 + 64) + v4;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 1, v3 | 7);
}

uint64_t sub_1D79AD9D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D79ADA14()
{
  sub_1D7998DF0();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for TipViewImpression(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);

  v8 = sub_1D7D2824C();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3, 1, v8))
  {
    (*(v9 + 8))(v0 + v3, v8);
  }

  v10 = v2 | v6;
  v11 = (v3 + v4 + v6) & ~v6;
  v12 = sub_1D7D2833C();
  v13 = *(*(v12 - 8) + 8);
  v13(v0 + v11, v12);
  v13(v0 + v11 + *(v5 + 20), v12);

  return MEMORY[0x1EEE6BDD0](v0, v11 + v7, v10 | 7);
}

uint64_t sub_1D79ADBF4()
{
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79ADC2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79ADC9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D79ADCE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfArticleFeedContentConfig();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D79ADD50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfArticleFeedContentConfig();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D79ADDC0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D79ADE20()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79ADE58()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D79ADEA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79ADEE8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79ADF20()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  sub_1D79DA510(*(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16));

  return MEMORY[0x1EEE6BDD0](v0, v5 + 32, v3 | 7);
}

uint64_t sub_1D79ADFF8()
{
  v1 = sub_1D7D2EB7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 128) & ~v3;
  v5 = *(v2 + 64);

  __swift_destroy_boxed_opaque_existential_1(v0 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D79AE0D4()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79AE118()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79AE158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ArticleViewerPage(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1D7D2ACCC();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D79AE27C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for ArticleViewerPage(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1D7D2ACCC();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D79AE3A0()
{
  v1 = sub_1D7D2CABC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D79AE44C()
{

  if (*(v0 + 32))
  {
    swift_unknownObjectRelease();
  }

  if (*(v0 + 56))
  {
    swift_unknownObjectRelease();
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1D79AE4CC()
{
  v1 = *(type metadata accessor for ArticleViewerRecipeFeatureContext(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  sub_1D7A1ECF8(v0[2], v0[3], v0[4]);

  v5 = v0 + v3;
  type metadata accessor for ArticleViewerRecipeFeatureContext.Page(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (EnumCaseMultiPayload == 1)
  {
    v7 = *(v5 + 11);
    if ((~v7 & 0xF000000000000007) == 0)
    {
      goto LABEL_15;
    }

    v8 = *(v5 + 9);
    v9 = *(v5 + 10);
    goto LABEL_14;
  }

  __swift_destroy_boxed_opaque_existential_1((v5 + 72));
  v10 = type metadata accessor for ArticleViewerArticlePage(0);
  v11 = v10[7];
  v12 = sub_1D7D295CC();
  (*(*(v12 - 8) + 8))(&v5[v11], v12);
  v13 = &v5[v10[8]];
  if (*v13 >= 2)
  {
  }

  v14 = &v5[v10[9]];
  type metadata accessor for ArticleNavigationAction();
  v15 = swift_getEnumCaseMultiPayload();
  switch(v15)
  {
    case 2:
      sub_1D7A1F14C(0, &qword_1EE0CBB70, sub_1D799621C, MEMORY[0x1E69B62F0]);
      (*(*(v16 - 8) + 8))(v14, v16);
      break;
    case 1:

      break;
    case 0:

      break;
  }

  v17 = &v5[v10[10]];
  v7 = v17[2];
  if ((~v7 & 0xF000000000000007) != 0)
  {
    v8 = *v17;
    v9 = v17[1];
LABEL_14:
    sub_1D7A1ECF8(v8, v9, v7);
  }

LABEL_15:

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D79AE738()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_1D79AE784()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79AE7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7D2833C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D79AE874(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D7D2833C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1D79AE92C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ArticleViewerPage(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D79AE9D8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ArticleViewerPage(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D79AEA7C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79AEAB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79AEAEC()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79AEB2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79AEB64()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79AEB9C()
{
  v1 = sub_1D7D29A8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D79AEC64()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79AEC9C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79AECDC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79AED14()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D79AED54()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D79AED94()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79AEDCC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79AEE50()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79AEE88()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D79AEECC()
{
  swift_unknownObjectRelease();

  sub_1D7A4D868(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1D79AEF30()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79AEF68()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D79AEFC8()
{
  swift_unknownObjectRelease();

  sub_1D7A4D868(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1D79AF02C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79AF068()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1D79AF0B0()
{
  sub_1D7A4FD34(0, &qword_1EE0BB420, MEMORY[0x1E69D7690], MEMORY[0x1E69D66D8]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 40, v3 | 7);
}

uint64_t sub_1D79AF17C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1D7D2F68C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_1D7D2EEEC();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = sub_1D7D2F1AC();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[9]];

  return v15(v16, a2, v14);
}

char *sub_1D79AF2E8(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1D7D2F68C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_1D7D2EEEC();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = sub_1D7D2F1AC();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[9]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1D79AF454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D7992288(0, &unk_1EE0CBE90, MEMORY[0x1E69B6B80], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D79AF534(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    sub_1D7992288(0, &unk_1EE0CBE90, MEMORY[0x1E69B6B80], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D79AF608()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79AF640()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1D79AF680(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7D2EFAC();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D79AF6EC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D7D2EFAC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D79AF7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D79AF8A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D79AF970(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D7A60C24(0, &qword_1EE0C0108, type metadata accessor for TSAccessibilityInterfaceStyleIntent);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1D7A60C24(0, &unk_1EE0C0118, MEMORY[0x1E69D8428]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1D79AFACC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1D7A60C24(0, &qword_1EE0C0108, type metadata accessor for TSAccessibilityInterfaceStyleIntent);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1D7A60C24(0, &unk_1EE0C0118, MEMORY[0x1E69D8428]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1D79AFC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArticleViewerPage(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 32);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D79AFCE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ArticleViewerPage(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 32) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D79AFDA4()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79AFDDC()
{
  v1 = *(type metadata accessor for ArticleViewerBlueprint.ArticleItem(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(type metadata accessor for AsyncArticle() + 28);
    v8 = sub_1D7D2824C();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D79AFF78()
{

  v1 = v0[5];
  if (v1 >> 1 != 0xFFFFFFFF)
  {
    sub_1D79DA510(v0[3], v0[4], v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D79AFFCC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79B000C()
{
  v1 = *(type metadata accessor for RecipeRecirculationData() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  sub_1D7A73164();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D79B0100@<X0>(uint64_t *a1@<X8>)
{
  sub_1D7A745D8(0, &qword_1EC9E3148, &qword_1EE0BECC0, 0x1E69B5578, MEMORY[0x1E69B59A8]);
  result = sub_1D7D2E0CC();
  *a1 = result;
  return result;
}

uint64_t sub_1D79B0168()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79B01A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7D2EEBC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D79B0264(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D7D2EEBC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D79B0324()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79B0360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D798EA30(0, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_1D798EA30(0, &qword_1EE0BF9B8, MEMORY[0x1E69B59C0], MEMORY[0x1E69E6720]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

void sub_1D79B04E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D798EA30(0, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    sub_1D798EA30(0, &qword_1EE0BF9B8, MEMORY[0x1E69B59C0], MEMORY[0x1E69E6720]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D79B0668()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B06A0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1D79B06F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EndOfArticleFeedConfig();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for EndOfArticleFeedKnobsConfig();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D79B07E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for EndOfArticleFeedConfig();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for EndOfArticleFeedKnobsConfig();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D79B08E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 32);
    if (v4 > 2)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D79AC334();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D79B0988(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 32) = -a2;
  }

  else
  {
    sub_1D79AC334();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D79B0A68()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D79B0AB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B0AF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79B0B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D79911A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1D79B0C40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D79911A0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupKnobs();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D79B0D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7995698();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1D79B0E08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D7995698();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_1D79B0EC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7D2DE2C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D79B0F2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7D2DE2C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D79B0F9C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1D7D2F06C();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1D79B1040(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_1D7D2F06C();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D79B10F4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D79B1194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7990AB0(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1D79B1250(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D7990AB0(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_1D79B1308()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B1340()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B1378@<X0>(uint64_t *a1@<X8>)
{
  result = AudioPlaybackConductor.playingItem.getter();
  *a1 = result;
  return result;
}

__n128 sub_1D79B13C8(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1D79B13DC@<X0>(uint64_t *a1@<X8>)
{
  result = AudioPlaybackConductor.currentItem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D79B142C@<X0>(uint64_t *a1@<X8>)
{
  result = AudioPlaybackConductor.playingItemState.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D79B1484(uint64_t a1, uint64_t (*a2)(void))
{
  if (a2)
  {
    return a2();
  }

  return result;
}

uint64_t sub_1D79B14B8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D79B14F0@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = ModalArticleViewerModule.contentContext.getter();
  v4 = v3;
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v4;
  *a1 = sub_1D7AAA024;
  a1[1] = result;
  return result;
}

uint64_t sub_1D79B1558()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79B1598(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for EndOfArticleFeedContentConfig();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1D7D2E3FC();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1D79B16BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for EndOfArticleFeedContentConfig();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1D7D2E3FC();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D79B17E0()
{
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B1818()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D79B1858()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79B1898()
{
  swift_unownedRelease();
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D79B18E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7990AB0(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1D79B19A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D7990AB0(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_1D79B1A5C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79B1A94()
{
  sub_1D7A2B598();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1D79B1B5C()
{
  v1 = (type metadata accessor for TableOfContentsHeaderViewModel() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unownedRelease();

  v5 = v1[8];
  v6 = sub_1D7D2EEBC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D79B1CA4()
{
  sub_1D79ECB58();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  swift_unownedRelease();

  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1D79B1D70(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1D7D2F06C();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1D79B1E14(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_1D7D2F06C();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D79B1EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7D2DE2C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D79B1F20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7D2DE2C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D79B1F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7995698();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1D79B204C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D7995698();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_1D79B2104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7991488();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1D79B2214(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D7991488();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupKnobs();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D79B2320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D7D2ACCC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D79B23CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D7D2ACCC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D79B2478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RecipeRouteContext();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1D7D2EB7C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D79B259C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for RecipeRouteContext();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1D7D2EB7C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D79B26C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TipViewModel.Content(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D79B2788(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TipViewModel.Content(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1D79B2840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D7ABB91C(0, qword_1EE0C9EB0, type metadata accessor for TipImageProvider);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1D7ABB91C(0, qword_1EE0CA7D0, type metadata accessor for TipViewModel.Action);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1D79B299C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D7ABB91C(0, qword_1EE0C9EB0, type metadata accessor for TipImageProvider);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1D7ABB91C(0, qword_1EE0CA7D0, type metadata accessor for TipViewModel.Action);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1D79B2AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D7ABB91C(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D79B2BC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D7ABB91C(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

double sub_1D79B2C84@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1D79B2C94()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B2CCC()
{
  sub_1D7A2AFB8();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1D79B2D90()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1D79B2DD0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1D7AD15F4(MEMORY[0x1E69B57F0]);
}

void sub_1D79B2E48(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1D7AD15F4(MEMORY[0x1E69B5800]);
}

__n128 sub_1D79B2ED4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D79B2EE0()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B2F1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79B2F54()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D79B2F94()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v5 + 8);
  }

  v6 = (v5 + 55) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 40, v3 | 7);
}

uint64_t sub_1D79B307C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v7);
  }

  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v0 + v8);

  return MEMORY[0x1EEE6BDD0](v0, v8 + 40, v3 | 7);
}

uint64_t sub_1D79B317C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 9, v3 | 7);
}

uint64_t sub_1D79B324C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 9, v3 | 7);
}

uint64_t sub_1D79B3334()
{
  v1 = sub_1D7D2B49C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D79B3428()
{
  v1 = *(type metadata accessor for ArticleModel() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D7994174();
    v8 = (v5 + *(v7 + 48));
    type metadata accessor for ArticleNavigationAction();
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 != 2)
    {
      if (v9 != 1)
      {
        goto LABEL_4;
      }

LABEL_8:

      goto LABEL_10;
    }

LABEL_9:
    sub_1D79961C4();
    (*(*(v11 - 8) + 8))(v8, v11);
    goto LABEL_10;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1D7996048();
  v8 = (v5 + *(v10 + 48));
  type metadata accessor for ArticleNavigationAction();
  v9 = swift_getEnumCaseMultiPayload();
  if (v9 == 2)
  {
    goto LABEL_9;
  }

  if (v9 == 1)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (!v9)
  {
  }

LABEL_10:
  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v12 + 8, v2 | 7);
}

uint64_t sub_1D79B35E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D7D2DE2C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1D7D2EA6C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D79B370C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D7D2DE2C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1D7D2EA6C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D79B3830()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B3868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for EndOfArticleFeedGroupKnobs();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1D79B38E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for EndOfArticleFeedGroupKnobs();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1D79B395C()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B3994()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B39CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B3A04()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B3A3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79B3A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D7D2833C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1D7A86838();
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1D79B3BA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D7D2833C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1D7A86838();
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1D79B3CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7D2A3DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D79B3D84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D7D2A3DC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D79B3E40()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B3E78()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B3EB0()
{
  v1 = (type metadata accessor for DebugRecipe(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[8];
  v6 = type metadata accessor for DebugRecipe.LoadedRecipe(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v16 = v4;
    sub_1D79EA2E4(*v5, *(v5 + 8));
    v7 = v5 + *(v6 + 20);

    v8 = v7 + *(type metadata accessor for DebugRecipe.LoadedRecipe.Fields(0) + 28);
    v9 = sub_1D7D2824C();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    if (!v11(v8, 1, v9))
    {
      (*(v10 + 8))(v8, v9);
    }

    v12 = type metadata accessor for DebugRecipe.LoadedRecipe.ImageMetadata(0);
    v13 = *(v12 + 20);
    if (!v11(v8 + v13, 1, v9))
    {
      (*(v10 + 8))(v8 + v13, v9);
    }

    v14 = *(v12 + 24);
    if (!v11(v8 + v14, 1, v9))
    {
      (*(v10 + 8))(v8 + v14, v9);
    }

    v4 = v16;
    v3 = (v2 + 24) & ~v2;
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D79B4144()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B417C()
{
  v1 = (type metadata accessor for DebugRecipe(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + v1[8];
  v6 = type metadata accessor for DebugRecipe.LoadedRecipe(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v16 = v4;
    sub_1D79EA2E4(*v5, *(v5 + 8));
    v7 = v5 + *(v6 + 20);

    v8 = v7 + *(type metadata accessor for DebugRecipe.LoadedRecipe.Fields(0) + 28);
    v9 = sub_1D7D2824C();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    if (!v11(v8, 1, v9))
    {
      (*(v10 + 8))(v8, v9);
    }

    v12 = type metadata accessor for DebugRecipe.LoadedRecipe.ImageMetadata(0);
    v13 = *(v12 + 20);
    if (!v11(v8 + v13, 1, v9))
    {
      (*(v10 + 8))(v8 + v13, v9);
    }

    v14 = *(v12 + 24);
    if (!v11(v8 + v14, 1, v9))
    {
      (*(v10 + 8))(v8 + v14, v9);
    }

    v4 = v16;
    v3 = (v2 + 40) & ~v2;
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D79B4418()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B4450()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D79B4498()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D79B44E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79B4518()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B4550()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B4588()
{
  v1 = *(type metadata accessor for ArticleViewerPage(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else if (EnumCaseMultiPayload == 4)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1(v5 + 72);
        v7 = type metadata accessor for ArticleViewerArticlePage(0);
        v8 = v7[7];
        v9 = sub_1D7D295CC();
        (*(*(v9 - 8) + 8))(v5 + v8, v9);
        v10 = (v5 + v7[8]);
        if (*v10 >= 2)
        {
        }

        v11 = (v5 + v7[9]);
        type metadata accessor for ArticleNavigationAction();
        v12 = swift_getEnumCaseMultiPayload();
        switch(v12)
        {
          case 2:
            sub_1D799C550(0, &qword_1EE0CBB70, sub_1D799621C, MEMORY[0x1E69B62F0]);
            (*(*(v29 - 8) + 8))(v11, v29);
            break;
          case 1:

            break;
          case 0:

            break;
        }

        v30 = (v5 + v7[10]);
        v31 = v30[2];
        if ((~v31 & 0xF000000000000007) != 0)
        {
          sub_1D7A1ECF8(*v30, v30[1], v31);
        }

        sub_1D799A6BC();
        sub_1D79DA510(*(v5 + *(v32 + 48)), *(v5 + *(v32 + 48) + 8), *(v5 + *(v32 + 48) + 16));
      }

      goto LABEL_39;
    }

    type metadata accessor for InterstitialAdModel();
    v14 = swift_getEnumCaseMultiPayload();
    if (v14 == 2)
    {
      v25 = sub_1D7D2CADC();
      (*(*(v25 - 8) + 8))(v0 + v3, v25);
      goto LABEL_31;
    }

    if (v14 == 1)
    {

      sub_1D799A5AC();
      v16 = *(v24 + 36);
      sub_1D7AECD2C();
    }

    else
    {
      if (v14)
      {
LABEL_31:
        type metadata accessor for InterstitialAdvertisementPage(0);

        goto LABEL_39;
      }

      sub_1D7999AF4();
      v16 = *(v15 + 36);
      sub_1D7AECC70();
    }

    (*(*(v17 - 8) + 8))(v5 + v16, v17);
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v13 = *(v5 + 88);
      if ((~v13 & 0xF000000000000007) != 0)
      {
        sub_1D7A1ECF8(*(v5 + 72), *(v5 + 80), v13);
      }
    }
  }

  else
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v5 + 72);
    v18 = type metadata accessor for ArticleViewerArticlePage(0);
    v19 = v18[7];
    v20 = sub_1D7D295CC();
    (*(*(v20 - 8) + 8))(v5 + v19, v20);
    v21 = (v5 + v18[8]);
    if (*v21 >= 2)
    {
    }

    v22 = (v5 + v18[9]);
    type metadata accessor for ArticleNavigationAction();
    v23 = swift_getEnumCaseMultiPayload();
    switch(v23)
    {
      case 2:
        sub_1D799C550(0, &qword_1EE0CBB70, sub_1D799621C, MEMORY[0x1E69B62F0]);
        (*(*(v26 - 8) + 8))(v22, v26);
        break;
      case 1:

        break;
      case 0:

        break;
    }

    v27 = (v5 + v18[10]);
    v28 = v27[2];
    if ((~v28 & 0xF000000000000007) != 0)
    {
      sub_1D7A1ECF8(*v27, v27[1], v28);
    }
  }

LABEL_39:
  v33 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 191) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v0 + v33);

  MEMORY[0x1DA7103D0](v35 + 18);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v34 + 16, v2 | 7);
}

uint64_t sub_1D79B4B54()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B4B8C()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B4BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArticleViewerPage(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1D7D2ACCC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1D79B4CD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ArticleViewerPage(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1D7D2ACCC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D79B4DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D79FBB34();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1D79B4E94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D79FBB34();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_1D79B4F64()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B4FA8()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B4FE0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B5020()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D79B5060@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_pageDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D79B50BC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_pageDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D79B5120()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79B5158()
{
  v1 = sub_1D7D29A1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D79B51F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B522C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79B52A8()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B52E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79B5320()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79B5358()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B53A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79B53E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B5418()
{

  if (*(v0 + 32))
  {
    swift_unknownObjectRelease();
  }

  if (*(v0 + 56))
  {
    swift_unknownObjectRelease();
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1D79B54B4()
{
  v1 = sub_1D7D2EECC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for BottomPaletteFeatureContext();
  v7 = *(*(v6 - 8) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 8) + 64);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v10 = v0 + v8 + *(v6 + 20);
  type metadata accessor for ArticleViewerPage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else if (EnumCaseMultiPayload == 4)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1(v10 + 72);
        v12 = type metadata accessor for ArticleViewerArticlePage(0);
        v13 = v12[7];
        v14 = sub_1D7D295CC();
        (*(*(v14 - 8) + 8))(v10 + v13, v14);
        v15 = (v10 + v12[8]);
        if (*v15 >= 2)
        {
        }

        v16 = (v10 + v12[9]);
        type metadata accessor for ArticleNavigationAction();
        v17 = swift_getEnumCaseMultiPayload();
        switch(v17)
        {
          case 2:
            sub_1D7B12CD8(0, &qword_1EE0CBB70, sub_1D799621C, MEMORY[0x1E69B62F0]);
            (*(*(v34 - 8) + 8))(v16, v34);
            break;
          case 1:

            break;
          case 0:

            break;
        }

        v35 = (v10 + v12[10]);
        v36 = v35[2];
        if ((~v36 & 0xF000000000000007) != 0)
        {
          sub_1D7A1ECF8(*v35, v35[1], v36);
        }

        sub_1D799A6BC();
        sub_1D79DA510(*(v10 + *(v37 + 48)), *(v10 + *(v37 + 48) + 8), *(v10 + *(v37 + 48) + 16));
      }

      goto LABEL_39;
    }

    type metadata accessor for InterstitialAdModel();
    v19 = swift_getEnumCaseMultiPayload();
    if (v19 == 2)
    {
      v30 = sub_1D7D2CADC();
      (*(*(v30 - 8) + 8))(v10, v30);
      goto LABEL_31;
    }

    if (v19 == 1)
    {

      sub_1D799A5AC();
      v21 = *(v29 + 36);
      sub_1D7AECD2C();
    }

    else
    {
      if (v19)
      {
LABEL_31:
        type metadata accessor for InterstitialAdvertisementPage(0);

        goto LABEL_39;
      }

      sub_1D7999AF4();
      v21 = *(v20 + 36);
      sub_1D7AECC70();
    }

    (*(*(v22 - 8) + 8))(v10 + v21, v22);
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v18 = *(v10 + 88);
      if ((~v18 & 0xF000000000000007) != 0)
      {
        sub_1D7A1ECF8(*(v10 + 72), *(v10 + 80), v18);
      }
    }
  }

  else
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v10 + 72);
    v23 = type metadata accessor for ArticleViewerArticlePage(0);
    v24 = v23[7];
    v25 = sub_1D7D295CC();
    (*(*(v25 - 8) + 8))(v10 + v24, v25);
    v26 = (v10 + v23[8]);
    if (*v26 >= 2)
    {
    }

    v27 = (v10 + v23[9]);
    type metadata accessor for ArticleNavigationAction();
    v28 = swift_getEnumCaseMultiPayload();
    switch(v28)
    {
      case 2:
        sub_1D7B12CD8(0, &qword_1EE0CBB70, sub_1D799621C, MEMORY[0x1E69B62F0]);
        (*(*(v31 - 8) + 8))(v27, v31);
        break;
      case 1:

        break;
      case 0:

        break;
    }

    v32 = (v10 + v23[10]);
    v33 = v32[2];
    if ((~v33 & 0xF000000000000007) != 0)
    {
      sub_1D7A1ECF8(*v32, v32[1], v33);
    }
  }

LABEL_39:
  v38 = *(v6 + 24);
  v39 = sub_1D7D2ACCC();
  (*(*(v39 - 8) + 8))(v0 + v8 + v38, v39);

  return MEMORY[0x1EEE6BDD0](v0, ((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | v7 | 7);
}

uint64_t sub_1D79B5B68()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79B5BA0()
{
  v1 = type metadata accessor for BottomPaletteFeatureContext();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v5 = v0 + v3 + *(v1 + 20);
  type metadata accessor for ArticleViewerPage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else if (EnumCaseMultiPayload == 4)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1(v5 + 72);
        v7 = type metadata accessor for ArticleViewerArticlePage(0);
        v8 = v7[7];
        v9 = sub_1D7D295CC();
        (*(*(v9 - 8) + 8))(v5 + v8, v9);
        v10 = (v5 + v7[8]);
        if (*v10 >= 2)
        {
        }

        v11 = (v5 + v7[9]);
        type metadata accessor for ArticleNavigationAction();
        v12 = swift_getEnumCaseMultiPayload();
        switch(v12)
        {
          case 2:
            sub_1D7B12CD8(0, &qword_1EE0CBB70, sub_1D799621C, MEMORY[0x1E69B62F0]);
            (*(*(v29 - 8) + 8))(v11, v29);
            break;
          case 1:

            break;
          case 0:

            break;
        }

        v30 = (v5 + v7[10]);
        v31 = v30[2];
        if ((~v31 & 0xF000000000000007) != 0)
        {
          sub_1D7A1ECF8(*v30, v30[1], v31);
        }

        sub_1D799A6BC();
        sub_1D79DA510(*(v5 + *(v32 + 48)), *(v5 + *(v32 + 48) + 8), *(v5 + *(v32 + 48) + 16));
      }

      goto LABEL_39;
    }

    type metadata accessor for InterstitialAdModel();
    v14 = swift_getEnumCaseMultiPayload();
    if (v14 == 2)
    {
      v25 = sub_1D7D2CADC();
      (*(*(v25 - 8) + 8))(v5, v25);
      goto LABEL_31;
    }

    if (v14 == 1)
    {

      sub_1D799A5AC();
      v16 = *(v24 + 36);
      sub_1D7AECD2C();
    }

    else
    {
      if (v14)
      {
LABEL_31:
        type metadata accessor for InterstitialAdvertisementPage(0);

        goto LABEL_39;
      }

      sub_1D7999AF4();
      v16 = *(v15 + 36);
      sub_1D7AECC70();
    }

    (*(*(v17 - 8) + 8))(v5 + v16, v17);
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v13 = *(v5 + 88);
      if ((~v13 & 0xF000000000000007) != 0)
      {
        sub_1D7A1ECF8(*(v5 + 72), *(v5 + 80), v13);
      }
    }
  }

  else
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v5 + 72);
    v18 = type metadata accessor for ArticleViewerArticlePage(0);
    v19 = v18[7];
    v20 = sub_1D7D295CC();
    (*(*(v20 - 8) + 8))(v5 + v19, v20);
    v21 = (v5 + v18[8]);
    if (*v21 >= 2)
    {
    }

    v22 = (v5 + v18[9]);
    type metadata accessor for ArticleNavigationAction();
    v23 = swift_getEnumCaseMultiPayload();
    switch(v23)
    {
      case 2:
        sub_1D7B12CD8(0, &qword_1EE0CBB70, sub_1D799621C, MEMORY[0x1E69B62F0]);
        (*(*(v26 - 8) + 8))(v22, v26);
        break;
      case 1:

        break;
      case 0:

        break;
    }

    v27 = (v5 + v18[10]);
    v28 = v27[2];
    if ((~v28 & 0xF000000000000007) != 0)
    {
      sub_1D7A1ECF8(*v27, v27[1], v28);
    }
  }

LABEL_39:
  v33 = *(v1 + 24);
  v34 = sub_1D7D2ACCC();
  (*(*(v34 - 8) + 8))(v0 + v3 + v33, v34);

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1D79B61A8()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B6214@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12NewsArticles34ArticleNavigationBarPaletteContent_parallaxX;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

__n128 sub_1D79B6274@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12NewsArticles34ArticleNavigationBarPaletteContent_contentSafeAreaFrame;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D79B62CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79B6304()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D79B636C()
{

  if (*(v0 + 32))
  {
    swift_unknownObjectRelease();
  }

  if (*(v0 + 56))
  {
    swift_unknownObjectRelease();
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1D79B63F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7D2F06C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 5)
    {
      return v10 - 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D79B64AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D7D2F06C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 4;
  }

  return result;
}

uint64_t sub_1D79B6564()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B659C()
{
  v1 = (type metadata accessor for EndOfArticleExpandRequest() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = (v0 + v3 + v1[7]);
  type metadata accessor for EndOfArticleFeedGapLocation();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7B20E54(0, &qword_1EE0BF760, MEMORY[0x1E69B5FE0]);
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  else
  {
    swift_unknownObjectRelease();
    if (v5[1])
    {

      __swift_destroy_boxed_opaque_existential_1((v5 + 3));
    }

    if (v5[9])
    {

      __swift_destroy_boxed_opaque_existential_1((v5 + 11));
    }

    if (v5[17])
    {

      __swift_destroy_boxed_opaque_existential_1((v5 + 19));
    }

    if (v5[25])
    {

      __swift_destroy_boxed_opaque_existential_1((v5 + 27));
    }
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1D79B6738()
{
  v1 = (type metadata accessor for EndOfArticleExpandRequest() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = (v0 + v3 + v1[7]);
  type metadata accessor for EndOfArticleFeedGapLocation();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7B20E54(0, &qword_1EE0BF760, MEMORY[0x1E69B5FE0]);
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  else
  {
    swift_unknownObjectRelease();
    if (v5[1])
    {

      __swift_destroy_boxed_opaque_existential_1((v5 + 3));
    }

    if (v5[9])
    {

      __swift_destroy_boxed_opaque_existential_1((v5 + 11));
    }

    if (v5[17])
    {

      __swift_destroy_boxed_opaque_existential_1((v5 + 19));
    }

    if (v5[25])
    {

      __swift_destroy_boxed_opaque_existential_1((v5 + 27));
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D79B68B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7D2F06C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 5)
    {
      return v10 - 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D79B6970(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D7D2F06C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 4;
  }

  return result;
}

uint64_t sub_1D79B6A28()
{
  v1 = sub_1D7D2F4FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1D79B6AEC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D79B6B44()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B6BD4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B6C0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D79B6C54()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D79B6C8C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B6CFC(uint64_t *a1, uint64_t (**a2)(void))
{
  v60 = a2;
  v58 = sub_1D7D2E8FC();
  v3 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v4);
  v56 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D7D29C1C();
  v61 = *(v6 - 8);
  v62 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v59 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v63 = v48 - v11;
  v12 = type metadata accessor for EndOfRecipeLayoutModel();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v57 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v48 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v48 - v21;
  sub_1D7B554EC(0);
  v24 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23, v25);
  v54 = v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = v48 - v29;
  v55 = *a1;
  v53 = sub_1D7B554EC;
  sub_1D7B4C274(a1, v48 - v29, sub_1D7B554EC);
  v31 = *(v24 + 56);
  sub_1D7A5FB54();
  v33 = v32;
  sub_1D7D2ABBC();
  v34 = *(v33 - 8);
  v51 = *(v34 + 8);
  v52 = v34 + 8;
  v51(&v30[v31], v33);
  v50 = type metadata accessor for EndOfRecipeLayoutModel;
  sub_1D7B4C274(v22, v18, type metadata accessor for EndOfRecipeLayoutModel);
  v49 = *(v3 + 32);
  v35 = v56;
  v36 = v58;
  v49(v56, v18, v58);
  sub_1D7D2E8DC();
  v37 = (v3 + 8);
  v38 = *(v3 + 8);
  v48[1] = v37;
  v38(v35, v36);
  v48[0] = type metadata accessor for EndOfRecipeLayoutModel;
  sub_1D7B49994(v22, type metadata accessor for EndOfRecipeLayoutModel);
  v48[2] = *v60;
  v39 = v54;
  sub_1D7B4C274(v60, v54, v53);
  v40 = *(v24 + 56);
  sub_1D7D2ABBC();
  v51((v39 + v40), v33);
  v41 = v57;
  sub_1D7B4C274(v18, v57, v50);
  v49(v35, v41, v36);
  v42 = v59;
  sub_1D7D2E8DC();
  v38(v35, v36);
  sub_1D7B49994(v18, v48[0]);
  v43 = v63;
  LOBYTE(v36) = sub_1D7D2AD3C();
  v44 = *(v61 + 8);
  v45 = v42;
  v46 = v62;
  v44(v45, v62);
  v44(v43, v46);
  return v36 & 1;
}

void sub_1D79B7170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v101 = a1;
  v89 = sub_1D7D2E8FC();
  v7 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89, v8);
  v88 = &v69[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v87 = sub_1D7D29C1C();
  v10 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v11);
  v86 = &v69[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13, v14);
  v104 = &v69[-v15];
  v16 = type metadata accessor for EndOfRecipeLayoutModel();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v85 = &v69[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19, v20);
  v84 = &v69[-v21];
  MEMORY[0x1EEE9AC00](v22, v23);
  v83 = &v69[-v24];
  sub_1D7B554EC(0);
  v90 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v78 = &v69[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28, v29);
  v82 = &v69[-v30];
  MEMORY[0x1EEE9AC00](v31, v32);
  v81 = &v69[-v33];
  MEMORY[0x1EEE9AC00](v34, v35);
  v105 = &v69[-v36];
  MEMORY[0x1EEE9AC00](v37, v38);
  v103 = &v69[-v40];
  v71 = a2;
  if (a3 != a2)
  {
    v41 = *a4;
    v42 = *(v39 + 72);
    v102 = (v7 + 32);
    v80 = (v7 + 8);
    v79 = (v10 + 8);
    v43 = v41 + v42 * (a3 - 1);
    v76 = -v42;
    v44 = v101 - a3;
    v77 = v41;
    v70 = v42;
    v45 = v41 + v42 * a3;
LABEL_5:
    v75 = a3;
    v72 = v45;
    v73 = v44;
    v91 = v44;
    v74 = v43;
    v46 = v90;
    while (1)
    {
      v100 = v43;
      v101 = v45;
      v47 = v103;
      sub_1D7B4C274(v45, v103, sub_1D7B554EC);
      sub_1D7B4C274(v43, v105, sub_1D7B554EC);
      v99 = *v47;
      v48 = v81;
      sub_1D7B4C274(v47, v81, sub_1D7B554EC);
      v49 = *(v46 + 48);
      sub_1D7A5FB54();
      v51 = v50;
      v52 = v83;
      sub_1D7D2ABBC();
      v53 = *(v51 - 8);
      v97 = *(v53 + 8);
      v98 = v53 + 8;
      v97(&v48[v49], v51);
      v96 = type metadata accessor for EndOfRecipeLayoutModel;
      v54 = v84;
      sub_1D7B4C274(v52, v84, type metadata accessor for EndOfRecipeLayoutModel);
      v95 = *v102;
      v55 = v88;
      v56 = v89;
      v95(v88, v54, v89);
      sub_1D7D2E8DC();
      v93 = *v80;
      v93(v55, v56);
      v92 = type metadata accessor for EndOfRecipeLayoutModel;
      v46 = v90;
      sub_1D7B49994(v52, type metadata accessor for EndOfRecipeLayoutModel);
      v94 = *v105;
      v57 = v82;
      sub_1D7B4C274(v105, v82, sub_1D7B554EC);
      v58 = *(v46 + 48);
      sub_1D7D2ABBC();
      v97(&v57[v58], v51);
      v59 = v85;
      sub_1D7B4C274(v54, v85, v96);
      v95(v55, v59, v56);
      v60 = v86;
      sub_1D7D2E8DC();
      v93(v55, v56);
      sub_1D7B49994(v54, v92);
      v61 = v104;
      LOBYTE(v54) = sub_1D7D2AD3C();
      v62 = *v79;
      v63 = v87;
      (*v79)(v60, v87);
      v64 = v63;
      v65 = v101;
      v62(v61, v64);
      v66 = v100;
      sub_1D7B49994(v105, sub_1D7B554EC);
      sub_1D7B49994(v103, sub_1D7B554EC);
      if ((v54 & 1) == 0)
      {
LABEL_4:
        a3 = v75 + 1;
        v43 = v74 + v70;
        v44 = v73 - 1;
        v45 = v72 + v70;
        if (v75 + 1 == v71)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v77)
      {
        break;
      }

      v67 = v78;
      sub_1D7B551E8(v65, v78, sub_1D7B554EC);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D7B551E8(v67, v66, sub_1D7B554EC);
      v43 = v66 + v76;
      v45 = v65 + v76;
      if (__CFADD__(v91++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D79B7894(unint64_t a1, char *a2, unint64_t a3, char *a4)
{
  v111 = sub_1D7D2E8FC();
  v8 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v9);
  v110 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1D7D29C1C();
  v11 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109, v12);
  v108 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v125 = &v92 - v16;
  v17 = type metadata accessor for EndOfRecipeLayoutModel();
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v107 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v106 = &v92 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v105 = &v92 - v25;
  sub_1D7B554EC(0);
  v126 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v104 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v103 = &v92 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v127 = (&v92 - v34);
  MEMORY[0x1EEE9AC00](v35, v36);
  v124 = (&v92 - v37);
  v39 = *(v38 + 72);
  if (!v39)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (&a2[-a1] == 0x8000000000000000 && v39 == -1)
  {
    goto LABEL_60;
  }

  v40 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v39 == -1)
  {
    goto LABEL_61;
  }

  v41 = &a2[-a1] / v39;
  v130 = a1;
  v129 = a4;
  if (v41 >= v40 / v39)
  {
    v43 = v40 / v39 * v39;
    if (a4 < a2 || &a2[v43] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v65 = &a4[v43];
    if (v43 >= 1)
    {
      v66 = -v39;
      v97 = (v8 + 32);
      v96 = (v8 + 8);
      v95 = (v11 + 8);
      v67 = &a4[v43];
      v121 = a4;
      v122 = a1;
      v98 = v66;
      v68 = v97;
      while (2)
      {
        while (1)
        {
          v93 = v65;
          v69 = &a2[v66];
          v123 = &a2[v66];
          v99 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v130 = a2;
              v128 = v93;
              goto LABEL_58;
            }

            v94 = v65;
            v120 = a3 + v66;
            v100 = &v67[v66];
            v71 = v124;
            v119 = a3;
            sub_1D7B4C274(&v67[v66], v124, sub_1D7B554EC);
            sub_1D7B4C274(v69, v127, sub_1D7B554EC);
            v117 = *v71;
            v72 = v71;
            v73 = v103;
            sub_1D7B4C274(v72, v103, sub_1D7B554EC);
            v74 = *(v126 + 48);
            sub_1D7A5FB54();
            v76 = v75;
            v118 = v67;
            v77 = v105;
            sub_1D7D2ABBC();
            v78 = *(v76 - 8);
            v115 = *(v78 + 8);
            v116 = (v78 + 8);
            v115(v73 + v74, v76);
            v114 = type metadata accessor for EndOfRecipeLayoutModel;
            v79 = v106;
            sub_1D7B4C274(v77, v106, type metadata accessor for EndOfRecipeLayoutModel);
            v113 = *v68;
            v80 = v110;
            v81 = v111;
            v113(v110, v79, v111);
            sub_1D7D2E8DC();
            v102 = *v96;
            (v102)(v80, v81);
            v101 = type metadata accessor for EndOfRecipeLayoutModel;
            sub_1D7B49994(v77, type metadata accessor for EndOfRecipeLayoutModel);
            v112 = *v127;
            v82 = v104;
            sub_1D7B4C274(v127, v104, sub_1D7B554EC);
            v83 = *(v126 + 48);
            sub_1D7D2ABBC();
            v115(v82 + v83, v76);
            v84 = v107;
            sub_1D7B4C274(v79, v107, v114);
            v113(v80, v84, v81);
            v85 = v108;
            sub_1D7D2E8DC();
            (v102)(v80, v81);
            sub_1D7B49994(v79, v101);
            v86 = v125;
            LOBYTE(v79) = sub_1D7D2AD3C();
            v87 = *v95;
            v88 = v109;
            (*v95)(v85, v109);
            v87(v86, v88);
            sub_1D7B49994(v127, sub_1D7B554EC);
            sub_1D7B49994(v124, sub_1D7B554EC);
            if (v79)
            {
              break;
            }

            v89 = v100;
            v65 = v100;
            a3 = v120;
            v90 = v121;
            if (v119 < v118 || v120 >= v118)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v122;
              v69 = v123;
              v66 = v98;
            }

            else
            {
              a1 = v122;
              v69 = v123;
              v66 = v98;
              if (v119 != v118)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v67 = v65;
            v70 = v89 > v90;
            a2 = v99;
            if (!v70)
            {
              goto LABEL_56;
            }
          }

          v67 = v118;
          a3 = v120;
          v91 = v121;
          if (v119 < v99 || v120 >= v99)
          {
            break;
          }

          a1 = v122;
          a2 = v123;
          v65 = v94;
          v66 = v98;
          if (v119 != v99)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v67 <= v91)
          {
            goto LABEL_56;
          }
        }

        a2 = v123;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v122;
        v65 = v94;
        v66 = v98;
        if (v67 > v91)
        {
          continue;
        }

        break;
      }
    }

LABEL_56:
    v130 = a2;
    v128 = v65;
  }

  else
  {
    v42 = v41 * v39;
    if (a4 < a1 || a1 + v42 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v102 = &a4[v42];
    v128 = &a4[v42];
    if (v42 >= 1 && a2 < a3)
    {
      v100 = (v8 + 32);
      v99 = (v8 + 8);
      v98 = (v11 + 8);
      v120 = a3;
      v101 = v39;
      do
      {
        v122 = a1;
        v123 = a2;
        v121 = a4;
        v45 = v124;
        sub_1D7B4C274(a2, v124, sub_1D7B554EC);
        sub_1D7B4C274(a4, v127, sub_1D7B554EC);
        v119 = *v45;
        v46 = v103;
        sub_1D7B4C274(v45, v103, sub_1D7B554EC);
        v47 = *(v126 + 48);
        sub_1D7A5FB54();
        v49 = v48;
        v50 = v105;
        sub_1D7D2ABBC();
        v51 = *(v49 - 8);
        v117 = *(v51 + 8);
        v118 = (v51 + 8);
        v117(v46 + v47, v49);
        v116 = type metadata accessor for EndOfRecipeLayoutModel;
        v52 = v106;
        sub_1D7B4C274(v50, v106, type metadata accessor for EndOfRecipeLayoutModel);
        v115 = *v100;
        v54 = v110;
        v53 = v111;
        (v115)(v110, v52, v111);
        sub_1D7D2E8DC();
        v113 = *v99;
        (v113)(v54, v53);
        v112 = type metadata accessor for EndOfRecipeLayoutModel;
        sub_1D7B49994(v50, type metadata accessor for EndOfRecipeLayoutModel);
        v114 = *v127;
        v55 = v104;
        sub_1D7B4C274(v127, v104, sub_1D7B554EC);
        v56 = *(v126 + 48);
        sub_1D7D2ABBC();
        v117(v55 + v56, v49);
        v57 = v107;
        sub_1D7B4C274(v52, v107, v116);
        (v115)(v54, v57, v53);
        v58 = v108;
        sub_1D7D2E8DC();
        (v113)(v54, v53);
        sub_1D7B49994(v52, v112);
        v59 = v125;
        LOBYTE(v47) = sub_1D7D2AD3C();
        v60 = *v98;
        v61 = v109;
        (*v98)(v58, v109);
        v60(v59, v61);
        sub_1D7B49994(v127, sub_1D7B554EC);
        sub_1D7B49994(v124, sub_1D7B554EC);
        if (v47)
        {
          v62 = v101;
          v63 = v122;
          a2 = v101 + v123;
          a4 = v121;
          if (v122 < v123 || v122 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v64 = v120;
          }

          else
          {
            v64 = v120;
            if (v122 != v123)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        else
        {
          v63 = v122;
          a2 = v123;
          v62 = v101;
          a4 = v101 + v121;
          if (v122 < v121 || v122 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v64 = v120;
          }

          else
          {
            v64 = v120;
            if (v122 != v121)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v129 = a4;
        }

        a1 = v62 + v63;
        v130 = a1;
      }

      while (a4 < v102 && a2 < v64);
    }
  }

LABEL_58:
  sub_1D7B50264(&v130, &v129, &v128, sub_1D7B554EC);
}

uint64_t sub_1D79B84E8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B8528()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D79B8560()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D79B85B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D79B8610()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79B8650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D7D2833C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1D7A86838();
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1D79B8774(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D7D2833C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1D7A86838();
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1D79B8898()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B88D0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79B8914()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D79B894C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D79B8994()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B89CC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B8A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D7D2ACCC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D79B8AD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D7D2ACCC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D79B8B7C()
{
  if (*(v0 + 72) == 1)
  {
    swift_unknownObjectRelease();
    v1 = v0 + 24;
    v2 = 64;
  }

  else
  {
    v1 = v0 + 16;
    v2 = 56;
  }

  __swift_destroy_boxed_opaque_existential_1(v1);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1D79B8BE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1D79B8C28()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1D79B8C80()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B8CC0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B8CF8()
{
  sub_1D7B6BBB4(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0]);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = sub_1D7D2824C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D79B8E40()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79B8E80()
{
  v1 = sub_1D7D2CF0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1D79B8F2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7D2D57C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D79B8F98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7D2D57C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D79B9008()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B9040()
{
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B9078()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D79B90B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D7D2EEBC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D79B9164(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D7D2EEBC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D79B9248()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79B9280()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D79B92C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B92F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D79B9340()
{
  sub_1D79DA510(v0[2], v0[3], v0[4]);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D79B938C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79B9418(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D7B6C5EC(0, &unk_1EC9E5920, type metadata accessor for UIBarStyle);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1D7B6C5EC(0, &qword_1EE0C0110, type metadata accessor for UIStatusBarStyle);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1D79B9574(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1D7B6C5EC(0, &unk_1EC9E5920, type metadata accessor for UIBarStyle);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1D7B6C5EC(0, &qword_1EE0C0110, type metadata accessor for UIStatusBarStyle);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1D79B96D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7990AB0(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1D79B978C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D7990AB0(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_1D79B9844()
{

  if (*(v0 + 32))
  {
    swift_unknownObjectRelease();
  }

  if (*(v0 + 56))
  {
    swift_unknownObjectRelease();
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1D79B98C4()
{
  sub_1D7A66CA4(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D79B994C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B9984()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D79B99D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79B9A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D7D2D12C();
    v8 = sub_1D7D2D2DC();
    return (*(*(v8 - 8) + 48))(a1 + *(a3 + 36), a2, v8);
  }
}

uint64_t sub_1D79B9AD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D7D2D12C();
    v7 = sub_1D7D2D2DC();
    return (*(*(v7 - 8) + 56))(v5 + *(a4 + 36), a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D79B9B88(uint64_t a1, uint64_t a2)
{
  sub_1D7A73164();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D79B9BF4(uint64_t a1, uint64_t a2)
{
  sub_1D7A73164();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D79B9C64()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B9CA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D79B9CF0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D79B9D48()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D79B9E18()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79B9E50()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79B9EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D7D2DE2C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1D7D2EA6C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D79B9FC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D7D2DE2C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1D7D2EA6C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D79BA0E8()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 184, 7);
}

uint64_t sub_1D79BA178()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 192);

  return MEMORY[0x1EEE6BDD0](v0, 232, 7);
}

uint64_t sub_1D79BA218()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79BA260()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79BA2A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79BA2D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D79BA32C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1D7D27BDC();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1D79BA3D8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1D7D27BDC();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D79BA478()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D79BA4B8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D79BA500()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79BA538()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D79BA578()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79BA5B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D79BA608()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79BA640()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79BA690(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for RelatedEndOfArticleFeedGroupKnobs();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  EndOfArticleFeedGroupKnobs = type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs();
  if (*(*(EndOfArticleFeedGroupKnobs - 8) + 84) == a2)
  {
    v8 = EndOfArticleFeedGroupKnobs;
    v12 = *(EndOfArticleFeedGroupKnobs - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_1D79BA860(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for MoreFromEndOfArticleFeedGroupKnobs();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for RelatedEndOfArticleFeedGroupKnobs();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = type metadata accessor for RecommendedEndOfArticleFeedGroupKnobs();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  EndOfArticleFeedGroupKnobs = type metadata accessor for MoreToReadEndOfArticleFeedGroupKnobs();
  if (*(*(EndOfArticleFeedGroupKnobs - 8) + 84) == a3)
  {
    v10 = EndOfArticleFeedGroupKnobs;
    v14 = *(EndOfArticleFeedGroupKnobs - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroupKnobs();
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_1D79BAA3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79BAA74()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  }

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  }

  if (v0[20])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 17));
  }

  return MEMORY[0x1EEE6BDD0](v0, 176, 7);
}

uint64_t sub_1D79BAAE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1D79BAB3C()
{
  v1 = sub_1D7D2EECC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D79BAC08()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79BAC40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleViewerArticlePage(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D79BACAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleViewerArticlePage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D79BAD1C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79BAD54()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D79BAD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArticleViewerMoreFeatureContext();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 48);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D79BAE5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ArticleViewerMoreFeatureContext();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 48) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D79BAF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D798EAF8(0, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_1D798EAF8(0, &qword_1EE0BF9B8, MEMORY[0x1E69B59C0], MEMORY[0x1E69E6720]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

void sub_1D79BB0A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D798EAF8(0, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    sub_1D798EAF8(0, &qword_1EE0BF9B8, MEMORY[0x1E69B59C0], MEMORY[0x1E69E6720]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D79BB224()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  __swift_destroy_boxed_opaque_existential_1(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 40, v3 | 7);
}

uint64_t sub_1D79BB314()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D79BB3E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79BB424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7D2824C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D79BB4F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D7D2824C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1D79BB5AC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79BB5E8()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79BB65C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1D79BB6A4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79BB6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D7D2833C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D79BB788(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D7D2833C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D79BB834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D7998DF0();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D79BB8E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D7998DF0();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_1D79BB984(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1D79BB9E4();
}

uint64_t sub_1D79BB9E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D79BBA38(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D79BBA90()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79BBAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for EndOfRecipeFeedGroupKnobs();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1D79BBB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for EndOfRecipeFeedGroupKnobs();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1D79BBBC4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79BBC08()
{
  v1 = sub_1D7D296FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1D79BBCB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D79BBD04()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79BBD44()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79BBD7C()
{
  v1 = sub_1D7D2980C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D79BBE70()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79BBEA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79BBEE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D79BBF58()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79BBF90()
{
  sub_1D7BFF6D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D79BC018()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D79BC050()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D79BC090()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79BC0C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D79BC108(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D7B5C2C4();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_1D79BC1B4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1D7B5C2C4();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D79BC258()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79BC290()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79BC2C8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D79BC310()
{
  sub_1D79EA2E4(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D79BC358()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D79BC398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7D2F06C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 5)
    {
      return v10 - 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D79BC450(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D7D2F06C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 4;
  }

  return result;
}

uint64_t sub_1D79BC508()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79BC540()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D79BC578()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79BC5B0()
{
  v1 = sub_1D7D2CCDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v6, v4 | 7);
}

uint64_t sub_1D79BC6A8()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79BC6E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79BC728()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79BC768()
{
  v1 = *(type metadata accessor for ArticleViewerPage(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  sub_1D7C237DC(0, &qword_1EE0C00B0, type metadata accessor for ArticleViewerPage, sub_1D799BE44, MEMORY[0x1E69D7708]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);

  v10 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else if (EnumCaseMultiPayload == 4)
      {
        v44 = v4;

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1(v10 + 72);
        v12 = type metadata accessor for ArticleViewerArticlePage(0);
        v13 = v12[7];
        v14 = sub_1D7D295CC();
        (*(*(v14 - 8) + 8))(v10 + v13, v14);
        v15 = (v10 + v12[8]);
        if (*v15 >= 2)
        {
        }

        v16 = (v10 + v12[9]);
        type metadata accessor for ArticleNavigationAction();
        v17 = swift_getEnumCaseMultiPayload();
        switch(v17)
        {
          case 2:
            sub_1D79961C4();
            (*(*(v37 - 8) + 8))(v16, v37);
            break;
          case 1:

            break;
          case 0:

            break;
        }

        v38 = (v10 + v12[10]);
        v39 = v38[2];
        if ((~v39 & 0xF000000000000007) != 0)
        {
          sub_1D7A1ECF8(*v38, v38[1], v39);
        }

        sub_1D799A6BC();
        sub_1D79DA510(*(v10 + *(v40 + 48)), *(v10 + *(v40 + 48) + 8), *(v10 + *(v40 + 48) + 16));
        v4 = v44;
      }

      goto LABEL_39;
    }

    type metadata accessor for InterstitialAdModel();
    v19 = swift_getEnumCaseMultiPayload();
    if (v19 == 2)
    {
      v33 = sub_1D7D2CADC();
      (*(*(v33 - 8) + 8))(v0 + v3, v33);
      goto LABEL_31;
    }

    if (v19 == 1)
    {

      sub_1D7C237DC(0, &qword_1EE0C8C80, MEMORY[0x1E69B4358], sub_1D7A3A76C, type metadata accessor for InterstitialAdModel.InterstitialAd);
      v21 = *(v31 + 36);
      v22 = &qword_1EC9E4420;
      v23 = MEMORY[0x1E69B4358];
      v24 = sub_1D7A3A76C;
    }

    else
    {
      if (v19)
      {
LABEL_31:
        type metadata accessor for InterstitialAdvertisementPage(0);

        goto LABEL_39;
      }

      sub_1D7C237DC(0, qword_1EE0C8C90, MEMORY[0x1E69B4328], sub_1D79FD01C, type metadata accessor for InterstitialAdModel.InterstitialAd);
      v21 = *(v20 + 36);
      v22 = &qword_1EE0BB1E0;
      v23 = MEMORY[0x1E69B4328];
      v24 = sub_1D79FD01C;
    }

    sub_1D7C2385C(0, v22, v23, v24);
    (*(*(v32 - 8) + 8))(v10 + v21, v32);
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v18 = *(v10 + 88);
      if ((~v18 & 0xF000000000000007) != 0)
      {
        sub_1D7A1ECF8(*(v10 + 72), *(v10 + 80), v18);
      }
    }
  }

  else
  {
    v45 = v4;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v10 + 72);
    v25 = type metadata accessor for ArticleViewerArticlePage(0);
    v26 = v25[7];
    v27 = sub_1D7D295CC();
    (*(*(v27 - 8) + 8))(v10 + v26, v27);
    v28 = (v10 + v25[8]);
    if (*v28 >= 2)
    {
    }

    v29 = (v10 + v25[9]);
    type metadata accessor for ArticleNavigationAction();
    v30 = swift_getEnumCaseMultiPayload();
    switch(v30)
    {
      case 2:
        sub_1D79961C4();
        (*(*(v34 - 8) + 8))(v29, v34);
        break;
      case 1:

        break;
      case 0:

        break;
    }

    v35 = (v10 + v25[10]);
    v36 = v35[2];
    v4 = v45;
    if ((~v36 & 0xF000000000000007) != 0)
    {
      sub_1D7A1ECF8(*v35, v35[1], v36);
    }
  }

LABEL_39:
  v41 = (v3 + v4 + v8) & ~v8;
  v42 = (v9 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v7 + 8))(v0 + v41, v6);

  return MEMORY[0x1EEE6BDD0](v0, v42 + 8, v2 | v8 | 7);
}

uint64_t sub_1D79BCE4C()
{
  sub_1D7C237DC(0, &qword_1EE0C00B0, type metadata accessor for ArticleViewerPage, sub_1D799BE44, MEMORY[0x1E69D7708]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1D79BCF54()
{
  v1 = *(type metadata accessor for ArticleNavigationAction() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      sub_1D79961C4();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      break;
    case 1:

      break;
    case 0:

      break;
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D79BD08C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79BD0C4()
{
  v1 = sub_1D7D2ACCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D79BD18C()
{
  v1 = *(type metadata accessor for ArticleViewerPage(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else if (EnumCaseMultiPayload == 4)
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1(v5 + 72);
        v7 = type metadata accessor for ArticleViewerArticlePage(0);
        v8 = v7[7];
        v9 = sub_1D7D295CC();
        (*(*(v9 - 8) + 8))(v5 + v8, v9);
        v10 = (v5 + v7[8]);
        if (*v10 >= 2)
        {
        }

        v11 = (v5 + v7[9]);
        type metadata accessor for ArticleNavigationAction();
        v12 = swift_getEnumCaseMultiPayload();
        switch(v12)
        {
          case 2:
            sub_1D79961C4();
            (*(*(v32 - 8) + 8))(v11, v32);
            break;
          case 1:

            break;
          case 0:

            break;
        }

        v33 = (v5 + v7[10]);
        v34 = v33[2];
        if ((~v34 & 0xF000000000000007) != 0)
        {
          sub_1D7A1ECF8(*v33, v33[1], v34);
        }

        sub_1D799A6BC();
        sub_1D79DA510(*(v5 + *(v35 + 48)), *(v5 + *(v35 + 48) + 8), *(v5 + *(v35 + 48) + 16));
      }

      goto LABEL_39;
    }

    type metadata accessor for InterstitialAdModel();
    v14 = swift_getEnumCaseMultiPayload();
    if (v14 == 2)
    {
      v28 = sub_1D7D2CADC();
      (*(*(v28 - 8) + 8))(v0 + v3, v28);
      goto LABEL_31;
    }

    if (v14 == 1)
    {

      sub_1D7C237DC(0, &qword_1EE0C8C80, MEMORY[0x1E69B4358], sub_1D7A3A76C, type metadata accessor for InterstitialAdModel.InterstitialAd);
      v16 = *(v26 + 36);
      v17 = &qword_1EC9E4420;
      v18 = MEMORY[0x1E69B4358];
      v19 = sub_1D7A3A76C;
    }

    else
    {
      if (v14)
      {
LABEL_31:
        type metadata accessor for InterstitialAdvertisementPage(0);

        goto LABEL_39;
      }

      sub_1D7C237DC(0, qword_1EE0C8C90, MEMORY[0x1E69B4328], sub_1D79FD01C, type metadata accessor for InterstitialAdModel.InterstitialAd);
      v16 = *(v15 + 36);
      v17 = &qword_1EE0BB1E0;
      v18 = MEMORY[0x1E69B4328];
      v19 = sub_1D79FD01C;
    }

    sub_1D7C2385C(0, v17, v18, v19);
    (*(*(v27 - 8) + 8))(v5 + v16, v27);
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v13 = *(v5 + 88);
      if ((~v13 & 0xF000000000000007) != 0)
      {
        sub_1D7A1ECF8(*(v5 + 72), *(v5 + 80), v13);
      }
    }
  }

  else
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v5 + 72);
    v20 = type metadata accessor for ArticleViewerArticlePage(0);
    v21 = v20[7];
    v22 = sub_1D7D295CC();
    (*(*(v22 - 8) + 8))(v5 + v21, v22);
    v23 = (v5 + v20[8]);
    if (*v23 >= 2)
    {
    }

    v24 = (v5 + v20[9]);
    type metadata accessor for ArticleNavigationAction();
    v25 = swift_getEnumCaseMultiPayload();
    switch(v25)
    {
      case 2:
        sub_1D79961C4();
        (*(*(v29 - 8) + 8))(v24, v29);
        break;
      case 1:

        break;
      case 0:

        break;
    }

    v30 = (v5 + v20[10]);
    v31 = v30[2];
    if ((~v31 & 0xF000000000000007) != 0)
    {
      sub_1D7A1ECF8(*v30, v30[1], v31);
    }
  }

LABEL_39:

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D79BD794()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D79BD7CC()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_1D79BD864()
{
  v1 = type metadata accessor for ArticleViewerArticlePage(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + v3 + 72);
  v6 = v1[7];
  v7 = sub_1D7D295CC();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = (v0 + v3 + v1[8]);
  if (*v8 >= 2)
  {
  }

  v9 = (v5 + v1[9]);
  type metadata accessor for ArticleNavigationAction();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      sub_1D79961C4();
      (*(*(v11 - 8) + 8))(v9, v11);
      break;
    case 1:

      break;
    case 0:

      break;
  }

  v12 = (v5 + v1[10]);
  v13 = v12[2];
  if ((~v13 & 0xF000000000000007) != 0)
  {
    sub_1D7A1ECF8(*v12, v12[1], v13);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D79BDA50()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79BDA94()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79BDB04()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D79BDB54()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D79BDBA4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D79BDBEC()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79BDC24()
{
  v1 = sub_1D7D2EFAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for DebugRecipe(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  v10 = v0 + v8 + v6[8];
  v11 = type metadata accessor for DebugRecipe.LoadedRecipe(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v21 = v8;
    sub_1D79EA2E4(*v10, *(v10 + 8));
    v12 = v10 + *(v11 + 20);

    v13 = v12 + *(type metadata accessor for DebugRecipe.LoadedRecipe.Fields(0) + 28);
    v14 = sub_1D7D2824C();
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    if (!v16(v13, 1, v14))
    {
      (*(v15 + 8))(v13, v14);
    }

    v17 = type metadata accessor for DebugRecipe.LoadedRecipe.ImageMetadata(0);
    v18 = *(v17 + 20);
    if (!v16(v13 + v18, 1, v14))
    {
      (*(v15 + 8))(v13 + v18, v14);
    }

    v19 = *(v17 + 24);
    if (!v16(v13 + v19, 1, v14))
    {
      (*(v15 + 8))(v13 + v19, v14);
    }

    v8 = v21;
  }

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_1D79BDF3C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D79BDFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DebugRecipe(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1D7D29A8C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D79BE0F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for DebugRecipe(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1D7D29A8C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D79BE218()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79BE250()
{
  v1 = v0;
  v2 = type metadata accessor for RecipeViewModel(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(*(v2 - 8) + 64);

  v6 = v0 + v4;

  v7 = v0 + v4 + *(v2 + 24);

  v8 = v7 + *(type metadata accessor for DebugRecipe(0) + 24);
  v9 = type metadata accessor for DebugRecipe.LoadedRecipe(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v21 = v5;
    v22 = v1;
    sub_1D79EA2E4(*v8, *(v8 + 8));
    v10 = v8 + *(v9 + 20);

    v11 = v10 + *(type metadata accessor for DebugRecipe.LoadedRecipe.Fields(0) + 28);
    v12 = sub_1D7D2824C();
    v13 = *(v12 - 8);
    v14 = *(v13 + 48);
    if (!v14(v11, 1, v12))
    {
      (*(v13 + 8))(v11, v12);
    }

    v15 = type metadata accessor for DebugRecipe.LoadedRecipe.ImageMetadata(0);
    v16 = *(v15 + 20);
    if (!v14(v11 + v16, 1, v12))
    {
      (*(v13 + 8))(v11 + v16, v12);
    }

    v17 = *(v15 + 24);
    if (!v14(v11 + v17, 1, v12))
    {
      (*(v13 + 8))(v11 + v17, v12);
    }

    v4 = (v3 + 24) & ~v3;
    v1 = v22;
    v5 = v21;
  }

  v18 = *(v2 + 28);
  v19 = sub_1D7D29A8C();
  (*(*(v19 - 8) + 8))(v6 + v18, v19);

  return MEMORY[0x1EEE6BDD0](v1, v4 + v5, v3 | 7);
}

uint64_t sub_1D79BE558()
{
  v1 = (type metadata accessor for DebugRecipe(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[8];
  v6 = type metadata accessor for DebugRecipe.LoadedRecipe(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v16 = v4;
    sub_1D79EA2E4(*v5, *(v5 + 8));
    v7 = v5 + *(v6 + 20);

    v8 = v7 + *(type metadata accessor for DebugRecipe.LoadedRecipe.Fields(0) + 28);
    v9 = sub_1D7D2824C();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    if (!v11(v8, 1, v9))
    {
      (*(v10 + 8))(v8, v9);
    }

    v12 = type metadata accessor for DebugRecipe.LoadedRecipe.ImageMetadata(0);
    v13 = *(v12 + 20);
    if (!v11(v8 + v13, 1, v9))
    {
      (*(v10 + 8))(v8 + v13, v9);
    }

    v14 = *(v12 + 24);
    if (!v11(v8 + v14, 1, v9))
    {
      (*(v10 + 8))(v8 + v14, v9);
    }

    v4 = v16;
    v3 = (v2 + 24) & ~v2;
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D79BE7EC()
{
  v1 = (type metadata accessor for DebugRecipe(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + v1[8];
  v6 = type metadata accessor for DebugRecipe.LoadedRecipe(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v16 = v4;
    sub_1D79EA2E4(*v5, *(v5 + 8));
    v7 = v5 + *(v6 + 20);

    v8 = v7 + *(type metadata accessor for DebugRecipe.LoadedRecipe.Fields(0) + 28);
    v9 = sub_1D7D2824C();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    if (!v11(v8, 1, v9))
    {
      (*(v10 + 8))(v8, v9);
    }

    v12 = type metadata accessor for DebugRecipe.LoadedRecipe.ImageMetadata(0);
    v13 = *(v12 + 20);
    if (!v11(v8 + v13, 1, v9))
    {
      (*(v10 + 8))(v8 + v13, v9);
    }

    v14 = *(v12 + 24);
    if (!v11(v8 + v14, 1, v9))
    {
      (*(v10 + 8))(v8 + v14, v9);
    }

    v4 = v16;
    v3 = (v2 + 40) & ~v2;
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D79BEAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RecipeRouteModel();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D79BEB4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RecipeRouteModel();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D79BEBF0()
{
  v1 = *(type metadata accessor for RecipeRouteModel() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_13;
      }

      sub_1D7C35A74(0, &qword_1EE0BECB0, sub_1D79A9404, type metadata accessor for RecipeRouteContext);
    }

    else
    {

      sub_1D79AC1E8();
    }

    v8 = *(v7 + 48);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 2)
  {

    sub_1D79AC548();
    v8 = *(v9 + 64);
LABEL_11:
    v10 = v5 + v8;
    sub_1D7A82348(*v10, *(v10 + 1), *(v10 + 2), *(v10 + 3), v10[32]);
    v11 = &v10[*(type metadata accessor for RecipeRouteContext() + 20)];
    v12 = type metadata accessor for ArticleRouteModel();
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      v13 = swift_getEnumCaseMultiPayload();

      if (v13 != 1)
      {
        sub_1D7C35A74(0, &qword_1EE0C36D0, type metadata accessor for ArticleViewerBlueprintRouteModel, type metadata accessor for ArticleNavigationAction);
        v15 = &v11[*(v14 + 48)];
        type metadata accessor for ArticleNavigationAction();
        v16 = swift_getEnumCaseMultiPayload();
        switch(v16)
        {
          case 2:
            sub_1D7C35A10(0, &qword_1EE0CBB70, sub_1D799621C, MEMORY[0x1E69B62F0]);
            (*(*(v17 - 8) + 8))(v15, v17);
            break;
          case 1:

            break;
          case 0:

            break;
        }
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 3)
  {
  }

LABEL_13:

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D79BEED8(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1D7D29A8C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = type metadata accessor for RecipeRouteContext();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  sub_1D7C35DB4();
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = &a1[a3[8]];

  return v16(v17, a2, v15);
}

char *sub_1D79BF044(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1D7D29A8C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = type metadata accessor for RecipeRouteContext();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  sub_1D7C35DB4();
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = &v5[a4[8]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1D79BF1B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1D79BF200(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7D2DE2C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D79BF26C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7D2DE2C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D79BF2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D79913BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1D79BF3EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D79913BC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupKnobs();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D79BF4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7995698();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1D79BF5B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D7995698();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_1D79BF66C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1D7D2F06C();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1D79BF710(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_1D7D2F06C();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D79BF7B0()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79BF7E8()
{
  v1 = *(type metadata accessor for AnalyticsEvent() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v33 = sub_1D7D2833C();
          v34 = *(*(v33 - 8) + 8);
          v34(v0 + v3, v33);
          v35 = type metadata accessor for AnalyticsTimedData();
          v34(v5 + *(v35 + 20), v33);
          sub_1D79F6A88();
          v37 = *(v36 + 48);
          v38 = sub_1D7D2824C();
          (*(*(v38 - 8) + 8))(v5 + v37, v38);
        }

        else if (EnumCaseMultiPayload == 8)
        {
          v7 = sub_1D7D2833C();
          v8 = *(*(v7 - 8) + 8);
          v8(v0 + v3, v7);
          v9 = type metadata accessor for AnalyticsTimedData();
          v8(v5 + *(v9 + 20), v7);
          sub_1D79F6B64();
          v11 = v10;
          v12 = *(v10 + 48);
          v13 = sub_1D7D2824C();
          (*(*(v13 - 8) + 8))(v5 + v12, v13);
        }

        goto LABEL_20;
      }

      v32 = sub_1D7D2824C();
      (*(*(v32 - 8) + 8))(v0 + v3, v32);
      type metadata accessor for AnalyticsLinkData();
LABEL_19:

      goto LABEL_20;
    }

    if (EnumCaseMultiPayload != 4)
    {
      v14 = sub_1D7D2833C();
      v15 = *(*(v14 - 8) + 8);
      v15(v0 + v3, v14);
      v16 = type metadata accessor for AnalyticsTimedData();
      v15(v5 + *(v16 + 20), v14);
      sub_1D7A26C84();
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {

      goto LABEL_19;
    }

    sub_1D7A26AFC(0, v26);
    v28 = v5 + *(v27 + 48);
    v29 = sub_1D7D2833C();
    v30 = *(*(v29 - 8) + 8);
    v30(v28, v29);
    v31 = type metadata accessor for AnalyticsTimedData();
    v30(v28 + *(v31 + 20), v29);
LABEL_18:

    goto LABEL_19;
  }

  if (!EnumCaseMultiPayload)
  {
    v23 = sub_1D7D2833C();
    v24 = *(*(v23 - 8) + 8);
    v24(v0 + v3, v23);
    v25 = type metadata accessor for AnalyticsTimedData();
    v24(v5 + *(v25 + 20), v23);
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 1)
  {
LABEL_15:

    sub_1D7A045FC(0, v17);
    v19 = v5 + *(v18 + 48);
    v20 = sub_1D7D2833C();
    v21 = *(*(v20 - 8) + 8);
    v21(v19, v20);
    v22 = type metadata accessor for AnalyticsTimedData();
    v21(v19 + *(v22 + 20), v20);

    goto LABEL_18;
  }

LABEL_20:

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D79BFCDC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79BFD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D7D295CC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ArticleNavigationAction();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D79BFE40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D7D295CC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ArticleNavigationAction();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D79BFF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InterstitialAdModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D79C0020(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for InterstitialAdModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D79C00DC()
{
  v1 = *(type metadata accessor for ArticleModel() - 8);
  v22 = *(v1 + 80);
  v2 = (v22 + 16) & ~v22;
  v3 = *(v1 + 64);
  v21 = sub_1D7D295CC();
  v4 = *(v21 - 8);
  v5 = *(v4 + 80);
  v6 = (v2 + v3 + v5) & ~v5;
  v7 = (((((*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D7994174();
    v12 = (v9 + *(v11 + 48));
    type metadata accessor for ArticleNavigationAction();
    v13 = swift_getEnumCaseMultiPayload();
    if (v13 != 2)
    {
      if (v13 != 1)
      {
        goto LABEL_4;
      }

LABEL_8:

      goto LABEL_10;
    }

LABEL_9:
    sub_1D79961C4();
    (*(*(v15 - 8) + 8))(v12, v15);
    goto LABEL_10;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1D7996048();
  v12 = (v9 + *(v14 + 48));
  type metadata accessor for ArticleNavigationAction();
  v13 = swift_getEnumCaseMultiPayload();
  if (v13 == 2)
  {
    goto LABEL_9;
  }

  if (v13 == 1)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (!v13)
  {
  }

LABEL_10:
  v16 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v0 + v6, v21);

  __swift_destroy_boxed_opaque_existential_1(v0 + v7);
  v17 = *(v0 + v8);
  if (v17 >= 2)
  {
  }

  v18 = *(v0 + v16);
  if (v18)
  {
  }

  v19 = (((v16 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1D79DA510(*(v0 + v19), *(v0 + v19 + 8), *(v0 + v19 + 16));

  return MEMORY[0x1EEE6BDD0](v0, v19 + 32, v22 | v5 | 7);
}

uint64_t sub_1D79C03BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7D2FE1C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1D79C047C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D7D2FE1C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D79C0538()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79C0574()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C05AC()
{
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D79C0604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EndOfRecipeFeedConfig();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for EndOfRecipeFeedKnobsConfig();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D79C06F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for EndOfRecipeFeedConfig();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for EndOfRecipeFeedKnobsConfig();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D79C07F0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C0828()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D79C0870()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D79C08B8()
{

  if (*(v0 + 32))
  {
    swift_unknownObjectRelease();
  }

  if (*(v0 + 56))
  {
    swift_unknownObjectRelease();
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1D79C0938()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79C0970()
{
  MEMORY[0x1DA7103D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D79C09A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79C09E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D79C0A18()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D79C0A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D7D2EB7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D79C0B0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D7D2EB7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D79C0BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArticleRouteModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D79C0C6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ArticleRouteModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D79C0D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for EndOfRecipeFeedGapLocation();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D79C0DD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for EndOfRecipeFeedGapLocation();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D79C0E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1D7D2FE1C();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1D79C0EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1D7D2FE1C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1D79C0F78()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}