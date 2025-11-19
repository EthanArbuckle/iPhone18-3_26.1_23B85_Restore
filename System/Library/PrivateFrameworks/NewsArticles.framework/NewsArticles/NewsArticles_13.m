uint64_t RecipeViewerPage.tracker.getter()
{
  sub_1D79D7DA4(v0, v5);
  v3[4] = v7;
  v3[5] = v8;
  v4 = v9;
  v3[0] = v5[0];
  v3[1] = v5[1];
  v3[2] = v5[2];
  v3[3] = v6;
  v1 = *(&v6 + 1);

  sub_1D7A4A624(v3);
  return v1;
}

uint64_t RecipeViewerPage.recipe.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D79D7DA4(v1, &v11);
  v9[0] = v11;
  v9[1] = v12;
  v9[2] = v13;
  v9[3] = v14;
  v9[4] = v15;
  v9[5] = v16;
  v10 = v17;
  v3 = v11;
  v4 = v12;
  v5 = v13;
  v6 = v14;

  v7 = v4;

  result = sub_1D7A4A624(v9);
  *a1 = v3;
  *(a1 + 16) = v7;
  *(a1 + 24) = *(&v4 + 1);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t RecipeViewerPage.identifier.getter()
{
  sub_1D79D7DA4(v0, v5);
  v3[4] = v5[4];
  v3[5] = v5[5];
  v4 = v6;
  v3[0] = v5[0];
  v3[1] = v5[1];
  v3[2] = v5[2];
  v3[3] = v5[3];
  v1 = *&v5[0];

  sub_1D7A4A624(v3);
  return v1;
}

uint64_t RecipeViewerPage.hashValue.getter()
{
  sub_1D7D31A8C();
  sub_1D7AEA1EC();
  sub_1D7D302CC();
  return sub_1D7D31ABC();
}

uint64_t sub_1D7AEA058@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D7D2C64C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D7AEA080()
{
  sub_1D79D7DA4(v0, v5);
  v3[4] = v5[4];
  v3[5] = v5[5];
  v4 = v6;
  v3[0] = v5[0];
  v3[1] = v5[1];
  v3[2] = v5[2];
  v3[3] = v5[3];
  v1 = *&v5[0];

  sub_1D7A4A624(v3);
  return v1;
}

uint64_t sub_1D7AEA0F4()
{
  sub_1D7D31A8C();
  sub_1D7D302CC();
  return sub_1D7D31ABC();
}

uint64_t sub_1D7AEA14C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7AEA4FC();

  return MEMORY[0x1EEE45140](a1, a2, v4);
}

uint64_t sub_1D7AEA198()
{
  sub_1D7D31A8C();
  sub_1D7D302CC();
  return sub_1D7D31ABC();
}

unint64_t sub_1D7AEA1EC()
{
  result = qword_1EC9E43C0;
  if (!qword_1EC9E43C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E43C0);
  }

  return result;
}

uint64_t RecipeViewerPage.appEntity.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D7AEA3EC();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D79D7DA4(v1, v15);
  v7 = v16;

  v8 = v7;

  sub_1D7A4A624(v15);
  v9 = v8;
  sub_1D7D2DE5C();
  v10 = sub_1D7D2DE6C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {

    result = sub_1D7AEA444(v6);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = v10;
    *(a1 + 32) = sub_1D7AEA4A0();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(v11 + 32))(boxed_opaque_existential_1, v6, v10);
  }

  return result;
}

void sub_1D7AEA3EC()
{
  if (!qword_1EC9E43C8)
  {
    sub_1D7D2DE6C();
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E43C8);
    }
  }
}

uint64_t sub_1D7AEA444(uint64_t a1)
{
  sub_1D7AEA3EC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D7AEA4A0()
{
  result = qword_1EC9E43D0;
  if (!qword_1EC9E43D0)
  {
    sub_1D7D2DE6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E43D0);
  }

  return result;
}

unint64_t sub_1D7AEA4FC()
{
  result = qword_1EC9E43D8;
  if (!qword_1EC9E43D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E43D8);
  }

  return result;
}

uint64_t sub_1D7AEA56C(uint64_t a1, uint64_t a2)
{
  sub_1D79D7DA4(a1, v9);
  sub_1D79D7DA4(a2, v11);
  v7[4] = v9[4];
  v7[5] = v9[5];
  v8 = v10;
  v7[0] = v9[0];
  v7[1] = v9[1];
  v7[2] = v9[2];
  v7[3] = v9[3];
  v5[4] = v11[4];
  v5[5] = v11[5];
  v6 = v12;
  v5[0] = v11[0];
  v5[1] = v11[1];
  v5[2] = v11[2];
  v5[3] = v11[3];
  if (v9[0] == v11[0])
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1D7D3197C();
  }

  sub_1D7A4A624(v5);
  sub_1D7A4A624(v7);
  return v3 & 1;
}

uint64_t AudioPlaybackRate.numericDescription.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D7D2811C();

  return v2;
}

NewsArticles::AudioPlaybackRate_optional __swiftcall AudioPlaybackRate.init(rawValue:)(Swift::Double rawValue)
{
  if (rawValue == 0.75)
  {
    *v1 = 0;
  }

  else if (rawValue == 1.0)
  {
    *v1 = 1;
  }

  else if (rawValue == 1.25)
  {
    *v1 = 2;
  }

  else if (rawValue == 1.5)
  {
    *v1 = 3;
  }

  else
  {
    if (rawValue == 2.0)
    {
      v2 = 5;
    }

    else
    {
      v2 = 6;
    }

    if (rawValue == 1.75)
    {
      v3 = 4;
    }

    else
    {
      v3 = v2;
    }

    *v1 = v3;
  }

  return result;
}

unint64_t sub_1D7AEA8FC()
{
  result = qword_1EC9E43E0;
  if (!qword_1EC9E43E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E43E0);
  }

  return result;
}

double sub_1D7AEA9A4@<D0>(double *a1@<X8>)
{
  result = dbl_1D7D4B4F0[*v1];
  *a1 = result;
  return result;
}

unint64_t sub_1D7AEA9C0()
{
  result = qword_1EC9E43E8;
  if (!qword_1EC9E43E8)
  {
    sub_1D7AEAA18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E43E8);
  }

  return result;
}

void sub_1D7AEAA18()
{
  if (!qword_1EC9E43F0)
  {
    v0 = sub_1D7D307BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E43F0);
    }
  }
}

uint64_t sub_1D7AEAA8C(void *a1)
{
  v2 = sub_1D7D2FAFC();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 metadataJSONAssetHandle];
  (*(v3 + 104))(v7, *MEMORY[0x1E69B6568], v2);
  v9 = sub_1D7D30BDC();

  (*(v3 + 8))(v7, v2);
  return v9;
}

void *sub_1D7AEABB0(id *a1)
{
  v3 = [*a1 data];
  if (v3)
  {
    v1 = v3;
    v4 = sub_1D7D2827C();
    v6 = v5;

    sub_1D7D28A9C();
    swift_allocObject();
    sub_1D7D28A8C();
    sub_1D7AEAE78();
    sub_1D7D28A7C();
    if (v2)
    {

      sub_1D79F5C48();
      swift_allocError();
      *v7 = 0;
      swift_willThrow();
      sub_1D79EA2E4(v4, v6);
    }

    else
    {

      v9 = v29;
      v10 = *(v29 + 16);
      if (v10)
      {
        v21 = v4;
        v22 = v6;
        v30 = MEMORY[0x1E69E7CC0];
        sub_1D7A5C48C(0, v10, 0);
        v27 = v10 - 1;
        for (i = (v9 + 48); ; i += 9)
        {
          v12 = *(i - 1);
          v13 = i[1];
          v23 = *i;
          v24 = *(i - 2);
          v14 = i[3];
          v15 = i[5];
          v25 = i[4];
          v26 = i[2];
          v16 = i[6];
          v18 = *(v30 + 16);
          v17 = *(v30 + 24);

          if (v18 >= v17 >> 1)
          {
            sub_1D7A5C48C((v17 > 1), v18 + 1, 1);
          }

          *(v30 + 16) = v18 + 1;
          v19 = v30 + 88 * v18;
          *(v19 + 32) = v24;
          *(v19 + 40) = v12;
          *(v19 + 48) = v23;
          *(v19 + 56) = v13;
          *(v19 + 64) = 1;
          *(v19 + 65) = *v28;
          *(v19 + 68) = *&v28[3];
          *(v19 + 72) = 0;
          *(v19 + 80) = v26;
          *(v19 + 88) = v14;
          *(v19 + 96) = v25;
          *(v19 + 104) = v15;
          *(v19 + 112) = v16;
          if (!v27)
          {
            break;
          }

          --v27;
        }

        v4 = v21;
        v6 = v22;
      }

      else
      {
      }

      sub_1D79F5C9C();
      swift_allocObject();
      v1 = sub_1D7D2940C();
      sub_1D79EA2E4(v4, v6);
    }
  }

  else
  {
    sub_1D79F5C48();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
  }

  return v1;
}

unint64_t sub_1D7AEAE78()
{
  result = qword_1EC9E43F8;
  if (!qword_1EC9E43F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E43F8);
  }

  return result;
}

unint64_t sub_1D7AEAEE0()
{
  result = qword_1EC9E4400;
  if (!qword_1EC9E4400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4400);
  }

  return result;
}

uint64_t sub_1D7AEAF48(uint64_t a1)
{
  v2 = sub_1D7AEB074();

  return MEMORY[0x1EEE47F40](a1, v2);
}

uint64_t sub_1D7AEAF84(uint64_t a1)
{
  v2 = sub_1D7AEAFC8();

  return MEMORY[0x1EEE47CC8](a1, v2);
}

unint64_t sub_1D7AEAFC8()
{
  result = qword_1EC9E4408;
  if (!qword_1EC9E4408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4408);
  }

  return result;
}

unint64_t sub_1D7AEB020()
{
  result = qword_1EC9E4410;
  if (!qword_1EC9E4410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4410);
  }

  return result;
}

unint64_t sub_1D7AEB074()
{
  result = qword_1EC9E4418;
  if (!qword_1EC9E4418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4418);
  }

  return result;
}

uint64_t sub_1D7AEB0C8(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1D7AECEC0, v4);
}

void sub_1D7AEB15C(uint64_t a1, uint64_t a2)
{
  sub_1D7992EFC(0, &unk_1EC9E24C0);
  v3 = sub_1D7D3062C();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_1D7AEB1D8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();
  MEMORY[0x1DA7103D0](v0 + 64);

  return swift_deallocClassInstance();
}

BOOL sub_1D7AEB250(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1D7AEC644(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ArticleViewerPage(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v48 - v17;
  sub_1D7AECB6C(a1, v9, sub_1D7AEC644);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v19 = sub_1D7AEC644;
    v20 = v9;
LABEL_15:
    sub_1D7AECEFC(v20, v19);
    return 0;
  }

  sub_1D7AECF5C(v9, v18, type metadata accessor for ArticleViewerPage);
  sub_1D7AEC678(a2, &v63);
  if (!v66)
  {
    sub_1D7AECEFC(v18, type metadata accessor for ArticleViewerPage);
    sub_1D79DA7DC(&v63, &qword_1EE0C2DF0);
    return 0;
  }

  sub_1D7A966C0(&v63, v67);
  if ((v67[153] & 1) != 0 || (ArticleViewerPage.article.getter(v62), v63 = v62[0], v64 = v62[1], v65 = v62[2], v66 = v62[3], !*(&v62[0] + 1)))
  {
LABEL_14:
    sub_1D79DA8DC(v67);
    v19 = type metadata accessor for ArticleViewerPage;
    v20 = v18;
    goto LABEL_15;
  }

  v21 = v64;
  swift_unknownObjectRetain();
  sub_1D79DA7DC(&v63, &qword_1EE0C0600);
  ArticleViewerPage.article.getter(&v54);
  v58 = v54;
  v59 = v55;
  v60 = v56;
  v61 = v57;
  if (!*(&v54 + 1) || (v22 = v59, swift_unknownObjectRetain(), sub_1D79DA7DC(&v58, &qword_1EE0C0600), v23 = [v22 sourceChannel], swift_unknownObjectRelease(), !v23))
  {
LABEL_13:
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v49 = *(v3 + 56);
  v24 = [v49 purchaseProvider];
  v25 = [swift_unknownObjectRetain() tagType];
  v50 = v21;
  if (v25 == 3)
  {
    v26 = [v23 asSection];
    if (!v26 || (v27 = [v26 parentID], swift_unknownObjectRelease(), !v27))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_20;
    }
  }

  else
  {
    v27 = [v23 identifier];
  }

  v29 = sub_1D7D3034C();
  v31 = v30;

  v32 = [v24 purchasedTagIDs];
  v33 = sub_1D7D309AC();

  LOBYTE(v29) = sub_1D7D053C8(v29, v31, v33);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (v29)
  {
    goto LABEL_45;
  }

LABEL_20:
  v34 = [objc_msgSend(v49 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v34, v34 + 1))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
  }

  v54 = v52;
  v55 = v53;
  if (!*(&v53 + 1))
  {
    sub_1D79DA7DC(&v54, &qword_1EE0BE7A0);
    goto LABEL_28;
  }

  sub_1D7992EFC(0, &qword_1EE0BECA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    v35 = 0;
    v37 = 0;
    goto LABEL_29;
  }

  v35 = v51;
  v36 = [v51 integerValue];
  if (v36 == -1)
  {

    goto LABEL_40;
  }

  v37 = v36;
LABEL_29:
  if (objc_getAssociatedObject(v34, ~v37))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
  }

  v54 = v52;
  v55 = v53;
  if (*(&v53 + 1))
  {
    sub_1D7992EFC(0, &qword_1EE0BECA0);
    if (swift_dynamicCast())
    {
      v38 = v51;
      v39 = [v38 integerValue];

      if (((v39 ^ v37) & 1) == 0)
      {
        goto LABEL_43;
      }

LABEL_40:
      v40 = [objc_msgSend(v49 bundleSubscriptionProvider)];
      swift_unknownObjectRelease();
      v41 = [v23 identifier];
      if (!v41)
      {
        sub_1D7D3034C();
        v41 = sub_1D7D3031C();
      }

      v42 = [v40 containsTagID_];

      if (v42)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }
  }

  else
  {
    sub_1D79DA7DC(&v54, &qword_1EE0BE7A0);
  }

  if (v37)
  {
    goto LABEL_40;
  }

LABEL_43:
  if ([v50 isPaid])
  {
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

LABEL_45:
  sub_1D7AECB6C(v18, v14, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v44 = type metadata accessor for ArticleViewerPage;
  if ((EnumCaseMultiPayload - 1) < 3)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1D79DA8DC(v67);
    sub_1D7AECEFC(v18, type metadata accessor for ArticleViewerPage);
    v20 = v14;
    v19 = type metadata accessor for ArticleViewerPage;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1D799A6BC();
    sub_1D79DA510(*&v14[*(v45 + 48)], *&v14[*(v45 + 48) + 8], *&v14[*(v45 + 48) + 16]);
    v44 = type metadata accessor for ArticleViewerArticlePage;
  }

  sub_1D7AECEFC(v14, v44);
  ArticleViewerPage.article.getter(&v54);
  if (*(&v54 + 1))
  {
    v46 = v55;
    swift_unknownObjectRetain();
    sub_1D79DA7DC(&v54, &qword_1EE0C0600);
    if ([v46 respondsToSelector_])
    {
      v47 = [v46 role];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_1D79DA8DC(v67);
      sub_1D7AECEFC(v18, type metadata accessor for ArticleViewerPage);
      return v47 != 4;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  sub_1D79DA8DC(v67);
  sub_1D7AECEFC(v18, type metadata accessor for ArticleViewerPage);
  return 1;
}

uint64_t sub_1D7AEBAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v55 = a2;
  v59 = a3;
  sub_1D7AECBD4(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for ArticleViewerOverflowMenuContext();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v8);
  v56 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v53 - v12;
  sub_1D7AECC08(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v53 - v20;
  sub_1D7AEC644(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v54 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v53 - v27;
  v29 = a1;
  sub_1D7AECB6C(a1, v21, sub_1D7AECC08);
  sub_1D7AECC3C(0);
  v31 = v30;
  v32 = *(*(v30 - 8) + 48);
  if (v32(v21, 1, v30) == 1)
  {
    sub_1D7AECEFC(v21, sub_1D7AECC08);
    v33 = 1;
  }

  else
  {
    sub_1D7AECB6C(v21, v13, type metadata accessor for ArticleViewerOverflowMenuContext);
    sub_1D7AECEFC(v21, sub_1D7AECC3C);
    sub_1D7AECB6C(v13, v28, type metadata accessor for ArticleViewerPage);
    sub_1D7AECEFC(v13, type metadata accessor for ArticleViewerOverflowMenuContext);
    v33 = 0;
  }

  v34 = type metadata accessor for ArticleViewerPage(0);
  v53 = *(*(v34 - 8) + 56);
  v53(v28, v33, 1, v34);
  sub_1D7AECB6C(v29, v17, sub_1D7AECC08);
  if (v32(v17, 1, v31) == 1)
  {
    sub_1D7AECEFC(v17, sub_1D7AECC08);
    memset(v60, 0, sizeof(v60));
    v61 = 0;
  }

  else
  {
    sub_1D79DA880(&v17[*(v31 + 28)], v60);
    sub_1D7AECEFC(v17, sub_1D7AECC3C);
  }

  v35 = v58;
  v36 = sub_1D7AEB250(v28, v60);
  sub_1D79DA7DC(v60, &qword_1EE0C2DF0);
  sub_1D7AECEFC(v28, sub_1D7AEC644);
  sub_1D799C550(0, &unk_1EE0C1B20, type metadata accessor for ArticleViewerOverflowMenuContext, type metadata accessor for ArticleViewerFeatureAnimationContext);
  sub_1D7AECB6C(v29 + *(v37 + 28), v7, sub_1D7AECBD4);
  if ((*(v57 + 48))(v7, 1, v35) != 1)
  {
    v42 = v56;
    sub_1D7AECF5C(v7, v56, type metadata accessor for ArticleViewerOverflowMenuContext);
    v43 = v54;
    sub_1D7AECB6C(v42, v54, type metadata accessor for ArticleViewerPage);
    v53(v43, 0, 1, v34);
    v44 = v55;
    sub_1D79DA880(v55, v60);
    v45 = sub_1D7AEB250(v43, v60);
    sub_1D79DA7DC(v60, &qword_1EE0C2DF0);
    sub_1D7AECEFC(v43, sub_1D7AEC644);
    if (v36)
    {
      if (v45)
      {
        v46 = sub_1D7AEC244(v42, v44, *(v42 + *(v35 + 24)), *(v42 + *(v35 + 24) + 8));
        v47 = type metadata accessor for OverflowMenuArticleViewerFeatureTransition();
        v48 = swift_allocObject();
        *(v48 + 16) = v46;
        *(v48 + 24) = 1;
LABEL_14:
        v41 = v59;
        v59[3] = v47;
        v41[4] = &off_1F52A2E80;
        *v41 = v48;
LABEL_18:
        result = sub_1D7AECEFC(v42, type metadata accessor for ArticleViewerOverflowMenuContext);
        goto LABEL_19;
      }

      v50 = type metadata accessor for OverflowMenuArticleViewerFeatureTransition();
      v51 = swift_allocObject();
      *(v51 + 16) = 0;
    }

    else
    {
      if (v45)
      {
        v49 = sub_1D7AEC244(v42, v44, *(v42 + *(v35 + 24)), *(v42 + *(v35 + 24) + 8));
        v47 = type metadata accessor for OverflowMenuArticleViewerFeatureTransition();
        v48 = swift_allocObject();
        *(v48 + 16) = v49;
        *(v48 + 24) = 0;
        goto LABEL_14;
      }

      v50 = type metadata accessor for OverflowMenuArticleViewerFeatureTransition();
      v51 = swift_allocObject();
      *(v51 + 16) = 1;
    }

    *(v51 + 24) = 2;
    v52 = v59;
    v59[3] = v50;
    v52[4] = &off_1F52A2E80;
    v41 = v52;
    *v52 = v51;
    goto LABEL_18;
  }

  sub_1D7AECEFC(v7, sub_1D7AECBD4);
  v38 = type metadata accessor for OverflowMenuArticleViewerFeatureTransition();
  result = swift_allocObject();
  *(result + 16) = !v36;
  *(result + 24) = 2;
  v40 = v59;
  v59[3] = v38;
  v40[4] = &off_1F52A2E80;
  v41 = v40;
  *v40 = result;
LABEL_19:
  *(v41 + 40) = 0;
  return result;
}

id sub_1D7AEC244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ArticleViewerPage(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  v12 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = objc_opt_self();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1D7AECB6C(a1, v12, type metadata accessor for ArticleViewerPage);
  sub_1D79DA880(a2, v26);
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  *(v18 + 24) = v14;
  sub_1D7AECF5C(v12, v18 + v16, type metadata accessor for ArticleViewerPage);
  sub_1D7A966C0(v26, v18 + v17);
  v19 = (v18 + ((v17 + 191) & 0xFFFFFFFFFFFFFFF8));
  *v19 = a3;
  v19[1] = a4;
  aBlock[4] = sub_1D7AECDE8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7AEB0C8;
  aBlock[3] = &block_descriptor_16;
  v20 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v21 = [v24 elementWithUncachedProvider_];
  _Block_release(v20);
  return v21;
}

BOOL sub_1D7AEC4F0(uint64_t a1, uint64_t a2)
{
  sub_1D7AEC644(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D7AECB6C(a1, v7, type metadata accessor for ArticleViewerPage);
  v8 = type metadata accessor for ArticleViewerPage(0);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_1D79DA880(a2, v12);
  v9 = sub_1D7AEB250(v7, v12);
  sub_1D79DA7DC(v12, &qword_1EE0C2DF0);
  sub_1D7AECEFC(v7, sub_1D7AEC644);
  return v9;
}

uint64_t sub_1D7AEC678(uint64_t a1, uint64_t a2)
{
  sub_1D799956C(0, &qword_1EE0C2DF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7AEC6EC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a7;
  v38 = a8;
  v39 = a6;
  v40 = a2;
  v41 = a1;
  v8 = sub_1D7D2B49C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AECEC8(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ArticleViewerArticlePage(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    swift_beginAccess();
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v25 = v24;
      sub_1D7C3C32C(v16);
      if ((*(v18 + 48))(v16, 1, v17) != 1)
      {
        sub_1D7AECF5C(v16, v21, type metadata accessor for ArticleViewerArticlePage);
        (*(v9 + 104))(v12, *MEMORY[0x1E69D7FD8], v8);

        v27 = ArticleViewerPage.tracker.getter();
        v43 = sub_1D7D28A3C();
        v44 = sub_1D7997860(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8]);
        v42[0] = v27;
        v45 = 0u;
        v46 = 0u;
        v47 = 1;
        v28 = sub_1D7D30D8C();
        v29 = [v28 overflowPresentationSource];

        sub_1D7D2B10C();
        swift_allocObject();
        v30 = sub_1D7D2B09C();
        sub_1D799CC84(v23 + 16, v42);
        __swift_project_boxed_opaque_existential_1(v42, v43);
        ObjectType = swift_getObjectType();
        v32 = (*(v38 + 8))(ObjectType);
        v34 = sub_1D7BDD28C(v21, v39, v32, v33, v30);

        __swift_destroy_boxed_opaque_existential_1(v42);
        v35 = [v34 children];
        sub_1D7992EFC(0, &unk_1EC9E24C0);
        v36 = sub_1D7D3063C();

        v41(v36);

        return sub_1D7AECEFC(v21, type metadata accessor for ArticleViewerArticlePage);
      }

      sub_1D7AECEFC(v16, sub_1D7AECEC8);
    }

    else
    {
    }
  }

  return (v41)(MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1D7AECB6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D7AECC70()
{
  if (!qword_1EE0BB1E0)
  {
    sub_1D7D2D39C();
    sub_1D7D2D12C();
    sub_1D7997860(&qword_1EE0CBD90, MEMORY[0x1E69B4328]);
    v0 = sub_1D7D2D2DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BB1E0);
    }
  }
}

void sub_1D7AECD2C()
{
  if (!qword_1EC9E4420)
  {
    sub_1D7D2D3CC();
    sub_1D7D2D12C();
    sub_1D7997860(&qword_1EE0CBD80, MEMORY[0x1E69B4358]);
    v0 = sub_1D7D2D2DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E4420);
    }
  }
}

uint64_t sub_1D7AECDE8(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(type metadata accessor for ArticleViewerPage(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = (v2 + ((v7 + 191) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_1D7AEC6EC(a1, a2, v8, v9, v2 + v6, v2 + v7, v11, v12);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D7AECEFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7AECF5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t RecipeBannerAdViewControllerProvider.adViewController(for:placement:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v59 = a3;
  v57 = a2;
  v56 = a1;
  v58 = sub_1D7D27BDC();
  v4 = *(v58 - 1);
  MEMORY[0x1EEE9AC00](v58, v5);
  v7 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecipeCardPlacementContext(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v60 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v55 = v54 - v14;
  v15 = [objc_msgSend(*(v3 + 104) bundleSubscriptionProvider];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v15, v15 + 1))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v67 = 0u;
    v68 = 0u;
  }

  v69 = v67;
  v70 = v68;
  if (*(&v68 + 1))
  {
    sub_1D79A4870();
    if (swift_dynamicCast())
    {
      v16 = v64[0];
      v17 = [v64[0] integerValue];
      if (v17 == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }
  }

  else
  {
    sub_1D7AED8C0(&v69, sub_1D79F0070);
  }

  v16 = 0;
  v17 = 0;
LABEL_10:
  if (objc_getAssociatedObject(v15, ~v17))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v67 = 0u;
    v68 = 0u;
  }

  v69 = v67;
  v70 = v68;
  if (*(&v68 + 1))
  {
    sub_1D79A4870();
    if (swift_dynamicCast())
    {
      v18 = v64[0];
      v19 = [v18 integerValue];

      v20 = v19 - 64;
      goto LABEL_18;
    }
  }

  else
  {
    sub_1D7AED8C0(&v69, sub_1D79F0070);
  }

LABEL_17:

  v20 = -64;
LABEL_18:
  v21 = v58;
  (*(v4 + 16))(v7, v59, v58);
  v22 = [objc_msgSend(*(v3 + 16) possiblyUnfetchedAppConfiguration)];
  result = swift_unknownObjectRelease();
  if (v22)
  {
    v24 = v20 ^ v17;
    v25 = [v22 isRecipeCardTopAdPlacementEnabled];

    v26 = v55;
    *v55 = v24 & 1;
    (*(v4 + 32))(v26 + *(v8 + 20), v7, v21);
    *(v26 + *(v8 + 24)) = v25;
    sub_1D799CC84(v3 + 24, &v69);
    v27 = *(v3 + 96);
    v29 = *(v3 + 64);
    v28 = *(v3 + 72);
    v59 = *(v3 + 80);
    sub_1D799CC84(v3 + 112, &v67);
    sub_1D7AED7A4(v26, v60);
    v30 = __swift_mutable_project_boxed_opaque_existential_1(&v69, *(&v70 + 1));
    v58 = v54;
    v31 = MEMORY[0x1EEE9AC00](v30, v30);
    v33 = (v54 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v34 + 16))(v33, v31);
    v35 = *v33;
    v36 = type metadata accessor for RecipeBannerAdFactory();
    v65 = v36;
    v66 = &off_1F52B1E90;
    v64[0] = v35;
    v37 = type metadata accessor for RecipeBannerAdViewController(0);
    v38 = objc_allocWithZone(v37);
    v39 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
    v54[1] = v54;
    v40 = MEMORY[0x1EEE9AC00](v39, v39);
    v42 = (v54 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v43 + 16))(v42, v40);
    v44 = *v42;
    v63[3] = v36;
    v63[4] = &off_1F52B1E90;
    v63[0] = v44;
    v45 = &v38[OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_bannerAdSize];
    sub_1D7BA4498();
    *v45 = v46;
    *(v45 + 1) = v47;
    v48 = &v38[OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_bannerView];
    *v48 = 0;
    *(v48 + 1) = 0;
    sub_1D799CC84(v63, &v38[OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_bannerAdFactory]);
    *&v38[OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_bannerAdJournal] = v29;
    *&v38[OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_requestManager] = v27;
    *&v38[OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_bannerAdViewManager] = v28;
    *&v38[OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_recipeDataManager] = v59;
    v49 = &v38[OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_recipeID];
    v50 = v57;
    *v49 = v56;
    *(v49 + 1) = v50;
    sub_1D799CC84(&v67, &v38[OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_recipeTheme]);
    v51 = v60;
    sub_1D7AED7A4(v60, &v38[OBJC_IVAR____TtC12NewsArticles28RecipeBannerAdViewController_placement]);
    v62.receiver = v38;
    v62.super_class = v37;

    swift_unknownObjectRetain();

    v52 = objc_msgSendSuper2(&v62, sel_initWithNibName_bundle_, 0, 0);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v53 = v52;

    sub_1D7D2CF6C();

    __swift_project_boxed_opaque_existential_1(v61, v61[3]);
    sub_1D7D28AEC();

    sub_1D7AED8C0(v51, type metadata accessor for RecipeCardPlacementContext);
    __swift_destroy_boxed_opaque_existential_1(&v67);
    sub_1D7AED8C0(v26, type metadata accessor for RecipeCardPlacementContext);
    __swift_destroy_boxed_opaque_existential_1(v63);
    __swift_destroy_boxed_opaque_existential_1(v61);
    __swift_destroy_boxed_opaque_existential_1(v64);
    __swift_destroy_boxed_opaque_existential_1(&v69);
    return v52;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7AED7A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeCardPlacementContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RecipeBannerAdViewControllerProvider.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  return v0;
}

uint64_t RecipeBannerAdViewControllerProvider.__deallocating_deinit()
{
  RecipeBannerAdViewControllerProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7AED8C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static ArticleViewerFeatures.overflowMenu.getter()
{
  sub_1D7AED990();

  return swift_initStaticObject();
}

void sub_1D7AED990()
{
  if (!qword_1EE0C88C0)
  {
    type metadata accessor for ArticleViewerOverflowMenuContext();
    v0 = type metadata accessor for ArticleViewerFeature();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C88C0);
    }
  }
}

uint64_t type metadata accessor for ArticleViewerOverflowMenuContext()
{
  result = qword_1EE0C3620;
  if (!qword_1EE0C3620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D7AEDA5C()
{
  result = type metadata accessor for ArticleViewerPage(319);
  if (v1 <= 0x3F)
  {
    result = sub_1D7D2ACCC();
    if (v2 <= 0x3F)
    {
      result = sub_1D79EF838();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D7AEDAFC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v47 = a2;
  v45 = type metadata accessor for AdComponentIntegrator.Item();
  MEMORY[0x1EEE9AC00](v45, v7);
  v46 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7D2CBAC();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v42 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ArticleBannerAd();
  v14 = MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = v41 - v18;
  if (qword_1EE0CABE0 != -1)
  {
    swift_once();
  }

  v41[1] = qword_1EE0CABE8;
  sub_1D79A03A8(0, &qword_1EE0BE810, sub_1D79D6A7C, MEMORY[0x1E69E6F90]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D7D3C680;
  sub_1D79FBB34();
  v22 = v21;
  sub_1D7D2CC3C();
  v23 = sub_1D7D2D53C();
  v25 = v24;
  v26 = sub_1D7D2D57C();
  v27 = *(*(v26 - 8) + 8);
  v27(v19, v26);
  *(v20 + 56) = MEMORY[0x1E69E6158];
  v28 = sub_1D79D6AE0();
  *(v20 + 64) = v28;
  *(v20 + 32) = v23;
  *(v20 + 40) = v25;
  sub_1D7D2CC3C();
  v29 = v42;
  sub_1D7D2D56C();
  v27(v16, v26);
  sub_1D7AEE850(&unk_1EE0BFBE8, MEMORY[0x1E69B3EE0]);
  v30 = v44;
  v31 = sub_1D7D3190C();
  v33 = v32;
  (*(v43 + 8))(v29, v30);
  v34 = MEMORY[0x1E69E6158];
  *(v20 + 96) = MEMORY[0x1E69E6158];
  *(v20 + 104) = v28;
  *(v20 + 72) = v31;
  *(v20 + 80) = v33;
  v35 = sub_1D7D2CC1C();
  *(v20 + 136) = v34;
  *(v20 + 144) = v28;
  *(v20 + 112) = v35;
  *(v20 + 120) = v36;
  sub_1D7D30C6C();
  sub_1D7D29AAC();

  v37 = v46;
  (*(*(v22 - 8) + 16))(v46, a1, v22);
  v38 = v45;
  *(v37 + *(v45 + 20)) = v47;
  v39 = (v37 + *(v38 + 24));
  *v39 = a3;
  v39[1] = a4;
  v48 = 0;
  swift_unknownObjectRetain();
  sub_1D7AEDF28(v37, &v48);
  if (v48 == 1)
  {
    sub_1D7AEE2A4(v37);
  }

  return sub_1D7AF0FF0(v37, type metadata accessor for AdComponentIntegrator.Item);
}

uint64_t sub_1D7AEDF28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38[0] = a2;
  v5 = type metadata accessor for AdComponentIntegrator.Item();
  v41 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ArticleBannerAd();
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = v38 - v15;
  v42 = *(v2 + OBJC_IVAR____TtC12NewsArticles21AdComponentIntegrator_lock);
  sub_1D7D28B0C();
  sub_1D79FBB34();
  v40 = v17;
  sub_1D7D2CC3C();
  v18 = sub_1D7D2D53C();
  v20 = v19;
  v21 = sub_1D7D2D57C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 8);
  v38[1] = v22 + 8;
  v39 = v23;
  v23(v16, v21);
  v24 = OBJC_IVAR____TtC12NewsArticles21AdComponentIntegrator_integrationQueue;
  swift_beginAccess();
  v25 = *(v2 + v24);
  if (*(v25 + 16))
  {
    v26 = sub_1D7A18FFC(v18, v20);
    v28 = v27;

    if (v28)
    {
      v29 = *(*(v25 + 56) + 8 * v26);
      swift_endAccess();
      swift_bridgeObjectRetain_n();
      goto LABEL_6;
    }
  }

  else
  {
  }

  swift_endAccess();
  v29 = MEMORY[0x1E69E7CC0];
LABEL_6:
  v30 = v29[2];

  *v38[0] = v30 == 0;
  sub_1D7AF1050(a1, v8, type metadata accessor for AdComponentIntegrator.Item);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_1D79E3F64(0, v29[2] + 1, 1, v29);
  }

  v32 = v29[2];
  v31 = v29[3];
  if (v32 >= v31 >> 1)
  {
    v29 = sub_1D79E3F64(v31 > 1, v32 + 1, 1, v29);
  }

  v29[2] = v32 + 1;
  sub_1D7AEF35C(v8, v29 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v32);
  sub_1D7D2CC3C();
  v33 = sub_1D7D2D53C();
  v35 = v34;
  v39(v13, v21);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *(v3 + v24);
  *(v3 + v24) = 0x8000000000000000;
  sub_1D7B957E0(v29, v33, v35, isUniquelyReferenced_nonNull_native);

  *(v3 + v24) = v43;
  swift_endAccess();
  return sub_1D7D28B1C();
}

void sub_1D7AEE2A4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for AdComponentIntegrator.Item();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v23 = v1;
  v24 = v6;
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v1;
  v28 = a1;
  type metadata accessor for ArticleBannerAd();
  sub_1D7D294BC();
  v25 = type metadata accessor for AdComponentIntegrator.Item;
  v20 = a1;
  sub_1D7AF1050(a1, v7, type metadata accessor for AdComponentIntegrator.Item);
  v22 = *(v4 + 80);
  v8 = (v22 + 16) & ~v22;
  v9 = swift_allocObject();
  sub_1D7AEF35C(v7, v9 + v8);
  v10 = sub_1D7D2934C();
  v21 = sub_1D7D293CC();

  sub_1D7AE6C50();
  v11 = sub_1D7D30E1C();
  v12 = v25;
  sub_1D7AF1050(a1, v7, v25);
  v13 = swift_allocObject();
  sub_1D7AEF35C(v7, v13 + v8);
  v19 = sub_1D7D293CC();

  v14 = v20;
  sub_1D7AF1050(v20, v7, v12);
  v15 = swift_allocObject();
  sub_1D7AEF35C(v7, v15 + v8);
  v16 = sub_1D7D2934C();
  sub_1D7D2942C();

  sub_1D7AF1050(v14, v7, v25);
  v17 = swift_allocObject();
  sub_1D7AEF35C(v7, v17 + v8);
  v18 = sub_1D7D2934C();
  sub_1D7D2942C();
}

uint64_t type metadata accessor for AdComponentIntegrator.Item()
{
  result = qword_1EE0C84F8;
  if (!qword_1EE0C84F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7AEE750()
{
  sub_1D79FBB34();
  if (v0 <= 0x3F)
  {
    sub_1D7AEE7EC();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGPoint(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D7AEE7EC()
{
  result = qword_1EE0BF0B8;
  if (!qword_1EE0BF0B8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0BF0B8);
  }

  return result;
}

uint64_t sub_1D7AEE850(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7AEE8C8(uint64_t a1)
{
  v2 = type metadata accessor for AdComponentIntegrator.Item();
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v5 = sub_1D7D2CBAC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ArticleBannerAd();
  v11 = MEMORY[0x1EEE9AC00](v27, v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v26 - v13;
  sub_1D79FBB34();
  sub_1D7D2CC3C();
  sub_1D7D2D56C();
  v15 = sub_1D7D2D57C();
  (*(*(v15 - 8) + 8))(v14, v15);
  if ((*(v6 + 88))(v9, v5) == *MEMORY[0x1E69B3ED8])
  {
    (*(v6 + 96))(v9, v5);
    v16 = __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1EEE9AC00](v16, v17);
    v18 = v28;
    *(&v26 - 2) = a1;
    *(&v26 - 1) = v18;
    sub_1D7D294BC();
    sub_1D7AF1050(a1, &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AdComponentIntegrator.Item);
    v19 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v20 = swift_allocObject();
    sub_1D7AEF35C(&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
    v21 = sub_1D7D2934C();
    sub_1D7D2939C();

    sub_1D7AF1050(a1, &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AdComponentIntegrator.Item);
    v22 = swift_allocObject();
    sub_1D7AEF35C(&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v19);
    v23 = sub_1D7D2934C();
    v24 = sub_1D7D2943C();

    return v24;
  }

  else
  {
    (*(v6 + 8))(v9, v5);
    sub_1D7D2CC3C();
    sub_1D79A03A8(0, qword_1EE0C02E0, type metadata accessor for ArticleBannerAd, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D7D2940C();
  }
}

uint64_t sub_1D7AEECF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a3;
  v56 = a2;
  v61 = a4;
  v5 = sub_1D7D2CF3C();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v51 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79A03A8(0, &qword_1EE0BFAA0, MEMORY[0x1E69B42D0], MEMORY[0x1E69E6720]);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v50 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v55 = &v48 - v13;
  v14 = sub_1D7D2D20C();
  v57 = *(v14 - 8);
  v58 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v49 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D7D2CBAC();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v60 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v48 - v23;
  if (qword_1EE0CABE0 != -1)
  {
    swift_once();
  }

  v59 = qword_1EE0CABE8;
  sub_1D79A03A8(0, &qword_1EE0BE810, sub_1D79D6A7C, MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D7D3B4E0;
  v26 = sub_1D7D2D53C();
  v28 = v27;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  v29 = sub_1D79D6AE0();
  *(v25 + 64) = v29;
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  sub_1D7D2D56C();
  sub_1D7AEE850(&unk_1EE0BFBE8, MEMORY[0x1E69B3EE0]);
  v30 = sub_1D7D3190C();
  v32 = v31;
  v33 = v24;
  v34 = *(v18 + 8);
  v34(v33, v17);
  *(v25 + 96) = MEMORY[0x1E69E6158];
  *(v25 + 104) = v29;
  v35 = a1;
  *(v25 + 72) = v30;
  *(v25 + 80) = v32;
  sub_1D7D30C6C();
  sub_1D7D29AAC();

  v36 = v60;
  sub_1D7D2D56C();
  if ((*(v18 + 88))(v36, v17) == *MEMORY[0x1E69B3ED8])
  {
    (*(v18 + 96))(v36, v17);
    __swift_destroy_boxed_opaque_existential_1(v36);
    v37 = v55;
    sub_1D7D2D3EC();
    v39 = v57;
    v38 = v58;
    if ((*(v57 + 48))(v37, 1, v58) == 1)
    {
      sub_1D7AF0610(v37, &qword_1EE0BFAA0, MEMORY[0x1E69B42D0]);
    }

    else
    {
      v40 = v49;
      (*(v39 + 32))(v49, v37, v38);
      v41 = *MEMORY[0x1E69B4128];
      v42 = sub_1D7D2CF2C();
      v43 = v51;
      (*(*(v42 - 8) + 104))(v51, v41, v42);
      v45 = v53;
      v44 = v54;
      (*(v53 + 104))(v43, *MEMORY[0x1E69B4168], v54);
      type metadata accessor for AdComponentIntegrator.Item();
      sub_1D7D2D1EC();
      (*(v45 + 8))(v43, v44);
      v46 = v50;
      (*(v39 + 16))(v50, v40, v38);
      (*(v39 + 56))(v46, 0, 1, v38);
      sub_1D7D2D3FC();
      (*(v39 + 8))(v40, v38);
    }
  }

  else
  {
    v34(v36, v17);
  }

  return sub_1D7AF1050(v35, v61, type metadata accessor for ArticleBannerAd);
}

uint64_t sub_1D7AEF35C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdComponentIntegrator.Item();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D7AEF444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = a3;
  v88 = a2;
  v4 = sub_1D7D2D52C();
  v72 = *(v4 - 8);
  v73 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v71 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6720];
  sub_1D79A03A8(0, &unk_1EE0BFB90, MEMORY[0x1E69B3F40], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v74 = &v69 - v10;
  v11 = sub_1D7D2CC0C();
  v75 = *(v11 - 8);
  v76 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v70 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ArticleBannerAd();
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v85 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v79 = &v69 - v19;
  sub_1D79A03A8(0, &unk_1EE0C84E8, type metadata accessor for AdComponentIntegrator.Item, v7);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v69 - v22;
  v24 = type metadata accessor for AdComponentIntegrator.Item();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v77 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D7D2CBAC();
  v29 = *(v28 - 8);
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v82 = &v69 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v78 = &v69 - v35;
  MEMORY[0x1EEE9AC00](v34, v36);
  v38 = &v69 - v37;
  v39 = a1;
  sub_1D7D2D56C();
  v40 = type metadata accessor for AdComponentState();
  v41 = objc_allocWithZone(v40);
  v42 = sub_1D7A7FF20(v38);
  v43 = &v41[OBJC_IVAR____TtC12NewsArticles16AdComponentState_identifier];
  *v43 = v42;
  v43[1] = v44;
  (*(v29 + 16))(&v41[OBJC_IVAR____TtC12NewsArticles16AdComponentState_bannerState], v38, v28);
  v87.receiver = v41;
  v87.super_class = v40;
  v86 = objc_msgSendSuper2(&v87, sel_init);
  v81 = *(v29 + 8);
  v81(v38, v28);
  v83 = v39;
  v45 = sub_1D7D2D53C();
  sub_1D7AEFD70(v45, v46, v23);

  v47 = *(v25 + 48);
  v80 = v24;
  if (v47(v23, 1, v24) == 1)
  {
    sub_1D7AF0610(v23, &unk_1EE0C84E8, type metadata accessor for AdComponentIntegrator.Item);
  }

  else
  {
    v48 = v23;
    v49 = v77;
    sub_1D7AEF35C(v48, v77);
    sub_1D79FBB34();
    v50 = v79;
    sub_1D7D2CC3C();
    v51 = v78;
    sub_1D7D2D56C();
    sub_1D7AF0FF0(v49, type metadata accessor for AdComponentIntegrator.Item);
    v52 = sub_1D7D2D57C();
    (*(*(v52 - 8) + 8))(v50, v52);
    if ((*(v29 + 88))(v51, v28) == *MEMORY[0x1E69B3E98])
    {

      (*(v29 + 96))(v51, v28);
      v53 = sub_1D7D2CB9C();
      (*(*(v53 - 8) + 8))(v51, v53);
      return;
    }

    v81(v51, v28);
  }

  v54 = v82;
  sub_1D7D2D56C();
  v55 = (*(v29 + 88))(v54, v28);
  v56 = v85;
  if (v55 == *MEMORY[0x1E69B3ED8])
  {
    (*(v29 + 96))(v54, v28);
    __swift_destroy_boxed_opaque_existential_1(v54);
    v57 = v88;
    __swift_project_boxed_opaque_existential_1((v88 + OBJC_IVAR____TtC12NewsArticles21AdComponentIntegrator_layoutStore), *(v88 + OBJC_IVAR____TtC12NewsArticles21AdComponentIntegrator_layoutStore + 24));
    sub_1D79FBB34();
    v58 = v84;
    sub_1D7D2CC3C();
    sub_1D7D2D53C();
    v59 = sub_1D7D2D57C();
    (*(*(v59 - 8) + 8))(v56, v59);
    v60 = v74;
    sub_1D7D2D0DC();

    v62 = v75;
    v61 = v76;
    if ((*(v75 + 48))(v60, 1, v76) == 1)
    {

      sub_1D7AF0610(v60, &unk_1EE0BFB90, MEMORY[0x1E69B3F40]);
      return;
    }

    v64 = v70;
    (*(v62 + 32))(v70, v60, v61);
    v63 = v80;
    sub_1D7D2CBFC();
    v65 = v71;
    sub_1D7D2D51C();
    v66 = v85;
    sub_1D7D2CC5C();
    (*(v72 + 8))(v65, v73);
    sub_1D7AF0FF0(v66, type metadata accessor for ArticleBannerAd);
    (*(v62 + 8))(v64, v61);
  }

  else
  {
    v81(v54, v28);
    v58 = v84;
    v57 = v88;
    v63 = v80;
  }

  v67 = v86;
  v68 = [*(v57 + OBJC_IVAR____TtC12NewsArticles21AdComponentIntegrator_layoutInvalidator) invalidateComponent:*(v58 + *(v63 + 20)) state:v86 priority:1];
}

uint64_t sub_1D7AEFD70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_1D7D28B0C();
  v8 = OBJC_IVAR____TtC12NewsArticles21AdComponentIntegrator_integrationQueue;
  swift_beginAccess();
  v9 = *(v4 + v8);
  if (*(v9 + 16) && (v10 = sub_1D7A18FFC(a1, a2), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();
    v13 = *(v12 + 16);
    v14 = type metadata accessor for AdComponentIntegrator.Item();
    v15 = *(v14 - 8);
    v16 = v15;
    if (v13 < 2)
    {
      (*(v15 + 56))(a3, 1, 1, v14);
    }

    else
    {
      sub_1D7AF1050(v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72), a3, type metadata accessor for AdComponentIntegrator.Item);
      (*(v16 + 56))(a3, 0, 1, v14);
    }
  }

  else
  {
    swift_endAccess();
    v17 = type metadata accessor for AdComponentIntegrator.Item();
    (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
  }

  return sub_1D7D28B1C();
}

uint64_t sub_1D7AEFF08()
{
  v0 = type metadata accessor for ArticleBannerAd();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79FBB34();
  sub_1D7D2CC3C();
  v4 = sub_1D7D2D53C();
  v6 = v5;
  v7 = sub_1D7D2D57C();
  (*(*(v7 - 8) + 8))(v3, v7);
  sub_1D7AF0004(v4, v6);
}

uint64_t sub_1D7AF0004(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1D7D28B0C();
  v6 = OBJC_IVAR____TtC12NewsArticles21AdComponentIntegrator_integrationQueue;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (*(v7 + 16) && (v8 = sub_1D7A18FFC(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
  }

  else
  {
    result = swift_endAccess();
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10[2];
  if (v12)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v12 - 1) > v10[3] >> 1)
    {
      v10 = sub_1D79E3F64(isUniquelyReferenced_nonNull_native, v12, 1, v10);
    }

    sub_1D7BE2F70(0, 1, 0);
    swift_beginAccess();

    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v3 + v6);
    *(v3 + v6) = 0x8000000000000000;
    sub_1D7B957E0(v10, a1, a2, v14);

    *(v3 + v6) = v15;
    swift_endAccess();
    return sub_1D7D28B1C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7AF0188()
{
  v0 = type metadata accessor for ArticleBannerAd();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79A03A8(0, &unk_1EE0C84E8, type metadata accessor for AdComponentIntegrator.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for AdComponentIntegrator.Item();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79FBB34();
  sub_1D7D2CC3C();
  v13 = sub_1D7D2D53C();
  v15 = v14;
  v16 = sub_1D7D2D57C();
  (*(*(v16 - 8) + 8))(v3, v16);
  sub_1D7AF0484(v13, v15, v7);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D7AF0610(v7, &unk_1EE0C84E8, type metadata accessor for AdComponentIntegrator.Item);
  }

  sub_1D7AEF35C(v7, v12);
  sub_1D7AEE2A4(v12);
  return sub_1D7AF0FF0(v12, type metadata accessor for AdComponentIntegrator.Item);
}

uint64_t sub_1D7AF0400(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AdComponentIntegrator.Item() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1D7AF0484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_1D7D28B0C();
  v8 = OBJC_IVAR____TtC12NewsArticles21AdComponentIntegrator_integrationQueue;
  swift_beginAccess();
  v9 = *(v4 + v8);
  if (*(v9 + 16) && (v10 = sub_1D7A18FFC(a1, a2), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();
    v13 = *(v12 + 16);
    v14 = type metadata accessor for AdComponentIntegrator.Item();
    v15 = *(v14 - 8);
    v16 = v15;
    if (v13)
    {
      sub_1D7AF1050(v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), a3, type metadata accessor for AdComponentIntegrator.Item);
      (*(v16 + 56))(a3, 0, 1, v14);
    }

    else
    {
      (*(v15 + 56))(a3, 1, 1, v14);
    }
  }

  else
  {
    swift_endAccess();
    v17 = type metadata accessor for AdComponentIntegrator.Item();
    (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
  }

  return sub_1D7D28B1C();
}

uint64_t sub_1D7AF0610(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D79A03A8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7AF0680(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ArticleBannerAd();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7D2CE2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79FBB34();
  sub_1D7D2CC3C();
  sub_1D7D2D53C();
  v12 = sub_1D7D2D57C();
  (*(*(v12 - 8) + 8))(v6, v12);
  type metadata accessor for AdComponentIntegrator.Item();
  sub_1D7D2CE1C();
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC12NewsArticles21AdComponentIntegrator_policyValidator), *(a2 + OBJC_IVAR____TtC12NewsArticles21AdComponentIntegrator_policyValidator + 24));
  v13 = sub_1D7D2D3DC();
  (*(v8 + 8))(v11, v7);
  return v13;
}

uint64_t sub_1D7AF0858(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D7D2CBAC();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v29 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArticleBannerAd();
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v28 - v12;
  if (qword_1EE0CABE0 != -1)
  {
    swift_once();
  }

  v28[4] = qword_1EE0CABE8;
  sub_1D79A03A8(0, &qword_1EE0BE810, sub_1D79D6A7C, MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D7D3B4E0;
  sub_1D79FBB34();
  v28[1] = a2;
  v28[2] = v15;
  sub_1D7D2CC3C();
  v28[3] = v13;
  v16 = sub_1D7D2D53C();
  v18 = v17;
  v19 = sub_1D7D2D57C();
  v20 = *(*(v19 - 8) + 8);
  v20(v13, v19);
  *(v14 + 56) = MEMORY[0x1E69E6158];
  v21 = sub_1D79D6AE0();
  *(v14 + 64) = v21;
  *(v14 + 32) = v16;
  *(v14 + 40) = v18;
  sub_1D7D2CC3C();
  v22 = v29;
  sub_1D7D2D56C();
  v20(v10, v19);
  sub_1D7AEE850(&unk_1EE0BFBE8, MEMORY[0x1E69B3EE0]);
  v23 = v31;
  v24 = sub_1D7D3190C();
  v26 = v25;
  (*(v30 + 8))(v22, v23);
  *(v14 + 96) = MEMORY[0x1E69E6158];
  *(v14 + 104) = v21;
  *(v14 + 72) = v24;
  *(v14 + 80) = v26;
  sub_1D7D30C6C();
  sub_1D7D29AAC();

  sub_1D7D2CC3C();
  sub_1D79A03A8(0, qword_1EE0C02E0, type metadata accessor for ArticleBannerAd, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D7D2940C();
}

uint64_t sub_1D7AF0BE4()
{
  v0 = type metadata accessor for ArticleBannerAd();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0CABE0 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE0CABE8;
  v14[1] = sub_1D7D30C4C();
  sub_1D79A03A8(0, &qword_1EE0BE810, sub_1D79D6A7C, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7D3B4E0;
  sub_1D79FBB34();
  sub_1D7D2CC3C();
  v5 = sub_1D7D2D53C();
  v7 = v6;
  v8 = sub_1D7D2D57C();
  (*(*(v8 - 8) + 8))(v3, v8);
  v9 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1D79D6AE0();
  *(v4 + 64) = v10;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  swift_getErrorValue();
  v11 = sub_1D7D31A3C();
  *(v4 + 96) = v9;
  *(v4 + 104) = v10;
  *(v4 + 72) = v11;
  *(v4 + 80) = v12;
  sub_1D7D29AAC();

  sub_1D7D2CC4C();
  sub_1D79A03A8(0, qword_1EE0C02E0, type metadata accessor for ArticleBannerAd, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D7D2940C();
}

BOOL sub_1D7AF0E48(uint64_t a1, uint64_t a2)
{
  sub_1D79FBB34();
  v4 = sub_1D7D2CC1C();
  v6 = v5;
  if (v4 == sub_1D7D2CC1C() && v6 == v7)
  {
  }

  else
  {
    v8 = sub_1D7D3197C();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = type metadata accessor for AdComponentIntegrator.Item();
  v10 = [*(a1 + *(v9 + 20)) identifier];
  v11 = sub_1D7D3034C();
  v13 = v12;

  v14 = [*(a2 + *(v9 + 20)) identifier];
  v15 = sub_1D7D3034C();
  v17 = v16;

  if (v11 == v15 && v13 == v17)
  {
  }

  else
  {
    v19 = sub_1D7D3197C();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v20 = *(v9 + 24);
  v21 = a1 + v20;
  v22 = *(a1 + v20);
  v23 = (a2 + v20);
  if (v22 == *v23)
  {
    return *(v21 + 8) == v23[1];
  }

  return 0;
}

uint64_t sub_1D7AF0FF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7AF1050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_5()
{
  v1 = *(type metadata accessor for AdComponentIntegrator.Item() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_1D79FBB34();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t DefaultConcernModel.hashValue.getter()
{
  v1 = *v0;
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](v1);
  return sub_1D7D31ABC();
}

uint64_t DefaultConcernModel.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D7D2811C();

  return v2;
}

unint64_t DefaultConcernModel.identifier.getter()
{
  v1 = 0xD000000000000027;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000010;
  }

  v2 = 0xD000000000000023;
  if (!*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t DefaultConcernModel.subConcernsSectionHeader.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D7D2811C();

  return v2;
}

uint64_t DefaultConcernModel.subConcerns.getter()
{
  if (*v0 > 1u)
  {
    if (*v0 == 2)
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v31 = objc_opt_self();
      v32 = [v31 bundleForClass_];
      v33 = sub_1D7D2811C();
      v35 = v34;

      v36 = [v31 bundleForClass_];
      v37 = sub_1D7D2811C();
      v39 = v38;

      sub_1D7AF25D0(0, &qword_1EC9E1A18, &type metadata for SubConcernModel, MEMORY[0x1E69E6F90]);
      result = swift_allocObject();
      *(result + 16) = xmmword_1D7D3B4E0;
      *(result + 32) = 5457241;
      *(result + 40) = 0xE300000000000000;
      *(result + 48) = v33;
      *(result + 56) = v35;
      *(result + 64) = 0;
      *(result + 72) = 0;
      *(result + 80) = 20302;
      *(result + 88) = 0xE200000000000000;
    }

    else
    {
      type metadata accessor for Localized();
      v66 = swift_getObjCClassFromMetadata();
      v67 = objc_opt_self();
      v68 = [v67 bundleForClass_];
      v69 = sub_1D7D2811C();
      v71 = v70;

      v72 = [v67 bundleForClass_];
      v37 = sub_1D7D2811C();
      v39 = v73;

      sub_1D7AF25D0(0, &qword_1EC9E1A18, &type metadata for SubConcernModel, MEMORY[0x1E69E6F90]);
      result = swift_allocObject();
      *(result + 16) = xmmword_1D7D3B4E0;
      *(result + 32) = 0xD00000000000001BLL;
      *(result + 40) = 0x80000001D7D71710;
      *(result + 48) = v69;
      *(result + 56) = v71;
      *(result + 64) = 0;
      *(result + 72) = 0;
      *(result + 80) = 0xD000000000000017;
      *(result + 88) = 0x80000001D7D71790;
    }

    *(result + 96) = v37;
    *(result + 104) = v39;
    v29 = (result + 112);
  }

  else if (*v0)
  {
    type metadata accessor for Localized();
    v40 = swift_getObjCClassFromMetadata();
    v41 = objc_opt_self();
    v42 = [v41 bundleForClass_];
    v43 = sub_1D7D2811C();
    v96 = v44;
    v98 = v43;

    v45 = [v41 bundleForClass_];
    v94 = sub_1D7D2811C();
    v92 = v46;

    v47 = [v41 bundleForClass_];
    v48 = sub_1D7D2811C();
    v87 = v49;
    v88 = v48;

    v50 = [v41 bundleForClass_];
    v51 = sub_1D7D2811C();
    v84 = v52;
    v86 = v51;

    v53 = [v41 bundleForClass_];
    v54 = sub_1D7D2811C();
    v79 = v55;
    v80 = v54;

    v56 = [v41 bundleForClass_];
    v57 = sub_1D7D2811C();
    v75 = v58;
    v76 = v57;

    v59 = [v41 bundleForClass_];
    v74 = sub_1D7D2811C();
    v61 = v60;

    v62 = [v41 bundleForClass_];
    v63 = sub_1D7D2811C();
    v65 = v64;

    sub_1D7AF25D0(0, &qword_1EC9E1A18, &type metadata for SubConcernModel, MEMORY[0x1E69E6F90]);
    result = swift_allocObject();
    *(result + 16) = xmmword_1D7D4B960;
    *(result + 32) = 0xD00000000000001FLL;
    *(result + 40) = 0x80000001D7D71840;
    *(result + 48) = v98;
    *(result + 56) = v96;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0x4550535F45544148;
    *(result + 88) = 0xEB00000000484345;
    *(result + 96) = v94;
    *(result + 104) = v92;
    *(result + 112) = 0;
    *(result + 120) = 0;
    *(result + 128) = 0xD000000000000019;
    *(result + 136) = 0x80000001D7D718C0;
    *(result + 144) = v88;
    *(result + 152) = v87;
    *(result + 160) = 0;
    *(result + 168) = 0;
    *(result + 176) = 0x5F544E454C4F4956;
    *(result + 184) = 0xEF544E45544E4F43;
    *(result + 192) = v86;
    *(result + 200) = v84;
    *(result + 208) = 0;
    *(result + 216) = 0;
    *(result + 224) = 0xD000000000000014;
    *(result + 232) = 0x80000001D7D71940;
    *(result + 240) = v80;
    *(result + 248) = v79;
    *(result + 256) = 0;
    *(result + 264) = 0;
    *(result + 272) = 0xD000000000000013;
    *(result + 280) = 0x80000001D7D719B0;
    *(result + 288) = v76;
    *(result + 296) = v75;
    *(result + 304) = 0;
    *(result + 312) = 0;
    *(result + 320) = 0xD00000000000001DLL;
    *(result + 328) = 0x80000001D7D71A30;
    *(result + 336) = v74;
    *(result + 344) = v61;
    *(result + 352) = 0;
    *(result + 360) = 0;
    *(result + 368) = 0xD000000000000017;
    *(result + 376) = 0x80000001D7D71AA0;
    v29 = (result + 400);
    *(result + 384) = v63;
    *(result + 392) = v65;
  }

  else
  {
    type metadata accessor for Localized();
    v1 = swift_getObjCClassFromMetadata();
    v2 = objc_opt_self();
    v3 = [v2 bundleForClass_];
    v4 = sub_1D7D2811C();
    v99 = v5;
    v100 = v4;

    v6 = [v2 bundleForClass_];
    v7 = sub_1D7D2811C();
    v95 = v8;
    v97 = v7;

    v9 = [v2 bundleForClass_];
    v93 = sub_1D7D2811C();
    v91 = v10;

    v11 = [v2 bundleForClass_];
    v12 = sub_1D7D2811C();
    v89 = v13;
    v90 = v12;

    v14 = [v2 bundleForClass_];
    v15 = sub_1D7D2811C();
    v83 = v16;
    v85 = v15;

    v17 = [v2 bundleForClass_];
    v18 = sub_1D7D2811C();
    v81 = v19;
    v82 = v18;

    v20 = [v2 bundleForClass_];
    v21 = sub_1D7D2811C();
    v77 = v22;
    v78 = v21;

    v23 = [v2 bundleForClass_];
    v24 = sub_1D7D2811C();
    v26 = v25;

    v27 = [v2 bundleForClass_];
    sub_1D7D2811C();

    sub_1D7AF25D0(0, &qword_1EC9E1A18, &type metadata for SubConcernModel, MEMORY[0x1E69E6F90]);
    result = swift_allocObject();
    *(result + 16) = xmmword_1D7D4B960;
    *(result + 32) = 0x5353495F54584554;
    *(result + 40) = 0xEB00000000534555;
    *(result + 48) = v100;
    *(result + 56) = v99;
    *(result + 64) = 0;
    *(result + 72) = 0;
    strcpy((result + 80), "IMAGE_ISSUES");
    *(result + 93) = 0;
    *(result + 94) = -5120;
    *(result + 96) = v97;
    *(result + 104) = v95;
    *(result + 112) = 0;
    *(result + 120) = 0;
    strcpy((result + 128), "VIDEO_ISSUES");
    *(result + 141) = 0;
    *(result + 142) = -5120;
    *(result + 144) = v93;
    *(result + 152) = v91;
    *(result + 160) = 0;
    *(result + 168) = 0;
    strcpy((result + 176), "AUDIO_ISSUES");
    *(result + 189) = 0;
    *(result + 190) = -5120;
    *(result + 192) = v90;
    *(result + 200) = v89;
    *(result + 208) = 0;
    *(result + 216) = 0;
    *(result + 224) = 0xD000000000000015;
    *(result + 232) = 0x80000001D7D71BD0;
    *(result + 240) = v85;
    *(result + 248) = v83;
    *(result + 256) = 0;
    *(result + 264) = 0;
    strcpy((result + 272), "EXPOSED_CODE");
    *(result + 285) = 0;
    *(result + 286) = -5120;
    *(result + 288) = v82;
    *(result + 296) = v81;
    *(result + 304) = 0;
    *(result + 312) = 0;
    *(result + 320) = 0xD000000000000016;
    *(result + 328) = 0x80000001D7D71C70;
    *(result + 336) = v78;
    *(result + 344) = v77;
    *(result + 352) = 0;
    *(result + 360) = 0;
    *(result + 368) = 0xD000000000000012;
    *(result + 376) = 0x80000001D7D71CF0;
    v29 = (result + 400);
    *(result + 384) = v24;
    *(result + 392) = v26;
  }

  *v29 = 0;
  v29[1] = 0;
  return result;
}

unint64_t sub_1D7AF24FC()
{
  result = qword_1EC9E4460;
  if (!qword_1EC9E4460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4460);
  }

  return result;
}

unint64_t sub_1D7AF2554()
{
  result = qword_1EC9E4468;
  if (!qword_1EC9E4468)
  {
    sub_1D7AF25D0(255, &unk_1EC9E4470, &type metadata for DefaultConcernModel, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4468);
  }

  return result;
}

void sub_1D7AF25D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D7AF2630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_1D7AF3590(0, &qword_1EE0BE890, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7D3B4D0;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;

  v6 = sub_1D7D2F16C();

  return v6;
}

uint64_t sub_1D7AF2708()
{
  sub_1D7AF2FC4();
  swift_allocError();
  *v0 = 1;
  return swift_willThrow();
}

uint64_t sub_1D7AF2758@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*a1 >> 62)
  {
    result = sub_1D7D3167C();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1D7AF2FC4();
    swift_allocError();
    *v5 = 1;
    return swift_willThrow();
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1DA70EF00](0, v3);
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = swift_unknownObjectRetain();
LABEL_6:
    *a2 = result;
    return result;
  }

  __break(1u);
  return result;
}

char *sub_1D7AF281C()
{
  v41[9] = *MEMORY[0x1E69E9840];
  v0 = sub_1D7D2824C();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v38 - v7;
  v9 = sub_1D7AF2D5C();
  if (!v10)
  {
    sub_1D7AF2FC4();
    swift_allocError();
    *v16 = 0;
    goto LABEL_6;
  }

  v38[1] = v9;
  sub_1D7D2819C();
  sub_1D7D281DC();
  v11 = *(v1 + 8);
  v11(v5, v0);
  v12 = v39;
  v13 = sub_1D7D2825C();
  if (v12)
  {

    v11(v8, v0);
    goto LABEL_4;
  }

  v18 = v13;
  v5 = v14;
  v11(v8, v0);
  v19 = objc_opt_self();
  v20 = sub_1D7D2826C();
  v41[0] = 0;
  v21 = [v19 JSONObjectWithData:v20 options:0 error:v41];

  if (!v21)
  {
    v35 = v41[0];
    v36 = sub_1D7D2815C();

    swift_willThrow();
    sub_1D79EA2E4(v18, v5);

    goto LABEL_4;
  }

  v22 = v41[0];
  sub_1D7D3138C();
  sub_1D79EA2E4(v18, v5);
  swift_unknownObjectRelease();
  sub_1D7AF3018();
  v5 = MEMORY[0x1E69E7CA0];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_4:

    sub_1D7AF2FC4();
    swift_allocError();
    *v15 = 2;
LABEL_6:
    swift_willThrow();
    return v5;
  }

  v23 = v40;
  v41[8] = &unk_1F5325C00;
  v24 = swift_dynamicCastObjCProtocolConditional();
  if (!v24)
  {

    goto LABEL_4;
  }

  v25 = v24;
  swift_unknownObjectRetain_n();
  sub_1D7AF307C();
  v26 = objc_allocWithZone(MEMORY[0x1E69B5388]);
  v27 = sub_1D7D3027C();
  v39 = v23;
  v28 = v27;
  v29 = sub_1D7D3031C();
  v5 = sub_1D7D3062C();

  v30 = [v26 initWithDictionary:v28 path:v29 channel:v25 recipeIDs:v5];

  swift_unknownObjectRelease();
  if (!v30)
  {

    sub_1D7AF2FC4();
    swift_allocError();
    *v37 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();
    return v5;
  }

  result = [v30 articleID];
  if (result)
  {
    v31 = result;

    v32 = sub_1D7D3034C();
    v34 = v33;

    v41[0] = v32;
    v41[1] = v34;
    v41[2] = v30;
    memset(&v41[3], 0, 24);
    v41[6] = v32;
    v41[7] = v34;
    sub_1D7AF3590(0, &unk_1EE0C02A0, &type metadata for Article, MEMORY[0x1E69D6B18]);
    swift_allocObject();

    v5 = sub_1D7D2940C();
    swift_unknownObjectRelease();
    return v5;
  }

  __break(1u);
  return result;
}

id sub_1D7AF2D5C()
{
  v0 = sub_1D7D2824C();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v3, v6);
  v9 = &v20 - v8;
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v20 - v11;
  result = FCURLForContainerizedUserAccountDocumentDirectory();
  if (result)
  {
    v14 = result;
    sub_1D7D281EC();

    sub_1D7D281DC();
    v15 = *(v1 + 8);
    v15(v9, v0);
    sub_1D7D281CC();
    sub_1D7D281CC();
    v16 = [objc_opt_self() defaultManager];
    sub_1D7D281DC();
    sub_1D7D2821C();
    v15(v5, v0);
    v17 = sub_1D7D3031C();

    v18 = [v16 fileExistsAtPath_];

    if (v18)
    {
      v19 = sub_1D7D2821C();
    }

    else
    {
      v19 = 0;
    }

    v15(v12, v0);
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D7AF2FC4()
{
  result = qword_1EC9E4480;
  if (!qword_1EC9E4480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4480);
  }

  return result;
}

void sub_1D7AF3018()
{
  if (!qword_1EC9E4488)
  {
    v0 = sub_1D7D302AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E4488);
    }
  }
}

char *sub_1D7AF307C()
{
  v55 = *MEMORY[0x1E69E9840];
  v0 = sub_1D7D2824C();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v3, v6);
  v9 = v44 - v8;
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v44 - v11;
  sub_1D7D2819C();
  sub_1D7D281DC();
  v54 = 0;
  v48 = objc_opt_self();
  v13 = [v48 defaultManager];
  sub_1D7D2820C();
  v14 = sub_1D7D3031C();

  v15 = [v13 fileExistsAtPath:v14 isDirectory:&v54];

  if (!v15 || v54 != 1)
  {
    v39 = *(v1 + 8);
    v39(v9, v0);
LABEL_21:
    v39(v12, v0);
    return MEMORY[0x1E69E7CC0];
  }

  v16 = [v48 defaultManager];
  v17 = sub_1D7D281BC();
  v52 = 0;
  v18 = [v16 contentsOfDirectoryAtURL:v17 includingPropertiesForKeys:0 options:0 error:&v52];

  v19 = v52;
  if (!v18)
  {
    v41 = v52;
    v42 = v9;
    v43 = sub_1D7D2815C();

    swift_willThrow();
    v39 = *(v1 + 8);
    v39(v42, v0);
    goto LABEL_21;
  }

  v46 = v9;
  v20 = sub_1D7D3063C();
  v21 = v19;

  v22 = *(v20 + 16);
  if (v22)
  {
    v44[1] = v20;
    v45 = v12;
    v24 = v1 + 16;
    v23 = *(v1 + 16);
    v25 = v20 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v49 = *(v1 + 72);
    v50 = v23;
    v26 = (v1 + 8);
    v51 = MEMORY[0x1E69E7CC0];
    v47 = v24;
    v23(v5, v25, v0);
    while (1)
    {
      v52 = sub_1D7D281AC();
      v53 = v28;

      MEMORY[0x1DA70DE90](0x6C61636F6C2ELL, 0xE600000000000000);

      v29 = v52;
      v30 = v53;
      v31 = HIBYTE(v53) & 0xF;
      if ((v53 & 0x2000000000000000) == 0)
      {
        v31 = v52 & 0xFFFFFFFFFFFFLL;
      }

      if (v31)
      {
        LOBYTE(v52) = 0;
        v32 = v0;
        v33 = [v48 defaultManager];
        sub_1D7D2820C();
        v34 = sub_1D7D3031C();

        [v33 fileExistsAtPath:v34 isDirectory:&v52];

        v0 = v32;
        v27 = *v26;
        (*v26)(v5, v32);
        if (v52)
        {
          v35 = (swift_isUniquelyReferenced_nonNull_native() & 1) != 0 ? v51 : sub_1D79A8020(0, *(v51 + 2) + 1, 1, v51);
          v37 = *(v35 + 2);
          v36 = *(v35 + 3);
          if (v37 >= v36 >> 1)
          {
            v35 = sub_1D79A8020((v36 > 1), v37 + 1, 1, v35);
          }

          *(v35 + 2) = v37 + 1;
          v51 = v35;
          v38 = &v35[16 * v37];
          *(v38 + 4) = v29;
          *(v38 + 5) = v30;
          v0 = v32;
        }

        else
        {
        }
      }

      else
      {
        v27 = *v26;
        (*v26)(v5, v0);
      }

      v25 += v49;
      if (!--v22)
      {
        break;
      }

      v50(v5, v25, v0);
    }

    v12 = v45;
  }

  else
  {

    v27 = *(v1 + 8);
    v51 = MEMORY[0x1E69E7CC0];
  }

  v27(v46, v0);
  v27(v12, v0);
  return v51;
}

void sub_1D7AF3590(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D7AF35F4()
{
  result = qword_1EC9E4490;
  if (!qword_1EC9E4490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4490);
  }

  return result;
}

void sub_1D7AF3680(void *a1)
{
  v3 = MEMORY[0x1E69E6720];
  sub_1D7999074(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v51 = &v49 - v6;
  v7 = sub_1D7D280DC();
  v52 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D7D2804C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7999074(0, &qword_1EE0BDEC0, MEMORY[0x1E69681B8], v3);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v49 - v22;
  if ([objc_opt_self() canSendMail])
  {
    v52 = [objc_allocWithZone(MEMORY[0x1E6973F08]) init];
    [v52 setMailComposeDelegate_];
    v24 = [a1 recipient];
    if (v24)
    {
      v25 = v24;
      v26 = sub_1D7D3034C();
      v28 = v27;

      sub_1D7AF3EC8();
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1D7D3B4D0;
      *(v29 + 32) = v26;
      *(v29 + 40) = v28;
      v30 = sub_1D7D3062C();

      [v52 setToRecipients_];
    }

    v31 = [a1 subject];
    if (v31)
    {
      v32 = v31;
      [v52 setSubject_];
    }

    [*(v1 + OBJC_IVAR____TtC12NewsArticles13MailPresenter_viewControllerPresenting) presentViewController:v52 animated:1];
    v33 = v52;
  }

  else
  {
    v49 = v1;
    v50 = v10;
    v53 = 0x3A6F746C69616DLL;
    v54 = 0xE700000000000000;
    v34 = [a1 recipient];
    if (v34)
    {
      v35 = v34;
      v36 = sub_1D7D3034C();
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0xE000000000000000;
    }

    MEMORY[0x1DA70DE90](v36, v38);

    sub_1D7D280CC();

    v39 = [a1 subject];
    v40 = v52;
    if (v39)
    {
      v41 = v39;
      sub_1D7D3034C();

      sub_1D7D2803C();

      if (!v40[6](v23, 1, v7))
      {
        sub_1D7999074(0, &qword_1EC9E4518, MEMORY[0x1E6968178], MEMORY[0x1E69E6F90]);
        v42 = (*(v12 + 80) + 32) & ~*(v12 + 80);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_1D7D3B4D0;
        (*(v12 + 16))(v43 + v42, v15, v11);
        sub_1D7D2806C();
      }

      (*(v12 + 8))(v15, v11);
    }

    sub_1D7AF3E34(v23, v19);
    if (v40[6](v19, 1, v7) == 1)
    {
      sub_1D7A7E794(v19);
    }

    else
    {
      v40[4](v50, v19, v7);
      v44 = *(v49 + OBJC_IVAR____TtC12NewsArticles13MailPresenter_host);
      swift_unknownObjectRetain();
      v45 = v51;
      sub_1D7D2808C();
      v46 = sub_1D7D2824C();
      v47 = *(v46 - 8);
      v48 = 0;
      if ((*(v47 + 48))(v45, 1, v46) != 1)
      {
        v48 = sub_1D7D281BC();
        (*(v47 + 8))(v45, v46);
      }

      [v44 openURL:v48 completion:0];
      swift_unknownObjectRelease();

      (*(v52 + 1))(v50, v7);
    }

    sub_1D7A7E794(v23);
  }
}

uint64_t sub_1D7AF3E34(uint64_t a1, uint64_t a2)
{
  sub_1D7999074(0, &qword_1EE0BDEC0, MEMORY[0x1E69681B8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D7AF3EC8()
{
  if (!qword_1EE0BE890)
  {
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BE890);
    }
  }
}

uint64_t sub_1D7AF3F18(uint64_t a1)
{
  v3 = type metadata accessor for LinkAction();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7D2822C();
  if (v8)
  {
    if (v7 == 0xD000000000000017 && v8 == 0x80000001D7D71EC0)
    {
    }

    else
    {
      v9 = sub_1D7D3197C();

      if ((v9 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v10 = sub_1D7D281FC();
    if (v11)
    {
      v12 = v11;
      v13 = v10;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
      }

      v15 = Strong;
      sub_1D7C9CB50(v33);

      v16 = v34;
      if (v34)
      {
        v17 = v35;
        __swift_project_boxed_opaque_existential_1(v33, v34);
        (*(v17 + 8))(v13, v12, v16, v17);

        return __swift_destroy_boxed_opaque_existential_1(v33);
      }

      return sub_1D7AF4510(v33, &qword_1EC9E4520, &qword_1EC9E4528);
    }
  }

LABEL_10:
  v18 = v1[6];
  v19 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v18);
  v33[0] = 1;
  (*(v19 + 8))(a1, v33, v18, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_1D7AF4310(a1);
        v21 = sub_1D7D2824C();
        return (*(*(v21 - 8) + 8))(v6, v21);
      }

      goto LABEL_19;
    }

    if (EnumCaseMultiPayload == 2)
    {

      sub_1D7AD9820(0, &qword_1EE0BB108, type metadata accessor for ArticleNavigationAction);
      v26 = *(v25 + 48);
    }

    else
    {

      sub_1D7AD97A4();
      v26 = *(v30 + 64);
    }

    v23 = type metadata accessor for ArticleNavigationAction;
    v24 = &v6[v26];
    return sub_1D7AF4458(v24, v23);
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {

      sub_1D7AD9820(0, &qword_1EE0BB110, sub_1D7998DF0);
      v27 = sub_1D7998DF0;
      v28 = &v6[*(v29 + 48)];
      goto LABEL_22;
    }

    v23 = type metadata accessor for LinkAction;
    v24 = v6;
    return sub_1D7AF4458(v24, v23);
  }

LABEL_19:
  v27 = type metadata accessor for LinkAction;
  v28 = v6;
LABEL_22:
  sub_1D7AF4458(v28, v27);
  __swift_project_boxed_opaque_existential_1(v1 + 13, v1[16]);
  sub_1D798F168(0, &qword_1EE0C0040);
  result = sub_1D7D28D2C();
  if (v32)
  {
    sub_1D799D69C(&v31, v33);
    __swift_project_boxed_opaque_existential_1(v33, v34);
    sub_1D7D2A67C();
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  __break(1u);
  return result;
}

void sub_1D7AF4310(uint64_t a1)
{
  v2 = v1;
  v4 = v2[11];
  v5 = v2[12];
  __swift_project_boxed_opaque_existential_1(v2 + 8, v4);
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v6 = (*(v5 + 16))(a1, v9, v4, v5);
  sub_1D7AF4510(v9, &unk_1EC9E4530, &qword_1EC9E6370);
  if (v6)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      [Strong presentViewController:v6 animated:1 completion:0];
    }
  }
}

uint64_t sub_1D7AF43E4()
{
  MEMORY[0x1DA7103D0](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7AF4458(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7AF44B8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D798F168(255, a3);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7AF4510(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_1D7AF44B8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *sub_1D7AF456C(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC12NewsArticles31PDFReplicaBarVisibilityAnimator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC12NewsArticles31PDFReplicaBarVisibilityAnimator_tapGestureRecognizer;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69DD060]) init];
  type metadata accessor for PDFReplicaBarVisibilityCoordinator();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v1[OBJC_IVAR____TtC12NewsArticles31PDFReplicaBarVisibilityAnimator_barHider] = v5;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v11, sel_init);
  v7 = OBJC_IVAR____TtC12NewsArticles31PDFReplicaBarVisibilityAnimator_tapGestureRecognizer;
  v8 = *&v6[OBJC_IVAR____TtC12NewsArticles31PDFReplicaBarVisibilityAnimator_tapGestureRecognizer];
  v9 = v6;
  [v8 setDelegate_];
  [*&v6[v7] addTarget:v9 action:sel_handleTapGesture];

  return v9;
}

void sub_1D7AF4688(char a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_1D7D30D8C();

    v7 = [v6 _preferredNavigationBarVisibility];
    v8 = v7 == 2;
  }

  else
  {
    v8 = 0;
  }

  sub_1D7D0C06C(a1 & 1, a2 & 1);
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = sub_1D7D30D8C();

    v12 = [v11 _preferredNavigationBarVisibility];
    if ((v8 ^ (v12 != 2)))
    {
      return;
    }
  }

  else if (!v8)
  {
    return;
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      v17 = sub_1D7D30D8C();

      [v17 _preferredNavigationBarVisibility];
    }

    [v14 setNeedsUpdateOfHomeIndicatorAutoHidden];

    swift_unknownObjectRelease();
  }
}

void sub_1D7AF48A0()
{
  v0 = sub_1D7D29A8C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_1D7D30D8C();

    v8 = [v7 _preferredNavigationBarVisibility];
    v9 = v8 != 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10 || (v11 = OBJC_IVAR____TtC12NewsArticles30PDFReplicaViewerViewController_paywall, v12 = v10, swift_beginAccess(), (*(v1 + 16))(v4, v12 + v11, v0), LOBYTE(v11) = sub_1D7D29A7C(), swift_unknownObjectRelease(), (*(v1 + 8))(v4, v0), (v11 & 1) == 0))
  {
    sub_1D7AF4688(v9, 1);
  }
}

uint64_t sub_1D7AF4B34@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D7D2B7FC();
  v3 = sub_1D7D2B7DC();
  v4 = MEMORY[0x1E69D8270];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = v3;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  sub_1D7D2811C();

  v7 = sub_1D7D303CC();
  v9 = v8;

  a1[5] = v7;
  a1[6] = v9;
  v10 = *MEMORY[0x1E69D8820];
  v11 = sub_1D7D2C83C();
  v12 = *(*(v11 - 8) + 104);

  return v12(a1, v10, v11);
}

unint64_t sub_1D7AF4CC8()
{
  type metadata accessor for FeatureState();
  result = sub_1D7D3130C();
  if (v1 <= 0x3F)
  {
    result = sub_1D7D3130C();
    if (v2 <= 0x3F)
    {
      result = sub_1D79E6E78();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D7AF4D7C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = v6 - 1;
  v8 = v5 - 1;
  if (!v5)
  {
    v8 = 0;
  }

  if (v8 <= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64);
  v12 = v11 + 8;
  if (v5)
  {
    v12 = v11 + 7;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v4 + 80);
  v14 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v13 + 184;
  if (v10 < a2)
  {
    v15 = ((v12 + (v14 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v16 = a2 - v10;
    v17 = v15 & 0xFFFFFFF8;
    if ((v15 & 0xFFFFFFF8) != 0)
    {
      v18 = 2;
    }

    else
    {
      v18 = v16 + 1;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = *(a1 + v15);
        if (v21)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v21 = *(a1 + v15);
        if (v21)
        {
          goto LABEL_30;
        }
      }
    }

    else if (v20)
    {
      v21 = *(a1 + v15);
      if (v21)
      {
LABEL_30:
        v22 = v21 - 1;
        if (v17)
        {
          v22 = 0;
          LODWORD(v17) = *a1;
        }

        return v10 + (v17 | v22) + 1;
      }
    }
  }

  if (v7 == v10)
  {
    if (v5 < 0x7FFFFFFF)
    {
      v24 = *(((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 48);
      if (v24 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      v25 = v24 + 1;
      goto LABEL_46;
    }

LABEL_45:
    v25 = (*(v4 + 48))();
LABEL_46:
    if (v25 >= 2)
    {
      return v25 - 1;
    }

    else
    {
      return 0;
    }
  }

  v26 = (a1 + v14) & ~v13;
  if (v8 == v10)
  {
    if (v5 >= 2)
    {
      goto LABEL_45;
    }

    return 0;
  }

  v27 = *((v12 + v26) & 0xFFFFFFFFFFFFFFF8);
  if (v27 >= 0xFFFFFFFF)
  {
    LODWORD(v27) = -1;
  }

  return (v27 + 1);
}

unsigned int *sub_1D7AF4F68(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = v8 - 1;
  v10 = v7 - 1;
  if (!v7)
  {
    v10 = 0;
  }

  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(*(*(a4 + 16) - 8) + 64);
  v14 = v13 + 7;
  v15 = *(v5 + 80);
  v16 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + v15 + 184;
  if (!v7)
  {
    v14 = v13 + 8;
  }

  v17 = ((v14 + (v16 & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v14 + (v16 & ~v15)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v18 = a3 - v12 + 1;
  }

  else
  {
    v18 = 2;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v12 < a3)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (a2 > v12)
  {
    if (((v14 + (v16 & ~v15)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a2 - v12;
    }

    else
    {
      v22 = 1;
    }

    if (((v14 + (v16 & ~v15)) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v23 = ~v12 + a2;
      v24 = result;
      bzero(result, ((v14 + (v16 & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v24;
      *v24 = v23;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        *(result + v17) = v22;
      }

      else
      {
        *(result + v17) = v22;
      }
    }

    else if (v21)
    {
      *(result + v17) = v22;
    }

    return result;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *(result + v17) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_46;
    }

    *(result + v17) = 0;
  }

  else if (v21)
  {
    *(result + v17) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_46;
  }

  if (!a2)
  {
    return result;
  }

LABEL_46:
  if (v9 == v12)
  {
    if (v7 < 0x7FFFFFFF)
    {
      v26 = (result + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (((a2 + 1) & 0x80000000) != 0)
      {
        *(v26 + 168) = 0u;
        *(v26 + 152) = 0u;
        *(v26 + 136) = 0u;
        *(v26 + 120) = 0u;
        *(v26 + 104) = 0u;
        *(v26 + 88) = 0u;
        *(v26 + 72) = 0u;
        *(v26 + 56) = 0u;
        *(v26 + 40) = 0u;
        *(v26 + 24) = 0u;
        *(v26 + 8) = 0u;
        *v26 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *(v26 + 48) = a2;
      }

      return result;
    }

    v25 = *(v6 + 56);
  }

  else
  {
    result = ((result + v16) & ~v15);
    if (v10 != v12)
    {
      v27 = ((result + v14) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v27 = a2 & 0x7FFFFFFF;
        v27[1] = 0;
      }

      else
      {
        *v27 = a2 - 1;
      }

      return result;
    }

    v25 = *(v6 + 56);
  }

  return v25();
}

uint64_t sub_1D7AF5200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for FeatureState();
  v10 = sub_1D7D3130C();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for ArticleViewerFeatureAnimationContext();
  v12 = *(v11 + 28);
  v13 = sub_1D7D3130C();
  result = (*(*(v13 - 8) + 32))(a5 + v12, a2, v13);
  v15 = (a5 + *(v11 + 32));
  *v15 = a3;
  v15[1] = a4;
  return result;
}

uint64_t sub_1D7AF556C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12NewsArticles29SponsoredHeaderViewController_headerDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D7AF55D8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12NewsArticles29SponsoredHeaderViewController_headerDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D79D82E8;
}

void sub_1D7AF5678(CGFloat a1, double a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR____TtC12NewsArticles29SponsoredHeaderViewController_headerDelegate];
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong() || (v7 = *(v6 + 1), ObjectType = swift_getObjectType(), (*(v7 + 16))(v25, v2, &off_1F52A4390, ObjectType, v7), v9 = *v25, v10 = *&v25[1], swift_unknownObjectRelease(), (v26 & 1) != 0))
  {
    v11 = [v2 view];
    if (!v11)
    {
      goto LABEL_8;
    }

    v12 = v11;
    [v11 safeAreaInsets];
    v9 = v13;
    v10 = v14;
  }

  __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC12NewsArticles29SponsoredHeaderViewController_renderer], *&v3[OBJC_IVAR____TtC12NewsArticles29SponsoredHeaderViewController_renderer + 24]);
  sub_1D7A10A60(v3, a1, a2, v9, v10);
  v15 = [v3 view];
  if (v15)
  {
    v16 = v15;
    [v15 frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v27.origin.x = v18;
    v27.origin.y = v20;
    v27.size.width = v22;
    v27.size.height = v24;
    CGRectGetHeight(v27);
    return;
  }

  __break(1u);
LABEL_8:
  __break(1u);
}

uint64_t sub_1D7AF5818()
{
  v1 = v0;
  sub_1D7991488();
  v3 = v2;
  v28 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79913BC();
  v8 = v7;
  v27 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79911A0();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for EndOfRecipeFeedGroupConfig();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AF767C(v1, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v23 = v27;
      (*(v27 + 32))(v11, v21, v8);
      v24 = sub_1D7D2DEFC();
      (*(v23 + 8))(v11, v8);
    }

    else
    {
      v25 = v28;
      (*(v28 + 32))(v6, v21, v3);
      v24 = sub_1D7D2DEFC();
      (*(v25 + 8))(v6, v3);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
    v24 = sub_1D7D2DEFC();
    (*(v14 + 8))(v17, v13);
  }

  return v24;
}

uint64_t sub_1D7AF5BB8@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v30 = a1;
  sub_1D7991488();
  v4 = v3;
  v28 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79913BC();
  v9 = v8;
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79911A0();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for EndOfRecipeFeedGroupConfig();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AF767C(v2, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v24 = v27;
      (*(v27 + 32))(v12, v22, v9);
      v30(v9);
      return (*(v24 + 8))(v12, v9);
    }

    else
    {
      v26 = v28;
      (*(v28 + 32))(v7, v22, v4);
      v30(v4);
      return (*(v26 + 8))(v7, v4);
    }
  }

  else
  {
    (*(v15 + 32))(v18, v22, v14);
    v30(v14);
    return (*(v15 + 8))(v18, v14);
  }
}

uint64_t sub_1D7AF5EEC(uint64_t (*a1)(uint64_t))
{
  v31 = a1;
  v2 = v1;
  sub_1D7991488();
  v4 = v3;
  v30 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79913BC();
  v9 = v8;
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79911A0();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for EndOfRecipeFeedGroupConfig();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AF767C(v2, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v24 = v29;
      (*(v29 + 32))(v12, v22, v9);
      v25 = v31(v9);
      (*(v24 + 8))(v12, v9);
    }

    else
    {
      v26 = v30;
      (*(v30 + 32))(v7, v22, v4);
      v25 = v31(v4);
      (*(v26 + 8))(v7, v4);
    }
  }

  else
  {
    (*(v15 + 32))(v18, v22, v14);
    v25 = v31(v14);
    (*(v15 + 8))(v18, v14);
  }

  return v25;
}

uint64_t sub_1D7AF6298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D79952EC(&qword_1EC9E4610, type metadata accessor for EndOfRecipeFeedGroupConfig);

  return MEMORY[0x1EEE21730](a1, a2, a3, v6);
}

uint64_t sub_1D7AF643C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  sub_1D7991488();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v39 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79913BC();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v42 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79911A0();
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AF7514();
  v14 = v13;
  v41 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for EndOfRecipeFeedGroupConfig();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 3));
  sub_1D7AF7570();
  v22 = v44;
  sub_1D7D31AFC();
  if (!v22)
  {
    v32 = v21;
    v24 = v41;
    v23 = v42;
    v44 = v18;
    sub_1D7AF75C4();
    sub_1D7D317DC();
    v25 = v14;
    v26 = v17;
    if (v43[0])
    {
      if (v43[0] == 1)
      {
        sub_1D799CC84(a1, v43);
        type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupConfigData();
        sub_1D79952EC(&qword_1EE0CFA28, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupConfigData);
        sub_1D79952EC(qword_1EE0CFA30, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupConfigData);
        v28 = v23;
        sub_1D7D2DF3C();
        v29 = v40;
        (*(v24 + 8))(v26, v25);
        v30 = v32;
        (*(v35 + 32))(v32, v28, v36);
      }

      else
      {
        sub_1D799CC84(a1, v43);
        type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupConfigData();
        sub_1D79952EC(&qword_1EE0CBFA0, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupConfigData);
        v42 = a1;
        sub_1D79952EC(qword_1EE0CBFA8, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupConfigData);
        v31 = v39;
        sub_1D7D2DF3C();
        v29 = v40;
        (*(v24 + 8))(v26, v25);
        v30 = v32;
        (*(v37 + 32))(v32, v31, v38);
        a1 = v42;
      }
    }

    else
    {
      sub_1D799CC84(a1, v43);
      type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupConfigData();
      sub_1D79952EC(&qword_1EE0CFB68, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupConfigData);
      sub_1D79952EC(qword_1EE0CFB70, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupConfigData);
      sub_1D7D2DF3C();
      (*(v24 + 8))(v17, v25);
      v30 = v32;
      (*(v33 + 32))(v32, v12, v34);
      v29 = v40;
    }

    swift_storeEnumTagMultiPayload();
    sub_1D7AF7618(v30, v29);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D7AF6A5C(uint64_t a1)
{
  v28 = a1;
  sub_1D7991488();
  v2 = v1;
  v26 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79913BC();
  v7 = v6;
  v25 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79911A0();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for EndOfRecipeFeedGroupConfig();
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AF767C(v27, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v22 = v25;
      (*(v25 + 32))(v10, v20, v7);
      sub_1D7D2DF4C();
      return (*(v22 + 8))(v10, v7);
    }

    else
    {
      v24 = v26;
      (*(v26 + 32))(v5, v20, v2);
      sub_1D7D2DF4C();
      return (*(v24 + 8))(v5, v2);
    }
  }

  else
  {
    (*(v13 + 32))(v16, v20, v12);
    sub_1D7D2DF4C();
    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_1D7AF6D84()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();
  return sub_1D7D31ABC();
}

uint64_t sub_1D7AF6DE0()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();
  return sub_1D7D31ABC();
}

uint64_t sub_1D7AF6E28@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D7D316EC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D7AF6EA0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D7D316EC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D7AF6EF8(uint64_t a1)
{
  v2 = sub_1D7AF7570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7AF6F34(uint64_t a1)
{
  v2 = sub_1D7AF7570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7AF6F70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7AF78B4();
  *a1 = result;
  return result;
}

uint64_t sub_1D7AF7080@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v44 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroupConfigData();
  MEMORY[0x1EEE9AC00](v44, v1);
  v43 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7991488();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroupConfigData();
  MEMORY[0x1EEE9AC00](v40, v7);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79913BC();
  v10 = v9;
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroupConfigData();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79911A0();
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for EndOfRecipeFeedGroupConfig();
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AF767C(v45, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v29 = v38;
      (*(v38 + 32))(v13, v27, v10);
      v17 = v39;
      sub_1D7D2DF2C();
      (*(v29 + 8))(v13, v10);
      v14 = v40;
    }

    else
    {
      v31 = v41;
      v30 = v42;
      (*(v41 + 32))(v6, v27, v42);
      v17 = v43;
      sub_1D7D2DF2C();
      (*(v31 + 8))(v6, v30);
      v14 = v44;
    }
  }

  else
  {
    (*(v20 + 32))(v23, v27, v19);
    sub_1D7D2DF2C();
    (*(v20 + 8))(v23, v19);
  }

  v32 = v46;
  v33 = *(v14 + 20);
  v34 = sub_1D7D2F06C();
  v35 = *(v34 - 8);
  (*(v35 + 32))(v32, &v17[v33], v34);
  return (*(v35 + 56))(v32, 0, 1, v34);
}

void sub_1D7AF7514()
{
  if (!qword_1EC9E45F8)
  {
    sub_1D7AF7570();
    v0 = sub_1D7D3180C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E45F8);
    }
  }
}

unint64_t sub_1D7AF7570()
{
  result = qword_1EC9E4600;
  if (!qword_1EC9E4600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4600);
  }

  return result;
}

unint64_t sub_1D7AF75C4()
{
  result = qword_1EC9E4608;
  if (!qword_1EC9E4608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4608);
  }

  return result;
}

uint64_t sub_1D7AF7618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfRecipeFeedGroupConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7AF767C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfRecipeFeedGroupConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D7AF7704()
{
  result = qword_1EC9E4618;
  if (!qword_1EC9E4618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4618);
  }

  return result;
}

unint64_t sub_1D7AF775C()
{
  result = qword_1EC9E4620;
  if (!qword_1EC9E4620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4620);
  }

  return result;
}

unint64_t sub_1D7AF77B4()
{
  result = qword_1EC9E4628;
  if (!qword_1EC9E4628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4628);
  }

  return result;
}

unint64_t sub_1D7AF780C()
{
  result = qword_1EC9E4630;
  if (!qword_1EC9E4630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4630);
  }

  return result;
}

unint64_t sub_1D7AF7860()
{
  result = qword_1EC9E4638;
  if (!qword_1EC9E4638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4638);
  }

  return result;
}

uint64_t sub_1D7AF78B4()
{
  v0 = sub_1D7D316EC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t AnalyticsMediaPlayMethod.hashValue.getter()
{
  v1 = *v0;
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](v1);
  return sub_1D7D31ABC();
}

unint64_t sub_1D7AF7A68()
{
  result = qword_1EC9E4640;
  if (!qword_1EC9E4640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4640);
  }

  return result;
}

uint64_t sub_1D7AF7ACC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7AF7B14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for TableOfContentsModel()
{
  result = qword_1EC9E4648;
  if (!qword_1EC9E4648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7AF7BB0()
{
  result = type metadata accessor for TableOfContentsHeaderViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D7AF7C18(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](v2, a2);
  v4 = (v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7AF7FFC(v5, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = v4[5];
    v11[4] = v4[4];
    v11[5] = v6;
    v11[6] = v4[6];
    v7 = v4[1];
    v11[0] = *v4;
    v11[1] = v7;
    v8 = v4[3];
    v11[2] = v4[2];
    v11[3] = v8;
    v9 = *&v11[0];

    sub_1D7A2B8A4(v11);
  }

  else
  {
    sub_1D7AF84C4(v4, type metadata accessor for TableOfContentsModel);
    return 0x726564616568;
  }

  return v9;
}

uint64_t sub_1D7AF7D14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7AF7E84(&qword_1EC9E4670);

  return MEMORY[0x1EEE45140](a1, a2, v4);
}

uint64_t sub_1D7AF7E84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TableOfContentsModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7AF7F08@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t sub_1D7AF7F78@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D7D2C5EC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1D7AF7FFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TableOfContentsModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7AF8060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TableOfContentsHeaderViewModel();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v48 - v10);
  sub_1D7AF8460();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = (&v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (v15 + *(v16 + 56));
  sub_1D7AF7FFC(a1, v15);
  sub_1D7AF7FFC(a2, v17);
  type metadata accessor for TableOfContentsModel();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = v15[5];
    v70[4] = v15[4];
    v70[5] = v18;
    v70[6] = v15[6];
    v19 = v15[1];
    v70[0] = *v15;
    v70[1] = v19;
    v20 = v15[3];
    v70[2] = v15[2];
    v70[3] = v20;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = v17[3];
      v22 = v17[5];
      v63 = v17[4];
      v64 = v22;
      v65 = v17[6];
      v23 = v17[1];
      v60[0] = *v17;
      v60[1] = v23;
      v24 = v17[3];
      v61 = v17[2];
      v62 = v24;
      v25 = v15[3];
      v56 = v15[2];
      v57 = v25;
      v58 = v15[4];
      v26 = v15[1];
      v54 = *v15;
      v55 = v26;
      v50 = v61;
      v51 = v21;
      v52 = v63;
      v59 = *(v15 + 10);
      v53 = *(v17 + 10);
      v48 = v60[0];
      v49 = v23;
      sub_1D79ECF40(v70, v68);
      sub_1D79ECF40(v60, v68);
      v27 = _s12NewsArticles14PDFReplicaPageV2eeoiySbAC_ACtFZ_0(&v54, &v48);
      sub_1D7A2B8A4(v60);
      sub_1D7A2B8A4(v70);
      v66[2] = v50;
      v66[3] = v51;
      v66[4] = v52;
      v67 = v53;
      v66[0] = v48;
      v66[1] = v49;
      sub_1D7A2BEAC(v66);
      v68[2] = v56;
      v68[3] = v57;
      v68[4] = v58;
      v69 = v59;
      v68[0] = v54;
      v68[1] = v55;
      sub_1D7A2BEAC(v68);
      return v27 & 1;
    }

    sub_1D7A2B8A4(v70);
    v28 = type metadata accessor for TableOfContentsModel;
    v29 = v17;
LABEL_7:
    sub_1D7AF84C4(v29, v28);
    v27 = 0;
    return v27 & 1;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7AF84C4(v17, type metadata accessor for TableOfContentsModel);
    v28 = type metadata accessor for TableOfContentsHeaderViewModel;
    v29 = v15;
    goto LABEL_7;
  }

  sub_1D7AF8524(v15, v11);
  sub_1D7AF8524(v17, v7);
  v30 = *v11 == *v7 && v11[1] == v7[1];
  if (v30 || (sub_1D7D3197C()) && (v11[2] == v7[2] ? (v31 = v11[3] == v7[3]) : (v31 = 0), (v31 || (sub_1D7D3197C()) && ((v32 = v4[7], v33 = *(v11 + v32), v34 = *(v11 + v32 + 8), v35 = (v7 + v32), v33 == *v35) ? (v36 = v34 == v35[1]) : (v36 = 0), (v36 || (sub_1D7D3197C()) && ((v37 = v4[8], v38 = *(v11 + v37), v39 = *(v11 + v37 + 8), v40 = (v7 + v37), v38 == *v40) ? (v41 = v39 == v40[1]) : (v41 = 0), (v41 || (sub_1D7D3197C()) && ((v42 = v4[9], v43 = *(v11 + v42), v44 = *(v11 + v42 + 8), v45 = (v7 + v42), v43 == *v45) ? (v46 = v44 == v45[1]) : (v46 = 0), v46 || (sub_1D7D3197C())))))
  {
    v27 = *(v11 + v4[10]) ^ *(v7 + v4[10]) ^ 1;
  }

  else
  {
    v27 = 0;
  }

  sub_1D7AF84C4(v7, type metadata accessor for TableOfContentsHeaderViewModel);
  sub_1D7AF84C4(v11, type metadata accessor for TableOfContentsHeaderViewModel);
  return v27 & 1;
}

void sub_1D7AF8460()
{
  if (!qword_1EC9E4680)
  {
    type metadata accessor for TableOfContentsModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E4680);
    }
  }
}

uint64_t sub_1D7AF84C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7AF8524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TableOfContentsHeaderViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1D7AF86C0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1D7D2B49C();
  v30 = *(v3 - 8);
  v31 = v3;
  v5 = MEMORY[0x1EEE9AC00](v3, v4);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36.receiver = v1;
  v36.super_class = ObjectType;
  objc_msgSendSuper2(&v36, sel_viewDidLoad, v5);
  v7 = *&v1[OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_increaseButton];
  if (qword_1EC9DFF20 != -1)
  {
    swift_once();
  }

  v8 = [qword_1EC9E91C0 imageWithRenderingMode_];
  [v7 setImage:v8 forState:0];

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = [v10 bundleForClass_];
  sub_1D7D2811C();

  v12 = sub_1D7D3031C();

  [v7 setAccessibilityLabel_];

  v13 = *&v1[OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_decreaseButton];
  if (qword_1EC9DFF28 != -1)
  {
    swift_once();
  }

  v14 = [qword_1EC9E91C8 imageWithRenderingMode_];
  [v13 setImage:v14 forState:0];

  v15 = [v10 bundleForClass_];
  sub_1D7D2811C();

  v16 = sub_1D7D3031C();

  [v13 setAccessibilityLabel_];

  v17 = *&v1[OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_stackView];
  [v17 setDistribution_];
  [v17 setAlignment_];
  [v17 addArrangedSubview_];
  [v17 addArrangedSubview_];
  result = [v1 view];
  if (result)
  {
    v19 = result;
    [result addSubview_];

    result = [v1 view];
    if (result)
    {
      v20 = result;
      [result addSubview_];

      v21 = [v1 traitCollection];
      sub_1D7AF9284();

      (*(v30 + 104))(v32, *MEMORY[0x1E69D7FD8], v31);
      v22 = *&v1[OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_tracker];
      v34 = sub_1D7D28A3C();
      v35 = sub_1D7A108E4();
      v33 = v22;
      v37 = 0u;
      v38 = 0u;
      v39 = 1;
      sub_1D7D2B10C();
      swift_allocObject();

      v23 = sub_1D7D2B0EC();
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      *(v25 + 24) = v23;

      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v27 = swift_allocObject();
      *(v27 + 16) = v26;
      *(v27 + 24) = v23;

      swift_getObjectType();
      sub_1D7D2C2EC();
      v28 = sub_1D7D2A7CC();

      [v7 setEnabled_];
      sub_1D7D2C2FC();
      v29 = sub_1D7D2A7CC();

      [v13 setEnabled_];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D7AF8D1C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_unknownObjectRetain();

    swift_getObjectType();
    a3();
    sub_1D7D2A7DC();

    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_increaseButton);
    v8 = v6;
    swift_getObjectType();
    sub_1D7D2C2EC();
    v9 = sub_1D7D2A7CC();

    [v7 setEnabled_];
    v10 = *&v8[OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_decreaseButton];
    swift_getObjectType();
    sub_1D7D2C2FC();
    v11 = sub_1D7D2A7CC();

    [v10 setEnabled_];
  }
}

id sub_1D7AF8FA8()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewDidLayoutSubviews);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [result safeAreaLayoutGuide];

    [v3 layoutFrame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [*&v0[OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_stackView] setFrame_];
    return [*&v0[OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_divider] setFrame_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7AF911C()
{
  v1 = OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_divider;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v2 = OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_stackView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCF90]) initWithFrame_];
  v3 = OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_increaseButton;
  v4 = objc_opt_self();
  *(v0 + v3) = [v4 buttonWithType_];
  v5 = OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_increaseAction;
  sub_1D7AF946C();
  v7 = v6;
  *(v0 + v5) = [objc_allocWithZone(v6) init];
  v8 = OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_decreaseButton;
  *(v0 + v8) = [v4 buttonWithType_];
  v9 = OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_decreaseAction;
  *(v0 + v9) = [objc_allocWithZone(v7) init];
  sub_1D7D3160C();
  __break(1u);
}

void sub_1D7AF9284()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
    {
      v3 = [objc_opt_self() systemBackgroundColor];
      [v2 setBackgroundColor_];
    }

    sub_1D7A41170(*&v0[OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_increaseButton]);
    sub_1D7A41170(*&v0[OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_decreaseButton]);
    v4 = *&v0[OBJC_IVAR____TtC12NewsArticles29TextSizeControlViewController_divider];
    v5 = objc_opt_self();
    v6 = [v5 systemGray3Color];
    [v4 setBackgroundColor_];

    v7 = [v0 popoverPresentationController];
    if (v7)
    {
      v9 = v7;
      if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
      {
        v8 = [v5 systemBackgroundColor];
        [v9 setBackgroundColor_];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1D7AF946C()
{
  if (!qword_1EE0BFC80)
  {
    v0 = sub_1D7D2C20C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BFC80);
    }
  }
}

uint64_t sub_1D7AF94C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1E69E85F0];
  sub_1D798EA94(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v26 - v12;
  sub_1D7B09054(a3, v26 - v12, &qword_1EE0BF1B0, v9);
  v14 = sub_1D7D3087C();
  v15 = *(v14 - 8);
  LODWORD(v9) = (*(v15 + 48))(v13, 1, v14);

  if (v9 == 1)
  {
    sub_1D7B090D4(v13, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1D7D3086C();
    (*(v15 + 8))(v13, v14);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1D7D307DC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1D7D303BC() + 32;
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

      sub_1D7B090D4(a3, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0]);

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

  sub_1D7B090D4(a3, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0]);
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

uint64_t sub_1D7AF9808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1E69E85F0];
  sub_1D798EA94(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v26 - v12;
  sub_1D7B09054(a3, v26 - v12, &qword_1EE0BF1B0, v9);
  v14 = sub_1D7D3087C();
  v15 = *(v14 - 8);
  LODWORD(v9) = (*(v15 + 48))(v13, 1, v14);

  if (v9 == 1)
  {
    sub_1D7B090D4(v13, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1D7D3086C();
    (*(v15 + 8))(v13, v14);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1D7D307DC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v26[0] = a3;
      v20 = sub_1D7D303BC() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;
      sub_1D7B08F68(0, &qword_1EC9E4A30, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);

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

      sub_1D7B090D4(v26[0], &qword_1EE0BF1B0, MEMORY[0x1E69E85F0]);

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

  sub_1D7B090D4(a3, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0]);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_1D7B08F68(0, &qword_1EC9E4A30, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1D7AF9BAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1D7A5BFBC(0, v1, 0);
    v2 = v10;
    sub_1D7B08F68(0, &qword_1EE0CBB10, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1D7A5BFBC((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D7AF9CD4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
    sub_1D7D3156C();
    v4 = (a1 + 32);
    sub_1D7B08E0C();
    sub_1D7B0820C();
    do
    {
      v5 = *v4++;
      v6 = v5;
      swift_dynamicCast();
      sub_1D7D3153C();
      sub_1D7D3157C();
      sub_1D7D3158C();
      sub_1D7D3154C();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t ArticleViewController.pageDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_pageDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ArticleViewController.pageDelegate.modify(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_pageDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D7AF9F74;
}

uint64_t ArticleViewController.headline.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_headline;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1D7AFA088()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_1EE0CAF08 != -1)
    {
      swift_once();
    }

    v2 = qword_1EE0CAF10;
    v3 = sub_1D7D30C6C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1D7987000, v2, v3, "PaywallPreparationEventManager - articleLoaded event has been triggered.", v4, 2u);
      MEMORY[0x1DA7102E0](v4, -1, -1);
    }

    swift_unknownObjectRetain();
    sub_1D7A337A0();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D7AFA19C()
{
  v1 = [*&v0[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_keyCommandManager] keyCommandsWithSelector_];
  if (!v1)
  {
    goto LABEL_13;
  }

  v2 = v1;
  sub_1D7992EFC(0, &unk_1EE0BF118);
  v3 = sub_1D7D3063C();

  if (v3 >> 62)
  {
    v4 = sub_1D7D3167C();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_11:

    v0[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_spaceKeyCommandsRegistered] = 1;
    return;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA70EF00](i, v3);
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      [v0 addKeyCommand_];
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

id ArticleViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D7D3031C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_1D7AFA658()
{
  swift_getObjectType();

  return sub_1D7D2872C();
}

uint64_t sub_1D7AFA6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE45768](a1, ObjectType, a5);
}

uint64_t sub_1D7AFA700()
{
  swift_getObjectType();

  return sub_1D7D2873C();
}

Swift::Void __swiftcall ArticleViewController.loadView()()
{
  type metadata accessor for ArticleView();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setView_];
}

Swift::Void __swiftcall ArticleViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for ArticleModel();
  v5 = MEMORY[0x1EEE9AC00](v3, v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67.receiver = v1;
  v67.super_class = ObjectType;
  objc_msgSendSuper2(&v67, sel_viewDidLoad, v5);
  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_26;
  }

  v9 = v8;
  v10 = objc_opt_self();
  v11 = [v10 systemBackgroundColor];
  [v9 setBackgroundColor_];

  v12 = [v1 view];
  if (!v12)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;

  v18 = &v1[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_destinationViewSize];
  *v18 = v15;
  *(v18 + 1) = v17;
  v19 = *&v1[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_mastheadViewController];
  if (v19)
  {
    v20 = v19;
    [v1 addChildViewController_];
    v21 = [v1 view];
    if (!v21)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v22 = v21;
    v23 = [v20 view];
    if (!v23)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v24 = v23;
    [v22 addSubview_];

    [v20 didMoveToParentViewController_];
    v25 = sub_1D7D2B17C();
    v26 = [v25 view];

    if (!v26)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v27 = [v10 clearColor];
    [v26 setBackgroundColor_];

    v28 = [v20 view];
    if (!v28)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v29 = [v10 systemBackgroundColor];
    [v28 setBackgroundColor_];

    sub_1D7B07BAC(&v1[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_model], v7, type metadata accessor for ArticleModel);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_1D7994174();
      sub_1D7B09144(&v7[*(v30 + 48)], type metadata accessor for ArticleNavigationAction);
    }

    else
    {
      v36 = *(v7 + 2);
      sub_1D7996048();
      v38 = *(v37 + 48);

      swift_unknownObjectRelease();

      sub_1D7B09144(&v7[v38], type metadata accessor for ArticleNavigationAction);
      sub_1D7AFB030(v36);
      swift_unknownObjectRelease();
    }

    v39 = sub_1D7D2B17C();
    sub_1D7D2A57C();

    goto LABEL_15;
  }

  v31 = *&v1[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController];
  [v1 addChildViewController_];
  v32 = [v1 view];
  if (!v32)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v33 = v32;
  v34 = [v31 view];
  if (v34)
  {
    v35 = v34;
    [v33 addSubview_];

    [v31 didMoveToParentViewController_];
    sub_1D7D2A57C();
LABEL_15:
    LOBYTE(aBlock[0]) = 0;
    sub_1D7D28C6C();
    v40 = *&v1[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_urlHandler];
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    *(v42 + 16) = sub_1D7AFBAC4;
    *(v42 + 24) = v41;
    v43 = OBJC_IVAR____TtC12NewsArticles10URLHandler_closures;
    swift_beginAccess();
    v44 = *(v40 + v43);
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v40 + v43) = v44;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v44 = sub_1D79E4CDC(0, v44[2] + 1, 1, v44);
      *(v40 + v43) = v44;
    }

    v47 = v44[2];
    v46 = v44[3];
    if (v47 >= v46 >> 1)
    {
      v44 = sub_1D79E4CDC((v46 > 1), v47 + 1, 1, v44);
    }

    v44[2] = v47 + 1;
    v48 = &v44[2 * v47];
    v48[4] = sub_1D7AAA024;
    v48[5] = v42;
    *(v40 + v43) = v44;
    swift_endAccess();

    v49 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v50 = swift_allocObject();
    *(v50 + 16) = sub_1D7B06D1C;
    *(v50 + 24) = v49;
    v51 = OBJC_IVAR____TtC12NewsArticles10URLHandler_newWindowClosures;
    swift_beginAccess();
    v52 = *(v40 + v51);
    swift_retain_n();
    v53 = swift_isUniquelyReferenced_nonNull_native();
    *(v40 + v51) = v52;
    if ((v53 & 1) == 0)
    {
      v52 = sub_1D79E4CDC(0, v52[2] + 1, 1, v52);
      *(v40 + v51) = v52;
    }

    v55 = v52[2];
    v54 = v52[3];
    if (v55 >= v54 >> 1)
    {
      v52 = sub_1D79E4CDC((v54 > 1), v55 + 1, 1, v52);
    }

    v52[2] = v55 + 1;
    v56 = &v52[2 * v55];
    v56[4] = sub_1D7B09300;
    v56[5] = v50;
    *(v40 + v51) = v52;
    swift_endAccess();

    v57 = [v1 traitCollection];
    v58 = [v1 view];
    if (v58)
    {
      v59 = v58;

      v60 = [v10 systemBackgroundColor];
      [v59 setBackgroundColor_];

      v61 = [*&v1[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController] articleViewStyler];
      v62 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1D7B06D24;
      aBlock[5] = v62;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D7A2D6E0;
      aBlock[3] = &block_descriptor_17;
      v63 = _Block_copy(aBlock);

      v64 = [v61 observe_];
      _Block_release(v63);
      swift_unknownObjectRelease();

      v65 = [objc_opt_self() defaultCenter];
      [v65 addObserver:v1 selector:sel_resetZoom name:*MEMORY[0x1E69DDC48] object:0];

      return;
    }

    goto LABEL_27;
  }

LABEL_33:
  __break(1u);
}

void sub_1D7AFB030(void *a1)
{
  v3 = MEMORY[0x1E69E6720];
  sub_1D798EA94(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v89 = &v78[-v6];
  sub_1D7B08FC0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v92 = &v78[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D798EA94(0, &qword_1EE0BF6D0, MEMORY[0x1E69B61E8], v3);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v78[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15, v16);
  v90 = &v78[-v17];
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v78[-v20];
  MEMORY[0x1EEE9AC00](v22, v23);
  v91 = &v78[-v24];
  v25 = sub_1D7D2F7AC();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v78[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = sub_1D7D2F2DC();
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v78[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v34, v35);
  v95 = &v78[-v37];
  v38 = *&v1[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_mastheadViewController];
  if (!v38)
  {
    return;
  }

  v93 = v36;
  v94 = v38;
  v39 = [a1 sourceChannel];
  if (v39)
  {
    v87 = v14;
    v40 = v39;
    (*(v26 + 104))(v29, *MEMORY[0x1E69B63E0], v25);
    swift_unknownObjectRetain();
    v41 = v95;
    v88 = v40;
    sub_1D7D2F2CC();
    if (([a1 respondsToSelector_] & 1) != 0 && (objc_msgSend(a1, sel_role) & 0xFFFFFFFFFFFFFFFELL) == 2 || *&v1[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_presentationContext] == 1)
    {
      swift_unknownObjectRelease();

      (*(v93 + 8))(v41, v30);
      return;
    }

    v85 = a1;
    v86 = v1;
    v43 = v91;
    v84 = *&v1[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_tagMastheadProvider];
    sub_1D7D2FA7C();
    v44 = v41;
    v45 = v93;
    v46 = *(v93 + 16);
    v47 = v30;
    v83 = v93 + 16;
    v81 = v46;
    v46(v21, v44, v30);
    v48 = *(v45 + 56);
    v82 = v45 + 56;
    v80 = v48;
    v48(v21, 0, 1, v30);
    v49 = *(v8 + 48);
    v50 = MEMORY[0x1E69B61E8];
    v51 = v92;
    sub_1D7B09054(v43, v92, &qword_1EE0BF6D0, MEMORY[0x1E69B61E8]);
    sub_1D7B09054(v21, &v51[v49], &qword_1EE0BF6D0, v50);
    v52 = *(v45 + 48);
    if (v52(v51, 1, v47) == 1)
    {
      v53 = MEMORY[0x1E69B61E8];
      sub_1D7B090D4(v21, &qword_1EE0BF6D0, MEMORY[0x1E69B61E8]);
      sub_1D7B090D4(v43, &qword_1EE0BF6D0, v53);
      v54 = v52(&v51[v49], 1, v47);
      v55 = v47;
      v56 = v51;
      v57 = v87;
      if (v54 == 1)
      {
        sub_1D7B090D4(v56, &qword_1EE0BF6D0, MEMORY[0x1E69B61E8]);
        (*(v93 + 8))(v95, v47);
LABEL_23:
        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      v58 = v90;
      sub_1D7B09054(v51, v90, &qword_1EE0BF6D0, MEMORY[0x1E69B61E8]);
      v59 = v52(&v51[v49], 1, v47);
      v56 = v51;
      v57 = v87;
      if (v59 != 1)
      {
        v75 = v93;
        (*(v93 + 32))(v33, v56 + v49, v47);
        sub_1D7B092B4(&qword_1EE0BF6D8, MEMORY[0x1E69B61E8]);
        v79 = sub_1D7D3030C();
        v76 = *(v75 + 8);
        v76(v33, v47);
        v77 = MEMORY[0x1E69B61E8];
        sub_1D7B090D4(v21, &qword_1EE0BF6D0, MEMORY[0x1E69B61E8]);
        sub_1D7B090D4(v43, &qword_1EE0BF6D0, v77);
        v76(v90, v47);
        sub_1D7B090D4(v56, &qword_1EE0BF6D0, v77);
        v62 = v85;
        v55 = v47;
        if (v79)
        {
          v76(v95, v47);
          goto LABEL_23;
        }

        goto LABEL_16;
      }

      v60 = v58;
      v61 = MEMORY[0x1E69B61E8];
      sub_1D7B090D4(v21, &qword_1EE0BF6D0, MEMORY[0x1E69B61E8]);
      sub_1D7B090D4(v43, &qword_1EE0BF6D0, v61);
      (*(v93 + 8))(v60, v47);
      v55 = v47;
    }

    sub_1D7B09144(v56, sub_1D7B08FC0);
    v62 = v85;
LABEL_16:
    v63 = v95;
    v81(v57, v95, v55);
    v80(v57, 0, 1, v55);
    sub_1D7D2FA8C();
    sub_1D7D2B1AC();
    v64 = sub_1D7D2FA9C();
    v65 = sub_1D7D2C1CC();

    v66 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v67 = swift_allocObject();
    v68 = v88;
    *(v67 + 16) = v66;
    *(v67 + 24) = v68;
    swift_unknownObjectRetain();

    if (sub_1D7D2DB0C())
    {
      v69 = sub_1D7D3087C();
      v70 = v89;
      (*(*(v69 - 8) + 56))(v89, 1, 1, v69);
      sub_1D7D3084C();
      swift_unknownObjectRetain_n();
      v71 = v86;
      v72 = sub_1D7D3083C();
      v73 = swift_allocObject();
      v74 = MEMORY[0x1E69E85E0];
      v73[2] = v72;
      v73[3] = v74;
      v73[4] = v71;
      v73[5] = v62;
      sub_1D7AF94C0(0, 0, v70, &unk_1D7D4CA50, v73);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    (*(v93 + 8))(v63, v55);
    return;
  }

  v42 = v94;
}

void sub_1D7AFB9B0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_keyboardInputMonitor), *(Strong + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_keyboardInputMonitor + 24));
    sub_1D7D2B4DC();
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_eventHandler);
      v6 = v4;
      swift_unknownObjectRetain();

      v7 = v5[9];
      v8 = v5[10];
      __swift_project_boxed_opaque_existential_1(v5 + 6, v7);
      v9 = 0;
      (*(v8 + 16))(a1, &v9, v7, v8);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1D7AFBACC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_eventHandler);
    v4 = result;
    swift_unknownObjectRetain();

    v5 = v3[9];
    v6 = v3[10];
    __swift_project_boxed_opaque_existential_1(v3 + 6, v5);
    v7 = 1;
    (*(v6 + 16))(a1, &v7, v5, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D7AFBB8C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      v4 = [a1 mainBackgroundColor];
      v5 = [a1 topContentColor];
    }

    else
    {
      v4 = [objc_opt_self() whiteColor];
      v5 = 0;
    }

    v8 = v4;
    v9 = v5;
    v6 = v5;
    v7 = v4;
    sub_1D7D28EAC();
  }
}

Swift::Void __swiftcall ArticleViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewWillAppear_, a1);
  if (qword_1EE0CAF08 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE0CAF10;
  v4 = sub_1D7D30C6C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D7987000, v3, v4, "PaywallPreparationEventManager - Firing viewWillAppear event.", v5, 2u);
    MEMORY[0x1DA7102E0](v5, -1, -1);
  }

  sub_1D7D28C6C();
}

Swift::Void __swiftcall ArticleViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewDidAppear_, a1);
  v3 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_headline;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4 && ([v4 respondsToSelector_] & 1) != 0 && objc_msgSend(v4, sel_role) == 3)
  {
    v5 = [*&v1[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController] scrollView];
    if (v5)
    {
      v6 = v5;
      [v5 becomeFirstResponder];
    }
  }

  v7 = [v1 tabBarSplitViewFocusable];
  if (!v7)
  {
    goto LABEL_11;
  }

  [v7 currentSplitViewFocus];
  v8 = sub_1D7D2AE3C();
  if (v8 != sub_1D7D2AE3C())
  {
LABEL_10:
    swift_unknownObjectRelease();
LABEL_11:
    sub_1D7AFBFB0();
    sub_1D7AFC2DC();
    return;
  }

  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 window];

    [v11 makeKeyAndVisible];
    goto LABEL_10;
  }

  __break(1u);
}

void sub_1D7AFBFB0()
{
  sub_1D7D2C2EC();
  v0 = type metadata accessor for WeakZoomable();
  v1 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  v19.receiver = v1;
  v19.super_class = v0;
  v2 = objc_msgSendSuper2(&v19, sel_init);
  swift_unknownObjectWeakAssign();
  v17 = 0;
  v18 = v2;
  v15 = 0u;
  v16 = 0u;
  sub_1D7D2A4BC();

  sub_1D7B090D4(&v15, &qword_1EE0C0090, sub_1D7A3F968);

  sub_1D7D2C2FC();
  v3 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  v14.receiver = v3;
  v14.super_class = v0;
  v4 = objc_msgSendSuper2(&v14, sel_init);
  swift_unknownObjectWeakAssign();
  v17 = 0;
  v18 = v4;
  v15 = 0u;
  v16 = 0u;
  sub_1D7D2A4BC();

  sub_1D7B090D4(&v15, &qword_1EE0C0090, sub_1D7A3F968);

  sub_1D7D2C4CC();
  v5 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  v13.receiver = v5;
  v13.super_class = v0;
  v6 = objc_msgSendSuper2(&v13, sel_init);
  swift_unknownObjectWeakAssign();
  v17 = 0;
  v18 = v6;
  v15 = 0u;
  v16 = 0u;
  sub_1D7D2A4BC();

  sub_1D7B090D4(&v15, &qword_1EE0C0090, sub_1D7A3F968);

  sub_1D7D2C4DC();
  v7 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  v12.receiver = v7;
  v12.super_class = v0;
  v8 = objc_msgSendSuper2(&v12, sel_init);
  swift_unknownObjectWeakAssign();
  v17 = 0;
  v18 = v8;
  v15 = 0u;
  v16 = 0u;
  sub_1D7D2A4BC();

  sub_1D7B090D4(&v15, &qword_1EE0C0090, sub_1D7A3F968);

  sub_1D7D2C4EC();
  v9 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  v11.receiver = v9;
  v11.super_class = v0;
  v10 = objc_msgSendSuper2(&v11, sel_init);
  swift_unknownObjectWeakAssign();
  v17 = 0;
  v18 = v10;
  v15 = 0u;
  v16 = 0u;
  sub_1D7D2A4BC();

  sub_1D7B090D4(&v15, &qword_1EE0C0090, sub_1D7A3F968);
}

uint64_t sub_1D7AFC2DC()
{
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_featureAvailability), *(v0 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_featureAvailability + 24));
  result = sub_1D7D2F9AC();
  if (result)
  {
    if (qword_1EC9DFE70 != -1)
    {
      swift_once();
    }

    type metadata accessor for SearchableDelegate();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 24) = &protocol witness table for ArticleViewController;
    swift_unknownObjectWeakAssign();
    v9 = v2;
    v10 = &protocol witness table for SearchableDelegate;
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    sub_1D7D2A4BC();
    sub_1D7B090D4(&v6, &qword_1EE0C0090, sub_1D7A3F968);

    if (qword_1EC9DFE78 != -1)
    {
      swift_once();
    }

    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v3 + 24) = &protocol witness table for ArticleViewController;
    swift_unknownObjectWeakAssign();
    v9 = v3;
    v10 = &protocol witness table for SearchableDelegate;
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    sub_1D7D2A4BC();
    sub_1D7B090D4(&v6, &qword_1EE0C0090, sub_1D7A3F968);

    if (qword_1EC9DFE80 != -1)
    {
      swift_once();
    }

    v4 = swift_allocObject();
    *(v4 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v4 + 24) = &protocol witness table for ArticleViewController;
    swift_unknownObjectWeakAssign();
    v9 = v4;
    v10 = &protocol witness table for SearchableDelegate;
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    sub_1D7D2A4BC();
    sub_1D7B090D4(&v6, &qword_1EE0C0090, sub_1D7A3F968);

    if (qword_1EC9DFE88 != -1)
    {
      swift_once();
    }

    v5 = swift_allocObject();
    *(v5 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v5 + 24) = &protocol witness table for ArticleViewController;
    swift_unknownObjectWeakAssign();
    v9 = v5;
    v10 = &protocol witness table for SearchableDelegate;
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    sub_1D7D2A4BC();
    sub_1D7B090D4(&v6, &qword_1EE0C0090, sub_1D7A3F968);
  }

  return result;
}

Swift::Void __swiftcall ArticleViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewWillDisappear_, a1);
  sub_1D7D2A4EC();
}

Swift::Void __swiftcall ArticleViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, sel_viewDidDisappear_, a1);
  [*&v2[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController] resignFirstResponder];
  v12.receiver = v2;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, sel_resignFirstResponder);
  v5 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_didDisappearCompletions;
  swift_beginAccess();
  v6 = *&v2[v5];
  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = 0;
    v9 = v6 + 40;
    while (v8 < *(v6 + 16))
    {
      ++v8;
      v10 = *(v9 - 8);

      v10(v11);

      v9 += 16;
      if (v7 == v8)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    *&v2[v5] = MEMORY[0x1E69E7CC0];
  }
}

Swift::Bool __swiftcall ArticleViewController.resignFirstResponder()()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController] resignFirstResponder];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_resignFirstResponder);
}

Swift::Void __swiftcall ArticleViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v8.receiver = v2;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_traitCollectionDidChange_, isa);
  v4 = [v2 traitCollection];
  v5 = [v2 view];
  if (v5)
  {
    v6 = v5;

    v7 = [objc_opt_self() systemBackgroundColor];
    [v6 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ArticleViewController.viewWillLayoutSubviews()()
{
  v1 = v0;
  v58.receiver = v0;
  v58.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v58, sel_viewWillLayoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_hardPaywallViewController];
  if (!v2)
  {
    goto LABEL_9;
  }

  sub_1D7B092B4(&unk_1EE0C8070, type metadata accessor for ArticleViewController);
  v3 = v2;
  sub_1D7D2B9DC();
  v5 = v4;
  if (v0[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_parallaxX + 8])
  {
    v6 = v4;
  }

  else
  {
    v6 = *&v0[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_parallaxX];
  }

  sub_1D7D2FAAC();
  v7 = [v3 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = v7;
  v9 = [v1 view];
  if (!v9)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = v9;
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v59.origin.x = v12;
  v59.origin.y = v14;
  v59.size.width = v16;
  v59.size.height = v18;
  Width = CGRectGetWidth(v59);
  v20 = [v1 view];
  if (!v20)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v21 = v20;
  v22 = v6 - v5;
  [v20 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v60.origin.x = v24;
  v60.origin.y = v26;
  v60.size.width = v28;
  v60.size.height = v30;
  [v8 setFrame_];

LABEL_9:
  v31 = *&v1[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_mastheadViewController];
  if (v31)
  {
    v32 = v31;
    v33 = [v32 view];
    if (v33)
    {
      v34 = v33;
      v35 = [v1 view];
      if (v35)
      {
        v36 = v35;
        [v35 bounds];
        v38 = v37;
        v40 = v39;
        v42 = v41;
        v44 = v43;

        [v34 setFrame_];
        return;
      }

      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v45 = *&v1[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController];
  v46 = [v45 view];
  if (!v46)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v47 = v46;
  v48 = [v1 view];
  if (v48)
  {
    v49 = v48;
    [v48 bounds];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;

    [v47 setFrame_];
    [v1 additionalSafeAreaInsets];
    [v45 setAdditionalSafeAreaInsets_];
    return;
  }

LABEL_22:
  __break(1u);
}

Swift::Void __swiftcall ArticleViewController.viewDidLayoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLayoutSubviews);
  sub_1D7D2A55C();
}

Swift::Void __swiftcall ArticleViewController.viewSafeAreaInsetsDidChange()()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, sel_viewSafeAreaInsetsDidChange);
  sub_1D7B092B4(&unk_1EE0C8070, type metadata accessor for ArticleViewController);
  sub_1D7D2B9DC();
  v6 = &v0[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_lastSafeAreaInsets];
  if (v0[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_lastSafeAreaInsets + 32])
  {
    goto LABEL_10;
  }

  if (v6[1] == v3 && v6[3] == v5)
  {
    goto LABEL_10;
  }

  v8 = v5;
  v9 = v3;
  v10 = v4;
  v11 = v2;
  v12 = &v0[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_parallaxX];
  *v12 = 0;
  v12[8] = 1;
  v13 = [v0 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_12;
  }

  v14 = v13;
  sub_1D7D3109C();

  v15 = [v1 view];
  if (!v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = v15;
  [v15 setNeedsLayout];

  v17 = [v1 view];
  if (v17)
  {
    v18 = v17;
    [v17 layoutIfNeeded];

    v2 = v11;
    v4 = v10;
    v3 = v9;
    v5 = v8;
LABEL_10:
    *v6 = v2;
    v6[1] = v3;
    *(v6 + 2) = v4;
    v6[3] = v5;
    *(v6 + 32) = 0;
    return;
  }

LABEL_13:
  __break(1u);
}

id ArticleViewController.viewWillTransition(to:with:)(uint64_t a1, double a2, double a3)
{
  v9.receiver = v3;
  v9.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v9, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v8 = &v3[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_destinationViewSize];
  *v8 = a2;
  v8[1] = a3;
  return result;
}

Swift::Void __swiftcall ArticleViewController.handleKeyCommand(keyCommand:)(UIKeyCommand keyCommand)
{
  v3 = sub_1D7AFD344(keyCommand.super.super.super.isa);
  if (_s12NewsArticles21ArticleViewControllerC12isPreviewingSbyF_0())
  {
    if ((v3 & 1) == 0)
    {
      return;
    }
  }

  else if (!((*(v1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_hardPaywallViewController) == 0) | v3 & 1))
  {
    return;
  }

  v4 = *(v1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_keyCommandManager);

  [v4 handleKeyCommand_];
}

uint64_t sub_1D7AFD344(void *a1)
{
  v2 = [a1 input];
  if (!v2)
  {
    sub_1D7D3034C();
    goto LABEL_10;
  }

  v3 = v2;
  v4 = sub_1D7D3034C();
  v6 = v5;

  v7 = sub_1D7D3034C();
  if (!v6)
  {
LABEL_10:

    goto LABEL_11;
  }

  if (v4 == v7 && v6 == v8)
  {
    goto LABEL_15;
  }

  v10 = sub_1D7D3197C();

  if (v10)
  {
    goto LABEL_26;
  }

LABEL_11:
  v11 = [a1 input];
  if (!v11)
  {
    sub_1D7D3034C();
    goto LABEL_17;
  }

  v12 = v11;
  v13 = sub_1D7D3034C();
  v15 = v14;

  v16 = sub_1D7D3034C();
  if (!v15)
  {
LABEL_17:

    goto LABEL_18;
  }

  if (v13 == v16 && v15 == v17)
  {
LABEL_15:

LABEL_25:

    goto LABEL_26;
  }

  v31 = sub_1D7D3197C();

  if (v31)
  {
    goto LABEL_26;
  }

LABEL_18:
  v18 = [a1 input];
  if (!v18)
  {
    goto LABEL_22;
  }

  v19 = v18;
  v20 = sub_1D7D3034C();
  v22 = v21;

  if (v20 == 0xD000000000000010 && 0x80000001D7D72950 == v22)
  {
    goto LABEL_25;
  }

  v23 = sub_1D7D3197C();

  if ((v23 & 1) == 0)
  {
LABEL_22:
    v24 = [a1 input];
    if (v24)
    {
      v25 = v24;
      v26 = sub_1D7D3034C();
      v28 = v27;

      if (v26 == 0xD000000000000012 && 0x80000001D7D72930 == v28)
      {
        goto LABEL_25;
      }

      v32 = sub_1D7D3197C();

      if (v32)
      {
        goto LABEL_26;
      }
    }

    v33 = [a1 input];
    if (!v33)
    {
      v29 = 1;
      return v29 & 1;
    }

    v34 = v33;
    v35 = sub_1D7D3034C();
    v37 = v36;

    if (v35 != 32 || v37 != 0xE100000000000000)
    {
      v38 = sub_1D7D3197C();

      v29 = v38 ^ 1;
      return v29 & 1;
    }

    goto LABEL_25;
  }

LABEL_26:
  v29 = 0;
  return v29 & 1;
}

uint64_t ArticleViewController.articleHostViewController(_:didScrollTo:)(uint64_t a1, void *a2)
{
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a2;

  v5 = a2;
  sub_1D79E75B0();
}

uint64_t sub_1D7AFD8CC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_headline;
  swift_beginAccess();
  if (*(a1 + v2))
  {
    v3 = swift_unknownObjectRetain();
    sub_1D7A93AEC(v3);
    swift_unknownObjectRelease();
  }

  *(a1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_completedReadingDebouncer) = 0;
}

Swift::Void __swiftcall ArticleViewController.didStartExperiment(forArticleID:experimentIdentifier:treatmentGroup:)(Swift::String forArticleID, Swift::String experimentIdentifier, Swift::String treatmentGroup)
{
  object = treatmentGroup._object;
  countAndFlagsBits = treatmentGroup._countAndFlagsBits;
  v39 = experimentIdentifier._object;
  v37 = experimentIdentifier._countAndFlagsBits;
  v6 = forArticleID._object;
  v7 = forArticleID._countAndFlagsBits;
  v8 = type metadata accessor for ArticleModel();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = v3;
  sub_1D7B07BAC(v3 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_model, v11, type metadata accessor for ArticleModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v11;
    v12 = v11[1];
    sub_1D7994174();
    v15 = *(v14 + 48);
  }

  else
  {
    v16 = v11[1];
    v35 = v7;
    v36 = object;
    v18 = v11[2];
    v17 = v11[3];
    v34[1] = v16;
    v34[2] = v17;
    sub_1D7996048();
    v15 = *(v19 + 48);
    v20 = v6;
    v21 = countAndFlagsBits;
    v22 = [v18 articleID];
    v13 = sub_1D7D3034C();
    v12 = v23;
    v7 = v35;

    object = v36;
    swift_unknownObjectRelease();

    countAndFlagsBits = v21;
    v6 = v20;
    swift_unknownObjectRelease();
  }

  sub_1D7B09144(v11 + v15, type metadata accessor for ArticleNavigationAction);
  if (v13 == v7 && v12 == v6)
  {
  }

  else
  {
    v25 = sub_1D7D3197C();

    if ((v25 & 1) == 0)
    {
      if (qword_1EE0C0178 != -1)
      {
        swift_once();
      }

      v26 = sub_1D7D29AFC();
      __swift_project_value_buffer(v26, qword_1EE0DE4D0);

      v27 = sub_1D7D29ADC();
      v28 = sub_1D7D30C4C();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v40[0] = v30;
        *v29 = 136315650;
        *(v29 + 4) = sub_1D7B06D4C(v7, v6, v40);
        *(v29 + 12) = 2080;
        *(v29 + 14) = sub_1D7B06D4C(v37, v39, v40);
        *(v29 + 22) = 2080;
        *(v29 + 24) = sub_1D7B06D4C(countAndFlagsBits, object, v40);
        _os_log_impl(&dword_1D7987000, v27, v28, "Did start experiment for article other than currently viewing. articleID=%s, experimentIdentifier=%s, treatmentGroup=%s", v29, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA7102E0](v30, -1, -1);
        MEMORY[0x1DA7102E0](v29, -1, -1);
      }

      return;
    }
  }

  v31 = *(*(v38 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_eventHandler) + 32);
  swift_beginAccess();
  if (*(v31 + 56))
  {
    sub_1D799CC84(v31 + 32, v40);
    v32 = v41;
    v33 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    (*(v33 + 168))(v37, v39, countAndFlagsBits, object, v32, v33);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }
}

Swift::Bool __swiftcall ArticleViewController.isExperimentationEnabled()()
{
  swift_getObjectType();
  if (qword_1EE0CB5B0 != -1)
  {
    swift_once();
  }

  sub_1D7B092B4(&unk_1EE0C8088, type metadata accessor for ArticleViewController);
  sub_1D7D285AC();
  if (v2)
  {
    if (qword_1EE0CB5C8 != -1)
    {
      swift_once();
    }

    sub_1D7D285AC();
    if (v1 == 1)
    {
      [objc_opt_self() performStoreReset];
      sub_1D7B092B4(&unk_1EC9E46E0, type metadata accessor for ArticleViewController);
      sub_1D7D2872C();
    }
  }

  return v2;
}

id ArticleViewController.responder.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController);
  result = [v2 responder];
  if (!result)
  {

    return v2;
  }

  return result;
}

id sub_1D7AFE07C()
{
  v2 = *(v0 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController);
  result = [v2 responder];
  if (!result)
  {

    return v2;
  }

  return result;
}

void sub_1D7AFE0E0(void *a1)
{
  if (![a1 delegate])
  {
LABEL_4:
    if ([a1 delegate])
    {
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        goto LABEL_6;
      }

      swift_unknownObjectRelease();
    }

    if ([a1 delegate])
    {
      v4 = swift_dynamicCastObjCProtocolConditional();
      if (v4)
      {
        v5 = v4;
        swift_getObjectType();
        sub_1D7992EFC(0, &qword_1EE0BEC90);
        if (swift_dynamicCastMetatype())
        {
          v6 = [objc_allocWithZone(MEMORY[0x1E69CE090]) init];
          [v6 addDelegate_];
          [v6 addDelegate_];
          v7 = v6;
          [a1 setDelegate_];

          swift_unknownObjectRelease();
          v8 = *(v1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_multiDelegate);
          *(v1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_multiDelegate) = v6;
LABEL_16:

          return;
        }
      }

      swift_unknownObjectRelease();
    }

    v9 = [objc_allocWithZone(MEMORY[0x1E69CE090]) init];
    [a1 setDelegate_];
    v8 = *(v1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_multiDelegate);
    *(v1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_multiDelegate) = v9;
    goto LABEL_16;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
    goto LABEL_4;
  }

LABEL_6:
  [v3 addDelegate_];

  swift_unknownObjectRelease();
}

void sub_1D7AFE300()
{
  v1 = *(v0 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController);
  v2 = [v1 scrollView];
  if (!v2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  [v2 frame];

  v4 = *(v0 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_hardPaywallViewController);
  if (!v4)
  {
    v8 = 0.0;
    v10 = 0.0;
    v12 = 0.0;
    v14 = 0.0;
LABEL_6:
    v17.origin.x = v8;
    v17.origin.y = v10;
    v17.size.width = v12;
    v17.size.height = v14;
    CGRectGetMinY(v17);
    v15 = [v1 scrollView];
    if (v15)
    {
      v16 = v15;
      [v15 contentOffset];

      return;
    }

    goto LABEL_9;
  }

  v5 = [v4 view];
  if (v5)
  {
    v6 = v5;
    [v5 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
}

id sub_1D7AFE45C()
{
  v2 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_footers;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
LABEL_26:
    if (!sub_1D7D3167C())
    {
      return 0;
    }
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  v4 = [*(v0 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_documentSectionBlueprintProvider) observableFooterBlueprint];
  v5 = [v4 value];

  if (v5)
  {
    result = [v5 items];
    if (!result)
    {
LABEL_36:
      __break(1u);
      return result;
    }

    v7 = result;
    sub_1D7B0820C();
    v8 = sub_1D7D3063C();

    v50 = v5;
    if (v8 >> 62)
    {
      v9 = sub_1D7D3167C();
      if (v9)
      {
LABEL_7:
        v10 = 0;
        v51 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_hardPaywallViewController;
        v52 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController;
        v11 = &selRef_addTarget_action_;
        while (1)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x1DA70EF00](v10, v8);
            v13 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
LABEL_23:
              __break(1u);
LABEL_24:

              return v1;
            }
          }

          else
          {
            if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_26;
            }

            v12 = *(v8 + 8 * v10 + 32);
            swift_unknownObjectRetain();
            v13 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              goto LABEL_23;
            }
          }

          v1 = [v12 sectionItemViewController];
          v14 = *(v0 + v52);
          v15 = v11;
          result = [v14 v11[337]];
          if (!result)
          {
            break;
          }

          v16 = result;
          [result frame];
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v24 = v23;

          v25 = *(v0 + v51);
          if (v25)
          {
            result = [v25 view];
            if (!result)
            {
              goto LABEL_35;
            }

            v26 = result;
            [result frame];
            v28 = v27;
            v30 = v29;
            v32 = v31;
            v34 = v33;
          }

          else
          {
            v28 = 0.0;
            v30 = 0.0;
            v32 = 0.0;
            v34 = 0.0;
          }

          v53.origin.x = v28;
          v53.origin.y = v30;
          v53.size.width = v32;
          v53.size.height = v34;
          MinY = CGRectGetMinY(v53);
          v11 = v15;
          result = [v14 v15 + 1784];
          if (!result)
          {
            goto LABEL_34;
          }

          v36 = result;
          [result contentOffset];
          v38 = v37;

          result = [v1 view];
          if (!result)
          {
            goto LABEL_33;
          }

          v39 = result;
          v40 = v24 - MinY;
          v41 = v20 + v38;
          [result frame];
          v43 = v42;
          v45 = v44;
          v47 = v46;
          v49 = v48;

          v54.origin.x = v18;
          v54.origin.y = v41;
          v54.size.width = v22;
          v54.size.height = v40;
          v55.origin.x = v43;
          v55.origin.y = v45;
          v55.size.width = v47;
          v55.size.height = v49;
          LODWORD(v39) = CGRectIntersectsRect(v54, v55);
          swift_unknownObjectRelease();
          if (v39)
          {
            goto LABEL_24;
          }

          ++v10;
          if (v13 == v9)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        goto LABEL_7;
      }
    }

LABEL_29:
  }

  return 0;
}

void sub_1D7AFE810()
{
  v2 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_footers;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
LABEL_23:
    if (!sub_1D7D3167C())
    {
      goto LABEL_24;
    }
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_24:
    if (qword_1EE0CAF08 != -1)
    {
      swift_once();
    }

    v37 = qword_1EE0CAF10;
    v38 = sub_1D7D30C6C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1D7987000, v37, v38, "No footers available for end-of-article onscreen percentage calculation.", v39, 2u);
      MEMORY[0x1DA7102E0](v39, -1, -1);
    }

    return;
  }

  v4 = [*(v0 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_documentSectionBlueprintProvider) observableFooterBlueprint];
  v5 = [v4 value];

  if (!v5)
  {
    goto LABEL_24;
  }

  v6 = [v5 items];
  if (!v6)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    return;
  }

  v7 = v6;
  sub_1D7B0820C();
  v8 = sub_1D7D3063C();

  v43 = v5;
  if (v8 >> 62)
  {
    v9 = sub_1D7D3167C();
    if (v9)
    {
      goto LABEL_7;
    }

LABEL_29:

    if (qword_1EE0CAF08 != -1)
    {
      swift_once();
    }

    v40 = qword_1EE0CAF10;
    v41 = sub_1D7D30C6C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1D7987000, v40, v41, "No end-of-article section available for onscreen percentage calculation.", v42, 2u);
      MEMORY[0x1DA7102E0](v42, -1, -1);
    }

    return;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_29;
  }

LABEL_7:
  v10 = 0;
  while ((v8 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1DA70EF00](v10, v8);
    v11 = v12;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_16;
    }

LABEL_11:
    v1 = [v11 sectionItemViewController];
    type metadata accessor for EndOfArticleViewController();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      goto LABEL_17;
    }

    swift_unknownObjectRelease();

    ++v10;
    if (v13 == v9)
    {
      goto LABEL_29;
    }
  }

  if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_23;
  }

  v11 = *(v8 + 8 * v10 + 32);
  v12 = swift_unknownObjectRetain();
  v13 = v10 + 1;
  if (!__OFADD__(v10, 1))
  {
    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  v14 = v12;
  sub_1D7AFE300();
  MaxY = CGRectGetMaxY(v44);
  v16 = v1;
  v17 = v14;
  v18 = [v14 view];
  if (!v18)
  {
    goto LABEL_36;
  }

  v19 = v18;
  [v18 frame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v45.origin.x = v21;
  v45.origin.y = v23;
  v45.size.width = v25;
  v45.size.height = v27;
  if (MaxY - CGRectGetMinY(v45) <= 0.0)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = [v17 view];

    if (!v28)
    {
      goto LABEL_37;
    }

    [v28 frame];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v46.origin.x = v30;
    v46.origin.y = v32;
    v46.size.width = v34;
    v46.size.height = v36;
    CGRectGetHeight(v46);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D7AFEC98(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_endOfArticleSectionDidLayout) == 1)
  {
    sub_1D7AFE810();
    if (v3)
    {
      if (qword_1EE0CAF08 != -1)
      {
        swift_once();
      }

      v4 = qword_1EE0CAF10;
      v5 = sub_1D7D30C6C();
      if (!os_log_type_enabled(v4, v5))
      {
        return 0;
      }

      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Failed to calculate end-of-article onscreen percentage.";
LABEL_11:
      _os_log_impl(&dword_1D7987000, v4, v5, v7, v6, 2u);
      MEMORY[0x1DA7102E0](v6, -1, -1);
      return 0;
    }

    v9 = v2;
    v10 = [*(a1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_appConfigurationManager) appConfiguration];
    if ([v10 respondsToSelector_])
    {
      v11 = [v10 endOfArticleOnscreenPercentageRequirement];
      swift_unknownObjectRelease();
      if (v11 >= 1)
      {
        if (qword_1EE0CAF08 != -1)
        {
          swift_once();
        }

        v12 = qword_1EE0CAF10;
        v13 = sub_1D7D30C6C();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 134218240;
          *(v14 + 4) = v9;
          *(v14 + 12) = 2048;
          *(v14 + 14) = v11;
          _os_log_impl(&dword_1D7987000, v12, v13, "End of Article Onscreen Percentage: %f | EoA Percentage Requirement: %lld", v14, 0x16u);
          MEMORY[0x1DA7102E0](v14, -1, -1);
        }

        return v11 <= v9;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    if (qword_1EE0CAF08 != -1)
    {
      swift_once();
    }

    v15 = qword_1EE0CAF10;
    v16 = sub_1D7D30C6C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D7987000, v15, v16, "Missing or zero percent end-of-article onscreeen requirement set.  Using bottom of article view to determine end-of-article.", v17, 2u);
      MEMORY[0x1DA7102E0](v17, -1, -1);
    }

    return sub_1D7D30B7C() & 1;
  }

  else
  {
    if (qword_1EE0CAF08 != -1)
    {
      swift_once();
    }

    v4 = qword_1EE0CAF10;
    v5 = sub_1D7D30C6C();
    result = os_log_type_enabled(v4, v5);
    if (result)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Failed to calculate end-of-article onscreen percentage because EoA layout has not completed.";
      goto LABEL_11;
    }
  }

  return result;
}

void sub_1D7AFEFDC(void *a1)
{
  v3 = [a1 items];
  if (v3)
  {
    v4 = v3;
    sub_1D7B0820C();
    v5 = sub_1D7D3063C();

    if (v5 >> 62)
    {
      goto LABEL_16;
    }

    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      while (1)
      {
        v7 = 0;
        while ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1DA70EF00](v7, v5);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            *(v1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_endOfArticleSectionDidLayout) = 1;
            return;
          }

LABEL_8:
          v2 = [v8 sectionItemViewController];
          swift_unknownObjectRelease();
          type metadata accessor for EndOfArticleViewController();
          if (swift_dynamicCastClass())
          {
            goto LABEL_14;
          }

          ++v7;
          if (v9 == v6)
          {
            goto LABEL_17;
          }
        }

        if (v7 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_16:
        v6 = sub_1D7D3167C();
        if (!v6)
        {
          goto LABEL_17;
        }
      }

      v8 = *(v5 + 8 * v7 + 32);
      swift_unknownObjectRetain();
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_17:
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D7AFF1A0()
{
  if (qword_1EE0CAF08 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE0CAF10;
  v1 = sub_1D7D30C6C();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1D7987000, v0, v1, "PaywallPreparationEventManager - Firing paywallLoaded event.", v2, 2u);
    MEMORY[0x1DA7102E0](v2, -1, -1);
  }

  return sub_1D7D28C6C();
}

uint64_t sub_1D7AFF284(uint64_t a1)
{
  v2 = sub_1D7D29A3C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v30 - v9;
  v11 = sub_1D7D29A1C();
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v11, v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = 0;
    v35 = *(v13 + 16);
    v34 = *MEMORY[0x1E69B6C38];
    v38 = v6;
    v39 = v2;
    v40 = (v3 + 8);
    v41 = (v3 + 104);
    v31 = *MEMORY[0x1E69B6C48];
    v32 = v13 + 16;
    v33 = (v13 + 8);
    v19 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v30 = *(v13 + 72);
    while (1)
    {
      v36 = v18;
      v37 = v17;
      v35(v16, v19, v11, v14);
      sub_1D7D299FC();
      v20 = v16;
      v21 = *v41;
      v23 = v38;
      v22 = v39;
      (*v41)(v38, v34, v39);
      v24 = sub_1D7D29A2C();
      v25 = *v40;
      (*v40)(v23, v22);
      v25(v10, v22);
      if (v24)
      {
        break;
      }

      sub_1D7D299FC();
      v26 = v38;
      v27 = v39;
      v21(v38, v31, v39);
      v28 = sub_1D7D29A2C();
      v25(v26, v27);
      v25(v10, v27);
      (*v33)(v20, v11);
      v18 = v28 | v36;
      v19 += v30;
      v17 = v37 - 1;
      v16 = v20;
      if (v37 == 1)
      {
        return v18 & 1;
      }
    }

    (*v33)(v16, v11);
  }

  LOBYTE(v18) = 0;
  return v18 & 1;
}

void sub_1D7AFF5A8(uint64_t a1)
{
  v15 = a1;
  ObjectType = swift_getObjectType();
  v16 = sub_1D7D29A1C();
  v2 = *(v16 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v16, v4);
  sub_1D7B092B4(&qword_1EE0C8098, type metadata accessor for ArticleViewController);
  v5 = sub_1D7D298EC();
  swift_allocObject();
  v6 = v1;
  v7 = sub_1D7D298DC();
  sub_1D7D29A0C();
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  v20[3] = v5;
  v20[4] = MEMORY[0x1E69B6BF0];
  v17 = v7;
  v20[0] = v7;

  v8 = sub_1D7D296DC();
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v21);
  sub_1D7B092B4(&qword_1EE0C80A0, type metadata accessor for ArticleViewController);
  swift_unknownObjectRetain();
  sub_1D7D297AC();
  sub_1D7D2978C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D7D28EFC();

  __swift_destroy_boxed_opaque_existential_1(v21);
  v19 = v8;
  type metadata accessor for CGSize(0);
  sub_1D7D294BC();
  sub_1D7992EFC(0, &qword_1EE0BEFF0);
  v9 = sub_1D7D30E1C();
  v10 = v16;
  (*(v2 + 16))(&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v15, v16);
  v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v12 = swift_allocObject();
  (*(v2 + 32))(v12 + v11, &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  *(v12 + ((v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;
  v13 = v8;
  sub_1D7D293CC();

  v14 = sub_1D7D2934C();
  sub_1D7D293EC();
}

void sub_1D7AFF958()
{
  v0 = sub_1D7D2918C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_1EE0CAF08 != -1)
    {
      swift_once();
    }

    v7 = qword_1EE0CAF10;
    v8 = sub_1D7D30C6C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D7987000, v7, v8, "PaywallPreparationEventManager - articleLoaded and viewWillAppear events have been triggered.", v9, 2u);
      MEMORY[0x1DA7102E0](v9, -1, -1);
    }

    LOBYTE(v14) = (sub_1D7D29A4C() & 1) == 0;
    sub_1D7D28F1C();
    v10 = sub_1D7D30C6C();
    if (os_log_type_enabled(v7, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D7987000, v7, v10, "Setting up PaywallPreparationEventManager trigger.  Awaiting paywallLoaded event.", v11, 2u);
      MEMORY[0x1DA7102E0](v11, -1, -1);
    }

    sub_1D7B22E00(&unk_1F529AA08);
    v12 = MEMORY[0x1E69D6810];
    sub_1D798EA94(0, &qword_1EE0BE960, MEMORY[0x1E69D6810], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D7D3B4E0;
    sub_1D7D2916C();
    sub_1D7D2917C();
    v14 = v13;
    sub_1D7B092B4(&qword_1EE0C0380, MEMORY[0x1E69D6810]);
    sub_1D798EA94(0, &unk_1EE0BF2C0, v12, MEMORY[0x1E69E62F8]);
    sub_1D7B08DA0(&qword_1EE0BF2B0, &unk_1EE0BF2C0, v12);
    sub_1D7D313AC();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1D7D28C7C();

    (*(v1 + 8))(v4, v0);
  }
}

void sub_1D7AFFD2C()
{
  if (qword_1EE0CAF08 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE0CAF10;
  v1 = sub_1D7D30C6C();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1D7987000, v0, v1, "PaywallPreparationEventManager - paywallLoaded event has been triggered.", v2, 2u);
    MEMORY[0x1DA7102E0](v2, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_pageDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);

      ObjectType = swift_getObjectType();
      (*(v6 + 16))(ObjectType, v6);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1D7AFFE80()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];

    if (!v2)
    {
      __break(1u);
      goto LABEL_9;
    }

    [v2 setNeedsLayout];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [v3 view];

  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v5 layoutIfNeeded];
}

void sub_1D7AFFF64(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v8 = sub_1D7D29A3C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 8);
  sub_1D7D299FC();
  v14 = (*(v9 + 88))(v12, v8);
  if (v14 == *MEMORY[0x1E69B6C40])
  {
    goto LABEL_29;
  }

  if (v14 == *MEMORY[0x1E69B6C38])
  {
    v15 = [objc_allocWithZone(MEMORY[0x1E69B70C0]) initWithViewController:a4 heightProvider:a4];
    v16 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_headers;
    swift_beginAccess();
    v17 = v15;
    MEMORY[0x1DA70E080]();
    if (*((*(a2 + v16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D7D306DC();
    }

    sub_1D7D3072C();
    swift_endAccess();
    sub_1D7B0820C();

    v18 = sub_1D7D3062C();

    v19 = [objc_opt_self() blueprintWithItems_];

    v20 = [*(a2 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_documentSectionBlueprintProvider) observableHeaderBlueprint];
    [v20 next_];

    goto LABEL_29;
  }

  if (v14 != *MEMORY[0x1E69B6C48])
  {
    (*(v9 + 8))(v12, v8);
LABEL_29:
    if (qword_1EE0CAF08 != -1)
    {
LABEL_41:
      swift_once();
    }

    v38 = qword_1EE0CAF10;
    v39 = sub_1D7D30C6C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1D7987000, v38, v39, "PaywallPreparationEventManager - Firing paywallLoaded event.", v40, 2u);
      MEMORY[0x1DA7102E0](v40, -1, -1);
    }

    v44 = 2;
    sub_1D7D28C6C();
    return;
  }

  v43[0] = v4;
  v21 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_footers;
  swift_beginAccess();
  v22 = *(a2 + v21);
  if (v22 >> 62)
  {
    v23 = sub_1D7D3167C();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = 0;
  while (1)
  {
    if (v23 == v24)
    {

      v28 = 0;
      goto LABEL_22;
    }

    if ((v22 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x1DA70EF00](v24, v22);
    }

    else
    {
      if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v25 = *(v22 + 8 * v24 + 32);
    }

    v26 = v25;
    type metadata accessor for ArticleSharingViewController();
    if (swift_dynamicCastClass())
    {
      break;
    }

    if (__OFADD__(v24++, 1))
    {
      goto LABEL_40;
    }
  }

  v28 = v24 + 1;
  if (!__OFADD__(v24, 1))
  {
LABEL_22:
    v29 = type metadata accessor for ArticleFooterPaywall();
    v30 = objc_allocWithZone(v29);
    *&v30[OBJC_IVAR____TtC12NewsArticles20ArticleFooterPaywall_footerDelegate] = 0;
    *&v30[OBJC_IVAR____TtC12NewsArticles20ArticleFooterPaywall_paywallViewController] = a4;
    *&v30[OBJC_IVAR____TtC12NewsArticles20ArticleFooterPaywall_paywallHeight] = v13;
    v45.receiver = v30;
    v45.super_class = v29;
    v31 = a4;
    v32 = objc_msgSendSuper2(&v45, sel_initWithNibName_bundle_, 0, 0);
    *&v32[OBJC_IVAR____TtC12NewsArticles20ArticleFooterPaywall_footerDelegate] = a2;
    swift_unknownObjectRelease();
    swift_beginAccess();
    v33 = *(a2 + v21);
    if (!(v33 >> 62))
    {
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v28)
      {
        goto LABEL_24;
      }

LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (sub_1D7D3167C() < v28)
    {
      goto LABEL_44;
    }

LABEL_24:
    if (v28 < 0)
    {
LABEL_45:
      __break(1u);
    }

    else
    {
      v34 = a2;
      a4 = v32;
      sub_1D7B07EA8(v28, v28, a4);
      swift_endAccess();

      v28 = [*&v34[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_documentSectionBlueprintProvider] observableFooterBlueprint];
      v35 = *(a2 + v21);
      if (!(v35 >> 62))
      {
        swift_bridgeObjectRetain_n();
        sub_1D7D319CC();
        sub_1D7B0820C();
        if (!swift_dynamicCastMetatype())
        {
          v41 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v41)
          {
            v42 = (v35 & 0xFFFFFFFFFFFFFF8) + 32;
            do
            {
              v43[1] = &unk_1F52F5C70;
              if (!swift_dynamicCastObjCProtocolConditional())
              {
                break;
              }

              v42 += 8;
              --v41;
            }

            while (v41);
          }
        }

        goto LABEL_28;
      }
    }

    sub_1D7B0820C();

    sub_1D7D3161C();

LABEL_28:
    sub_1D7B0820C();
    v36 = sub_1D7D3062C();

    v37 = [objc_opt_self() blueprintWithItems_];

    [v28 next_];
    goto LABEL_29;
  }

  __break(1u);
}

uint64_t sub_1D7B005F8()
{
  if (qword_1EE0CAF08 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE0CAF10;
  v1 = sub_1D7D30C6C();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1D7987000, v0, v1, "PaywallPreparationEventManager - Firing paywallLoaded event on error.", v2, 2u);
    MEMORY[0x1DA7102E0](v2, -1, -1);
  }

  return sub_1D7D28C6C();
}

uint64_t ArticleViewController.didStartViewSession(_:)(uint64_t a1)
{
  v2 = sub_1D7D2B22C();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798EA94(0, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v38 - v8;
  v47 = sub_1D7D2833C();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D7D2A3DC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ArticleSession();
  v44 = *(v18 - 1);
  v19 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v18, v20);
  v46 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = (&v38 - v23);
  v25 = _s12NewsArticles21InterstitialAdSessionV10identifierSSvg_0();
  v26 = (v49 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_viewingSessionID);
  *v26 = v25;
  v26[1] = v27;

  (*(v14 + 16))(v17, a1, v13);
  v28 = _s12NewsArticles21InterstitialAdSessionV10identifierSSvg_0();
  v39 = v29;
  v40 = v28;
  v43 = v12;
  sub_1D7D2A3AC();
  v48 = v9;
  sub_1D7D2A3BC();
  sub_1D7D2A3CC();
  v30 = (*(v41 + 88))(v5, v42);
  if (v30 == *MEMORY[0x1E69D7E80])
  {
    v31 = 0;
LABEL_9:
    (*(v14 + 8))(v17, v13);
    v32 = v39;
    *v24 = v40;
    v24[1] = v32;
    (*(v45 + 32))(v24 + v18[5], v43, v47);
    sub_1D7B07B18(v48, v24 + v18[6]);
    *(v24 + v18[7]) = v31;
    v33 = swift_allocObject();
    swift_weakInit();
    v34 = v46;
    sub_1D7B07BAC(v24, v46, type metadata accessor for ArticleSession);
    v35 = (*(v44 + 80) + 24) & ~*(v44 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = v33;
    sub_1D7B07C14(v34, v36 + v35);

    sub_1D79E732C();

    sub_1D7B09144(v24, type metadata accessor for ArticleSession);
  }

  if (v30 == *MEMORY[0x1E69D7E78])
  {
    v31 = 1;
    goto LABEL_9;
  }

  if (v30 == *MEMORY[0x1E69D7E68])
  {
    v31 = 2;
    goto LABEL_9;
  }

  if (v30 == *MEMORY[0x1E69D7E70])
  {
    v31 = 3;
    goto LABEL_9;
  }

  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

uint64_t ArticleViewController.didResignViewSession(_:)()
{
  return sub_1D7B01554();
}

{
  return sub_1D7B01554();
}

uint64_t ArticleViewController.didResumeViewSession(_:)()
{
  v1 = _s12NewsArticles21InterstitialAdSessionV10identifierSSvg_0();
  v2 = (v0 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_viewingSessionID);
  *v2 = v1;
  v2[1] = v3;

  swift_allocObject();
  swift_weakInit();

  sub_1D79E75B0();
}

{
  return sub_1D7B01554();
}

uint64_t sub_1D7B00D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v47 = a3;
  v45 = a1;
  v40 = sub_1D7D2B22C();
  v3 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798EA94(0, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v37 - v9;
  v44 = sub_1D7D2833C();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D7D2A3DC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ArticleSession();
  v41 = *(v19 - 1);
  v20 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v19, v21);
  v43 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v26 = (&v37 - v25);
  (*(v15 + 16))(v18, v45, v14, v24);
  v27 = _s12NewsArticles21InterstitialAdSessionV10identifierSSvg_0();
  v38 = v28;
  v39 = v27;
  sub_1D7D2A3AC();
  v45 = v10;
  sub_1D7D2A3BC();
  sub_1D7D2A3CC();
  v29 = (*(v3 + 88))(v6, v40);
  if (v29 == *MEMORY[0x1E69D7E80])
  {
    v30 = 0;
LABEL_9:
    (*(v15 + 8))(v18, v14);
    v31 = v38;
    *v26 = v39;
    v26[1] = v31;
    (*(v42 + 32))(v26 + v19[5], v13, v44);
    sub_1D7B07B18(v45, v26 + v19[6]);
    *(v26 + v19[7]) = v30;
    v32 = swift_allocObject();
    swift_weakInit();
    v33 = v43;
    sub_1D7B07BAC(v26, v43, type metadata accessor for ArticleSession);
    v34 = (*(v41 + 80) + 24) & ~*(v41 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = v32;
    sub_1D7B07C14(v33, v35 + v34);

    sub_1D79E75B0();

    sub_1D7B09144(v26, type metadata accessor for ArticleSession);
  }

  if (v29 == *MEMORY[0x1E69D7E78])
  {
    v30 = 1;
    goto LABEL_9;
  }

  if (v29 == *MEMORY[0x1E69D7E68])
  {
    v30 = 2;
    goto LABEL_9;
  }

  if (v29 == *MEMORY[0x1E69D7E70])
  {
    v30 = 3;
    goto LABEL_9;
  }

  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

uint64_t ArticleViewController.didStartViewSession(_:)()
{
  v0 = type metadata accessor for ArticleSession();
  v1 = v0 - 8;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v0, v4);
  v5 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v19 - v8);
  v10 = sub_1D7D2A5CC();
  v12 = v11;
  sub_1D7D2A5DC();
  v13 = *(v1 + 32);
  v14 = sub_1D7D2833C();
  (*(*(v14 - 8) + 56))(v9 + v13, 1, 1, v14);
  *v9 = v10;
  v9[1] = v12;
  *(v9 + *(v1 + 36)) = 0;
  v15 = swift_allocObject();
  swift_weakInit();
  sub_1D7B07BAC(v9, v5, type metadata accessor for ArticleSession);
  v16 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  sub_1D7B07C14(v5, v17 + v16);

  sub_1D79E732C();

  sub_1D7B09144(v9, type metadata accessor for ArticleSession);
}

uint64_t sub_1D7B01554()
{
  swift_allocObject();
  swift_weakInit();

  sub_1D79E75B0();
}

uint64_t ArticleViewController.didEndViewSession(_:)()
{
  v0 = type metadata accessor for ArticleSession();
  v1 = v0 - 8;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v0, v4);
  v5 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v17 - v8);
  v10 = sub_1D7D2A5CC();
  v12 = v11;
  sub_1D7D2A5DC();
  sub_1D7D2A5EC();
  *v9 = v10;
  v9[1] = v12;
  *(v9 + *(v1 + 36)) = 0;
  v13 = swift_allocObject();
  swift_weakInit();
  sub_1D7B07BAC(v9, v5, type metadata accessor for ArticleSession);
  v14 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  sub_1D7B07C14(v5, v15 + v14);

  sub_1D79E75B0();

  sub_1D7B09144(v9, type metadata accessor for ArticleSession);
}

uint64_t sub_1D7B01808()
{
  swift_allocObject();
  swift_weakInit();

  sub_1D79E75B0();
}

Swift::Void __swiftcall ArticleViewController.loadingWillStart()()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_eventHandler) + 32);
  swift_beginAccess();
  if (*(v1 + 56))
  {
    sub_1D799CC84(v1 + 32, v4);
    v2 = v5;
    v3 = v6;
    __swift_project_boxed_opaque_existential_1(v4, v5);
    (*(v3 + 96))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v4);
  }
}

uint64_t ArticleViewController.loadingDidFinishWithError(_:)(void *a1)
{
  if (a1)
  {
    v2 = a1;
    sub_1D7A33598(a1);
  }

  if (qword_1EE0CAF08 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE0CAF10;
  v4 = sub_1D7D30C6C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D7987000, v3, v4, "PaywallPreparationEventManager - Firing articleLoaded event.", v5, 2u);
    MEMORY[0x1DA7102E0](v5, -1, -1);
  }

  return sub_1D7D28C6C();
}

id ArticleViewController.didLoad(_:with:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = [a1 headline];
  if (v6)
  {
    v7 = v6;
    v8 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_headline;
    swift_beginAccess();
    *&v2[v8] = v7;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    result = [v2 view];
    if (result)
    {
      v11 = result;
      MEMORY[0x1EEE9AC00](result, v10);
      v63 = v7;
      sub_1D7B080F0();
      sub_1D7B092B4(&qword_1EE0BF708, sub_1D7B080F0);
      sub_1D7D310AC();

      sub_1D7A327B8(a1);
      v12 = [*&v3[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController] scrollView];
      if (v12)
      {
        v13 = v12;
        [v12 becomeFirstResponder];
      }

      v14 = *&v3[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_viewingSessionID];
      v15 = *&v3[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_viewingSessionID + 8];
      v16 = *&v3[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleGroupData];
      v17 = *&v3[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleGroupData + 8];
      v18 = *&v3[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleGroupData + 16];
      v19 = *&v3[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleGroupData + 24];
      v20 = type metadata accessor for ArticleFooterContext();
      v21 = objc_allocWithZone(v20);
      *&v21[OBJC_IVAR___NAArticleFooterContext_headline] = v63;
      v22 = &v21[OBJC_IVAR___NAArticleFooterContext_viewingSessionID];
      *v22 = v14;
      *(v22 + 1) = v15;
      v23 = &v21[OBJC_IVAR___NAArticleFooterContext_articleGroupData];
      *v23 = v16;
      v23[1] = v17;
      v23[2] = v18;
      v23[3] = v19;
      swift_unknownObjectRetain();

      sub_1D7A03D0C(v16, v17, v18);
      v68.receiver = v21;
      v68.super_class = v20;
      v24 = objc_msgSendSuper2(&v68, sel_init);
      sub_1D799CC84(&v3[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_footerProvider], v65);
      v25 = v66;
      v26 = v67;
      __swift_project_boxed_opaque_existential_1(v65, v66);
      result = [a2 documentController];
      if (result)
      {
        v27 = result;
        v28 = [result metadata];

        result = [a2 documentController];
        if (result)
        {
          v29 = result;
          v30 = [result documentBackgroundColor];

          v31 = *&v3[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_presentationContext + 8];
          v64[0] = *&v3[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_presentationContext];
          v64[1] = v31;
          v32 = *(v26 + 8);
          sub_1D7B08184(v64[0]);
          v33 = v32(v24, v28, v30, v64, v25, v26);

          sub_1D7B081C8(v64[0]);
          __swift_destroy_boxed_opaque_existential_1(v65);
          if (v33 >> 62)
          {
            v34 = sub_1D7D3167C();
            v35 = &selRef_addTarget_action_;
            if (!v34)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v35 = &selRef_addTarget_action_;
            if (!v34)
            {
              goto LABEL_24;
            }
          }

          if (v34 >= 1)
          {
            for (i = 0; i != v34; ++i)
            {
              if ((v33 & 0xC000000000000001) != 0)
              {
                v37 = MEMORY[0x1DA70EF00](i, v33);
              }

              else
              {
                v37 = *(v33 + 8 * i + 32);
              }

              v38 = v37;
              [v37 setFooterDelegate_];
            }

            v39 = [*&v3[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_documentSectionBlueprintProvider] observableFooterBlueprint];
            if (v33 >> 62)
            {
              sub_1D7B0820C();

              sub_1D7D3161C();
            }

            else
            {

              sub_1D7D319CC();
              sub_1D7B0820C();
              if (!swift_dynamicCastMetatype())
              {
                v60 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v60)
                {
                  v61 = (v33 & 0xFFFFFFFFFFFFFF8) + 32;
                  do
                  {
                    v64[3] = &unk_1F52F5C70;
                    if (!swift_dynamicCastObjCProtocolConditional())
                    {
                      break;
                    }

                    v61 += 8;
                    --v60;
                  }

                  while (v60);
                }
              }
            }

            sub_1D7B0820C();
            v40 = sub_1D7D3062C();

            v41 = [objc_opt_self() blueprintWithItems_];

            [v39 v35[195]];
LABEL_24:
            v62 = v24;
            v42 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_footers;
            swift_beginAccess();
            *&v3[v42] = v33;

            __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_headerProvider], *&v3[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_headerProvider + 24]);
            v43 = sub_1D7B9AEF0(v63);
            v44 = v43;
            v45 = *(v43 + 16);
            if (v45)
            {
              v46 = (v43 + 40);
              do
              {
                v47 = *(v46 - 1);
                v48 = *v46;
                ObjectType = swift_getObjectType();
                v50 = *(v48 + 16);
                v51 = v47;
                v52 = v3;
                v50(v3, &protocol witness table for ArticleViewController, ObjectType, v48);

                v46 += 2;
                --v45;
              }

              while (v45);
            }

            v53 = sub_1D7AF9CD4(v44);

            v54 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_headers;
            swift_beginAccess();
            sub_1D7B089D8(0, 0, v53, sub_1D7BE3D80, sub_1D7BE31D4);
            swift_endAccess();

            v55 = *&v3[v54];
            if (v55 >> 62)
            {
              v56 = v62;
              if (!sub_1D7D3167C())
              {
                goto LABEL_30;
              }
            }

            else
            {
              v56 = v62;
              if (!*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_30:

                return swift_unknownObjectRelease();
              }
            }

            v57 = [*&v3[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_documentSectionBlueprintProvider] observableHeaderBlueprint];
            sub_1D7B0820C();

            v58 = sub_1D7D3062C();

            v59 = [objc_opt_self() blueprintWithItems_];

            [v57 next_];
            goto LABEL_30;
          }

          __break(1u);
          goto LABEL_42;
        }

LABEL_45:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_45;
  }

  sub_1D7D30C4C();
  if (qword_1EE0CAF08 != -1)
  {
LABEL_42:
    swift_once();
  }

  return sub_1D7D29ABC();
}

uint64_t sub_1D7B02350()
{
  v0 = sub_1D7D2F2FC();
  MEMORY[0x1EEE9AC00](v0, v1);
  swift_unknownObjectRetain();
  sub_1D7D2F2EC();
  sub_1D7B092B4(&qword_1EE0BF6C0, MEMORY[0x1E69B6200]);
  return sub_1D7D2F18C();
}

void ArticleViewController.loadedArticle(_:didApply:)(void *a1, id a2)
{
  if (!a2 || (v10 = [a2 backgroundColor]) == 0)
  {
    v10 = [objc_opt_self() whiteColor];
  }

  if (![a1 headline])
  {
    goto LABEL_10;
  }

  swift_unknownObjectRelease();
  v4 = [v2 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = v4;
  v6 = v10;
  [v5 setBackgroundColor_];

  v7 = *&v2[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_mastheadViewController];
  if (v7)
  {
    v8 = [v7 view];
    if (v8)
    {
      v9 = v8;
      [v8 setBackgroundColor_];

      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return;
  }

LABEL_9:

LABEL_10:
}

void sub_1D7B02660(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_pageDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);

      ObjectType = swift_getObjectType();
      (*(v6 + 32))(a2, ObjectType, v6);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void ArticleViewController.headerNeedsDismissal(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_headers;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5 >> 62)
  {
LABEL_18:
    v6 = sub_1D7D3167C();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {

      goto LABEL_15;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1DA70EF00](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v8 = *(v5 + 8 * v7 + 32);
      swift_unknownObjectRetain();
    }

    swift_unknownObjectRelease();
    if (v8 == a1)
    {
      break;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_17;
    }
  }

  swift_beginAccess();
  sub_1D7B02924(v7, sub_1D7BE3D7C);
  swift_endAccess();
  swift_unknownObjectRelease();
LABEL_15:
  v10 = [*(v2 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_documentSectionBlueprintProvider) observableHeaderBlueprint];
  sub_1D7B0820C();

  v11 = sub_1D7D3062C();

  v12 = [objc_opt_self() blueprintWithItems_];

  [v10 next_];
}

uint64_t sub_1D7B02924(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t sub_1D7B029BC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1D7BE3D7C(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t ArticleViewController.headerSafeAreaInsets(_:)@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  sub_1D7B092B4(&unk_1EE0C8070, type metadata accessor for ArticleViewController);
  result = sub_1D7D2B9DC();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_1D7B02AD0@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  sub_1D7B092B4(&unk_1EE0C8070, type metadata accessor for ArticleViewController);
  result = sub_1D7D2B9DC();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = 0;
  return result;
}

uint64_t ArticleViewController.removePaywall(for:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (!a1)
  {
    goto LABEL_52;
  }

  if (a1 != 1)
  {
    if (a1 == 2)
    {
      v16 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_headers;
      swift_beginAccess();
      v17 = *&v2[v16];
      v58 = ObjectType;
      if (v17 >> 62)
      {
        goto LABEL_64;
      }

      for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7D3167C())
      {

        if (i)
        {
          v5 = 0;
          v7 = (v17 & 0xC000000000000001);
          ObjectType = v17 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v7)
            {
              v19 = MEMORY[0x1DA70EF00](v5, v17);
              v20 = v5 + 1;
              if (__OFADD__(v5, 1))
              {
LABEL_24:
                __break(1u);
                goto LABEL_25;
              }
            }

            else
            {
              if (v5 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_62;
              }

              v19 = *(v17 + 8 * v5 + 32);
              swift_unknownObjectRetain();
              v20 = v5 + 1;
              if (__OFADD__(v5, 1))
              {
                goto LABEL_24;
              }
            }

            v21 = [v19 sectionItemViewController];
            sub_1D7D297BC();
            v22 = swift_dynamicCastClass();
            if (v22)
            {
              break;
            }

            swift_unknownObjectRelease();

            ++v5;
            if (v20 == i)
            {
              goto LABEL_28;
            }
          }

          v26 = v22;

          v27 = [v26 presentedViewController];
          if (v27)
          {
            v28 = v27;
            [v27 dismissViewControllerAnimated:1 completion:0];
          }

          swift_beginAccess();
          sub_1D7B02924(v5, sub_1D7BE3D7C);
          swift_endAccess();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
LABEL_28:
        }

        v56 = *&v2[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_documentSectionBlueprintProvider];
        v29 = [v56 observableHeaderBlueprint];
        sub_1D7B0820C();

        v30 = sub_1D7D3062C();

        v57 = objc_opt_self();
        v31 = [v57 blueprintWithItems_];

        [v29 next_];
        v32 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_footers;
        swift_beginAccess();
        v59 = v32;
        v17 = *&v2[v32];
        v33 = v17 >> 62 ? sub_1D7D3167C() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v33)
        {
          break;
        }

        v34 = 0;
        while (1)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v35 = MEMORY[0x1DA70EF00](v34, v17);
          }

          else
          {
            if (v34 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_63;
            }

            v35 = *(v17 + 8 * v34 + 32);
          }

          v36 = v35;
          v37 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            break;
          }

          v38 = [v35 sectionItemViewController];
          sub_1D7D297BC();
          v39 = swift_dynamicCastClass();
          if (v39)
          {
            v40 = v39;

            v41 = [v40 presentedViewController];
            ObjectType = v58;
            if (v41)
            {
              v42 = v41;
              [v41 dismissViewControllerAnimated:1 completion:0];
            }

            swift_beginAccess();
            v43 = sub_1D7B02924(v34, sub_1D7BE3D7C);
            swift_endAccess();

            goto LABEL_48;
          }

          ++v34;
          if (v37 == v33)
          {
            goto LABEL_44;
          }
        }

LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        ;
      }

LABEL_44:

      ObjectType = v58;
LABEL_48:
      v44 = [v56 observableFooterBlueprint];
      v45 = *&v2[v59];
      if (v45 >> 62)
      {

        sub_1D7D3161C();
      }

      else
      {
        swift_bridgeObjectRetain_n();
        sub_1D7D319CC();
        if (!swift_dynamicCastMetatype())
        {
          v54 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v54)
          {
            v55 = (v45 & 0xFFFFFFFFFFFFFF8) + 32;
            do
            {
              if (!swift_dynamicCastObjCProtocolConditional())
              {
                break;
              }

              v55 += 8;
              --v54;
            }

            while (v54);
          }
        }
      }

      v46 = sub_1D7D3062C();

      v47 = [v57 blueprintWithItems_];

      [v44 next_];
      goto LABEL_52;
    }

LABEL_69:
    result = sub_1D7D3160C();
    __break(1u);
    return result;
  }

  v5 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_hardPaywallViewController;
  v6 = *&v2[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_hardPaywallViewController];
  v7 = &selRef_nowPlayingPlaybackControlsDidTapNextTrack_;
  if (!v6)
  {
    goto LABEL_25;
  }

  v8 = [v6 presentedViewController];
  if (v8)
  {
    v9 = v8;
    [v8 dismissViewControllerAnimated:1 completion:0];
  }

  v10 = *&v2[v5];
  if (!v10)
  {
    goto LABEL_25;
  }

  [v10 willMoveToParentViewController_];
  v11 = *&v2[v5];
  if (!v11)
  {
    goto LABEL_25;
  }

  v12 = [v11 view];
  if (!v12)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v13 = v12;
  [v12 removeFromSuperview];

  v14 = *&v2[v5];
  if (v14)
  {
    [v14 removeFromParentViewController];
    v15 = *&v2[v5];
  }

  else
  {
LABEL_25:
    v15 = 0;
  }

  *&v2[v5] = 0;

  v23 = [*&v2[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_documentSectionBlueprintProvider] observableContentOverlayBlueprintData];
  [v23 next_];

  v24 = [*&v2[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController] v7[167]];
  if (!v24)
  {
    __break(1u);
    goto LABEL_68;
  }

  v25 = v24;
  [v24 setAccessibilityElementsHidden_];

LABEL_52:
  swift_allocObject();
  swift_weakInit();

  sub_1D79E75B0();

  v48 = &v2[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_pageDelegate];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v50 = *(v48 + 1);
    v51 = swift_getObjectType();
    v60[3] = ObjectType;
    v60[4] = &protocol witness table for ArticleViewController;
    v60[0] = v2;
    v52 = *(v50 + 8);
    v53 = v2;
    v52(v60, v51, v50);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  return result;
}

Swift::Void __swiftcall ArticleViewController.set(previewing:)(Swift::Bool previewing)
{
  v2 = v1;
  sub_1D798EA94(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - v6;
  if (!previewing)
  {
    sub_1D7A337A0();
    v8 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_headline;
    swift_beginAccess();
    v9 = *&v2[v8];
    swift_unknownObjectRetain();
    if (sub_1D7D2DB0C())
    {
      if (!v9)
      {
        return;
      }

      v10 = sub_1D7D3087C();
      (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
      sub_1D7D3084C();
      swift_unknownObjectRetain();
      v11 = v2;
      v12 = sub_1D7D3083C();
      v13 = swift_allocObject();
      v14 = MEMORY[0x1E69E85E0];
      v13[2] = v12;
      v13[3] = v14;
      v13[4] = v11;
      v13[5] = v9;
      sub_1D7AF94C0(0, 0, v7, &unk_1D7D4C4A0, v13);
    }

    swift_unknownObjectRelease();
  }
}

uint64_t ArticleViewController.identifier.getter()
{
  v1 = type metadata accessor for ArticleModel();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7B07BAC(v0 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_model, v4, type metadata accessor for ArticleModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *v4;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D7994174();
    v8 = *(v7 + 48);
  }

  else
  {
    sub_1D7996048();
    v8 = *(v9 + 48);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  sub_1D7B09144(v4 + v8, type metadata accessor for ArticleNavigationAction);
  return v6;
}

uint64_t sub_1D7B03714()
{
  v1 = type metadata accessor for ArticleModel();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7B07BAC(*v0 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_model, v4, type metadata accessor for ArticleModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *v4;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D7994174();
    v8 = *(v7 + 48);
  }

  else
  {
    sub_1D7996048();
    v8 = *(v9 + 48);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  sub_1D7B09144(v4 + v8, type metadata accessor for ArticleNavigationAction);
  return v6;
}

uint64_t ArticleViewController.selectedText.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController) selectedText];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D7D3034C();

  return v3;
}

uint64_t sub_1D7B038E0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController) selectedText];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D7D3034C();

  return v3;
}

uint64_t sub_1D7B039A4(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_pageDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D7B03A14(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_pageDelegate;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return sub_1D7B09324;
}

Swift::Void __swiftcall ArticleViewController.scrollViewDidScroll(_:)(UIScrollView *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_scrollDebounce;
  if (*(v1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_scrollDebounce))
  {
    goto LABEL_5;
  }

  if ([*(v1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_keyCommandManager) hasBeenTraversed])
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a1;
    sub_1D7B08F68(0, &qword_1EE0BB210, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D87B0]);
    swift_allocObject();
    v7 = a1;
    *(v2 + v4) = sub_1D7D2C5DC();
  }

  if (*(v2 + v4))
  {
LABEL_5:

    sub_1D7D2C5CC();
  }

  [(UIScrollView *)a1 contentOffset];
  v9 = v8;
  v10 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_footers;
  swift_beginAccess();
  v11 = *(v2 + v10);
  if (v11 >> 62)
  {
    goto LABEL_40;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = &selRef_nowPlayingPlaybackControlsDidTapNextTrack_; v12; i = &selRef_nowPlayingPlaybackControlsDidTapNextTrack_)
  {
    v46 = v2;
    v47 = a1;

    a1 = 0;
    v14 = 0;
    v2 = &selRef_destinationURL;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1DA70EF00](a1, v11);
      }

      else
      {
        if (a1 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v16 = *(v11 + 8 * a1 + 32);
      }

      v17 = v16;
      v18 = &a1->super.super.super.isa + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      if (v14)
      {

        if (v18 == v12)
        {
LABEL_31:

          return;
        }

        v14 = 1;
LABEL_10:
        a1 = (a1 + 1);
      }

      else
      {
        v19 = [v16 i[167]];
        if (!v19)
        {
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v20 = v19;
        [v19 frame];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;

        v48.origin.x = v22;
        v48.origin.y = v24;
        v48.size.width = v26;
        v48.size.height = v28;
        if (CGRectGetMinY(v48) <= v9)
        {
          v29 = [v17 i[167]];
          if (!v29)
          {
            goto LABEL_43;
          }

          v30 = v29;
          [v29 frame];
          v32 = v31;
          v34 = v33;
          v36 = v35;
          v38 = v37;

          v49.origin.x = v32;
          v49.origin.y = v34;
          v49.size.width = v36;
          v49.size.height = v38;
          if (v9 <= CGRectGetMaxY(v49))
          {
            v39 = [v17 i[167]];
            if (!v39)
            {
              goto LABEL_44;
            }

            v40 = v39;
            v41 = [v39 backgroundColor];

            if (v41)
            {
              v15 = v41;
              v14 = 1;
              [(UIScrollView *)v47 _setPocketColor:v15 forEdge:1];

              if (v18 == v12)
              {
                goto LABEL_31;
              }

              goto LABEL_10;
            }

            if (v18 == v12)
            {
LABEL_32:

              v2 = v46;
              a1 = v47;
              goto LABEL_33;
            }

            v14 = 0;
            a1 = (a1 + 1);
          }

          else
          {

            if (v18 == v12)
            {
              goto LABEL_32;
            }

            v14 = 0;
            a1 = (a1 + 1);
          }
        }

        else
        {

          if (v18 == v12)
          {
            goto LABEL_32;
          }

          v14 = 0;
          a1 = (a1 + 1);
        }
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    v12 = sub_1D7D3167C();
  }

LABEL_33:
  v42 = *(v2 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_mastheadViewController);
  if (v42)
  {
    v43 = [v42 i[167]];
    if (v43)
    {
      v44 = v43;
      v45 = [v43 backgroundColor];

      if (v45)
      {
        [(UIScrollView *)a1 _setPocketColor:v45 forEdge:1];
      }
    }

    else
    {
LABEL_45:
      __break(1u);
    }
  }
}