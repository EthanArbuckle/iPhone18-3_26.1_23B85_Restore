uint64_t sub_2195E32C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a2;
  v34 = a3;
  v6 = type metadata accessor for SavedFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ArticleListSavedFeedGroup();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  v15 = type metadata accessor for SavedFeedSectionDescriptor();
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953D48();
  v19 = v18;
  sub_219BE6934();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2195E3A08(v17, type metadata accessor for SavedFeedSectionDescriptor);
    }

    v21 = *(v19 - 8);
    (*(v21 + 16))(a4, a1, v19);
  }

  else
  {
    sub_2195E391C(v17, v14, type metadata accessor for ArticleListSavedFeedGroup);
    v22 = *v14;
    v23 = *(v14 + 1);
    v24 = *(v9 + 20);
    v25 = sub_219BED8D4();
    (*(*(v25 - 8) + 16))(&v12[v24], &v14[v24], v25);
    *v12 = v22;
    *(v12 + 1) = v23;
    v26 = *(v9 + 24);
    v32 = a4;
    *&v12[v26] = v33;
    refreshed = type metadata accessor for SavedFeedRefreshBlueprintModifier();
    v28 = v34;
    __swift_project_boxed_opaque_existential_1((v34 + *(refreshed + 20)), *(v34 + *(refreshed + 20) + 24));
    sub_2195E39A0(v12, v8, type metadata accessor for ArticleListSavedFeedGroup);
    v29 = *(type metadata accessor for SavedFeedRefreshResult() + 28);

    a4 = v32;

    sub_219B52314(v8, v28 + v29, a4);
    sub_2195E3A08(v8, type metadata accessor for SavedFeedGroup);
    sub_2195E3A08(v12, type metadata accessor for ArticleListSavedFeedGroup);
    sub_2195E3A08(v14, type metadata accessor for ArticleListSavedFeedGroup);
    v21 = *(v19 - 8);
  }

  return (*(v21 + 56))(a4, 0, 1, v19);
}

uint64_t sub_2195E3648(uint64_t a1)
{
  v2 = sub_2195E3744(&qword_280EA2118, type metadata accessor for SavedFeedRefreshBlueprintModifier);

  return MEMORY[0x2821D4040](a1, v2);
}

uint64_t sub_2195E3744(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2195E37D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SavedFeedSectionDescriptor();
    v8[1] = type metadata accessor for SavedFeedModel(255);
    v8[2] = sub_2195E3744(&qword_280EBA5A0, type metadata accessor for SavedFeedSectionDescriptor);
    v8[3] = sub_2195E3744(&unk_280EDBC60, type metadata accessor for SavedFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_2195E38C8()
{
  result = qword_280EA2120;
  if (!qword_280EA2120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA2120);
  }

  return result;
}

uint64_t sub_2195E391C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2195E39A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2195E3A08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2195E3A7C()
{
  result = qword_27CC1CC70;
  if (!qword_27CC1CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CC70);
  }

  return result;
}

uint64_t sub_2195E3AD0()
{
  if (*(v0 + 208))
  {
    v1 = *(v0 + 208);
  }

  else
  {
    v2 = v0;
    sub_219BE3204();
    v3 = sub_219BE2E54();
    sub_219BE2F84();

    v4 = sub_219BE2E54();
    sub_2195E5AC4(0, &qword_280EE7F00, type metadata accessor for MyMagazinesState, MEMORY[0x277D6C9F8]);
    sub_219BE2F94();

    v5 = sub_219BE2E54();
    v1 = sub_219BE3034();

    *(v2 + 208) = v1;
  }

  return v1;
}

uint64_t sub_2195E3C88(uint64_t a1, void *a2)
{
  v2 = a2[10];
  __swift_project_boxed_opaque_existential_1(a2 + 6, a2[9]);
  sub_2194B2E44(&unk_282A283D8);
  v3 = (*(v2 + 32))();

  return v3;
}

uint64_t sub_2195E3D0C(uint64_t a1, void *a2)
{
  v2 = a2[9];
  v3 = a2[10];
  __swift_project_boxed_opaque_existential_1(a2 + 6, v2);
  (*(v3 + 8))(v2, v3);
  sub_219BE1A44();

  sub_219BE2184();
}

uint64_t sub_2195E3D9C(void *a1)
{
  v1 = a1[9];
  v2 = a1[10];
  __swift_project_boxed_opaque_existential_1(a1 + 6, v1);
  (*(v2 + 8))(v1, v2);
  sub_219BE1A44();

  v3 = sub_219BE2E54();
  sub_219BE21A4();

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_219BE1A04();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

void sub_2195E3E88()
{
  v1 = type metadata accessor for MyMagazinesState(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195E5AC4(0, &qword_280EE7F00, type metadata accessor for MyMagazinesState, MEMORY[0x277D6C9F8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = (v18 - v7);
  v9 = v0[9];
  v10 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 6, v9);
  (*(v10 + 8))(v9, v10);
  sub_219BE1A44();

  sub_219BE2184();

  v11 = (*(v6 + 88))(v8, v5);
  if (v11 == *MEMORY[0x277D6C9F0])
  {
    (*(v6 + 96))(v8, v5);
    v12 = *v8;
    if (qword_280E8D920 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_219C09BA0;
    v19 = 0;
    v20 = 0xE000000000000000;
    v18[1] = v12;
    sub_2186CFDE4(0, &qword_280E8B580);
    sub_219BF7484();
    v14 = v19;
    v15 = v20;
    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = sub_2186FC3BC();
    *(v13 + 32) = v14;
    *(v13 + 40) = v15;
    sub_219BF6214();
    sub_219BE5314();
  }

  else if (v11 == *MEMORY[0x277D6C9E8])
  {
    (*(v6 + 96))(v8, v5);
    v16 = sub_2190704B8(v8, v3, type metadata accessor for MyMagazinesState);
    MEMORY[0x28223BE20](v16);
    sub_219BE3204();

    v17 = sub_219BE2E54();
    sub_219BE2F74();

    sub_219070458(v3, type metadata accessor for MyMagazinesState);
  }

  else if (v11 != *MEMORY[0x277D6C9E0])
  {
    sub_219BF7514();
    __break(1u);
  }
}

uint64_t sub_2195E42B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MyMagazinesState(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_219BDC8E4();

  v8 = v17;
  v16[4] = a2;
  v16[5] = a1;
  sub_2195E5AC4(0, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
  sub_219BE3204();
  sub_2195E5B7C(a2, v7, type metadata accessor for MyMagazinesState);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = (v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  sub_2190704B8(v7, v11 + v9, type metadata accessor for MyMagazinesState);
  *(v11 + v10) = a1;
  v12 = v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v12 = sub_2195E6034;
  *(v12 + 8) = a1;
  *(v12 + 16) = v8;
  swift_retain_n();
  v13 = sub_219BE2E54();
  v14 = sub_219BE2F64();

  return v14;
}

uint64_t sub_2195E44DC(_OWORD *a1)
{
  v1 = a1[1];
  v6[0] = *a1;
  v6[1] = v1;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 24);
      ObjectType = swift_getObjectType();
      (*(v4 + 16))(v3, &off_282A66150, v6, ObjectType, v4);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2195E458C()
{
  sub_218774F78(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  __swift_destroy_boxed_opaque_existential_1(v0 + 128);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_2195E45EC()
{
  sub_2195E458C();

  return swift_deallocClassInstance();
}

uint64_t sub_2195E4644(char a1)
{
  if (a1 == 4)
  {

    sub_219BDC8E4();
  }

  sub_219BDC8F4();

  sub_219BDC8E4();

  sub_2195E5AC4(0, &qword_280EE7F00, type metadata accessor for MyMagazinesState, MEMORY[0x277D6C9F8]);
  sub_219BE3204();
  *(swift_allocObject() + 16) = v4;
  v1 = sub_219BE2E54();
  v2 = sub_219BE2F84();

  return v2;
}

uint64_t sub_2195E47D8(uint64_t a1, void *a2, int a3)
{
  v30 = a3;
  v4 = type metadata accessor for MyMagazinesState(0);
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  sub_2195E5AC4(0, &qword_280EE7F00, type metadata accessor for MyMagazinesState, MEMORY[0x277D6C9F8]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = a2[9];
  v15 = a2[10];
  __swift_project_boxed_opaque_existential_1(a2 + 6, v14);
  (*(v15 + 8))(v14, v15);
  sub_219BE1A44();

  sub_219BE2184();

  v16 = (*(v11 + 88))(v13, v10);
  if (v16 == *MEMORY[0x277D6C9F0])
  {
    (*(v11 + 96))(v13, v10);
  }

  else
  {
    if (v16 == *MEMORY[0x277D6C9E8])
    {
      (*(v11 + 96))(v13, v10);
      v17 = sub_2190704B8(v13, v8, type metadata accessor for MyMagazinesState);
      MEMORY[0x28223BE20](v17);
      sub_2195E5AC4(0, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
      sub_219BE3204();
      v18 = v29;
      sub_2195E5B7C(v8, v29, type metadata accessor for MyMagazinesState);
      v19 = (*(v28 + 80) + 16) & ~*(v28 + 80);
      v20 = (v5 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = swift_allocObject();
      sub_2190704B8(v18, v21 + v19, type metadata accessor for MyMagazinesState);
      *(v21 + v20) = a2;
      v22 = v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v22 = sub_2195E5B28;
      *(v22 + 8) = a2;
      *(v22 + 16) = v30;
      swift_retain_n();
      v23 = sub_219BE2E54();
      v24 = sub_219BE2F64();

      sub_219070458(v8, type metadata accessor for MyMagazinesState);
      return v24;
    }

    if (v16 != *MEMORY[0x277D6C9E0])
    {
      result = sub_219BF7514();
      __break(1u);
      return result;
    }

    sub_2195E5A54();
    swift_allocError();
    *v26 = 0;
  }

  sub_21870F4C4(0, &qword_27CC13080, &type metadata for MagazineGridModel, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE2FF4();
}

uint64_t sub_2195E4C9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MyMagazinesIssue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_2195ED7DC();
  v9 = *(v8 + 16);
  if (v9)
  {
    v23[1] = v2;
    v23[2] = a2;
    v25 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v9, 0);
    v10 = v25;
    v11 = *(v5 + 80);
    v23[0] = v8;
    v12 = v8 + ((v11 + 32) & ~v11);
    v24 = *(v5 + 72);
    do
    {
      sub_2195E5B7C(v12, v7, type metadata accessor for MyMagazinesIssue);
      v13 = [objc_msgSend(*v7 sourceChannel];
      swift_unknownObjectRelease();
      v14 = sub_219BF5414();
      v16 = v15;

      sub_219070458(v7, type metadata accessor for MyMagazinesIssue);
      v25 = v10;
      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_21870B65C((v17 > 1), v18 + 1, 1);
        v10 = v25;
      }

      *(v10 + 16) = v18 + 1;
      v19 = v10 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v12 += v24;
      --v9;
    }

    while (v9);
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  v25 = v10;
  sub_21870F4C4(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_218ACCAC0();
  sub_219BF56E4();

  v20 = off_282A4D758;
  type metadata accessor for TagService();
  v21 = v20();

  return v21;
}

uint64_t sub_2195E4F70()
{
  sub_21870F4C4(0, &qword_27CC13080, &type metadata for MagazineGridModel, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_2195E5008(void (*a1)(_OWORD *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, void *a7, uint64_t (*a8)(uint64_t), uint64_t a9, char a10)
{
  v83 = a8;
  v91 = a7;
  v87 = a6;
  v84 = a2;
  v85 = a1;
  v11 = type metadata accessor for MyMagazinesIssue(0);
  v90 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v89 = &v82 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v82 - v17;
  if (a5 >> 62)
  {
    goto LABEL_64;
  }

  for (i = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    v82 = v14;
    if (i)
    {
      v14 = 0;
      v92 = a5 & 0xFFFFFFFFFFFFFF8;
      v93 = a5 & 0xC000000000000001;
      v20 = MEMORY[0x277D84F98];
      v88 = a5;
      v86 = v18;
      while (1)
      {
        if (v93)
        {
          v21 = MEMORY[0x21CECE0F0](v14, a5);
          v22 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_59;
          }
        }

        else
        {
          if (v14 >= *(v92 + 16))
          {
            goto LABEL_60;
          }

          v21 = *(a5 + 8 * v14 + 32);

          v22 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_59;
          }
        }

        v23 = [*(v21 + 16) identifier];
        v24 = sub_219BF5414();
        v26 = v25;

        a5 = v20;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v96 = v20;
        v18 = sub_21870F700(v24, v26);
        v29 = v20[2];
        v30 = (v28 & 1) == 0;
        v31 = v29 + v30;
        if (__OFADD__(v29, v30))
        {
          goto LABEL_61;
        }

        v32 = v28;
        if (*(a5 + 24) >= v31)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v28)
            {
              goto LABEL_5;
            }
          }

          else
          {
            a5 = v96;
            sub_219492A6C();
            if (v32)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
          sub_219481C7C(v31, isUniquelyReferenced_nonNull_native);
          a5 = *v96;
          v33 = sub_21870F700(v24, v26);
          if ((v32 & 1) != (v34 & 1))
          {
            result = sub_219BF79A4();
            __break(1u);
            return result;
          }

          v18 = v33;
          if (v32)
          {
LABEL_5:

            v20 = *v96;
            *(*(*v96 + 56) + 8 * v18) = v21;

            goto LABEL_6;
          }
        }

        v20 = *v96;
        *(*v96 + 8 * (v18 >> 6) + 64) |= 1 << v18;
        v35 = (v20[6] + 16 * v18);
        *v35 = v24;
        v35[1] = v26;
        *(v20[7] + 8 * v18) = v21;

        v36 = v20[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_63;
        }

        v20[2] = v38;
LABEL_6:
        ++v14;
        v18 = v86;
        a5 = v88;
        if (v22 == i)
        {
          goto LABEL_25;
        }
      }
    }

    v20 = MEMORY[0x277D84F98];
LABEL_25:
    v92 = v20;
    a5 = v87;
    v39 = sub_2195ED7DC();
    v40 = v39;
    v41 = MEMORY[0x277D84F90];
    v88 = *(v39 + 16);
    if (v88)
    {
      v42 = 0;
      v87 = v39;
      while (v42 < *(v40 + 16))
      {
        v14 = v41;
        v43 = (*(v90 + 80) + 32) & ~*(v90 + 80);
        v93 = *(v90 + 72);
        sub_2195E5B7C(v40 + v43 + v93 * v42, v18, type metadata accessor for MyMagazinesIssue);
        v44 = v91[24];
        ObjectType = swift_getObjectType();
        v46 = [*v18 identifier];
        v47 = v18;
        v48 = sub_219BF5414();
        v50 = v49;

        a5 = sub_21987B00C(v48, v50, ObjectType, v44);

        if (a5)
        {
          sub_2190704B8(v47, v89, type metadata accessor for MyMagazinesIssue);
          v41 = v14;
          v51 = swift_isUniquelyReferenced_nonNull_native();
          *v96 = v14;
          v18 = v47;
          if ((v51 & 1) == 0)
          {
            a5 = v96;
            sub_218C35030(0, *(v14 + 16) + 1, 1);
            v41 = *v96;
          }

          v40 = v87;
          v14 = v93;
          v53 = *(v41 + 16);
          v52 = *(v41 + 24);
          if (v53 >= v52 >> 1)
          {
            a5 = v96;
            sub_218C35030(v52 > 1, v53 + 1, 1);
            v41 = *v96;
          }

          *(v41 + 16) = v53 + 1;
          sub_2190704B8(v89, v41 + v43 + v53 * v14, type metadata accessor for MyMagazinesIssue);
        }

        else
        {
          sub_219070458(v47, type metadata accessor for MyMagazinesIssue);
          v18 = v47;
          v41 = v14;
          v40 = v87;
        }

        if (v88 == ++v42)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

LABEL_36:

    v54 = *(v41 + 16);
    if (v54)
    {
      *v96 = MEMORY[0x277D84F90];
      sub_219BF73F4();
      v55 = v41 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
      v56 = *(v90 + 72);
      v57 = v82;
      do
      {
        sub_2195E5B7C(v55, v57, type metadata accessor for MyMagazinesIssue);
        v58 = *v57;
        sub_219070458(v57, type metadata accessor for MyMagazinesIssue);
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        v55 += v56;
        --v54;
      }

      while (v54);

      v59 = *v96;
    }

    else
    {

      v59 = MEMORY[0x277D84F90];
    }

    a5 = *__swift_project_boxed_opaque_existential_1(v91 + 16, v91[19]);
    v14 = sub_21945CCB8(v59);

    v60 = *(v14 + 16);
    if (!v60)
    {
      break;
    }

    v61 = 0;
    v62 = v14 + 32;
    v91 = (v60 - 1);
    v63 = MEMORY[0x277D84F90];
    v93 = v14 + 32;
LABEL_43:
    v18 = v62 + 32 * v61;
    v64 = v61;
    while (v64 < *(v14 + 16))
    {
      v65 = *(v18 + 9);
      *v96 = *v18;
      *&v96[9] = v65;
      v66 = *v96;
      sub_218950CAC(v96, v94);
      v67 = [objc_msgSend(v66 sourceChannel)];
      swift_unknownObjectRelease();
      v68 = sub_219BF5414();
      v70 = v69;

      a5 = v92;
      if (*(v92 + 16))
      {
        a5 = sub_21870F700(v68, v70);
        v72 = v71;

        if (v72)
        {
          a5 = *(*(v92 + 56) + 8 * a5);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v63 = sub_2191FA8B4(0, *(v63 + 2) + 1, 1, v63);
          }

          v62 = v93;
          v74 = *(v63 + 2);
          v73 = *(v63 + 3);
          if (v74 >= v73 >> 1)
          {
            v63 = sub_2191FA8B4((v73 > 1), v74 + 1, 1, v63);
          }

          v61 = (v64 + 1);
          v75 = *&v96[16];
          v76 = v96[24];
          *(v63 + 2) = v74 + 1;
          v77 = &v63[120 * v74];
          v78 = *v96;
          *(v77 + 4) = a5;
          *(v77 + 40) = v78;
          *(v77 + 7) = v75;
          v77[64] = v76;
          LODWORD(v75) = *(v94 + 3);
          *(v77 + 65) = v94[0];
          *(v77 + 17) = v75;
          v77[96] = 0;
          *(v77 + 10) = 0;
          *(v77 + 11) = 0;
          *(v77 + 9) = 0;
          LODWORD(v75) = *&v97[3];
          *(v77 + 97) = *v97;
          *(v77 + 25) = v75;
          *(v77 + 136) = 0u;
          *(v77 + 120) = 0u;
          *(v77 + 104) = 0u;
          if (v91 != v64)
          {
            goto LABEL_43;
          }

          goto LABEL_57;
        }

        sub_218950D08(v96);
      }

      else
      {
        sub_218950D08(v96);
      }

      v64 = (v64 + 1);
      v18 += 32;
      if (v60 == v64)
      {
        goto LABEL_57;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    ;
  }

  v63 = MEMORY[0x277D84F90];
LABEL_57:

  v80 = v83(v79);
  *v96 = v63;
  *&v96[16] = 0xE000000000000000;
  *&v96[24] = xmmword_219C0A870;
  v96[40] = 0;
  *&v96[48] = v80;
  v96[56] = a10;
  v94[0] = v63;
  v94[1] = *&v96[16];
  v95[0] = *&v96[32];
  *(v95 + 9) = *&v96[41];
  v85(v94);
  return sub_219093EAC(v96);
}

double sub_2195E58DC@<D0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  *&result = 1;
  *(v2 + 16) = xmmword_219C14CF0;
  *(v2 + 32) = 2;
  *a1 = v2 | 0x6000000000000006;
  return result;
}

uint64_t sub_2195E5958(uint64_t a1)
{
  result = sub_2195E59D0(&qword_27CC1CC78);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2195E59D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MyMagazineDownloadsGridModelLoader();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2195E5A54()
{
  result = qword_27CC1CC88;
  if (!qword_27CC1CC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CC88);
  }

  return result;
}

void sub_2195E5AC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2195E5B7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_2195E5BE4()
{
  v0 = sub_2191FB00C(0, 1, 1, MEMORY[0x277D84F90]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = sub_2191FB00C((v1 > 1), v2 + 1, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  *&v0[8 * v2 + 32] = &unk_282A28468;
  v5 = v2 + 2;
  if (v3 < v5)
  {
    v0 = sub_2191FB00C((v1 > 1), v5, 1, v0);
  }

  *(v0 + 2) = v5;
  *&v0[8 * v4 + 32] = &unk_282A28428;
  return v0;
}

uint64_t sub_2195E5CA8()
{
  v1 = v0[9];
  v2 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 6, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t objectdestroy_5Tm_1()
{
  v1 = *(type metadata accessor for MyMagazinesState(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  v3 = type metadata accessor for MyMagazinesIssue(0);
  if (!(*(*(v3 - 1) + 48))(v2, 1, v3))
  {

    v4 = v3[6];
    v5 = sub_219BDBD34();
    v10 = *(v5 - 8);
    v6 = *(v10 + 48);
    if (!v6(v2 + v4, 1, v5))
    {
      (*(v10 + 8))(v2 + v4, v5);
    }

    v7 = v3[7];
    if (!v6(v2 + v7, 1, v5))
    {
      (*(v10 + 8))(v2 + v7, v5);
    }

    v8 = v3[8];
    if (!v6(v2 + v8, 1, v5))
    {
      (*(v10 + 8))(v2 + v8, v5);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_2195E6068(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x277D84F90];
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_21870B65C(0, *(v8 + 16) + 1, 1);
          v8 = v19;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_21870B65C((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_16:

    return v8;
  }

  return result;
}

uint64_t sub_2195E61E0(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  sub_2187996EC(0, &qword_280E91D70, &qword_280E8E810, 0x277D312B0, MEMORY[0x277D31FA8]);
  v39 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v37 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v13 = MEMORY[0x277D84F90];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = *(v10 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v12;
      v18 = v10;
      v19 = a1;
      v20 = v37;
      (*(v10 + 16))(v37, v17, v39);
      v21 = v20;
      a1 = v19;
      v22 = v38;
      v23 = v19(v21);
      if (v22)
      {
        (*v32)(v37, v39);

        return v13;
      }

      v38 = 0;
      if (v23)
      {
        v24 = *v33;
        (*v33)(v36, v37, v39);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_218C34408(0, *(v13 + 16) + 1, 1);
          v13 = v40;
        }

        v27 = *(v13 + 16);
        v26 = *(v13 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_218C34408(v26 > 1, v27 + 1, 1);
          v13 = v40;
        }

        *(v13 + 16) = v27 + 1;
        result = (v24)(v13 + v14 + v27 * v15, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v37, v39);
        a3 = v16;
      }

      ++v12;
      v10 = v18;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
LABEL_14:

    return v13;
  }

  return result;
}

void *sub_2195E64D8(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v18 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
LABEL_18:
    v8 = sub_219BF7214();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      v16 = v5 & 0xC000000000000001;
      v14 = v5;
      while (1)
      {
        if (v16)
        {
          v10 = MEMORY[0x21CECE0F0](v9, v5);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v17 = v10;
        v3 = a2;
        v12 = a1(&v17);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          sub_219BF73D4();
          sub_219BF7414();
          v5 = v14;
          sub_219BF7424();
          v3 = &v18;
          sub_219BF73E4();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v18;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = MEMORY[0x277D84F90];
LABEL_20:

  return v3;
}

uint64_t sub_2195E66FC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x21CECE0F0](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_219BF73D4();
        sub_219BF7414();
        v4 = v15;
        sub_219BF7424();
        sub_219BF73E4();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

uint64_t sub_2195E69E0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), void (*a7)(BOOL, uint64_t, uint64_t))
{
  v25 = a7;
  v30 = a6;
  v32 = a1;
  v33 = a2;
  v10 = a4(0);
  v31 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v29 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v28 = *(a3 + 16);
  if (v28)
  {
    v16 = 0;
    v17 = MEMORY[0x277D84F90];
    v26 = a5;
    v27 = a3;
    while (v16 < *(a3 + 16))
    {
      v18 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v19 = *(v31 + 72);
      sub_2195EB0C8(a3 + v18 + v19 * v16, v15, a5);
      v20 = v32(v15);
      if (v7)
      {
        sub_218807FB4(v15, a5);

        goto LABEL_15;
      }

      if (v20)
      {
        sub_2195EB210(v15, v29, v30);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25(0, *(v17 + 16) + 1, 1);
          v17 = v34;
        }

        v23 = *(v17 + 16);
        v22 = *(v17 + 24);
        if (v23 >= v22 >> 1)
        {
          v25(v22 > 1, v23 + 1, 1);
          v17 = v34;
        }

        *(v17 + 16) = v23 + 1;
        result = sub_2195EB210(v29, v17 + v18 + v23 * v19, v30);
        a5 = v26;
        a3 = v27;
      }

      else
      {
        result = sub_218807FB4(v15, a5);
      }

      if (v28 == ++v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
LABEL_15:

    return v17;
  }

  return result;
}

uint64_t sub_2195E6C2C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (v7 < *(a3 + 16))
    {
      v9 = a3 + 32 * v7;
      v10 = *(v9 + 48);
      v16 = *(v9 + 32);
      v17[0] = v16;
      v17[1] = v10;
      v15 = v10;

      v11 = v6(v17);
      if (v3)
      {

        return v8;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v18 = v8;
        if ((result & 1) == 0)
        {
          result = sub_218C36A50(0, *(v8 + 16) + 1, 1);
          v8 = v18;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_218C36A50((v12 > 1), v13 + 1, 1);
          v8 = v18;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 32 * v13;
        *(v14 + 32) = v16;
        *(v14 + 48) = v15;
      }

      else
      {
      }

      if (v5 == ++v7)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_14:

    return v8;
  }

  return result;
}

uint64_t sub_2195E6DBC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v13 = result;
    while (v7 < *(a3 + 16))
    {
      v9 = *(a3 + 8 * v7 + 32);
      v14 = v9;

      v10 = v6(&v14);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v15 = v8;
        if ((result & 1) == 0)
        {
          result = sub_218C37210(0, *(v8 + 16) + 1, 1);
          v8 = v15;
        }

        v12 = *(v8 + 16);
        v11 = *(v8 + 24);
        if (v12 >= v11 >> 1)
        {
          result = sub_218C37210((v11 > 1), v12 + 1, 1);
          v8 = v15;
        }

        *(v8 + 16) = v12 + 1;
        *(v8 + 8 * v12 + 32) = v9;
        v6 = v13;
      }

      else
      {
      }

      if (v5 == ++v7)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_14:

    return v8;
  }

  return result;
}

void *sub_2195E6F24(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v18 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
LABEL_18:
    v8 = sub_219BF7214();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      v16 = v5 & 0xC000000000000001;
      v14 = v5;
      while (1)
      {
        if (v16)
        {
          v10 = MEMORY[0x21CECE0F0](v9, v5);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            swift_unknownObjectRelease();

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);
          swift_unknownObjectRetain();
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v17 = v10;
        v3 = a2;
        v12 = a1(&v17);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          sub_219BF73D4();
          sub_219BF7414();
          v5 = v14;
          sub_219BF7424();
          v3 = &v18;
          sub_219BF73E4();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v18;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = MEMORY[0x277D84F90];
LABEL_20:

  return v3;
}

uint64_t sub_2195E70E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_218760638();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195EB0C8(a3, v10, sub_218760638);
  v11 = sub_219BF5BF4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_218807FB4(v10, sub_218760638);
  }

  else
  {
    sub_219BF5BE4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_219BF5B44();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_219BF54B4() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_218807FB4(a3, sub_218760638);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_218807FB4(a3, sub_218760638);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2195E7394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_218760638();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195EB0C8(a3, v10, sub_218760638);
  v11 = sub_219BF5BF4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_218807FB4(v10, sub_218760638);
  }

  else
  {
    sub_219BF5BE4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_219BF5B44();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a3;
      v18 = sub_219BF54B4() + 32;
      sub_2187996EC(0, &qword_280E8EB20, &qword_280E8DA30, 0x277D312A8, MEMORY[0x277D83940]);

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_218807FB4(v22[0], sub_218760638);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_218807FB4(a3, sub_218760638);
  sub_2187996EC(0, &qword_280E8EB20, &qword_280E8DA30, 0x277D312A8, MEMORY[0x277D83940]);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2195E770C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  sub_218760638();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195EB0C8(a3, v12, sub_218760638);
  v13 = sub_219BF5BF4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_218807FB4(v12, sub_218760638);
  }

  else
  {
    sub_219BF5BE4();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_219BF5B44();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_219BF54B4() + 32;
      a6(0);

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_218807FB4(a3, sub_218760638);

      return v22;
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

  sub_218807FB4(a3, sub_218760638);
  a6(0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2195E79DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_218760638();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195EB0C8(a3, v10, sub_218760638);
  v11 = sub_219BF5BF4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_218807FB4(v10, sub_218760638);
  }

  else
  {
    sub_219BF5BE4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_219BF5B44();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a3;
      v18 = sub_219BF54B4() + 32;
      sub_2186D6710(0, &qword_280E8E680);

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_218807FB4(v22[0], sub_218760638);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_218807FB4(a3, sub_218760638);
  sub_2186D6710(0, &qword_280E8E680);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

id PushNotificationDataManager.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_userInfo] removeObserver_];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_2195E7F00(char a1, const char **a2)
{
  v5 = *(*__swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService), *(v2 + OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService + 24)) + 16);
  v6 = *a2;

  return [v5 v6];
}

Swift::Void __swiftcall PushNotificationDataManager.refreshSportsNotifications()()
{
  if ([*(v0 + OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_userInfo) sportsTopicNotificationsEnabledState] != 3)
  {
    return;
  }

  v1 = [*(v0 + OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_subscriptionController) cachedSubscribedTags];
  if (!v1)
  {
    goto LABEL_40;
  }

  v2 = v1;
  v23 = v0;
  sub_2186D6710(0, &qword_280E8E680);
  v3 = sub_219BF5924();

  v24 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_33;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CECE0F0](v6, v3);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_16:
          __break(1u);
          return;
        }
      }

      else
      {
        if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_33:
          v4 = sub_219BF7214();
          goto LABEL_5;
        }

        v7 = *(v3 + 8 * v6 + 32);
        swift_unknownObjectRetain();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_16;
        }
      }

      if ([v7 isSports])
      {
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v6;
      if (v8 == v4)
      {
        v9 = v24;
        v5 = MEMORY[0x277D84F90];
        goto LABEL_20;
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_20:

  if (v9 < 0 || (v9 & 0x4000000000000000) != 0)
  {
    v10 = sub_219BF7214();
    if (v10)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v10 = *(v9 + 16);
    if (v10)
    {
LABEL_23:
      sub_21870B65C(0, v10 & ~(v10 >> 63), 0);
      if ((v10 & 0x8000000000000000) == 0)
      {
        v11 = 0;
        v12 = v5;
        do
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x21CECE0F0](v11, v9);
          }

          else
          {
            v13 = *(v9 + 8 * v11 + 32);
            swift_unknownObjectRetain();
          }

          v14 = [v13 identifier];
          v15 = sub_219BF5414();
          v17 = v16;
          swift_unknownObjectRelease();

          v19 = *(v12 + 16);
          v18 = *(v12 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_21870B65C((v18 > 1), v19 + 1, 1);
          }

          ++v11;
          *(v12 + 16) = v19 + 1;
          v20 = v12 + 16 * v19;
          *(v20 + 32) = v15;
          *(v20 + 40) = v17;
        }

        while (v10 != v11);

        goto LABEL_36;
      }

      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }
  }

  v12 = MEMORY[0x277D84F90];
LABEL_36:
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v12;

  sub_2195E84E4(1, sub_2195EAE18, v22, 30.0);
}

uint64_t sub_2195E8388(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_218718690(result + OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService, v10);

    v5 = *(*__swift_project_boxed_opaque_existential_1(v10, v10[3]) + 24);
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = a2;
    v9[4] = sub_2195EB208;
    v9[5] = v7;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_218C1CBB4;
    v9[3] = &block_descriptor_83_0;
    v8 = _Block_copy(v9);

    [v5 fetchConfigurationIfNeededWithCompletion_];
    _Block_release(v8);
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return result;
}

uint64_t sub_2195E84E4(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  sub_218760638();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_debounceTasks;
  swift_beginAccess();
  v14 = *(v4 + v13);
  if (*(v14 + 16) && (v15 = sub_219320C08(a1 & 1), (v16 & 1) != 0))
  {
    v17 = (*(v14 + 56) + 24 * v15);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = v20;
    swift_retain_n();

    swift_endAccess();
    sub_2195EAE50(v18);
    sub_218A450F0();
    sub_219BF5C14();
  }

  else
  {
    swift_endAccess();
  }

  v22 = sub_219BF5BF4();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = a4;
  *(v23 + 40) = a2;
  *(v23 + 48) = a3;

  v24 = sub_2195E70E0(0, 0, v12, &unk_219C90BE0, v23);
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v5 + v13);
  *(v5 + v13) = 0x8000000000000000;
  sub_21948CFE8(v24, sub_218807D50, v25, a1 & 1, isUniquelyReferenced_nonNull_native);
  *(v5 + v13) = v28;
  swift_endAccess();
}

Swift::Void __swiftcall PushNotificationDataManager.upgradeSportsNotifications()()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_userInfo];
  if ([v2 sportsTopicNotificationsEnabledState] == 1)
  {
    if (qword_280EE5FC8 != -1)
    {
      swift_once();
    }

    v3 = sub_219BE5434();
    __swift_project_value_buffer(v3, qword_280F62670);
    v4 = sub_219BE5414();
    v5 = sub_219BF6214();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2186C1000, v4, v5, "Upgrading sports notifications enabled state.", v6, 2u);
      MEMORY[0x21CECF960](v6, -1, -1);
    }

    v7 = *(*__swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService], *&v1[OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService + 24]) + 16);

    [v7 setSportsTopicNotificationsEnabled_];
  }

  else
  {
    if (qword_280EE5FC8 != -1)
    {
      swift_once();
    }

    v8 = sub_219BE5434();
    __swift_project_value_buffer(v8, qword_280F62670);
    v12 = v0;
    oslog = sub_219BE5414();
    v9 = sub_219BF6214();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = [v2 sportsTopicNotificationsEnabledState];

      _os_log_impl(&dword_2186C1000, oslog, v9, "Will not upgrade sports notifications with sportsTopicNotificationsEnabledState=%lu", v10, 0xCu);
      MEMORY[0x21CECF960](v10, -1, -1);
      v11 = oslog;
    }

    else
    {

      v11 = v12;
    }
  }
}

id PushNotificationDataManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2195E8B48(char a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v7 = *(*__swift_project_boxed_opaque_existential_1((*v4 + OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService), *(*v4 + OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService + 24)) + 16);
  v8 = *a4;

  return [v7 v8];
}

id PushNotificationDataManager.userInfoDidChangeSportsTopicNotificationsEnabledState(_:fromCloud:)(void *a1, char a2)
{
  result = [a1 sportsTopicNotificationsEnabledState];
  if (result == 2)
  {
    v6 = OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_debounceTasks;
    swift_beginAccess();
    v7 = *(v2 + v6);
    if (*(v7 + 16) && (v8 = sub_219320C08(1), (v9 & 1) != 0))
    {
      v10 = (*(v7 + 56) + 24 * v8);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      v14 = swift_allocObject();
      *(v14 + 16) = v12;
      *(v14 + 24) = v13;
      swift_retain_n();

      swift_endAccess();
      sub_2195EAE50(v11);
      sub_218A450F0();
      sub_219BF5C14();
    }

    else
    {
      swift_endAccess();
    }

    swift_beginAccess();
    v15 = sub_2195EA76C(1);
    swift_endAccess();
    result = sub_2195EAE50(v15);
  }

  if ((a2 & 1) == 0)
  {
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = a1;

    v18 = a1;
    sub_2195E84E4(0, sub_2195EAE20, v17, 0.3);
  }

  return result;
}

char *sub_2195E8EA0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    result = [*&result[OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_subscriptionController] cachedSubscribedTags];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    v41 = a2;
    sub_2186D6710(0, &qword_280E8E680);
    v6 = sub_219BF5924();

    aBlock = MEMORY[0x277D84F90];
    if (v6 >> 62)
    {
      goto LABEL_32;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    v42 = v4;
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v9 = 0;
      v4 = v6 & 0xC000000000000001;
      while (1)
      {
        if (v4)
        {
          v10 = MEMORY[0x21CECE0F0](v9, v6);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:
            v12 = aBlock;
            v8 = MEMORY[0x277D84F90];
            goto LABEL_19;
          }
        }

        else
        {
          if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_32:
            v7 = sub_219BF7214();
            goto LABEL_5;
          }

          v10 = *(v6 + 8 * v9 + 32);
          swift_unknownObjectRetain();
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_16;
          }
        }

        if ([v10 isSports])
        {
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v9;
        if (v11 == v7)
        {
          goto LABEL_17;
        }
      }
    }

    v12 = MEMORY[0x277D84F90];
LABEL_19:

    if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
    {
      v13 = sub_219BF7214();
      if (v13)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v13 = *(v12 + 16);
      if (v13)
      {
LABEL_22:
        aBlock = v8;
        sub_21870B65C(0, v13 & ~(v13 >> 63), 0);
        if (v13 < 0)
        {
          __break(1u);
          goto LABEL_51;
        }

        v14 = 0;
        v6 = aBlock;
        do
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x21CECE0F0](v14, v12);
          }

          else
          {
            v15 = *(v12 + 8 * v14 + 32);
            swift_unknownObjectRetain();
          }

          v16 = [v15 identifier];
          v17 = sub_219BF5414();
          v19 = v18;
          swift_unknownObjectRelease();

          aBlock = v6;
          v21 = *(v6 + 16);
          v20 = *(v6 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_21870B65C((v20 > 1), v21 + 1, 1);
            v6 = aBlock;
          }

          ++v14;
          *(v6 + 16) = v21 + 1;
          v22 = v6 + 16 * v21;
          *(v22 + 32) = v17;
          *(v22 + 40) = v19;
        }

        while (v13 != v14);

LABEL_35:
        v23 = [v41 sportsTopicNotificationsEnabledState];
        v8 = v42;
        if (v23 > 1)
        {
          if (v23 == 2)
          {
            v24 = *(*__swift_project_boxed_opaque_existential_1(&v42[OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService], *&v42[OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService + 24]) + 24);
            v38 = swift_allocObject();
            swift_weakInit();
            v39 = swift_allocObject();
            *(v39 + 16) = v38;
            *(v39 + 24) = v6;
            v47 = sub_2195EB28C;
            v48 = v39;
            aBlock = MEMORY[0x277D85DD0];
            v44 = 1107296256;
            v27 = &block_descriptor_48_0;
            goto LABEL_48;
          }

          if (v23 == 3)
          {
            v24 = *(*__swift_project_boxed_opaque_existential_1(&v42[OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService], *&v42[OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService + 24]) + 24);
            v28 = swift_allocObject();
            swift_weakInit();
            v29 = swift_allocObject();
            *(v29 + 16) = v28;
            *(v29 + 24) = v6;
            v47 = sub_2195EB290;
            v48 = v29;
            aBlock = MEMORY[0x277D85DD0];
            v44 = 1107296256;
            v27 = &block_descriptor_63_0;
            goto LABEL_48;
          }

LABEL_42:
          v24 = *(*__swift_project_boxed_opaque_existential_1(&v42[OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService], *&v42[OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService + 24]) + 24);
          v30 = swift_allocObject();
          swift_weakInit();
          v31 = swift_allocObject();
          *(v31 + 16) = v30;
          *(v31 + 24) = v6;
          v47 = sub_2195EB130;
          v48 = v31;
          aBlock = MEMORY[0x277D85DD0];
          v44 = 1107296256;
          v27 = &block_descriptor_144;
          goto LABEL_48;
        }

        if (v23)
        {
          if (v23 == 1)
          {
            v24 = *(*__swift_project_boxed_opaque_existential_1(&v42[OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService], *&v42[OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService + 24]) + 24);
            v25 = swift_allocObject();
            swift_weakInit();
            v26 = swift_allocObject();
            *(v26 + 16) = v25;
            *(v26 + 24) = v6;
            v47 = sub_2195EB138;
            v48 = v26;
            aBlock = MEMORY[0x277D85DD0];
            v44 = 1107296256;
            v27 = &block_descriptor_55_0;
LABEL_48:
            v45 = sub_218C1CBB4;
            v46 = v27;
            v40 = _Block_copy(&aBlock);

            [v24 fetchConfigurationIfNeededWithCompletion_];
            _Block_release(v40);
          }

          goto LABEL_42;
        }

        if (qword_280EE5FC8 == -1)
        {
LABEL_44:
          v32 = sub_219BE5434();
          __swift_project_value_buffer(v32, qword_280F62670);
          v33 = sub_219BE5414();
          v34 = sub_219BF6214();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            *v35 = 0;
            _os_log_impl(&dword_2186C1000, v33, v34, "sportsTopicNotificationsEnabledState switching to unknown, should not switch to unknown state unless feature availability is toggled", v35, 2u);
            MEMORY[0x21CECF960](v35, -1, -1);
          }

          v24 = *(*__swift_project_boxed_opaque_existential_1(&v8[OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService], *&v8[OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_pushNotificationService + 24]) + 24);
          v36 = swift_allocObject();
          swift_weakInit();
          v37 = swift_allocObject();
          *(v37 + 16) = v36;
          *(v37 + 24) = v6;
          v47 = sub_2195EB28C;
          v48 = v37;
          aBlock = MEMORY[0x277D85DD0];
          v44 = 1107296256;
          v27 = &block_descriptor_40_2;
          goto LABEL_48;
        }

LABEL_51:
        swift_once();
        goto LABEL_44;
      }
    }

    v6 = MEMORY[0x277D84F90];
    goto LABEL_35;
  }

  return result;
}

Swift::Void __swiftcall PushNotificationDataManager.sceneDidEnterBackground()()
{
  sub_218760638();
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v34 = &v28 - v4;
  v5 = OBJC_IVAR____TtC7NewsUI227PushNotificationDataManager_debounceTasks;
  swift_beginAccess();
  v28 = v5;
  v29 = v0;
  v6 = *(v0 + v5);
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  v31 = v6;
  swift_bridgeObjectRetain_n();
  v12 = 0;
  v30 = v11;
  while (v10)
  {
    v13 = v32;
LABEL_12:
    v15 = (*(v31 + 56) + 24 * (__clz(__rbit64(v10)) | (v12 << 6)));
    v17 = *v15;
    v16 = v15[1];
    v18 = v15[2];
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    *(v19 + 24) = v18;
    sub_218A450F0();
    v33 = v18;
    swift_retain_n();

    sub_219BF5C14();
    v20 = sub_219BF5BF4();
    v21 = *(v20 - 8);
    v22 = v34;
    (*(v21 + 56))(v34, 1, 1, v20);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v17;
    v23[5] = sub_2195EB2DC;
    v23[6] = v19;
    sub_2195EB0C8(v22, v13, sub_218760638);
    LODWORD(v22) = (*(v21 + 48))(v13, 1, v20);

    if (v22 == 1)
    {
      sub_218807FB4(v13, sub_218760638);
    }

    else
    {
      sub_219BF5BE4();
      (*(v21 + 8))(v13, v20);
    }

    v24 = v23[2];
    swift_unknownObjectRetain();

    if (v24)
    {
      swift_getObjectType();
      v25 = sub_219BF5B44();
      v27 = v26;
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    sub_218807FB4(v34, sub_218760638);
    if (v27 | v25)
    {
      v35 = 0;
      v36 = 0;
      v37 = v25;
      v38 = v27;
    }

    v10 &= v10 - 1;
    swift_task_create();

    v11 = v30;
  }

  v13 = v32;
  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      *(v29 + v28) = MEMORY[0x277D84F98];

      return;
    }

    v10 = *(v7 + 8 * v14);
    ++v12;
    if (v10)
    {
      v12 = v14;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_2195E9AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v8 = sub_219BF5B84();
  v6[5] = v8;
  v6[6] = *(v8 - 8);
  v6[7] = swift_task_alloc();
  v9 = swift_task_alloc();
  v6[8] = v9;
  v10 = sub_218A450F0();
  v6[9] = v10;
  *v9 = v6;
  v9[1] = sub_2195E9BE0;
  v11 = MEMORY[0x277D84950];
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v10, a4, v12, v10, v11);
}

uint64_t sub_2195E9BE0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_2195E9CF4;
  }

  else
  {
    v2 = sub_219040A34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2195E9CF4()
{
  v1 = *(v0 + 80);
  *(v0 + 16) = v1;
  v2 = v1;
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = *(v0 + 40);
    v6 = *(v0 + 24);

    v6();
    (*(v4 + 8))(v3, v5);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2195E9E04(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = a6;
  *(v6 + 16) = a1;
  v7 = sub_219BF7464();
  *(v6 + 40) = v7;
  *(v6 + 48) = *(v7 - 8);
  *(v6 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2195E9EC8, 0, 0);
}

uint64_t sub_2195E9EC8()
{
  v1 = sub_219BF7C34();
  v3 = v2;
  sub_219BF79D4();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_2195E9FA4;

  return sub_21907C5A0(v1, v3, 0, 0, 1);
}

uint64_t sub_2195E9FA4()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 72) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_218C6D370;
  }

  else
  {
    v5 = sub_2195EA114;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2195EA114()
{
  v1 = *(v0 + 72);
  v2 = sub_219BF5C34();
  if (!v1)
  {
    (*(v0 + 24))(v2);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2195EA2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(unint64_t, uint64_t)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = sub_21870F700(a1, a2);
  if (v15)
  {
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v7;
    v28 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v18 = v28;
    }

    v19 = *(v18 + 56);
    v20 = a3(0);
    v27 = *(v20 - 8);
    sub_2195EB210(v19 + *(v27 + 72) * v16, a7, a4);
    a5(v16, v18);
    *v12 = v18;
    v21 = *(v27 + 56);
    v22 = a7;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = a3(0);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a7;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

double sub_2195EA4A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_21870F700(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_219492468();
      v10 = v12;
    }

    sub_218751558((*(v10 + 56) + 32 * v8), a3);
    sub_2194896A8(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_2195EA5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(unint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = sub_21870F700(a1, a2);
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v6;
    v26 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v16 = v26;
    }

    v17 = *(v16 + 56);
    v18 = a3(0);
    v25 = *(v18 - 8);
    (*(v25 + 32))(a6, v17 + *(v25 + 72) * v14, v18);
    a4(v14, v16);
    *v10 = v16;
    v19 = *(v25 + 56);
    v20 = a6;
    v21 = 0;
    v22 = v18;
  }

  else
  {
    v23 = a3(0);
    v19 = *(*(v23 - 8) + 56);
    v22 = v23;
    v20 = a6;
    v21 = 1;
  }

  return v19(v20, v21, 1, v22);
}

uint64_t sub_2195EA76C(char a1)
{
  v2 = v1;
  v3 = sub_219320C08(a1 & 1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_219492E34();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 24 * v5);
  sub_219489A58(v8, v7);
  *v2 = v7;
  return v9;
}

double sub_2195EA89C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(unint64_t, uint64_t)@<X2>, void (*a4)(unint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = sub_2187539B8(a1, a2);
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v6;
    v18 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v16 = v18;
    }

    sub_218720434(*(*(v16 + 48) + 16 * v14), *(*(v16 + 48) + 16 * v14 + 8));
    a3(*(v16 + 56) + 40 * v14, a6);
    a4(v14, v16);
    *v10 = v16;
  }

  else
  {
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2195EA970(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_21870F700(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21949420C();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 16 * v6);
  sub_21948A824(v6, v8);
  *v3 = v8;
  return v9;
}

double sub_2195EAB0C@<D0>(uint64_t a1@<X0>, void (*a2)(unint64_t, _OWORD *)@<X1>, void (*a3)(unint64_t, uint64_t)@<X2>, void (*a4)(void)@<X3>, _OWORD *a5@<X8>)
{
  v9 = v5;
  v11 = sub_218751790(a1);
  if (v12)
  {
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v5;
    v19 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v15 = v19;
    }

    v16 = *(v15 + 48);
    v17 = sub_219BF74C4();
    (*(*(v17 - 8) + 8))(v16 + *(*(v17 - 8) + 72) * v13, v17);
    a2(*(v15 + 56) + 32 * v13, a5);
    a3(v13, v15);
    *v9 = v15;
  }

  else
  {
    result = 0.0;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

double sub_2195EAC48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(unint64_t, uint64_t)@<X2>, void (*a4)(unint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = sub_21870F700(a1, a2);
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v6;
    v18 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v16 = v18;
    }

    a3(*(v16 + 56) + 40 * v14, a6);
    a4(v14, v16);
    *v10 = v16;
  }

  else
  {
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2195EAE50(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2195EAE90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2187608D4;

  return sub_2195E9AC0(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_2195EB074()
{
  result = qword_280EB7A78;
  if (!qword_280EB7A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB7A78);
  }

  return result;
}

uint64_t sub_2195EB0C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2195EB140(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v8 = *(v1 + 5);
  v7 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2187609C8;

  return sub_2195E9E04(v6, a1, v4, v5, v8, v7);
}

uint64_t sub_2195EB210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2195EB304(uint64_t a1)
{
  v2 = sub_2195EB4E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2195EB340(uint64_t a1)
{
  v2 = sub_2195EB4E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2195EB37C(void *a1)
{
  sub_2195EB488();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2195EB4E4();
  sub_219BF7B44();
  return (*(v4 + 8))(v6, v3);
}

void sub_2195EB488()
{
  if (!qword_27CC1CCC0)
  {
    sub_2195EB4E4();
    v0 = sub_219BF7864();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1CCC0);
    }
  }
}

unint64_t sub_2195EB4E4()
{
  result = qword_27CC1CCC8;
  if (!qword_27CC1CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CCC8);
  }

  return result;
}

unint64_t sub_2195EB54C()
{
  result = qword_27CC1CCD0;
  if (!qword_27CC1CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CCD0);
  }

  return result;
}

unint64_t sub_2195EB5A4()
{
  result = qword_27CC1CCD8;
  if (!qword_27CC1CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CCD8);
  }

  return result;
}

uint64_t sub_2195EB5F8@<X0>(void (*a1)(uint64_t, char *, uint64_t)@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v67 = a1;
  v68 = a3;
  v4 = sub_219BF0204();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v64 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v65 = &v61 - v8;
  v9 = sub_219BEF814();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CC83C8();
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195ECF18(0, &qword_280E90FF0, MEMORY[0x277D32BE0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v61 - v18;
  v66 = a2;
  sub_2197DE05C(a2, &v61 - v18);
  v20 = *(v14 + 56);
  sub_2189B7614(v67, v16);
  v21 = v19;
  v22 = v5;
  sub_219000CD0(v21, &v16[v20]);
  LODWORD(v14) = (*(v10 + 48))(v16, 1, v9);
  v23 = (v5[6])(&v16[v20], 1, v4);
  v24 = v23;
  if (v14 == 1)
  {
    if (v23 == 1)
    {
      return (*(v10 + 56))(v68, 1, 1, v9);
    }

    else
    {
      v36 = v65;
      v22[4](v65, &v16[v20], v4);
      v37 = v22;
      if (qword_280E8D7F8 != -1)
      {
        swift_once();
      }

      sub_2195ECF18(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_219C09EC0;
      v39 = sub_2199765A8(v66);
      v41 = v40;
      v42 = MEMORY[0x277D837D0];
      *(v38 + 56) = MEMORY[0x277D837D0];
      v43 = sub_2186FC3BC();
      *(v38 + 64) = v43;
      *(v38 + 32) = v39;
      *(v38 + 40) = v41;
      v69 = 0;
      v70 = 0xE000000000000000;
      sub_219BF7484();
      v44 = v69;
      v45 = v70;
      *(v38 + 96) = v42;
      *(v38 + 104) = v43;
      *(v38 + 72) = v44;
      *(v38 + 80) = v45;
      sub_219BF6214();
      sub_219BE5314();

      v37[2](v64, v36, v4);
      sub_219BEF804();
      return (v37[1])(v36, v4);
    }
  }

  else
  {
    v26 = *(v10 + 32);
    v26(v12, v16, v9);
    if (v24 == 1)
    {
      v67 = v26;
      if (qword_280E8D7F8 != -1)
      {
        swift_once();
      }

      sub_2195ECF18(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_219C09EC0;
      v28 = sub_2199765A8(v66);
      v30 = v29;
      v31 = MEMORY[0x277D837D0];
      *(v27 + 56) = MEMORY[0x277D837D0];
      v32 = sub_2186FC3BC();
      *(v27 + 64) = v32;
      *(v27 + 32) = v28;
      *(v27 + 40) = v30;
      v69 = 0;
      v70 = 0xE000000000000000;
      sub_219BF7484();
      v33 = v69;
      v34 = v70;
      *(v27 + 96) = v31;
      *(v27 + 104) = v32;
      *(v27 + 72) = v33;
      *(v27 + 80) = v34;
      sub_219BF6214();
      sub_219BE5314();

      v35 = v68;
      v67(v68, v12, v9);
    }

    else
    {
      v67 = v12;
      v46 = v22[4];
      v47 = &v16[v20];
      v48 = v65;
      v62 = v4;
      v46(v65, v47, v4);
      v64 = v22;
      if (qword_280E8D7F8 != -1)
      {
        swift_once();
      }

      v63 = qword_280F61708;
      sub_2195ECF18(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_219C0B8C0;
      v50 = sub_2199765A8(v66);
      v52 = v51;
      v53 = MEMORY[0x277D837D0];
      *(v49 + 56) = MEMORY[0x277D837D0];
      v54 = sub_2186FC3BC();
      *(v49 + 64) = v54;
      *(v49 + 32) = v50;
      *(v49 + 40) = v52;
      v69 = 0;
      v70 = 0xE000000000000000;
      v55 = v62;
      sub_219BF7484();
      v56 = v69;
      v57 = v70;
      *(v49 + 96) = v53;
      *(v49 + 104) = v54;
      *(v49 + 72) = v56;
      *(v49 + 80) = v57;
      v69 = 0;
      v70 = 0xE000000000000000;
      v58 = v67;
      sub_219BF7484();
      v59 = v69;
      v60 = v70;
      *(v49 + 136) = MEMORY[0x277D837D0];
      *(v49 + 144) = v54;
      *(v49 + 112) = v59;
      *(v49 + 120) = v60;
      sub_219BF6214();
      sub_219BE5314();

      v35 = v68;
      sub_219BEF7D4();
      (*(v64 + 1))(v48, v55);
      (*(v10 + 8))(v58, v9);
    }

    return (*(v10 + 56))(v35, 0, 1, v9);
  }
}

uint64_t sub_2195EBDB4@<X0>(void *a1@<X8>)
{
  sub_219BEF0B4();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();

  if (v2)
  {
    *a1 = 0xD000000000000029;
    a1[1] = 0x8000000219D28DE0;
    v3 = MEMORY[0x277D328F0];
  }

  else
  {
    v3 = MEMORY[0x277D328E8];
  }

  v4 = *v3;
  v5 = sub_219BEFBB4();
  return (*(*(v5 - 8) + 104))(a1, v4, v5);
}

uint64_t sub_2195EBE9C@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  sub_219BEF0B4();
  v4 = *(v14 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v5 = sub_219BF6394();

  v6 = [v5 identifier];
  swift_unknownObjectRelease();
  v7 = sub_219BF5414();
  v9 = v8;

  LOBYTE(v7) = sub_2188537B8(v7, v9, a1);

  if (v7)
  {
    *a2 = 0xD000000000000025;
    a2[1] = 0x8000000219D28FA0;
    v10 = MEMORY[0x277D328F0];
  }

  else
  {
    v10 = MEMORY[0x277D328E8];
  }

  v11 = *v10;
  v12 = sub_219BEFBB4();
  return (*(*(v12 - 8) + 104))(a2, v11, v12);
}

uint64_t sub_2195EBFE0@<X0>(void *a1@<X8>)
{
  sub_219BEF0B4();
  v2 = *(v9 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v3 = [v2 backingTag];

  v4 = [v3 asSports];
  swift_unknownObjectRelease();
  if (v4)
  {
    swift_unknownObjectRelease();
    v5 = MEMORY[0x277D328E8];
  }

  else
  {
    *a1 = 0xD000000000000028;
    a1[1] = 0x8000000219D29010;
    v5 = MEMORY[0x277D328F0];
  }

  v6 = *v5;
  v7 = sub_219BEFBB4();
  return (*(*(v7 - 8) + 104))(a1, v6, v7);
}

uint64_t sub_2195EC100@<X0>(unint64_t *a1@<X8>)
{
  sub_219BEF0B4();
  v2 = *(v9 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_sportsOnboardingState);

  if (v2 == 1)
  {
    v5 = MEMORY[0x277D328E8];
  }

  else
  {
    if (v2)
    {
      v3 = 0x8000000219D28FD0;
      v4 = 0xD000000000000011;
    }

    else
    {
      v3 = 0x8000000219D29040;
      v4 = 0xD00000000000001CLL;
    }

    *a1 = v4;
    a1[1] = v3;
    v5 = MEMORY[0x277D328F0];
  }

  v6 = *v5;
  v7 = sub_219BEFBB4();
  return (*(*(v7 - 8) + 104))(a1, v6, v7);
}

uint64_t sub_2195EC1E8@<X0>(void *a1@<X8>)
{
  sub_219BEF0B4();
  v2 = *(v8 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_featureAvailability);
  swift_unknownObjectRetain();

  v3 = [v2 puzzlesEnabled];
  swift_unknownObjectRelease();
  if (v3)
  {
    v4 = MEMORY[0x277D328E8];
  }

  else
  {
    *a1 = 0xD000000000000016;
    a1[1] = 0x8000000219D28E10;
    v4 = MEMORY[0x277D328F0];
  }

  v5 = *v4;
  v6 = sub_219BEFBB4();
  return (*(*(v6 - 8) + 104))(a1, v5, v6);
}

uint64_t sub_2195EC2D8@<X0>(void *a1@<X8>)
{
  sub_219BEF0B4();
  v2 = *(v13 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v3 = [v2 backingTag];

  LODWORD(v2) = [v3 isPuzzleHub];
  swift_unknownObjectRelease();
  if ((v2 || (sub_219BEF0B4(), v4 = *(v12 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor), , v5 = [v4 backingTag], v4, LODWORD(v4) = objc_msgSend(v5, sel_isPuzzleType), swift_unknownObjectRelease(), v4)) && (sub_219BEF0B4(), v6 = *(v13 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_featureAvailability), swift_unknownObjectRetain(), , v7 = objc_msgSend(v6, sel_puzzlesEnabled), swift_unknownObjectRelease(), !v7))
  {
    *a1 = 0xD000000000000034;
    a1[1] = 0x8000000219D28F60;
    v8 = MEMORY[0x277D328F0];
  }

  else
  {
    v8 = MEMORY[0x277D328E8];
  }

  v9 = *v8;
  v10 = sub_219BEFBB4();
  return (*(*(v10 - 8) + 104))(a1, v9, v10);
}

uint64_t sub_2195EC49C@<X0>(unint64_t *a1@<X8>)
{
  sub_219BEF0B4();
  v2 = *(v9 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_sportsOnboardingState);

  if (v2 == 1)
  {
    v4 = 0x8000000219D28FF0;
    v5 = 0xD000000000000018;
LABEL_6:
    *a1 = v5;
    a1[1] = v4;
    v3 = MEMORY[0x277D328F0];
    goto LABEL_7;
  }

  if (v2)
  {
    v4 = 0x8000000219D28FD0;
    v5 = 0xD000000000000011;
    goto LABEL_6;
  }

  v3 = MEMORY[0x277D328E8];
LABEL_7:
  v6 = *v3;
  v7 = sub_219BEFBB4();
  return (*(*(v7 - 8) + 104))(a1, v6, v7);
}

uint64_t sub_2195EC584@<X0>(void *a1@<X8>)
{
  sub_219BEF0B4();
  v2 = *(v8 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v3 = [v2 backingChannel];

  if (v3)
  {
    swift_unknownObjectRelease();
    v4 = MEMORY[0x277D328E8];
  }

  else
  {
    *a1 = 0xD000000000000029;
    a1[1] = 0x8000000219D28F30;
    v4 = MEMORY[0x277D328F0];
  }

  v5 = *v4;
  v6 = sub_219BEFBB4();
  return (*(*(v6 - 8) + 104))(a1, v5, v6);
}

uint64_t sub_2195EC680@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  if (a2 && (sub_219BEF0B4(), v6 = *(v13 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_subscriptionController), , v7 = sub_219BF53D4(), v8 = [v6 hasMutedSubscriptionForTagID_], v6, v7, v8))
  {
    sub_219BF7314();
    MEMORY[0x21CECC330](0xD000000000000038, 0x8000000219CF7F50);
    MEMORY[0x21CECC330](a1, a2);
    *a3 = 0;
    a3[1] = 0xE000000000000000;
    v9 = MEMORY[0x277D328F0];
  }

  else
  {
    v9 = MEMORY[0x277D328E8];
  }

  v10 = *v9;
  v11 = sub_219BEFBB4();
  return (*(*(v11 - 8) + 104))(a3, v10, v11);
}

uint64_t sub_2195EC7D0@<X0>(void *a1@<X8>)
{
  sub_219BEF0B4();
  v2 = *(v8 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_featureAvailability);
  swift_unknownObjectRetain();

  v3 = [v2 enableSponsoredSuperfeeds];
  swift_unknownObjectRelease();
  if (v3)
  {
    v4 = MEMORY[0x277D328E8];
  }

  else
  {
    *a1 = 0xD000000000000021;
    a1[1] = 0x8000000219D28DB0;
    v4 = MEMORY[0x277D328F0];
  }

  v5 = *v4;
  v6 = sub_219BEFBB4();
  return (*(*(v6 - 8) + 104))(a1, v5, v6);
}

uint64_t sub_2195EC8C0@<X0>(void *a1@<X8>)
{
  sub_219BEF0B4();
  v2 = *(v10 + 16);

  v3 = *(v2 + 32);

  v4 = [v3 backingTag];

  LODWORD(v3) = [v4 sponsoredFeedEligible];
  swift_unknownObjectRelease();
  if (v3 || (sub_219BDC8D4(), sub_219BDC8B4(), sub_219BDC584(), sub_219BDC564(), , sub_219BDC8A4(), , , v9 == 1))
  {
    v5 = MEMORY[0x277D328E8];
  }

  else
  {
    *a1 = 0xD00000000000002BLL;
    a1[1] = 0x8000000219D28D80;
    v5 = MEMORY[0x277D328F0];
  }

  v6 = *v5;
  v7 = sub_219BEFBB4();
  return (*(*(v7 - 8) + 104))(a1, v6, v7);
}

uint64_t sub_2195ECA30@<X0>(uint64_t a1@<X8>)
{
  sub_218A59E00(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219BDC8D4();
  sub_219BDC8B4();
  sub_219BDC584();
  sub_219BDC554();

  sub_219BDC8A4();

  if (v10[15] == 1)
  {
    v7 = *MEMORY[0x277D328E8];
    v8 = sub_219BEFBB4();
    return (*(*(v8 - 8) + 104))(a1, v7, v8);
  }

  else
  {
    (*(v4 + 104))(v6, *MEMORY[0x277D322F8], v3);
    sub_219BEEC44();
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2195ECBE8()
{
  sub_2195ECF18(0, &qword_280E90840, MEMORY[0x277D33470], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v20 - v1;
  v3 = sub_219BF1904();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TagFeedGroup();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TagFeedServiceConfig();
  sub_2186F7CA4();
  result = sub_219BEF3E4();
  v12 = result;
  v22 = *(result + 16);
  if (v22)
  {
    v13 = 0;
    v23 = result + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v24 = v8;
    v14 = (v4 + 48);
    v21 = (v4 + 32);
    v15 = (v4 + 8);
    while (v13 < *(v12 + 16))
    {
      sub_218B21BF8(v23 + *(v24 + 72) * v13, v10);
      sub_2195A5C88(v2);
      if ((*v14)(v2, 1, v3) == 1)
      {
        sub_21899DD98(v2);
      }

      else
      {
        (*v21)(v6, v2, v3);
        v16 = sub_219BF1834();
        (*v15)(v6, v3);
        v17 = *(v16 + 16);

        if (v17)
        {
          sub_21932BA54(v10);
LABEL_15:

          return 1;
        }
      }

      v18 = sub_2195B2570();
      if (v18 >> 62)
      {
        v20[1] = v18;
        v19 = sub_219BF7214();
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      result = sub_21932BA54(v10);
      if (v19)
      {
        goto LABEL_15;
      }

      if (v22 == ++v13)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    return 0;
  }

  return result;
}

void sub_2195ECF18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2195ECF7C()
{
  v0 = sub_219BF7614();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2195ED01C(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t), uint64_t (*a4)(void *))
{
  v7 = *(a2(0) - 8);
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = a3(v8);
  }

  v9 = *(v8 + 16);
  v11[0] = v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v11[1] = v9;
  result = a4(v11);
  *a1 = v8;
  return result;
}

uint64_t sub_2195ED0E0(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a1;
  sub_218726800(0, qword_280ED83C0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v48 - v6;
  v8 = type metadata accessor for MyMagazinesIssue(0);
  v49 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v48 = &v48 - v12;
  v13 = type metadata accessor for MyMagazinesState(0);
  MEMORY[0x28223BE20](v13);
  v51 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218726800(0, &qword_280EE7F00, type metadata accessor for MyMagazinesState, MEMORY[0x277D6C9F8]);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v48 - v18;
  (*(a3 + 8))(a2, a3);
  sub_219BE1A44();

  sub_219BE2184();

  v20 = (*(v17 + 88))(v19, v16);
  if (v20 == *MEMORY[0x277D6C9F0])
  {
LABEL_2:
    (*(v17 + 8))(v19, v16);
    return 0;
  }

  if (v20 != *MEMORY[0x277D6C9E8])
  {
    if (v20 == *MEMORY[0x277D6C9E0])
    {
      return 0;
    }

    goto LABEL_2;
  }

  (*(v17 + 96))(v19, v16);
  v22 = v51;
  sub_2190704B8(v19, v51, type metadata accessor for MyMagazinesState);
  sub_2195FA9C8(v22, v7, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
  v23 = v49;
  if ((*(v49 + 48))(v7, 1, v8) == 1)
  {
    sub_2195FAA48(v7, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
    v24 = *(v22 + *(v13 + 20));
  }

  else
  {
    v25 = v48;
    sub_2190704B8(v7, v48, type metadata accessor for MyMagazinesIssue);
    sub_218726800(0, &unk_280E8BBF0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D84560]);
    v26 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_219C09BA0;
    sub_2195E5B7C(v25, v27 + v26, type metadata accessor for MyMagazinesIssue);
    *v53 = v27;

    sub_2191EDC74(v28);
    sub_2195FAE60(v25, type metadata accessor for MyMagazinesIssue);
    v24 = *v53;
  }

  v29 = v50;
  v30 = *(v24 + 16);
  if (v30)
  {
    *v53 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v31 = v24 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v32 = *(v23 + 72);
    do
    {
      sub_2195E5B7C(v31, v11, type metadata accessor for MyMagazinesIssue);
      v33 = *v11;
      sub_2195FAE60(v11, type metadata accessor for MyMagazinesIssue);
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v31 += v32;
      --v30;
    }

    while (v30);

    v34 = *v53;
  }

  else
  {

    v34 = MEMORY[0x277D84F90];
  }

  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  v35 = sub_21945CCB8(v34);

  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = 0;
    v38 = MEMORY[0x277D84F90];
    do
    {
      v39 = (v35 + 32 + 32 * v37);
      v40 = v37;
      while (1)
      {
        if (v40 >= *(v35 + 16))
        {
          __break(1u);
          return result;
        }

        v41 = *(v39 + 9);
        *v53 = *v39;
        *&v53[9] = v41;
        v42 = *v53;
        sub_218950CAC(v53, v52);
        if ([v42 isCurrent])
        {
          if ((v53[9] & 1) != 0 && v53[8] != 1)
          {
            break;
          }
        }

        result = sub_218950D08(v53);
        ++v40;
        v39 += 2;
        if (v36 == v40)
        {
          goto LABEL_30;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v54 = v38;
      if ((result & 1) == 0)
      {
        result = sub_218C34868(0, *(v38 + 16) + 1, 1);
        v38 = v54;
      }

      v44 = *(v38 + 16);
      v43 = *(v38 + 24);
      if (v44 >= v43 >> 1)
      {
        result = sub_218C34868((v43 > 1), v44 + 1, 1);
        v38 = v54;
      }

      v37 = v40 + 1;
      *(v38 + 16) = v44 + 1;
      v45 = v38 + 32 * v44;
      v46 = *v53;
      *(v45 + 41) = *&v53[9];
      *(v45 + 32) = v46;
    }

    while (v36 - 1 != v40);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
  }

LABEL_30:
  sub_2195FAE60(v22, type metadata accessor for MyMagazinesState);

  v47 = *(v38 + 16);

  return v47;
}

uint64_t sub_2195ED7DC()
{
  sub_218726800(0, qword_280ED83C0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for MyMagazinesIssue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195FA9C8(v0, v3, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_2195FAA48(v3, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
    type metadata accessor for MyMagazinesState(0);
  }

  else
  {
    sub_2190704B8(v3, v7, type metadata accessor for MyMagazinesIssue);
    sub_218726800(0, &unk_280E8BBF0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D84560]);
    v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_219C09BA0;
    sub_2195E5B7C(v7, v10 + v9, type metadata accessor for MyMagazinesIssue);
    type metadata accessor for MyMagazinesState(0);
    v13 = v10;

    sub_2191EDC74(v11);
    sub_2195FAE60(v7, type metadata accessor for MyMagazinesIssue);
    return v13;
  }
}

uint64_t sub_2195EDA5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[1] = a5;
  v14 = a4;
  sub_2195FB9FC(0, &unk_280E8C4C0, MEMORY[0x277D84538]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2195FB9A8();
  sub_219BF7B44();
  v18 = 0;
  sub_219BF7794();
  if (!v5)
  {
    v15 = v14;
    v17 = 1;
    sub_2195FC568(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_218753394(&unk_280E8EE00);
    sub_219BF7834();
    v16 = 2;
    sub_219BF7824();
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_2195EDC74()
{
  v1 = 0x7349746E65636572;
  if (*v0 != 1)
  {
    v1 = 0x657573734977656ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_2195EDCEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2195FB5BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2195EDD14(uint64_t a1)
{
  v2 = sub_2195FB9A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2195EDD50(uint64_t a1)
{
  v2 = sub_2195FB9A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2195EDD8C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2195FB6F0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_2195EDDDC@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v61 = sub_219BDBD34();
  v2 = *(v61 - 8);
  v3 = MEMORY[0x28223BE20](v61);
  v53 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v55 = &v50 - v5;
  v6 = MEMORY[0x277CC9578];
  sub_218726800(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v57 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v56 = &v50 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v50 - v15;
  sub_2195FAF94();
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v1 + 8);
  v60 = type metadata accessor for MyMagazinesIssue(0);
  v22 = *(v18 + 56);
  v23 = v1;
  v54 = v60[8];
  sub_2195FA9C8(v1 + v54, &v20[v22], &qword_280EE9C40, v6);
  if (v21 == 2 && (v24 = v2[6], v24(&v20[v22], 1, v61) == 1))
  {
    sub_2195FA9C8(v1 + v60[7], v16, &qword_280EE9C40, MEMORY[0x277CC9578]);
    if (v24(v16, 1, v61) == 1)
    {
      v25 = [*v1 publicationDate];
      sub_219BDBCA4();

      result = v24(v16, 1, v61);
      if (result != 1)
      {
        return sub_2195FAA48(v16, &qword_280EE9C40, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      return v2[4](v59, v16, v61);
    }
  }

  else
  {
    v27 = MEMORY[0x277CC9578];
    sub_2195FAA48(&v20[v22], &qword_280EE9C40, MEMORY[0x277CC9578]);
    sub_218726800(0, &unk_280E8C190, v27, MEMORY[0x277D84560]);
    v28 = v2[9];
    v29 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_219C0EE20;
    v50 = v29;
    v51 = v23;
    v52 = v30;
    v31 = v30 + v29;
    v32 = v23;
    v33 = [*v23 publicationDate];
    v34 = v55;
    sub_219BDBCA4();

    v35 = v2[4];
    v36 = v34;
    v37 = v61;
    v35(v31, v36, v61);
    sub_2195FA9C8(v32 + v54, v14, &qword_280EE9C40, v27);
    v55 = v2;
    v38 = v2[6];
    v39 = v38(v14, 1, v37);
    v58 = v35;
    if (v39 == 1)
    {
      sub_219BDBBB4();
      if (v38(v14, 1, v37) != 1)
      {
        sub_2195FAA48(v14, &qword_280EE9C40, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      v35(v28 + v31, v14, v37);
    }

    v40 = v60;
    v41 = v51;
    v42 = v56;
    sub_2195FA9C8(v51 + v60[6], v56, &qword_280EE9C40, MEMORY[0x277CC9578]);
    if (v38(v42, 1, v37) == 1)
    {
      sub_219BDBBB4();
      if (v38(v42, 1, v37) != 1)
      {
        sub_2195FAA48(v42, &qword_280EE9C40, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      v58(v31 + 2 * v28, v42, v37);
    }

    v43 = v41 + v40[7];
    v44 = v57;
    sub_2195FA9C8(v43, v57, &qword_280EE9C40, MEMORY[0x277CC9578]);
    if (v38(v44, 1, v37) == 1)
    {
      sub_219BDBBB4();
      v45 = v38(v44, 1, v37);
      v46 = v55;
      v47 = v58;
      if (v45 != 1)
      {
        sub_2195FAA48(v44, &qword_280EE9C40, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      v47 = v58;
      v58(v31 + 3 * v28, v44, v37);
      v46 = v55;
    }

    v62 = v52;

    sub_2195ED01C(&v62, MEMORY[0x277CC9578], sub_218C812EC, sub_2195F6150);

    v48 = *(v62 + 16);
    if (v48)
    {
      v49 = v53;
      v46[2](v53, v62 + v50 + (v48 - 1) * v28, v37);

      return v47(v59, v49, v37);
    }

    else
    {

      __break(1u);

      __break(1u);
    }
  }

  return result;
}

void sub_2195EE53C()
{
  qword_27CCD8D28 = MEMORY[0x277D84F90];
  unk_27CCD8D30 = MEMORY[0x277D84F90];
  qword_27CCD8D38 = MEMORY[0x277D84F90];
  unk_27CCD8D40 = MEMORY[0x277D84F90];
}

uint64_t sub_2195EE568()
{
  v1 = 0x20676E6964616572;
  if (*v0 != 1)
  {
    v1 = 0x64616F6C6E776F64;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x20746E6572727563;
  }
}

uint64_t sub_2195EE5FC()
{
  v1 = OBJC_IVAR____TtC7NewsUI216MyMagazinesStore____lazy_storage___lazyInitializingPromise;
  if (*(v0 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore____lazy_storage___lazyInitializingPromise))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore____lazy_storage___lazyInitializingPromise);
  }

  else
  {
    v3 = v0;
    swift_getObjectType();
    sub_219BE31F4();
    sub_219BE3074();

    sub_2186C6148(0, &qword_280E8E3B0);
    v4 = sub_219BF66A4();
    sub_219BE3034();

    v2 = sub_219BE3034();

    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_2195EE7B4()
{
  v1 = CACurrentMediaTime();
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  v2 = sub_219BE5314();
  MEMORY[0x28223BE20](v2);
  sub_2195FB518();
  sub_219BE3204();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v1;
  v4 = v0;
  v5 = sub_219BE2E54();
  sub_219BE2F64();

  *(swift_allocObject() + 16) = v1;
  v6 = sub_219BE2E54();
  v7 = sub_219BE2FD4();

  return v7;
}

uint64_t sub_2195EE978()
{
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2186FC3BC();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_219BE5314();

  v1 = sub_218C3E18C(&unk_282A284C0);
  v2 = sub_2195EEEBC(v1);

  return v2;
}

id sub_2195EEADC(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_issueReadingHistory) addObserver_];
  [*(a1 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_subscriptionController) addObserver_];
  v2 = *(a1 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_offlineIssueList);

  return [v2 addObserver_];
}

void sub_2195EEB54(void *a1)
{
  sub_219BE3204();
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  v3 = sub_219BE2E54();
  sub_219BE2F74();

  *(swift_allocObject() + 16) = v2;
  v4 = v2;
  v5 = sub_219BE2E54();
  sub_219BE2FD4();
}

uint64_t sub_2195EEC80@<X0>(uint64_t *a1@<X8>)
{
  sub_219BE2CF4();
  sub_2195F97F0(0, &qword_280EE5E70, MEMORY[0x277D6C8A8]);
  swift_allocObject();
  result = sub_219BE55D4();
  *a1 = result;
  return result;
}

uint64_t sub_2195EEEBC(uint64_t a1)
{
  v3 = CACurrentMediaTime();
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  sub_218C3F460();
  v5 = sub_219BF5D54();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2186FC3BC();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  sub_219BF6214();
  sub_219BE5314();

  sub_2195F0684(a1);
  sub_219BE3204();
  *(swift_allocObject() + 16) = v1;
  v8 = v1;
  v9 = sub_219BE2E54();
  sub_219BE2F64();

  *(swift_allocObject() + 16) = v3;
  v10 = sub_219BE2E54();
  v11 = sub_219BE3024();

  return v11;
}

uint64_t sub_2195EF0C8()
{
  sub_2195F977C();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2CF4();
  sub_219BE55E4();

  sub_2195F97F0(0, &qword_280EE5E88, MEMORY[0x277D6C898]);
  v4 = v3;
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_219BE55B4();
    (*(v5 + 8))(v2, v4);
    return v7;
  }

  return result;
}

size_t sub_2195EF228(uint64_t *a1, uint64_t a2, double a3)
{
  v4 = v3;
  v90 = a2;
  v84 = type metadata accessor for MyMagazinesIssue(0);
  v7 = *(v84 - 8);
  v8 = MEMORY[0x28223BE20](v84);
  v81 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v75 - v10;
  v12 = type metadata accessor for MyMagazinesState(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218726800(0, qword_280ED83C0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D83D88]);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v82 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v86 = &v75 - v18;
  sub_218C87DC0(*a1, v96);
  if (!v97)
  {
    sub_2195FB19C();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();
    return v14;
  }

  v78 = v12;
  v89 = v7;
  v76 = v11;
  v79 = v14;
  v19 = v99;
  v87 = v98;
  v20 = v101;
  v85 = v100;

  if (qword_280E8D920 != -1)
  {
    goto LABEL_67;
  }

LABEL_3:
  sub_2186F20D4();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_219C09BA0;
  v94 = 0;
  v95 = 0xE000000000000000;
  v22 = MEMORY[0x277D837D0];
  v83 = xmmword_219C09BA0;
  v77 = v20;
  if (v19)
  {
    sub_2195FC568(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v23 = swift_allocObject();
    *(v23 + 16) = v83;
    *(v23 + 32) = v87;
    *(v23 + 40) = v19;
    v93 = v23;

    sub_2191ED3E8(v24);
    v25 = v93;
  }

  else
  {
    v25 = v85;
  }

  v27 = MEMORY[0x21CECC6D0](v25, v22);
  v29 = v28;

  MEMORY[0x21CECC330](v27, v29);

  v20 = v94;
  v30 = v95;
  *(v21 + 56) = v22;
  *(v21 + 64) = sub_2186FC3BC();
  *(v21 + 32) = v20;
  *(v21 + 40) = v30;
  sub_219BF6214();
  sub_219BE5314();

  __swift_project_boxed_opaque_existential_1((v90 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_issueService), *(v90 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_issueService + 24));
  v92 = v19;
  if (v19)
  {
    sub_2195FC568(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v31 = swift_allocObject();
    *(v31 + 16) = v83;
    *(v31 + 32) = v87;
    *(v31 + 40) = v19;
    v94 = v31;

    sub_2191ED3E8(v32);
  }

  else
  {
  }

  v33 = sub_219BF1E54();

  if (v33 >> 62)
  {
    v19 = sub_219BF7214();
  }

  else
  {
    v19 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v80 = v4;
  if (v19)
  {
    v34 = 0;
    v91 = v33 & 0xC000000000000001;
    v4 = v33 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v91)
      {
        v35 = MEMORY[0x21CECE0F0](v34, v33);
        v20 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
LABEL_28:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v34 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_66:
          __break(1u);
LABEL_67:
          swift_once();
          goto LABEL_3;
        }

        v35 = *(v33 + 8 * v34 + 32);
        v20 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_28;
        }
      }

      v88 = v35;
      v36 = [v35 identifier];
      v37 = sub_219BF5414();
      v39 = v38;

      if (v92)
      {
        if (v37 == v87 && v92 == v39)
        {

LABEL_32:
          v43 = 0;
          v94 = MEMORY[0x277D84F90];
          while (2)
          {
            if (v91)
            {
              v44 = MEMORY[0x21CECE0F0](v43, v33);
            }

            else
            {
              if (v43 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_65;
              }

              v44 = *(v33 + 8 * v43 + 32);
            }

            v45 = v44;
            v46 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              __break(1u);
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

            v20 = [v44 identifier];
            v47 = sub_219BF5414();
            v49 = v48;

            if (v92)
            {
              if (v47 == v87 && v92 == v49)
              {

                goto LABEL_34;
              }

              v20 = sub_219BF78F4();

              if (v20)
              {

                goto LABEL_34;
              }
            }

            else
            {
            }

            sub_219BF73D4();
            v20 = *(v94 + 16);
            sub_219BF7414();
            sub_219BF7424();
            sub_219BF73E4();
LABEL_34:
            ++v43;
            if (v46 == v19)
            {
              v42 = v94;

              if (!v88)
              {
                goto LABEL_51;
              }

              v51 = v86;
              sub_2195EFE8C(v88, v86);
              (*(v89 + 56))(v51, 0, 1, v84);
              goto LABEL_52;
            }

            continue;
          }
        }

        v41 = sub_219BF78F4();

        if (v41)
        {
          goto LABEL_32;
        }
      }

      else
      {
      }

      ++v34;
      if (v20 == v19)
      {
        v88 = 0;
        goto LABEL_32;
      }
    }
  }

  v42 = MEMORY[0x277D84F90];
LABEL_51:
  (*(v89 + 56))(v86, 1, 1, v84);
  v88 = 0;
LABEL_52:
  if ((v42 & 0x8000000000000000) == 0 && (v42 & 0x4000000000000000) == 0)
  {
    v52 = *(v42 + 16);
    if (v52)
    {
      goto LABEL_55;
    }

LABEL_70:

    v55 = MEMORY[0x277D84F90];
LABEL_71:
    v61 = v79;
    sub_2195FA9C8(v86, v79, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
    v62 = v78;
    *(v61 + *(v78 + 20)) = v55;
    *(v61 + *(v62 + 24)) = v77;
    v63 = v82;
    sub_2195FA9C8(v61, v82, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
    v64 = v89;
    if ((*(v89 + 48))(v63, 1, v84) == 1)
    {
      sub_2195FAA48(v63, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
      if (*(v55 + 16))
      {
        goto LABEL_73;
      }

LABEL_76:
      if (v92)
      {
        v71 = v92;
        sub_2195FC568(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
        inited = swift_initStackObject();
        *(inited + 16) = v83;
        *(inited + 32) = v87;
        *(inited + 40) = v71;
        v94 = inited;
        sub_2191ED3E8(v85);
        v73 = v94;
      }

      else
      {
        v73 = v85;
      }

      v14 = *(v73 + 16);

      if (v14)
      {
        sub_2195FB19C();
        swift_allocError();
        *v74 = 2;
        swift_willThrow();

        sub_2195FAE60(v61, type metadata accessor for MyMagazinesState);
        sub_2195FAA48(v86, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
        return v14;
      }
    }

    else
    {
      v66 = v76;
      sub_2190704B8(v63, v76, type metadata accessor for MyMagazinesIssue);
      sub_218726800(0, &unk_280E8BBF0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D84560]);
      v67 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v68 = swift_allocObject();
      *(v68 + 16) = v83;
      sub_2195E5B7C(v66, v68 + v67, type metadata accessor for MyMagazinesIssue);
      v94 = v68;

      sub_2191EDC74(v69);
      sub_2195FAE60(v66, type metadata accessor for MyMagazinesIssue);
      v70 = *(v94 + 16);

      if (!v70)
      {
        goto LABEL_76;
      }

LABEL_73:
    }

    sub_219BE1A64();
    *(swift_allocObject() + 16) = a3;
    v65 = sub_219BE2E54();
    v14 = sub_219BE2F74();

    sub_2195FAE60(v61, type metadata accessor for MyMagazinesState);
    sub_2195FAA48(v86, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
    return v14;
  }

  v52 = sub_219BF7214();
  if (!v52)
  {
    goto LABEL_70;
  }

LABEL_55:
  v94 = MEMORY[0x277D84F90];
  result = sub_218C35030(0, v52 & ~(v52 >> 63), 0);
  if ((v52 & 0x8000000000000000) == 0)
  {
    v54 = 0;
    v55 = v94;
    v56 = v81;
    do
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v57 = MEMORY[0x21CECE0F0](v54, v42);
      }

      else
      {
        v57 = *(v42 + 8 * v54 + 32);
      }

      v58 = v57;
      sub_2195EFE8C(v57, v56);

      v94 = v55;
      v60 = *(v55 + 16);
      v59 = *(v55 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_218C35030(v59 > 1, v60 + 1, 1);
        v55 = v94;
      }

      ++v54;
      *(v55 + 16) = v60 + 1;
      sub_2190704B8(v56, v55 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v60, type metadata accessor for MyMagazinesIssue);
    }

    while (v52 != v54);

    goto LABEL_71;
  }

  __break(1u);
  return result;
}

id sub_2195EFE8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  sub_218726800(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v49 = &v49 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v52 = &v49 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  MEMORY[0x28223BE20](v12);
  v51 = &v49 - v15;
  v16 = *(v2 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_subscriptionController);
  v17 = [objc_msgSend(v54 sourceChannel)];
  swift_unknownObjectRelease();
  if (!v17)
  {
    sub_219BF5414();
    v17 = sub_219BF53D4();
  }

  v18 = [v16 subscriptionForTagID_];

  if (v18)
  {
    v19 = [v18 isTypeAutoFavoriteTag];
    v53 = v19 ^ 1;
    if (v19)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }
  }

  else
  {
    v53 = 0;
    v20 = 2;
  }

  v50 = v20;
  v21 = [v54 identifier];
  v22 = v21;
  v23 = v21;
  v24 = v21;
  if (v21)
  {
    if (!v53)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_219BF5414();
    v24 = sub_219BF53D4();

    sub_219BF5414();
    v23 = sub_219BF53D4();

    sub_219BF5414();
    v22 = sub_219BF53D4();

    if (!v53)
    {
      goto LABEL_15;
    }
  }

  if (v18)
  {
    v25 = v21;
    v26 = [v18 dateAdded];
    if (v26)
    {
      v27 = v26;
      sub_219BDBCA4();

      v28 = sub_219BDBD34();
      (*(*(v28 - 8) + 56))(v14, 0, 1, v28);
    }

    else
    {
      v32 = sub_219BDBD34();
      (*(*(v32 - 8) + 56))(v14, 1, 1, v32);
    }

    v33 = v14;
    v30 = v51;
    sub_218A5DD60(v33, v51);
    goto LABEL_18;
  }

LABEL_15:
  v29 = sub_219BDBD34();
  v30 = v51;
  (*(*(v29 - 8) + 56))(v51, 1, 1, v29);
  v31 = v21;
LABEL_18:
  v34 = *(v2 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_offlineIssueList);
  v35 = [v34 sourceForIssueID_];

  if (v35 == 1)
  {
    v36 = [v34 dateAddedForIssueID_];

    if (v36)
    {
      v37 = v49;
      sub_219BDBCA4();

      v38 = 0;
    }

    else
    {
      v38 = 1;
      v37 = v49;
    }

    v41 = sub_219BDBD34();
    (*(*(v41 - 8) + 56))(v37, v38, 1, v41);
    v40 = v52;
    sub_218A5DD60(v37, v52);
  }

  else
  {

    v39 = sub_219BDBD34();
    v40 = v52;
    (*(*(v39 - 8) + 56))(v52, 1, 1, v39);
  }

  v42 = [*(v2 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_issueReadingHistory) lastEngagedDateForIssueWithID_];

  if (v42)
  {
    sub_219BDBCA4();

    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  v44 = sub_219BDBD34();
  (*(*(v44 - 8) + 56))(v7, v43, 1, v44);
  v45 = v50;
  if (v53)
  {
    v45 = 0;
  }

  *a2 = v54;
  *(a2 + 8) = v45;
  v46 = type metadata accessor for MyMagazinesIssue(0);
  sub_218A5DD60(v30, a2 + v46[6]);
  sub_218A5DD60(v40, a2 + v46[7]);
  sub_218A5DD60(v7, a2 + v46[8]);
  v47 = v54;

  return v47;
}

uint64_t sub_2195F0444()
{
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v1 = MEMORY[0x277D83A80];
  *(v0 + 56) = MEMORY[0x277D839F8];
  *(v0 + 64) = v1;
  *(v0 + 32) = v2;
  sub_219BF6214();
  sub_219BE5314();
}

uint64_t sub_2195F052C()
{
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09EC0;
  sub_219BF5CD4();
  v1 = MEMORY[0x277D83A80];
  *(v0 + 56) = MEMORY[0x277D839F8];
  *(v0 + 64) = v1;
  *(v0 + 32) = v2;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 96) = MEMORY[0x277D837D0];
  *(v0 + 104) = sub_2186FC3BC();
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  sub_219BE5314();
}

uint64_t sub_2195F0684(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_219BF73F4();
    v3 = a1 + 56;
    result = sub_219BF7174();
    v5 = result;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_17;
      }

      v6 = *(a1 + 36);
      if (*(*(a1 + 48) + v5))
      {
        if (*(*(a1 + 48) + v5) == 1)
        {
          sub_2195F0BE4();
        }

        else
        {
          sub_2195F0EBC();
        }
      }

      else
      {
        sub_2195F08F4();
      }

      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      result = sub_219BF73E4();
      if (v5 >= -(-1 << *(a1 + 32)))
      {
        goto LABEL_18;
      }

      if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_19;
      }

      if (v6 != *(a1 + 36))
      {
        goto LABEL_20;
      }

      result = sub_219BF7194();
      v5 = result;
      if (!--v1)
      {
        goto LABEL_15;
      }
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
  }

  else
  {
LABEL_15:
    sub_2195FC568(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    v7 = sub_219BE2E54();
    sub_218CCBDE4();
    sub_2195FB02C(&unk_280E8F570, sub_218CCBDE4);
    sub_219BE2F34();

    v8 = sub_219BE2E54();
    v9 = sub_219BE2F74();

    return v9;
  }

  return result;
}

uint64_t sub_2195F08F4()
{
  v1 = CACurrentMediaTime();
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  MEMORY[0x28223BE20](v2);
  sub_2186C6148(0, &qword_280E8DDC0);
  sub_219BE3204();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v0;

  v4 = v0;
  v5 = sub_219BE2E54();
  sub_2186C6148(0, &unk_280E8DCD0);
  sub_219BE2F64();

  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v4;

  v7 = v4;
  v8 = sub_219BE2E54();
  sub_219BE2F64();

  *(swift_allocObject() + 16) = v7;
  v9 = v7;
  v10 = sub_219BE2E54();
  sub_219BE3054();

  *(swift_allocObject() + 16) = v1;
  v11 = sub_219BE2E54();
  v12 = sub_219BE3024();

  return v12;
}

uint64_t sub_2195F0BE4()
{
  v1 = CACurrentMediaTime();
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  v2 = sub_219BE5314();
  MEMORY[0x28223BE20](v2);
  sub_2186C6148(0, &qword_280E8DDC0);
  sub_219BE3204();
  *(swift_allocObject() + 16) = v0;
  v3 = v0;
  v4 = sub_219BE2E54();
  sub_2194FB2A4(0, &qword_280E8EB40, &qword_280E8DAB0, 0x277D310B0, MEMORY[0x277D83940]);
  sub_219BE2F64();

  *(swift_allocObject() + 16) = v3;
  v5 = v3;
  v6 = sub_219BE2E54();
  sub_219BE2F64();

  *(swift_allocObject() + 16) = v5;
  v7 = v5;
  v8 = sub_219BE2E54();
  sub_219BE3054();

  *(swift_allocObject() + 16) = v1;
  v9 = sub_219BE2E54();
  v10 = sub_219BE3024();

  return v10;
}

uint64_t sub_2195F0EBC()
{
  v1 = CACurrentMediaTime();
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  v2 = sub_219BE5314();
  MEMORY[0x28223BE20](v2);
  sub_219BE3204();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2195FB388;
  *(v4 + 24) = v3;
  v5 = v0;
  v6 = sub_219BE2E54();
  sub_2194FB2A4(0, &qword_280E8EB40, &qword_280E8DAB0, 0x277D310B0, MEMORY[0x277D83940]);
  sub_219BE2F64();

  *(swift_allocObject() + 16) = v5;
  v7 = v5;
  v8 = sub_219BE2E54();
  sub_219BE2F64();

  *(swift_allocObject() + 16) = v7;
  v9 = v7;
  v10 = sub_219BE2E54();
  sub_219BE3054();

  *(swift_allocObject() + 16) = v1;
  v11 = sub_219BE2E54();
  v12 = sub_219BE3024();

  return v12;
}

uint64_t sub_2195F11A4(uint64_t a1, char *a2)
{
  sub_2195F977C();
  MEMORY[0x28223BE20](v3 - 8);
  v237 = v234 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195FAEC0(0, &unk_280ED82F0, qword_280ED8300, type metadata accessor for MyMagazinesState);
  v241 = v5;
  MEMORY[0x28223BE20](v5);
  v245 = v234 - v6;
  v7 = MEMORY[0x277D83D88];
  sub_218726800(0, qword_280ED8300, type metadata accessor for MyMagazinesState, MEMORY[0x277D83D88]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v236 = v234 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v242 = v234 - v12;
  MEMORY[0x28223BE20](v11);
  v243 = v234 - v13;
  v14 = MEMORY[0x277D6C9F8];
  sub_218726800(0, &qword_280EE7F00, type metadata accessor for MyMagazinesState, MEMORY[0x277D6C9F8]);
  v260 = v15;
  v259 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v250 = v234 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v258 = v234 - v19;
  MEMORY[0x28223BE20](v18);
  v239 = v234 - v20;
  v240 = type metadata accessor for MyMagazinesState(0);
  v244 = *(v240 - 8);
  v21 = MEMORY[0x28223BE20](v240);
  v238 = v234 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v247 = v234 - v23;
  sub_218726800(0, qword_280ED83C0, type metadata accessor for MyMagazinesIssue, v7);
  MEMORY[0x28223BE20](v24 - 8);
  v257 = v234 - v25;
  v255 = type metadata accessor for MyMagazinesIssue(0);
  v256 = *(v255 - 8);
  v26 = MEMORY[0x28223BE20](v255);
  v268 = v234 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v279 = (v234 - v29);
  v30 = MEMORY[0x28223BE20](v28);
  v267 = v234 - v31;
  MEMORY[0x28223BE20](v30);
  v249 = (v234 - v32);
  sub_2195F9888();
  v262 = v33;
  MEMORY[0x28223BE20](v33);
  v273 = v234 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218726800(0, &qword_280EE7ED0, sub_2186E2394, v14);
  v254 = v35;
  v253 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v252 = (v234 - v36);
  sub_2195F9920();
  v277 = v37;
  v38 = *(v37 - 8);
  v39 = MEMORY[0x28223BE20](v37);
  v246 = v234 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = v234 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = v234 - v44;
  sub_2195FC568(0, &qword_280EE7EF8, &type metadata for CurrentIssuesState, MEMORY[0x277D6C9F8]);
  v47 = v46;
  v48 = *(v46 - 8);
  v49 = MEMORY[0x28223BE20](v46);
  v251 = v234 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v248 = v234 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v55 = (v234 - v54);
  MEMORY[0x28223BE20](v53);
  v57 = v234 - v56;
  sub_219BE1A44();
  sub_219BE2184();

  sub_219BE1A44();
  v276 = v45;
  sub_219BE2184();

  sub_219BE1A44();
  v275 = v43;
  sub_219BE2184();

  v58 = *(v48 + 16);
  v274 = v57;
  v271 = v58;
  v58(v55, v57, v47);
  v59 = *(v48 + 88);
  v264 = (v48 + 88);
  v263 = v59;
  v60 = v59(v55, v47);
  v61 = v60;
  LODWORD(v272) = *MEMORY[0x277D6C9F0];
  v269 = v47;
  v278 = v38;
  v270 = v48;
  v266 = a2;
  v261 = v48 + 16;
  if (v60 != v272)
  {
    if (v60 != *MEMORY[0x277D6C9E8])
    {
      v71 = v277;
      if (v60 != *MEMORY[0x277D6C9E0])
      {
        v89 = v38;
        (*(v48 + 8))(v55, v47);
        v75 = v262;
        v90 = v271;
        v69 = v71;
        v68 = v89;
        goto LABEL_23;
      }

      v75 = v262;
      v72 = v271;
      if (qword_280E8D920 == -1)
      {
        goto LABEL_18;
      }

      goto LABEL_110;
    }

    (*(v48 + 96))(v55, v47);
    v70 = *v55;
    v71 = v55[1];
    v72 = v55[2];
    v73 = *&v266[OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_badgeIssueIDs];
    v254 = v55[3];
    if (v254 >> 62)
    {
      v74 = sub_219BF7214();
      if (v74)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v74 = *((v254 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v74)
      {
LABEL_6:
        v234[1] = v72;
        v235 = v71;
        v252 = v70;
        v253 = v73;
        v280 = MEMORY[0x277D84F90];
        v75 = &v280;
        sub_21870B65C(0, v74 & ~(v74 >> 63), 0);
        if ((v74 & 0x8000000000000000) == 0)
        {
          v76 = 0;
          v77 = v280;
          v78 = v254;
          v79 = v254 & 0xC000000000000001;
          do
          {
            if (v79)
            {
              v80 = MEMORY[0x21CECE0F0](v76, v78);
            }

            else
            {
              v80 = *(v78 + 8 * v76 + 32);
            }

            v81 = v80;
            v82 = [v80 identifier];
            v83 = sub_219BF5414();
            v85 = v84;

            v280 = v77;
            v87 = *(v77 + 16);
            v86 = *(v77 + 24);
            if (v87 >= v86 >> 1)
            {
              sub_21870B65C((v86 > 1), v87 + 1, 1);
              v78 = v254;
              v77 = v280;
            }

            ++v76;
            *(v77 + 16) = v87 + 1;
            v88 = v77 + 16 * v87;
            *(v88 + 32) = v83;
            *(v88 + 40) = v85;
          }

          while (v74 != v76);

          v47 = v269;
          goto LABEL_21;
        }

        __break(1u);
LABEL_110:
        swift_once();
LABEL_18:
        sub_219BF61F4();
        sub_219BE5314();
        v68 = v278;
        v69 = v71;
        v90 = v72;
        goto LABEL_23;
      }
    }

    v77 = MEMORY[0x277D84F90];
LABEL_21:
    v91 = sub_218845F78(v77);

    v280 = v91;
    sub_219BE1A64();

    v69 = v277;
    v68 = v278;
    goto LABEL_22;
  }

  (*(v48 + 96))(v55, v47);
  v62 = *v55;
  v63 = v252;
  *v252 = *v55;
  v64 = v253;
  v65 = v61;
  v66 = v254;
  (*(v253 + 104))(v63, v65, v254);
  v67 = v62;
  sub_219BE1A54();

  v68 = v278;

  (*(v64 + 8))(v63, v66);
  v69 = v277;
LABEL_22:
  v75 = v262;
  v90 = v271;
LABEL_23:
  v92 = *(v75 + 12);
  v93 = *(v75 + 16);
  v94 = v273;
  v90(v273, v274, v47);
  v95 = *(v68 + 16);
  v95(v94 + v92, v276, v69);
  v95(v93 + v94, v275, v69);
  v96 = v263(v94, v47);
  if (v96 == v272)
  {
    v97 = v251;
    (v271)(v251, v94, v47);
    v98 = v270;
    (*(v270 + 96))(v97, v47);
    v99 = v68;
    v100 = *v97;
    v101 = v47;
    v102 = *(v99 + 8);
    v102(v93 + v94, v69);
    v279 = v102;
    v102((v94 + v92), v69);
    goto LABEL_47;
  }

  v262 = v93;
  if (v96 != *MEMORY[0x277D6C9E8])
  {
    v111 = *(v68 + 88);
    v120 = v262;
    v141 = v69;
LABEL_42:
    v94 = v273;
    v142 = v111(&v273[v92], v141);
    v143 = v272;
    if (v142 == v272)
    {
      v144 = v278;
      (*(v278 + 96))(v94 + v92, v141);
      v100 = *(v94 + v92);
      v145 = *(v144 + 8);
      v146 = v120 + v94;
    }

    else
    {
      if (v111(v120 + v94, v141) != v143)
      {
        v164 = v263(v94, v269);
        v165 = *MEMORY[0x277D6C9E0];
        if (v164 == *MEMORY[0x277D6C9E0])
        {
          v166 = *(v278 + 8);
          v166(v120 + v94, v141);
          v166((v94 + v92), v141);
        }

        else
        {
          if (v111((v94 + v92), v141) == v165)
          {
            v166 = *(v278 + 8);
            v166(v120 + v94, v141);
          }

          else
          {
            if (v111(v120 + v94, v141) != v165)
            {
              sub_2195FAE60(v94, sub_2195F9888);
LABEL_50:
              sub_2195FC568(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
              swift_allocObject();
              v155 = sub_219BE3014();
              v156 = *(v278 + 8);
              v156(v275, v141);
              v156(v276, v141);
LABEL_51:
              (*(v270 + 8))(v274, v269);
              return v155;
            }

            v166 = *(v278 + 8);
            v166((v94 + v92), v141);
          }

          (*(v270 + 8))(v94, v269);
        }

        if (qword_280E8D920 != -1)
        {
          swift_once();
        }

        sub_219BF61F4();
        sub_219BE5314();
        sub_2195FC568(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
        swift_allocObject();
        v155 = sub_219BE3014();
        v166(v275, v141);
        v166(v276, v141);
        goto LABEL_51;
      }

      v147 = v278;
      (*(v278 + 96))(v120 + v94, v141);
      v100 = *(v120 + v94);
      v145 = *(v147 + 8);
      v146 = v94 + v92;
    }

    v279 = v145;
    v145(v146, v141);
    v101 = v269;
    v98 = v270;
LABEL_47:
    v136 = *(v98 + 8);
    v136(v94, v101);
    if (qword_280E8D920 == -1)
    {
LABEL_48:
      sub_219BF61F4();
      sub_2186F20D4();
      v148 = swift_allocObject();
      *(v148 + 16) = xmmword_219C09BA0;
      v280 = 0;
      v281 = 0xE000000000000000;
      v149 = v100;
      v282 = v100;
      sub_2186CFDE4(0, &qword_280E8B580);
      sub_219BF7484();
      v150 = v280;
      v151 = v281;
      *(v148 + 56) = MEMORY[0x277D837D0];
      *(v148 + 64) = sub_2186FC3BC();
      *(v148 + 32) = v150;
      *(v148 + 40) = v151;
      sub_219BE5314();

      sub_219BE1A44();
      v152 = v258;
      sub_219BE2184();

      v153 = v259;
      v154 = v260;
      if ((*(v259 + 88))(v152, v260) != *MEMORY[0x277D6C9E8])
      {
        v157 = *(v153 + 8);
        v157(v152, v154);
        v158 = v250;
        *v250 = v149;
        (*(v153 + 104))(v158, v272, v154);
        sub_219BE1A54();
        v157(v158, v154);
        v159 = sub_219BE2E54();
        v160 = v136;
        v155 = sub_219BE2F74();

        v161 = v277;
        v162 = v279;
        v279(v275, v277);
        v162(v276, v161);
        v160(v274, v269);
        return v155;
      }

      (*(v153 + 8))(v152, v154);
      v141 = v277;
      goto LABEL_50;
    }

LABEL_108:
    swift_once();
    goto LABEL_48;
  }

  LODWORD(v253) = v96;
  v103 = v248;
  v104 = v92;
  v105 = v273;
  (v271)(v248, v273, v47);
  (*(v270 + 96))(v103, v47);
  v106 = v103[1];
  v261 = *v103;
  v252 = v106;
  v107 = v103[2];
  v108 = v103[3];
  v254 = v107;
  v109 = v69;
  v110 = v104;
  v111 = *(v68 + 88);
  v100 = (v68 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v112 = v111(&v105[v104], v109);
  v113 = v253;
  if (v112 != v253)
  {

    v141 = v109;
    v92 = v110;
    v120 = v262;
    goto LABEL_42;
  }

  v248 = v108;
  v235 = v104;
  v114 = v273;
  v115 = v246;
  v95(v246, &v273[v104], v109);
  v116 = v109;
  v117 = *(v278 + 96);
  v117(v115, v116);
  v251 = *v115;
  v118 = v262;
  v119 = v111(v262 + v114, v116);
  v120 = v118;
  if (v119 != v113)
  {

    v141 = v277;
    v92 = v235;
    goto LABEL_42;
  }

  v121 = v273;
  v117((v118 + v273), v277);
  v122 = *(v118 + v121);
  v280 = v261;

  sub_2191EE91C(v123);

  v263 = v122;
  sub_2191EE91C(v124);

  sub_2191EE91C(v125);
  v126 = sub_218C3E240(v280);

  v127 = v266;
  __swift_project_boxed_opaque_existential_1(&v266[OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_myMagazinesPersonalizationService], *&v266[OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_myMagazinesPersonalizationService + 24]);
  sub_218B674E8(v126);
  v128 = sub_219BE4974();

  v129 = v127;
  v262 = v126;
  v130 = v265;
  v131 = sub_2195FA5DC(v126, v129);
  v265 = v130;
  v272 = v129;

  v132 = *(v131 + 16);
  v266 = v128;
  v271 = v132;
  if (v132)
  {
    v133 = 0;
    v134 = MEMORY[0x277D84F90];
    v135 = v256;
    v136 = v249;
    while (v133 < *(v131 + 16))
    {
      v137 = (*(v135 + 80) + 32) & ~*(v135 + 80);
      v100 = *(v135 + 72);
      sub_2195E5B7C(v131 + v137 + v100 * v133, v136, type metadata accessor for MyMagazinesIssue);
      if (sub_2195F36F0(v136, v128))
      {
        sub_2195FAE60(v136, type metadata accessor for MyMagazinesIssue);
      }

      else
      {
        sub_2190704B8(v136, v267, type metadata accessor for MyMagazinesIssue);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v280 = v134;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_218C35030(0, *(v134 + 16) + 1, 1);
          v136 = v249;
          v134 = v280;
        }

        v140 = *(v134 + 16);
        v139 = *(v134 + 24);
        if (v140 >= v139 >> 1)
        {
          sub_218C35030(v139 > 1, v140 + 1, 1);
          v136 = v249;
          v134 = v280;
        }

        *(v134 + 16) = v140 + 1;
        sub_2190704B8(v267, v134 + v137 + v140 * v100, type metadata accessor for MyMagazinesIssue);
        v135 = v256;
        v128 = v266;
      }

      if (v271 == ++v133)
      {
        goto LABEL_65;
      }
    }

    __break(1u);
    goto LABEL_108;
  }

  v134 = MEMORY[0x277D84F90];
  v135 = v256;
LABEL_65:

  v280 = v134;

  v167 = v265;
  sub_2195ED01C(&v280, type metadata accessor for MyMagazinesIssue, sub_218C81300, sub_2195F627C);
  v168 = v167;
  if (!v167)
  {

    v169 = v280;
    v170 = v251;
    if (v251 >> 62)
    {
      v171 = sub_219BF7214();
    }

    else
    {
      v171 = *((v251 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v172 = v244;
    v265 = 0;
    if (v171)
    {
      if ((v170 & 0xC000000000000001) != 0)
      {
        v173 = MEMORY[0x21CECE0F0](0, v170);
      }

      else
      {
        if (!*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_115:
          __break(1u);
          goto LABEL_116;
        }

        v173 = *(v170 + 32);
      }

      v174 = v173;
      v175 = [v173 identifier];

      v176 = sub_219BF5414();
      v178 = v177;
    }

    else
    {
      v176 = 0;
      v178 = 0;
    }

    v179 = *(v135 + 56);
    v267 = v135 + 56;
    v264 = v179;
    v179(v257, 1, 1, v255);
    v180 = *(v169 + 16);
    v258 = v169;
    if (v180)
    {
      v271 = (*(v135 + 80) + 32) & ~*(v135 + 80);
      v181 = v169 + v271;
      v182 = *(v135 + 72);
      v183 = MEMORY[0x277D84F90];
      while (1)
      {
        v185 = v279;
        sub_2195E5B7C(v181, v279, type metadata accessor for MyMagazinesIssue);
        v186 = [*v185 identifier];
        v187 = sub_219BF5414();
        v189 = v188;

        if (!v178)
        {
          break;
        }

        if (v187 == v176 && v178 == v189)
        {
        }

        else
        {
          v191 = sub_219BF78F4();

          if ((v191 & 1) == 0)
          {
            goto LABEL_87;
          }
        }

        v184 = v257;
        sub_2195FAA48(v257, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
        sub_2190704B8(v279, v184, type metadata accessor for MyMagazinesIssue);
        v264(v184, 0, 1, v255);
LABEL_78:
        v181 += v182;
        if (!--v180)
        {
          v172 = v244;
          goto LABEL_94;
        }
      }

LABEL_87:
      sub_2195E5B7C(v279, v268, type metadata accessor for MyMagazinesIssue);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v183 = sub_2191F7828(0, v183[2] + 1, 1, v183);
      }

      v193 = v183[2];
      v192 = v183[3];
      if (v193 >= v192 >> 1)
      {
        v183 = sub_2191F7828(v192 > 1, v193 + 1, 1, v183);
      }

      v183[2] = v193 + 1;
      sub_2190704B8(v268, v183 + v271 + v193 * v182, type metadata accessor for MyMagazinesIssue);
      sub_2195FAE60(v279, type metadata accessor for MyMagazinesIssue);
      goto LABEL_78;
    }

    v183 = MEMORY[0x277D84F90];
LABEL_94:

    sub_2195FA9C8(v257, v247, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
    v194 = v243;
    v195 = v242;
    if (v248 >> 62)
    {
      v196 = sub_219BF7214();
    }

    else
    {
      v196 = *((v248 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v197 = v240;
    v198 = v247;
    *(v247 + *(v240 + 20)) = v183;
    *(v198 + *(v197 + 24)) = v196;
    v199 = *&v272[OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_state];

    v279 = v199;
    sub_219BE1A44();
    v200 = v239;
    sub_219BE2184();

    v201 = v260;
    sub_219BE1A24();
    (*(v259 + 8))(v200, v201);
    sub_2195E5B7C(v198, v195, type metadata accessor for MyMagazinesState);
    (*(v172 + 56))(v195, 0, 1, v197);
    v202 = *(v241 + 48);
    v203 = v172;
    v204 = v245;
    sub_2195FA9C8(v194, v245, qword_280ED8300, type metadata accessor for MyMagazinesState);
    v205 = v204;
    sub_2195FA9C8(v195, v204 + v202, qword_280ED8300, type metadata accessor for MyMagazinesState);
    v206 = *(v203 + 48);
    if (v206(v205, 1, v197) == 1)
    {
      sub_2195FAA48(v195, qword_280ED8300, type metadata accessor for MyMagazinesState);
      v207 = v245;
      sub_2195FAA48(v194, qword_280ED8300, type metadata accessor for MyMagazinesState);
      if (v206(v207 + v202, 1, v197) == 1)
      {
        sub_2195FAA48(v207, qword_280ED8300, type metadata accessor for MyMagazinesState);
LABEL_105:

        sub_2195FC568(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
        swift_allocObject();
        v155 = sub_219BE3014();
        sub_2195FAE60(v247, type metadata accessor for MyMagazinesState);
        sub_2195FAA48(v257, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
        v229 = v277;
        v230 = *(v278 + 8);
        v230(v275, v277);
        v230(v276, v229);
        v231 = *(v270 + 8);
        v232 = v269;
        v231(v274, v269);
        v233 = v273;
        v230(&v273[v235], v229);
        v231(v233, v232);
        return v155;
      }
    }

    else
    {
      v208 = v236;
      sub_2195FA9C8(v205, v236, qword_280ED8300, type metadata accessor for MyMagazinesState);
      if (v206(v205 + v202, 1, v197) != 1)
      {
        v227 = v205 + v202;
        v228 = v238;
        sub_2190704B8(v227, v238, type metadata accessor for MyMagazinesState);
        LODWORD(v271) = sub_2195F99A4(v208, v228);
        sub_2195FAE60(v228, type metadata accessor for MyMagazinesState);
        sub_2195FAA48(v195, qword_280ED8300, type metadata accessor for MyMagazinesState);
        sub_2195FAA48(v194, qword_280ED8300, type metadata accessor for MyMagazinesState);
        sub_2195FAE60(v208, type metadata accessor for MyMagazinesState);
        sub_2195FAA48(v205, qword_280ED8300, type metadata accessor for MyMagazinesState);
        v209 = v237;
        v168 = v261;
        if (v271)
        {
          goto LABEL_105;
        }

        goto LABEL_102;
      }

      sub_2195FAA48(v195, qword_280ED8300, type metadata accessor for MyMagazinesState);
      v207 = v245;
      sub_2195FAA48(v194, qword_280ED8300, type metadata accessor for MyMagazinesState);
      sub_2195FAE60(v208, type metadata accessor for MyMagazinesState);
    }

    sub_2195FAF38(v207, &unk_280ED82F0, qword_280ED8300, type metadata accessor for MyMagazinesState);
    v209 = v237;
    v168 = v261;
LABEL_102:
    sub_219BE2CF4();
    sub_219BE55E4();

    sub_2195F97F0(0, &qword_280EE5E88, MEMORY[0x277D6C898]);
    v211 = v210;
    v212 = *(v210 - 8);
    if ((*(v212 + 48))(v209, 1, v210) != 1)
    {

      sub_218726800(0, &qword_280E8B710, sub_2195FAAB8, MEMORY[0x277D84560]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_219C09BA0;
      *(inited + 32) = 0x74736574616CLL;
      *(inited + 40) = 0xE600000000000000;
      v214 = v247;
      v215 = v238;
      sub_2195E5B7C(v247, v238, type metadata accessor for MyMagazinesState);
      *(inited + 48) = sub_2195FAB18(v215);
      *(inited + 56) = v216;
      *(inited + 64) = v217;
      *(inited + 72) = v218;
      sub_2194B19DC(inited);
      swift_setDeallocating();
      sub_2195FAE60(inited + 32, sub_2195FAAB8);
      sub_219BE55C4();

      (*(v212 + 8))(v209, v211);
      v219 = sub_219BE2E54();
      sub_219BE2F74();

      v220 = sub_219BE2E54();
      sub_219BE2FD4();

      sub_219BE1A64();
      v221 = sub_219BE2E54();
      v155 = sub_219BE2F74();

      sub_2195FAE60(v214, type metadata accessor for MyMagazinesState);
      sub_2195FAA48(v257, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
      v222 = v277;
      v223 = *(v278 + 8);
      v223(v275, v277);
      v223(v276, v222);
      v224 = *(v270 + 8);
      v225 = v269;
      v224(v274, v269);
      v226 = v273;
      v223(&v273[v235], v222);
      v224(v226, v225);
      return v155;
    }

    goto LABEL_115;
  }

LABEL_116:

  __break(1u);
  return result;
}

uint64_t sub_2195F36F0(id *a1, uint64_t a2)
{
  v67 = a2;
  sub_218726800(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v65 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v65 - v7;
  v9 = sub_219BDBD34();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v71 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v65 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v66 = &v65 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v65 - v19;
  MEMORY[0x28223BE20](v18);
  v72 = &v65 - v21;
  v70 = a1;
  v22 = [*a1 identifier];
  v23 = v22;
  v24 = v22;
  if (!v22)
  {
    sub_219BF5414();
    v24 = sub_219BF53D4();

    sub_219BF5414();
    v23 = sub_219BF53D4();
  }

  v25 = sub_219BF5414();
  v68 = v26;
  v69 = v25;
  v27 = *(v2 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_issueReadingHistory);
  v28 = v22;
  v29 = [v27 lastRemovedFromMyMagazinesDateForIssueWithID_];

  if (v29)
  {
    sub_219BDBCA4();

    v30 = *(v10 + 32);
    v30(v72, v20, v9);
    v31 = [v27 lastEngagedDateForIssueWithID_];

    if (v31)
    {
      sub_219BDBCA4();

      v30(v8, v15, v9);
      (*(v10 + 56))(v8, 0, 1, v9);
      v32 = v66;
      v30(v66, v8, v9);
      v33 = v69;
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
      v32 = v66;
      sub_219BDBBB4();
      v35 = (*(v10 + 48))(v8, 1, v9);
      v33 = v69;
      if (v35 != 1)
      {
        sub_2195FAA48(v8, &qword_280EE9C40, MEMORY[0x277CC9578]);
      }
    }

    v36 = type metadata accessor for MyMagazinesIssue(0);
    v37 = v65;
    sub_2195FA9C8(v70 + *(v36 + 28), v65, &qword_280EE9C40, MEMORY[0x277CC9578]);
    v38 = *(v10 + 48);
    if (v38(v37, 1, v9) == 1)
    {
      sub_219BDBBB4();
      v39 = v38(v37, 1, v9);
      v40 = v68;
      if (v39 != 1)
      {
        sub_2195FAA48(v37, &qword_280EE9C40, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      v30(v71, v37, v9);
      v40 = v68;
    }

    if (sub_219BDBC14() & 1) != 0 && (sub_219BDBC14())
    {
      if (qword_280E8D920 != -1)
      {
        swift_once();
      }

      sub_2186F20D4();
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_219C09BA0;
      *(v41 + 56) = MEMORY[0x277D837D0];
      *(v41 + 64) = sub_2186FC3BC();
      *(v41 + 32) = v33;
      *(v41 + 40) = v40;
      sub_219BF6214();
      sub_219BE5314();

      v42 = *(v10 + 8);
      v42(v71, v9);
      v42(v32, v9);
      v42(v72, v9);
      return 1;
    }

    if (qword_280E8D920 != -1)
    {
      swift_once();
    }

    v68 = qword_280F617C8;
    sub_2186F20D4();
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_219C0EE20;
    v45 = MEMORY[0x277D837D0];
    *(v44 + 56) = MEMORY[0x277D837D0];
    v46 = sub_2186FC3BC();
    *(v44 + 64) = v46;
    *(v44 + 32) = v33;
    *(v44 + 40) = v40;
    v34 = v40;

    v47 = v72;
    v48 = sub_219BDBBA4();
    *(v44 + 96) = v45;
    *(v44 + 104) = v46;
    *(v44 + 72) = v48;
    *(v44 + 80) = v49;
    v50 = sub_219BDBBA4();
    *(v44 + 136) = v45;
    *(v44 + 144) = v46;
    *(v44 + 112) = v50;
    *(v44 + 120) = v51;
    v52 = v32;
    v53 = v71;
    v54 = sub_219BDBBA4();
    *(v44 + 176) = v45;
    *(v44 + 184) = v46;
    *(v44 + 152) = v54;
    *(v44 + 160) = v55;
    sub_219BF6214();
    sub_219BE5314();

    v56 = *(v10 + 8);
    v56(v53, v9);
    v56(v52, v9);
    v56(v47, v9);
  }

  else
  {

    v34 = v68;
  }

  v57 = v67;
  if (!v67 || *(v70 + 8) != 1)
  {
LABEL_32:

    return 0;
  }

  if (!*(v67 + 16) || (v58 = sub_21870F700(v69, v34), (v59 & 1) == 0))
  {
    if (qword_280E8D920 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_2186F20D4();
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_219C09BA0;
    *(v64 + 56) = MEMORY[0x277D837D0];
    *(v64 + 64) = sub_2186FC3BC();
    *(v64 + 32) = v69;
    *(v64 + 40) = v34;
    sub_219BE5314();
    goto LABEL_32;
  }

  v60 = *(*(v57 + 56) + v58);
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_219C09EC0;
  *(v61 + 56) = MEMORY[0x277D837D0];
  *(v61 + 64) = sub_2186FC3BC();
  *(v61 + 32) = v69;
  *(v61 + 40) = v34;
  v62 = v60 ^ 1u;
  v63 = MEMORY[0x277D839F0];
  *(v61 + 96) = MEMORY[0x277D839B0];
  *(v61 + 104) = v63;
  *(v61 + 72) = v62;
  sub_219BF6214();
  sub_219BE5314();

  return v62;
}

uint64_t sub_2195F3FB8()
{
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  return sub_219BE5314();
}

uint64_t sub_2195F4044()
{
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_219BF6204();
  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2186FC3BC();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_219BE5314();
}

uint64_t sub_2195F4170(void **a1, uint64_t a2)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = v3;
  v5 = v3;

  sub_2194FB2A4(0, &qword_280EE6940, &unk_280E8DCD0, 0x277D30F28, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

void sub_2195F4240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_currentIssuesChecker);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = sub_2189EB59C;
  v12[5] = v10;
  v14[4] = sub_2195FB1F8;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_218B66540;
  v14[3] = &block_descriptor_145;
  v13 = _Block_copy(v14);

  [v11 fetchUsersCurrentIssuesWithCompletion_];
  _Block_release(v13);
}

void sub_2195F4378(void *a1, void (*a2)(void *), uint64_t a3, void (*a4)(void *))
{
  v7 = [a1 error];
  if (v7)
  {
    v8 = v7;
    if (qword_280E8D920 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_2186F20D4();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_219C09BA0;
    sub_2186CFDE4(0, &qword_280E8B580);
    sub_219BF7484();
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_2186FC3BC();
    *(v9 + 32) = 0;
    *(v9 + 40) = 0xE000000000000000;
    sub_219BE5314();

    a2(v8);
  }

  else
  {
    a4(a1);
  }
}

uint64_t sub_2195F44FC(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = [*a1 followedIssues];
  if (v6)
  {
    v7 = v6;
    sub_2186C6148(0, &qword_280E8DAB0);
    v8 = sub_219BF5924();

    v9 = [v5 unreadFollowedIssues];
    if (v9)
    {
      v10 = v9;
      v11 = sub_219BF5924();

      v12 = [v5 autoFavoriteIssues];
      if (v12)
      {
        v13 = v12;
        v14 = sub_219BF5924();

        v15 = [v5 unbadgedIssues];
        if (v15)
        {
          v16 = v15;
          v17 = sub_219BF5924();

          swift_beginAccess();
          v18 = *(a2 + 16);
          if (v18)
          {
            v19 = qword_280E8D920;
            v20 = v18;
            if (v19 != -1)
            {
              swift_once();
            }

            sub_2186F20D4();
            v21 = swift_allocObject();
            *(v21 + 16) = xmmword_219C0EE20;
            if (v8 >> 62)
            {
              v22 = sub_219BF7214();
            }

            else
            {
              v22 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v23 = MEMORY[0x277D83B88];
            v24 = MEMORY[0x277D83C10];
            *(v21 + 56) = MEMORY[0x277D83B88];
            *(v21 + 64) = v24;
            v42 = v22;
            *(v21 + 32) = v22;
            if (v14 >> 62)
            {
              v25 = sub_219BF7214();
              v24 = MEMORY[0x277D83C10];
              v23 = MEMORY[0x277D83B88];
            }

            else
            {
              v25 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v21 + 96) = v23;
            *(v21 + 104) = v24;
            v40 = v25;
            *(v21 + 72) = v25;
            v43 = v17;
            if (v11 >> 62)
            {
              v38 = v24;
              v26 = sub_219BF7214();
              v24 = v38;
              v23 = MEMORY[0x277D83B88];
            }

            else
            {
              v26 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v21 + 136) = v23;
            *(v21 + 144) = v24;
            *(v21 + 112) = v26;
            v27 = v20;
            if (v43 >> 62)
            {
              v39 = v24;
              v28 = sub_219BF7214();
              v24 = v39;
              v23 = MEMORY[0x277D83B88];
            }

            else
            {
              v28 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v21 + 176) = v23;
            *(v21 + 184) = v24;
            *(v21 + 152) = v28;
            sub_219BF6214();
            sub_219BE5314();

            v29 = [objc_opt_self() currentDevice];
            v30 = [v29 userInterfaceIdiom];

            v31 = &selRef_minFollowedMagazinesToHideSuggestionsRegular;
            if (v30 != 1)
            {
              v31 = &selRef_minFollowedMagazinesToHideSuggestionsCompact;
            }

            if ([v27 *v31] < v42)
            {

              v32 = swift_allocObject();
              *(v32 + 16) = xmmword_219C09EC0;
              v33 = MEMORY[0x277D83B88];
              *(v32 + 56) = MEMORY[0x277D83B88];
              v34 = MEMORY[0x277D83C10];
              *(v32 + 64) = MEMORY[0x277D83C10];
              *(v32 + 72) = v42;
              *(v32 + 32) = v41;
              *(v32 + 96) = v33;
              *(v32 + 104) = v34;
              sub_219BF6214();
              sub_219BE5314();
            }

            sub_219BE1A64();

            v35 = sub_219BE2E54();
            a3 = sub_219BE2F74();

            return a3;
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_219BE5314();
  sub_2195FB19C();
  swift_allocError();
  *v36 = 0;
  swift_willThrow();
  return a3;
}

uint64_t sub_2195F4A64(uint64_t a1)
{
  sub_2195FC568(0, &qword_280EE7EF8, &type metadata for CurrentIssuesState, MEMORY[0x277D6C9F8]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v16 - v5);
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  v17 = 0;
  v18 = 0xE000000000000000;
  v19 = a1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v9 = v17;
  v8 = v18;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_2186FC3BC();
  *(v7 + 32) = v9;
  *(v7 + 40) = v8;
  sub_219BE5314();

  if (qword_27CC086B0 != -1)
  {
    swift_once();
  }

  v10 = unk_27CCD8D30;
  v11 = qword_27CCD8D38;
  v12 = unk_27CCD8D40;
  *v6 = qword_27CCD8D28;
  v6[1] = v10;
  v6[2] = v11;
  v6[3] = v12;
  (*(v4 + 104))(v6, *MEMORY[0x277D6C9E8], v3);

  sub_219BE1A54();
  (*(v4 + 8))(v6, v3);
  v13 = sub_219BE2E54();
  v14 = sub_219BE2F74();

  return v14;
}

uint64_t sub_2195F4D48(id *a1, uint64_t a2)
{
  v3 = [*a1 minimumReadIssuesInMyMagazines];
  v4 = *(a2 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_issueReadingHistory);
  v5 = [v4 recentlyEngagedIssueIDs];
  v6 = MEMORY[0x277D837D0];
  v7 = sub_219BF5924();

  v8 = *(v7 + 16);

  if (v8 > v3)
  {
    v3 = v8;
  }

  v9 = [v4 allEngagedIssueIDs];
  v10 = sub_219BF5924();

  v14 = sub_219A79734(v3, v10);
  if ((v13 & 1) == 0)
  {
    goto LABEL_4;
  }

  v17 = v13;
  v18 = v12;
  v19 = v11;
  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    v20 = MEMORY[0x277D84F90];
  }

  v21 = *(v20 + 16);

  if (__OFSUB__(v17 >> 1, v18))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v21 != (v17 >> 1) - v18)
  {
LABEL_16:
    swift_unknownObjectRelease();
    v13 = v17;
    v12 = v18;
    v11 = v19;
LABEL_4:
    sub_218B666EC(v14, v11, v12, v13);
    v16 = v15;
    goto LABEL_11;
  }

  v16 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v16)
  {
    goto LABEL_12;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_219C09BA0;
  v23 = MEMORY[0x21CECC6D0](v16, v6);
  v25 = v24;
  *(v22 + 56) = v6;
  *(v22 + 64) = sub_2186FC3BC();
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  sub_219BF6214();
  sub_219BE5314();

  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_issueService), *(a2 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_issueService + 24));
  v26 = sub_219BF1E44();

  return v26;
}

uint64_t sub_2195F4FD8(uint64_t a1)
{
  v2 = [*(a1 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_offlineIssueList) issueIDs];
  v3 = MEMORY[0x277D837D0];
  v4 = sub_219BF5924();

  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  v6 = MEMORY[0x21CECC6D0](v4, v3);
  v8 = v7;
  *(v5 + 56) = v3;
  *(v5 + 64) = sub_2186FC3BC();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  sub_219BF6214();
  sub_219BE5314();

  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_issueService), *(a1 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_issueService + 24));
  v9 = sub_219BF1E44();

  return v9;
}

uint64_t sub_2195F513C(unint64_t *a1)
{
  v1 = *a1;
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09BA0;
  if (v1 >> 62)
  {
    v3 = sub_219BF7214();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D83C10];
  *(v2 + 56) = MEMORY[0x277D83B88];
  *(v2 + 64) = v4;
  *(v2 + 32) = v3;
  sub_219BF6214();
  sub_219BE5314();

  sub_219BE1A64();
  v5 = sub_219BE2E54();
  v6 = sub_219BE2F74();

  return v6;
}

uint64_t sub_2195F52B0()
{
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2186FC3BC();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_219BE5314();

  sub_219BE1A64();
  v1 = sub_219BE2E54();
  v2 = sub_219BE2F74();

  return v2;
}

uint64_t sub_2195F5454()
{
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v1 = MEMORY[0x277D83A80];
  *(v0 + 56) = MEMORY[0x277D839F8];
  *(v0 + 64) = v1;
  *(v0 + 32) = v2;
  sub_219BF6214();
  sub_219BE5314();
}

uint64_t sub_2195F5590(uint64_t a1)
{
  v3 = *v1;
  sub_219BE3204();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2195F60E4;
  *(v5 + 24) = v4;
  v6 = v3;

  v7 = sub_219BE2E54();
  v8 = sub_219BE2F64();

  return v8;
}

void sub_2195F5694()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2195F56F0();
  }
}

void sub_2195F56F0()
{
  v1 = type metadata accessor for MyMagazinesIssue(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v44 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x28223BE20](v3);
  v43 = &v41 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v42 = (&v41 - v8);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - v9;
  v45 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_issueService), *(v0 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_issueService + 24));
  v11 = sub_219BF1E54();
  v12 = v11;
  if (v11 >> 62)
  {
    goto LABEL_33;
  }

  v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
LABEL_36:

LABEL_31:

    return;
  }

LABEL_3:
  v46 = MEMORY[0x277D84F90];
  sub_218C35030(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v15 = v46;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x21CECE0F0](v14, v12);
      }

      else
      {
        v16 = *(v12 + 8 * v14 + 32);
      }

      v17 = v16;
      sub_2195EFE8C(v16, v10);

      v46 = v15;
      v19 = *(v15 + 2);
      v18 = *(v15 + 3);
      if (v19 >= v18 >> 1)
      {
        sub_218C35030(v18 > 1, v19 + 1, 1);
        v15 = v46;
      }

      ++v14;
      *(v15 + 2) = v19 + 1;
      sub_2190704B8(v10, &v15[((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v19], type metadata accessor for MyMagazinesIssue);
    }

    while (v13 != v14);

    while (1)
    {
      v20 = *(v15 + 2);
      v10 = MEMORY[0x277D84F90];
      v21 = v42;
      if (!v20)
      {
        break;
      }

      v22 = 0;
      while (v22 < *(v15 + 2))
      {
        v23 = (*(v2 + 80) + 32) & ~*(v2 + 80);
        v12 = *(v2 + 72);
        sub_2195E5B7C(&v15[v23 + v12 * v22], v21, type metadata accessor for MyMagazinesIssue);
        if (sub_2195F36F0(v21, 0))
        {
          sub_2190704B8(v21, v43, type metadata accessor for MyMagazinesIssue);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v46 = v10;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_218C35030(0, *(v10 + 2) + 1, 1);
            v10 = v46;
          }

          v26 = *(v10 + 2);
          v25 = *(v10 + 3);
          if (v26 >= v25 >> 1)
          {
            sub_218C35030(v25 > 1, v26 + 1, 1);
            v10 = v46;
          }

          *(v10 + 2) = v26 + 1;
          sub_2190704B8(v43, &v10[v23 + v26 * v12], type metadata accessor for MyMagazinesIssue);
          v21 = v42;
        }

        else
        {
          sub_2195FAE60(v21, type metadata accessor for MyMagazinesIssue);
        }

        if (v20 == ++v22)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_33:
      if (!sub_219BF7214())
      {
        goto LABEL_36;
      }

      v13 = sub_219BF7214();
      if (v13)
      {
        goto LABEL_3;
      }

      v15 = MEMORY[0x277D84F90];
    }

LABEL_23:

    v27 = *(v10 + 2);
    if (v27)
    {
      v46 = MEMORY[0x277D84F90];
      sub_21870B65C(0, v27, 0);
      v28 = v46;
      v29 = &v10[(*(v2 + 80) + 32) & ~*(v2 + 80)];
      v30 = *(v2 + 72);
      do
      {
        v31 = v44;
        sub_2195E5B7C(v29, v44, type metadata accessor for MyMagazinesIssue);
        v32 = [*v31 identifier];
        v33 = sub_219BF5414();
        v35 = v34;

        sub_2195FAE60(v31, type metadata accessor for MyMagazinesIssue);
        v46 = v28;
        v37 = *(v28 + 2);
        v36 = *(v28 + 3);
        if (v37 >= v36 >> 1)
        {
          sub_21870B65C((v36 > 1), v37 + 1, 1);
          v28 = v46;
        }

        *(v28 + 2) = v37 + 1;
        v38 = &v28[16 * v37];
        *(v38 + 4) = v33;
        *(v38 + 5) = v35;
        v29 += v30;
        --v27;
      }

      while (v27);

      if (*(v28 + 2))
      {
        goto LABEL_29;
      }
    }

    else
    {

      if (*(MEMORY[0x277D84F90] + 16))
      {
LABEL_29:
        v39 = *(v45 + OBJC_IVAR____TtC7NewsUI216MyMagazinesStore_offlineIssueList);
        v40 = sub_219BF5904();

        [v39 removeIssueIDs_];

        return;
      }
    }

    goto LABEL_31;
  }

  __break(1u);
}

uint64_t sub_2195F5F5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2195F5FA4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_2195F6078()
{
  result = qword_27CC1CDD8;
  if (!qword_27CC1CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CDD8);
  }

  return result;
}

uint64_t sub_2195F6150(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_219BF7884();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_219BDBD34();
        v6 = sub_219BF5A34();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_219BDBD34() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2195F6B20(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2195F685C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2195F627C(uint64_t *a1)
{
  sub_218726800(0, &qword_280EE9C10, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v57 = v52 - v4;
  v66 = sub_219BDBD34();
  v5 = *(v66 - 8);
  v6 = MEMORY[0x28223BE20](v66);
  v65 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v52 - v8;
  v61 = type metadata accessor for MyMagazinesIssue(0);
  v10 = *(v61 - 8);
  v11 = MEMORY[0x28223BE20](v61);
  v60 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (v52 - v14);
  MEMORY[0x28223BE20](v13);
  v17 = (v52 - v16);
  v18 = a1[1];
  result = sub_219BF7884();
  if (result < v18)
  {
    if (v18 >= -1)
    {
      v20 = result;
      if (v18 <= 1)
      {
        v21 = MEMORY[0x277D84F90];
      }

      else
      {
        v21 = sub_219BF5A34();
        *(v21 + 16) = v18 / 2;
      }

      v68 = v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v69 = v18 / 2;
      v51 = v21;
      sub_2195F7548(&v68, v67, a1, v20);
      *(v51 + 16) = 0;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v18 < 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  if (v18 >= 2)
  {
    v64 = v15;
    v52[1] = v1;
    v53 = v18;
    v22 = *a1;
    v23 = *(v10 + 72);
    v62 = (v5 + 8);
    v63 = v23;
    v58 = -v23;
    v59 = v22;
    v24 = -1;
    v25 = 1;
    v26 = v22;
    do
    {
      v55 = v25;
      v56 = v24;
      v27 = v24;
      v54 = v26;
      do
      {
        v70 = v27;
        sub_2195E5B7C(v26 + v23, v17, type metadata accessor for MyMagazinesIssue);
        v28 = v64;
        sub_2195E5B7C(v26, v64, type metadata accessor for MyMagazinesIssue);
        sub_2195EDDDC(v9);
        v29 = v9;
        v30 = v65;
        sub_2195EDDDC(v65);
        v31 = sub_219BDBCC4();
        v32 = *v62;
        v33 = v66;
        (*v62)(v30, v66);
        v32(v29, v33);
        if (v31)
        {
          sub_2195EDDDC(v29);
          sub_2195EDDDC(v30);
          v34 = sub_219BDBCC4();
          v32(v30, v33);
          v32(v29, v33);
          v35 = v34 == 1;
        }

        else
        {
          v36 = [*v17 identifier];
          v37 = sub_219BF5414();
          v39 = v38;

          v68 = v37;
          v69 = v39;
          v40 = [*v28 identifier];
          v41 = sub_219BF5414();
          v43 = v42;

          v67[0] = v41;
          v67[1] = v43;
          v44 = sub_219BDBE34();
          v45 = v57;
          (*(*(v44 - 8) + 56))(v57, 1, 1, v44);
          sub_2187F3BD4();
          v46 = sub_219BF7074();
          sub_2195FAA48(v45, &qword_280EE9C10, MEMORY[0x277CC9788]);

          v35 = v46 == -1;
        }

        v47 = v35;
        v9 = v29;
        sub_2195FAE60(v28, type metadata accessor for MyMagazinesIssue);
        result = sub_2195FAE60(v17, type metadata accessor for MyMagazinesIssue);
        v23 = v63;
        v48 = v70;
        if (!v47)
        {
          break;
        }

        if (!v59)
        {
          goto LABEL_26;
        }

        v49 = v60;
        sub_2190704B8(v26 + v63, v60, type metadata accessor for MyMagazinesIssue);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_2190704B8(v49, v26, type metadata accessor for MyMagazinesIssue);
        v26 += v58;
        v50 = __CFADD__(v48, 1);
        v27 = v48 + 1;
      }

      while (!v50);
      v25 = v55 + 1;
      v26 = v54 + v23;
      v24 = v56 - 1;
    }

    while (v55 + 1 != v53);
  }

  return result;
}

uint64_t sub_2195F685C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_219BDBD34();
  v9 = MEMORY[0x28223BE20](v8);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v45 = &v31 - v12;
  result = MEMORY[0x28223BE20](v11);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v14 + 16);
    v43 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v39 = (v14 + 32);
    v40 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8);
      v25 = v45;
      v24(v45, v22, v8);
      sub_2195FB02C(&qword_280EE9C90, MEMORY[0x277CC9578]);
      v26 = sub_219BF5334();
      v27 = *v18;
      (*v18)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2195F6B20(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_219BDBD34();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v127 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v134 = &v119 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v140 = &v119 - v15;
  result = MEMORY[0x28223BE20](v14);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_218C81048(v20);
      v20 = result;
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_2195F871C(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_218C81048(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        result = sub_218C80FBC(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = MEMORY[0x277D84F90];
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      v27(v140, v29, v26);
      v130 = sub_2195FB02C(&qword_280EE9C90, MEMORY[0x277CC9578]);
      LODWORD(v133) = sub_219BF5334();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      result = (v31)(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_219BF5334() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        result = v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v133)(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2191F6B60(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      result = sub_2191F6B60((v53 > 1), v54 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_2195F871C(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_218C81048(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        result = sub_218C80FBC(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_2195FB02C(&qword_280EE9C90, MEMORY[0x277CC9578]);
    v109 = sub_219BF5334();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    result = v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_2195F7548(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v185 = a1;
  sub_218726800(0, &qword_280EE9C10, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v196 = &v179 - v9;
  v10 = sub_219BDBD34();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v197 = &v179 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v179 - v14;
  v201 = type metadata accessor for MyMagazinesIssue(0);
  v192 = *(v201 - 8);
  v16 = MEMORY[0x28223BE20](v201);
  v187 = &v179 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v200 = &v179 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = (&v179 - v21);
  v23 = MEMORY[0x28223BE20](v20);
  v24 = MEMORY[0x28223BE20](v23);
  v180 = (&v179 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v179 = (&v179 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v182 = (&v179 - v29);
  result = MEMORY[0x28223BE20](v28);
  v181 = (&v179 - v32);
  v33 = *(a3 + 8);
  v188 = a3;
  if (v33 < 1)
  {
    v203 = MEMORY[0x277D84F90];
LABEL_116:
    v15 = *v185;
    if (!*v185)
    {
      goto LABEL_154;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_148:
      result = sub_218C81048(v203);
      v203 = result;
    }

    v212 = v203;
    v174 = *(v203 + 2);
    if (v174 >= 2)
    {
      while (1)
      {
        v175 = *a3;
        if (!*a3)
        {
          goto LABEL_152;
        }

        a3 = *&v203[16 * v174];
        v176 = *&v203[16 * v174 + 24];
        sub_2195F8D10(v175 + *(v192 + 72) * a3, v175 + *(v192 + 72) * *&v203[16 * v174 + 16], v175 + *(v192 + 72) * v176, v15);
        if (v5)
        {
        }

        if (v176 < a3)
        {
          goto LABEL_141;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v203 = sub_218C81048(v203);
        }

        if (v174 - 2 >= *(v203 + 2))
        {
          goto LABEL_142;
        }

        v177 = v203;
        v178 = &v203[16 * v174];
        *v178 = a3;
        *(v178 + 1) = v176;
        v212 = v177;
        result = sub_218C80FBC(v174 - 1);
        v203 = v212;
        v174 = *(v212 + 2);
        a3 = v188;
        if (v174 <= 1)
        {
        }
      }
    }
  }

  v202 = v31;
  v34 = 0;
  v203 = MEMORY[0x277D84F90];
  v204 = (v11 + 8);
  v184 = a4;
  v205 = v15;
  v207 = v22;
  v35 = a4;
  while (1)
  {
    v36 = v34 + 1;
    v186 = v34;
    if (v34 + 1 < v33)
    {
      v190 = v33;
      v183 = v5;
      v37 = v15;
      v38 = *a3;
      v39 = *(v192 + 72);
      v195 = v34 + 1;
      v40 = v181;
      sub_2195E5B7C(v38 + v39 * v36, v181, type metadata accessor for MyMagazinesIssue);
      v193 = v39;
      v41 = v182;
      sub_2195E5B7C(v38 + v39 * v34, v182, type metadata accessor for MyMagazinesIssue);
      sub_2195EDDDC(v37);
      v42 = v197;
      sub_2195EDDDC(v197);
      v43 = sub_219BDBCC4();
      v44 = *v204;
      (*v204)(v42, v10);
      v44(v37, v10);
      if (v43)
      {
        sub_2195EDDDC(v37);
        sub_2195EDDDC(v42);
        v45 = sub_219BDBCC4();
        v44(v42, v10);
        v44(v37, v10);
        v46 = v45 == 1;
      }

      else
      {
        v47 = [*v40 identifier];
        v48 = sub_219BF5414();
        v50 = v49;

        v210 = v48;
        v211 = v50;
        v51 = [*v41 identifier];
        v52 = sub_219BF5414();
        v54 = v53;

        v208 = v52;
        v209 = v54;
        v40 = v181;
        v55 = sub_219BDBE34();
        v56 = v196;
        (*(*(v55 - 8) + 56))(v196, 1, 1, v55);
        sub_2187F3BD4();
        v57 = sub_219BF7074();
        v58 = v56;
        v41 = v182;
        sub_2195FAA48(v58, &qword_280EE9C10, MEMORY[0x277CC9788]);

        v46 = v57 == -1;
      }

      v59 = v46;
      LODWORD(v191) = v59;
      sub_2195FAE60(v41, type metadata accessor for MyMagazinesIssue);
      sub_2195FAE60(v40, type metadata accessor for MyMagazinesIssue);
      v60 = v186 + 2;
      v61 = v193 * (v186 + 2);
      result = v38 + v61;
      v62 = v195;
      v63 = v193 * v195;
      v64 = v38 + v193 * v195;
      v22 = v207;
      v65 = v180;
      v66 = v179;
      do
      {
        v15 = v60;
        v70 = v62;
        v199 = v63;
        v71 = v61;
        if (v60 >= v190)
        {
          break;
        }

        v206 = v62;
        v194 = result;
        v195 = v61;
        v198 = v60;
        sub_2195E5B7C(result, v66, type metadata accessor for MyMagazinesIssue);
        sub_2195E5B7C(v64, v65, type metadata accessor for MyMagazinesIssue);
        v72 = v205;
        sub_2195EDDDC(v205);
        v73 = v197;
        sub_2195EDDDC(v197);
        v74 = sub_219BDBCC4();
        v75 = v44;
        v44(v73, v10);
        v44(v72, v10);
        if (v74)
        {
          sub_2195EDDDC(v72);
          sub_2195EDDDC(v73);
          v67 = sub_219BDBCC4();
          v44(v73, v10);
          v44(v72, v10);
          v68 = v67 == 1;
        }

        else
        {
          v76 = [*v66 identifier];
          v77 = sub_219BF5414();
          v79 = v78;
          v189 = v78;

          v210 = v77;
          v211 = v79;
          v80 = [*v65 identifier];
          v81 = sub_219BF5414();
          v83 = v82;

          v208 = v81;
          v209 = v83;
          v84 = sub_219BDBE34();
          v85 = v196;
          (*(*(v84 - 8) + 56))(v196, 1, 1, v84);
          sub_2187F3BD4();
          v86 = sub_219BF7074();
          sub_2195FAA48(v85, &qword_280EE9C10, MEMORY[0x277CC9788]);

          v68 = v86 == -1;
        }

        v69 = v68;
        v44 = v75;
        sub_2195FAE60(v65, type metadata accessor for MyMagazinesIssue);
        sub_2195FAE60(v66, type metadata accessor for MyMagazinesIssue);
        v15 = v198;
        v60 = v198 + 1;
        result = v194 + v193;
        v64 += v193;
        v70 = v206;
        v62 = (v206 + 1);
        v63 = v199 + v193;
        v71 = v195;
        v61 = v195 + v193;
        v46 = v191 == v69;
        v22 = v207;
      }

      while (v46);
      if (v191)
      {
        a3 = v186;
        v5 = v183;
        if (v15 < v186)
        {
          goto LABEL_145;
        }

        if (v186 >= v15)
        {
          v36 = v15;
          a3 = v188;
          v15 = v205;
        }

        else
        {
          v87 = v186 * v193;
          v88 = v199;
          do
          {
            if (a3 != v70)
            {
              v206 = v70;
              v90 = v5;
              v91 = *v188;
              if (!*v188)
              {
                goto LABEL_151;
              }

              v92 = v71;
              sub_2190704B8(v91 + v87, v187, type metadata accessor for MyMagazinesIssue);
              if (v87 < v88 || v91 + v87 >= (v91 + v92))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v87 != v88)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_2190704B8(v187, v91 + v88, type metadata accessor for MyMagazinesIssue);
              v5 = v90;
              v71 = v92;
              v70 = v206;
            }

            ++a3;
            v88 -= v193;
            v71 -= v193;
            v87 += v193;
            v89 = a3 < v70;
            v70 = (v70 - 1);
          }

          while (v89);
          v36 = v15;
          a3 = v188;
          v15 = v205;
          v22 = v207;
        }

        v35 = v184;
      }

      else
      {
        v36 = v15;
        a3 = v188;
        v35 = v184;
        v15 = v205;
        v5 = v183;
      }
    }

    v93 = *(a3 + 8);
    if (v36 >= v93)
    {
      goto LABEL_63;
    }

    if (__OFSUB__(v36, v186))
    {
      goto LABEL_144;
    }

    if (v36 - v186 >= v35)
    {
LABEL_63:
      v94 = v186;
      goto LABEL_64;
    }

    v94 = v186;
    v95 = v186 + v35;
    if (__OFADD__(v186, v35))
    {
      goto LABEL_146;
    }

    if (v95 >= v93)
    {
      v95 = *(a3 + 8);
    }

    if (v95 < v186)
    {
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    if (v36 != v95)
    {
      break;
    }

LABEL_64:
    if (v36 < v94)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v34 = v36;
    if ((result & 1) == 0)
    {
      result = sub_2191F6B60(0, *(v203 + 2) + 1, 1, v203);
      v203 = result;
    }

    v127 = *(v203 + 2);
    v126 = *(v203 + 3);
    v128 = v127 + 1;
    if (v127 >= v126 >> 1)
    {
      result = sub_2191F6B60((v126 > 1), v127 + 1, 1, v203);
      v203 = result;
    }

    v129 = v203;
    *(v203 + 2) = v128;
    v130 = &v129[16 * v127];
    *(v130 + 4) = v94;
    *(v130 + 5) = v34;
    v131 = *v185;
    if (!*v185)
    {
      goto LABEL_153;
    }

    if (v127)
    {
      v15 = v205;
      while (1)
      {
        v132 = v128 - 1;
        if (v128 >= 4)
        {
          break;
        }

        if (v128 == 3)
        {
          v133 = *(v203 + 4);
          v134 = *(v203 + 5);
          v143 = __OFSUB__(v134, v133);
          v135 = v134 - v133;
          v136 = v143;
LABEL_85:
          if (v136)
          {
            goto LABEL_132;
          }

          v149 = &v203[16 * v128];
          v151 = *v149;
          v150 = *(v149 + 1);
          v152 = __OFSUB__(v150, v151);
          v153 = v150 - v151;
          v154 = v152;
          if (v152)
          {
            goto LABEL_135;
          }

          v155 = &v203[16 * v132 + 32];
          v157 = *v155;
          v156 = *(v155 + 1);
          v143 = __OFSUB__(v156, v157);
          v158 = v156 - v157;
          if (v143)
          {
            goto LABEL_138;
          }

          if (__OFADD__(v153, v158))
          {
            goto LABEL_139;
          }

          if (v153 + v158 >= v135)
          {
            if (v135 < v158)
            {
              v132 = v128 - 2;
            }

            goto LABEL_106;
          }

          goto LABEL_99;
        }

        v159 = &v203[16 * v128];
        v161 = *v159;
        v160 = *(v159 + 1);
        v143 = __OFSUB__(v160, v161);
        v153 = v160 - v161;
        v154 = v143;
LABEL_99:
        if (v154)
        {
          goto LABEL_134;
        }

        v162 = &v203[16 * v132];
        v164 = *(v162 + 4);
        v163 = *(v162 + 5);
        v143 = __OFSUB__(v163, v164);
        v165 = v163 - v164;
        if (v143)
        {
          goto LABEL_137;
        }

        if (v165 < v153)
        {
          goto LABEL_4;
        }

LABEL_106:
        v15 = v132 - 1;
        if (v132 - 1 >= v128)
        {
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        if (!*a3)
        {
          goto LABEL_150;
        }

        v170 = *&v203[16 * v15 + 32];
        v171 = *&v203[16 * v132 + 40];
        sub_2195F8D10(*a3 + *(v192 + 72) * v170, *a3 + *(v192 + 72) * *&v203[16 * v132 + 32], *a3 + *(v192 + 72) * v171, v131);
        if (v5)
        {
        }

        if (v171 < v170)
        {
          goto LABEL_128;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v203 = sub_218C81048(v203);
        }

        if (v15 >= *(v203 + 2))
        {
          goto LABEL_129;
        }

        v172 = v203;
        v173 = &v203[16 * v15];
        *(v173 + 4) = v170;
        *(v173 + 5) = v171;
        v212 = v172;
        result = sub_218C80FBC(v132);
        v203 = v212;
        v128 = *(v212 + 2);
        v15 = v205;
        v22 = v207;
        if (v128 <= 1)
        {
          goto LABEL_4;
        }
      }

      v137 = &v203[16 * v128 + 32];
      v138 = *(v137 - 8);
      v139 = *(v137 - 7);
      v143 = __OFSUB__(v139, v138);
      v140 = v139 - v138;
      if (v143)
      {
        goto LABEL_130;
      }

      v142 = *(v137 - 6);
      v141 = *(v137 - 5);
      v143 = __OFSUB__(v141, v142);
      v135 = v141 - v142;
      v136 = v143;
      if (v143)
      {
        goto LABEL_131;
      }

      v144 = &v203[16 * v128];
      v146 = *v144;
      v145 = *(v144 + 1);
      v143 = __OFSUB__(v145, v146);
      v147 = v145 - v146;
      if (v143)
      {
        goto LABEL_133;
      }

      v143 = __OFADD__(v135, v147);
      v148 = v135 + v147;
      if (v143)
      {
        goto LABEL_136;
      }

      if (v148 >= v140)
      {
        v166 = &v203[16 * v132 + 32];
        v168 = *v166;
        v167 = *(v166 + 1);
        v143 = __OFSUB__(v167, v168);
        v169 = v167 - v168;
        if (v143)
        {
          goto LABEL_140;
        }

        if (v135 < v169)
        {
          v132 = v128 - 2;
        }

        goto LABEL_106;
      }

      goto LABEL_85;
    }

    v15 = v205;
LABEL_4:
    v33 = *(a3 + 8);
    v35 = v184;
    if (v34 >= v33)
    {
      goto LABEL_116;
    }
  }

  v183 = v5;
  v96 = *a3;
  v97 = *(v192 + 72);
  v98 = *a3 + v97 * (v36 - 1);
  v198 = -v97;
  v199 = v96;
  v99 = v186 - v36;
  v189 = v97;
  v100 = v96 + v36 * v97;
  v101 = v197;
  v190 = v95;
LABEL_50:
  v194 = v98;
  v195 = v36;
  v191 = v100;
  v193 = v99;
  v102 = v99;
  while (1)
  {
    v206 = v102;
    v103 = v202;
    sub_2195E5B7C(v100, v202, type metadata accessor for MyMagazinesIssue);
    sub_2195E5B7C(v98, v22, type metadata accessor for MyMagazinesIssue);
    sub_2195EDDDC(v15);
    sub_2195EDDDC(v101);
    v104 = sub_219BDBCC4();
    v105 = *v204;
    (*v204)(v101, v10);
    v105(v15, v10);
    if (v104)
    {
      sub_2195EDDDC(v15);
      sub_2195EDDDC(v101);
      v106 = v15;
      v107 = sub_219BDBCC4();
      v105(v101, v10);
      v105(v106, v10);
      v108 = v107 == 1;
    }

    else
    {
      v109 = [*v103 identifier];
      v110 = sub_219BF5414();
      v112 = v111;

      v210 = v110;
      v211 = v112;
      v113 = [*v207 identifier];
      v114 = sub_219BF5414();
      v116 = v115;

      v208 = v114;
      v209 = v116;
      v117 = sub_219BDBE34();
      v118 = v10;
      v119 = v196;
      (*(*(v117 - 8) + 56))(v196, 1, 1, v117);
      sub_2187F3BD4();
      v120 = sub_219BF7074();
      v121 = v119;
      v10 = v118;
      v101 = v197;
      sub_2195FAA48(v121, &qword_280EE9C10, MEMORY[0x277CC9788]);

      v108 = v120 == -1;
    }

    v122 = v108;
    v22 = v207;
    sub_2195FAE60(v207, type metadata accessor for MyMagazinesIssue);
    result = sub_2195FAE60(v103, type metadata accessor for MyMagazinesIssue);
    if (!v122)
    {
      v15 = v205;
LABEL_49:
      v36 = v195 + 1;
      v98 = v194 + v189;
      v99 = v193 - 1;
      v100 = v191 + v189;
      if (v195 + 1 == v190)
      {
        v36 = v190;
        v5 = v183;
        a3 = v188;
        goto LABEL_63;
      }

      goto LABEL_50;
    }

    v123 = v206;
    if (!v199)
    {
      break;
    }

    v124 = v200;
    sub_2190704B8(v100, v200, type metadata accessor for MyMagazinesIssue);
    swift_arrayInitWithTakeFrontToBack();
    sub_2190704B8(v124, v98, type metadata accessor for MyMagazinesIssue);
    v98 += v198;
    v100 += v198;
    v125 = __CFADD__(v123, 1);
    v102 = (v123 + 1);
    v15 = v205;
    if (v125)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
  return result;
}

uint64_t sub_2195F871C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = sub_219BDBD34();
  v8 = *(v52 - 8);
  v9 = MEMORY[0x28223BE20](v52);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v49 = &v40 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v51 = a3;
  v16 = (a2 - a1) / v14;
  v55 = a1;
  v54 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v43 = a4;
      v44 = (v8 + 16);
      v41 = (v8 + 8);
      v42 = a1;
      v29 = a4 + v18;
      v30 = v51;
      v45 = v28;
      do
      {
        v40 = v27;
        v31 = a2 + v28;
        v47 = a2 + v28;
        v48 = v27;
        v46 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v55 = a2;
            v27 = v40;
            goto LABEL_59;
          }

          v33 = v30;
          v51 = v30 + v28;
          v34 = v29 + v28;
          v35 = *v44;
          v36 = v49;
          v37 = v52;
          (*v44)(v49, v29 + v28, v52);
          v38 = v50;
          v35(v50, v31, v37);
          sub_2195FB02C(&qword_280EE9C90, MEMORY[0x277CC9578]);
          LOBYTE(v35) = sub_219BF5334();
          v39 = *v41;
          (*v41)(v38, v37);
          v39(v36, v37);
          if (v35)
          {
            break;
          }

          v30 = v51;
          if (v33 < v29 || v51 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v47;
            a1 = v42;
          }

          else
          {
            v31 = v47;
            a1 = v42;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = v34;
          v29 = v34;
          v32 = v34 > v43;
          v28 = v45;
          a2 = v46;
          if (!v32)
          {
            v27 = v48;
            goto LABEL_58;
          }
        }

        v30 = v51;
        if (v33 < v46 || v51 >= v46)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v42;
        }

        else
        {
          a2 = v47;
          a1 = v42;
          if (v33 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v48;
        v28 = v45;
      }

      while (v29 > v43);
    }

LABEL_58:
    v55 = a2;
LABEL_59:
    v53 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v17;
    v53 = a4 + v17;
    if (v17 >= 1 && a2 < v51)
    {
      v46 = *(v8 + 16);
      v47 = v8 + 16;
      v44 = v14;
      v45 = (v8 + 8);
      do
      {
        v20 = v49;
        v21 = v52;
        v22 = v46;
        v46(v49, a2, v52);
        v23 = v50;
        v22(v50, a4, v21);
        sub_2195FB02C(&qword_280EE9C90, MEMORY[0x277CC9578]);
        LOBYTE(v22) = sub_219BF5334();
        v24 = *v45;
        (*v45)(v23, v21);
        v24(v20, v21);
        if (v22)
        {
          v25 = v44;
          if (a1 < a2 || a1 >= v44 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v44;
          v26 = v44 + a4;
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v54 = v26;
          a4 += v25;
        }

        a1 += v25;
        v55 = a1;
      }

      while (a4 < v48 && a2 < v51);
    }
  }

  sub_2189F1B0C(&v55, &v54, &v53);
  return 1;
}

uint64_t sub_2195F8D10(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v99 = a3;
  v104 = a2;
  sub_218726800(0, &qword_280EE9C10, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v94 = &v89 - v7;
  v103 = sub_219BDBD34();
  v8 = *(v103 - 8);
  v9 = MEMORY[0x28223BE20](v103);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v89 - v12;
  v101 = type metadata accessor for MyMagazinesIssue(0);
  v14 = MEMORY[0x28223BE20](v101);
  v16 = (&v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v89 - v18);
  v20 = MEMORY[0x28223BE20](v17);
  result = MEMORY[0x28223BE20](v20);
  v24 = (&v89 - v23);
  v100 = *(v25 + 72);
  if (!v100)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return result;
  }

  v95 = a1;
  v26 = v104 - a1;
  if (v104 - a1 == 0x8000000000000000 && v100 == -1)
  {
    goto LABEL_73;
  }

  v27 = v99 - v104;
  if (v99 - v104 == 0x8000000000000000 && v100 == -1)
  {
    goto LABEL_74;
  }

  v111 = v95;
  v110 = a4;
  v97 = v11;
  if (v26 / v100 >= v27 / v100)
  {
    v30 = v27 / v100 * v100;
    if (a4 < v104 || v104 + v30 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v31 = v99;
    }

    else
    {
      v31 = v99;
      if (a4 != v104)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v59 = a4 + v30;
    if (v30 >= 1)
    {
      v60 = -v100;
      v61 = (v8 + 8);
      v62 = v59;
      v92 = v16;
      v93 = v61;
      v102 = a4;
      v100 = -v100;
      do
      {
        v90 = v59;
        v63 = v104;
        v104 += v60;
        v96 = v63;
        while (1)
        {
          if (v63 <= v95)
          {
            v111 = v63;
            v109 = v90;
            goto LABEL_71;
          }

          v65 = v31;
          v91 = v59;
          v98 = (v62 + v60);
          v99 = v62;
          sub_2195E5B7C(v62 + v60, v19, type metadata accessor for MyMagazinesIssue);
          v66 = v92;
          sub_2195E5B7C(v104, v92, type metadata accessor for MyMagazinesIssue);
          sub_2195EDDDC(v13);
          v67 = v13;
          v68 = v97;
          sub_2195EDDDC(v97);
          v69 = sub_219BDBCC4();
          v70 = *v61;
          v71 = v103;
          (*v61)(v68, v103);
          v70(v67, v71);
          if (v69)
          {
            sub_2195EDDDC(v67);
            sub_2195EDDDC(v68);
            v72 = sub_219BDBCC4();
            v73 = v103;
            v70(v68, v103);
            v70(v67, v73);
            v74 = v72 == 1;
          }

          else
          {
            v75 = [*v19 identifier];
            v76 = sub_219BF5414();
            v78 = v77;

            v107 = v76;
            v108 = v78;
            v79 = [*v66 identifier];
            v80 = sub_219BF5414();
            v82 = v81;

            v105 = v80;
            v106 = v82;
            v83 = sub_219BDBE34();
            v84 = v94;
            (*(*(v83 - 8) + 56))(v94, 1, 1, v83);
            sub_2187F3BD4();
            v85 = sub_219BF7074();
            sub_2195FAA48(v84, &qword_280EE9C10, MEMORY[0x277CC9788]);

            v74 = v85 == -1;
          }

          v86 = v74;
          v13 = v67;
          v31 = v65 + v100;
          sub_2195FAE60(v66, type metadata accessor for MyMagazinesIssue);
          sub_2195FAE60(v19, type metadata accessor for MyMagazinesIssue);
          v87 = v102;
          if (v86)
          {
            break;
          }

          v88 = v98;
          v59 = v98;
          if (v65 < v99 || v31 >= v99)
          {
            swift_arrayInitWithTakeFrontToBack();
            v60 = v100;
          }

          else
          {
            v60 = v100;
            if (v65 != v99)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v62 = v59;
          v64 = v88 > v87;
          v61 = v93;
          v63 = v96;
          if (!v64)
          {
            v104 = v96;
            goto LABEL_70;
          }
        }

        if (v65 < v96 || v31 >= v96)
        {
          swift_arrayInitWithTakeFrontToBack();
          v59 = v91;
          v60 = v100;
        }

        else
        {
          v59 = v91;
          v60 = v100;
          if (v65 != v96)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v62 = v99;
        v61 = v93;
      }

      while (v99 > v87);
    }

LABEL_70:
    v111 = v104;
    v109 = v59;
  }

  else
  {
    v28 = v26 / v100 * v100;
    v29 = v95;
    v98 = v22;
    if (a4 < v95 || v95 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != v95)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v96 = a4 + v28;
    v109 = a4 + v28;
    if (v28 >= 1 && v104 < v99)
    {
      v33 = (v8 + 8);
      v93 = v33;
      do
      {
        sub_2195E5B7C(v104, v24, type metadata accessor for MyMagazinesIssue);
        v102 = a4;
        v34 = v24;
        v35 = v98;
        sub_2195E5B7C(a4, v98, type metadata accessor for MyMagazinesIssue);
        sub_2195EDDDC(v13);
        sub_2195EDDDC(v11);
        v36 = sub_219BDBCC4();
        v37 = *v33;
        v38 = v103;
        (*v33)(v11, v103);
        v37(v13, v38);
        if (v36)
        {
          sub_2195EDDDC(v13);
          sub_2195EDDDC(v11);
          v39 = sub_219BDBCC4();
          v40 = v103;
          v37(v11, v103);
          v37(v13, v40);
          v41 = v39 == 1;
        }

        else
        {
          v42 = [*v34 identifier];
          v43 = sub_219BF5414();
          v45 = v44;

          v107 = v43;
          v108 = v45;
          v46 = [*v35 identifier];
          v47 = sub_219BF5414();
          v49 = v48;

          v105 = v47;
          v106 = v49;
          v50 = sub_219BDBE34();
          v51 = v13;
          v52 = v94;
          (*(*(v50 - 8) + 56))(v94, 1, 1, v50);
          sub_2187F3BD4();
          v53 = sub_219BF7074();
          v54 = v52;
          v13 = v51;
          v11 = v97;
          sub_2195FAA48(v54, &qword_280EE9C10, MEMORY[0x277CC9788]);

          v33 = v93;

          v41 = v53 == -1;
        }

        v55 = v41;
        sub_2195FAE60(v35, type metadata accessor for MyMagazinesIssue);
        sub_2195FAE60(v34, type metadata accessor for MyMagazinesIssue);
        a4 = v102;
        v24 = v34;
        if (v55)
        {
          v56 = v100;
          v57 = v104 + v100;
          if (v29 < v104 || v29 >= v57)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v29 != v104)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v104 = v57;
        }

        else
        {
          v56 = v100;
          v58 = v102 + v100;
          if (v29 < v102 || v29 >= v58)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v29 != v102)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v110 = v58;
          a4 += v56;
        }

        v29 += v56;
        v111 = v29;
      }

      while (a4 < v96 && v104 < v99);
    }
  }

LABEL_71:
  sub_2189F1B24(&v111, &v110, &v109);
  return 1;
}

void sub_2195F977C()
{
  if (!qword_280EE5E80)
  {
    sub_2195F97F0(255, &qword_280EE5E88, MEMORY[0x277D6C898]);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5E80);
    }
  }
}

void sub_2195F97F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MyMagazinesStore.StoreDescriptor;
    v8[1] = &type metadata for PersistentMyMagazinesState;
    v8[2] = sub_2193EAF7C();
    v8[3] = sub_2193EAFD0();
    v8[4] = sub_2193EB024();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2195F9888()
{
  if (!qword_280EE7EF0)
  {
    sub_2195FC568(255, &qword_280EE7EF8, &type metadata for CurrentIssuesState, MEMORY[0x277D6C9F8]);
    sub_2195F9920();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_280EE7EF0);
    }
  }
}

void sub_2195F9920()
{
  if (!qword_280EE7EE0)
  {
    sub_2194FB2A4(255, &qword_280E8EB40, &qword_280E8DAB0, 0x277D310B0, MEMORY[0x277D83940]);
    v0 = sub_219BE1A34();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7EE0);
    }
  }
}

BOOL sub_2195F99A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MyMagazinesIssue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218726800(0, qword_280ED83C0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  sub_2195FAEC0(0, &unk_280ED83B0, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_2195FA9C8(a1, &v20 - v13, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
  sub_2195FA9C8(a2, &v14[v15], qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_2195FA9C8(v14, v10, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_2190704B8(&v14[v15], v7, type metadata accessor for MyMagazinesIssue);
      v17 = sub_2195F9D18(v10, v7);
      sub_2195FAE60(v7, type metadata accessor for MyMagazinesIssue);
      sub_2195FAE60(v10, type metadata accessor for MyMagazinesIssue);
      sub_2195FAA48(v14, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
      if (!v17)
      {
        return 0;
      }

      goto LABEL_8;
    }

    sub_2195FAE60(v10, type metadata accessor for MyMagazinesIssue);
LABEL_6:
    sub_2195FAF38(v14, &unk_280ED83B0, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
    return 0;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_2195FAA48(v14, qword_280ED83C0, type metadata accessor for MyMagazinesIssue);
LABEL_8:
  v18 = type metadata accessor for MyMagazinesState(0);
  if (sub_21941AA2C(*(a1 + *(v18 + 20)), *(a2 + *(v18 + 20))))
  {
    return *(a1 + *(v18 + 24)) == *(a2 + *(v18 + 24));
  }

  return 0;
}

BOOL sub_2195F9D18(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CC9578];
  sub_218726800(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v62 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v63 = &v55 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v55 - v14;
  sub_2195FAEC0(0, &qword_280EE9C30, &qword_280EE9C40, v8);
  v64 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v55 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v55 - v23;
  sub_2186C6148(0, &qword_280E8DA00);
  if ((sub_219BF6DD4() & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v56 = v19;
  v58 = v7;
  v57 = type metadata accessor for MyMagazinesIssue(0);
  v25 = *(v57 + 24);
  v26 = *(v64 + 48);
  v61 = v5;
  v27 = MEMORY[0x277CC9578];
  v59 = a1;
  sub_2195FA9C8(a1 + v25, v24, &qword_280EE9C40, MEMORY[0x277CC9578]);
  v60 = a2;
  v28 = a2 + v25;
  v29 = v4;
  v30 = v61;
  sub_2195FA9C8(v28, &v24[v26], &qword_280EE9C40, v27);
  v31 = *(v30 + 48);
  if (v31(v24, 1, v29) == 1)
  {
    if (v31(&v24[v26], 1, v29) == 1)
    {
      sub_2195FAA48(v24, &qword_280EE9C40, MEMORY[0x277CC9578]);
      v32 = v58;
      goto LABEL_10;
    }

LABEL_8:
    v33 = MEMORY[0x277CC9578];
    v34 = v24;
LABEL_16:
    sub_2195FAF38(v34, &qword_280EE9C30, &qword_280EE9C40, v33);
    return 0;
  }

  sub_2195FA9C8(v24, v15, &qword_280EE9C40, MEMORY[0x277CC9578]);
  if (v31(&v24[v26], 1, v29) == 1)
  {
    (*(v30 + 8))(v15, v29);
    goto LABEL_8;
  }

  v35 = &v24[v26];
  v32 = v58;
  (*(v30 + 32))(v58, v35, v29);
  sub_2195FB02C(&qword_280EE9C80, MEMORY[0x277CC9578]);
  v36 = sub_219BF53A4();
  v37 = *(v30 + 8);
  v37(v32, v29);
  v37(v15, v29);
  sub_2195FAA48(v24, &qword_280EE9C40, MEMORY[0x277CC9578]);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v38 = v57;
  v39 = *(v57 + 28);
  v40 = *(v64 + 48);
  v41 = MEMORY[0x277CC9578];
  sub_2195FA9C8(v59 + v39, v22, &qword_280EE9C40, MEMORY[0x277CC9578]);
  sub_2195FA9C8(v60 + v39, &v22[v40], &qword_280EE9C40, v41);
  if (v31(v22, 1, v29) != 1)
  {
    v42 = v63;
    sub_2195FA9C8(v22, v63, &qword_280EE9C40, MEMORY[0x277CC9578]);
    v43 = v31(&v22[v40], 1, v29);
    v44 = v61;
    if (v43 != 1)
    {
      (*(v61 + 32))(v32, &v22[v40], v29);
      sub_2195FB02C(&qword_280EE9C80, MEMORY[0x277CC9578]);
      v46 = sub_219BF53A4();
      v47 = *(v44 + 8);
      v47(v32, v29);
      v47(v42, v29);
      sub_2195FAA48(v22, &qword_280EE9C40, MEMORY[0x277CC9578]);
      if ((v46 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_20;
    }

    (*(v61 + 8))(v42, v29);
LABEL_15:
    v33 = MEMORY[0x277CC9578];
    v34 = v22;
    goto LABEL_16;
  }

  if (v31(&v22[v40], 1, v29) != 1)
  {
    goto LABEL_15;
  }

  sub_2195FAA48(v22, &qword_280EE9C40, MEMORY[0x277CC9578]);
LABEL_20:
  v48 = *(v38 + 32);
  v49 = *(v64 + 48);
  v50 = MEMORY[0x277CC9578];
  v24 = v56;
  sub_2195FA9C8(v59 + v48, v56, &qword_280EE9C40, MEMORY[0x277CC9578]);
  sub_2195FA9C8(v60 + v48, &v24[v49], &qword_280EE9C40, v50);
  if (v31(v24, 1, v29) == 1)
  {
    if (v31(&v24[v49], 1, v29) == 1)
    {
      sub_2195FAA48(v24, &qword_280EE9C40, MEMORY[0x277CC9578]);
      return 1;
    }

    goto LABEL_8;
  }

  v51 = v62;
  sub_2195FA9C8(v24, v62, &qword_280EE9C40, MEMORY[0x277CC9578]);
  if (v31(&v24[v49], 1, v29) == 1)
  {
    (*(v61 + 8))(v51, v29);
    goto LABEL_8;
  }

  v52 = v61;
  (*(v61 + 32))(v32, &v24[v49], v29);
  sub_2195FB02C(&qword_280EE9C80, MEMORY[0x277CC9578]);
  v53 = sub_219BF53A4();
  v54 = *(v52 + 8);
  v54(v32, v29);
  v54(v51, v29);
  sub_2195FAA48(v24, &qword_280EE9C40, MEMORY[0x277CC9578]);
  return (v53 & 1) != 0;
}